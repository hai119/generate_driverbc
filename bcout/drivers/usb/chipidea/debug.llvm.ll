; ModuleID = '../bcout/drivers/usb/chipidea/debug.llvm.bc'
source_filename = "drivers/usb/chipidea/debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.module = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.page = type { i64, %union.anon.2, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.50, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type { %struct.refcount_struct, %struct.ns_common, %struct.user_namespace*, %struct.ucounts*, %struct.css_set* }
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
%struct.ucounts = type { %struct.hlist_node, %struct.user_namespace*, %struct.kuid_t, i32, [10 x %struct.atomic_t] }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.bio*, %struct.gendisk*, i32, i16, i16, i16, i8, i8, %struct.atomic_t, %struct.bvec_iter, void (%struct.bio*)*, i8*, %union.anon.35, i16, i16, %struct.atomic_t, %struct.bio_vec*, %struct.bio_set*, [0 x %struct.bio_vec] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.disk_part_tbl*, %struct.hd_struct, %struct.block_device_operations*, %struct.request_queue*, i8*, i32, i64, %struct.rw_semaphore, %struct.kobject*, %struct.timer_rand_state*, %struct.atomic_t, %struct.disk_events*, %struct.kobject, i32, %struct.badblocks*, %struct.lockdep_map }
%struct.disk_part_tbl = type { %struct.callback_head, i32, %struct.hd_struct*, [0 x %struct.hd_struct*] }
%struct.hd_struct = type { i64, i64, i64, %struct.disk_stats*, %struct.percpu_ref, %struct.device, %struct.kobject*, i32, i32, %struct.partition_meta_info*, %struct.rcu_work }
%struct.disk_stats = type opaque
%struct.percpu_ref = type { i64, %struct.percpu_ref_data* }
%struct.percpu_ref_data = type { %struct.atomic64_t, void (%struct.percpu_ref*)*, void (%struct.percpu_ref*)*, i8, %struct.callback_head, %struct.percpu_ref* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
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
%struct.attribute = type { i8*, i16 }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, %struct.workqueue_struct* }
%struct.workqueue_struct = type opaque
%struct.block_device_operations = type { i32 (%struct.bio*)*, i32 (%struct.block_device*, i32)*, void (%struct.gendisk*, i32)*, i32 (%struct.block_device*, i64, %struct.page*, i32)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.block_device*, i32, i32, i64)*, i32 (%struct.gendisk*, i32)*, void (%struct.gendisk*)*, i32 (%struct.gendisk*)*, i32 (%struct.block_device*, %struct.hd_geometry*)*, void (%struct.block_device*, i64)*, i32 (%struct.gendisk*, i64, i32, i32 (%struct.blk_zone*, i32, i8*)*, i8*)*, i8* (%struct.gendisk*, i16*)*, %struct.module*, %struct.pr_ops* }
%struct.block_device = type { i32, i32, %struct.inode*, %struct.super_block*, %struct.mutex, i8*, i8*, i32, i8, %struct.list_head, %struct.block_device*, i8, %struct.hd_struct*, i32, %struct.spinlock, %struct.gendisk*, %struct.backing_dev_info*, i32, %struct.mutex }
%struct.hd_geometry = type opaque
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.pr_ops = type opaque
%struct.request_queue = type { %struct.request*, %struct.elevator_queue*, %struct.percpu_ref, %struct.blk_queue_stats*, %struct.rq_qos*, %struct.blk_mq_ops*, %struct.blk_mq_ctx*, i32, %struct.blk_mq_hw_ctx**, i32, %struct.backing_dev_info*, i8*, i64, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.kobject, %struct.kobject*, %struct.blk_integrity, %struct.device*, i32, i32, i64, i32, i32, i32, i32, %struct.blk_stat_callback*, [16 x %struct.blk_rq_stat], %struct.timer_list, %struct.work_struct, %struct.atomic_t, %struct.list_head, %struct.queue_limits, i32, i32, i32, i32, %struct.mutex, %struct.blk_flush_queue*, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.bsg_class_device, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, %struct.blk_mq_tag_set*, %struct.list_head, %struct.bio_set, %struct.dentry*, i8, i64, [5 x i64] }
%struct.request = type { %struct.request_queue*, %struct.blk_mq_ctx*, %struct.blk_mq_hw_ctx*, i32, i32, i32, i32, i32, i64, %struct.bio*, %struct.bio*, %struct.list_head, %union.anon.71, %union.anon.72, %union.anon.73, %struct.gendisk*, %struct.hd_struct*, i64, i64, i16, i16, i16, i16, i16, i32, %struct.refcount_struct, i32, i64, %union.anon.76, void (%struct.request*, i8)*, i8* }
%struct.blk_mq_hw_ctx = type opaque
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { %struct.rb_node }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, %struct.list_head, void (%struct.request*, i8)* }
%union.anon.76 = type { %struct.__call_single_data }
%struct.__call_single_data = type { %union.anon.77, void (i8*)*, i8* }
%union.anon.77 = type { %struct.__call_single_node }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.78, i16, i16 }
%struct.llist_node = type { %struct.llist_node* }
%union.anon.78 = type { i32 }
%struct.elevator_queue = type { %struct.elevator_type*, i8*, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.elevator_type = type { %struct.kmem_cache*, %struct.elevator_mq_ops, i64, i64, %struct.elv_fs_entry*, i8*, i8*, i32, %struct.module*, [22 x i8], %struct.list_head }
%struct.kmem_cache = type opaque
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
%struct.bio_set = type { %struct.kmem_cache*, i32, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.workqueue_struct* }
%struct.mempool_s = type { %struct.spinlock, i32, i32, i8**, i8*, i8* (i32, i8*)*, void (i8*, i8*)*, %struct.wait_queue_head }
%struct.timer_rand_state = type opaque
%struct.disk_events = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.69, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.69 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.badblocks = type opaque
%struct.lockdep_map = type {}
%struct.bvec_iter = type { i64, i32, i32, i32 }
%union.anon.35 = type { %struct.bio_integrity_payload* }
%struct.bio_integrity_payload = type { %struct.bio*, %struct.bvec_iter, i16, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, %struct.bio_vec*, [0 x %struct.bio_vec] }
%struct.bio_vec = type { %struct.page*, i32, i32 }
%struct.blk_plug = type { %struct.list_head, %struct.list_head, i16, i8, i8 }
%struct.reclaim_state = type { i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i64, i64, %struct.kref, i32, i32, i32, i32, %struct.atomic64_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, %struct.device*, [64 x i8], %struct.device*, %struct.timer_list }
%struct.bdi_writeback = type { %struct.backing_dev_info*, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, [4 x %struct.percpu_counter], i64, i64, i64, i64, i64, i64, i64, i64, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, i64, %struct.list_head }
%struct.percpu_counter = type { i64 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.42 }
%struct.anon.42 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.49, i32, [12 x i8] }
%union.anon.49 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.50 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.51, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.54 }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { i64, i64 }
%union.anon.54 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, %struct.atomic_t, %struct.user_namespace*, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i64, %struct.list_head, %struct.key*, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, %struct.ctl_table_header*, %struct.ucounts*, [10 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31, [48 x i8] }
%struct.anon.31 = type { %struct.uid_gid_extent*, %struct.uid_gid_extent* }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.32, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.59 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.61 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.writeback_control = type { i64, i64, i64, i64, i32, i8 }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.swap_info_struct = type { i64, i16, %struct.plist_node, i8, i32, i8*, %struct.swap_cluster_info*, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, i32*, %struct.percpu_cluster*, %struct.rb_root, %struct.block_device*, %struct.file*, i32, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.percpu_cluster = type { %struct.swap_cluster_info, i32 }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.kstatfs = type opaque
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
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.67 = type { %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.68 = type { %struct.hlist_node }
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
%struct.ci_hdrc = type { %struct.device*, %struct.spinlock, %struct.hw_bank, i32, [2 x %struct.ci_role_driver*], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, %struct.usb_role_switch*, %struct.work_struct, %struct.workqueue_struct*, %struct.dma_pool*, %struct.dma_pool*, %struct.usb_gadget, %struct.usb_gadget_driver*, i32, i32, [32 x %struct.ci_hw_ep], i32, %struct.ci_hw_ep*, %struct.ci_hw_ep*, %struct.usb_request*, i8, i8, i8, i8, i8, %struct.ci_hdrc_platform_data*, i32, %struct.ulpi*, %struct.ulpi_ops, %struct.phy*, %struct.usb_phy*, %struct.usb_hcd*, %struct.dentry*, i8, i8, i8, i8, i8, i8, i32 }
%struct.hw_bank = type { i32, i64, i8*, i8*, i8*, i64, [38 x i8*] }
%struct.ci_role_driver = type { i32 (%struct.ci_hdrc*)*, {}*, i32 (%struct.ci_hdrc*)*, i8* }
%struct.usb_otg = type { i8, %struct.phy*, %struct.usb_phy*, %struct.usb_bus*, %struct.usb_gadget*, i32, i32 (%struct.usb_otg*, %struct.usb_bus*)*, i32 (%struct.usb_otg*, %struct.usb_gadget*)*, i32 (%struct.usb_otg*, i1)*, i32 (%struct.usb_otg*)*, i32 (%struct.usb_otg*)* }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type opaque
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
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.otg_fsm_ops*, %struct.usb_otg*, i32, %struct.mutex, i8*, %struct.delayed_work, i8 }
%struct.otg_fsm_ops = type { void (%struct.otg_fsm*, i32)*, void (%struct.otg_fsm*, i32)*, void (%struct.otg_fsm*, i32)*, void (%struct.otg_fsm*, i32)*, void (%struct.otg_fsm*)*, void (%struct.otg_fsm*)*, void (%struct.otg_fsm*)*, void (%struct.otg_fsm*, i32)*, void (%struct.otg_fsm*, i32)*, i32 (%struct.otg_fsm*, i32)*, i32 (%struct.otg_fsm*, i32)* }
%struct.usb_role_switch = type opaque
%struct.dma_pool = type opaque
%struct.usb_gadget = type { %struct.work_struct, %struct.usb_udc*, %struct.usb_gadget_ops*, %struct.usb_ep*, %struct.list_head, i32, i32, i32, i8*, %struct.device, i32, i32, i32, i32, %struct.usb_otg_caps*, i24, i32 }
%struct.usb_udc = type opaque
%struct.usb_gadget_ops = type { i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32, i64)*, void (%struct.usb_gadget*, %struct.usb_dcd_config_params*)*, i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)*, i32 (%struct.usb_gadget*)*, void (%struct.usb_gadget*, i32)*, %struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* }
%struct.usb_dcd_config_params = type { i8, i16, i8, i8 }
%struct.usb_ep = type { i8*, i8*, %struct.usb_ep_ops*, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor* }
%struct.usb_ep_ops = type { i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)*, %struct.usb_request* (%struct.usb_ep*, i32)*, void (%struct.usb_ep*, %struct.usb_request*)*, i32 (%struct.usb_ep*, %struct.usb_request*, i32)*, i32 (%struct.usb_ep*, %struct.usb_request*)*, i32 (%struct.usb_ep*, i32)*, i32 (%struct.usb_ep*)*, i32 (%struct.usb_ep*)*, void (%struct.usb_ep*)* }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.usb_gadget_driver = type { i8*, i32, {}*, void (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*, %struct.usb_ctrlrequest*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, void (%struct.usb_gadget*)*, %struct.device_driver, i8*, %struct.list_head, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.70, i32, %struct.ci_hdrc*, %struct.spinlock*, %struct.dma_pool*, %struct.td_node* }
%struct.anon.70 = type { %struct.list_head, %struct.ci_hw_qh*, i64 }
%struct.ci_hw_qh = type { i32, i32, %struct.ci_hw_td, i32, %struct.usb_ctrlrequest }
%struct.ci_hw_td = type { i32, i32, [5 x i32] }
%struct.td_node = type { %struct.list_head, i64, %struct.ci_hw_td*, i32 }
%struct.usb_request = type { i8*, i32, i64, %struct.scatterlist*, i32, i32, i24, void (%struct.usb_ep*, %struct.usb_request*)*, i8*, %struct.list_head, i32, i32, i32 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.ci_hdrc_platform_data = type { i8*, i64, i32, %struct.phy*, %struct.usb_phy*, i32, i64, i32, i32 (%struct.ci_hdrc*, i32)*, %struct.regulator*, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.regulator = type opaque
%struct.ci_hdrc_cable = type { i8, i8, i8, %struct.extcon_dev*, %struct.ci_hdrc*, %struct.notifier_block }
%struct.extcon_dev = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.ulpi = type opaque
%struct.ulpi_ops = type { i32 (%struct.device*, i8)*, i32 (%struct.device*, i8, i8)* }
%struct.phy = type { %struct.device, i32, %struct.phy_ops*, %struct.mutex, i32, i32, %struct.phy_attrs, %struct.regulator* }
%struct.phy_ops = type { i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, i32 (%struct.phy*, i32, i32)*, i32 (%struct.phy*, %union.phy_configure_opts*)*, i32 (%struct.phy*, i32, i32, %union.phy_configure_opts*)*, i32 (%struct.phy*)*, i32 (%struct.phy*)*, void (%struct.phy*)*, %struct.module* }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i8 }
%struct.phy_attrs = type { i32, i32, i32 }
%struct.usb_phy = type { %struct.device*, i8*, i32, i32, i32, %struct.usb_otg*, %struct.device*, %struct.usb_phy_io_ops*, i8*, %struct.extcon_dev*, %struct.extcon_dev*, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, i32 (%struct.usb_phy*)*, void (%struct.usb_phy*)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i1)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*)* }
%struct.usb_phy_io_ops = type { i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32, i32)* }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.usb_hcd = type opaque
%struct.ci_hw_req = type { %struct.usb_request, %struct.list_head, %struct.list_head }

@usb_debug_root = external dso_local global %struct.dentry*, align 8
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@ci_device_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @ci_device_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"port_test\00", align 1
@ci_port_test_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* @ci_port_test_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @ci_port_test_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !489
@.str.2 = private unnamed_addr constant [7 x i8] c"qheads\00", align 1
@ci_qheads_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @ci_qheads_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !5149
@.str.3 = private unnamed_addr constant [9 x i8] c"requests\00", align 1
@ci_requests_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @ci_requests_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !5151
@.str.4 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@ci_otg_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @ci_otg_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !5153
@.str.5 = private unnamed_addr constant [5 x i8] c"role\00", align 1
@ci_role_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* @ci_role_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @ci_role_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !5155
@.str.6 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@ci_registers_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @seq_lseek, i64 (%struct.file*, i8*, i64, i64*)* @seq_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @ci_registers_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @single_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !5157
@.str.7 = private unnamed_addr constant [24 x i8] c"speed             = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"max_speed         = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"is_otg            = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"is_a_peripheral   = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"b_hnp_enable      = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"a_hnp_support     = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"a_alt_hnp_support = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"name              = %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"gadget function   = %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"gadget max speed  = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.21 = private unnamed_addr constant [11 x i8] c"mode = %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"not in gadget mode\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"EP=%02i: RX=%08X TX=%08X\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c" %04X:    %08X    %08X\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"EP=%02i: TD=%08X %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c" %04X:    %08X\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"OTG state: %s\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"a_bus_drop: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"a_bus_req: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"a_srp_det: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"a_vbus_vld: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"b_conn: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"adp_change: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"power_up: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"a_bus_resume: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"a_bus_suspend: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"a_conn: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"b_bus_req: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"b_bus_suspend: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"b_se0_srp: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"b_ssend_srp: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"b_sess_vld: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"b_srp_done: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"drv_vbus: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"loc_conn: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"loc_sof: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"adp_prb: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"id: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"protocol: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"drivers/usb/chipidea/ci.h\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"USBINTR reg: %08x\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"USBSTS reg: %08x\0A\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"USBMODE reg: %08x\0A\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"USBCMD reg: %08x\0A\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"PORTSC reg: %08x\0A\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"OTGSC reg: %08x\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dbg_create_files(%struct.ci_hdrc* %ci) #0 !dbg !5165 {
entry:
  %ci.addr = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %ci, %struct.ci_hdrc** %ci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  %0 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6041
  %dev = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %0, i32 0, i32 0, !dbg !6042
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6042
  %call = call i8* @dev_name(%struct.device* %1) #6, !dbg !6043
  %2 = load %struct.dentry*, %struct.dentry** @usb_debug_root, align 8, !dbg !6044
  %call1 = call %struct.dentry* @debugfs_create_dir(i8* %call, %struct.dentry* %2) #6, !dbg !6045
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6046
  %debugfs = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 39, !dbg !6047
  store %struct.dentry* %call1, %struct.dentry** %debugfs, align 8, !dbg !6048
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6049
  %debugfs2 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 39, !dbg !6050
  %5 = load %struct.dentry*, %struct.dentry** %debugfs2, align 8, !dbg !6050
  %6 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6051
  %7 = bitcast %struct.ci_hdrc* %6 to i8*, !dbg !6051
  %call3 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i16 zeroext 292, %struct.dentry* %5, i8* %7, %struct.file_operations* @ci_device_fops) #6, !dbg !6052
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6053
  %debugfs4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 39, !dbg !6054
  %9 = load %struct.dentry*, %struct.dentry** %debugfs4, align 8, !dbg !6054
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6055
  %11 = bitcast %struct.ci_hdrc* %10 to i8*, !dbg !6055
  %call5 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i16 zeroext 420, %struct.dentry* %9, i8* %11, %struct.file_operations* @ci_port_test_fops) #6, !dbg !6056
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6057
  %debugfs6 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 39, !dbg !6058
  %13 = load %struct.dentry*, %struct.dentry** %debugfs6, align 8, !dbg !6058
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6059
  %15 = bitcast %struct.ci_hdrc* %14 to i8*, !dbg !6059
  %call7 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i16 zeroext 292, %struct.dentry* %13, i8* %15, %struct.file_operations* @ci_qheads_fops) #6, !dbg !6060
  %16 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6061
  %debugfs8 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %16, i32 0, i32 39, !dbg !6062
  %17 = load %struct.dentry*, %struct.dentry** %debugfs8, align 8, !dbg !6062
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6063
  %19 = bitcast %struct.ci_hdrc* %18 to i8*, !dbg !6063
  %call9 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i16 zeroext 292, %struct.dentry* %17, i8* %19, %struct.file_operations* @ci_requests_fops) #6, !dbg !6064
  %20 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6065
  %call10 = call zeroext i1 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %20) #6, !dbg !6067
  br i1 %call10, label %if.then, label %if.end, !dbg !6068

if.then:                                          ; preds = %entry
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6069
  %debugfs11 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %21, i32 0, i32 39, !dbg !6071
  %22 = load %struct.dentry*, %struct.dentry** %debugfs11, align 8, !dbg !6071
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6072
  %24 = bitcast %struct.ci_hdrc* %23 to i8*, !dbg !6072
  %call12 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i16 zeroext 292, %struct.dentry* %22, i8* %24, %struct.file_operations* @ci_otg_fops) #6, !dbg !6073
  br label %if.end, !dbg !6074

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6075
  %debugfs13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %25, i32 0, i32 39, !dbg !6076
  %26 = load %struct.dentry*, %struct.dentry** %debugfs13, align 8, !dbg !6076
  %27 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6077
  %28 = bitcast %struct.ci_hdrc* %27 to i8*, !dbg !6077
  %call14 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i16 zeroext 420, %struct.dentry* %26, i8* %28, %struct.file_operations* @ci_role_fops) #6, !dbg !6078
  %29 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6079
  %debugfs15 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %29, i32 0, i32 39, !dbg !6080
  %30 = load %struct.dentry*, %struct.dentry** %debugfs15, align 8, !dbg !6080
  %31 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6081
  %32 = bitcast %struct.ci_hdrc* %31 to i8*, !dbg !6081
  %call16 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i16 zeroext 292, %struct.dentry* %30, i8* %32, %struct.file_operations* @ci_registers_fops) #6, !dbg !6082
  ret void, !dbg !6083
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dentry* @debugfs_create_dir(i8* %name, %struct.dentry* %parent) #0 !dbg !6084 {
entry:
  %name.addr = alloca i8*, align 8
  %parent.addr = alloca %struct.dentry*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  store %struct.dentry* %parent, %struct.dentry** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dentry** %parent.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  %call = call i8* @ERR_PTR(i64 -19) #6, !dbg !6092
  %0 = bitcast i8* %call to %struct.dentry*, !dbg !6092
  ret %struct.dentry* %0, !dbg !6093
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !6094 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6099
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !6101
  %1 = load i8*, i8** %init_name, align 8, !dbg !6101
  %tobool = icmp ne i8* %1, null, !dbg !6099
  br i1 %tobool, label %if.then, label %if.end, !dbg !6102

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6103
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !6104
  %3 = load i8*, i8** %init_name1, align 8, !dbg !6104
  store i8* %3, i8** %retval, align 8, !dbg !6105
  br label %return, !dbg !6105

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6106
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !6107
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #6, !dbg !6108
  store i8* %call, i8** %retval, align 8, !dbg !6109
  br label %return, !dbg !6109

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !6110
  ret i8* %5, !dbg !6110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dentry* @debugfs_create_file(i8* %name, i16 zeroext %mode, %struct.dentry* %parent, i8* %data, %struct.file_operations* %fops) #0 !dbg !6111 {
entry:
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i16, align 2
  %parent.addr = alloca %struct.dentry*, align 8
  %data.addr = alloca i8*, align 8
  %fops.addr = alloca %struct.file_operations*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !6114, metadata !DIExpression()), !dbg !6115
  store i16 %mode, i16* %mode.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %mode.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  store %struct.dentry* %parent, %struct.dentry** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dentry** %parent.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6120, metadata !DIExpression()), !dbg !6121
  store %struct.file_operations* %fops, %struct.file_operations** %fops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file_operations** %fops.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  %call = call i8* @ERR_PTR(i64 -19) #6, !dbg !6124
  %0 = bitcast i8* %call to %struct.dentry*, !dbg !6124
  ret %struct.dentry* %0, !dbg !6125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %ci) #0 !dbg !6126 {
entry:
  %ci.addr = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %ci, %struct.ci_hdrc** %ci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci.addr, metadata !6129, metadata !DIExpression()), !dbg !6130
  ret i1 false, !dbg !6131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dbg_remove_files(%struct.ci_hdrc* %ci) #0 !dbg !6132 {
entry:
  %ci.addr = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %ci, %struct.ci_hdrc** %ci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci.addr, metadata !6133, metadata !DIExpression()), !dbg !6134
  %0 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !6135
  %debugfs = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %0, i32 0, i32 39, !dbg !6136
  %1 = load %struct.dentry*, %struct.dentry** %debugfs, align 8, !dbg !6136
  call void @debugfs_remove_recursive(%struct.dentry* %1) #6, !dbg !6137
  ret void, !dbg !6138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @debugfs_remove_recursive(%struct.dentry* %dentry) #0 !dbg !6139 {
entry:
  %dentry.addr = alloca %struct.dentry*, align 8
  store %struct.dentry* %dentry, %struct.dentry** %dentry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dentry** %dentry.addr, metadata !6140, metadata !DIExpression()), !dbg !6141
  ret void, !dbg !6142
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !6143 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !6147, metadata !DIExpression()), !dbg !6148
  %0 = load i64, i64* %error.addr, align 8, !dbg !6149
  %1 = inttoptr i64 %0 to i8*, !dbg !6150
  ret i8* %1, !dbg !6151
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6152 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6157, metadata !DIExpression()), !dbg !6158
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6159
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6160
  %1 = load i8*, i8** %name, align 8, !dbg !6160
  ret i8* %1, !dbg !6161
}

; Function Attrs: noredzone
declare dso_local i64 @seq_lseek(%struct.file*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @seq_read(%struct.file*, i8*, i64, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_device_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !6162 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6163, metadata !DIExpression()), !dbg !6164
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6165, metadata !DIExpression()), !dbg !6164
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6164
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6164
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 44, !dbg !6164
  %2 = load i8*, i8** %i_private, align 8, !dbg !6164
  %call = call i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* @ci_device_show, i8* %2) #6, !dbg !6164
  ret i32 %call, !dbg !6164
}

; Function Attrs: noredzone
declare dso_local i32 @single_release(%struct.inode*, %struct.file*) #2

; Function Attrs: noredzone
declare dso_local i32 @single_open(%struct.file*, i32 (%struct.seq_file*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_device_show(%struct.seq_file* %s, i8* %data) #0 !dbg !6166 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.seq_file*, align 8
  %data.addr = alloca i8*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %gadget = alloca %struct.usb_gadget*, align 8
  store %struct.seq_file* %s, %struct.seq_file** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s.addr, metadata !6167, metadata !DIExpression()), !dbg !6168
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6169, metadata !DIExpression()), !dbg !6170
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !6171, metadata !DIExpression()), !dbg !6172
  %0 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6173
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !6174
  %1 = load i8*, i8** %private, align 8, !dbg !6174
  %2 = bitcast i8* %1 to %struct.ci_hdrc*, !dbg !6173
  store %struct.ci_hdrc* %2, %struct.ci_hdrc** %ci, align 8, !dbg !6172
  call void @llvm.dbg.declare(metadata %struct.usb_gadget** %gadget, metadata !6175, metadata !DIExpression()), !dbg !6176
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6177
  %gadget1 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 18, !dbg !6178
  store %struct.usb_gadget* %gadget1, %struct.usb_gadget** %gadget, align 8, !dbg !6176
  %4 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6179
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6180
  %speed = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %5, i32 0, i32 5, !dbg !6181
  %6 = load i32, i32* %speed, align 8, !dbg !6181
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %6) #6, !dbg !6182
  %7 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6183
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6184
  %max_speed = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %8, i32 0, i32 6, !dbg !6185
  %9 = load i32, i32* %max_speed, align 4, !dbg !6185
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %9) #6, !dbg !6186
  %10 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6187
  %11 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6188
  %is_otg = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %11, i32 0, i32 15, !dbg !6189
  %12 = bitcast i24* %is_otg to i32*, !dbg !6189
  %bf.load = load i32, i32* %12, align 8, !dbg !6189
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !6189
  %bf.clear = and i32 %bf.lshr, 1, !dbg !6189
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %bf.clear) #6, !dbg !6190
  %13 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6191
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6192
  %is_a_peripheral = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %14, i32 0, i32 15, !dbg !6193
  %15 = bitcast i24* %is_a_peripheral to i32*, !dbg !6193
  %bf.load2 = load i32, i32* %15, align 8, !dbg !6193
  %bf.lshr3 = lshr i32 %bf.load2, 2, !dbg !6193
  %bf.clear4 = and i32 %bf.lshr3, 1, !dbg !6193
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %bf.clear4) #6, !dbg !6194
  %16 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6195
  %17 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6196
  %b_hnp_enable = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %17, i32 0, i32 15, !dbg !6197
  %18 = bitcast i24* %b_hnp_enable to i32*, !dbg !6197
  %bf.load5 = load i32, i32* %18, align 8, !dbg !6197
  %bf.lshr6 = lshr i32 %bf.load5, 3, !dbg !6197
  %bf.clear7 = and i32 %bf.lshr6, 1, !dbg !6197
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %bf.clear7) #6, !dbg !6198
  %19 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6199
  %20 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6200
  %a_hnp_support = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %20, i32 0, i32 15, !dbg !6201
  %21 = bitcast i24* %a_hnp_support to i32*, !dbg !6201
  %bf.load8 = load i32, i32* %21, align 8, !dbg !6201
  %bf.lshr9 = lshr i32 %bf.load8, 4, !dbg !6201
  %bf.clear10 = and i32 %bf.lshr9, 1, !dbg !6201
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %bf.clear10) #6, !dbg !6202
  %22 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6203
  %23 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6204
  %a_alt_hnp_support = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %23, i32 0, i32 15, !dbg !6205
  %24 = bitcast i24* %a_alt_hnp_support to i32*, !dbg !6205
  %bf.load11 = load i32, i32* %24, align 8, !dbg !6205
  %bf.lshr12 = lshr i32 %bf.load11, 5, !dbg !6205
  %bf.clear13 = and i32 %bf.lshr12, 1, !dbg !6205
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %bf.clear13) #6, !dbg !6206
  %25 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6207
  %26 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6208
  %name = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %26, i32 0, i32 8, !dbg !6209
  %27 = load i8*, i8** %name, align 8, !dbg !6209
  %tobool = icmp ne i8* %27, null, !dbg !6208
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6208

cond.true:                                        ; preds = %entry
  %28 = load %struct.usb_gadget*, %struct.usb_gadget** %gadget, align 8, !dbg !6210
  %name14 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %28, i32 0, i32 8, !dbg !6211
  %29 = load i8*, i8** %name14, align 8, !dbg !6211
  br label %cond.end, !dbg !6208

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6208

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %29, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %cond.false ], !dbg !6208
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8* %cond) #6, !dbg !6212
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6213
  %driver = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %30, i32 0, i32 19, !dbg !6215
  %31 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %driver, align 8, !dbg !6215
  %tobool15 = icmp ne %struct.usb_gadget_driver* %31, null, !dbg !6213
  br i1 %tobool15, label %if.end, label %if.then, !dbg !6216

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !6217
  br label %return, !dbg !6217

if.end:                                           ; preds = %cond.end
  %32 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6218
  %33 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6219
  %driver16 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %33, i32 0, i32 19, !dbg !6220
  %34 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %driver16, align 8, !dbg !6220
  %function = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %34, i32 0, i32 0, !dbg !6221
  %35 = load i8*, i8** %function, align 8, !dbg !6221
  %tobool17 = icmp ne i8* %35, null, !dbg !6219
  br i1 %tobool17, label %cond.true18, label %cond.false21, !dbg !6219

cond.true18:                                      ; preds = %if.end
  %36 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6222
  %driver19 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %36, i32 0, i32 19, !dbg !6223
  %37 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %driver19, align 8, !dbg !6223
  %function20 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %37, i32 0, i32 0, !dbg !6224
  %38 = load i8*, i8** %function20, align 8, !dbg !6224
  br label %cond.end22, !dbg !6219

cond.false21:                                     ; preds = %if.end
  br label %cond.end22, !dbg !6219

cond.end22:                                       ; preds = %cond.false21, %cond.true18
  %cond23 = phi i8* [ %38, %cond.true18 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %cond.false21 ], !dbg !6219
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i8* %cond23) #6, !dbg !6225
  %39 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6226
  %40 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6227
  %driver24 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %40, i32 0, i32 19, !dbg !6228
  %41 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %driver24, align 8, !dbg !6228
  %max_speed25 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %41, i32 0, i32 1, !dbg !6229
  %42 = load i32, i32* %max_speed25, align 8, !dbg !6229
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %42) #6, !dbg !6230
  store i32 0, i32* %retval, align 4, !dbg !6231
  br label %return, !dbg !6231

return:                                           ; preds = %cond.end22, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !6232
  ret i32 %43, !dbg !6232
}

; Function Attrs: noredzone
declare dso_local void @seq_printf(%struct.seq_file*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ci_port_test_write(%struct.file* %file, i8* %ubuf, i64 %count, i64* %ppos) #0 !dbg !6233 {
entry:
  %lock.addr.i42 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i42, metadata !6234, metadata !DIExpression()), !dbg !6239
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6241, metadata !DIExpression()), !dbg !6242
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6243, metadata !DIExpression()), !dbg !6248
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !6255, metadata !DIExpression()), !dbg !6260
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !6269, metadata !DIExpression()), !dbg !6270
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !6271, metadata !DIExpression()), !dbg !6272
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !6273, metadata !DIExpression()), !dbg !6274
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !6275, metadata !DIExpression()), !dbg !6278
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !6279, metadata !DIExpression()), !dbg !6280
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !6281, metadata !DIExpression()), !dbg !6282
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !6283, metadata !DIExpression()), !dbg !6284
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %ubuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %s = alloca %struct.seq_file*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %flags = alloca i64, align 8
  %mode = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x297 = alloca i64, align 8
  %__UNIQUE_ID___y298 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  store i8* %ubuf, i8** %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ubuf.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6289, metadata !DIExpression()), !dbg !6290
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !6291, metadata !DIExpression()), !dbg !6292
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6295
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !6296
  %1 = load i8*, i8** %private_data, align 8, !dbg !6296
  %2 = bitcast i8* %1 to %struct.seq_file*, !dbg !6295
  store %struct.seq_file* %2, %struct.seq_file** %s, align 8, !dbg !6294
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !6297, metadata !DIExpression()), !dbg !6298
  %3 = load %struct.seq_file*, %struct.seq_file** %s, align 8, !dbg !6299
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %3, i32 0, i32 11, !dbg !6300
  %4 = load i8*, i8** %private, align 8, !dbg !6300
  %5 = bitcast i8* %4 to %struct.ci_hdrc*, !dbg !6299
  store %struct.ci_hdrc* %5, %struct.ci_hdrc** %ci, align 8, !dbg !6298
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6301, metadata !DIExpression()), !dbg !6302
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !6303, metadata !DIExpression()), !dbg !6304
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !6305, metadata !DIExpression()), !dbg !6306
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6307, metadata !DIExpression()), !dbg !6308
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x297, metadata !6309, metadata !DIExpression()), !dbg !6311
  store i64 31, i64* %__UNIQUE_ID___x297, align 8, !dbg !6311
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y298, metadata !6312, metadata !DIExpression()), !dbg !6311
  %6 = load i64, i64* %count.addr, align 8, !dbg !6311
  store i64 %6, i64* %__UNIQUE_ID___y298, align 8, !dbg !6311
  %7 = load i64, i64* %__UNIQUE_ID___x297, align 8, !dbg !6311
  %8 = load i64, i64* %__UNIQUE_ID___y298, align 8, !dbg !6311
  %cmp = icmp ult i64 %7, %8, !dbg !6311
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !6311

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %__UNIQUE_ID___x297, align 8, !dbg !6311
  br label %cond.end, !dbg !6311

cond.false:                                       ; preds = %entry
  %10 = load i64, i64* %__UNIQUE_ID___y298, align 8, !dbg !6311
  br label %cond.end, !dbg !6311

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !6311
  store i64 %cond, i64* %tmp, align 8, !dbg !6311
  %11 = load i64, i64* %tmp, align 8, !dbg !6311
  store i64 %11, i64* %count.addr, align 8, !dbg !6313
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !6314
  %12 = load i8*, i8** %ubuf.addr, align 8, !dbg !6315
  %13 = load i64, i64* %count.addr, align 8, !dbg !6316
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8* %12, i8** %from.addr.i, align 8
  store i64 %13, i64* %n.addr.i, align 8
  %14 = load i8*, i8** %to.addr.i, align 8, !dbg !6317
  %15 = load i64, i64* %n.addr.i, align 8, !dbg !6317
  store i8* %14, i8** %addr.addr.i.i, align 8
  store i64 %15, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !6274
  %16 = load i32, i32* %sz.i.i, align 4, !dbg !6318
  %cmp.i.i = icmp sge i32 %16, 0, !dbg !6318
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !6318

land.rhs.i.i:                                     ; preds = %cond.end
  %17 = load i32, i32* %sz.i.i, align 4, !dbg !6318
  %conv.i.i = sext i32 %17 to i64, !dbg !6318
  %18 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6318
  %cmp1.i.i = icmp ult i64 %conv.i.i, %18, !dbg !6318
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %cond.end
  %19 = phi i1 [ false, %cond.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !6320
  %lnot.i.i = xor i1 %19, true, !dbg !6318
  %lnot.ext.i.i = zext i1 %19 to i32, !dbg !6318
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6318
  br i1 %19, label %if.then.i.i, label %if.end10.i.i, !dbg !6321

if.then.i.i:                                      ; preds = %land.end.i.i
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6322
  %21 = call i1 @llvm.is.constant.i64(i64 %20) #5, !dbg !6325
  br i1 %21, label %if.else.i.i, label %if.then5.i.i, !dbg !6326

if.then5.i.i:                                     ; preds = %if.then.i.i
  %22 = load i32, i32* %sz.i.i, align 4, !dbg !6327
  %23 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6328
  call void @copy_overflow(i32 %22, i64 %23) #7, !dbg !6329
  br label %if.end9.i.i, !dbg !6329

if.else.i.i:                                      ; preds = %if.then.i.i
  %24 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6330
  %tobool6.i.i = trunc i8 %24 to i1, !dbg !6330
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !6332

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #7, !dbg !6333
  br label %if.end.i.i, !dbg !6333

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #7, !dbg !6334
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6335
  br label %check_copy_size.exit.i, !dbg !6335

if.end10.i.i:                                     ; preds = %land.end.i.i
  %25 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6278
  %cmp11.i.i = icmp ugt i64 %25, 2147483647, !dbg !6278
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !6278
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !6278
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !6278
  %26 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6336
  %tobool17.i.i = icmp ne i32 %26, 0, !dbg !6336
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !6336
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !6336
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !6336
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !6278

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !6338, !srcloc !6341
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !6342, !srcloc !6344
  br label %if.end31.i.i, !dbg !6345

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %27 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !6278
  %tobool32.i.i = icmp ne i32 %27, 0, !dbg !6278
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !6278
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !6278
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !6278
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !6336
  %28 = load i64, i64* %tmp.i.i, align 8, !dbg !6278
  %tobool38.i.i = icmp ne i64 %28, 0, !dbg !6346
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !6347

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !6348
  br label %check_copy_size.exit.i, !dbg !6348

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %29 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !6349
  %30 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !6350
  %31 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !6351
  %tobool41.i.i = trunc i8 %31 to i1, !dbg !6351
  call void @check_object_size(i8* %29, i64 %30, i1 zeroext %tobool41.i.i) #7, !dbg !6352
  store i1 true, i1* %retval.i.i, align 1, !dbg !6353
  br label %check_copy_size.exit.i, !dbg !6353

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %32 = load i1, i1* %retval.i.i, align 1, !dbg !6354
  %lnot.i = xor i1 %32, true, !dbg !6317
  %lnot.ext.i = zext i1 %32 to i32, !dbg !6317
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !6317
  br i1 %32, label %if.then.i, label %copy_from_user.exit, !dbg !6355

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %33 = load i8*, i8** %to.addr.i, align 8, !dbg !6356
  %34 = load i8*, i8** %from.addr.i, align 8, !dbg !6357
  %35 = load i64, i64* %n.addr.i, align 8, !dbg !6358
  %call2.i = call i64 @_copy_from_user(i8* %33, i8* %34, i64 %35) #7, !dbg !6359
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !6360
  br label %copy_from_user.exit, !dbg !6361

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %36 = load i64, i64* %n.addr.i, align 8, !dbg !6362
  %tobool = icmp ne i64 %36, 0, !dbg !6363
  br i1 %tobool, label %if.then, label %if.end, !dbg !6364

if.then:                                          ; preds = %copy_from_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !6365
  br label %return, !dbg !6365

if.end:                                           ; preds = %copy_from_user.exit
  %37 = load i64, i64* %count.addr, align 8, !dbg !6366
  %arrayidx = getelementptr [32 x i8], [32 x i8]* %buf, i64 0, i64 %37, !dbg !6367
  store i8 0, i8* %arrayidx, align 1, !dbg !6368
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !6369
  %call2 = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32* %mode) #6, !dbg !6371
  %cmp3 = icmp ne i32 %call2, 1, !dbg !6372
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !6373

if.then4:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !6374
  br label %return, !dbg !6374

if.end5:                                          ; preds = %if.end
  %38 = load i32, i32* %mode, align 4, !dbg !6375
  %cmp6 = icmp ugt i32 %38, 255, !dbg !6377
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6378

if.then7:                                         ; preds = %if.end5
  store i64 -56, i64* %retval, align 8, !dbg !6379
  br label %return, !dbg !6379

if.end8:                                          ; preds = %if.end5
  %39 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6380
  %dev = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %39, i32 0, i32 0, !dbg !6381
  %40 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6381
  %call9 = call i32 @pm_runtime_get_sync(%struct.device* %40) #6, !dbg !6382
  br label %do.body, !dbg !6383

do.body:                                          ; preds = %if.end8
  br label %do.body10, !dbg !6384

do.body10:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6385, metadata !DIExpression()), !dbg !6387
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6388, metadata !DIExpression()), !dbg !6387
  %cmp11 = icmp eq i64* %__dummy, %__dummy2, !dbg !6387
  %conv = zext i1 %cmp11 to i32, !dbg !6387
  store i32 1, i32* %tmp12, align 4, !dbg !6387
  %41 = load i32, i32* %tmp12, align 4, !dbg !6387
  br label %do.body13, !dbg !6389

do.body13:                                        ; preds = %do.body10
  br label %do.body14, !dbg !6390

do.body14:                                        ; preds = %do.body13
  br label %do.body15, !dbg !6391

do.body15:                                        ; preds = %do.body14
  call void @llvm.dbg.declare(metadata i64* %__dummy16, metadata !6393, metadata !DIExpression()), !dbg !6396
  call void @llvm.dbg.declare(metadata i64* %__dummy217, metadata !6397, metadata !DIExpression()), !dbg !6396
  %cmp18 = icmp eq i64* %__dummy16, %__dummy217, !dbg !6396
  %conv19 = zext i1 %cmp18 to i32, !dbg !6396
  store i32 1, i32* %tmp20, align 4, !dbg !6396
  %42 = load i32, i32* %tmp20, align 4, !dbg !6396
  %call21 = call i64 @arch_local_irq_save() #6, !dbg !6398
  store i64 %call21, i64* %flags, align 8, !dbg !6398
  br label %do.end, !dbg !6398

do.end:                                           ; preds = %do.body15
  br label %do.end22, !dbg !6391

do.end22:                                         ; preds = %do.end
  br label %do.body23, !dbg !6390

do.body23:                                        ; preds = %do.end22
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6399, !srcloc !6400
  br label %do.body24, !dbg !6399

do.body24:                                        ; preds = %do.body23
  %43 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6401
  %lock = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %43, i32 0, i32 1, !dbg !6401
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %44 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6402
  %45 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %44, i32 0, i32 0, !dbg !6403
  %rlock.i = bitcast %union.anon.1* %45 to %struct.raw_spinlock*, !dbg !6403
  br label %do.end26, !dbg !6401

do.end26:                                         ; preds = %do.body24
  br label %do.end27, !dbg !6399

do.end27:                                         ; preds = %do.end26
  br label %do.end28, !dbg !6390

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !6389

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !6384

do.end30:                                         ; preds = %do.end29
  %46 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6404
  %47 = load i32, i32* %mode, align 4, !dbg !6405
  %conv31 = trunc i32 %47 to i8, !dbg !6405
  %call32 = call i32 @hw_port_test_set(%struct.ci_hdrc* %46, i8 zeroext %conv31) #6, !dbg !6406
  store i32 %call32, i32* %ret, align 4, !dbg !6407
  %48 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6408
  %lock33 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %48, i32 0, i32 1, !dbg !6409
  %49 = load i64, i64* %flags, align 8, !dbg !6410
  store %struct.spinlock* %lock33, %struct.spinlock** %lock.addr.i42, align 8
  store i64 %49, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !793, metadata !6411, metadata !DIExpression()) #5, !dbg !6414
  call void @llvm.dbg.declare(metadata !793, metadata !6415, metadata !DIExpression()) #5, !dbg !6414
  store i32 1, i32* %tmp.i, align 4, !dbg !6414
  %50 = load i32, i32* %tmp.i, align 4, !dbg !6414
  call void @llvm.dbg.declare(metadata !793, metadata !6416, metadata !DIExpression()) #5, !dbg !6421
  call void @llvm.dbg.declare(metadata !793, metadata !6422, metadata !DIExpression()) #5, !dbg !6421
  store i32 1, i32* %tmp8.i, align 4, !dbg !6421
  %51 = load i32, i32* %tmp8.i, align 4, !dbg !6421
  %52 = load i64, i64* %flags.addr.i, align 8, !dbg !6423
  call void @arch_local_irq_restore(i64 %52) #7, !dbg !6423
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6424, !srcloc !6426
  %53 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i42, align 8, !dbg !6427
  %54 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %53, i32 0, i32 0, !dbg !6427
  %rlock.i43 = bitcast %union.anon.1* %54 to %struct.raw_spinlock*, !dbg !6427
  %55 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6429
  %dev34 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %55, i32 0, i32 0, !dbg !6430
  %56 = load %struct.device*, %struct.device** %dev34, align 8, !dbg !6430
  %call35 = call i32 @pm_runtime_put_sync(%struct.device* %56) #6, !dbg !6431
  %57 = load i32, i32* %ret, align 4, !dbg !6432
  %tobool36 = icmp ne i32 %57, 0, !dbg !6432
  br i1 %tobool36, label %cond.true37, label %cond.false39, !dbg !6432

cond.true37:                                      ; preds = %do.end30
  %58 = load i32, i32* %ret, align 4, !dbg !6433
  %conv38 = sext i32 %58 to i64, !dbg !6433
  br label %cond.end40, !dbg !6432

cond.false39:                                     ; preds = %do.end30
  %59 = load i64, i64* %count.addr, align 8, !dbg !6434
  br label %cond.end40, !dbg !6432

cond.end40:                                       ; preds = %cond.false39, %cond.true37
  %cond41 = phi i64 [ %conv38, %cond.true37 ], [ %59, %cond.false39 ], !dbg !6432
  store i64 %cond41, i64* %retval, align 8, !dbg !6435
  br label %return, !dbg !6435

return:                                           ; preds = %cond.end40, %if.then7, %if.then4, %if.then
  %60 = load i64, i64* %retval, align 8, !dbg !6436
  ret i64 %60, !dbg !6436
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_port_test_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !6437 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6438, metadata !DIExpression()), !dbg !6439
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6440, metadata !DIExpression()), !dbg !6441
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6442
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6443
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 44, !dbg !6444
  %2 = load i8*, i8** %i_private, align 8, !dbg !6444
  %call = call i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* @ci_port_test_show, i8* %2) #6, !dbg !6445
  ret i32 %call, !dbg !6446
}

; Function Attrs: noredzone
declare dso_local i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !6447 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6449, metadata !DIExpression()), !dbg !6450
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6451
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #6, !dbg !6452
  ret i32 %call, !dbg !6453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !6454 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !6458, metadata !DIExpression()), !dbg !6459
  %call = call i64 @arch_local_save_flags() #6, !dbg !6460
  store i64 %call, i64* %f, align 8, !dbg !6461
  call void @arch_local_irq_disable() #6, !dbg !6462
  %0 = load i64, i64* %f, align 8, !dbg !6463
  ret i64 %0, !dbg !6464
}

; Function Attrs: noredzone
declare dso_local i32 @hw_port_test_set(%struct.ci_hdrc*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put_sync(%struct.device* %dev) #0 !dbg !6465 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6466, metadata !DIExpression()), !dbg !6467
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6468
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 4) #6, !dbg !6469
  ret i32 %call, !dbg !6470
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !6471 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6474, metadata !DIExpression()), !dbg !6475
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6476, metadata !DIExpression()), !dbg !6477
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6478, metadata !DIExpression()), !dbg !6480
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6480
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !6481
  %tobool = icmp ne i32 %0, 0, !dbg !6481
  %lnot = xor i1 %tobool, true, !dbg !6481
  %lnot1 = xor i1 %lnot, true, !dbg !6481
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6481
  %conv = sext i32 %lnot.ext to i64, !dbg !6481
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6481
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6480

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6481

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !6483

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !6485

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !6483
  %2 = load i64, i64* %count.addr, align 8, !dbg !6483
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %1, i64 %2) #6, !dbg !6483
  br label %do.body4, !dbg !6483

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6487

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6489

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6487

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 134, i32 2313, i64 12) #5, !dbg !6491, !srcloc !6493
  br label %do.end8, !dbg !6491

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #5, !dbg !6494, !srcloc !6496
  br label %do.body9, !dbg !6487

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6497

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !6487

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !6483

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6499

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6483

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6483

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6480
  %tobool15 = icmp ne i32 %3, 0, !dbg !6480
  %lnot16 = xor i1 %tobool15, true, !dbg !6480
  %lnot18 = xor i1 %lnot16, true, !dbg !6480
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6480
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6480
  store i64 %conv20, i64* %tmp, align 8, !dbg !6481
  %4 = load i64, i64* %tmp, align 8, !dbg !6480
  ret void, !dbg !6501
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !6502 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6505, metadata !DIExpression()), !dbg !6506
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !6509, metadata !DIExpression()), !dbg !6510
  ret void, !dbg !6511
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6512 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6513, metadata !DIExpression()), !dbg !6515
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6516, metadata !DIExpression()), !dbg !6515
  %0 = load i64, i64* %__edi, align 8, !dbg !6515
  store i64 %0, i64* %__edi, align 8, !dbg !6515
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6517, metadata !DIExpression()), !dbg !6515
  %1 = load i64, i64* %__esi, align 8, !dbg !6515
  store i64 %1, i64* %__esi, align 8, !dbg !6515
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6518, metadata !DIExpression()), !dbg !6515
  %2 = load i64, i64* %__edx, align 8, !dbg !6515
  store i64 %2, i64* %__edx, align 8, !dbg !6515
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6519, metadata !DIExpression()), !dbg !6515
  %3 = load i64, i64* %__ecx, align 8, !dbg !6515
  store i64 %3, i64* %__ecx, align 8, !dbg !6515
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6520, metadata !DIExpression()), !dbg !6515
  %4 = load i64, i64* %__eax, align 8, !dbg !6515
  store i64 %4, i64* %__eax, align 8, !dbg !6515
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6515
  %6 = call i64 @llvm.read_register.i64(metadata !5159), !dbg !6521
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !6521, !srcloc !6524
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6521
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6521
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6521
  call void @llvm.write_register.i64(metadata !5159, i64 %asmresult1), !dbg !6521
  %8 = load i64, i64* %__eax, align 8, !dbg !6521
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6525, metadata !DIExpression()), !dbg !6527
  store i64 -1, i64* %__mask, align 8, !dbg !6527
  %9 = load i64, i64* %__mask, align 8, !dbg !6527
  store i64 %9, i64* %tmp, align 8, !dbg !6527
  %10 = load i64, i64* %tmp, align 8, !dbg !6527
  %and = and i64 %8, %10, !dbg !6521
  store i64 %and, i64* %__ret, align 8, !dbg !6521
  %11 = load i64, i64* %__ret, align 8, !dbg !6515
  store i64 %11, i64* %tmp2, align 8, !dbg !6528
  %12 = load i64, i64* %tmp2, align 8, !dbg !6515
  ret i64 %12, !dbg !6529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6530 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6531, metadata !DIExpression()), !dbg !6533
  %0 = load i64, i64* %__edi, align 8, !dbg !6533
  store i64 %0, i64* %__edi, align 8, !dbg !6533
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6534, metadata !DIExpression()), !dbg !6533
  %1 = load i64, i64* %__esi, align 8, !dbg !6533
  store i64 %1, i64* %__esi, align 8, !dbg !6533
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6535, metadata !DIExpression()), !dbg !6533
  %2 = load i64, i64* %__edx, align 8, !dbg !6533
  store i64 %2, i64* %__edx, align 8, !dbg !6533
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6536, metadata !DIExpression()), !dbg !6533
  %3 = load i64, i64* %__ecx, align 8, !dbg !6533
  store i64 %3, i64* %__ecx, align 8, !dbg !6533
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6537, metadata !DIExpression()), !dbg !6533
  %4 = load i64, i64* %__eax, align 8, !dbg !6533
  store i64 %4, i64* %__eax, align 8, !dbg !6533
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6533
  %6 = call i64 @llvm.read_register.i64(metadata !5159), !dbg !6533
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !6533, !srcloc !6538
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6533
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6533
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6533
  call void @llvm.write_register.i64(metadata !5159, i64 %asmresult1), !dbg !6533
  ret void, !dbg !6539
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6540 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6543, metadata !DIExpression()), !dbg !6544
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6545, metadata !DIExpression()), !dbg !6547
  %0 = load i64, i64* %__edi, align 8, !dbg !6547
  store i64 %0, i64* %__edi, align 8, !dbg !6547
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6548, metadata !DIExpression()), !dbg !6547
  %1 = load i64, i64* %__esi, align 8, !dbg !6547
  store i64 %1, i64* %__esi, align 8, !dbg !6547
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6549, metadata !DIExpression()), !dbg !6547
  %2 = load i64, i64* %__edx, align 8, !dbg !6547
  store i64 %2, i64* %__edx, align 8, !dbg !6547
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6550, metadata !DIExpression()), !dbg !6547
  %3 = load i64, i64* %__ecx, align 8, !dbg !6547
  store i64 %3, i64* %__ecx, align 8, !dbg !6547
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6551, metadata !DIExpression()), !dbg !6547
  %4 = load i64, i64* %__eax, align 8, !dbg !6547
  store i64 %4, i64* %__eax, align 8, !dbg !6547
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6547
  %6 = call i64 @llvm.read_register.i64(metadata !5159), !dbg !6547
  %7 = load i64, i64* %f.addr, align 8, !dbg !6547
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !6547, !srcloc !6552
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6547
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6547
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6547
  call void @llvm.write_register.i64(metadata !5159, i64 %asmresult1), !dbg !6547
  ret void, !dbg !6553
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_port_test_show(%struct.seq_file* %s, i8* %data) #0 !dbg !6554 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !6234, metadata !DIExpression()), !dbg !6555
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6241, metadata !DIExpression()), !dbg !6557
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6243, metadata !DIExpression()), !dbg !6558
  %s.addr = alloca %struct.seq_file*, align 8
  %data.addr = alloca i8*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %flags = alloca i64, align 8
  %mode = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.seq_file* %s, %struct.seq_file** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s.addr, metadata !6565, metadata !DIExpression()), !dbg !6566
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6567, metadata !DIExpression()), !dbg !6568
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !6569, metadata !DIExpression()), !dbg !6570
  %0 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6571
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !6572
  %1 = load i8*, i8** %private, align 8, !dbg !6572
  %2 = bitcast i8* %1 to %struct.ci_hdrc*, !dbg !6571
  store %struct.ci_hdrc* %2, %struct.ci_hdrc** %ci, align 8, !dbg !6570
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6573, metadata !DIExpression()), !dbg !6574
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !6575, metadata !DIExpression()), !dbg !6576
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6577
  %dev = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 0, !dbg !6578
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6578
  %call = call i32 @pm_runtime_get_sync(%struct.device* %4) #6, !dbg !6579
  br label %do.body, !dbg !6580

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6581

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6582, metadata !DIExpression()), !dbg !6584
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6585, metadata !DIExpression()), !dbg !6584
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6584
  %conv = zext i1 %cmp to i32, !dbg !6584
  store i32 1, i32* %tmp, align 4, !dbg !6584
  %5 = load i32, i32* %tmp, align 4, !dbg !6584
  br label %do.body2, !dbg !6586

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !6587

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6588

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6590, metadata !DIExpression()), !dbg !6593
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6594, metadata !DIExpression()), !dbg !6593
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6593
  %conv8 = zext i1 %cmp7 to i32, !dbg !6593
  store i32 1, i32* %tmp9, align 4, !dbg !6593
  %6 = load i32, i32* %tmp9, align 4, !dbg !6593
  %call10 = call i64 @arch_local_irq_save() #6, !dbg !6595
  store i64 %call10, i64* %flags, align 8, !dbg !6595
  br label %do.end, !dbg !6595

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !6588

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !6587

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6596, !srcloc !6597
  br label %do.body13, !dbg !6596

do.body13:                                        ; preds = %do.body12
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6598
  %lock = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 1, !dbg !6598
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6599
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !6600
  %rlock.i = bitcast %union.anon.1* %9 to %struct.raw_spinlock*, !dbg !6600
  br label %do.end15, !dbg !6598

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !6596

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6587

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6586

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6581

do.end19:                                         ; preds = %do.end18
  %10 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6601
  %call20 = call zeroext i8 @hw_port_test_get(%struct.ci_hdrc* %10) #6, !dbg !6602
  %conv21 = zext i8 %call20 to i32, !dbg !6602
  store i32 %conv21, i32* %mode, align 4, !dbg !6603
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6604
  %lock22 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 1, !dbg !6605
  %12 = load i64, i64* %flags, align 8, !dbg !6606
  store %struct.spinlock* %lock22, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !793, metadata !6411, metadata !DIExpression()) #5, !dbg !6607
  call void @llvm.dbg.declare(metadata !793, metadata !6415, metadata !DIExpression()) #5, !dbg !6607
  store i32 1, i32* %tmp.i, align 4, !dbg !6607
  %13 = load i32, i32* %tmp.i, align 4, !dbg !6607
  call void @llvm.dbg.declare(metadata !793, metadata !6416, metadata !DIExpression()) #5, !dbg !6608
  call void @llvm.dbg.declare(metadata !793, metadata !6422, metadata !DIExpression()) #5, !dbg !6608
  store i32 1, i32* %tmp8.i, align 4, !dbg !6608
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !6608
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !6609
  call void @arch_local_irq_restore(i64 %15) #7, !dbg !6609
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6610, !srcloc !6426
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !6611
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !6611
  %rlock.i26 = bitcast %union.anon.1* %17 to %struct.raw_spinlock*, !dbg !6611
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6612
  %dev23 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %18, i32 0, i32 0, !dbg !6613
  %19 = load %struct.device*, %struct.device** %dev23, align 8, !dbg !6613
  %call24 = call i32 @pm_runtime_put_sync(%struct.device* %19) #6, !dbg !6614
  %20 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6615
  %21 = load i32, i32* %mode, align 4, !dbg !6616
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %21) #6, !dbg !6617
  ret i32 0, !dbg !6618
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @hw_port_test_get(%struct.ci_hdrc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_qheads_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !6619 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6620, metadata !DIExpression()), !dbg !6621
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6622, metadata !DIExpression()), !dbg !6621
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6621
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6621
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 44, !dbg !6621
  %2 = load i8*, i8** %i_private, align 8, !dbg !6621
  %call = call i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* @ci_qheads_show, i8* %2) #6, !dbg !6621
  ret i32 %call, !dbg !6621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_qheads_show(%struct.seq_file* %s, i8* %data) #0 !dbg !6623 {
entry:
  %lock.addr.i45 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i45, metadata !6234, metadata !DIExpression()), !dbg !6624
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6241, metadata !DIExpression()), !dbg !6626
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6243, metadata !DIExpression()), !dbg !6627
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.seq_file*, align 8
  %data.addr = alloca i8*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %hweprx = alloca %struct.ci_hw_ep*, align 8
  %hweptx = alloca %struct.ci_hw_ep*, align 8
  store %struct.seq_file* %s, %struct.seq_file** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s.addr, metadata !6634, metadata !DIExpression()), !dbg !6635
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6636, metadata !DIExpression()), !dbg !6637
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !6638, metadata !DIExpression()), !dbg !6639
  %0 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6640
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !6641
  %1 = load i8*, i8** %private, align 8, !dbg !6641
  %2 = bitcast i8* %1 to %struct.ci_hdrc*, !dbg !6640
  store %struct.ci_hdrc* %2, %struct.ci_hdrc** %ci, align 8, !dbg !6639
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6642, metadata !DIExpression()), !dbg !6643
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6644, metadata !DIExpression()), !dbg !6645
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6646, metadata !DIExpression()), !dbg !6647
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6648
  %role = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 5, !dbg !6650
  %4 = load i32, i32* %role, align 8, !dbg !6650
  %cmp = icmp ne i32 %4, 1, !dbg !6651
  br i1 %cmp, label %if.then, label %if.end, !dbg !6652

if.then:                                          ; preds = %entry
  %5 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6653
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !6655
  store i32 0, i32* %retval, align 4, !dbg !6656
  br label %return, !dbg !6656

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6657

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6658

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6659, metadata !DIExpression()), !dbg !6661
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6662, metadata !DIExpression()), !dbg !6661
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !6661
  %conv = zext i1 %cmp2 to i32, !dbg !6661
  store i32 1, i32* %tmp, align 4, !dbg !6661
  %6 = load i32, i32* %tmp, align 4, !dbg !6661
  br label %do.body3, !dbg !6663

do.body3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !6664

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !6665

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !6667, metadata !DIExpression()), !dbg !6670
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !6671, metadata !DIExpression()), !dbg !6670
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !6670
  %conv9 = zext i1 %cmp8 to i32, !dbg !6670
  store i32 1, i32* %tmp10, align 4, !dbg !6670
  %7 = load i32, i32* %tmp10, align 4, !dbg !6670
  %call = call i64 @arch_local_irq_save() #6, !dbg !6672
  store i64 %call, i64* %flags, align 8, !dbg !6672
  br label %do.end, !dbg !6672

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !6665

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !6664

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6673, !srcloc !6674
  br label %do.body13, !dbg !6673

do.body13:                                        ; preds = %do.body12
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6675
  %lock = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 1, !dbg !6675
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6676
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !6677
  %rlock.i = bitcast %union.anon.1* %10 to %struct.raw_spinlock*, !dbg !6677
  br label %do.end15, !dbg !6675

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !6673

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6664

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6663

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6658

do.end19:                                         ; preds = %do.end18
  store i32 0, i32* %i, align 4, !dbg !6678
  br label %for.cond, !dbg !6680

for.cond:                                         ; preds = %for.inc41, %do.end19
  %11 = load i32, i32* %i, align 4, !dbg !6681
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6683
  %hw_ep_max = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 21, !dbg !6684
  %13 = load i32, i32* %hw_ep_max, align 4, !dbg !6684
  %div = udiv i32 %13, 2, !dbg !6685
  %cmp20 = icmp ult i32 %11, %div, !dbg !6686
  br i1 %cmp20, label %for.body, label %for.end43, !dbg !6687

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.ci_hw_ep** %hweprx, metadata !6688, metadata !DIExpression()), !dbg !6690
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6691
  %ci_hw_ep = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %14, i32 0, i32 22, !dbg !6692
  %15 = load i32, i32* %i, align 4, !dbg !6693
  %idxprom = zext i32 %15 to i64, !dbg !6691
  %arrayidx = getelementptr [32 x %struct.ci_hw_ep], [32 x %struct.ci_hw_ep]* %ci_hw_ep, i64 0, i64 %idxprom, !dbg !6691
  store %struct.ci_hw_ep* %arrayidx, %struct.ci_hw_ep** %hweprx, align 8, !dbg !6690
  call void @llvm.dbg.declare(metadata %struct.ci_hw_ep** %hweptx, metadata !6694, metadata !DIExpression()), !dbg !6695
  %16 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6696
  %ci_hw_ep22 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %16, i32 0, i32 22, !dbg !6697
  %17 = load i32, i32* %i, align 4, !dbg !6698
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6699
  %hw_ep_max23 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %18, i32 0, i32 21, !dbg !6700
  %19 = load i32, i32* %hw_ep_max23, align 4, !dbg !6700
  %div24 = udiv i32 %19, 2, !dbg !6701
  %add = add i32 %17, %div24, !dbg !6702
  %idxprom25 = zext i32 %add to i64, !dbg !6696
  %arrayidx26 = getelementptr [32 x %struct.ci_hw_ep], [32 x %struct.ci_hw_ep]* %ci_hw_ep22, i64 0, i64 %idxprom25, !dbg !6696
  store %struct.ci_hw_ep* %arrayidx26, %struct.ci_hw_ep** %hweptx, align 8, !dbg !6695
  %20 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6703
  %21 = load i32, i32* %i, align 4, !dbg !6704
  %22 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %hweprx, align 8, !dbg !6705
  %qh = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %22, i32 0, i32 5, !dbg !6706
  %dma = getelementptr inbounds %struct.anon.70, %struct.anon.70* %qh, i32 0, i32 2, !dbg !6707
  %23 = load i64, i64* %dma, align 8, !dbg !6707
  %conv27 = trunc i64 %23 to i32, !dbg !6708
  %24 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %hweptx, align 8, !dbg !6709
  %qh28 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %24, i32 0, i32 5, !dbg !6710
  %dma29 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %qh28, i32 0, i32 2, !dbg !6711
  %25 = load i64, i64* %dma29, align 8, !dbg !6711
  %conv30 = trunc i64 %25 to i32, !dbg !6712
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32 %21, i32 %conv27, i32 %conv30) #6, !dbg !6713
  store i32 0, i32* %j, align 4, !dbg !6714
  br label %for.cond31, !dbg !6716

for.cond31:                                       ; preds = %for.inc, %for.body
  %26 = load i32, i32* %j, align 4, !dbg !6717
  %conv32 = zext i32 %26 to i64, !dbg !6717
  %cmp33 = icmp ult i64 %conv32, 12, !dbg !6719
  br i1 %cmp33, label %for.body35, label %for.end, !dbg !6720

for.body35:                                       ; preds = %for.cond31
  %27 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6721
  %28 = load i32, i32* %j, align 4, !dbg !6722
  %29 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %hweprx, align 8, !dbg !6723
  %qh36 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %29, i32 0, i32 5, !dbg !6724
  %ptr = getelementptr inbounds %struct.anon.70, %struct.anon.70* %qh36, i32 0, i32 1, !dbg !6725
  %30 = load %struct.ci_hw_qh*, %struct.ci_hw_qh** %ptr, align 8, !dbg !6725
  %31 = bitcast %struct.ci_hw_qh* %30 to i32*, !dbg !6726
  %32 = load i32, i32* %j, align 4, !dbg !6727
  %idx.ext = zext i32 %32 to i64, !dbg !6728
  %add.ptr = getelementptr i32, i32* %31, i64 %idx.ext, !dbg !6728
  %33 = load i32, i32* %add.ptr, align 4, !dbg !6729
  %34 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %hweptx, align 8, !dbg !6730
  %qh37 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %34, i32 0, i32 5, !dbg !6731
  %ptr38 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %qh37, i32 0, i32 1, !dbg !6732
  %35 = load %struct.ci_hw_qh*, %struct.ci_hw_qh** %ptr38, align 8, !dbg !6732
  %36 = bitcast %struct.ci_hw_qh* %35 to i32*, !dbg !6733
  %37 = load i32, i32* %j, align 4, !dbg !6734
  %idx.ext39 = zext i32 %37 to i64, !dbg !6735
  %add.ptr40 = getelementptr i32, i32* %36, i64 %idx.ext39, !dbg !6735
  %38 = load i32, i32* %add.ptr40, align 4, !dbg !6736
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i32 %28, i32 %33, i32 %38) #6, !dbg !6737
  br label %for.inc, !dbg !6737

for.inc:                                          ; preds = %for.body35
  %39 = load i32, i32* %j, align 4, !dbg !6738
  %inc = add i32 %39, 1, !dbg !6738
  store i32 %inc, i32* %j, align 4, !dbg !6738
  br label %for.cond31, !dbg !6739, !llvm.loop !6740

for.end:                                          ; preds = %for.cond31
  br label %for.inc41, !dbg !6742

for.inc41:                                        ; preds = %for.end
  %40 = load i32, i32* %i, align 4, !dbg !6743
  %inc42 = add i32 %40, 1, !dbg !6743
  store i32 %inc42, i32* %i, align 4, !dbg !6743
  br label %for.cond, !dbg !6744, !llvm.loop !6745

for.end43:                                        ; preds = %for.cond
  %41 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6747
  %lock44 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %41, i32 0, i32 1, !dbg !6748
  %42 = load i64, i64* %flags, align 8, !dbg !6749
  store %struct.spinlock* %lock44, %struct.spinlock** %lock.addr.i45, align 8
  store i64 %42, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !793, metadata !6411, metadata !DIExpression()) #5, !dbg !6750
  call void @llvm.dbg.declare(metadata !793, metadata !6415, metadata !DIExpression()) #5, !dbg !6750
  store i32 1, i32* %tmp.i, align 4, !dbg !6750
  %43 = load i32, i32* %tmp.i, align 4, !dbg !6750
  call void @llvm.dbg.declare(metadata !793, metadata !6416, metadata !DIExpression()) #5, !dbg !6751
  call void @llvm.dbg.declare(metadata !793, metadata !6422, metadata !DIExpression()) #5, !dbg !6751
  store i32 1, i32* %tmp8.i, align 4, !dbg !6751
  %44 = load i32, i32* %tmp8.i, align 4, !dbg !6751
  %45 = load i64, i64* %flags.addr.i, align 8, !dbg !6752
  call void @arch_local_irq_restore(i64 %45) #7, !dbg !6752
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6753, !srcloc !6426
  %46 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i45, align 8, !dbg !6754
  %47 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %46, i32 0, i32 0, !dbg !6754
  %rlock.i46 = bitcast %union.anon.1* %47 to %struct.raw_spinlock*, !dbg !6754
  store i32 0, i32* %retval, align 4, !dbg !6755
  br label %return, !dbg !6755

return:                                           ; preds = %for.end43, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !6756
  ret i32 %48, !dbg !6756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_requests_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !6757 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6758, metadata !DIExpression()), !dbg !6759
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6760, metadata !DIExpression()), !dbg !6759
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6759
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6759
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 44, !dbg !6759
  %2 = load i8*, i8** %i_private, align 8, !dbg !6759
  %call = call i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* @ci_requests_show, i8* %2) #6, !dbg !6759
  ret i32 %call, !dbg !6759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_requests_show(%struct.seq_file* %s, i8* %data) #0 !dbg !6761 {
entry:
  %lock.addr.i87 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i87, metadata !6234, metadata !DIExpression()), !dbg !6762
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !6241, metadata !DIExpression()), !dbg !6764
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !6243, metadata !DIExpression()), !dbg !6765
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.seq_file*, align 8
  %data.addr = alloca i8*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %flags = alloca i64, align 8
  %req = alloca %struct.ci_hw_req*, align 8
  %node = alloca %struct.td_node*, align 8
  %tmpnode = alloca %struct.td_node*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %qsize = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp24 = alloca %struct.ci_hw_req*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp39 = alloca %struct.td_node*, align 8
  %__mptr41 = alloca i8*, align 8
  %tmp45 = alloca %struct.td_node*, align 8
  %__mptr66 = alloca i8*, align 8
  %tmp71 = alloca %struct.td_node*, align 8
  %__mptr75 = alloca i8*, align 8
  %tmp80 = alloca %struct.ci_hw_req*, align 8
  store %struct.seq_file* %s, %struct.seq_file** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s.addr, metadata !6772, metadata !DIExpression()), !dbg !6773
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6774, metadata !DIExpression()), !dbg !6775
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !6776, metadata !DIExpression()), !dbg !6777
  %0 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6778
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !6779
  %1 = load i8*, i8** %private, align 8, !dbg !6779
  %2 = bitcast i8* %1 to %struct.ci_hdrc*, !dbg !6778
  store %struct.ci_hdrc* %2, %struct.ci_hdrc** %ci, align 8, !dbg !6777
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6780, metadata !DIExpression()), !dbg !6781
  call void @llvm.dbg.declare(metadata %struct.ci_hw_req** %req, metadata !6782, metadata !DIExpression()), !dbg !6783
  store %struct.ci_hw_req* null, %struct.ci_hw_req** %req, align 8, !dbg !6783
  call void @llvm.dbg.declare(metadata %struct.td_node** %node, metadata !6784, metadata !DIExpression()), !dbg !6785
  call void @llvm.dbg.declare(metadata %struct.td_node** %tmpnode, metadata !6786, metadata !DIExpression()), !dbg !6787
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6788, metadata !DIExpression()), !dbg !6789
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6790, metadata !DIExpression()), !dbg !6791
  call void @llvm.dbg.declare(metadata i32* %qsize, metadata !6792, metadata !DIExpression()), !dbg !6793
  store i32 7, i32* %qsize, align 4, !dbg !6793
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6794
  %role = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 5, !dbg !6796
  %4 = load i32, i32* %role, align 8, !dbg !6796
  %cmp = icmp ne i32 %4, 1, !dbg !6797
  br i1 %cmp, label %if.then, label %if.end, !dbg !6798

if.then:                                          ; preds = %entry
  %5 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6799
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !6801
  store i32 0, i32* %retval, align 4, !dbg !6802
  br label %return, !dbg !6802

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6803

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !6804

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6805, metadata !DIExpression()), !dbg !6807
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6808, metadata !DIExpression()), !dbg !6807
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !6807
  %conv = zext i1 %cmp2 to i32, !dbg !6807
  store i32 1, i32* %tmp, align 4, !dbg !6807
  %6 = load i32, i32* %tmp, align 4, !dbg !6807
  br label %do.body3, !dbg !6809

do.body3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !6810

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !6811

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !6813, metadata !DIExpression()), !dbg !6816
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !6817, metadata !DIExpression()), !dbg !6816
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !6816
  %conv9 = zext i1 %cmp8 to i32, !dbg !6816
  store i32 1, i32* %tmp10, align 4, !dbg !6816
  %7 = load i32, i32* %tmp10, align 4, !dbg !6816
  %call = call i64 @arch_local_irq_save() #6, !dbg !6818
  store i64 %call, i64* %flags, align 8, !dbg !6818
  br label %do.end, !dbg !6818

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !6811

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !6810

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6819, !srcloc !6820
  br label %do.body13, !dbg !6819

do.body13:                                        ; preds = %do.body12
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6821
  %lock = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 1, !dbg !6821
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6822
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !6823
  %rlock.i = bitcast %union.anon.1* %10 to %struct.raw_spinlock*, !dbg !6823
  br label %do.end15, !dbg !6821

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !6819

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6810

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !6809

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6804

do.end19:                                         ; preds = %do.end18
  store i32 0, i32* %i, align 4, !dbg !6824
  br label %for.cond, !dbg !6826

for.cond:                                         ; preds = %for.inc83, %do.end19
  %11 = load i32, i32* %i, align 4, !dbg !6827
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6829
  %hw_ep_max = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 21, !dbg !6830
  %13 = load i32, i32* %hw_ep_max, align 4, !dbg !6830
  %cmp20 = icmp ult i32 %11, %13, !dbg !6831
  br i1 %cmp20, label %for.body, label %for.end85, !dbg !6832

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6833, metadata !DIExpression()), !dbg !6836
  %14 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6836
  %ci_hw_ep = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %14, i32 0, i32 22, !dbg !6836
  %15 = load i32, i32* %i, align 4, !dbg !6836
  %idxprom = zext i32 %15 to i64, !dbg !6836
  %arrayidx = getelementptr [32 x %struct.ci_hw_ep], [32 x %struct.ci_hw_ep]* %ci_hw_ep, i64 0, i64 %idxprom, !dbg !6836
  %qh = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %arrayidx, i32 0, i32 5, !dbg !6836
  %queue = getelementptr inbounds %struct.anon.70, %struct.anon.70* %qh, i32 0, i32 0, !dbg !6836
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %queue, i32 0, i32 0, !dbg !6836
  %16 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6836
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !6836
  store i8* %17, i8** %__mptr, align 8, !dbg !6836
  br label %do.body22, !dbg !6836

do.body22:                                        ; preds = %for.body
  br label %do.end23, !dbg !6837

do.end23:                                         ; preds = %do.body22
  %18 = load i8*, i8** %__mptr, align 8, !dbg !6836
  %add.ptr = getelementptr i8, i8* %18, i64 -96, !dbg !6836
  %19 = bitcast i8* %add.ptr to %struct.ci_hw_req*, !dbg !6836
  store %struct.ci_hw_req* %19, %struct.ci_hw_req** %tmp24, align 8, !dbg !6837
  %20 = load %struct.ci_hw_req*, %struct.ci_hw_req** %tmp24, align 8, !dbg !6836
  store %struct.ci_hw_req* %20, %struct.ci_hw_req** %req, align 8, !dbg !6839
  br label %for.cond25, !dbg !6839

for.cond25:                                       ; preds = %do.end79, %do.end23
  %21 = load %struct.ci_hw_req*, %struct.ci_hw_req** %req, align 8, !dbg !6840
  %queue26 = getelementptr inbounds %struct.ci_hw_req, %struct.ci_hw_req* %21, i32 0, i32 1, !dbg !6840
  %22 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6840
  %ci_hw_ep27 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %22, i32 0, i32 22, !dbg !6840
  %23 = load i32, i32* %i, align 4, !dbg !6840
  %idxprom28 = zext i32 %23 to i64, !dbg !6840
  %arrayidx29 = getelementptr [32 x %struct.ci_hw_ep], [32 x %struct.ci_hw_ep]* %ci_hw_ep27, i64 0, i64 %idxprom28, !dbg !6840
  %qh30 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %arrayidx29, i32 0, i32 5, !dbg !6840
  %queue31 = getelementptr inbounds %struct.anon.70, %struct.anon.70* %qh30, i32 0, i32 0, !dbg !6840
  %cmp32 = icmp eq %struct.list_head* %queue26, %queue31, !dbg !6840
  %lnot = xor i1 %cmp32, true, !dbg !6840
  br i1 %lnot, label %for.body34, label %for.end82, !dbg !6839

for.body34:                                       ; preds = %for.cond25
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !6842, metadata !DIExpression()), !dbg !6846
  %24 = load %struct.ci_hw_req*, %struct.ci_hw_req** %req, align 8, !dbg !6846
  %tds = getelementptr inbounds %struct.ci_hw_req, %struct.ci_hw_req* %24, i32 0, i32 2, !dbg !6846
  %next36 = getelementptr inbounds %struct.list_head, %struct.list_head* %tds, i32 0, i32 0, !dbg !6846
  %25 = load %struct.list_head*, %struct.list_head** %next36, align 8, !dbg !6846
  %26 = bitcast %struct.list_head* %25 to i8*, !dbg !6846
  store i8* %26, i8** %__mptr35, align 8, !dbg !6846
  br label %do.body37, !dbg !6846

do.body37:                                        ; preds = %for.body34
  br label %do.end38, !dbg !6847

do.end38:                                         ; preds = %do.body37
  %27 = load i8*, i8** %__mptr35, align 8, !dbg !6846
  %add.ptr40 = getelementptr i8, i8* %27, i64 0, !dbg !6846
  %28 = bitcast i8* %add.ptr40 to %struct.td_node*, !dbg !6846
  store %struct.td_node* %28, %struct.td_node** %tmp39, align 8, !dbg !6847
  %29 = load %struct.td_node*, %struct.td_node** %tmp39, align 8, !dbg !6846
  store %struct.td_node* %29, %struct.td_node** %node, align 8, !dbg !6849
  call void @llvm.dbg.declare(metadata i8** %__mptr41, metadata !6850, metadata !DIExpression()), !dbg !6852
  %30 = load %struct.td_node*, %struct.td_node** %node, align 8, !dbg !6852
  %td = getelementptr inbounds %struct.td_node, %struct.td_node* %30, i32 0, i32 0, !dbg !6852
  %next42 = getelementptr inbounds %struct.list_head, %struct.list_head* %td, i32 0, i32 0, !dbg !6852
  %31 = load %struct.list_head*, %struct.list_head** %next42, align 8, !dbg !6852
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !6852
  store i8* %32, i8** %__mptr41, align 8, !dbg !6852
  br label %do.body43, !dbg !6852

do.body43:                                        ; preds = %do.end38
  br label %do.end44, !dbg !6853

do.end44:                                         ; preds = %do.body43
  %33 = load i8*, i8** %__mptr41, align 8, !dbg !6852
  %add.ptr46 = getelementptr i8, i8* %33, i64 0, !dbg !6852
  %34 = bitcast i8* %add.ptr46 to %struct.td_node*, !dbg !6852
  store %struct.td_node* %34, %struct.td_node** %tmp45, align 8, !dbg !6853
  %35 = load %struct.td_node*, %struct.td_node** %tmp45, align 8, !dbg !6852
  store %struct.td_node* %35, %struct.td_node** %tmpnode, align 8, !dbg !6849
  br label %for.cond47, !dbg !6849

for.cond47:                                       ; preds = %do.end70, %do.end44
  %36 = load %struct.td_node*, %struct.td_node** %node, align 8, !dbg !6855
  %td48 = getelementptr inbounds %struct.td_node, %struct.td_node* %36, i32 0, i32 0, !dbg !6855
  %37 = load %struct.ci_hw_req*, %struct.ci_hw_req** %req, align 8, !dbg !6855
  %tds49 = getelementptr inbounds %struct.ci_hw_req, %struct.ci_hw_req* %37, i32 0, i32 2, !dbg !6855
  %cmp50 = icmp eq %struct.list_head* %td48, %tds49, !dbg !6855
  %lnot52 = xor i1 %cmp50, true, !dbg !6855
  br i1 %lnot52, label %for.body53, label %for.end73, !dbg !6849

for.body53:                                       ; preds = %for.cond47
  %38 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6857
  %39 = load i32, i32* %i, align 4, !dbg !6859
  %40 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6860
  %hw_ep_max54 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %40, i32 0, i32 21, !dbg !6861
  %41 = load i32, i32* %hw_ep_max54, align 4, !dbg !6861
  %div = udiv i32 %41, 2, !dbg !6862
  %rem = urem i32 %39, %div, !dbg !6863
  %42 = load %struct.td_node*, %struct.td_node** %node, align 8, !dbg !6864
  %dma = getelementptr inbounds %struct.td_node, %struct.td_node* %42, i32 0, i32 1, !dbg !6865
  %43 = load i64, i64* %dma, align 8, !dbg !6865
  %conv55 = trunc i64 %43 to i32, !dbg !6866
  %44 = load i32, i32* %i, align 4, !dbg !6867
  %45 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6868
  %hw_ep_max56 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %45, i32 0, i32 21, !dbg !6869
  %46 = load i32, i32* %hw_ep_max56, align 4, !dbg !6869
  %div57 = udiv i32 %46, 2, !dbg !6870
  %cmp58 = icmp ult i32 %44, %div57, !dbg !6871
  %47 = zext i1 %cmp58 to i64, !dbg !6872
  %cond = select i1 %cmp58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), !dbg !6872
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %rem, i32 %conv55, i8* %cond) #6, !dbg !6873
  store i32 0, i32* %j, align 4, !dbg !6874
  br label %for.cond60, !dbg !6876

for.cond60:                                       ; preds = %for.inc, %for.body53
  %48 = load i32, i32* %j, align 4, !dbg !6877
  %49 = load i32, i32* %qsize, align 4, !dbg !6879
  %cmp61 = icmp ult i32 %48, %49, !dbg !6880
  br i1 %cmp61, label %for.body63, label %for.end, !dbg !6881

for.body63:                                       ; preds = %for.cond60
  %50 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6882
  %51 = load i32, i32* %j, align 4, !dbg !6883
  %52 = load %struct.td_node*, %struct.td_node** %node, align 8, !dbg !6884
  %ptr = getelementptr inbounds %struct.td_node, %struct.td_node* %52, i32 0, i32 2, !dbg !6885
  %53 = load %struct.ci_hw_td*, %struct.ci_hw_td** %ptr, align 8, !dbg !6885
  %54 = bitcast %struct.ci_hw_td* %53 to i32*, !dbg !6886
  %55 = load i32, i32* %j, align 4, !dbg !6887
  %idx.ext = zext i32 %55 to i64, !dbg !6888
  %add.ptr64 = getelementptr i32, i32* %54, i64 %idx.ext, !dbg !6888
  %56 = load i32, i32* %add.ptr64, align 4, !dbg !6889
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 %51, i32 %56) #6, !dbg !6890
  br label %for.inc, !dbg !6890

for.inc:                                          ; preds = %for.body63
  %57 = load i32, i32* %j, align 4, !dbg !6891
  %inc = add i32 %57, 1, !dbg !6891
  store i32 %inc, i32* %j, align 4, !dbg !6891
  br label %for.cond60, !dbg !6892, !llvm.loop !6893

for.end:                                          ; preds = %for.cond60
  br label %for.inc65, !dbg !6895

for.inc65:                                        ; preds = %for.end
  %58 = load %struct.td_node*, %struct.td_node** %tmpnode, align 8, !dbg !6855
  store %struct.td_node* %58, %struct.td_node** %node, align 8, !dbg !6855
  call void @llvm.dbg.declare(metadata i8** %__mptr66, metadata !6896, metadata !DIExpression()), !dbg !6898
  %59 = load %struct.td_node*, %struct.td_node** %tmpnode, align 8, !dbg !6898
  %td67 = getelementptr inbounds %struct.td_node, %struct.td_node* %59, i32 0, i32 0, !dbg !6898
  %next68 = getelementptr inbounds %struct.list_head, %struct.list_head* %td67, i32 0, i32 0, !dbg !6898
  %60 = load %struct.list_head*, %struct.list_head** %next68, align 8, !dbg !6898
  %61 = bitcast %struct.list_head* %60 to i8*, !dbg !6898
  store i8* %61, i8** %__mptr66, align 8, !dbg !6898
  br label %do.body69, !dbg !6898

do.body69:                                        ; preds = %for.inc65
  br label %do.end70, !dbg !6899

do.end70:                                         ; preds = %do.body69
  %62 = load i8*, i8** %__mptr66, align 8, !dbg !6898
  %add.ptr72 = getelementptr i8, i8* %62, i64 0, !dbg !6898
  %63 = bitcast i8* %add.ptr72 to %struct.td_node*, !dbg !6898
  store %struct.td_node* %63, %struct.td_node** %tmp71, align 8, !dbg !6899
  %64 = load %struct.td_node*, %struct.td_node** %tmp71, align 8, !dbg !6898
  store %struct.td_node* %64, %struct.td_node** %tmpnode, align 8, !dbg !6855
  br label %for.cond47, !dbg !6855, !llvm.loop !6901

for.end73:                                        ; preds = %for.cond47
  br label %for.inc74, !dbg !6903

for.inc74:                                        ; preds = %for.end73
  call void @llvm.dbg.declare(metadata i8** %__mptr75, metadata !6904, metadata !DIExpression()), !dbg !6906
  %65 = load %struct.ci_hw_req*, %struct.ci_hw_req** %req, align 8, !dbg !6906
  %queue76 = getelementptr inbounds %struct.ci_hw_req, %struct.ci_hw_req* %65, i32 0, i32 1, !dbg !6906
  %next77 = getelementptr inbounds %struct.list_head, %struct.list_head* %queue76, i32 0, i32 0, !dbg !6906
  %66 = load %struct.list_head*, %struct.list_head** %next77, align 8, !dbg !6906
  %67 = bitcast %struct.list_head* %66 to i8*, !dbg !6906
  store i8* %67, i8** %__mptr75, align 8, !dbg !6906
  br label %do.body78, !dbg !6906

do.body78:                                        ; preds = %for.inc74
  br label %do.end79, !dbg !6907

do.end79:                                         ; preds = %do.body78
  %68 = load i8*, i8** %__mptr75, align 8, !dbg !6906
  %add.ptr81 = getelementptr i8, i8* %68, i64 -96, !dbg !6906
  %69 = bitcast i8* %add.ptr81 to %struct.ci_hw_req*, !dbg !6906
  store %struct.ci_hw_req* %69, %struct.ci_hw_req** %tmp80, align 8, !dbg !6907
  %70 = load %struct.ci_hw_req*, %struct.ci_hw_req** %tmp80, align 8, !dbg !6906
  store %struct.ci_hw_req* %70, %struct.ci_hw_req** %req, align 8, !dbg !6840
  br label %for.cond25, !dbg !6840, !llvm.loop !6909

for.end82:                                        ; preds = %for.cond25
  br label %for.inc83, !dbg !6910

for.inc83:                                        ; preds = %for.end82
  %71 = load i32, i32* %i, align 4, !dbg !6911
  %inc84 = add i32 %71, 1, !dbg !6911
  store i32 %inc84, i32* %i, align 4, !dbg !6911
  br label %for.cond, !dbg !6912, !llvm.loop !6913

for.end85:                                        ; preds = %for.cond
  %72 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6915
  %lock86 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %72, i32 0, i32 1, !dbg !6916
  %73 = load i64, i64* %flags, align 8, !dbg !6917
  store %struct.spinlock* %lock86, %struct.spinlock** %lock.addr.i87, align 8
  store i64 %73, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !793, metadata !6411, metadata !DIExpression()) #5, !dbg !6918
  call void @llvm.dbg.declare(metadata !793, metadata !6415, metadata !DIExpression()) #5, !dbg !6918
  store i32 1, i32* %tmp.i, align 4, !dbg !6918
  %74 = load i32, i32* %tmp.i, align 4, !dbg !6918
  call void @llvm.dbg.declare(metadata !793, metadata !6416, metadata !DIExpression()) #5, !dbg !6919
  call void @llvm.dbg.declare(metadata !793, metadata !6422, metadata !DIExpression()) #5, !dbg !6919
  store i32 1, i32* %tmp8.i, align 4, !dbg !6919
  %75 = load i32, i32* %tmp8.i, align 4, !dbg !6919
  %76 = load i64, i64* %flags.addr.i, align 8, !dbg !6920
  call void @arch_local_irq_restore(i64 %76) #7, !dbg !6920
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6921, !srcloc !6426
  %77 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i87, align 8, !dbg !6922
  %78 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %77, i32 0, i32 0, !dbg !6922
  %rlock.i88 = bitcast %union.anon.1* %78 to %struct.raw_spinlock*, !dbg !6922
  store i32 0, i32* %retval, align 4, !dbg !6923
  br label %return, !dbg !6923

return:                                           ; preds = %for.end85, %if.then
  %79 = load i32, i32* %retval, align 4, !dbg !6924
  ret i32 %79, !dbg !6924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_otg_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !6925 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6926, metadata !DIExpression()), !dbg !6927
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6928, metadata !DIExpression()), !dbg !6927
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6927
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6927
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 44, !dbg !6927
  %2 = load i8*, i8** %i_private, align 8, !dbg !6927
  %call = call i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* @ci_otg_show, i8* %2) #6, !dbg !6927
  ret i32 %call, !dbg !6927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_otg_show(%struct.seq_file* %s, i8* %unused) #0 !dbg !6929 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.seq_file*, align 8
  %unused.addr = alloca i8*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %fsm = alloca %struct.otg_fsm*, align 8
  store %struct.seq_file* %s, %struct.seq_file** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s.addr, metadata !6930, metadata !DIExpression()), !dbg !6931
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !6932, metadata !DIExpression()), !dbg !6933
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !6934, metadata !DIExpression()), !dbg !6935
  %0 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6936
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !6937
  %1 = load i8*, i8** %private, align 8, !dbg !6937
  %2 = bitcast i8* %1 to %struct.ci_hdrc*, !dbg !6936
  store %struct.ci_hdrc* %2, %struct.ci_hdrc** %ci, align 8, !dbg !6935
  call void @llvm.dbg.declare(metadata %struct.otg_fsm** %fsm, metadata !6938, metadata !DIExpression()), !dbg !6939
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6940
  %tobool = icmp ne %struct.ci_hdrc* %3, null, !dbg !6940
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6942

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6943
  %call = call zeroext i1 @ci_otg_is_fsm_mode(%struct.ci_hdrc* %4) #6, !dbg !6944
  br i1 %call, label %if.end, label %if.then, !dbg !6945

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !6946
  br label %return, !dbg !6946

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6947
  %fsm1 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %5, i32 0, i32 8, !dbg !6948
  store %struct.otg_fsm* %fsm1, %struct.otg_fsm** %fsm, align 8, !dbg !6949
  %6 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6950
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !6951
  %otg = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 7, !dbg !6952
  %state = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %otg, i32 0, i32 5, !dbg !6953
  %8 = load i32, i32* %state, align 8, !dbg !6953
  %call2 = call i8* @usb_otg_state_string(i32 %8) #6, !dbg !6954
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* %call2) #6, !dbg !6955
  %9 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6956
  %10 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6957
  %a_bus_drop = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %10, i32 0, i32 13, !dbg !6958
  %11 = load i32, i32* %a_bus_drop, align 4, !dbg !6958
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i32 %11) #6, !dbg !6959
  %12 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6960
  %13 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6961
  %a_bus_req = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %13, i32 0, i32 14, !dbg !6962
  %14 = load i32, i32* %a_bus_req, align 8, !dbg !6962
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i32 %14) #6, !dbg !6963
  %15 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6964
  %16 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6965
  %a_srp_det = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %16, i32 0, i32 3, !dbg !6966
  %17 = load i32, i32* %a_srp_det, align 4, !dbg !6966
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 %17) #6, !dbg !6967
  %18 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6968
  %19 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6969
  %a_vbus_vld = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %19, i32 0, i32 4, !dbg !6970
  %20 = load i32, i32* %a_vbus_vld, align 8, !dbg !6970
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 %20) #6, !dbg !6971
  %21 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6972
  %22 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6973
  %b_conn = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %22, i32 0, i32 5, !dbg !6974
  %23 = load i32, i32* %b_conn, align 4, !dbg !6974
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %23) #6, !dbg !6975
  %24 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6976
  %25 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6977
  %adp_change = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %25, i32 0, i32 1, !dbg !6978
  %26 = load i32, i32* %adp_change, align 4, !dbg !6978
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i32 %26) #6, !dbg !6979
  %27 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6980
  %28 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6981
  %power_up = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %28, i32 0, i32 2, !dbg !6982
  %29 = load i32, i32* %power_up, align 8, !dbg !6982
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 %29) #6, !dbg !6983
  %30 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6984
  %31 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6985
  %a_bus_resume = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %31, i32 0, i32 6, !dbg !6986
  %32 = load i32, i32* %a_bus_resume, align 8, !dbg !6986
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i32 %32) #6, !dbg !6987
  %33 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6988
  %34 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6989
  %a_bus_suspend = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %34, i32 0, i32 7, !dbg !6990
  %35 = load i32, i32* %a_bus_suspend, align 4, !dbg !6990
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i32 %35) #6, !dbg !6991
  %36 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6992
  %37 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6993
  %a_conn = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %37, i32 0, i32 8, !dbg !6994
  %38 = load i32, i32* %a_conn, align 8, !dbg !6994
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 %38) #6, !dbg !6995
  %39 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !6996
  %40 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !6997
  %b_bus_req = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %40, i32 0, i32 15, !dbg !6998
  %41 = load i32, i32* %b_bus_req, align 4, !dbg !6998
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %41) #6, !dbg !6999
  %42 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7000
  %43 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7001
  %b_bus_suspend = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %43, i32 0, i32 18, !dbg !7002
  %44 = load i32, i32* %b_bus_suspend, align 8, !dbg !7002
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i32 %44) #6, !dbg !7003
  %45 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7004
  %46 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7005
  %b_se0_srp = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %46, i32 0, i32 9, !dbg !7006
  %47 = load i32, i32* %b_se0_srp, align 4, !dbg !7006
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32 %47) #6, !dbg !7007
  %48 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7008
  %49 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7009
  %b_ssend_srp = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %49, i32 0, i32 10, !dbg !7010
  %50 = load i32, i32* %b_ssend_srp, align 8, !dbg !7010
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i32 %50) #6, !dbg !7011
  %51 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7012
  %52 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7013
  %b_sess_vld = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %52, i32 0, i32 11, !dbg !7014
  %53 = load i32, i32* %b_sess_vld, align 4, !dbg !7014
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i32 %53) #6, !dbg !7015
  %54 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7016
  %55 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7017
  %b_srp_done = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %55, i32 0, i32 26, !dbg !7018
  %56 = load i32, i32* %b_srp_done, align 8, !dbg !7018
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 %56) #6, !dbg !7019
  %57 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7020
  %58 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7021
  %drv_vbus = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %58, i32 0, i32 19, !dbg !7022
  %59 = load i32, i32* %drv_vbus, align 4, !dbg !7022
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i32 %59) #6, !dbg !7023
  %60 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7024
  %61 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7025
  %loc_conn = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %61, i32 0, i32 20, !dbg !7026
  %62 = load i32, i32* %loc_conn, align 8, !dbg !7026
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i32 %62) #6, !dbg !7027
  %63 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7028
  %64 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7029
  %loc_sof = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %64, i32 0, i32 21, !dbg !7030
  %65 = load i32, i32* %loc_sof, align 4, !dbg !7030
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i32 %65) #6, !dbg !7031
  %66 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7032
  %67 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7033
  %adp_prb = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %67, i32 0, i32 22, !dbg !7034
  %68 = load i32, i32* %adp_prb, align 8, !dbg !7034
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i32 %68) #6, !dbg !7035
  %69 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7036
  %70 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7037
  %id = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %70, i32 0, i32 0, !dbg !7038
  %71 = load i32, i32* %id, align 8, !dbg !7038
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i32 %71) #6, !dbg !7039
  %72 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7040
  %73 = load %struct.otg_fsm*, %struct.otg_fsm** %fsm, align 8, !dbg !7041
  %protocol = getelementptr inbounds %struct.otg_fsm, %struct.otg_fsm* %73, i32 0, i32 42, !dbg !7042
  %74 = load i32, i32* %protocol, align 8, !dbg !7042
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i32 %74) #6, !dbg !7043
  store i32 0, i32* %retval, align 4, !dbg !7044
  br label %return, !dbg !7044

return:                                           ; preds = %if.end, %if.then
  %75 = load i32, i32* %retval, align 4, !dbg !7045
  ret i32 %75, !dbg !7045
}

; Function Attrs: noredzone
declare dso_local i8* @usb_otg_state_string(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ci_role_write(%struct.file* %file, i8* %ubuf, i64 %count, i64* %ppos) #0 !dbg !7046 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !6255, metadata !DIExpression()), !dbg !7047
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !6269, metadata !DIExpression()), !dbg !7051
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !6271, metadata !DIExpression()), !dbg !7052
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !6273, metadata !DIExpression()), !dbg !7053
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !6275, metadata !DIExpression()), !dbg !7054
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !6279, metadata !DIExpression()), !dbg !7055
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !6281, metadata !DIExpression()), !dbg !7056
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !6283, metadata !DIExpression()), !dbg !7057
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %ubuf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %s = alloca %struct.seq_file*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %role = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  %ret = alloca i32, align 4
  %__UNIQUE_ID___x304 = alloca i64, align 8
  %__UNIQUE_ID___y305 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7058, metadata !DIExpression()), !dbg !7059
  store i8* %ubuf, i8** %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ubuf.addr, metadata !7060, metadata !DIExpression()), !dbg !7061
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !7062, metadata !DIExpression()), !dbg !7063
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !7064, metadata !DIExpression()), !dbg !7065
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s, metadata !7066, metadata !DIExpression()), !dbg !7067
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7068
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !7069
  %1 = load i8*, i8** %private_data, align 8, !dbg !7069
  %2 = bitcast i8* %1 to %struct.seq_file*, !dbg !7068
  store %struct.seq_file* %2, %struct.seq_file** %s, align 8, !dbg !7067
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !7070, metadata !DIExpression()), !dbg !7071
  %3 = load %struct.seq_file*, %struct.seq_file** %s, align 8, !dbg !7072
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %3, i32 0, i32 11, !dbg !7073
  %4 = load i8*, i8** %private, align 8, !dbg !7073
  %5 = bitcast i8* %4 to %struct.ci_hdrc*, !dbg !7072
  store %struct.ci_hdrc* %5, %struct.ci_hdrc** %ci, align 8, !dbg !7071
  call void @llvm.dbg.declare(metadata i32* %role, metadata !7074, metadata !DIExpression()), !dbg !7075
  call void @llvm.dbg.declare(metadata [8 x i8]* %buf, metadata !7076, metadata !DIExpression()), !dbg !7077
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7078, metadata !DIExpression()), !dbg !7079
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0, !dbg !7080
  %6 = load i8*, i8** %ubuf.addr, align 8, !dbg !7081
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x304, metadata !7082, metadata !DIExpression()), !dbg !7084
  store i64 7, i64* %__UNIQUE_ID___x304, align 8, !dbg !7084
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y305, metadata !7085, metadata !DIExpression()), !dbg !7084
  %7 = load i64, i64* %count.addr, align 8, !dbg !7084
  store i64 %7, i64* %__UNIQUE_ID___y305, align 8, !dbg !7084
  %8 = load i64, i64* %__UNIQUE_ID___x304, align 8, !dbg !7084
  %9 = load i64, i64* %__UNIQUE_ID___y305, align 8, !dbg !7084
  %cmp = icmp ult i64 %8, %9, !dbg !7084
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !7084

cond.true:                                        ; preds = %entry
  %10 = load i64, i64* %__UNIQUE_ID___x304, align 8, !dbg !7084
  br label %cond.end, !dbg !7084

cond.false:                                       ; preds = %entry
  %11 = load i64, i64* %__UNIQUE_ID___y305, align 8, !dbg !7084
  br label %cond.end, !dbg !7084

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !7084
  store i64 %cond, i64* %tmp, align 8, !dbg !7084
  %12 = load i64, i64* %tmp, align 8, !dbg !7084
  store i8* %arraydecay, i8** %to.addr.i, align 8
  store i8* %6, i8** %from.addr.i, align 8
  store i64 %12, i64* %n.addr.i, align 8
  %13 = load i8*, i8** %to.addr.i, align 8, !dbg !7086
  %14 = load i64, i64* %n.addr.i, align 8, !dbg !7086
  store i8* %13, i8** %addr.addr.i.i, align 8
  store i64 %14, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !7053
  %15 = load i32, i32* %sz.i.i, align 4, !dbg !7087
  %cmp.i.i = icmp sge i32 %15, 0, !dbg !7087
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !7087

land.rhs.i.i:                                     ; preds = %cond.end
  %16 = load i32, i32* %sz.i.i, align 4, !dbg !7087
  %conv.i.i = sext i32 %16 to i64, !dbg !7087
  %17 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !7087
  %cmp1.i.i = icmp ult i64 %conv.i.i, %17, !dbg !7087
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %cond.end
  %18 = phi i1 [ false, %cond.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !7088
  %lnot.i.i = xor i1 %18, true, !dbg !7087
  %lnot.ext.i.i = zext i1 %18 to i32, !dbg !7087
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !7087
  br i1 %18, label %if.then.i.i, label %if.end10.i.i, !dbg !7089

if.then.i.i:                                      ; preds = %land.end.i.i
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !7090
  %20 = call i1 @llvm.is.constant.i64(i64 %19) #5, !dbg !7091
  br i1 %20, label %if.else.i.i, label %if.then5.i.i, !dbg !7092

if.then5.i.i:                                     ; preds = %if.then.i.i
  %21 = load i32, i32* %sz.i.i, align 4, !dbg !7093
  %22 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !7094
  call void @copy_overflow(i32 %21, i64 %22) #7, !dbg !7095
  br label %if.end9.i.i, !dbg !7095

if.else.i.i:                                      ; preds = %if.then.i.i
  %23 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !7096
  %tobool6.i.i = trunc i8 %23 to i1, !dbg !7096
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !7097

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #7, !dbg !7098
  br label %if.end.i.i, !dbg !7098

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #7, !dbg !7099
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !7100
  br label %check_copy_size.exit.i, !dbg !7100

if.end10.i.i:                                     ; preds = %land.end.i.i
  %24 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !7054
  %cmp11.i.i = icmp ugt i64 %24, 2147483647, !dbg !7054
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !7054
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !7054
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !7054
  %25 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !7101
  %tobool17.i.i = icmp ne i32 %25, 0, !dbg !7101
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !7101
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !7101
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !7101
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !7054

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !7102, !srcloc !6341
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !7103, !srcloc !6344
  br label %if.end31.i.i, !dbg !7104

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %26 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !7054
  %tobool32.i.i = icmp ne i32 %26, 0, !dbg !7054
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !7054
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !7054
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !7054
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !7101
  %27 = load i64, i64* %tmp.i.i, align 8, !dbg !7054
  %tobool38.i.i = icmp ne i64 %27, 0, !dbg !7105
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !7106

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !7107
  br label %check_copy_size.exit.i, !dbg !7107

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %28 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !7108
  %29 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !7109
  %30 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !7110
  %tobool41.i.i = trunc i8 %30 to i1, !dbg !7110
  call void @check_object_size(i8* %28, i64 %29, i1 zeroext %tobool41.i.i) #7, !dbg !7111
  store i1 true, i1* %retval.i.i, align 1, !dbg !7112
  br label %check_copy_size.exit.i, !dbg !7112

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %31 = load i1, i1* %retval.i.i, align 1, !dbg !7113
  %lnot.i = xor i1 %31, true, !dbg !7086
  %lnot.ext.i = zext i1 %31 to i32, !dbg !7086
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !7086
  br i1 %31, label %if.then.i, label %copy_from_user.exit, !dbg !7114

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %32 = load i8*, i8** %to.addr.i, align 8, !dbg !7115
  %33 = load i8*, i8** %from.addr.i, align 8, !dbg !7116
  %34 = load i64, i64* %n.addr.i, align 8, !dbg !7117
  %call2.i = call i64 @_copy_from_user(i8* %32, i8* %33, i64 %34) #7, !dbg !7118
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !7119
  br label %copy_from_user.exit, !dbg !7120

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %35 = load i64, i64* %n.addr.i, align 8, !dbg !7121
  %tobool = icmp ne i64 %35, 0, !dbg !7122
  br i1 %tobool, label %if.then, label %if.end, !dbg !7123

if.then:                                          ; preds = %copy_from_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !7124
  br label %return, !dbg !7124

if.end:                                           ; preds = %copy_from_user.exit
  store i32 0, i32* %role, align 4, !dbg !7125
  br label %for.cond, !dbg !7127

for.cond:                                         ; preds = %for.inc, %if.end
  %36 = load i32, i32* %role, align 4, !dbg !7128
  %cmp1 = icmp ult i32 %36, 2, !dbg !7130
  br i1 %cmp1, label %for.body, label %for.end, !dbg !7131

for.body:                                         ; preds = %for.cond
  %37 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7132
  %roles = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %37, i32 0, i32 4, !dbg !7134
  %38 = load i32, i32* %role, align 4, !dbg !7135
  %idxprom = zext i32 %38 to i64, !dbg !7132
  %arrayidx = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !7132
  %39 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx, align 8, !dbg !7132
  %tobool2 = icmp ne %struct.ci_role_driver* %39, null, !dbg !7132
  br i1 %tobool2, label %land.lhs.true, label %if.end15, !dbg !7136

land.lhs.true:                                    ; preds = %for.body
  %arraydecay3 = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0, !dbg !7137
  %40 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7138
  %roles4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %40, i32 0, i32 4, !dbg !7139
  %41 = load i32, i32* %role, align 4, !dbg !7140
  %idxprom5 = zext i32 %41 to i64, !dbg !7138
  %arrayidx6 = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles4, i64 0, i64 %idxprom5, !dbg !7138
  %42 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx6, align 8, !dbg !7138
  %name = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %42, i32 0, i32 3, !dbg !7141
  %43 = load i8*, i8** %name, align 8, !dbg !7141
  %44 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7142
  %roles7 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %44, i32 0, i32 4, !dbg !7143
  %45 = load i32, i32* %role, align 4, !dbg !7144
  %idxprom8 = zext i32 %45 to i64, !dbg !7142
  %arrayidx9 = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles7, i64 0, i64 %idxprom8, !dbg !7142
  %46 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx9, align 8, !dbg !7142
  %name10 = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %46, i32 0, i32 3, !dbg !7145
  %47 = load i8*, i8** %name10, align 8, !dbg !7145
  %call11 = call i64 @strlen(i8* %47) #6, !dbg !7146
  %call12 = call i32 @strncmp(i8* %arraydecay3, i8* %43, i64 %call11) #6, !dbg !7147
  %tobool13 = icmp ne i32 %call12, 0, !dbg !7147
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !7148

if.then14:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !7149

if.end15:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !7150

for.inc:                                          ; preds = %if.end15
  %48 = load i32, i32* %role, align 4, !dbg !7151
  %inc = add i32 %48, 1, !dbg !7151
  store i32 %inc, i32* %role, align 4, !dbg !7151
  br label %for.cond, !dbg !7152, !llvm.loop !7153

for.end:                                          ; preds = %if.then14, %for.cond
  %49 = load i32, i32* %role, align 4, !dbg !7155
  %cmp16 = icmp eq i32 %49, 2, !dbg !7157
  br i1 %cmp16, label %if.then19, label %lor.lhs.false, !dbg !7158

lor.lhs.false:                                    ; preds = %for.end
  %50 = load i32, i32* %role, align 4, !dbg !7159
  %51 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7160
  %role17 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %51, i32 0, i32 5, !dbg !7161
  %52 = load i32, i32* %role17, align 8, !dbg !7161
  %cmp18 = icmp eq i32 %50, %52, !dbg !7162
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7163

if.then19:                                        ; preds = %lor.lhs.false, %for.end
  store i64 -22, i64* %retval, align 8, !dbg !7164
  br label %return, !dbg !7164

if.end20:                                         ; preds = %lor.lhs.false
  %53 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7165
  %dev = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %53, i32 0, i32 0, !dbg !7166
  %54 = load %struct.device*, %struct.device** %dev, align 8, !dbg !7166
  %call21 = call i32 @pm_runtime_get_sync(%struct.device* %54) #6, !dbg !7167
  %55 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7168
  %irq = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %55, i32 0, i32 3, !dbg !7169
  %56 = load i32, i32* %irq, align 8, !dbg !7169
  call void @disable_irq(i32 %56) #6, !dbg !7170
  %57 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7171
  call void @ci_role_stop(%struct.ci_hdrc* %57) #6, !dbg !7172
  %58 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7173
  %59 = load i32, i32* %role, align 4, !dbg !7174
  %call22 = call i32 @ci_role_start(%struct.ci_hdrc* %58, i32 %59) #6, !dbg !7175
  store i32 %call22, i32* %ret, align 4, !dbg !7176
  %60 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7177
  %irq23 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %60, i32 0, i32 3, !dbg !7178
  %61 = load i32, i32* %irq23, align 8, !dbg !7178
  call void @enable_irq(i32 %61) #6, !dbg !7179
  %62 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7180
  %dev24 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %62, i32 0, i32 0, !dbg !7181
  %63 = load %struct.device*, %struct.device** %dev24, align 8, !dbg !7181
  %call25 = call i32 @pm_runtime_put_sync(%struct.device* %63) #6, !dbg !7182
  %64 = load i32, i32* %ret, align 4, !dbg !7183
  %tobool26 = icmp ne i32 %64, 0, !dbg !7183
  br i1 %tobool26, label %cond.true27, label %cond.false28, !dbg !7183

cond.true27:                                      ; preds = %if.end20
  %65 = load i32, i32* %ret, align 4, !dbg !7184
  %conv = sext i32 %65 to i64, !dbg !7184
  br label %cond.end29, !dbg !7183

cond.false28:                                     ; preds = %if.end20
  %66 = load i64, i64* %count.addr, align 8, !dbg !7185
  br label %cond.end29, !dbg !7183

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi i64 [ %conv, %cond.true27 ], [ %66, %cond.false28 ], !dbg !7183
  store i64 %cond30, i64* %retval, align 8, !dbg !7186
  br label %return, !dbg !7186

return:                                           ; preds = %cond.end29, %if.then19, %if.then
  %67 = load i64, i64* %retval, align 8, !dbg !7187
  ret i64 %67, !dbg !7187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_role_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !7188 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !7189, metadata !DIExpression()), !dbg !7190
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7191, metadata !DIExpression()), !dbg !7192
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7193
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !7194
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 44, !dbg !7195
  %2 = load i8*, i8** %i_private, align 8, !dbg !7195
  %call = call i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* @ci_role_show, i8* %2) #6, !dbg !7196
  ret i32 %call, !dbg !7197
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local void @disable_irq(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ci_role_stop(%struct.ci_hdrc* %ci) #0 !dbg !7198 {
entry:
  %ci.addr = alloca %struct.ci_hdrc*, align 8
  %role = alloca i32, align 4
  store %struct.ci_hdrc* %ci, %struct.ci_hdrc** %ci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci.addr, metadata !7199, metadata !DIExpression()), !dbg !7200
  call void @llvm.dbg.declare(metadata i32* %role, metadata !7201, metadata !DIExpression()), !dbg !7202
  %0 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7203
  %role1 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %0, i32 0, i32 5, !dbg !7204
  %1 = load i32, i32* %role1, align 8, !dbg !7204
  store i32 %1, i32* %role, align 4, !dbg !7202
  %2 = load i32, i32* %role, align 4, !dbg !7205
  %cmp = icmp eq i32 %2, 2, !dbg !7207
  br i1 %cmp, label %if.then, label %if.end, !dbg !7208

if.then:                                          ; preds = %entry
  br label %return, !dbg !7209

if.end:                                           ; preds = %entry
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7210
  %role2 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 5, !dbg !7211
  store i32 2, i32* %role2, align 8, !dbg !7212
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7213
  %roles = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 4, !dbg !7214
  %5 = load i32, i32* %role, align 4, !dbg !7215
  %idxprom = zext i32 %5 to i64, !dbg !7213
  %arrayidx = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !7213
  %6 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx, align 8, !dbg !7213
  %stop = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %6, i32 0, i32 1, !dbg !7216
  %stop3 = bitcast {}** %stop to void (%struct.ci_hdrc*)**, !dbg !7216
  %7 = load void (%struct.ci_hdrc*)*, void (%struct.ci_hdrc*)** %stop3, align 8, !dbg !7216
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7217
  call void %7(%struct.ci_hdrc* %8) #6, !dbg !7213
  br label %return, !dbg !7218

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7218
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_role_start(%struct.ci_hdrc* %ci, i32 %role) #0 !dbg !7219 {
entry:
  %retval = alloca i32, align 4
  %ci.addr = alloca %struct.ci_hdrc*, align 8
  %role.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.ci_hdrc* %ci, %struct.ci_hdrc** %ci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci.addr, metadata !7222, metadata !DIExpression()), !dbg !7223
  store i32 %role, i32* %role.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %role.addr, metadata !7224, metadata !DIExpression()), !dbg !7225
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !7226, metadata !DIExpression()), !dbg !7227
  %0 = load i32, i32* %role.addr, align 4, !dbg !7228
  %cmp = icmp uge i32 %0, 2, !dbg !7230
  br i1 %cmp, label %if.then, label %if.end, !dbg !7231

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !7232
  br label %return, !dbg !7232

if.end:                                           ; preds = %entry
  %1 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7233
  %roles = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %1, i32 0, i32 4, !dbg !7235
  %2 = load i32, i32* %role.addr, align 4, !dbg !7236
  %idxprom = zext i32 %2 to i64, !dbg !7233
  %arrayidx = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !7233
  %3 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx, align 8, !dbg !7233
  %tobool = icmp ne %struct.ci_role_driver* %3, null, !dbg !7233
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !7237

if.then1:                                         ; preds = %if.end
  store i32 -6, i32* %retval, align 4, !dbg !7238
  br label %return, !dbg !7238

if.end2:                                          ; preds = %if.end
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7239
  %roles3 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 4, !dbg !7240
  %5 = load i32, i32* %role.addr, align 4, !dbg !7241
  %idxprom4 = zext i32 %5 to i64, !dbg !7239
  %arrayidx5 = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles3, i64 0, i64 %idxprom4, !dbg !7239
  %6 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx5, align 8, !dbg !7239
  %start = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %6, i32 0, i32 0, !dbg !7242
  %7 = load i32 (%struct.ci_hdrc*)*, i32 (%struct.ci_hdrc*)** %start, align 8, !dbg !7242
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7243
  %call = call i32 %7(%struct.ci_hdrc* %8) #6, !dbg !7239
  store i32 %call, i32* %ret, align 4, !dbg !7244
  %9 = load i32, i32* %ret, align 4, !dbg !7245
  %tobool6 = icmp ne i32 %9, 0, !dbg !7245
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !7247

if.then7:                                         ; preds = %if.end2
  %10 = load i32, i32* %role.addr, align 4, !dbg !7248
  %11 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7249
  %role8 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %11, i32 0, i32 5, !dbg !7250
  store i32 %10, i32* %role8, align 8, !dbg !7251
  br label %if.end9, !dbg !7249

if.end9:                                          ; preds = %if.then7, %if.end2
  %12 = load i32, i32* %ret, align 4, !dbg !7252
  store i32 %12, i32* %retval, align 4, !dbg !7253
  br label %return, !dbg !7253

return:                                           ; preds = %if.end9, %if.then1, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !7254
  ret i32 %13, !dbg !7254
}

; Function Attrs: noredzone
declare dso_local void @enable_irq(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_role_show(%struct.seq_file* %s, i8* %data) #0 !dbg !7255 {
entry:
  %s.addr = alloca %struct.seq_file*, align 8
  %data.addr = alloca i8*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  store %struct.seq_file* %s, %struct.seq_file** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s.addr, metadata !7256, metadata !DIExpression()), !dbg !7257
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !7258, metadata !DIExpression()), !dbg !7259
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !7260, metadata !DIExpression()), !dbg !7261
  %0 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7262
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !7263
  %1 = load i8*, i8** %private, align 8, !dbg !7263
  %2 = bitcast i8* %1 to %struct.ci_hdrc*, !dbg !7262
  store %struct.ci_hdrc* %2, %struct.ci_hdrc** %ci, align 8, !dbg !7261
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7264
  %role = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 5, !dbg !7266
  %4 = load i32, i32* %role, align 8, !dbg !7266
  %cmp = icmp ne i32 %4, 2, !dbg !7267
  br i1 %cmp, label %if.then, label %if.end, !dbg !7268

if.then:                                          ; preds = %entry
  %5 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7269
  %6 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7270
  %call = call %struct.ci_role_driver* @ci_role(%struct.ci_hdrc* %6) #6, !dbg !7271
  %name = getelementptr inbounds %struct.ci_role_driver, %struct.ci_role_driver* %call, i32 0, i32 3, !dbg !7272
  %7 = load i8*, i8** %name, align 8, !dbg !7272
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* %7) #6, !dbg !7273
  br label %if.end, !dbg !7273

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !7274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.ci_role_driver* @ci_role(%struct.ci_hdrc* %ci) #0 !dbg !7275 {
entry:
  %ci.addr = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %ci, %struct.ci_hdrc** %ci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci.addr, metadata !7278, metadata !DIExpression()), !dbg !7279
  br label %do.body, !dbg !7280

do.body:                                          ; preds = %entry
  %0 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7281
  %role = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %0, i32 0, i32 5, !dbg !7281
  %1 = load i32, i32* %role, align 8, !dbg !7281
  %cmp = icmp uge i32 %1, 2, !dbg !7281
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !7281

lor.rhs:                                          ; preds = %do.body
  %2 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7281
  %roles = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %2, i32 0, i32 4, !dbg !7281
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7281
  %role1 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 5, !dbg !7281
  %4 = load i32, i32* %role1, align 8, !dbg !7281
  %idxprom = zext i32 %4 to i64, !dbg !7281
  %arrayidx = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles, i64 0, i64 %idxprom, !dbg !7281
  %5 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx, align 8, !dbg !7281
  %tobool = icmp ne %struct.ci_role_driver* %5, null, !dbg !7281
  %lnot = xor i1 %tobool, true, !dbg !7281
  br label %lor.end, !dbg !7281

lor.end:                                          ; preds = %lor.rhs, %do.body
  %6 = phi i1 [ true, %do.body ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %6, true, !dbg !7281
  %lnot3 = xor i1 %lnot2, true, !dbg !7281
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !7281
  %conv = sext i32 %lnot.ext to i64, !dbg !7281
  %tobool4 = icmp ne i64 %conv, 0, !dbg !7281
  br i1 %tobool4, label %if.then, label %if.end, !dbg !7284

if.then:                                          ; preds = %lor.end
  br label %do.body5, !dbg !7281

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !7285

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !7287

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !7285

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i32 264, i32 0, i64 12) #5, !dbg !7289, !srcloc !7291
  br label %do.end8, !dbg !7289

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !7285

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 296) #5, !dbg !7292, !srcloc !7295
  unreachable, !dbg !7296

do.end10:                                         ; No predecessors!
  br label %do.end11, !dbg !7285

do.end11:                                         ; preds = %do.end10
  br label %if.end, !dbg !7285

if.end:                                           ; preds = %do.end11, %lor.end
  br label %do.end12, !dbg !7284

do.end12:                                         ; preds = %if.end
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7297
  %roles13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 4, !dbg !7298
  %8 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7299
  %role14 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %8, i32 0, i32 5, !dbg !7300
  %9 = load i32, i32* %role14, align 8, !dbg !7300
  %idxprom15 = zext i32 %9 to i64, !dbg !7297
  %arrayidx16 = getelementptr [2 x %struct.ci_role_driver*], [2 x %struct.ci_role_driver*]* %roles13, i64 0, i64 %idxprom15, !dbg !7297
  %10 = load %struct.ci_role_driver*, %struct.ci_role_driver** %arrayidx16, align 8, !dbg !7297
  ret %struct.ci_role_driver* %10, !dbg !7301
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_registers_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !7302 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !7303, metadata !DIExpression()), !dbg !7304
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !7305, metadata !DIExpression()), !dbg !7304
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !7304
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !7304
  %i_private = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 44, !dbg !7304
  %2 = load i8*, i8** %i_private, align 8, !dbg !7304
  %call = call i32 @single_open(%struct.file* %0, i32 (%struct.seq_file*, i8*)* @ci_registers_show, i8* %2) #6, !dbg !7304
  ret i32 %call, !dbg !7304
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ci_registers_show(%struct.seq_file* %s, i8* %unused) #0 !dbg !7306 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.seq_file*, align 8
  %unused.addr = alloca i8*, align 8
  %ci = alloca %struct.ci_hdrc*, align 8
  %tmp_reg = alloca i32, align 4
  store %struct.seq_file* %s, %struct.seq_file** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %s.addr, metadata !7307, metadata !DIExpression()), !dbg !7308
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !7309, metadata !DIExpression()), !dbg !7310
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci, metadata !7311, metadata !DIExpression()), !dbg !7312
  %0 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7313
  %private = getelementptr inbounds %struct.seq_file, %struct.seq_file* %0, i32 0, i32 11, !dbg !7314
  %1 = load i8*, i8** %private, align 8, !dbg !7314
  %2 = bitcast i8* %1 to %struct.ci_hdrc*, !dbg !7313
  store %struct.ci_hdrc* %2, %struct.ci_hdrc** %ci, align 8, !dbg !7312
  call void @llvm.dbg.declare(metadata i32* %tmp_reg, metadata !7315, metadata !DIExpression()), !dbg !7316
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7317
  %tobool = icmp ne %struct.ci_hdrc* %3, null, !dbg !7317
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !7319

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7320
  %in_lpm = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %4, i32 0, i32 44, !dbg !7321
  %5 = load i8, i8* %in_lpm, align 4, !dbg !7321
  %tobool1 = trunc i8 %5 to i1, !dbg !7321
  br i1 %tobool1, label %if.then, label %if.end, !dbg !7322

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !7323
  br label %return, !dbg !7323

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7324
  %call = call i32 @hw_read_intr_enable(%struct.ci_hdrc* %6) #6, !dbg !7325
  store i32 %call, i32* %tmp_reg, align 4, !dbg !7326
  %7 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7327
  %8 = load i32, i32* %tmp_reg, align 4, !dbg !7328
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i64 0, i64 0), i32 %8) #6, !dbg !7329
  %9 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7330
  %call2 = call i32 @hw_read_intr_status(%struct.ci_hdrc* %9) #6, !dbg !7331
  store i32 %call2, i32* %tmp_reg, align 4, !dbg !7332
  %10 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7333
  %11 = load i32, i32* %tmp_reg, align 4, !dbg !7334
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0), i32 %11) #6, !dbg !7335
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7336
  %call3 = call i32 @hw_read(%struct.ci_hdrc* %12, i32 15, i32 -1) #6, !dbg !7337
  store i32 %call3, i32* %tmp_reg, align 4, !dbg !7338
  %13 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7339
  %14 = load i32, i32* %tmp_reg, align 4, !dbg !7340
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0), i32 %14) #6, !dbg !7341
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7342
  %call4 = call i32 @hw_read(%struct.ci_hdrc* %15, i32 4, i32 -1) #6, !dbg !7343
  store i32 %call4, i32* %tmp_reg, align 4, !dbg !7344
  %16 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7345
  %17 = load i32, i32* %tmp_reg, align 4, !dbg !7346
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0), i32 %17) #6, !dbg !7347
  %18 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7348
  %call5 = call i32 @hw_read(%struct.ci_hdrc* %18, i32 12, i32 -1) #6, !dbg !7349
  store i32 %call5, i32* %tmp_reg, align 4, !dbg !7350
  %19 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7351
  %20 = load i32, i32* %tmp_reg, align 4, !dbg !7352
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i64 0, i64 0), i32 %20) #6, !dbg !7353
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7354
  %is_otg = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %21, i32 0, i32 6, !dbg !7356
  %22 = load i8, i8* %is_otg, align 4, !dbg !7356
  %tobool6 = trunc i8 %22 to i1, !dbg !7356
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !7357

if.then7:                                         ; preds = %if.end
  %23 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci, align 8, !dbg !7358
  %call8 = call i32 @hw_read_otgsc(%struct.ci_hdrc* %23, i32 -1) #6, !dbg !7360
  store i32 %call8, i32* %tmp_reg, align 4, !dbg !7361
  %24 = load %struct.seq_file*, %struct.seq_file** %s.addr, align 8, !dbg !7362
  %25 = load i32, i32* %tmp_reg, align 4, !dbg !7363
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i32 %25) #6, !dbg !7364
  br label %if.end9, !dbg !7365

if.end9:                                          ; preds = %if.then7, %if.end
  store i32 0, i32* %retval, align 4, !dbg !7366
  br label %return, !dbg !7366

return:                                           ; preds = %if.end9, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !7367
  ret i32 %26, !dbg !7367
}

; Function Attrs: noredzone
declare dso_local i32 @hw_read_intr_enable(%struct.ci_hdrc*) #2

; Function Attrs: noredzone
declare dso_local i32 @hw_read_intr_status(%struct.ci_hdrc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hw_read(%struct.ci_hdrc* %ci, i32 %reg, i32 %mask) #0 !dbg !7368 {
entry:
  %ci.addr = alloca %struct.ci_hdrc*, align 8
  %reg.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  store %struct.ci_hdrc* %ci, %struct.ci_hdrc** %ci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ci_hdrc** %ci.addr, metadata !7371, metadata !DIExpression()), !dbg !7372
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !7373, metadata !DIExpression()), !dbg !7374
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !7375, metadata !DIExpression()), !dbg !7376
  %0 = load %struct.ci_hdrc*, %struct.ci_hdrc** %ci.addr, align 8, !dbg !7377
  %hw_bank = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %0, i32 0, i32 2, !dbg !7378
  %regmap = getelementptr inbounds %struct.hw_bank, %struct.hw_bank* %hw_bank, i32 0, i32 6, !dbg !7379
  %1 = load i32, i32* %reg.addr, align 4, !dbg !7380
  %idxprom = zext i32 %1 to i64, !dbg !7377
  %arrayidx = getelementptr [38 x i8*], [38 x i8*]* %regmap, i64 0, i64 %idxprom, !dbg !7377
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !7377
  %call = call i32 @ioread32(i8* %2) #6, !dbg !7381
  %3 = load i32, i32* %mask.addr, align 4, !dbg !7382
  %and = and i32 %call, %3, !dbg !7383
  ret i32 %and, !dbg !7384
}

; Function Attrs: noredzone
declare dso_local i32 @hw_read_otgsc(%struct.ci_hdrc*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @ioread32(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5159}
!llvm.module.flags = !{!5160, !5161, !5162, !5163}
!llvm.ident = !{!5164}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ci_device_fops", scope: !2, file: !3, line: 48, type: !491, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !311, globals: !488, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/chipidea/debug.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !31, !43, !50, !55, !61, !66, !72, !79, !85, !94, !102, !108, !114, !121, !128, !134, !140, !163, !169, !176, !184, !189, !199, !210, !217, !222, !238, !254, !262, !269, !280, !285}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !6, line: 41, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !12, line: 15, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !19, line: 118, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "elv_merge", file: !25, line: 19, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/elevator.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "ELEVATOR_NO_MERGE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "ELEVATOR_FRONT_MERGE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "ELEVATOR_BACK_MERGE", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "ELEVATOR_DISCARD_MERGE", value: 3, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !32, line: 49, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3, isUnsigned: true)
!38 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4, isUnsigned: true)
!39 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5, isUnsigned: true)
!40 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6, isUnsigned: true)
!41 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7, isUnsigned: true)
!42 = !DIEnumerator(name: "WB_REASON_MAX", value: 8, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 502, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !19, line: 315, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !56, line: 546, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !62, line: 65, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !67, line: 16, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !73, line: 59, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!78 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !80, line: 54, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !86, line: 296, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92, !93}
!88 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!93 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !95, line: 9, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!101 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !103, line: 26, baseType: !7, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!106 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !109, line: 44, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !115, line: 343, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118, !119, !120}
!117 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!120 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 524, baseType: !7, size: 32, elements: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!127 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !129, line: 11, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ci_role", file: !135, line: 107, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "drivers/usb/chipidea/ci.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "CI_ROLE_HOST", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "CI_ROLE_GADGET", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "CI_ROLE_END", value: 2, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "phy_mode", file: !141, line: 24, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/phy/phy.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!143 = !DIEnumerator(name: "PHY_MODE_INVALID", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "PHY_MODE_USB_HOST", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "PHY_MODE_USB_HOST_LS", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "PHY_MODE_USB_HOST_FS", value: 3, isUnsigned: true)
!147 = !DIEnumerator(name: "PHY_MODE_USB_HOST_HS", value: 4, isUnsigned: true)
!148 = !DIEnumerator(name: "PHY_MODE_USB_HOST_SS", value: 5, isUnsigned: true)
!149 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE", value: 6, isUnsigned: true)
!150 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_LS", value: 7, isUnsigned: true)
!151 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_FS", value: 8, isUnsigned: true)
!152 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_HS", value: 9, isUnsigned: true)
!153 = !DIEnumerator(name: "PHY_MODE_USB_DEVICE_SS", value: 10, isUnsigned: true)
!154 = !DIEnumerator(name: "PHY_MODE_USB_OTG", value: 11, isUnsigned: true)
!155 = !DIEnumerator(name: "PHY_MODE_UFS_HS_A", value: 12, isUnsigned: true)
!156 = !DIEnumerator(name: "PHY_MODE_UFS_HS_B", value: 13, isUnsigned: true)
!157 = !DIEnumerator(name: "PHY_MODE_PCIE", value: 14, isUnsigned: true)
!158 = !DIEnumerator(name: "PHY_MODE_ETHERNET", value: 15, isUnsigned: true)
!159 = !DIEnumerator(name: "PHY_MODE_MIPI_DPHY", value: 16, isUnsigned: true)
!160 = !DIEnumerator(name: "PHY_MODE_SATA", value: 17, isUnsigned: true)
!161 = !DIEnumerator(name: "PHY_MODE_LVDS", value: 18, isUnsigned: true)
!162 = !DIEnumerator(name: "PHY_MODE_DP", value: 19, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_type", file: !164, line: 36, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/usb/phy.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168}
!166 = !DIEnumerator(name: "USB_PHY_TYPE_UNDEFINED", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "USB_PHY_TYPE_USB2", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "USB_PHY_TYPE_USB3", value: 2, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_events", file: !164, line: 27, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIEnumerator(name: "USB_EVENT_NONE", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "USB_EVENT_VBUS", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "USB_EVENT_ID", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "USB_EVENT_CHARGER", value: 3, isUnsigned: true)
!175 = !DIEnumerator(name: "USB_EVENT_ENUMERATED", value: 4, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_type", file: !177, line: 16, baseType: !7, size: 32, elements: !178)
!177 = !DIFile(filename: "./include/uapi/linux/usb/charger.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIEnumerator(name: "UNKNOWN_TYPE", value: 0, isUnsigned: true)
!180 = !DIEnumerator(name: "SDP_TYPE", value: 1, isUnsigned: true)
!181 = !DIEnumerator(name: "DCP_TYPE", value: 2, isUnsigned: true)
!182 = !DIEnumerator(name: "CDP_TYPE", value: 3, isUnsigned: true)
!183 = !DIEnumerator(name: "ACA_TYPE", value: 4, isUnsigned: true)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_state", file: !177, line: 25, baseType: !7, size: 32, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIEnumerator(name: "USB_CHARGER_DEFAULT", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "USB_CHARGER_PRESENT", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "USB_CHARGER_ABSENT", value: 2, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !190, line: 1146, baseType: !7, size: 32, elements: !191)
!190 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !193, !194, !195, !196, !197, !198}
!192 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !190, line: 1156, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209}
!201 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!202 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!203 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!204 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!205 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!206 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!207 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!208 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!209 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !211, line: 96, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!212 = !{!213, !214, !215, !216}
!213 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!214 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!215 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!216 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !211, line: 476, baseType: !7, size: 32, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_otg_state", file: !164, line: 43, baseType: !7, size: 32, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!224 = !DIEnumerator(name: "OTG_STATE_UNDEFINED", value: 0, isUnsigned: true)
!225 = !DIEnumerator(name: "OTG_STATE_B_IDLE", value: 1, isUnsigned: true)
!226 = !DIEnumerator(name: "OTG_STATE_B_SRP_INIT", value: 2, isUnsigned: true)
!227 = !DIEnumerator(name: "OTG_STATE_B_PERIPHERAL", value: 3, isUnsigned: true)
!228 = !DIEnumerator(name: "OTG_STATE_B_WAIT_ACON", value: 4, isUnsigned: true)
!229 = !DIEnumerator(name: "OTG_STATE_B_HOST", value: 5, isUnsigned: true)
!230 = !DIEnumerator(name: "OTG_STATE_A_IDLE", value: 6, isUnsigned: true)
!231 = !DIEnumerator(name: "OTG_STATE_A_WAIT_VRISE", value: 7, isUnsigned: true)
!232 = !DIEnumerator(name: "OTG_STATE_A_WAIT_BCON", value: 8, isUnsigned: true)
!233 = !DIEnumerator(name: "OTG_STATE_A_HOST", value: 9, isUnsigned: true)
!234 = !DIEnumerator(name: "OTG_STATE_A_SUSPEND", value: 10, isUnsigned: true)
!235 = !DIEnumerator(name: "OTG_STATE_A_PERIPHERAL", value: 11, isUnsigned: true)
!236 = !DIEnumerator(name: "OTG_STATE_A_WAIT_VFALL", value: 12, isUnsigned: true)
!237 = !DIEnumerator(name: "OTG_STATE_A_VBUS_ERR", value: 13, isUnsigned: true)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "otg_fsm_timer", file: !239, line: 41, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "./include/linux/usb/otg-fsm.h", directory: "/home/lizy2001/genbc/linux")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!241 = !DIEnumerator(name: "A_WAIT_VRISE", value: 0, isUnsigned: true)
!242 = !DIEnumerator(name: "A_WAIT_VFALL", value: 1, isUnsigned: true)
!243 = !DIEnumerator(name: "A_WAIT_BCON", value: 2, isUnsigned: true)
!244 = !DIEnumerator(name: "A_AIDL_BDIS", value: 3, isUnsigned: true)
!245 = !DIEnumerator(name: "B_ASE0_BRST", value: 4, isUnsigned: true)
!246 = !DIEnumerator(name: "A_BIDL_ADIS", value: 5, isUnsigned: true)
!247 = !DIEnumerator(name: "B_AIDL_BDIS", value: 6, isUnsigned: true)
!248 = !DIEnumerator(name: "B_SE0_SRP", value: 7, isUnsigned: true)
!249 = !DIEnumerator(name: "B_SRP_FAIL", value: 8, isUnsigned: true)
!250 = !DIEnumerator(name: "A_WAIT_ENUM", value: 9, isUnsigned: true)
!251 = !DIEnumerator(name: "B_DATA_PLS", value: 10, isUnsigned: true)
!252 = !DIEnumerator(name: "B_SSEND_SRP", value: 11, isUnsigned: true)
!253 = !DIEnumerator(name: "NUM_OTG_FSM_TIMERS", value: 12, isUnsigned: true)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_interface", file: !164, line: 18, baseType: !7, size: 32, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261}
!256 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_UNKNOWN", value: 0, isUnsigned: true)
!257 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_UTMI", value: 1, isUnsigned: true)
!258 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_UTMIW", value: 2, isUnsigned: true)
!259 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_ULPI", value: 3, isUnsigned: true)
!260 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_SERIAL", value: 4, isUnsigned: true)
!261 = !DIEnumerator(name: "USBPHY_INTERFACE_MODE_HSIC", value: 5, isUnsigned: true)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dr_mode", file: !263, line: 116, baseType: !7, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/usb/otg.h", directory: "/home/lizy2001/genbc/linux")
!264 = !{!265, !266, !267, !268}
!265 = !DIEnumerator(name: "USB_DR_MODE_UNKNOWN", value: 0, isUnsigned: true)
!266 = !DIEnumerator(name: "USB_DR_MODE_HOST", value: 1, isUnsigned: true)
!267 = !DIEnumerator(name: "USB_DR_MODE_PERIPHERAL", value: 2, isUnsigned: true)
!268 = !DIEnumerator(name: "USB_DR_MODE_OTG", value: 3, isUnsigned: true)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ci_revision", file: !135, line: 113, baseType: !7, size: 32, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279}
!271 = !DIEnumerator(name: "CI_REVISION_1X", value: 10, isUnsigned: true)
!272 = !DIEnumerator(name: "CI_REVISION_20", value: 20, isUnsigned: true)
!273 = !DIEnumerator(name: "CI_REVISION_21", value: 21, isUnsigned: true)
!274 = !DIEnumerator(name: "CI_REVISION_22", value: 22, isUnsigned: true)
!275 = !DIEnumerator(name: "CI_REVISION_23", value: 23, isUnsigned: true)
!276 = !DIEnumerator(name: "CI_REVISION_24", value: 24, isUnsigned: true)
!277 = !DIEnumerator(name: "CI_REVISION_25", value: 25, isUnsigned: true)
!278 = !DIEnumerator(name: "CI_REVISION_25_PLUS", value: 26, isUnsigned: true)
!279 = !DIEnumerator(name: "CI_REVISION_UNKNOWN", value: 99, isUnsigned: true)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !281, line: 10, baseType: !7, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !284}
!283 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!284 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ci_hw_regs", file: !135, line: 43, baseType: !7, size: 32, elements: !286)
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!287 = !DIEnumerator(name: "CAP_CAPLENGTH", value: 0, isUnsigned: true)
!288 = !DIEnumerator(name: "CAP_HCCPARAMS", value: 1, isUnsigned: true)
!289 = !DIEnumerator(name: "CAP_DCCPARAMS", value: 2, isUnsigned: true)
!290 = !DIEnumerator(name: "CAP_TESTMODE", value: 3, isUnsigned: true)
!291 = !DIEnumerator(name: "CAP_LAST", value: 3, isUnsigned: true)
!292 = !DIEnumerator(name: "OP_USBCMD", value: 4, isUnsigned: true)
!293 = !DIEnumerator(name: "OP_USBSTS", value: 5, isUnsigned: true)
!294 = !DIEnumerator(name: "OP_USBINTR", value: 6, isUnsigned: true)
!295 = !DIEnumerator(name: "OP_DEVICEADDR", value: 7, isUnsigned: true)
!296 = !DIEnumerator(name: "OP_ENDPTLISTADDR", value: 8, isUnsigned: true)
!297 = !DIEnumerator(name: "OP_TTCTRL", value: 9, isUnsigned: true)
!298 = !DIEnumerator(name: "OP_BURSTSIZE", value: 10, isUnsigned: true)
!299 = !DIEnumerator(name: "OP_ULPI_VIEWPORT", value: 11, isUnsigned: true)
!300 = !DIEnumerator(name: "OP_PORTSC", value: 12, isUnsigned: true)
!301 = !DIEnumerator(name: "OP_DEVLC", value: 13, isUnsigned: true)
!302 = !DIEnumerator(name: "OP_OTGSC", value: 14, isUnsigned: true)
!303 = !DIEnumerator(name: "OP_USBMODE", value: 15, isUnsigned: true)
!304 = !DIEnumerator(name: "OP_ENDPTSETUPSTAT", value: 16, isUnsigned: true)
!305 = !DIEnumerator(name: "OP_ENDPTPRIME", value: 17, isUnsigned: true)
!306 = !DIEnumerator(name: "OP_ENDPTFLUSH", value: 18, isUnsigned: true)
!307 = !DIEnumerator(name: "OP_ENDPTSTAT", value: 19, isUnsigned: true)
!308 = !DIEnumerator(name: "OP_ENDPTCOMPLETE", value: 20, isUnsigned: true)
!309 = !DIEnumerator(name: "OP_ENDPTCTRL", value: 21, isUnsigned: true)
!310 = !DIEnumerator(name: "OP_LAST", value: 37, isUnsigned: true)
!311 = !{!312, !313, !319, !318, !320, !324, !325, !471}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !314, line: 55, baseType: !315)
!314 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !316, line: 72, baseType: !317)
!316 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !316, line: 16, baseType: !318)
!318 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!319 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !321, line: 21, baseType: !322)
!321 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !323, line: 27, baseType: !7)
!323 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_hw_req", file: !327, line: 73, size: 1024, elements: !328)
!327 = !DIFile(filename: "drivers/usb/chipidea/udc.h", directory: "/home/lizy2001/genbc/linux")
!328 = !{!329, !469, !470}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "req", scope: !326, file: !327, line: 74, baseType: !330, size: 768)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_request", file: !331, line: 100, size: 768, elements: !332)
!331 = !DIFile(filename: "./include/linux/usb/gadget.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333, !334, !335, !340, !350, !351, !352, !353, !354, !355, !356, !357, !358, !464, !465, !466, !467, !468}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !330, file: !331, line: 101, baseType: !312, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !330, file: !331, line: 102, baseType: !7, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !330, file: !331, line: 103, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !314, line: 143, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !321, line: 23, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !323, line: 31, baseType: !339)
!339 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !330, file: !331, line: 105, baseType: !341, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !343, line: 11, size: 256, elements: !344)
!343 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!344 = !{!345, !346, !347, !348, !349}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !342, file: !343, line: 12, baseType: !318, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !342, file: !343, line: 13, baseType: !7, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !342, file: !343, line: 14, baseType: !7, size: 32, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !342, file: !343, line: 15, baseType: !336, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !342, file: !343, line: 17, baseType: !7, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !330, file: !331, line: 106, baseType: !7, size: 32, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !330, file: !331, line: 107, baseType: !7, size: 32, offset: 288)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !330, file: !331, line: 109, baseType: !7, size: 16, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "is_last", scope: !330, file: !331, line: 110, baseType: !7, size: 1, offset: 336, flags: DIFlagBitField, extraData: i64 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "no_interrupt", scope: !330, file: !331, line: 111, baseType: !7, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !330, file: !331, line: 112, baseType: !7, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "short_not_ok", scope: !330, file: !331, line: 113, baseType: !7, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mapped", scope: !330, file: !331, line: 114, baseType: !7, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !330, file: !331, line: 116, baseType: !359, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362, !409}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep", file: !331, line: 226, size: 576, elements: !364)
!364 = !{!365, !366, !370, !427, !433, !442, !445, !446, !447, !448, !449, !450, !451, !453, !454}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !363, file: !331, line: 227, baseType: !312, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !331, line: 229, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !363, file: !331, line: 230, baseType: !371, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_ops", file: !331, line: 136, size: 704, elements: !374)
!374 = !{!375, !397, !401, !405, !411, !412, !416, !420, !424, !425, !426}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !373, file: !331, line: 137, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!319, !362, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !190, line: 407, size: 72, elements: !382)
!382 = !{!383, !386, !387, !388, !389, !394, !395, !396}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !381, file: !190, line: 408, baseType: !384, size: 8)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !323, line: 21, baseType: !385)
!385 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !381, file: !190, line: 409, baseType: !384, size: 8, offset: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !381, file: !190, line: 411, baseType: !384, size: 8, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !381, file: !190, line: 412, baseType: !384, size: 8, offset: 24)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !381, file: !190, line: 413, baseType: !390, size: 16, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !391, line: 29, baseType: !392)
!391 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !323, line: 24, baseType: !393)
!393 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !381, file: !190, line: 414, baseType: !384, size: 8, offset: 48)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !381, file: !190, line: 418, baseType: !384, size: 8, offset: 56)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !381, file: !190, line: 419, baseType: !384, size: 8, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !373, file: !331, line: 139, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!319, !362}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !373, file: !331, line: 140, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !362}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_request", scope: !373, file: !331, line: 142, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !362, !410}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !314, line: 148, baseType: !7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "free_request", scope: !373, file: !331, line: 144, baseType: !359, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !373, file: !331, line: 146, baseType: !413, size: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!319, !362, !409, !410}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue", scope: !373, file: !331, line: 148, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!319, !362, !409}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "set_halt", scope: !373, file: !331, line: 150, baseType: !421, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!319, !362, !319}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "set_wedge", scope: !373, file: !331, line: 151, baseType: !398, size: 64, offset: 512)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_status", scope: !373, file: !331, line: 153, baseType: !398, size: 64, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_flush", scope: !373, file: !331, line: 154, baseType: !402, size: 64, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !363, file: !331, line: 231, baseType: !428, size: 128, offset: 192)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !314, line: 178, size: 128, elements: !429)
!429 = !{!430, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !314, line: 179, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !428, file: !314, line: 179, baseType: !431, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !363, file: !331, line: 232, baseType: !434, size: 32, offset: 320)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ep_caps", file: !331, line: 166, size: 32, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "type_control", scope: !434, file: !331, line: 167, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type_iso", scope: !434, file: !331, line: 168, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type_bulk", scope: !434, file: !331, line: 169, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "type_int", scope: !434, file: !331, line: 170, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dir_in", scope: !434, file: !331, line: 171, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dir_out", scope: !434, file: !331, line: 172, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !363, file: !331, line: 233, baseType: !443, size: 8, offset: 352)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !314, line: 30, baseType: !444)
!444 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !363, file: !331, line: 234, baseType: !443, size: 8, offset: 360)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket", scope: !363, file: !331, line: 235, baseType: !7, size: 16, offset: 368, flags: DIFlagBitField, extraData: i64 368)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "maxpacket_limit", scope: !363, file: !331, line: 236, baseType: !7, size: 16, offset: 384, flags: DIFlagBitField, extraData: i64 368)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "max_streams", scope: !363, file: !331, line: 237, baseType: !7, size: 16, offset: 400, flags: DIFlagBitField, extraData: i64 368)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !363, file: !331, line: 238, baseType: !7, size: 2, offset: 416, flags: DIFlagBitField, extraData: i64 368)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "maxburst", scope: !363, file: !331, line: 239, baseType: !7, size: 5, offset: 418, flags: DIFlagBitField, extraData: i64 368)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !363, file: !331, line: 240, baseType: !452, size: 8, offset: 424)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !321, line: 17, baseType: !384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !363, file: !331, line: 241, baseType: !379, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "comp_desc", scope: !363, file: !331, line: 242, baseType: !455, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !190, line: 689, size: 48, elements: !458)
!458 = !{!459, !460, !461, !462, !463}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !457, file: !190, line: 690, baseType: !384, size: 8)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !457, file: !190, line: 691, baseType: !384, size: 8, offset: 8)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !457, file: !190, line: 693, baseType: !384, size: 8, offset: 16)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !457, file: !190, line: 694, baseType: !384, size: 8, offset: 24)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !457, file: !190, line: 695, baseType: !390, size: 16, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !330, file: !331, line: 118, baseType: !312, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !330, file: !331, line: 119, baseType: !428, size: 128, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "frame_number", scope: !330, file: !331, line: 121, baseType: !7, size: 32, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !330, file: !331, line: 123, baseType: !319, size: 32, offset: 672)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "actual", scope: !330, file: !331, line: 124, baseType: !7, size: 32, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !326, file: !327, line: 75, baseType: !428, size: 128, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tds", scope: !326, file: !327, line: 76, baseType: !428, size: 128, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "td_node", file: !327, line: 60, size: 320, elements: !473)
!473 = !{!474, !475, !476, !487}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "td", scope: !472, file: !327, line: 61, baseType: !428, size: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !472, file: !327, line: 62, baseType: !336, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !472, file: !327, line: 63, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_hw_td", file: !327, line: 20, size: 224, align: 32, elements: !479)
!479 = !{!480, !482, !483}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !327, line: 22, baseType: !481, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !391, line: 31, baseType: !322)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !478, file: !327, line: 26, baseType: !481, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !478, file: !327, line: 36, baseType: !484, size: 160, offset: 64)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 160, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 5)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "td_remaining_size", scope: !472, file: !327, line: 64, baseType: !319, size: 32, offset: 256)
!488 = !{!0, !489, !5149, !5151, !5153, !5155, !5157}
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "ci_port_test_fops", scope: !2, file: !3, line: 110, type: !491, isLocal: true, isDefinition: true)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !86, line: 1822, size: 2048, elements: !493)
!493 = !{!494, !498, !4948, !4952, !4956, !4957, !4958, !4962, !4975, !4976, !4980, !4984, !4985, !4989, !4990, !4994, !4999, !5000, !5004, !5008, !5109, !5113, !5114, !5118, !5119, !5123, !5127, !5132, !5136, !5140, !5144, !5148}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !492, file: !86, line: 1823, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !497, line: 76, flags: DIFlagFwdDecl)
!497 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!498 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !492, file: !86, line: 1824, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!502, !505, !502, !319}
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !314, line: 46, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !316, line: 88, baseType: !504)
!504 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !86, line: 916, size: 1856, align: 32, elements: !507)
!507 = !{!508, !526, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4931, !4932, !4941, !4942, !4943, !4944, !4945, !4946, !4947}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !506, file: !86, line: 920, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !506, file: !86, line: 917, size: 128, elements: !510)
!510 = !{!511, !517}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !509, file: !86, line: 918, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !513, line: 58, size: 64, elements: !514)
!513 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !513, line: 59, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !509, file: !86, line: 919, baseType: !518, size: 128, align: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !314, line: 216, size: 128, align: 64, elements: !519)
!519 = !{!520, !522}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !314, line: 217, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !518, file: !314, line: 218, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !521}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !506, file: !86, line: 921, baseType: !527, size: 128, offset: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !528, line: 8, size: 128, elements: !529)
!528 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!529 = !{!530, !534}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !527, file: !528, line: 9, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !533, line: 18, flags: DIFlagFwdDecl)
!533 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !527, file: !528, line: 10, baseType: !535, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !533, line: 89, size: 1536, elements: !537)
!537 = !{!538, !539, !549, !557, !558, !573, !4874, !4876, !4888, !4889, !4890, !4891, !4892, !4898, !4899, !4900}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !536, file: !533, line: 91, baseType: !7, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !536, file: !533, line: 92, baseType: !540, size: 32, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !541, line: 277, baseType: !542)
!541 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !541, line: 277, size: 32, elements: !543)
!543 = !{!544}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !542, file: !541, line: 277, baseType: !545, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !541, line: 70, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !541, line: 65, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !546, file: !541, line: 66, baseType: !7, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !536, file: !533, line: 93, baseType: !550, size: 128, offset: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !551, line: 38, size: 128, elements: !552)
!551 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!552 = !{!553, !555}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !550, file: !551, line: 39, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !550, file: !551, line: 39, baseType: !556, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !536, file: !533, line: 94, baseType: !535, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !536, file: !533, line: 95, baseType: !559, size: 128, offset: 256)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !533, line: 47, size: 128, elements: !560)
!560 = !{!561, !570}
!561 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !533, line: 48, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !533, line: 48, size: 64, elements: !563)
!563 = !{!564, !569}
!564 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !533, line: 49, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !562, file: !533, line: 49, size: 64, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !565, file: !533, line: 50, baseType: !320, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !565, file: !533, line: 50, baseType: !320, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !562, file: !533, line: 52, baseType: !337, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !533, line: 54, baseType: !571, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !536, file: !533, line: 96, baseType: !574, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !86, line: 610, size: 4224, elements: !576)
!576 = !{!577, !579, !580, !588, !595, !596, !744, !4807, !4808, !4809, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4850, !4858, !4859, !4860, !4870, !4871, !4872, !4873}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !575, file: !86, line: 611, baseType: !578, size: 16)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !314, line: 19, baseType: !393)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !575, file: !86, line: 612, baseType: !393, size: 16, offset: 16)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !575, file: !86, line: 613, baseType: !581, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !582, line: 23, baseType: !583)
!582 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 21, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !583, file: !582, line: 22, baseType: !586, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !314, line: 32, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !316, line: 49, baseType: !7)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !575, file: !86, line: 614, baseType: !589, size: 32, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !582, line: 28, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !582, line: 26, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !590, file: !582, line: 27, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !314, line: 33, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !316, line: 50, baseType: !7)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !575, file: !86, line: 615, baseType: !7, size: 32, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !575, file: !86, line: 622, baseType: !597, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !86, line: 1864, size: 1536, align: 512, elements: !600)
!600 = !{!601, !605, !618, !622, !628, !633, !637, !641, !645, !649, !653, !654, !660, !664, !688, !717, !724, !730, !735, !739, !740}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !599, file: !86, line: 1865, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!535, !574, !535, !7}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !599, file: !86, line: 1866, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!367, !535, !574, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !611, line: 10, size: 128, elements: !612)
!611 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!612 = !{!613, !617}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !610, file: !611, line: 11, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !312}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !610, file: !611, line: 12, baseType: !312, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !599, file: !86, line: 1867, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!319, !574, !319}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !599, file: !86, line: 1868, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!626, !574, !319}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !86, line: 581, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !599, file: !86, line: 1870, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!319, !535, !632, !319}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !599, file: !86, line: 1872, baseType: !634, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!319, !574, !535, !578, !443}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !599, file: !86, line: 1873, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!319, !535, !574, !535}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !599, file: !86, line: 1874, baseType: !642, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!319, !574, !535}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !599, file: !86, line: 1875, baseType: !646, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!319, !574, !535, !367}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !599, file: !86, line: 1876, baseType: !650, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!319, !574, !535, !578}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !599, file: !86, line: 1877, baseType: !642, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !599, file: !86, line: 1878, baseType: !655, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!319, !574, !535, !578, !658}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !314, line: 16, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !314, line: 13, baseType: !320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !599, file: !86, line: 1879, baseType: !661, size: 64, offset: 768)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!319, !574, !535, !574, !535, !7}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !599, file: !86, line: 1881, baseType: !665, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!319, !535, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !86, line: 219, size: 640, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !685, !686, !687}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !669, file: !86, line: 220, baseType: !7, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !669, file: !86, line: 221, baseType: !578, size: 16, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !669, file: !86, line: 222, baseType: !581, size: 32, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !669, file: !86, line: 223, baseType: !589, size: 32, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !669, file: !86, line: 224, baseType: !502, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !669, file: !86, line: 225, baseType: !677, size: 128, offset: 192)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !678, line: 13, size: 128, elements: !679)
!678 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !683}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !677, file: !678, line: 14, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !678, line: 8, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !323, line: 30, baseType: !504)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !677, file: !678, line: 15, baseType: !684, size: 64, offset: 64)
!684 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !669, file: !86, line: 226, baseType: !677, size: 128, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !669, file: !86, line: 227, baseType: !677, size: 128, offset: 448)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !669, file: !86, line: 234, baseType: !505, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !599, file: !86, line: 1882, baseType: !689, size: 64, offset: 896)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!319, !692, !694, !320, !7}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !696, line: 22, size: 1152, elements: !697)
!696 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!697 = !{!698, !699, !700, !701, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !695, file: !696, line: 23, baseType: !320, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !695, file: !696, line: 24, baseType: !578, size: 16, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !695, file: !696, line: 25, baseType: !7, size: 32, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !695, file: !696, line: 26, baseType: !702, size: 32, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !314, line: 104, baseType: !320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !695, file: !696, line: 27, baseType: !337, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !695, file: !696, line: 28, baseType: !337, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !695, file: !696, line: 37, baseType: !337, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !695, file: !696, line: 38, baseType: !658, size: 32, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !695, file: !696, line: 39, baseType: !658, size: 32, offset: 352)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !695, file: !696, line: 40, baseType: !581, size: 32, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !695, file: !696, line: 41, baseType: !589, size: 32, offset: 416)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !695, file: !696, line: 42, baseType: !502, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !695, file: !696, line: 43, baseType: !677, size: 128, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !695, file: !696, line: 44, baseType: !677, size: 128, offset: 640)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !695, file: !696, line: 45, baseType: !677, size: 128, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !695, file: !696, line: 46, baseType: !677, size: 128, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !695, file: !696, line: 47, baseType: !337, size: 64, offset: 1024)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !695, file: !696, line: 48, baseType: !337, size: 64, offset: 1088)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !599, file: !86, line: 1883, baseType: !718, size: 64, offset: 960)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!721, !535, !632, !313}
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !314, line: 60, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !316, line: 73, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !316, line: 15, baseType: !684)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !599, file: !86, line: 1884, baseType: !725, size: 64, offset: 1024)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!319, !574, !728, !337, !337}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !86, line: 50, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !599, file: !86, line: 1886, baseType: !731, size: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!319, !574, !734, !319}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !599, file: !86, line: 1887, baseType: !736, size: 64, offset: 1152)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!319, !574, !535, !505, !7, !578}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !599, file: !86, line: 1890, baseType: !650, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !599, file: !86, line: 1891, baseType: !741, size: 64, offset: 1280)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!319, !574, !626, !319}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !575, file: !86, line: 623, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !86, line: 1416, size: 9472, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !803, !4421, !4503, !4586, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4602, !4606, !4607, !4608, !4609, !4612, !4613, !4614, !4655, !4681, !4682, !4683, !4684, !4685, !4686, !4689, !4690, !4697, !4698, !4699, !4700, !4701, !4760, !4761, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !746, file: !86, line: 1417, baseType: !428, size: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !746, file: !86, line: 1418, baseType: !658, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !746, file: !86, line: 1419, baseType: !385, size: 8, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !746, file: !86, line: 1420, baseType: !318, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !746, file: !86, line: 1421, baseType: !502, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !746, file: !86, line: 1422, baseType: !754, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !86, line: 2228, size: 576, elements: !756)
!756 = !{!757, !758, !759, !766, !770, !774, !778, !779, !780, !790, !794, !795, !796, !800, !801, !802}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !755, file: !86, line: 2229, baseType: !367, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !755, file: !86, line: 2230, baseType: !319, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !755, file: !86, line: 2238, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!319, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !765, line: 28, flags: DIFlagFwdDecl)
!765 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !755, file: !86, line: 2239, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !86, line: 70, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !755, file: !86, line: 2240, baseType: !771, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!535, !754, !319, !367, !312}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !755, file: !86, line: 2242, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !745}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !755, file: !86, line: 2243, baseType: !495, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !86, line: 2244, baseType: !754, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !755, file: !86, line: 2245, baseType: !781, size: 64, offset: 512)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !314, line: 182, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !781, file: !314, line: 183, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !314, line: 186, size: 128, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !314, line: 187, baseType: !784, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !785, file: !314, line: 187, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !755, file: !86, line: 2247, baseType: !791, offset: 576)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !792, line: 187, elements: !793)
!792 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !755, file: !86, line: 2248, baseType: !791, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !755, file: !86, line: 2249, baseType: !791, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !755, file: !86, line: 2250, baseType: !797, offset: 576)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 3)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !755, file: !86, line: 2252, baseType: !791, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !755, file: !86, line: 2253, baseType: !791, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !755, file: !86, line: 2254, baseType: !791, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !746, file: !86, line: 1423, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !86, line: 1935, size: 1472, elements: !807)
!807 = !{!808, !812, !816, !817, !821, !841, !845, !846, !847, !851, !855, !856, !857, !858, !864, !869, !870, !940, !941, !942, !943, !4405, !4420}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !806, file: !86, line: 1936, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!574, !745}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !806, file: !86, line: 1937, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !574}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !806, file: !86, line: 1938, baseType: !813, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !806, file: !86, line: 1940, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !574, !319}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !806, file: !86, line: 1941, baseType: !822, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!319, !574, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !6, line: 51, size: 320, elements: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !826, file: !6, line: 52, baseType: !684, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !826, file: !6, line: 54, baseType: !684, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !826, file: !6, line: 61, baseType: !502, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !826, file: !6, line: 62, baseType: !502, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !826, file: !6, line: 64, baseType: !5, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !826, file: !6, line: 66, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !826, file: !6, line: 67, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !826, file: !6, line: 68, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !826, file: !6, line: 69, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !826, file: !6, line: 70, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !826, file: !6, line: 71, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !826, file: !6, line: 79, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "punt_to_cgroup", scope: !826, file: !6, line: 81, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !806, file: !86, line: 1942, baseType: !842, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!319, !574}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !806, file: !86, line: 1943, baseType: !813, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !806, file: !86, line: 1944, baseType: !775, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !806, file: !86, line: 1945, baseType: !848, size: 64, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!319, !745, !319}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !806, file: !86, line: 1946, baseType: !852, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!319, !745}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !806, file: !86, line: 1947, baseType: !852, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !806, file: !86, line: 1948, baseType: !852, size: 64, offset: 704)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !806, file: !86, line: 1949, baseType: !852, size: 64, offset: 768)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !806, file: !86, line: 1950, baseType: !859, size: 64, offset: 832)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!319, !535, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !86, line: 57, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !806, file: !86, line: 1951, baseType: !865, size: 64, offset: 896)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!319, !745, !868, !632}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !806, file: !86, line: 1952, baseType: !775, size: 64, offset: 960)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !806, file: !86, line: 1954, baseType: !871, size: 64, offset: 1024)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!319, !874, !535}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !876, line: 16, size: 896, elements: !877)
!876 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !913, !935, !936, !939}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !875, file: !876, line: 17, baseType: !632, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !875, file: !876, line: 18, baseType: !313, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !875, file: !876, line: 19, baseType: !313, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !875, file: !876, line: 20, baseType: !313, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !875, file: !876, line: 21, baseType: !313, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !875, file: !876, line: 22, baseType: !502, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !875, file: !876, line: 23, baseType: !502, size: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !875, file: !876, line: 24, baseType: !886, size: 192, offset: 448)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !887, line: 53, size: 192, elements: !888)
!887 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !897, !912}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !886, file: !887, line: 54, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !891, line: 13, baseType: !892)
!891 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !314, line: 175, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 173, size: 64, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !893, file: !314, line: 174, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !321, line: 22, baseType: !682)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !886, file: !887, line: 55, baseType: !898, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !899, line: 83, baseType: !900)
!899 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !899, line: 71, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !899, line: 72, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !899, line: 72, elements: !904)
!904 = !{!905}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !903, file: !899, line: 73, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !899, line: 20, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !906, file: !899, line: 21, baseType: !909)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !910, line: 25, baseType: !911)
!910 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !910, line: 25, elements: !793)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !886, file: !887, line: 59, baseType: !428, size: 128, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !875, file: !876, line: 25, baseType: !914, size: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !876, line: 31, size: 256, elements: !917)
!917 = !{!918, !923, !927, !931}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !916, file: !876, line: 32, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!312, !874, !922}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !916, file: !876, line: 33, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !874, !312}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !916, file: !876, line: 34, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!312, !874, !312, !922}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !916, file: !876, line: 35, baseType: !932, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!319, !874, !312}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !875, file: !876, line: 26, baseType: !319, size: 32, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !875, file: !876, line: 27, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !875, file: !876, line: 28, baseType: !312, size: 64, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !806, file: !86, line: 1955, baseType: !871, size: 64, offset: 1088)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !806, file: !86, line: 1956, baseType: !871, size: 64, offset: 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !806, file: !86, line: 1957, baseType: !871, size: 64, offset: 1216)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !806, file: !86, line: 1963, baseType: !944, size: 64, offset: 1280)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!319, !745, !947, !410}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !949, line: 68, size: 512, align: 128, elements: !950)
!949 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!950 = !{!951, !952, !4397, !4404}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !949, line: 69, baseType: !318, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !949, line: 77, baseType: !953, size: 320, offset: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !949, line: 77, size: 320, elements: !954)
!954 = !{!955, !4292, !4296, !4322, !4330, !4336, !4348, !4396}
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !949, line: 78, baseType: !956, size: 320)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !949, line: 78, size: 320, elements: !957)
!957 = !{!958, !959, !4290, !4291}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !956, file: !949, line: 84, baseType: !428, size: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !956, file: !949, line: 86, baseType: !960, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !86, line: 451, size: 1216, align: 64, elements: !962)
!962 = !{!963, !964, !971, !972, !977, !992, !1001, !1002, !1003, !1004, !4283, !4284, !4287, !4288, !4289}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !961, file: !86, line: 452, baseType: !574, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !961, file: !86, line: 453, baseType: !965, size: 128, offset: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !966, line: 292, size: 128, elements: !967)
!966 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!967 = !{!968, !969, !970}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !965, file: !966, line: 293, baseType: !898)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !965, file: !966, line: 295, baseType: !410, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !965, file: !966, line: 296, baseType: !312, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !961, file: !86, line: 454, baseType: !410, size: 32, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !961, file: !86, line: 455, baseType: !973, size: 32, offset: 224)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !314, line: 168, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 166, size: 32, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !974, file: !314, line: 167, baseType: !319, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !961, file: !86, line: 460, baseType: !978, size: 128, offset: 256)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !979, line: 125, size: 128, elements: !980)
!979 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!980 = !{!981, !991}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !978, file: !979, line: 126, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !979, line: 31, size: 64, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !982, file: !979, line: 32, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !979, line: 24, size: 192, align: 64, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !986, file: !979, line: 25, baseType: !318, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !986, file: !979, line: 26, baseType: !985, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !986, file: !979, line: 27, baseType: !985, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !978, file: !979, line: 127, baseType: !985, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !961, file: !86, line: 461, baseType: !993, size: 256, offset: 384)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !994, line: 35, size: 256, elements: !995)
!994 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!995 = !{!996, !997, !998, !1000}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !993, file: !994, line: 36, baseType: !890, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !993, file: !994, line: 42, baseType: !890, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !993, file: !994, line: 46, baseType: !999, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !899, line: 29, baseType: !906)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !993, file: !994, line: 47, baseType: !428, size: 128, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !961, file: !86, line: 462, baseType: !318, size: 64, offset: 640)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !961, file: !86, line: 463, baseType: !318, size: 64, offset: 704)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !961, file: !86, line: 464, baseType: !318, size: 64, offset: 768)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !961, file: !86, line: 465, baseType: !1005, size: 64, offset: 832)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !86, line: 367, size: 1408, elements: !1008)
!1008 = !{!1009, !1013, !1017, !1021, !1025, !1029, !1042, !1048, !1052, !1057, !1061, !1065, !1069, !1113, !1117, !1123, !1124, !1125, !1129, !1134, !1138, !4279}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1007, file: !86, line: 368, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!319, !947, !825}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1007, file: !86, line: 369, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!319, !505, !947}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1007, file: !86, line: 372, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!319, !960, !825}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1007, file: !86, line: 375, baseType: !1022, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!319, !947}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1007, file: !86, line: 381, baseType: !1026, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!319, !505, !960, !431, !7}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1007, file: !86, line: 383, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1035, line: 795, size: 256, elements: !1036)
!1035 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!1036 = !{!1037, !1038, !1039, !1040, !1041}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1034, file: !1035, line: 796, baseType: !505, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1034, file: !1035, line: 797, baseType: !960, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1034, file: !1035, line: 799, baseType: !318, size: 64, offset: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1034, file: !1035, line: 800, baseType: !7, size: 32, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1034, file: !1035, line: 801, baseType: !7, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1007, file: !86, line: 385, baseType: !1043, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!319, !505, !960, !502, !7, !7, !1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1007, file: !86, line: 388, baseType: !1049, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!319, !505, !960, !502, !7, !7, !947, !312}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1007, file: !86, line: 393, baseType: !1053, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056, !960, !1056}
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !314, line: 125, baseType: !337)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1007, file: !86, line: 394, baseType: !1058, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !947, !7, !7}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1007, file: !86, line: 395, baseType: !1062, size: 64, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!319, !947, !410}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1007, file: !86, line: 396, baseType: !1066, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !947}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1007, file: !86, line: 397, baseType: !1070, size: 64, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!721, !1073, !1111}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !86, line: 320, size: 384, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1082, !1083, !1084, !1086, !1087}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1074, file: !86, line: 321, baseType: !505, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1074, file: !86, line: 326, baseType: !502, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1074, file: !86, line: 327, baseType: !1079, size: 64, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !1073, !684, !684}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1074, file: !86, line: 328, baseType: !312, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1074, file: !86, line: 329, baseType: !319, size: 32, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1074, file: !86, line: 330, baseType: !1085, size: 16, offset: 288)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !321, line: 19, baseType: !392)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1074, file: !86, line: 331, baseType: !1085, size: 16, offset: 304)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !86, line: 332, baseType: !1088, size: 64, offset: 320)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !86, line: 332, size: 64, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1088, file: !86, line: 333, baseType: !7, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1088, file: !86, line: 334, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1035, line: 569, size: 448, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1093, file: !1035, line: 570, baseType: !947, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1093, file: !1035, line: 571, baseType: !319, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1093, file: !1035, line: 572, baseType: !1098, size: 320, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1099, line: 14, baseType: !1100)
!1099 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1099, line: 29, size: 320, elements: !1101)
!1101 = !{!1102, !1103, !1104, !1110}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !1099, line: 30, baseType: !7, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1100, file: !1099, line: 31, baseType: !312, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1100, file: !1099, line: 32, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1099, line: 16, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!319, !1109, !7, !319, !312}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1100, file: !1099, line: 33, baseType: !428, size: 128, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !86, line: 64, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1007, file: !86, line: 402, baseType: !1114, size: 64, offset: 832)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!319, !960, !947, !947, !11}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1007, file: !86, line: 404, baseType: !1118, size: 64, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!443, !947, !1121}
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1122, line: 305, baseType: !7)
!1122 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1007, file: !86, line: 405, baseType: !1066, size: 64, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1007, file: !86, line: 406, baseType: !1022, size: 64, offset: 1024)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1007, file: !86, line: 407, baseType: !1126, size: 64, offset: 1088)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!319, !947, !318, !318}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1007, file: !86, line: 409, baseType: !1130, size: 64, offset: 1152)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !947, !1133, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1007, file: !86, line: 410, baseType: !1135, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!319, !960, !947}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1007, file: !86, line: 413, baseType: !1139, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!319, !1142, !505, !4278}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !1144, line: 240, size: 1600, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/lizy2001/genbc/linux")
!1145 = !{!1146, !1147, !1149, !1156, !1158, !1159, !1161, !1168, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1181, !1187, !1188, !4270, !4271, !4272, !4273, !4274, !4275, !4276}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1144, line: 241, baseType: !318, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1143, file: !1144, line: 242, baseType: !1148, size: 16, offset: 64)
!1148 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1143, file: !1144, line: 243, baseType: !1150, size: 320, offset: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1151, line: 83, size: 320, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/lizy2001/genbc/linux")
!1152 = !{!1153, !1154, !1155}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1150, file: !1151, line: 84, baseType: !319, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1150, file: !1151, line: 85, baseType: !428, size: 128, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1150, file: !1151, line: 86, baseType: !428, size: 128, offset: 192)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1143, file: !1144, line: 244, baseType: !1157, size: 8, offset: 448)
!1157 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1143, file: !1144, line: 245, baseType: !7, size: 32, offset: 480)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !1143, file: !1144, line: 246, baseType: !1160, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !1143, file: !1144, line: 247, baseType: !1162, size: 64, offset: 576)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !1144, line: 208, size: 32, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1163, file: !1144, line: 209, baseType: !898)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1163, file: !1144, line: 215, baseType: !7, size: 24, flags: DIFlagBitField, extraData: i64 0)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1163, file: !1144, line: 216, baseType: !7, size: 8, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !1143, file: !1144, line: 248, baseType: !1169, size: 64, offset: 640)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !1144, line: 232, size: 64, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1169, file: !1144, line: 233, baseType: !1163, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1169, file: !1144, line: 234, baseType: !1163, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !1143, file: !1144, line: 249, baseType: !7, size: 32, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !1143, file: !1144, line: 250, baseType: !7, size: 32, offset: 736)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1143, file: !1144, line: 251, baseType: !7, size: 32, offset: 768)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !1143, file: !1144, line: 252, baseType: !7, size: 32, offset: 800)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !1143, file: !1144, line: 253, baseType: !7, size: 32, offset: 832)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !1143, file: !1144, line: 254, baseType: !7, size: 32, offset: 864)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !1143, file: !1144, line: 255, baseType: !1180, size: 64, offset: 896)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !1143, file: !1144, line: 256, baseType: !1182, size: 64, offset: 960)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !1144, line: 227, size: 64, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1183, file: !1144, line: 228, baseType: !1163, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !1144, line: 229, baseType: !7, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !1143, file: !1144, line: 257, baseType: !982, size: 64, offset: 1024)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !1143, file: !1144, line: 258, baseType: !1189, size: 64, offset: 1088)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !1191, line: 22, size: 1344, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !4264, !4265, !4266, !4267, !4268, !4269}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !1190, file: !1191, line: 23, baseType: !658, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !1190, file: !1191, line: 24, baseType: !319, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !1190, file: !1191, line: 25, baseType: !574, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "bd_super", scope: !1190, file: !1191, line: 26, baseType: !745, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "bd_mutex", scope: !1190, file: !1191, line: 27, baseType: !886, size: 192, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !1190, file: !1191, line: 28, baseType: !312, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !1190, file: !1191, line: 29, baseType: !312, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !1190, file: !1191, line: 30, baseType: !319, size: 32, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !1190, file: !1191, line: 31, baseType: !443, size: 8, offset: 544)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_disks", scope: !1190, file: !1191, line: 33, baseType: !428, size: 128, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "bd_contains", scope: !1190, file: !1191, line: 35, baseType: !1189, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !1190, file: !1191, line: 36, baseType: !452, size: 8, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part", scope: !1190, file: !1191, line: 37, baseType: !1206, size: 64, offset: 832)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hd_struct", file: !1208, line: 53, size: 6592, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/genhd.h", directory: "/home/lizy2001/genbc/linux")
!1209 = !{!1210, !1211, !1212, !1213, !1216, !1237, !4245, !4246, !4247, !4248, !4258}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "start_sect", scope: !1207, file: !1208, line: 54, baseType: !1056, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sects", scope: !1207, file: !1208, line: 60, baseType: !1056, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !1207, file: !1208, line: 64, baseType: !318, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dkstats", scope: !1207, file: !1208, line: 65, baseType: !1214, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !1208, line: 65, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1207, file: !1208, line: 66, baseType: !1217, size: 128, offset: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1218, line: 105, size: 128, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1217, file: !1218, line: 110, baseType: !318, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1217, file: !1218, line: 118, baseType: !1222, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1218, line: 95, size: 448, elements: !1224)
!1224 = !{!1225, !1226, !1232, !1233, !1234, !1235, !1236}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1223, file: !1218, line: 96, baseType: !890, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1223, file: !1218, line: 97, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1218, line: 60, baseType: !1229)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1223, file: !1218, line: 98, baseType: !1227, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1223, file: !1218, line: 99, baseType: !443, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1223, file: !1218, line: 100, baseType: !443, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1223, file: !1218, line: 101, baseType: !518, size: 128, align: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1223, file: !1218, line: 102, baseType: !1231, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "__dev", scope: !1207, file: !1208, line: 68, baseType: !1238, size: 5568, offset: 384)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !115, line: 461, size: 5568, elements: !1239)
!1239 = !{!1240, !3789, !3790, !3793, !3794, !3844, !3935, !3936, !3937, !3938, !3939, !3948, !4042, !4055, !4058, !4059, !4063, !4065, !4066, !4067, !4071, !4077, !4078, !4081, !4196, !4197, !4198, !4199, !4200, !4201, !4233, !4234, !4235, !4238, !4241, !4242, !4243, !4244}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1238, file: !115, line: 462, baseType: !1241, size: 512)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1242, line: 64, size: 512, elements: !1243)
!1242 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1243 = !{!1244, !1245, !1246, !1248, !1290, !3653, !3783, !3784, !3785, !3786, !3787, !3788}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1241, file: !1242, line: 65, baseType: !367, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1241, file: !1242, line: 66, baseType: !428, size: 128, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1241, file: !1242, line: 67, baseType: !1247, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1241, file: !1242, line: 68, baseType: !1249, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1242, line: 192, size: 704, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1250, file: !1242, line: 193, baseType: !428, size: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1250, file: !1242, line: 194, baseType: !898, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1250, file: !1242, line: 195, baseType: !1241, size: 512, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1250, file: !1242, line: 196, baseType: !1256, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1242, line: 156, size: 192, elements: !1259)
!1259 = !{!1260, !1265, !1270}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1258, file: !1242, line: 157, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!319, !1249, !1247}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1258, file: !1242, line: 158, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!367, !1249, !1247}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1258, file: !1242, line: 159, baseType: !1271, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!319, !1249, !1247, !1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1242, line: 148, size: 20736, elements: !1277)
!1277 = !{!1278, !1280, !1284, !1285, !1289}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1276, file: !1242, line: 149, baseType: !1279, size: 192)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 192, elements: !798)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1276, file: !1242, line: 150, baseType: !1281, size: 4096, offset: 192)
!1281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 4096, elements: !1282)
!1282 = !{!1283}
!1283 = !DISubrange(count: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1276, file: !1242, line: 151, baseType: !319, size: 32, offset: 4288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1276, file: !1242, line: 152, baseType: !1286, size: 16384, offset: 4320)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 16384, elements: !1287)
!1287 = !{!1288}
!1288 = !DISubrange(count: 2048)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1276, file: !1242, line: 153, baseType: !319, size: 32, offset: 20704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1241, file: !1242, line: 69, baseType: !1291, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1242, line: 138, size: 448, elements: !1293)
!1293 = !{!1294, !1298, !1317, !1319, !3617, !3645, !3649}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1292, file: !1242, line: 139, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1247}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1292, file: !1242, line: 140, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1302, line: 230, size: 128, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304, !1313}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1301, file: !1302, line: 231, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!721, !1247, !1308, !632}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1302, line: 30, size: 128, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1309, file: !1302, line: 31, baseType: !367, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1309, file: !1302, line: 32, baseType: !578, size: 16, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1301, file: !1302, line: 232, baseType: !1314, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!721, !1247, !1308, !367, !313}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1292, file: !1242, line: 141, baseType: !1318, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1292, file: !1242, line: 142, baseType: !1320, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1302, line: 84, size: 320, elements: !1324)
!1324 = !{!1325, !1326, !1330, !3614, !3615}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1323, file: !1302, line: 85, baseType: !367, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1323, file: !1302, line: 86, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!578, !1247, !1308, !319}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1323, file: !1302, line: 88, baseType: !1331, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!578, !1247, !1334, !319}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1302, line: 168, size: 448, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1344, !1345}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1335, file: !1302, line: 169, baseType: !1309, size: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1335, file: !1302, line: 170, baseType: !313, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1335, file: !1302, line: 171, baseType: !312, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1335, file: !1302, line: 172, baseType: !1341, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!721, !505, !1247, !1334, !632, !502, !313}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1335, file: !1302, line: 174, baseType: !1341, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1335, file: !1302, line: 176, baseType: !1346, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!319, !505, !1247, !1334, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !949, line: 305, size: 1472, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !3507, !3513, !3514, !3519, !3520, !3523, !3608, !3609, !3610, !3611, !3612}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1350, file: !949, line: 308, baseType: !318, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1350, file: !949, line: 309, baseType: !318, size: 64, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1350, file: !949, line: 313, baseType: !1349, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1350, file: !949, line: 313, baseType: !1349, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1350, file: !949, line: 315, baseType: !986, size: 192, align: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1350, file: !949, line: 323, baseType: !318, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1350, file: !949, line: 327, baseType: !1359, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !949, line: 388, size: 7296, elements: !1361)
!1361 = !{!1362, !3505}
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1360, file: !949, line: 389, baseType: !1363, size: 7296)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1360, file: !949, line: 389, size: 7296, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1372, !1373, !1374, !1375, !1376, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1419, !1427, !1430, !1469, !1470, !3489, !3490, !3493, !3494, !3495, !3498, !3499, !3500, !3503, !3504}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1363, file: !949, line: 390, baseType: !1349, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1363, file: !949, line: 391, baseType: !982, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1363, file: !949, line: 392, baseType: !337, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1363, file: !949, line: 394, baseType: !1369, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!318, !505, !318, !318, !318, !318}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1363, file: !949, line: 398, baseType: !318, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1363, file: !949, line: 399, baseType: !318, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1363, file: !949, line: 405, baseType: !318, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1363, file: !949, line: 406, baseType: !318, size: 64, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1363, file: !949, line: 407, baseType: !1377, size: 64, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1379, line: 286, baseType: !1380)
!1379 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1379, line: 286, size: 64, elements: !1381)
!1381 = !{!1382}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1380, file: !1379, line: 286, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1384, line: 18, baseType: !318)
!1384 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1363, file: !949, line: 416, baseType: !973, size: 32, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1363, file: !949, line: 428, baseType: !973, size: 32, offset: 608)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1363, file: !949, line: 437, baseType: !973, size: 32, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1363, file: !949, line: 447, baseType: !973, size: 32, offset: 672)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1363, file: !949, line: 450, baseType: !890, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1363, file: !949, line: 452, baseType: !319, size: 32, offset: 768)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1363, file: !949, line: 454, baseType: !898, offset: 800)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1363, file: !949, line: 457, baseType: !993, size: 256, offset: 832)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1363, file: !949, line: 459, baseType: !428, size: 128, offset: 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1363, file: !949, line: 466, baseType: !318, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1363, file: !949, line: 467, baseType: !318, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1363, file: !949, line: 469, baseType: !318, size: 64, offset: 1344)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1363, file: !949, line: 470, baseType: !318, size: 64, offset: 1408)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1363, file: !949, line: 471, baseType: !892, size: 64, offset: 1472)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1363, file: !949, line: 472, baseType: !318, size: 64, offset: 1536)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1363, file: !949, line: 473, baseType: !318, size: 64, offset: 1600)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1363, file: !949, line: 474, baseType: !318, size: 64, offset: 1664)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1363, file: !949, line: 475, baseType: !318, size: 64, offset: 1728)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1363, file: !949, line: 477, baseType: !898, offset: 1792)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1363, file: !949, line: 478, baseType: !318, size: 64, offset: 1792)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1363, file: !949, line: 478, baseType: !318, size: 64, offset: 1856)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1363, file: !949, line: 478, baseType: !318, size: 64, offset: 1920)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1363, file: !949, line: 478, baseType: !318, size: 64, offset: 1984)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1363, file: !949, line: 479, baseType: !318, size: 64, offset: 2048)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1363, file: !949, line: 479, baseType: !318, size: 64, offset: 2112)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1363, file: !949, line: 479, baseType: !318, size: 64, offset: 2176)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1363, file: !949, line: 480, baseType: !318, size: 64, offset: 2240)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1363, file: !949, line: 480, baseType: !318, size: 64, offset: 2304)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1363, file: !949, line: 480, baseType: !318, size: 64, offset: 2368)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1363, file: !949, line: 480, baseType: !318, size: 64, offset: 2432)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1363, file: !949, line: 482, baseType: !1416, size: 2816, offset: 2496)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 2816, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 44)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1363, file: !949, line: 488, baseType: !1420, size: 256, offset: 5312)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1421, line: 60, size: 256, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1422 = !{!1423}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1420, file: !1421, line: 61, baseType: !1424, size: 256)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 256, elements: !1425)
!1425 = !{!1426}
!1426 = !DISubrange(count: 4)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1363, file: !949, line: 490, baseType: !1428, size: 64, offset: 5568)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !949, line: 490, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1363, file: !949, line: 493, baseType: !1431, size: 896, offset: 5632)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1432, line: 53, baseType: !1433)
!1432 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1432, line: 13, size: 896, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1441, !1442, !1443, !1444, !1464, !1465, !1466}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1433, file: !1432, line: 18, baseType: !337, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1433, file: !1432, line: 28, baseType: !892, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1433, file: !1432, line: 31, baseType: !993, size: 256, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1433, file: !1432, line: 32, baseType: !1439, size: 64, offset: 384)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1432, line: 32, flags: DIFlagFwdDecl)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1433, file: !1432, line: 37, baseType: !393, size: 16, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !1432, line: 40, baseType: !886, size: 192, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1433, file: !1432, line: 41, baseType: !312, size: 64, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1433, file: !1432, line: 42, baseType: !1445, size: 64, offset: 768)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1448, line: 13, size: 896, elements: !1449)
!1448 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1447, file: !1448, line: 14, baseType: !312, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1447, file: !1448, line: 15, baseType: !318, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1447, file: !1448, line: 17, baseType: !318, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1447, file: !1448, line: 17, baseType: !318, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1447, file: !1448, line: 19, baseType: !684, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1447, file: !1448, line: 21, baseType: !684, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1447, file: !1448, line: 22, baseType: !684, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1447, file: !1448, line: 23, baseType: !684, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1447, file: !1448, line: 24, baseType: !684, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1447, file: !1448, line: 25, baseType: !684, size: 64, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1447, file: !1448, line: 26, baseType: !684, size: 64, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1447, file: !1448, line: 27, baseType: !684, size: 64, offset: 704)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1447, file: !1448, line: 28, baseType: !684, size: 64, offset: 768)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1447, file: !1448, line: 29, baseType: !684, size: 64, offset: 832)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1433, file: !1432, line: 44, baseType: !973, size: 32, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1433, file: !1432, line: 50, baseType: !1085, size: 16, offset: 864)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1433, file: !1432, line: 51, baseType: !1467, size: 16, offset: 880)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !321, line: 18, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !323, line: 23, baseType: !1148)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1363, file: !949, line: 495, baseType: !318, size: 64, offset: 6528)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1363, file: !949, line: 497, baseType: !1471, size: 64, offset: 6592)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !949, line: 381, size: 384, elements: !1473)
!1473 = !{!1474, !1475, !3488}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1472, file: !949, line: 382, baseType: !973, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1472, file: !949, line: 383, baseType: !1476, size: 128, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !949, line: 376, size: 128, elements: !1477)
!1477 = !{!1478, !3486}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1476, file: !949, line: 377, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1481, line: 640, size: 48640, elements: !1482)
!1481 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1482 = !{!1483, !1489, !1491, !1492, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1509, !1527, !1538, !1621, !1622, !1623, !1634, !1635, !1637, !1638, !1639, !1640, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1718, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1755, !1757, !1758, !1759, !1771, !1772, !1773, !1774, !1775, !1776, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1800, !1805, !2140, !2141, !2142, !2143, !2147, !2150, !2153, !2156, !2159, !2195, !2296, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2342, !2343, !2344, !2345, !2346, !2351, !2352, !2353, !2356, !2357, !3130, !3139, !3144, !3145, !3146, !3149, !3150, !3229, !3230, !3233, !3234, !3237, !3238, !3239, !3243, !3244, !3245, !3258, !3259, !3260, !3270, !3275, !3278, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1480, file: !1481, line: 646, baseType: !1484, size: 128)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1485, line: 56, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !1485, line: 57, baseType: !318, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1484, file: !1485, line: 58, baseType: !320, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1480, file: !1481, line: 649, baseType: !1490, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !684)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1480, file: !1481, line: 657, baseType: !312, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1480, file: !1481, line: 658, baseType: !1493, size: 32, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1494, line: 113, baseType: !1495)
!1494 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1494, line: 111, size: 32, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1495, file: !1494, line: 112, baseType: !973, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !1481, line: 660, baseType: !7, size: 32, offset: 288)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1480, file: !1481, line: 661, baseType: !7, size: 32, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1480, file: !1481, line: 684, baseType: !319, size: 32, offset: 352)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1480, file: !1481, line: 686, baseType: !319, size: 32, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1480, file: !1481, line: 687, baseType: !319, size: 32, offset: 416)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1480, file: !1481, line: 688, baseType: !319, size: 32, offset: 448)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1480, file: !1481, line: 689, baseType: !7, size: 32, offset: 480)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1480, file: !1481, line: 691, baseType: !1506, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1481, line: 691, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1480, file: !1481, line: 692, baseType: !1510, size: 832, offset: 576)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1481, line: 451, size: 832, elements: !1511)
!1511 = !{!1512, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1510, file: !1481, line: 453, baseType: !1513, size: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1481, line: 325, size: 128, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1513, file: !1481, line: 326, baseType: !318, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1513, file: !1481, line: 327, baseType: !320, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1510, file: !1481, line: 454, baseType: !986, size: 192, align: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1510, file: !1481, line: 455, baseType: !428, size: 128, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1510, file: !1481, line: 456, baseType: !7, size: 32, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1510, file: !1481, line: 458, baseType: !337, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1510, file: !1481, line: 459, baseType: !337, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1510, file: !1481, line: 460, baseType: !337, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1510, file: !1481, line: 461, baseType: !337, size: 64, offset: 704)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1510, file: !1481, line: 463, baseType: !337, size: 64, offset: 768)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1510, file: !1481, line: 465, baseType: !1526, offset: 832)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1481, line: 415, elements: !793)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1480, file: !1481, line: 693, baseType: !1528, size: 384, offset: 1408)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1481, line: 489, size: 384, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1528, file: !1481, line: 490, baseType: !428, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1528, file: !1481, line: 491, baseType: !318, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1528, file: !1481, line: 492, baseType: !318, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1528, file: !1481, line: 493, baseType: !7, size: 32, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1528, file: !1481, line: 494, baseType: !393, size: 16, offset: 288)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1528, file: !1481, line: 495, baseType: !393, size: 16, offset: 304)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1528, file: !1481, line: 497, baseType: !1537, size: 64, offset: 320)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1480, file: !1481, line: 697, baseType: !1539, size: 1792, offset: 1792)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1481, line: 507, size: 1792, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1618, !1619}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1539, file: !1481, line: 508, baseType: !986, size: 192, align: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1539, file: !1481, line: 515, baseType: !337, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1539, file: !1481, line: 516, baseType: !337, size: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1539, file: !1481, line: 517, baseType: !337, size: 64, offset: 320)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1539, file: !1481, line: 518, baseType: !337, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1539, file: !1481, line: 519, baseType: !337, size: 64, offset: 448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1539, file: !1481, line: 526, baseType: !896, size: 64, offset: 512)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1539, file: !1481, line: 527, baseType: !337, size: 64, offset: 576)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !1481, line: 528, baseType: !7, size: 32, offset: 640)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1539, file: !1481, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1539, file: !1481, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1539, file: !1481, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1539, file: !1481, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1539, file: !1481, line: 563, baseType: !1555, size: 512, offset: 704)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !62, line: 118, size: 512, elements: !1556)
!1556 = !{!1557, !1565, !1566, !1571, !1614, !1615, !1616, !1617}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1555, file: !62, line: 119, baseType: !1558, size: 256)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1559, line: 9, size: 256, elements: !1560)
!1559 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1558, file: !1559, line: 10, baseType: !986, size: 192, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1558, file: !1559, line: 11, baseType: !1563, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1564, line: 29, baseType: !896)
!1564 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1555, file: !62, line: 120, baseType: !1563, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1555, file: !62, line: 121, baseType: !1567, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!61, !1570}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1555, file: !62, line: 122, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !62, line: 159, size: 512, align: 512, elements: !1574)
!1574 = !{!1575, !1595, !1596, !1599, !1604, !1605, !1609, !1613}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1573, file: !62, line: 160, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !62, line: 214, size: 4608, align: 512, elements: !1578)
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !62, line: 215, baseType: !999)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1577, file: !62, line: 216, baseType: !7, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1577, file: !62, line: 217, baseType: !7, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1577, file: !62, line: 218, baseType: !7, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1577, file: !62, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1577, file: !62, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1577, file: !62, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1577, file: !62, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1577, file: !62, line: 233, baseType: !1563, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1577, file: !62, line: 234, baseType: !1570, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1577, file: !62, line: 235, baseType: !1563, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1577, file: !62, line: 236, baseType: !1570, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1577, file: !62, line: 237, baseType: !1592, size: 4096, offset: 512)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1573, size: 4096, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 8)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1573, file: !62, line: 161, baseType: !7, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1573, file: !62, line: 162, baseType: !1597, size: 32, offset: 96)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !314, line: 27, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !316, line: 96, baseType: !319)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1573, file: !62, line: 163, baseType: !1600, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !541, line: 276, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !541, line: 276, size: 32, elements: !1602)
!1602 = !{!1603}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1601, file: !541, line: 276, baseType: !545, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1573, file: !62, line: 164, baseType: !1570, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1573, file: !62, line: 165, baseType: !1606, size: 128, offset: 256)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1559, line: 14, size: 128, elements: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1606, file: !1559, line: 15, baseType: !978, size: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1573, file: !62, line: 166, baseType: !1610, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1563}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1573, file: !62, line: 167, baseType: !1563, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1555, file: !62, line: 123, baseType: !452, size: 8, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1555, file: !62, line: 124, baseType: !452, size: 8, offset: 456)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1555, file: !62, line: 125, baseType: !452, size: 8, offset: 464)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1555, file: !62, line: 126, baseType: !452, size: 8, offset: 472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1539, file: !1481, line: 572, baseType: !1555, size: 512, offset: 1216)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1539, file: !1481, line: 580, baseType: !1620, size: 64, offset: 1728)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1480, file: !1481, line: 721, baseType: !7, size: 32, offset: 3584)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1480, file: !1481, line: 722, baseType: !319, size: 32, offset: 3616)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1480, file: !1481, line: 723, baseType: !1624, size: 64, offset: 3648)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1627, line: 17, baseType: !1628)
!1627 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1627, line: 17, size: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1628, file: !1627, line: 17, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 64, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 1)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1480, file: !1481, line: 724, baseType: !1626, size: 64, offset: 3712)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1480, file: !1481, line: 749, baseType: !1636, offset: 3776)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1481, line: 290, elements: !793)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1480, file: !1481, line: 751, baseType: !428, size: 128, offset: 3776)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1480, file: !1481, line: 757, baseType: !1359, size: 64, offset: 3904)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1480, file: !1481, line: 758, baseType: !1359, size: 64, offset: 3968)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1480, file: !1481, line: 761, baseType: !1641, size: 320, offset: 4032)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1421, line: 34, size: 320, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1641, file: !1421, line: 35, baseType: !337, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1641, file: !1421, line: 36, baseType: !1645, size: 256, offset: 64)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 256, elements: !1425)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1480, file: !1481, line: 766, baseType: !319, size: 32, offset: 4352)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1480, file: !1481, line: 767, baseType: !319, size: 32, offset: 4384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1480, file: !1481, line: 768, baseType: !319, size: 32, offset: 4416)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1480, file: !1481, line: 770, baseType: !319, size: 32, offset: 4448)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1480, file: !1481, line: 772, baseType: !318, size: 64, offset: 4480)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1480, file: !1481, line: 775, baseType: !7, size: 32, offset: 4544)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1480, file: !1481, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1480, file: !1481, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1480, file: !1481, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1480, file: !1481, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1480, file: !1481, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1480, file: !1481, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1480, file: !1481, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1480, file: !1481, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1480, file: !1481, line: 831, baseType: !318, size: 64, offset: 4672)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1480, file: !1481, line: 833, baseType: !1662, size: 384, offset: 4736)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !67, line: 25, size: 384, elements: !1663)
!1663 = !{!1664, !1669}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1662, file: !67, line: 26, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!684, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !67, line: 27, baseType: !1670, size: 320, offset: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !67, line: 27, size: 320, elements: !1671)
!1671 = !{!1672, !1681, !1708}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1670, file: !67, line: 36, baseType: !1673, size: 320)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !67, line: 29, size: 320, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1673, file: !67, line: 30, baseType: !324, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1673, file: !67, line: 31, baseType: !320, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1673, file: !67, line: 32, baseType: !320, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1673, file: !67, line: 33, baseType: !320, size: 32, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1673, file: !67, line: 34, baseType: !337, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1673, file: !67, line: 35, baseType: !324, size: 64, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1670, file: !67, line: 46, baseType: !1682, size: 192)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !67, line: 38, size: 192, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1707}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1682, file: !67, line: 39, baseType: !1597, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1682, file: !67, line: 40, baseType: !66, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !67, line: 41, baseType: !1687, size: 64, offset: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1682, file: !67, line: 41, size: 64, elements: !1688)
!1688 = !{!1689, !1697}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1687, file: !67, line: 42, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1692, line: 7, size: 128, elements: !1693)
!1692 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694, !1696}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1691, file: !1692, line: 8, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !316, line: 93, baseType: !504)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1691, file: !1692, line: 9, baseType: !504, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1687, file: !67, line: 43, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1700, line: 7, size: 64, elements: !1701)
!1700 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1706}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1699, file: !1700, line: 8, baseType: !1703, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1700, line: 5, baseType: !1704)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !321, line: 20, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !323, line: 26, baseType: !319)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1699, file: !1700, line: 9, baseType: !1704, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1682, file: !67, line: 45, baseType: !337, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1670, file: !67, line: 54, baseType: !1709, size: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1670, file: !67, line: 48, size: 256, elements: !1710)
!1710 = !{!1711, !1714, !1715, !1716, !1717}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1709, file: !67, line: 49, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !67, line: 14, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1709, file: !67, line: 50, baseType: !319, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1709, file: !67, line: 51, baseType: !319, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1709, file: !67, line: 52, baseType: !318, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1709, file: !67, line: 53, baseType: !318, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1480, file: !1481, line: 835, baseType: !1719, size: 32, offset: 5120)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !314, line: 22, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !316, line: 28, baseType: !319)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1480, file: !1481, line: 836, baseType: !1719, size: 32, offset: 5152)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1480, file: !1481, line: 840, baseType: !318, size: 64, offset: 5184)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1480, file: !1481, line: 849, baseType: !1479, size: 64, offset: 5248)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1480, file: !1481, line: 852, baseType: !1479, size: 64, offset: 5312)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1480, file: !1481, line: 857, baseType: !428, size: 128, offset: 5376)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1480, file: !1481, line: 858, baseType: !428, size: 128, offset: 5504)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1480, file: !1481, line: 859, baseType: !1479, size: 64, offset: 5632)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1480, file: !1481, line: 867, baseType: !428, size: 128, offset: 5696)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1480, file: !1481, line: 868, baseType: !428, size: 128, offset: 5824)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1480, file: !1481, line: 871, baseType: !1731, size: 64, offset: 5952)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !95, line: 59, size: 768, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1739, !1740, !1746, !1747}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1732, file: !95, line: 61, baseType: !1493, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1732, file: !95, line: 62, baseType: !7, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1732, file: !95, line: 63, baseType: !898, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1732, file: !95, line: 65, baseType: !1738, size: 256, offset: 64)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 256, elements: !1425)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1732, file: !95, line: 66, baseType: !781, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1732, file: !95, line: 68, baseType: !1741, size: 128, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1099, line: 40, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1099, line: 36, size: 128, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1742, file: !1099, line: 37, baseType: !898)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1742, file: !1099, line: 38, baseType: !428, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1732, file: !95, line: 69, baseType: !518, size: 128, align: 64, offset: 512)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1732, file: !95, line: 70, baseType: !1748, size: 128, offset: 640)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1749, size: 128, elements: !1632)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !95, line: 54, size: 128, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1749, file: !95, line: 55, baseType: !319, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1749, file: !95, line: 56, baseType: !1753, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !95, line: 56, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1480, file: !1481, line: 872, baseType: !1756, size: 512, offset: 6016)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 512, elements: !1425)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1480, file: !1481, line: 873, baseType: !428, size: 128, offset: 6528)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1480, file: !1481, line: 874, baseType: !428, size: 128, offset: 6656)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1480, file: !1481, line: 876, baseType: !1760, size: 64, offset: 6784)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1762, line: 26, size: 192, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1761, file: !1762, line: 27, baseType: !7, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1761, file: !1762, line: 28, baseType: !1766, size: 128, offset: 64)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1767, line: 43, size: 128, elements: !1768)
!1767 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1766, file: !1767, line: 44, baseType: !999)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1766, file: !1767, line: 45, baseType: !428, size: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1480, file: !1481, line: 879, baseType: !868, size: 64, offset: 6848)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1480, file: !1481, line: 882, baseType: !868, size: 64, offset: 6912)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1480, file: !1481, line: 884, baseType: !337, size: 64, offset: 6976)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1480, file: !1481, line: 885, baseType: !337, size: 64, offset: 7040)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1480, file: !1481, line: 890, baseType: !337, size: 64, offset: 7104)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1480, file: !1481, line: 891, baseType: !1777, size: 128, offset: 7168)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1481, line: 242, size: 128, elements: !1778)
!1778 = !{!1779, !1780, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1777, file: !1481, line: 244, baseType: !337, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1777, file: !1481, line: 245, baseType: !337, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1777, file: !1481, line: 246, baseType: !999, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1480, file: !1481, line: 900, baseType: !318, size: 64, offset: 7296)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1480, file: !1481, line: 901, baseType: !318, size: 64, offset: 7360)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1480, file: !1481, line: 904, baseType: !337, size: 64, offset: 7424)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1480, file: !1481, line: 907, baseType: !337, size: 64, offset: 7488)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1480, file: !1481, line: 910, baseType: !318, size: 64, offset: 7552)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1480, file: !1481, line: 911, baseType: !318, size: 64, offset: 7616)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1480, file: !1481, line: 914, baseType: !1789, size: 640, offset: 7680)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1790, line: 123, size: 640, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1798, !1799}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1789, file: !1790, line: 124, baseType: !1793, size: 576)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 576, elements: !798)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1790, line: 108, size: 192, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1794, file: !1790, line: 109, baseType: !337, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1794, file: !1790, line: 110, baseType: !1606, size: 128, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1789, file: !1790, line: 125, baseType: !7, size: 32, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1789, file: !1790, line: 126, baseType: !7, size: 32, offset: 608)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1480, file: !1481, line: 917, baseType: !1801, size: 192, offset: 8320)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1790, line: 134, size: 192, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1801, file: !1790, line: 135, baseType: !518, size: 128, align: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1801, file: !1790, line: 136, baseType: !7, size: 32, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1480, file: !1481, line: 923, baseType: !1806, size: 64, offset: 8512)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1809, line: 111, size: 1280, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1830, !1831, !1832, !1833, !1834, !1835, !1942, !1943, !1944, !1945, !1971, !2125, !2135}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1808, file: !1809, line: 112, baseType: !973, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1808, file: !1809, line: 120, baseType: !581, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1808, file: !1809, line: 121, baseType: !589, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1808, file: !1809, line: 122, baseType: !581, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1808, file: !1809, line: 123, baseType: !589, size: 32, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1808, file: !1809, line: 124, baseType: !581, size: 32, offset: 160)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1808, file: !1809, line: 125, baseType: !589, size: 32, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1808, file: !1809, line: 126, baseType: !581, size: 32, offset: 224)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1808, file: !1809, line: 127, baseType: !589, size: 32, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1808, file: !1809, line: 128, baseType: !7, size: 32, offset: 288)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1808, file: !1809, line: 129, baseType: !1822, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1823, line: 26, baseType: !1824)
!1823 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1823, line: 24, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1824, file: !1823, line: 25, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 64, elements: !1828)
!1828 = !{!1829}
!1829 = !DISubrange(count: 2)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1808, file: !1809, line: 130, baseType: !1822, size: 64, offset: 384)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1808, file: !1809, line: 131, baseType: !1822, size: 64, offset: 448)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1808, file: !1809, line: 132, baseType: !1822, size: 64, offset: 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1808, file: !1809, line: 133, baseType: !1822, size: 64, offset: 576)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1808, file: !1809, line: 135, baseType: !385, size: 8, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1808, file: !1809, line: 137, baseType: !1836, size: 64, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1838, line: 189, size: 1664, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1844, !1849, !1850, !1853, !1854, !1859, !1860, !1861, !1862, !1864, !1865, !1866, !1867, !1868, !1906, !1927}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1837, file: !1838, line: 190, baseType: !1493, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1837, file: !1838, line: 191, baseType: !1842, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1838, line: 28, baseType: !1843)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !314, line: 98, baseType: !1704)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 192, baseType: !1845, size: 192, offset: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 192, size: 192, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1845, file: !1838, line: 193, baseType: !428, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1845, file: !1838, line: 194, baseType: !986, size: 192, align: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1837, file: !1838, line: 199, baseType: !993, size: 256, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1837, file: !1838, line: 200, baseType: !1851, size: 64, offset: 512)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1838, line: 200, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1837, file: !1838, line: 201, baseType: !312, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 202, baseType: !1855, size: 64, offset: 640)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 202, size: 64, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1855, file: !1838, line: 203, baseType: !681, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1855, file: !1838, line: 204, baseType: !681, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1837, file: !1838, line: 206, baseType: !681, size: 64, offset: 704)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1837, file: !1838, line: 207, baseType: !581, size: 32, offset: 768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1837, file: !1838, line: 208, baseType: !589, size: 32, offset: 800)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1837, file: !1838, line: 209, baseType: !1863, size: 32, offset: 832)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1838, line: 31, baseType: !702)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1837, file: !1838, line: 210, baseType: !393, size: 16, offset: 864)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1837, file: !1838, line: 211, baseType: !393, size: 16, offset: 880)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1837, file: !1838, line: 215, baseType: !1148, size: 16, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !1838, line: 222, baseType: !318, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 239, baseType: !1869, size: 320, offset: 1024)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 239, size: 320, elements: !1870)
!1870 = !{!1871, !1898}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1869, file: !1838, line: 240, baseType: !1872, size: 320)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1838, line: 108, size: 320, elements: !1873)
!1873 = !{!1874, !1875, !1887, !1890, !1897}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1872, file: !1838, line: 110, baseType: !318, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1838, line: 111, baseType: !1876, size: 64, offset: 64)
!1876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1872, file: !1838, line: 111, size: 64, elements: !1877)
!1877 = !{!1878, !1886}
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1876, file: !1838, line: 112, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1876, file: !1838, line: 112, size: 64, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1879, file: !1838, line: 114, baseType: !1085, size: 16)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1879, file: !1838, line: 115, baseType: !1883, size: 48, offset: 16)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 48, elements: !1884)
!1884 = !{!1885}
!1885 = !DISubrange(count: 6)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1876, file: !1838, line: 121, baseType: !318, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1872, file: !1838, line: 123, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1838, line: 96, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1872, file: !1838, line: 124, baseType: !1891, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1838, line: 102, size: 192, elements: !1893)
!1893 = !{!1894, !1895, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1892, file: !1838, line: 103, baseType: !518, size: 128, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1892, file: !1838, line: 104, baseType: !1493, size: 32, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1892, file: !1838, line: 105, baseType: !443, size: 8, offset: 160)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1872, file: !1838, line: 125, baseType: !367, size: 64, offset: 256)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !1838, line: 241, baseType: !1899, size: 320)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !1838, line: 241, size: 320, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904, !1905}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1899, file: !1838, line: 242, baseType: !318, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1899, file: !1838, line: 243, baseType: !318, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1899, file: !1838, line: 244, baseType: !1888, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1899, file: !1838, line: 245, baseType: !1891, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1899, file: !1838, line: 246, baseType: !632, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 254, baseType: !1907, size: 256, offset: 1344)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 254, size: 256, elements: !1908)
!1908 = !{!1909, !1915}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1907, file: !1838, line: 255, baseType: !1910, size: 256)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1838, line: 128, size: 256, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1910, file: !1838, line: 129, baseType: !312, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1910, file: !1838, line: 130, baseType: !1914, size: 256)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 256, elements: !1425)
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1838, line: 256, baseType: !1916, size: 256)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !1838, line: 256, size: 256, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1916, file: !1838, line: 258, baseType: !428, size: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1916, file: !1838, line: 259, baseType: !1920, size: 128, offset: 128)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1921, line: 22, size: 128, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1922 = !{!1923, !1926}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1920, file: !1921, line: 23, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1921, line: 23, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1920, file: !1921, line: 24, baseType: !318, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1837, file: !1838, line: 274, baseType: !1928, size: 64, offset: 1600)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1838, line: 170, size: 192, elements: !1930)
!1930 = !{!1931, !1940, !1941}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1929, file: !1838, line: 171, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1838, line: 165, baseType: !1933)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!319, !1836, !1936, !1938, !1836}
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
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1947, file: !1948, line: 14, baseType: !1493, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1947, file: !1948, line: 15, baseType: !973, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1947, file: !1948, line: 16, baseType: !973, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1947, file: !1948, line: 21, baseType: !890, size: 64, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1947, file: !1948, line: 27, baseType: !318, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1947, file: !1948, line: 28, baseType: !318, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1947, file: !1948, line: 29, baseType: !890, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1947, file: !1948, line: 32, baseType: !785, size: 128, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1947, file: !1948, line: 33, baseType: !581, size: 32, offset: 512)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1947, file: !1948, line: 37, baseType: !890, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1947, file: !1948, line: 44, baseType: !1961, size: 256, offset: 640)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1962, line: 15, size: 256, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1961, file: !1962, line: 16, baseType: !999)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1961, file: !1962, line: 18, baseType: !319, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1961, file: !1962, line: 19, baseType: !319, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1961, file: !1962, line: 20, baseType: !319, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1961, file: !1962, line: 21, baseType: !319, size: 32, offset: 96)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1961, file: !1962, line: 22, baseType: !318, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1961, file: !1962, line: 23, baseType: !318, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1808, file: !1809, line: 146, baseType: !1972, size: 64, offset: 1024)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1974, line: 56, size: 4160, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1975 = !{!1976, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2013, !2014, !2015, !2016, !2017, !2029, !2110, !2111, !2123}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1973, file: !1974, line: 57, baseType: !1977, size: 576)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1974, line: 23, size: 576, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1977, file: !1974, line: 24, baseType: !320, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1974, line: 25, baseType: !1981, size: 512, offset: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1977, file: !1974, line: 25, size: 512, elements: !1982)
!1982 = !{!1983, !1990}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1981, file: !1974, line: 26, baseType: !1984, size: 480)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1985, size: 480, elements: !485)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1974, line: 17, size: 96, elements: !1986)
!1986 = !{!1987, !1988, !1989}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1985, file: !1974, line: 18, baseType: !320, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1985, file: !1974, line: 19, baseType: !320, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1985, file: !1974, line: 20, baseType: !320, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !1974, line: 27, baseType: !1991, size: 128)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1974, line: 27, size: 128, elements: !1992)
!1992 = !{!1993, !1995}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1991, file: !1974, line: 28, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1991, file: !1974, line: 29, baseType: !1994, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1973, file: !1974, line: 58, baseType: !1977, size: 576, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1973, file: !1974, line: 59, baseType: !1977, size: 576, offset: 1152)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1973, file: !1974, line: 60, baseType: !973, size: 32, offset: 1728)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1973, file: !1974, line: 61, baseType: !1972, size: 64, offset: 1792)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1973, file: !1974, line: 62, baseType: !319, size: 32, offset: 1856)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1973, file: !1974, line: 63, baseType: !581, size: 32, offset: 1888)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1973, file: !1974, line: 64, baseType: !589, size: 32, offset: 1920)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1973, file: !1974, line: 65, baseType: !2004, size: 192, offset: 1984)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2005, line: 7, size: 192, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2012}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2004, file: !2005, line: 8, baseType: !890, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2004, file: !2005, line: 9, baseType: !2009, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2005, line: 5, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2004, file: !2005, line: 10, baseType: !7, size: 32, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !1974, line: 66, baseType: !318, size: 64, offset: 2176)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1973, file: !1974, line: 74, baseType: !428, size: 128, offset: 2240)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1973, file: !1974, line: 75, baseType: !1836, size: 64, offset: 2368)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1973, file: !1974, line: 76, baseType: !993, size: 256, offset: 2432)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1973, file: !1974, line: 83, baseType: !2018, size: 256, offset: 2688)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2019, line: 102, size: 256, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !{!2021, !2022, !2023}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2018, file: !2019, line: 103, baseType: !890, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2018, file: !2019, line: 104, baseType: !428, size: 128, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2018, file: !2019, line: 105, baseType: !2024, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2019, line: 21, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !2028}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1973, file: !1974, line: 85, baseType: !2030, size: 768, offset: 2944)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !2031, line: 156, size: 768, elements: !2032)
!2031 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !{!2033, !2038}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2030, file: !2031, line: 157, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!319, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2030, file: !2031, line: 158, baseType: !2039, size: 704, offset: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !2031, line: 150, size: 704, elements: !2040)
!2040 = !{!2041, !2109}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2039, file: !2031, line: 152, baseType: !2042, size: 640)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !2031, line: 131, size: 640, elements: !2043)
!2043 = !{!2044, !2077, !2078, !2079, !2099, !2100, !2102, !2108}
!2044 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2031, line: 132, baseType: !2045, size: 192)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2031, line: 132, size: 192, elements: !2046)
!2046 = !{!2047, !2076}
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2045, file: !2031, line: 133, baseType: !2048, size: 192)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2045, file: !2031, line: 133, size: 192, elements: !2049)
!2049 = !{!2050, !2073, !2074, !2075}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2048, file: !2031, line: 134, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !2031, line: 112, size: 512, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2065, !2071, !2072}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !2052, file: !2031, line: 113, baseType: !367, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2052, file: !2031, line: 114, baseType: !312, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2052, file: !2031, line: 115, baseType: !319, size: 32, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2052, file: !2031, line: 116, baseType: !578, size: 16, offset: 160)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2052, file: !2031, line: 117, baseType: !2051, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !2052, file: !2031, line: 118, baseType: !2060, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !2031, line: 47, baseType: !2062)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!319, !2051, !319, !312, !2064, !922}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2052, file: !2031, line: 119, baseType: !2066, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !2031, line: 94, size: 192, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2067, file: !2031, line: 95, baseType: !973, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2067, file: !2031, line: 96, baseType: !1741, size: 128, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !2052, file: !2031, line: 120, baseType: !312, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !2052, file: !2031, line: 121, baseType: !312, size: 64, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2048, file: !2031, line: 135, baseType: !319, size: 32, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2048, file: !2031, line: 136, baseType: !319, size: 32, offset: 96)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2048, file: !2031, line: 137, baseType: !319, size: 32, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2045, file: !2031, line: 139, baseType: !518, size: 128, align: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2042, file: !2031, line: 141, baseType: !1760, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2042, file: !2031, line: 142, baseType: !2051, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2042, file: !2031, line: 143, baseType: !2080, size: 64, offset: 320)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !2031, line: 161, size: 960, elements: !2082)
!2082 = !{!2083, !2084, !2088, !2095}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2081, file: !2031, line: 162, baseType: !2030, size: 768)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2081, file: !2031, line: 163, baseType: !2085, size: 64, offset: 768)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2037, !2080}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2081, file: !2031, line: 164, baseType: !2089, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !2092, !2051, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2081, file: !2031, line: 167, baseType: !2096, size: 64, offset: 896)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!319, !2092, !2051}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2042, file: !2031, line: 144, baseType: !2037, size: 64, offset: 384)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2042, file: !2031, line: 145, baseType: !2101, size: 64, offset: 448)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2042, file: !2031, line: 146, baseType: !2103, size: 64, offset: 512)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !2031, line: 124, size: 256, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2104, file: !2031, line: 125, baseType: !986, size: 192, align: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2104, file: !2031, line: 126, baseType: !2092, size: 64, offset: 192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2042, file: !2031, line: 147, baseType: !781, size: 64, offset: 576)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2039, file: !2031, line: 153, baseType: !982, size: 64, offset: 640)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1973, file: !1974, line: 86, baseType: !2092, size: 64, offset: 3712)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1973, file: !1974, line: 88, baseType: !2112, size: 64, offset: 3776)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1974, line: 92, size: 576, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2119}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2113, file: !1974, line: 93, baseType: !785, size: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2113, file: !1974, line: 94, baseType: !1972, size: 64, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2113, file: !1974, line: 95, baseType: !581, size: 32, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2113, file: !1974, line: 96, baseType: !319, size: 32, offset: 224)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !2113, file: !1974, line: 97, baseType: !2120, size: 320, offset: 256)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !973, size: 320, elements: !2121)
!2121 = !{!2122}
!2122 = !DISubrange(count: 10)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1973, file: !1974, line: 89, baseType: !2124, size: 320, offset: 3840)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 320, elements: !2121)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1808, file: !1809, line: 147, baseType: !2126, size: 64, offset: 1088)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1809, line: 25, size: 64, elements: !2128)
!2128 = !{!2129, !2130, !2131}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2127, file: !1809, line: 26, baseType: !973, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2127, file: !1809, line: 27, baseType: !319, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2127, file: !1809, line: 28, baseType: !2132, offset: 64)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, elements: !2133)
!2133 = !{!2134}
!2134 = !DISubrange(count: 0)
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 149, baseType: !2136, size: 128, offset: 1152)
!2136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 149, size: 128, elements: !2137)
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2136, file: !1809, line: 150, baseType: !319, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2136, file: !1809, line: 151, baseType: !518, size: 128, align: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1480, file: !1481, line: 926, baseType: !1806, size: 64, offset: 8576)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1480, file: !1481, line: 929, baseType: !1806, size: 64, offset: 8640)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1480, file: !1481, line: 933, baseType: !1836, size: 64, offset: 8704)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1480, file: !1481, line: 943, baseType: !2144, size: 128, offset: 8768)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 128, elements: !2145)
!2145 = !{!2146}
!2146 = !DISubrange(count: 16)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1480, file: !1481, line: 945, baseType: !2148, size: 64, offset: 8896)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1481, line: 49, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1480, file: !1481, line: 956, baseType: !2151, size: 64, offset: 8960)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1481, line: 45, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1480, file: !1481, line: 959, baseType: !2154, size: 64, offset: 9024)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1481, line: 959, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1480, file: !1481, line: 962, baseType: !2157, size: 64, offset: 9088)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1481, line: 66, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1480, file: !1481, line: 966, baseType: !2160, size: 64, offset: 9152)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2162, line: 31, size: 576, elements: !2163)
!2162 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2165, !2168, !2171, !2174, !2175, !2178, !2181, !2182}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2161, file: !2162, line: 32, baseType: !973, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2161, file: !2162, line: 33, baseType: !2166, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2162, line: 9, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2161, file: !2162, line: 34, baseType: !2169, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2162, line: 10, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2161, file: !2162, line: 35, baseType: !2172, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2162, line: 8, flags: DIFlagFwdDecl)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2161, file: !2162, line: 36, baseType: !1753, size: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2161, file: !2162, line: 37, baseType: !2176, size: 64, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1838, line: 34, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2161, file: !2162, line: 38, baseType: !2179, size: 64, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2162, line: 38, flags: DIFlagFwdDecl)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2161, file: !2162, line: 39, baseType: !2179, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2161, file: !2162, line: 40, baseType: !2183, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2185, line: 856, size: 448, elements: !2186)
!2185 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !{!2187, !2188, !2189, !2190, !2191}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2184, file: !2185, line: 857, baseType: !1493, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2184, file: !2185, line: 858, baseType: !2004, size: 192, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2184, file: !2185, line: 859, baseType: !1972, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2184, file: !2185, line: 860, baseType: !2112, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2184, file: !2185, line: 861, baseType: !2192, size: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2194, line: 16, flags: DIFlagFwdDecl)
!2194 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1480, file: !1481, line: 969, baseType: !2196, size: 64, offset: 9216)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2198, line: 82, size: 7296, elements: !2199)
!2198 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2235, !2244, !2245, !2247, !2248, !2249, !2252, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2282, !2283, !2290, !2291, !2292, !2293, !2294, !2295}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2197, file: !2198, line: 83, baseType: !1493, size: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2197, file: !2198, line: 84, baseType: !973, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2197, file: !2198, line: 85, baseType: !319, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2197, file: !2198, line: 86, baseType: !428, size: 128, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2197, file: !2198, line: 88, baseType: !1741, size: 128, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2197, file: !2198, line: 91, baseType: !1479, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2197, file: !2198, line: 94, baseType: !2207, size: 192, offset: 448)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2208, line: 30, size: 192, elements: !2209)
!2208 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2209 = !{!2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2207, file: !2208, line: 31, baseType: !428, size: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2207, file: !2208, line: 32, baseType: !2212, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2213, line: 25, baseType: !2214)
!2213 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2213, line: 23, size: 64, elements: !2215)
!2215 = !{!2216}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2214, file: !2213, line: 24, baseType: !1631, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2197, file: !2198, line: 97, baseType: !781, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2197, file: !2198, line: 100, baseType: !319, size: 32, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2197, file: !2198, line: 106, baseType: !319, size: 32, offset: 736)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2197, file: !2198, line: 107, baseType: !1479, size: 64, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2197, file: !2198, line: 110, baseType: !319, size: 32, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2197, file: !2198, line: 111, baseType: !7, size: 32, offset: 864)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2197, file: !2198, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2197, file: !2198, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2197, file: !2198, line: 128, baseType: !319, size: 32, offset: 928)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2197, file: !2198, line: 129, baseType: !428, size: 128, offset: 960)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2197, file: !2198, line: 132, baseType: !1555, size: 512, offset: 1088)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2197, file: !2198, line: 133, baseType: !1563, size: 64, offset: 1600)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2197, file: !2198, line: 140, baseType: !2230, size: 256, offset: 1664)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2231, size: 256, elements: !1828)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2198, line: 38, size: 128, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2231, file: !2198, line: 39, baseType: !337, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2231, file: !2198, line: 40, baseType: !337, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2197, file: !2198, line: 146, baseType: !2236, size: 192, offset: 1920)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2198, line: 66, size: 192, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2236, file: !2198, line: 67, baseType: !2239, size: 192)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2198, line: 47, size: 192, elements: !2240)
!2240 = !{!2241, !2242, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2239, file: !2198, line: 48, baseType: !892, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2239, file: !2198, line: 49, baseType: !892, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2239, file: !2198, line: 50, baseType: !892, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2197, file: !2198, line: 150, baseType: !1789, size: 640, offset: 2112)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2197, file: !2198, line: 153, baseType: !2246, size: 256, offset: 2752)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1731, size: 256, elements: !1425)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2197, file: !2198, line: 159, baseType: !1731, size: 64, offset: 3008)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2197, file: !2198, line: 162, baseType: !319, size: 32, offset: 3072)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2197, file: !2198, line: 164, baseType: !2250, size: 64, offset: 3136)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2198, line: 164, flags: DIFlagFwdDecl)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2197, file: !2198, line: 175, baseType: !2253, size: 32, offset: 3200)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !541, line: 805, baseType: !2254)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !541, line: 798, size: 32, elements: !2255)
!2255 = !{!2256, !2257}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2254, file: !541, line: 803, baseType: !540, size: 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2254, file: !541, line: 804, baseType: !898, offset: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2197, file: !2198, line: 176, baseType: !337, size: 64, offset: 3264)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2197, file: !2198, line: 176, baseType: !337, size: 64, offset: 3328)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2197, file: !2198, line: 176, baseType: !337, size: 64, offset: 3392)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2197, file: !2198, line: 176, baseType: !337, size: 64, offset: 3456)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2197, file: !2198, line: 177, baseType: !337, size: 64, offset: 3520)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2197, file: !2198, line: 178, baseType: !337, size: 64, offset: 3584)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2197, file: !2198, line: 179, baseType: !1777, size: 128, offset: 3648)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2197, file: !2198, line: 180, baseType: !318, size: 64, offset: 3776)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2197, file: !2198, line: 180, baseType: !318, size: 64, offset: 3840)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2197, file: !2198, line: 180, baseType: !318, size: 64, offset: 3904)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2197, file: !2198, line: 180, baseType: !318, size: 64, offset: 3968)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2197, file: !2198, line: 181, baseType: !318, size: 64, offset: 4032)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2197, file: !2198, line: 181, baseType: !318, size: 64, offset: 4096)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2197, file: !2198, line: 181, baseType: !318, size: 64, offset: 4160)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2197, file: !2198, line: 181, baseType: !318, size: 64, offset: 4224)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2197, file: !2198, line: 182, baseType: !318, size: 64, offset: 4288)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2197, file: !2198, line: 182, baseType: !318, size: 64, offset: 4352)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2197, file: !2198, line: 182, baseType: !318, size: 64, offset: 4416)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2197, file: !2198, line: 182, baseType: !318, size: 64, offset: 4480)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2197, file: !2198, line: 183, baseType: !318, size: 64, offset: 4544)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2197, file: !2198, line: 183, baseType: !318, size: 64, offset: 4608)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2197, file: !2198, line: 184, baseType: !2280, offset: 4672)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2281, line: 12, elements: !793)
!2281 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2197, file: !2198, line: 192, baseType: !339, size: 64, offset: 4672)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2197, file: !2198, line: 203, baseType: !2284, size: 2048, offset: 4736)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 2048, elements: !2145)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2286, line: 43, size: 128, elements: !2287)
!2286 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2287 = !{!2288, !2289}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2285, file: !2286, line: 44, baseType: !317, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2285, file: !2286, line: 45, baseType: !317, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2197, file: !2198, line: 220, baseType: !443, size: 8, offset: 6784)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2197, file: !2198, line: 221, baseType: !1148, size: 16, offset: 6800)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2197, file: !2198, line: 222, baseType: !1148, size: 16, offset: 6816)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2197, file: !2198, line: 224, baseType: !1359, size: 64, offset: 6848)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2197, file: !2198, line: 227, baseType: !886, size: 192, offset: 6912)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2197, file: !2198, line: 233, baseType: !886, size: 192, offset: 7104)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1480, file: !1481, line: 970, baseType: !2297, size: 64, offset: 9280)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2198, line: 20, size: 16576, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2298, file: !2198, line: 21, baseType: !898)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2298, file: !2198, line: 22, baseType: !1493, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2298, file: !2198, line: 23, baseType: !1741, size: 128, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2298, file: !2198, line: 24, baseType: !2304, size: 16384, offset: 192)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2305, size: 16384, elements: !1282)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2208, line: 49, size: 256, elements: !2306)
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2305, file: !2208, line: 50, baseType: !2308, size: 256)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2208, line: 35, size: 256, elements: !2309)
!2309 = !{!2310, !2317, !2318, !2324}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2308, file: !2208, line: 37, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2312, line: 19, baseType: !2313)
!2312 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2312, line: 18, baseType: !2315)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !319}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2308, file: !2208, line: 38, baseType: !318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2308, file: !2208, line: 44, baseType: !2319, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2312, line: 22, baseType: !2320)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2312, line: 21, baseType: !2322)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2308, file: !2208, line: 46, baseType: !2212, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1480, file: !1481, line: 971, baseType: !2212, size: 64, offset: 9344)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1480, file: !1481, line: 972, baseType: !2212, size: 64, offset: 9408)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1480, file: !1481, line: 974, baseType: !2212, size: 64, offset: 9472)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1480, file: !1481, line: 975, baseType: !2207, size: 192, offset: 9536)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1480, file: !1481, line: 976, baseType: !318, size: 64, offset: 9728)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1480, file: !1481, line: 977, baseType: !313, size: 64, offset: 9792)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1480, file: !1481, line: 978, baseType: !7, size: 32, offset: 9856)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1480, file: !1481, line: 980, baseType: !521, size: 64, offset: 9920)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1480, file: !1481, line: 989, baseType: !2334, size: 128, offset: 9984)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2335, line: 35, size: 128, elements: !2336)
!2335 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2338, !2339}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2334, file: !2335, line: 36, baseType: !319, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2334, file: !2335, line: 37, baseType: !973, size: 32, offset: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2334, file: !2335, line: 38, baseType: !2340, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2335, line: 23, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1480, file: !1481, line: 992, baseType: !337, size: 64, offset: 10112)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1480, file: !1481, line: 993, baseType: !337, size: 64, offset: 10176)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1480, file: !1481, line: 996, baseType: !898, offset: 10240)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1480, file: !1481, line: 999, baseType: !999, offset: 10240)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1480, file: !1481, line: 1001, baseType: !2347, size: 64, offset: 10240)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1481, line: 636, size: 64, elements: !2348)
!2348 = !{!2349}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2347, file: !1481, line: 637, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1480, file: !1481, line: 1005, baseType: !978, size: 128, offset: 10304)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1480, file: !1481, line: 1007, baseType: !1479, size: 64, offset: 10432)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1480, file: !1481, line: 1009, baseType: !2354, size: 64, offset: 10496)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1481, line: 1009, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1480, file: !1481, line: 1043, baseType: !312, size: 64, offset: 10560)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1480, file: !1481, line: 1046, baseType: !2358, size: 64, offset: 10624)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2360, line: 554, size: 128, elements: !2361)
!2360 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/lizy2001/genbc/linux")
!2361 = !{!2362, !3129}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2359, file: !2360, line: 555, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !1191, line: 203, size: 832, elements: !2365)
!2365 = !{!2366, !2367, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3097, !3102, !3103, !3122, !3123, !3124, !3125, !3126, !3128}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2364, file: !1191, line: 204, baseType: !2363, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "bi_disk", scope: !2364, file: !1191, line: 205, baseType: !2368, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1208, line: 167, size: 8512, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2378, !2379, !2380, !2391, !2392, !2478, !3064, !3065, !3066, !3067, !3068, !3069, !3072, !3073, !3076, !3077, !3078, !3081}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2369, file: !1208, line: 171, baseType: !319, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2369, file: !1208, line: 172, baseType: !319, size: 32, offset: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2369, file: !1208, line: 173, baseType: !319, size: 32, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2369, file: !1208, line: 176, baseType: !2375, size: 256, offset: 96)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !2376)
!2376 = !{!2377}
!2377 = !DISubrange(count: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2369, file: !1208, line: 178, baseType: !393, size: 16, offset: 352)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2369, file: !1208, line: 179, baseType: !393, size: 16, offset: 368)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2369, file: !1208, line: 186, baseType: !2381, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_part_tbl", file: !1208, line: 149, size: 256, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2382, file: !1208, line: 150, baseType: !518, size: 128, align: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2382, file: !1208, line: 151, baseType: !319, size: 32, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "last_lookup", scope: !2382, file: !1208, line: 152, baseType: !1206, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2382, file: !1208, line: 153, baseType: !2388, offset: 256)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, elements: !2389)
!2389 = !{!2390}
!2390 = !DISubrange(count: -1)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2369, file: !1208, line: 187, baseType: !1207, size: 6592, offset: 448)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2369, file: !1208, line: 189, baseType: !2393, size: 64, offset: 7040)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !19, line: 1844, size: 960, elements: !2396)
!2396 = !{!2397, !2402, !2407, !2411, !2415, !2419, !2420, !2424, !2428, !2432, !2438, !2442, !2468, !2473, !2474}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2395, file: !19, line: 1845, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!2401, !2363}
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !1191, line: 515, baseType: !7)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2395, file: !19, line: 1846, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!319, !1189, !2406}
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !314, line: 150, baseType: !7)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2395, file: !19, line: 1847, baseType: !2408, size: 64, offset: 128)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !2368, !2406}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rw_page", scope: !2395, file: !19, line: 1848, baseType: !2412, size: 64, offset: 192)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!319, !1189, !1056, !947, !7}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2395, file: !19, line: 1849, baseType: !2416, size: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!319, !1189, !2406, !7, !318}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2395, file: !19, line: 1850, baseType: !2416, size: 64, offset: 320)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2395, file: !19, line: 1851, baseType: !2421, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!7, !2368, !7}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2395, file: !19, line: 1853, baseType: !2425, size: 64, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !2368}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "revalidate_disk", scope: !2395, file: !19, line: 1854, baseType: !2429, size: 64, offset: 512)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!319, !2368}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2395, file: !19, line: 1855, baseType: !2433, size: 64, offset: 576)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!319, !1189, !2436}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !86, line: 51, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2395, file: !19, line: 1857, baseType: !2439, size: 64, offset: 640)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !1189, !318}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2395, file: !19, line: 1858, baseType: !2443, size: 64, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!319, !2368, !1056, !7, !2446, !312}
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !19, line: 354, baseType: !2447)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!319, !2450, !7, !312}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !2452, line: 106, size: 512, elements: !2453)
!2452 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/lizy2001/genbc/linux")
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2463, !2464}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2451, file: !2452, line: 107, baseType: !338, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2451, file: !2452, line: 108, baseType: !338, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !2451, file: !2452, line: 109, baseType: !338, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2451, file: !2452, line: 110, baseType: !384, size: 8, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !2451, file: !2452, line: 111, baseType: !384, size: 8, offset: 200)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !2451, file: !2452, line: 112, baseType: !384, size: 8, offset: 208)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !2451, file: !2452, line: 113, baseType: !384, size: 8, offset: 216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !2451, file: !2452, line: 114, baseType: !2462, size: 32, offset: 224)
!2462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 32, elements: !1425)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !2451, file: !2452, line: 115, baseType: !338, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2451, file: !2452, line: 116, baseType: !2465, size: 192, offset: 320)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 192, elements: !2466)
!2466 = !{!2467}
!2467 = !DISubrange(count: 24)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2395, file: !19, line: 1860, baseType: !2469, size: 64, offset: 768)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!632, !2368, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2395, file: !19, line: 1861, baseType: !495, size: 64, offset: 832)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2395, file: !19, line: 1862, baseType: !2475, size: 64, offset: 896)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2477)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !19, line: 41, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2369, file: !1208, line: 190, baseType: !2479, size: 64, offset: 7104)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !19, line: 399, size: 14464, elements: !2481)
!2481 = !{!2482, !2620, !2742, !2743, !2746, !2749, !2753, !2754, !2755, !2757, !2758, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2898, !2907, !2908, !2909, !2910, !2911, !2941, !2942, !2943, !2944, !2945, !2946, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !3019, !3020, !3021, !3022, !3025, !3026, !3059, !3060, !3061, !3062}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2480, file: !19, line: 400, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !19, line: 130, size: 2176, elements: !2485)
!2485 = !{!2486, !2487, !2490, !2493, !2494, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2508, !2521, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2618, !2619}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2484, file: !19, line: 131, baseType: !2479, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !2484, file: !19, line: 132, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !19, line: 132, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !2484, file: !19, line: 133, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !19, line: 133, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2484, file: !19, line: 135, baseType: !7, size: 32, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !2484, file: !19, line: 136, baseType: !2495, size: 32, offset: 224)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !19, line: 66, baseType: !322)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2484, file: !19, line: 138, baseType: !319, size: 32, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !2484, file: !19, line: 139, baseType: !319, size: 32, offset: 288)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !2484, file: !19, line: 142, baseType: !7, size: 32, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !2484, file: !19, line: 143, baseType: !1056, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !2484, file: !19, line: 145, baseType: !2363, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !2484, file: !19, line: 146, baseType: !2363, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !2484, file: !19, line: 148, baseType: !428, size: 128, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !19, line: 157, baseType: !2504, size: 128, offset: 704)
!2504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !19, line: 157, size: 128, elements: !2505)
!2505 = !{!2506, !2507}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2504, file: !19, line: 158, baseType: !785, size: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !2504, file: !19, line: 159, baseType: !428, size: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !19, line: 167, baseType: !2509, size: 192, offset: 832)
!2509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !19, line: 167, size: 192, elements: !2510)
!2510 = !{!2511, !2512, !2519, !2520}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2509, file: !19, line: 168, baseType: !986, size: 192, align: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !2509, file: !19, line: 169, baseType: !2513, size: 128)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2514, line: 31, size: 128, elements: !2515)
!2514 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2513, file: !2514, line: 32, baseType: !947, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2513, file: !2514, line: 33, baseType: !7, size: 32, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2513, file: !2514, line: 34, baseType: !7, size: 32, offset: 96)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "completion_data", scope: !2509, file: !19, line: 170, baseType: !312, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !2509, file: !19, line: 171, baseType: !319, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !19, line: 180, baseType: !2522, size: 256, offset: 1024)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !19, line: 180, size: 256, elements: !2523)
!2523 = !{!2524, !2561}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !2522, file: !19, line: 184, baseType: !2525, size: 192)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2522, file: !19, line: 181, size: 192, elements: !2526)
!2526 = !{!2527, !2559}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !2525, file: !19, line: 182, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2530, line: 73, size: 448, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2531 = !{!2532, !2533, !2546, !2553, !2558}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2529, file: !2530, line: 74, baseType: !2479, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2529, file: !2530, line: 75, baseType: !2534, size: 64, offset: 64)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2530, line: 99, size: 704, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2535, file: !2530, line: 100, baseType: !890, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2535, file: !2530, line: 101, baseType: !973, size: 32, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2535, file: !2530, line: 102, baseType: !973, size: 32, offset: 96)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2535, file: !2530, line: 105, baseType: !898, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2535, file: !2530, line: 107, baseType: !393, size: 16, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2535, file: !2530, line: 109, baseType: !965, size: 128, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2535, file: !2530, line: 110, baseType: !2528, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2535, file: !2530, line: 111, baseType: !781, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2535, file: !2530, line: 113, baseType: !2018, size: 256, offset: 448)
!2546 = !DIDerivedType(tag: DW_TAG_member, scope: !2529, file: !2530, line: 83, baseType: !2547, size: 128, offset: 128)
!2547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2529, file: !2530, line: 83, size: 128, elements: !2548)
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2547, file: !2530, line: 84, baseType: !428, size: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2547, file: !2530, line: 85, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !949, line: 117, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, scope: !2529, file: !2530, line: 87, baseType: !2554, size: 128, offset: 256)
!2554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2529, file: !2530, line: 87, size: 128, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2554, file: !2530, line: 88, baseType: !785, size: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2554, file: !2530, line: 89, baseType: !518, size: 128, align: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2529, file: !2530, line: 92, baseType: !7, size: 32, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2525, file: !19, line: 183, baseType: !2560, size: 128, offset: 64)
!2560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 128, elements: !1828)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2522, file: !19, line: 190, baseType: !2562, size: 256)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2522, file: !19, line: 186, size: 256, elements: !2563)
!2563 = !{!2564, !2565, !2566}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2562, file: !19, line: 187, baseType: !7, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2562, file: !19, line: 188, baseType: !428, size: 128, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !2562, file: !19, line: 189, baseType: !2567, size: 64, offset: 192)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !19, line: 62, baseType: !2569)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !2483, !2571}
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !1191, line: 58, baseType: !452)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rq_disk", scope: !2484, file: !19, line: 193, baseType: !2368, size: 64, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2484, file: !19, line: 194, baseType: !1206, size: 64, offset: 1344)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !2484, file: !19, line: 200, baseType: !337, size: 64, offset: 1408)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !2484, file: !19, line: 202, baseType: !337, size: 64, offset: 1472)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !2484, file: !19, line: 212, baseType: !393, size: 16, offset: 1536)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !2484, file: !19, line: 218, baseType: !393, size: 16, offset: 1552)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_integrity_segments", scope: !2484, file: !19, line: 221, baseType: !393, size: 16, offset: 1568)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "write_hint", scope: !2484, file: !19, line: 229, baseType: !393, size: 16, offset: 1584)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2484, file: !19, line: 230, baseType: !393, size: 16, offset: 1600)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2484, file: !19, line: 232, baseType: !18, size: 32, offset: 1632)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2484, file: !19, line: 233, baseType: !1493, size: 32, offset: 1664)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2484, file: !19, line: 235, baseType: !7, size: 32, offset: 1696)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2484, file: !19, line: 236, baseType: !318, size: 64, offset: 1728)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2484, file: !19, line: 238, baseType: !2586, size: 256, offset: 1792)
!2586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2484, file: !19, line: 238, size: 256, elements: !2587)
!2587 = !{!2588, !2617}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "csd", scope: !2586, file: !19, line: 239, baseType: !2589, size: 256)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !2590, line: 23, size: 256, elements: !2591)
!2590 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/lizy2001/genbc/linux")
!2591 = !{!2592, !2614, !2616}
!2592 = !DIDerivedType(tag: DW_TAG_member, scope: !2589, file: !2590, line: 24, baseType: !2593, size: 128)
!2593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2589, file: !2590, line: 24, size: 128, elements: !2594)
!2594 = !{!2595, !2607}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2593, file: !2590, line: 25, baseType: !2596, size: 128)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2597, line: 58, size: 128, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600, !2605, !2606}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2596, file: !2597, line: 59, baseType: !512, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, scope: !2596, file: !2597, line: 60, baseType: !2601, size: 32, offset: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2596, file: !2597, line: 60, size: 32, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2601, file: !2597, line: 61, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2601, file: !2597, line: 62, baseType: !973, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2596, file: !2597, line: 65, baseType: !1085, size: 16, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2596, file: !2597, line: 65, baseType: !1085, size: 16, offset: 112)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2593, file: !2590, line: 26, baseType: !2608, size: 128)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2593, file: !2590, line: 26, size: 128, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2608, file: !2590, line: 27, baseType: !512, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2608, file: !2590, line: 28, baseType: !7, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2608, file: !2590, line: 30, baseType: !1085, size: 16, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2608, file: !2590, line: 30, baseType: !1085, size: 16, offset: 112)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2589, file: !2590, line: 34, baseType: !2615, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !2590, line: 17, baseType: !614)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2589, file: !2590, line: 35, baseType: !312, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !2586, file: !19, line: 240, baseType: !337, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !2484, file: !19, line: 246, baseType: !2567, size: 64, offset: 2048)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !2484, file: !19, line: 247, baseType: !312, size: 64, offset: 2112)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2480, file: !19, line: 401, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !25, line: 101, size: 4992, elements: !2623)
!2623 = !{!2624, !2736, !2737, !2738, !2739, !2740}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2622, file: !25, line: 103, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_type", file: !25, line: 66, size: 2240, elements: !2627)
!2627 = !{!2628, !2629, !2711, !2712, !2713, !2726, !2727, !2728, !2730, !2731, !2735}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache", scope: !2626, file: !25, line: 69, baseType: !2551, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2626, file: !25, line: 72, baseType: !2630, size: 1408, offset: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_mq_ops", file: !25, line: 29, size: 1408, elements: !2631)
!2631 = !{!2632, !2636, !2640, !2644, !2648, !2652, !2656, !2660, !2665, !2669, !2673, !2679, !2683, !2684, !2688, !2692, !2696, !2700, !2701, !2705, !2706, !2710}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "init_sched", scope: !2630, file: !25, line: 30, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!319, !2479, !2625}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "exit_sched", scope: !2630, file: !25, line: 31, baseType: !2637, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2621}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !2630, file: !25, line: 32, baseType: !2641, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!319, !2491, !7}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !2630, file: !25, line: 33, baseType: !2645, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{null, !2491, !7}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "depth_updated", scope: !2630, file: !25, line: 34, baseType: !2649, size: 64, offset: 256)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{null, !2491}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "allow_merge", scope: !2630, file: !25, line: 36, baseType: !2653, size: 64, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!443, !2479, !2483, !2363}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bio_merge", scope: !2630, file: !25, line: 37, baseType: !2657, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!443, !2491, !2363, !7}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "request_merge", scope: !2630, file: !25, line: 38, baseType: !2661, size: 64, offset: 448)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!319, !2479, !2664, !2363}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "request_merged", scope: !2630, file: !25, line: 39, baseType: !2666, size: 64, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !2479, !2483, !24}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "requests_merged", scope: !2630, file: !25, line: 40, baseType: !2670, size: 64, offset: 576)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2479, !2483, !2483}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "limit_depth", scope: !2630, file: !25, line: 41, baseType: !2674, size: 64, offset: 640)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !7, !2677}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_alloc_data", file: !25, line: 26, flags: DIFlagFwdDecl)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_request", scope: !2630, file: !25, line: 42, baseType: !2680, size: 64, offset: 704)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !2483}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "finish_request", scope: !2630, file: !25, line: 43, baseType: !2680, size: 64, offset: 768)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "insert_requests", scope: !2630, file: !25, line: 44, baseType: !2685, size: 64, offset: 832)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !2491, !431, !443}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_request", scope: !2630, file: !25, line: 45, baseType: !2689, size: 64, offset: 896)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!2483, !2491}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "has_work", scope: !2630, file: !25, line: 46, baseType: !2693, size: 64, offset: 960)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!443, !2491}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "completed_request", scope: !2630, file: !25, line: 47, baseType: !2697, size: 64, offset: 1024)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !2483, !337}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_request", scope: !2630, file: !25, line: 48, baseType: !2680, size: 64, offset: 1088)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "former_request", scope: !2630, file: !25, line: 49, baseType: !2702, size: 64, offset: 1152)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!2483, !2479, !2483}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "next_request", scope: !2630, file: !25, line: 50, baseType: !2702, size: 64, offset: 1216)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "init_icq", scope: !2630, file: !25, line: 51, baseType: !2707, size: 64, offset: 1280)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !2528}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "exit_icq", scope: !2630, file: !25, line: 52, baseType: !2707, size: 64, offset: 1344)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "icq_size", scope: !2626, file: !25, line: 74, baseType: !313, size: 64, offset: 1472)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "icq_align", scope: !2626, file: !25, line: 75, baseType: !313, size: 64, offset: 1536)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_attrs", scope: !2626, file: !25, line: 76, baseType: !2714, size: 64, offset: 1600)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elv_fs_entry", file: !25, line: 57, size: 256, elements: !2716)
!2716 = !{!2717, !2718, !2722}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2715, file: !25, line: 58, baseType: !1309, size: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2715, file: !25, line: 59, baseType: !2719, size: 64, offset: 128)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!721, !2621, !632}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2715, file: !25, line: 60, baseType: !2723, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!721, !2621, !367, !313}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_name", scope: !2626, file: !25, line: 77, baseType: !367, size: 64, offset: 1664)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_alias", scope: !2626, file: !25, line: 78, baseType: !367, size: 64, offset: 1728)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_features", scope: !2626, file: !25, line: 79, baseType: !2729, size: 32, offset: 1792)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_owner", scope: !2626, file: !25, line: 80, baseType: !495, size: 64, offset: 1856)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "icq_cache_name", scope: !2626, file: !25, line: 87, baseType: !2732, size: 176, offset: 1920)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 176, elements: !2733)
!2733 = !{!2734}
!2734 = !DISubrange(count: 22)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2626, file: !25, line: 88, baseType: !428, size: 128, offset: 2112)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "elevator_data", scope: !2622, file: !25, line: 104, baseType: !312, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2622, file: !25, line: 105, baseType: !1241, size: 512, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2622, file: !25, line: 106, baseType: !886, size: 192, offset: 640)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !2622, file: !25, line: 107, baseType: !7, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2622, file: !25, line: 108, baseType: !2741, size: 4096, offset: 896)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 4096, elements: !1282)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2480, file: !19, line: 403, baseType: !1217, size: 128, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2480, file: !19, line: 405, baseType: !2744, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !19, line: 43, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2480, file: !19, line: 406, baseType: !2747, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !19, line: 42, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2480, file: !19, line: 408, baseType: !2750, size: 64, offset: 384)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !19, line: 408, flags: DIFlagFwdDecl)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2480, file: !19, line: 411, baseType: !2488, size: 64, offset: 448)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2480, file: !19, line: 413, baseType: !7, size: 32, offset: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "queue_hw_ctx", scope: !2480, file: !19, line: 416, baseType: !2756, size: 64, offset: 576)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2480, file: !19, line: 417, baseType: !7, size: 32, offset: 640)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !2480, file: !19, line: 419, baseType: !2759, size: 64, offset: 704)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !32, line: 165, size: 4672, elements: !2761)
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2772, !2773, !2774, !2775, !2776, !2777, !2835, !2836, !2837, !2839, !2841, !2842}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2760, file: !32, line: 166, baseType: !337, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2760, file: !32, line: 167, baseType: !986, size: 192, align: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2760, file: !32, line: 168, baseType: !428, size: 128, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2760, file: !32, line: 169, baseType: !318, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2760, file: !32, line: 170, baseType: !318, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2760, file: !32, line: 172, baseType: !2768, size: 32, offset: 512)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2769, line: 19, size: 32, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2768, file: !2769, line: 20, baseType: !1493, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2760, file: !32, line: 173, baseType: !7, size: 32, offset: 544)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2760, file: !32, line: 174, baseType: !7, size: 32, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2760, file: !32, line: 175, baseType: !7, size: 32, offset: 608)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2760, file: !32, line: 175, baseType: !7, size: 32, offset: 640)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2760, file: !32, line: 181, baseType: !890, size: 64, offset: 704)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2760, file: !32, line: 183, baseType: !2778, size: 2688, offset: 768)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !32, line: 107, size: 2688, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2809, !2810, !2811, !2812, !2813, !2833, !2834}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2778, file: !32, line: 108, baseType: !2759, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2778, file: !32, line: 110, baseType: !318, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2778, file: !32, line: 111, baseType: !318, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2778, file: !32, line: 113, baseType: !428, size: 128, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2778, file: !32, line: 114, baseType: !428, size: 128, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2778, file: !32, line: 115, baseType: !428, size: 128, offset: 448)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2778, file: !32, line: 116, baseType: !428, size: 128, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2778, file: !32, line: 117, baseType: !898, offset: 704)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2778, file: !32, line: 119, baseType: !2789, size: 256, offset: 704)
!2789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2790, size: 256, elements: !1425)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2791, line: 97, size: 64, elements: !2792)
!2791 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/lizy2001/genbc/linux")
!2792 = !{!2793}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2790, file: !2791, line: 98, baseType: !896, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "congested", scope: !2778, file: !32, line: 121, baseType: !318, size: 64, offset: 960)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2778, file: !32, line: 123, baseType: !318, size: 64, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2778, file: !32, line: 124, baseType: !318, size: 64, offset: 1088)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2778, file: !32, line: 125, baseType: !318, size: 64, offset: 1152)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2778, file: !32, line: 126, baseType: !318, size: 64, offset: 1216)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2778, file: !32, line: 127, baseType: !318, size: 64, offset: 1280)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2778, file: !32, line: 135, baseType: !318, size: 64, offset: 1344)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2778, file: !32, line: 136, baseType: !318, size: 64, offset: 1408)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2778, file: !32, line: 138, baseType: !2803, size: 128, offset: 1472)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2804, line: 76, size: 128, elements: !2805)
!2804 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/lizy2001/genbc/linux")
!2805 = !{!2806, !2807, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2803, file: !2804, line: 78, baseType: !2790, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2803, file: !2804, line: 80, baseType: !7, size: 32, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2803, file: !2804, line: 81, baseType: !999, offset: 96)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2778, file: !32, line: 139, baseType: !319, size: 32, offset: 1600)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2778, file: !32, line: 140, baseType: !31, size: 32, offset: 1632)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2778, file: !32, line: 142, baseType: !898, offset: 1664)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2778, file: !32, line: 143, baseType: !428, size: 128, offset: 1664)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2778, file: !32, line: 144, baseType: !2814, size: 704, offset: 1792)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2019, line: 115, size: 704, elements: !2815)
!2815 = !{!2816, !2817, !2829, !2832}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2814, file: !2019, line: 116, baseType: !2018, size: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2814, file: !2019, line: 117, baseType: !2818, size: 320, offset: 256)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2819, line: 11, size: 320, elements: !2820)
!2819 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2820 = !{!2821, !2822, !2823, !2828}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2818, file: !2819, line: 16, baseType: !785, size: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2818, file: !2819, line: 17, baseType: !318, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2818, file: !2819, line: 18, baseType: !2824, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2818, file: !2819, line: 19, baseType: !320, size: 32, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2814, file: !2019, line: 120, baseType: !2830, size: 64, offset: 576)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2019, line: 18, flags: DIFlagFwdDecl)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2814, file: !2019, line: 121, baseType: !319, size: 32, offset: 640)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_sleep", scope: !2778, file: !32, line: 146, baseType: !318, size: 64, offset: 2496)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2778, file: !32, line: 148, baseType: !428, size: 128, offset: 2560)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2760, file: !32, line: 184, baseType: !428, size: 128, offset: 3456)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2760, file: !32, line: 190, baseType: !1741, size: 128, offset: 3584)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2760, file: !32, line: 192, baseType: !2838, size: 64, offset: 3712)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2760, file: !32, line: 193, baseType: !2840, size: 512, offset: 3776)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 512, elements: !1282)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2760, file: !32, line: 194, baseType: !2838, size: 64, offset: 4288)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2760, file: !32, line: 196, baseType: !2818, size: 320, offset: 4352)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2480, file: !19, line: 425, baseType: !312, size: 64, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2480, file: !19, line: 430, baseType: !318, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2480, file: !19, line: 436, baseType: !973, size: 32, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2480, file: !19, line: 442, baseType: !319, size: 32, offset: 928)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_gfp", scope: !2480, file: !19, line: 447, baseType: !410, size: 32, offset: 960)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2480, file: !19, line: 449, baseType: !898, offset: 992)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2480, file: !19, line: 454, baseType: !1241, size: 512, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2480, file: !19, line: 459, baseType: !1247, size: 64, offset: 1536)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "integrity", scope: !2480, file: !19, line: 462, baseType: !2852, size: 128, offset: 1600)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity", file: !1208, line: 159, size: 128, elements: !2853)
!2853 = !{!2854, !2883, !2884, !2885, !2886}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !2852, file: !1208, line: 160, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_profile", file: !19, line: 1664, size: 320, elements: !2858)
!2858 = !{!2859, !2873, !2874, !2877, !2882}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "generate_fn", scope: !2857, file: !19, line: 1665, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_processing_fn", file: !19, line: 1660, baseType: !2862)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!2571, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_integrity_iter", file: !19, line: 1651, size: 320, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "prot_buf", scope: !2865, file: !19, line: 1652, baseType: !312, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !2865, file: !19, line: 1653, baseType: !312, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "seed", scope: !2865, file: !19, line: 1654, baseType: !1056, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "data_size", scope: !2865, file: !19, line: 1655, baseType: !7, size: 32, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2865, file: !19, line: 1656, baseType: !393, size: 16, offset: 224)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2865, file: !19, line: 1657, baseType: !367, size: 64, offset: 256)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "verify_fn", scope: !2857, file: !19, line: 1666, baseType: !2860, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_fn", scope: !2857, file: !19, line: 1667, baseType: !2875, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_prepare_fn", file: !19, line: 1661, baseType: !2681)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "complete_fn", scope: !2857, file: !19, line: 1668, baseType: !2878, size: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "integrity_complete_fn", file: !19, line: 1662, baseType: !2880)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !2483, !7}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2857, file: !19, line: 1669, baseType: !367, size: 64, offset: 256)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2852, file: !1208, line: 161, baseType: !385, size: 8, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "tuple_size", scope: !2852, file: !1208, line: 162, baseType: !385, size: 8, offset: 72)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "interval_exp", scope: !2852, file: !1208, line: 163, baseType: !385, size: 8, offset: 80)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "tag_size", scope: !2852, file: !1208, line: 164, baseType: !385, size: 8, offset: 88)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2480, file: !19, line: 466, baseType: !2838, size: 64, offset: 1728)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2480, file: !19, line: 467, baseType: !43, size: 32, offset: 1792)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2480, file: !19, line: 468, baseType: !7, size: 32, offset: 1824)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2480, file: !19, line: 474, baseType: !318, size: 64, offset: 1856)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2480, file: !19, line: 476, baseType: !7, size: 32, offset: 1920)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2480, file: !19, line: 477, baseType: !7, size: 32, offset: 1952)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2480, file: !19, line: 484, baseType: !7, size: 32, offset: 1984)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "poll_nsec", scope: !2480, file: !19, line: 485, baseType: !319, size: 32, offset: 2016)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cb", scope: !2480, file: !19, line: 487, baseType: !2896, size: 64, offset: 2048)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_stat_callback", file: !19, line: 44, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "poll_stat", scope: !2480, file: !19, line: 488, baseType: !2899, size: 5120, offset: 2112)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2900, size: 5120, elements: !2145)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_rq_stat", file: !1191, line: 540, size: 320, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905, !2906}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !2900, file: !1191, line: 541, baseType: !337, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !2900, file: !1191, line: 542, baseType: !337, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2900, file: !1191, line: 543, baseType: !337, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_samples", scope: !2900, file: !1191, line: 544, baseType: !320, size: 32, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2900, file: !1191, line: 545, baseType: !337, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2480, file: !19, line: 490, baseType: !2818, size: 320, offset: 7232)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2480, file: !19, line: 491, baseType: !2018, size: 256, offset: 7552)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_sbitmap", scope: !2480, file: !19, line: 493, baseType: !973, size: 32, offset: 7808)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2480, file: !19, line: 495, baseType: !428, size: 128, offset: 7872)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2480, file: !19, line: 502, baseType: !2912, size: 896, offset: 8000)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !19, line: 321, size: 896, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_pfn", scope: !2912, file: !19, line: 322, baseType: !318, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2912, file: !19, line: 323, baseType: !318, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2912, file: !19, line: 324, baseType: !318, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2912, file: !19, line: 326, baseType: !7, size: 32, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2912, file: !19, line: 327, baseType: !7, size: 32, offset: 224)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2912, file: !19, line: 328, baseType: !7, size: 32, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2912, file: !19, line: 329, baseType: !7, size: 32, offset: 288)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2912, file: !19, line: 330, baseType: !7, size: 32, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2912, file: !19, line: 331, baseType: !7, size: 32, offset: 352)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2912, file: !19, line: 332, baseType: !7, size: 32, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2912, file: !19, line: 333, baseType: !7, size: 32, offset: 416)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2912, file: !19, line: 334, baseType: !7, size: 32, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2912, file: !19, line: 335, baseType: !7, size: 32, offset: 480)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2912, file: !19, line: 336, baseType: !7, size: 32, offset: 512)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2912, file: !19, line: 337, baseType: !7, size: 32, offset: 544)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_same_sectors", scope: !2912, file: !19, line: 338, baseType: !7, size: 32, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2912, file: !19, line: 339, baseType: !7, size: 32, offset: 608)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2912, file: !19, line: 340, baseType: !7, size: 32, offset: 640)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2912, file: !19, line: 341, baseType: !7, size: 32, offset: 672)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2912, file: !19, line: 342, baseType: !7, size: 32, offset: 704)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2912, file: !19, line: 344, baseType: !393, size: 16, offset: 736)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2912, file: !19, line: 345, baseType: !393, size: 16, offset: 752)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2912, file: !19, line: 346, baseType: !393, size: 16, offset: 768)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2912, file: !19, line: 348, baseType: !385, size: 8, offset: 784)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2912, file: !19, line: 349, baseType: !385, size: 8, offset: 792)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2912, file: !19, line: 350, baseType: !385, size: 8, offset: 800)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2912, file: !19, line: 351, baseType: !50, size: 32, offset: 832)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2480, file: !19, line: 504, baseType: !7, size: 32, offset: 8896)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !2480, file: !19, line: 534, baseType: !7, size: 32, offset: 8928)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !2480, file: !19, line: 535, baseType: !7, size: 32, offset: 8960)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2480, file: !19, line: 536, baseType: !319, size: 32, offset: 8992)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2480, file: !19, line: 537, baseType: !886, size: 192, offset: 9024)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2480, file: !19, line: 544, baseType: !2947, size: 64, offset: 9216)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !19, line: 40, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2480, file: !19, line: 546, baseType: !428, size: 128, offset: 9280)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2480, file: !19, line: 547, baseType: !898, offset: 9408)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2480, file: !19, line: 548, baseType: !2814, size: 704, offset: 9408)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2480, file: !19, line: 550, baseType: !886, size: 192, offset: 10112)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2480, file: !19, line: 551, baseType: !886, size: 192, offset: 10304)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2480, file: !19, line: 557, baseType: !428, size: 128, offset: 10496)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2480, file: !19, line: 558, baseType: !898, offset: 10624)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2480, file: !19, line: 560, baseType: !319, size: 32, offset: 10624)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !2480, file: !19, line: 563, baseType: !2958, size: 256, offset: 10688)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_class_device", file: !2959, line: 18, size: 256, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!2960 = !{!2961, !2962, !2963, !2964}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "class_dev", scope: !2958, file: !2959, line: 19, baseType: !2838, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !2958, file: !2959, line: 20, baseType: !319, size: 32, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2958, file: !2959, line: 21, baseType: !2479, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2958, file: !2959, line: 22, baseType: !2965, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_ops", file: !2959, line: 10, size: 256, elements: !2968)
!2968 = !{!2969, !3010, !3014, !3018}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "check_proto", scope: !2967, file: !2959, line: 11, baseType: !2970, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!319, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_io_v4", file: !2975, line: 22, size: 1280, elements: !2976)
!2975 = !DIFile(filename: "./include/uapi/linux/bsg.h", directory: "/home/lizy2001/genbc/linux")
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "guard", scope: !2974, file: !2975, line: 23, baseType: !1705, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2974, file: !2975, line: 24, baseType: !322, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "subprotocol", scope: !2974, file: !2975, line: 25, baseType: !322, size: 32, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "request_len", scope: !2974, file: !2975, line: 28, baseType: !322, size: 32, offset: 96)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2974, file: !2975, line: 29, baseType: !338, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "request_tag", scope: !2974, file: !2975, line: 30, baseType: !338, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "request_attr", scope: !2974, file: !2975, line: 31, baseType: !322, size: 32, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "request_priority", scope: !2974, file: !2975, line: 32, baseType: !322, size: 32, offset: 288)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "request_extra", scope: !2974, file: !2975, line: 33, baseType: !322, size: 32, offset: 320)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "max_response_len", scope: !2974, file: !2975, line: 34, baseType: !322, size: 32, offset: 352)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !2974, file: !2975, line: 35, baseType: !338, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "dout_iovec_count", scope: !2974, file: !2975, line: 38, baseType: !322, size: 32, offset: 448)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xfer_len", scope: !2974, file: !2975, line: 40, baseType: !322, size: 32, offset: 480)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "din_iovec_count", scope: !2974, file: !2975, line: 41, baseType: !322, size: 32, offset: 512)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "din_xfer_len", scope: !2974, file: !2975, line: 42, baseType: !322, size: 32, offset: 544)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dout_xferp", scope: !2974, file: !2975, line: 43, baseType: !338, size: 64, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "din_xferp", scope: !2974, file: !2975, line: 44, baseType: !338, size: 64, offset: 640)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2974, file: !2975, line: 46, baseType: !322, size: 32, offset: 704)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2974, file: !2975, line: 47, baseType: !322, size: 32, offset: 736)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "usr_ptr", scope: !2974, file: !2975, line: 48, baseType: !338, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "spare_in", scope: !2974, file: !2975, line: 49, baseType: !322, size: 32, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "driver_status", scope: !2974, file: !2975, line: 51, baseType: !322, size: 32, offset: 864)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "transport_status", scope: !2974, file: !2975, line: 52, baseType: !322, size: 32, offset: 896)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "device_status", scope: !2974, file: !2975, line: 53, baseType: !322, size: 32, offset: 928)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "retry_delay", scope: !2974, file: !2975, line: 54, baseType: !322, size: 32, offset: 960)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2974, file: !2975, line: 55, baseType: !322, size: 32, offset: 992)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !2974, file: !2975, line: 56, baseType: !322, size: 32, offset: 1024)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "response_len", scope: !2974, file: !2975, line: 57, baseType: !322, size: 32, offset: 1056)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "din_resid", scope: !2974, file: !2975, line: 58, baseType: !1705, size: 32, offset: 1088)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dout_resid", scope: !2974, file: !2975, line: 59, baseType: !1705, size: 32, offset: 1120)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "generated_tag", scope: !2974, file: !2975, line: 60, baseType: !338, size: 64, offset: 1152)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "spare_out", scope: !2974, file: !2975, line: 61, baseType: !322, size: 32, offset: 1216)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2974, file: !2975, line: 63, baseType: !322, size: 32, offset: 1248)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fill_hdr", scope: !2967, file: !2959, line: 12, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!319, !2483, !2973, !2406}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "complete_rq", scope: !2967, file: !2959, line: 14, baseType: !3015, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!319, !2483, !2973}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "free_rq", scope: !2967, file: !2959, line: 15, baseType: !2680, size: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2480, file: !19, line: 570, baseType: !518, size: 128, align: 64, offset: 10944)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2480, file: !19, line: 571, baseType: !1741, size: 128, offset: 11072)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2480, file: !19, line: 576, baseType: !886, size: 192, offset: 11200)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2480, file: !19, line: 578, baseType: !3023, size: 64, offset: 11392)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !19, line: 578, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2480, file: !19, line: 579, baseType: !428, size: 128, offset: 11456)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2480, file: !19, line: 580, baseType: !3027, size: 2368, offset: 11584)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2360, line: 682, size: 2368, elements: !3028)
!3028 = !{!3029, !3030, !3031, !3052, !3053, !3054, !3055, !3056, !3057, !3058}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !3027, file: !2360, line: 683, baseType: !2551, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !3027, file: !2360, line: 684, baseType: !7, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !3027, file: !2360, line: 686, baseType: !3032, size: 448, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !3033, line: 26, baseType: !3034)
!3033 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/lizy2001/genbc/linux")
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !3033, line: 16, size: 448, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3046, !3051}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3034, file: !3033, line: 17, baseType: !898)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !3034, file: !3033, line: 18, baseType: !319, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !3034, file: !3033, line: 19, baseType: !319, size: 32, offset: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3034, file: !3033, line: 20, baseType: !1047, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !3034, file: !3033, line: 22, baseType: !312, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3034, file: !3033, line: 23, baseType: !3042, size: 64, offset: 192)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !3033, line: 13, baseType: !3044)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!312, !410, !312}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3034, file: !3033, line: 24, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !3033, line: 14, baseType: !3049)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !312, !312}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3034, file: !3033, line: 25, baseType: !1741, size: 128, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !3027, file: !2360, line: 687, baseType: !3032, size: 448, offset: 576)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "bio_integrity_pool", scope: !3027, file: !2360, line: 689, baseType: !3032, size: 448, offset: 1024)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_integrity_pool", scope: !3027, file: !2360, line: 690, baseType: !3032, size: 448, offset: 1472)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !3027, file: !2360, line: 697, baseType: !898, offset: 1920)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !3027, file: !2360, line: 698, baseType: !2359, size: 128, offset: 1920)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !3027, file: !2360, line: 699, baseType: !2018, size: 256, offset: 2048)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !3027, file: !2360, line: 700, baseType: !2830, size: 64, offset: 2304)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2480, file: !19, line: 582, baseType: !535, size: 64, offset: 13952)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2480, file: !19, line: 589, baseType: !443, size: 8, offset: 14016)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !2480, file: !19, line: 591, baseType: !313, size: 64, offset: 14080)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "write_hints", scope: !2480, file: !19, line: 594, baseType: !3063, size: 320, offset: 14144)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 320, elements: !485)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2369, file: !1208, line: 191, baseType: !312, size: 64, offset: 7168)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2369, file: !1208, line: 193, baseType: !319, size: 32, offset: 7232)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2369, file: !1208, line: 194, baseType: !318, size: 64, offset: 7296)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_sem", scope: !2369, file: !1208, line: 196, baseType: !993, size: 256, offset: 7360)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2369, file: !1208, line: 197, baseType: !1247, size: 64, offset: 7616)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2369, file: !1208, line: 199, baseType: !3070, size: 64, offset: 7680)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !1208, line: 199, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2369, file: !1208, line: 200, baseType: !973, size: 32, offset: 7744)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2369, file: !1208, line: 201, baseType: !3074, size: 64, offset: 7808)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !1208, line: 156, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "integrity_kobj", scope: !2369, file: !1208, line: 203, baseType: !1241, size: 512, offset: 7872)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2369, file: !1208, line: 208, baseType: !319, size: 32, offset: 8384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2369, file: !1208, line: 209, baseType: !3079, size: 64, offset: 8448)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !1208, line: 157, flags: DIFlagFwdDecl)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2369, file: !1208, line: 210, baseType: !3082, offset: 8512)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !792, line: 192, elements: !793)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2364, file: !1191, line: 206, baseType: !7, size: 32, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2364, file: !1191, line: 210, baseType: !393, size: 16, offset: 160)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2364, file: !1191, line: 211, baseType: !393, size: 16, offset: 176)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "bi_write_hint", scope: !2364, file: !1191, line: 212, baseType: !393, size: 16, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2364, file: !1191, line: 213, baseType: !2571, size: 8, offset: 208)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "bi_partno", scope: !2364, file: !1191, line: 214, baseType: !452, size: 8, offset: 216)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2364, file: !1191, line: 215, baseType: !973, size: 32, offset: 224)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2364, file: !1191, line: 217, baseType: !3091, size: 192, offset: 256)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !2514, line: 37, size: 192, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !3091, file: !2514, line: 38, baseType: !1056, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !3091, file: !2514, line: 40, baseType: !7, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !3091, file: !2514, line: 42, baseType: !7, size: 32, offset: 96)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !3091, file: !2514, line: 44, baseType: !7, size: 32, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2364, file: !1191, line: 219, baseType: !3098, size: 64, offset: 448)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !1191, line: 19, baseType: !3100)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !2363}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2364, file: !1191, line: 221, baseType: !312, size: 64, offset: 512)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !2364, file: !1191, line: 240, baseType: !3104, size: 64, offset: 576)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2364, file: !1191, line: 240, size: 64, elements: !3105)
!3105 = !{!3106}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "bi_integrity", scope: !3104, file: !1191, line: 242, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_integrity_payload", file: !2360, line: 313, size: 832, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3120}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "bip_bio", scope: !3108, file: !2360, line: 314, baseType: !2363, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "bip_iter", scope: !3108, file: !2360, line: 316, baseType: !3091, size: 192, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "bip_slab", scope: !3108, file: !2360, line: 318, baseType: !393, size: 16, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vcnt", scope: !3108, file: !2360, line: 319, baseType: !393, size: 16, offset: 272)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "bip_max_vcnt", scope: !3108, file: !2360, line: 320, baseType: !393, size: 16, offset: 288)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "bip_flags", scope: !3108, file: !2360, line: 321, baseType: !393, size: 16, offset: 304)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "bio_iter", scope: !3108, file: !2360, line: 323, baseType: !3091, size: 192, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "bip_work", scope: !3108, file: !2360, line: 325, baseType: !2018, size: 256, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "bip_vec", scope: !3108, file: !2360, line: 327, baseType: !3119, size: 64, offset: 768)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "bip_inline_vecs", scope: !3108, file: !2360, line: 328, baseType: !3121, offset: 832)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2513, elements: !2389)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2364, file: !1191, line: 246, baseType: !393, size: 16, offset: 640)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2364, file: !1191, line: 252, baseType: !393, size: 16, offset: 656)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2364, file: !1191, line: 254, baseType: !973, size: 32, offset: 672)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2364, file: !1191, line: 256, baseType: !3119, size: 64, offset: 704)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2364, file: !1191, line: 258, baseType: !3127, size: 64, offset: 768)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2364, file: !1191, line: 265, baseType: !3121, offset: 832)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2359, file: !2360, line: 556, baseType: !2363, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1480, file: !1481, line: 1050, baseType: !3131, size: 64, offset: 10688)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !19, line: 1236, size: 320, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3132, file: !19, line: 1237, baseType: !428, size: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3132, file: !19, line: 1238, baseType: !428, size: 128, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3132, file: !19, line: 1239, baseType: !393, size: 16, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3132, file: !19, line: 1240, baseType: !443, size: 8, offset: 272)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "nowait", scope: !3132, file: !19, line: 1241, baseType: !443, size: 8, offset: 280)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1480, file: !1481, line: 1054, baseType: !3140, size: 64, offset: 10752)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1144, line: 131, size: 64, elements: !3142)
!3142 = !{!3143}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_slab", scope: !3141, file: !1144, line: 132, baseType: !318, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1480, file: !1481, line: 1056, baseType: !2759, size: 64, offset: 10816)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1480, file: !1481, line: 1058, baseType: !2534, size: 64, offset: 10880)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1480, file: !1481, line: 1061, baseType: !3147, size: 64, offset: 10944)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1481, line: 43, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1480, file: !1481, line: 1064, baseType: !318, size: 64, offset: 11008)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1480, file: !1481, line: 1065, baseType: !3151, size: 64, offset: 11072)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2208, line: 14, baseType: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2208, line: 12, size: 384, elements: !3154)
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !2208, line: 13, baseType: !3156, size: 384)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !2208, line: 13, size: 384, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3161}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3156, file: !2208, line: 13, baseType: !319, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3156, file: !2208, line: 13, baseType: !319, size: 32, offset: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3156, file: !2208, line: 13, baseType: !319, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3156, file: !2208, line: 13, baseType: !3162, size: 256, offset: 128)
!3162 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3163, line: 32, size: 256, elements: !3164)
!3163 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3164 = !{!3165, !3170, !3183, !3189, !3198, !3218, !3223}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3162, file: !3163, line: 37, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3163, line: 34, size: 64, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3166, file: !3163, line: 35, baseType: !1720, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3166, file: !3163, line: 36, baseType: !587, size: 32, offset: 32)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3162, file: !3163, line: 45, baseType: !3171, size: 192)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3163, line: 40, size: 192, elements: !3172)
!3172 = !{!3173, !3175, !3176, !3182}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3171, file: !3163, line: 41, baseType: !3174, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !316, line: 95, baseType: !319)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3171, file: !3163, line: 42, baseType: !319, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3171, file: !3163, line: 43, baseType: !3177, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3163, line: 11, baseType: !3178)
!3178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3163, line: 8, size: 64, elements: !3179)
!3179 = !{!3180, !3181}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3178, file: !3163, line: 9, baseType: !319, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3178, file: !3163, line: 10, baseType: !312, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3171, file: !3163, line: 44, baseType: !319, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3162, file: !3163, line: 52, baseType: !3184, size: 128)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3163, line: 48, size: 128, elements: !3185)
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3184, file: !3163, line: 49, baseType: !1720, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3184, file: !3163, line: 50, baseType: !587, size: 32, offset: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3184, file: !3163, line: 51, baseType: !3177, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3162, file: !3163, line: 61, baseType: !3190, size: 256)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3163, line: 55, size: 256, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3190, file: !3163, line: 56, baseType: !1720, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3190, file: !3163, line: 57, baseType: !587, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3190, file: !3163, line: 58, baseType: !319, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3190, file: !3163, line: 59, baseType: !3196, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !316, line: 94, baseType: !723)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3190, file: !3163, line: 60, baseType: !3196, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3162, file: !3163, line: 95, baseType: !3199, size: 256)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3163, line: 64, size: 256, elements: !3200)
!3200 = !{!3201, !3202}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3199, file: !3163, line: 65, baseType: !312, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !3199, file: !3163, line: 77, baseType: !3203, size: 192, offset: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3199, file: !3163, line: 77, size: 192, elements: !3204)
!3204 = !{!3205, !3206, !3213}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3203, file: !3163, line: 82, baseType: !1148, size: 16)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3203, file: !3163, line: 88, baseType: !3207, size: 192)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3203, file: !3163, line: 84, size: 192, elements: !3208)
!3208 = !{!3209, !3211, !3212}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3207, file: !3163, line: 85, baseType: !3210, size: 64)
!3210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 64, elements: !1593)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3207, file: !3163, line: 86, baseType: !312, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3207, file: !3163, line: 87, baseType: !312, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3203, file: !3163, line: 93, baseType: !3214, size: 96)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3203, file: !3163, line: 90, size: 96, elements: !3215)
!3215 = !{!3216, !3217}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3214, file: !3163, line: 91, baseType: !3210, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3214, file: !3163, line: 92, baseType: !322, size: 32, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3162, file: !3163, line: 101, baseType: !3219, size: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3163, line: 98, size: 128, elements: !3220)
!3220 = !{!3221, !3222}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3219, file: !3163, line: 99, baseType: !684, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3219, file: !3163, line: 100, baseType: !319, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3162, file: !3163, line: 108, baseType: !3224, size: 128)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3162, file: !3163, line: 104, size: 128, elements: !3225)
!3225 = !{!3226, !3227, !3228}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3224, file: !3163, line: 105, baseType: !312, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3224, file: !3163, line: 106, baseType: !319, size: 32, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3224, file: !3163, line: 107, baseType: !7, size: 32, offset: 96)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1480, file: !1481, line: 1067, baseType: !2280, offset: 11136)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1480, file: !1481, line: 1099, baseType: !3231, size: 64, offset: 11136)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1481, line: 56, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1480, file: !1481, line: 1103, baseType: !428, size: 128, offset: 11200)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1480, file: !1481, line: 1104, baseType: !3235, size: 64, offset: 11328)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1481, line: 46, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1480, file: !1481, line: 1105, baseType: !886, size: 192, offset: 11392)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1480, file: !1481, line: 1106, baseType: !7, size: 32, offset: 11584)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1480, file: !1481, line: 1109, baseType: !3240, size: 128, offset: 11648)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3241, size: 128, elements: !1828)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1481, line: 51, flags: DIFlagFwdDecl)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1480, file: !1481, line: 1110, baseType: !886, size: 192, offset: 11776)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1480, file: !1481, line: 1111, baseType: !428, size: 128, offset: 11968)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1480, file: !1481, line: 1173, baseType: !3246, size: 64, offset: 12096)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3248, line: 62, size: 256, align: 256, elements: !3249)
!3248 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3249 = !{!3250, !3251, !3252, !3257}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3247, file: !3248, line: 75, baseType: !322, size: 32)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3247, file: !3248, line: 90, baseType: !322, size: 32, offset: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3247, file: !3248, line: 124, baseType: !3253, size: 64, offset: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3247, file: !3248, line: 109, size: 64, elements: !3254)
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3253, file: !3248, line: 110, baseType: !338, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3253, file: !3248, line: 112, baseType: !338, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3247, file: !3248, line: 144, baseType: !322, size: 32, offset: 128)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1480, file: !1481, line: 1174, baseType: !320, size: 32, offset: 12160)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1480, file: !1481, line: 1179, baseType: !318, size: 64, offset: 12224)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1480, file: !1481, line: 1182, baseType: !3261, size: 128, offset: 12288)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1421, line: 76, size: 128, elements: !3262)
!3262 = !{!3263, !3268, !3269}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3261, file: !1421, line: 85, baseType: !3264, size: 64)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3265, line: 7, size: 64, elements: !3266)
!3265 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3266 = !{!3267}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3264, file: !3265, line: 12, baseType: !1628, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3261, file: !1421, line: 88, baseType: !443, size: 8, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3261, file: !1421, line: 95, baseType: !443, size: 8, offset: 72)
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1481, line: 1184, baseType: !3271, size: 128, offset: 12416)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1480, file: !1481, line: 1184, size: 128, elements: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3271, file: !1481, line: 1185, baseType: !1493, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3271, file: !1481, line: 1186, baseType: !518, size: 128, align: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1480, file: !1481, line: 1190, baseType: !3276, size: 64, offset: 12544)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1481, line: 53, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1480, file: !1481, line: 1192, baseType: !3279, size: 128, offset: 12608)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1421, line: 64, size: 128, elements: !3280)
!3280 = !{!3281, !3282, !3283}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3279, file: !1421, line: 65, baseType: !947, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3279, file: !1421, line: 67, baseType: !322, size: 32, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3279, file: !1421, line: 68, baseType: !322, size: 32, offset: 96)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1480, file: !1481, line: 1206, baseType: !319, size: 32, offset: 12736)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1480, file: !1481, line: 1207, baseType: !319, size: 32, offset: 12768)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1480, file: !1481, line: 1209, baseType: !318, size: 64, offset: 12800)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1480, file: !1481, line: 1219, baseType: !337, size: 64, offset: 12864)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1480, file: !1481, line: 1220, baseType: !337, size: 64, offset: 12928)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1480, file: !1481, line: 1317, baseType: !319, size: 32, offset: 12992)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1480, file: !1481, line: 1319, baseType: !1479, size: 64, offset: 13056)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1480, file: !1481, line: 1322, baseType: !3292, size: 64, offset: 13120)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3294, line: 56, size: 512, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3304}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3293, file: !3294, line: 57, baseType: !3292, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3293, file: !3294, line: 58, baseType: !312, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3293, file: !3294, line: 59, baseType: !318, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3293, file: !3294, line: 60, baseType: !318, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3293, file: !3294, line: 61, baseType: !1046, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3293, file: !3294, line: 62, baseType: !7, size: 32, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3293, file: !3294, line: 63, baseType: !3303, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !314, line: 153, baseType: !337)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3293, file: !3294, line: 64, baseType: !3305, size: 64, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1480, file: !1481, line: 1326, baseType: !1493, size: 32, offset: 13184)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1480, file: !1481, line: 1342, baseType: !312, size: 64, offset: 13248)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1480, file: !1481, line: 1343, baseType: !338, size: 64, offset: 13312)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1480, file: !1481, line: 1344, baseType: !337, size: 64, offset: 13376)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1480, file: !1481, line: 1345, baseType: !338, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1480, file: !1481, line: 1346, baseType: !338, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1480, file: !1481, line: 1347, baseType: !338, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1480, file: !1481, line: 1348, baseType: !518, size: 128, align: 64, offset: 13504)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1480, file: !1481, line: 1358, baseType: !3316, size: 34816, offset: 13824)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3317, line: 485, size: 34816, elements: !3318)
!3317 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3318 = !{!3319, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3348, !3349, !3350, !3351, !3352, !3353, !3356, !3357, !3358}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3316, file: !3317, line: 487, baseType: !3320, size: 192)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3321, size: 192, elements: !798)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3322, line: 16, size: 64, elements: !3323)
!3322 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3321, file: !3322, line: 17, baseType: !1085, size: 16)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3321, file: !3322, line: 18, baseType: !1085, size: 16, offset: 16)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3321, file: !3322, line: 19, baseType: !1085, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3321, file: !3322, line: 19, baseType: !1085, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3321, file: !3322, line: 19, baseType: !1085, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3321, file: !3322, line: 19, baseType: !1085, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3321, file: !3322, line: 19, baseType: !1085, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3321, file: !3322, line: 20, baseType: !1085, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3321, file: !3322, line: 20, baseType: !1085, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3321, file: !3322, line: 20, baseType: !1085, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3321, file: !3322, line: 20, baseType: !1085, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3321, file: !3322, line: 20, baseType: !1085, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3321, file: !3322, line: 20, baseType: !1085, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3316, file: !3317, line: 491, baseType: !318, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3316, file: !3317, line: 495, baseType: !393, size: 16, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3316, file: !3317, line: 496, baseType: !393, size: 16, offset: 272)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3316, file: !3317, line: 497, baseType: !393, size: 16, offset: 288)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3316, file: !3317, line: 498, baseType: !393, size: 16, offset: 304)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3316, file: !3317, line: 502, baseType: !318, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3316, file: !3317, line: 503, baseType: !318, size: 64, offset: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3316, file: !3317, line: 514, baseType: !3345, size: 256, offset: 448)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3346, size: 256, elements: !1425)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3317, line: 483, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3316, file: !3317, line: 516, baseType: !318, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3316, file: !3317, line: 518, baseType: !318, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3316, file: !3317, line: 520, baseType: !318, size: 64, offset: 832)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3316, file: !3317, line: 521, baseType: !318, size: 64, offset: 896)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3316, file: !3317, line: 522, baseType: !318, size: 64, offset: 960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3316, file: !3317, line: 528, baseType: !3354, size: 64, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3317, line: 10, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3316, file: !3317, line: 535, baseType: !318, size: 64, offset: 1088)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3316, file: !3317, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3316, file: !3317, line: 540, baseType: !3359, size: 33280, offset: 1536)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3360, line: 317, size: 33280, elements: !3361)
!3360 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3361 = !{!3362, !3363, !3364}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3359, file: !3360, line: 330, baseType: !7, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3359, file: !3360, line: 337, baseType: !318, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3359, file: !3360, line: 348, baseType: !3365, size: 32768, offset: 512)
!3365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3360, line: 304, size: 32768, elements: !3366)
!3366 = !{!3367, !3382, !3419, !3469, !3482}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3365, file: !3360, line: 305, baseType: !3368, size: 896)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3360, line: 12, size: 896, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3381}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3368, file: !3360, line: 13, baseType: !320, size: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3368, file: !3360, line: 14, baseType: !320, size: 32, offset: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3368, file: !3360, line: 15, baseType: !320, size: 32, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3368, file: !3360, line: 16, baseType: !320, size: 32, offset: 96)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3368, file: !3360, line: 17, baseType: !320, size: 32, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3368, file: !3360, line: 18, baseType: !320, size: 32, offset: 160)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3368, file: !3360, line: 19, baseType: !320, size: 32, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3368, file: !3360, line: 22, baseType: !3378, size: 640, offset: 224)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 640, elements: !3379)
!3379 = !{!3380}
!3380 = !DISubrange(count: 20)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3368, file: !3360, line: 25, baseType: !320, size: 32, offset: 864)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3365, file: !3360, line: 306, baseType: !3383, size: 4096, align: 128)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3360, line: 34, size: 4096, align: 128, elements: !3384)
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3404, !3405, !3406, !3408, !3410, !3414}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3383, file: !3360, line: 35, baseType: !1085, size: 16)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3383, file: !3360, line: 36, baseType: !1085, size: 16, offset: 16)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3383, file: !3360, line: 37, baseType: !1085, size: 16, offset: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3383, file: !3360, line: 38, baseType: !1085, size: 16, offset: 48)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3360, line: 39, baseType: !3390, size: 128, offset: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3360, line: 39, size: 128, elements: !3391)
!3391 = !{!3392, !3397}
!3392 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3360, line: 40, baseType: !3393, size: 128)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3360, line: 40, size: 128, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3393, file: !3360, line: 41, baseType: !337, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3393, file: !3360, line: 42, baseType: !337, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, scope: !3390, file: !3360, line: 44, baseType: !3398, size: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3390, file: !3360, line: 44, size: 128, elements: !3399)
!3399 = !{!3400, !3401, !3402, !3403}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3398, file: !3360, line: 45, baseType: !320, size: 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3398, file: !3360, line: 46, baseType: !320, size: 32, offset: 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3398, file: !3360, line: 47, baseType: !320, size: 32, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3398, file: !3360, line: 48, baseType: !320, size: 32, offset: 96)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3383, file: !3360, line: 51, baseType: !320, size: 32, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3383, file: !3360, line: 52, baseType: !320, size: 32, offset: 224)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3383, file: !3360, line: 55, baseType: !3407, size: 1024, offset: 256)
!3407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 1024, elements: !2376)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3383, file: !3360, line: 58, baseType: !3409, size: 2048, offset: 1280)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 2048, elements: !1282)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3383, file: !3360, line: 60, baseType: !3411, size: 384, offset: 3328)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 384, elements: !3412)
!3412 = !{!3413}
!3413 = !DISubrange(count: 12)
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3383, file: !3360, line: 62, baseType: !3415, size: 384, offset: 3712)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3383, file: !3360, line: 62, size: 384, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3415, file: !3360, line: 63, baseType: !3411, size: 384)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3415, file: !3360, line: 64, baseType: !3411, size: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3365, file: !3360, line: 307, baseType: !3420, size: 1088)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3360, line: 79, size: 1088, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3468}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3420, file: !3360, line: 80, baseType: !320, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3420, file: !3360, line: 81, baseType: !320, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3420, file: !3360, line: 82, baseType: !320, size: 32, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3420, file: !3360, line: 83, baseType: !320, size: 32, offset: 96)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3420, file: !3360, line: 84, baseType: !320, size: 32, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3420, file: !3360, line: 85, baseType: !320, size: 32, offset: 160)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3420, file: !3360, line: 86, baseType: !320, size: 32, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3420, file: !3360, line: 88, baseType: !3378, size: 640, offset: 224)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3420, file: !3360, line: 89, baseType: !452, size: 8, offset: 864)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3420, file: !3360, line: 90, baseType: !452, size: 8, offset: 872)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3420, file: !3360, line: 91, baseType: !452, size: 8, offset: 880)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3420, file: !3360, line: 92, baseType: !452, size: 8, offset: 888)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3420, file: !3360, line: 93, baseType: !452, size: 8, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3420, file: !3360, line: 94, baseType: !452, size: 8, offset: 904)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3420, file: !3360, line: 95, baseType: !3437, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3439, line: 11, size: 128, elements: !3440)
!3439 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3438, file: !3439, line: 12, baseType: !684, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3438, file: !3439, line: 13, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3445, line: 56, size: 1344, elements: !3446)
!3445 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3444, file: !3445, line: 61, baseType: !318, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3444, file: !3445, line: 62, baseType: !318, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3444, file: !3445, line: 63, baseType: !318, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3444, file: !3445, line: 64, baseType: !318, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3444, file: !3445, line: 65, baseType: !318, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3444, file: !3445, line: 66, baseType: !318, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3444, file: !3445, line: 68, baseType: !318, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3444, file: !3445, line: 69, baseType: !318, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3444, file: !3445, line: 70, baseType: !318, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3444, file: !3445, line: 71, baseType: !318, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3444, file: !3445, line: 72, baseType: !318, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3444, file: !3445, line: 73, baseType: !318, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3444, file: !3445, line: 74, baseType: !318, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3444, file: !3445, line: 75, baseType: !318, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3444, file: !3445, line: 76, baseType: !318, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3444, file: !3445, line: 81, baseType: !318, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3444, file: !3445, line: 83, baseType: !318, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3444, file: !3445, line: 84, baseType: !318, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3444, file: !3445, line: 85, baseType: !318, size: 64, offset: 1152)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3444, file: !3445, line: 86, baseType: !318, size: 64, offset: 1216)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3444, file: !3445, line: 87, baseType: !318, size: 64, offset: 1280)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3420, file: !3360, line: 96, baseType: !320, size: 32, offset: 1024)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3365, file: !3360, line: 308, baseType: !3470, size: 4608, align: 512)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3360, line: 289, size: 4608, align: 512, elements: !3471)
!3471 = !{!3472, !3473, !3480}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3470, file: !3360, line: 290, baseType: !3383, size: 4096, align: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3470, file: !3360, line: 291, baseType: !3474, size: 512, offset: 4096)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3360, line: 268, size: 512, elements: !3475)
!3475 = !{!3476, !3477, !3478}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3474, file: !3360, line: 269, baseType: !337, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3474, file: !3360, line: 270, baseType: !337, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3474, file: !3360, line: 271, baseType: !3479, size: 384, offset: 128)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 384, elements: !1884)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3470, file: !3360, line: 292, baseType: !3481, offset: 4608)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, elements: !2133)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3365, file: !3360, line: 309, baseType: !3483, size: 32768)
!3483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 32768, elements: !3484)
!3484 = !{!3485}
!3485 = !DISubrange(count: 4096)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1476, file: !949, line: 378, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1472, file: !949, line: 384, baseType: !1761, size: 192, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1363, file: !949, line: 500, baseType: !898, offset: 6656)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1363, file: !949, line: 501, baseType: !3491, size: 64, offset: 6656)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !949, line: 387, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1363, file: !949, line: 516, baseType: !1972, size: 64, offset: 6720)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1363, file: !949, line: 519, baseType: !505, size: 64, offset: 6784)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1363, file: !949, line: 521, baseType: !3496, size: 64, offset: 6848)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !949, line: 521, flags: DIFlagFwdDecl)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1363, file: !949, line: 545, baseType: !973, size: 32, offset: 6912)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1363, file: !949, line: 548, baseType: !443, size: 8, offset: 6944)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1363, file: !949, line: 550, baseType: !3501, offset: 6952)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3502, line: 142, elements: !793)
!3502 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1363, file: !949, line: 554, baseType: !2018, size: 256, offset: 6976)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1363, file: !949, line: 557, baseType: !320, size: 32, offset: 7232)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1360, file: !949, line: 565, baseType: !3506, offset: 7296)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, elements: !2389)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1350, file: !949, line: 333, baseType: !3508, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1379, line: 284, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1379, line: 284, size: 64, elements: !3510)
!3510 = !{!3511}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3509, file: !1379, line: 284, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1384, line: 19, baseType: !318)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1350, file: !949, line: 334, baseType: !318, size: 64, offset: 640)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1350, file: !949, line: 343, baseType: !3515, size: 256, offset: 704)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !949, line: 340, size: 256, elements: !3516)
!3516 = !{!3517, !3518}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3515, file: !949, line: 341, baseType: !986, size: 192, align: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3515, file: !949, line: 342, baseType: !318, size: 64, offset: 192)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1350, file: !949, line: 351, baseType: !428, size: 128, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1350, file: !949, line: 353, baseType: !3521, size: 64, offset: 1088)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !949, line: 353, flags: DIFlagFwdDecl)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1350, file: !949, line: 356, baseType: !3524, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !56, line: 557, size: 832, elements: !3527)
!3527 = !{!3528, !3532, !3533, !3537, !3541, !3582, !3586, !3590, !3594, !3595, !3596, !3600, !3604}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3526, file: !56, line: 558, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !1349}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3526, file: !56, line: 559, baseType: !3529, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !3526, file: !56, line: 560, baseType: !3534, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!319, !1349, !318}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3526, file: !56, line: 561, baseType: !3538, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!319, !1349}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3526, file: !56, line: 562, baseType: !3542, size: 64, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !949, line: 682, baseType: !7)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !56, line: 508, size: 768, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3561, !3568, !3574, !3575, !3576, !3578, !3580}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3547, file: !56, line: 509, baseType: !1349, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3547, file: !56, line: 510, baseType: !7, size: 32, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3547, file: !56, line: 511, baseType: !410, size: 32, offset: 96)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3547, file: !56, line: 512, baseType: !318, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3547, file: !56, line: 513, baseType: !318, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3547, file: !56, line: 514, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1379, line: 385, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1379, line: 385, size: 64, elements: !3558)
!3558 = !{!3559}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3557, file: !1379, line: 385, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1384, line: 15, baseType: !318)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3547, file: !56, line: 516, baseType: !3562, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1379, line: 359, baseType: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1379, line: 359, size: 64, elements: !3565)
!3565 = !{!3566}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3564, file: !1379, line: 359, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1384, line: 16, baseType: !318)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3547, file: !56, line: 519, baseType: !3569, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1384, line: 21, baseType: !3570)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1384, line: 21, size: 64, elements: !3571)
!3571 = !{!3572}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3570, file: !1384, line: 21, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1384, line: 14, baseType: !318)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3547, file: !56, line: 521, baseType: !947, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3547, file: !56, line: 522, baseType: !947, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3547, file: !56, line: 528, baseType: !3577, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3547, file: !56, line: 532, baseType: !3579, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3547, file: !56, line: 536, baseType: !3581, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1379, line: 509, baseType: !947)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3526, file: !56, line: 563, baseType: !3583, size: 64, offset: 320)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!3545, !3546, !55}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3526, file: !56, line: 565, baseType: !3587, size: 64, offset: 384)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{null, !3546, !318, !318}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3526, file: !56, line: 567, baseType: !3591, size: 64, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!318, !1349}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3526, file: !56, line: 571, baseType: !3542, size: 64, offset: 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3526, file: !56, line: 574, baseType: !3542, size: 64, offset: 576)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3526, file: !56, line: 579, baseType: !3597, size: 64, offset: 640)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!319, !1349, !318, !312, !319, !319}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3526, file: !56, line: 585, baseType: !3601, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!367, !1349}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3526, file: !56, line: 615, baseType: !3605, size: 64, offset: 768)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!947, !1349, !318}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1350, file: !949, line: 359, baseType: !318, size: 64, offset: 1216)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1350, file: !949, line: 361, baseType: !505, size: 64, offset: 1280)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1350, file: !949, line: 362, baseType: !312, size: 64, offset: 1344)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1350, file: !949, line: 365, baseType: !890, size: 64, offset: 1408)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1350, file: !949, line: 373, baseType: !3613, offset: 1472)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !949, line: 296, elements: !793)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1323, file: !1302, line: 90, baseType: !1318, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1323, file: !1302, line: 91, baseType: !3616, size: 64, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1292, file: !1242, line: 143, baseType: !3618, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!3621, !1247}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !103, line: 39, size: 384, elements: !3624)
!3624 = !{!3625, !3626, !3630, !3634, !3640, !3644}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3623, file: !103, line: 40, baseType: !102, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3623, file: !103, line: 41, baseType: !3627, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!443}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3623, file: !103, line: 42, baseType: !3631, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!312}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3623, file: !103, line: 43, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!3305, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !103, line: 19, flags: DIFlagFwdDecl)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3623, file: !103, line: 44, baseType: !3641, size: 64, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!3305}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3623, file: !103, line: 45, baseType: !614, size: 64, offset: 320)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1292, file: !1242, line: 144, baseType: !3646, size: 64, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!3305, !1247}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1292, file: !1242, line: 145, baseType: !3650, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !1247, !2093, !2094}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1241, file: !1242, line: 70, baseType: !3654, size: 64, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !765, line: 123, size: 1024, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3776, !3777, !3778, !3779, !3780}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3655, file: !765, line: 124, baseType: !973, size: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3655, file: !765, line: 125, baseType: !973, size: 32, offset: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3655, file: !765, line: 135, baseType: !3654, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3655, file: !765, line: 136, baseType: !367, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3655, file: !765, line: 138, baseType: !986, size: 192, align: 64, offset: 192)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3655, file: !765, line: 140, baseType: !3305, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3655, file: !765, line: 141, baseType: !7, size: 32, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !765, line: 142, baseType: !3665, size: 256, offset: 512)
!3665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !765, line: 142, size: 256, elements: !3666)
!3666 = !{!3667, !3713, !3717}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3665, file: !765, line: 143, baseType: !3668, size: 192)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !765, line: 91, size: 192, elements: !3669)
!3669 = !{!3670, !3671, !3672}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3668, file: !765, line: 92, baseType: !318, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3668, file: !765, line: 94, baseType: !982, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3668, file: !765, line: 100, baseType: !3673, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !765, line: 180, size: 704, elements: !3675)
!3675 = !{!3676, !3677, !3678, !3685, !3686, !3687, !3711, !3712}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3674, file: !765, line: 182, baseType: !3654, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3674, file: !765, line: 183, baseType: !7, size: 32, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3674, file: !765, line: 186, baseType: !3679, size: 192, offset: 128)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3680, line: 19, size: 192, elements: !3681)
!3680 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3681 = !{!3682, !3683, !3684}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3679, file: !3680, line: 20, baseType: !965, size: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3679, file: !3680, line: 21, baseType: !7, size: 32, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3679, file: !3680, line: 22, baseType: !7, size: 32, offset: 160)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3674, file: !765, line: 187, baseType: !320, size: 32, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3674, file: !765, line: 188, baseType: !320, size: 32, offset: 352)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3674, file: !765, line: 189, baseType: !3688, size: 64, offset: 384)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !765, line: 168, size: 320, elements: !3690)
!3690 = !{!3691, !3695, !3699, !3703, !3707}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3689, file: !765, line: 169, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!319, !874, !3673}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3689, file: !765, line: 171, baseType: !3696, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!319, !3654, !367, !578}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3689, file: !765, line: 173, baseType: !3700, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!319, !3654}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3689, file: !765, line: 174, baseType: !3704, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!319, !3654, !3654, !367}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3689, file: !765, line: 176, baseType: !3708, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!319, !874, !3654, !3673}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3674, file: !765, line: 192, baseType: !428, size: 128, offset: 448)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3674, file: !765, line: 194, baseType: !1741, size: 128, offset: 576)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3665, file: !765, line: 144, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !765, line: 103, size: 64, elements: !3715)
!3715 = !{!3716}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3714, file: !765, line: 104, baseType: !3654, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3665, file: !765, line: 145, baseType: !3718, size: 256)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !765, line: 107, size: 256, elements: !3719)
!3719 = !{!3720, !3771, !3774, !3775}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3718, file: !765, line: 108, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3723)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !765, line: 217, size: 768, elements: !3724)
!3724 = !{!3725, !3745, !3749, !3750, !3751, !3752, !3753, !3757, !3758, !3759, !3760, !3767}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3723, file: !765, line: 222, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!319, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !765, line: 197, size: 1088, elements: !3731)
!3731 = !{!3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3730, file: !765, line: 199, baseType: !3654, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3730, file: !765, line: 200, baseType: !505, size: 64, offset: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3730, file: !765, line: 201, baseType: !874, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3730, file: !765, line: 202, baseType: !312, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3730, file: !765, line: 205, baseType: !886, size: 192, offset: 256)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3730, file: !765, line: 206, baseType: !886, size: 192, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3730, file: !765, line: 207, baseType: !319, size: 32, offset: 640)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3730, file: !765, line: 208, baseType: !428, size: 128, offset: 704)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3730, file: !765, line: 209, baseType: !632, size: 64, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3730, file: !765, line: 211, baseType: !313, size: 64, offset: 896)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3730, file: !765, line: 212, baseType: !443, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3730, file: !765, line: 213, baseType: !443, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3730, file: !765, line: 214, baseType: !3524, size: 64, offset: 1024)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3723, file: !765, line: 223, baseType: !3746, size: 64, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{null, !3729}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3723, file: !765, line: 236, baseType: !932, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3723, file: !765, line: 238, baseType: !919, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3723, file: !765, line: 239, baseType: !928, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3723, file: !765, line: 240, baseType: !924, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3723, file: !765, line: 242, baseType: !3754, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!721, !3729, !632, !313, !502}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3723, file: !765, line: 252, baseType: !313, size: 64, offset: 448)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3723, file: !765, line: 259, baseType: !443, size: 8, offset: 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3723, file: !765, line: 260, baseType: !3754, size: 64, offset: 576)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3723, file: !765, line: 263, baseType: !3761, size: 64, offset: 640)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!3764, !3729, !3765}
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !391, line: 52, baseType: !7)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !765, line: 27, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3723, file: !765, line: 266, baseType: !3768, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!319, !3729, !1349}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3718, file: !765, line: 109, baseType: !3772, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !765, line: 31, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3718, file: !765, line: 110, baseType: !502, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3718, file: !765, line: 111, baseType: !3654, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3655, file: !765, line: 148, baseType: !312, size: 64, offset: 768)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3655, file: !765, line: 154, baseType: !337, size: 64, offset: 832)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3655, file: !765, line: 156, baseType: !393, size: 16, offset: 896)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3655, file: !765, line: 157, baseType: !578, size: 16, offset: 912)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3655, file: !765, line: 158, baseType: !3781, size: 64, offset: 960)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !765, line: 32, flags: DIFlagFwdDecl)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1241, file: !1242, line: 71, baseType: !2768, size: 32, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1241, file: !1242, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1241, file: !1242, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1241, file: !1242, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1241, file: !1242, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1241, file: !1242, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1238, file: !115, line: 463, baseType: !2838, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1238, file: !115, line: 465, baseType: !3791, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !115, line: 36, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1238, file: !115, line: 467, baseType: !367, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1238, file: !115, line: 468, baseType: !3795, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3797)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !115, line: 87, size: 384, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3805, !3809, !3813}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !115, line: 88, baseType: !367, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3797, file: !115, line: 89, baseType: !1320, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3797, file: !115, line: 90, baseType: !3802, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!319, !2838, !1275}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3797, file: !115, line: 91, baseType: !3806, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!632, !2838, !2472, !2093, !2094}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3797, file: !115, line: 93, baseType: !3810, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{null, !2838}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3797, file: !115, line: 95, baseType: !3814, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3816)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 278, size: 1472, elements: !3817)
!3817 = !{!3818, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3816, file: !44, line: 279, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!319, !2838}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3816, file: !44, line: 280, baseType: !3810, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3816, file: !44, line: 281, baseType: !3819, size: 64, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3816, file: !44, line: 282, baseType: !3819, size: 64, offset: 192)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3816, file: !44, line: 283, baseType: !3819, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3816, file: !44, line: 284, baseType: !3819, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3816, file: !44, line: 285, baseType: !3819, size: 64, offset: 384)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3816, file: !44, line: 286, baseType: !3819, size: 64, offset: 448)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3816, file: !44, line: 287, baseType: !3819, size: 64, offset: 512)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3816, file: !44, line: 288, baseType: !3819, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3816, file: !44, line: 289, baseType: !3819, size: 64, offset: 640)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3816, file: !44, line: 290, baseType: !3819, size: 64, offset: 704)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3816, file: !44, line: 291, baseType: !3819, size: 64, offset: 768)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3816, file: !44, line: 292, baseType: !3819, size: 64, offset: 832)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3816, file: !44, line: 293, baseType: !3819, size: 64, offset: 896)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3816, file: !44, line: 294, baseType: !3819, size: 64, offset: 960)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3816, file: !44, line: 295, baseType: !3819, size: 64, offset: 1024)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3816, file: !44, line: 296, baseType: !3819, size: 64, offset: 1088)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3816, file: !44, line: 297, baseType: !3819, size: 64, offset: 1152)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3816, file: !44, line: 298, baseType: !3819, size: 64, offset: 1216)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3816, file: !44, line: 299, baseType: !3819, size: 64, offset: 1280)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3816, file: !44, line: 300, baseType: !3819, size: 64, offset: 1344)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3816, file: !44, line: 301, baseType: !3819, size: 64, offset: 1408)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1238, file: !115, line: 470, baseType: !3845, size: 64, offset: 768)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3847, line: 82, size: 1408, elements: !3848)
!3847 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3930, !3933, !3934}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3846, file: !3847, line: 83, baseType: !367, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3846, file: !3847, line: 84, baseType: !367, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3846, file: !3847, line: 85, baseType: !2838, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3846, file: !3847, line: 86, baseType: !1320, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3846, file: !3847, line: 87, baseType: !1320, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3846, file: !3847, line: 88, baseType: !1320, size: 64, offset: 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3846, file: !3847, line: 90, baseType: !3856, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!319, !2838, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !109, line: 95, size: 1152, elements: !3861)
!3861 = !{!3862, !3863, !3864, !3865, !3866, !3867, !3868, !3881, !3894, !3895, !3896, !3897, !3898, !3906, !3907, !3908, !3909, !3910, !3911}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3860, file: !109, line: 96, baseType: !367, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3860, file: !109, line: 97, baseType: !3845, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3860, file: !109, line: 99, baseType: !495, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3860, file: !109, line: 100, baseType: !367, size: 64, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3860, file: !109, line: 102, baseType: !443, size: 8, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3860, file: !109, line: 103, baseType: !108, size: 32, offset: 288)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3860, file: !109, line: 105, baseType: !3869, size: 64, offset: 320)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3871)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3872, line: 262, size: 1600, elements: !3873)
!3872 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3873 = !{!3874, !3875, !3876, !3880}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3871, file: !3872, line: 263, baseType: !2375, size: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3871, file: !3872, line: 264, baseType: !2375, size: 256, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3871, file: !3872, line: 265, baseType: !3877, size: 1024, offset: 512)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 1024, elements: !3878)
!3878 = !{!3879}
!3879 = !DISubrange(count: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3871, file: !3872, line: 266, baseType: !3305, size: 64, offset: 1536)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3860, file: !109, line: 106, baseType: !3882, size: 64, offset: 384)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3884)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3872, line: 210, size: 256, elements: !3885)
!3885 = !{!3886, !3890, !3892, !3893}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3884, file: !3872, line: 211, baseType: !3887, size: 72)
!3887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 72, elements: !3888)
!3888 = !{!3889}
!3889 = !DISubrange(count: 9)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3884, file: !3872, line: 212, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3872, line: 14, baseType: !318)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3884, file: !3872, line: 213, baseType: !322, size: 32, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3884, file: !3872, line: 214, baseType: !322, size: 32, offset: 224)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3860, file: !109, line: 108, baseType: !3819, size: 64, offset: 448)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3860, file: !109, line: 109, baseType: !3810, size: 64, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3860, file: !109, line: 110, baseType: !3819, size: 64, offset: 576)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3860, file: !109, line: 111, baseType: !3810, size: 64, offset: 640)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3860, file: !109, line: 112, baseType: !3899, size: 64, offset: 704)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!319, !2838, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 52, baseType: !3903)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 50, size: 32, elements: !3904)
!3904 = !{!3905}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3903, file: !44, line: 51, baseType: !319, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3860, file: !109, line: 113, baseType: !3819, size: 64, offset: 768)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3860, file: !109, line: 114, baseType: !1320, size: 64, offset: 832)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3860, file: !109, line: 115, baseType: !1320, size: 64, offset: 896)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3860, file: !109, line: 117, baseType: !3814, size: 64, offset: 960)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3860, file: !109, line: 118, baseType: !3810, size: 64, offset: 1024)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3860, file: !109, line: 120, baseType: !3912, size: 64, offset: 1088)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !109, line: 120, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3846, file: !3847, line: 91, baseType: !3802, size: 64, offset: 448)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3846, file: !3847, line: 92, baseType: !3819, size: 64, offset: 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3846, file: !3847, line: 93, baseType: !3810, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3846, file: !3847, line: 94, baseType: !3819, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3846, file: !3847, line: 95, baseType: !3810, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3846, file: !3847, line: 97, baseType: !3819, size: 64, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3846, file: !3847, line: 98, baseType: !3819, size: 64, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3846, file: !3847, line: 100, baseType: !3899, size: 64, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3846, file: !3847, line: 101, baseType: !3819, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3846, file: !3847, line: 103, baseType: !3819, size: 64, offset: 1024)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3846, file: !3847, line: 105, baseType: !3819, size: 64, offset: 1088)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3846, file: !3847, line: 107, baseType: !3814, size: 64, offset: 1152)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3846, file: !3847, line: 109, baseType: !3927, size: 64, offset: 1216)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3929)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3847, line: 109, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3846, file: !3847, line: 111, baseType: !3931, size: 64, offset: 1280)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3847, line: 111, flags: DIFlagFwdDecl)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3846, file: !3847, line: 112, baseType: !791, offset: 1344)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3846, file: !3847, line: 114, baseType: !443, size: 8, offset: 1344)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1238, file: !115, line: 471, baseType: !3859, size: 64, offset: 832)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1238, file: !115, line: 473, baseType: !312, size: 64, offset: 896)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1238, file: !115, line: 475, baseType: !312, size: 64, offset: 960)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1238, file: !115, line: 480, baseType: !886, size: 192, offset: 1024)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1238, file: !115, line: 484, baseType: !3940, size: 576, offset: 1216)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !115, line: 361, size: 576, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3940, file: !115, line: 362, baseType: !428, size: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3940, file: !115, line: 363, baseType: !428, size: 128, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3940, file: !115, line: 364, baseType: !428, size: 128, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3940, file: !115, line: 365, baseType: !428, size: 128, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3940, file: !115, line: 366, baseType: !443, size: 8, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3940, file: !115, line: 367, baseType: !114, size: 32, offset: 544)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1238, file: !115, line: 485, baseType: !3949, size: 2304, offset: 1792)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 565, size: 2304, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4035, !4039}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3949, file: !44, line: 566, baseType: !3902, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3949, file: !44, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3949, file: !44, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3949, file: !44, line: 569, baseType: !443, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3949, file: !44, line: 570, baseType: !443, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3949, file: !44, line: 571, baseType: !443, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3949, file: !44, line: 572, baseType: !443, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3949, file: !44, line: 573, baseType: !443, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3949, file: !44, line: 574, baseType: !443, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3949, file: !44, line: 575, baseType: !443, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3949, file: !44, line: 576, baseType: !443, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3949, file: !44, line: 577, baseType: !320, size: 32, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3949, file: !44, line: 578, baseType: !898, offset: 96)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3949, file: !44, line: 580, baseType: !428, size: 128, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3949, file: !44, line: 581, baseType: !1761, size: 192, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3949, file: !44, line: 582, baseType: !3967, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3969, line: 43, size: 1472, elements: !3970)
!3969 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3968, file: !3969, line: 44, baseType: !367, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3968, file: !3969, line: 45, baseType: !319, size: 32, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3968, file: !3969, line: 46, baseType: !428, size: 128, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3968, file: !3969, line: 47, baseType: !898, offset: 256)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3968, file: !3969, line: 48, baseType: !3976, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 533, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3968, file: !3969, line: 49, baseType: !2818, size: 320, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3968, file: !3969, line: 50, baseType: !318, size: 64, offset: 640)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3968, file: !3969, line: 51, baseType: !1563, size: 64, offset: 704)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3968, file: !3969, line: 52, baseType: !1563, size: 64, offset: 768)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3968, file: !3969, line: 53, baseType: !1563, size: 64, offset: 832)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3968, file: !3969, line: 54, baseType: !1563, size: 64, offset: 896)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3968, file: !3969, line: 55, baseType: !1563, size: 64, offset: 960)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3968, file: !3969, line: 56, baseType: !318, size: 64, offset: 1024)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3968, file: !3969, line: 57, baseType: !318, size: 64, offset: 1088)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3968, file: !3969, line: 58, baseType: !318, size: 64, offset: 1152)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3968, file: !3969, line: 59, baseType: !318, size: 64, offset: 1216)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3968, file: !3969, line: 60, baseType: !318, size: 64, offset: 1280)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3968, file: !3969, line: 61, baseType: !2838, size: 64, offset: 1344)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3968, file: !3969, line: 62, baseType: !443, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3968, file: !3969, line: 63, baseType: !443, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3949, file: !44, line: 583, baseType: !443, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3949, file: !44, line: 584, baseType: !443, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3949, file: !44, line: 585, baseType: !443, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3949, file: !44, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3949, file: !44, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3949, file: !44, line: 592, baseType: !1555, size: 512, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3949, file: !44, line: 593, baseType: !337, size: 64, offset: 1088)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3949, file: !44, line: 594, baseType: !2018, size: 256, offset: 1152)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3949, file: !44, line: 595, baseType: !1741, size: 128, offset: 1408)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3949, file: !44, line: 596, baseType: !3976, size: 64, offset: 1536)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3949, file: !44, line: 597, baseType: !973, size: 32, offset: 1600)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3949, file: !44, line: 598, baseType: !973, size: 32, offset: 1632)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3949, file: !44, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3949, file: !44, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3949, file: !44, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3949, file: !44, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3949, file: !44, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3949, file: !44, line: 604, baseType: !443, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3949, file: !44, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3949, file: !44, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3949, file: !44, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3949, file: !44, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3949, file: !44, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3949, file: !44, line: 610, baseType: !7, size: 32, offset: 1696)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3949, file: !44, line: 611, baseType: !121, size: 32, offset: 1728)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3949, file: !44, line: 612, baseType: !43, size: 32, offset: 1760)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3949, file: !44, line: 613, baseType: !319, size: 32, offset: 1792)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3949, file: !44, line: 614, baseType: !319, size: 32, offset: 1824)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3949, file: !44, line: 615, baseType: !337, size: 64, offset: 1856)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3949, file: !44, line: 616, baseType: !337, size: 64, offset: 1920)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3949, file: !44, line: 617, baseType: !337, size: 64, offset: 1984)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3949, file: !44, line: 618, baseType: !337, size: 64, offset: 2048)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3949, file: !44, line: 620, baseType: !4026, size: 64, offset: 2112)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 536, size: 256, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4027, file: !44, line: 537, baseType: !898)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4027, file: !44, line: 538, baseType: !7, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4027, file: !44, line: 540, baseType: !428, size: 128, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4027, file: !44, line: 543, baseType: !4033, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !44, line: 534, flags: DIFlagFwdDecl)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3949, file: !44, line: 621, baseType: !4036, size: 64, offset: 2176)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !2838, !1704}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3949, file: !44, line: 622, baseType: !4040, size: 64, offset: 2240)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 622, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1238, file: !115, line: 486, baseType: !4043, size: 64, offset: 4096)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 642, size: 1792, elements: !4045)
!4045 = !{!4046, !4047, !4048, !4052, !4053, !4054}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4044, file: !44, line: 643, baseType: !3816, size: 1472)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4044, file: !44, line: 644, baseType: !3819, size: 64, offset: 1472)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4044, file: !44, line: 645, baseType: !4049, size: 64, offset: 1536)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{null, !2838, !443}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4044, file: !44, line: 646, baseType: !3819, size: 64, offset: 1600)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4044, file: !44, line: 647, baseType: !3810, size: 64, offset: 1664)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4044, file: !44, line: 648, baseType: !3810, size: 64, offset: 1728)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1238, file: !115, line: 493, baseType: !4056, size: 64, offset: 4160)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !115, line: 493, flags: DIFlagFwdDecl)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1238, file: !115, line: 499, baseType: !428, size: 128, offset: 4224)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1238, file: !115, line: 502, baseType: !4060, size: 64, offset: 4352)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !115, line: 502, flags: DIFlagFwdDecl)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1238, file: !115, line: 504, baseType: !4064, size: 64, offset: 4416)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1238, file: !115, line: 505, baseType: !337, size: 64, offset: 4480)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1238, file: !115, line: 510, baseType: !337, size: 64, offset: 4544)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1238, file: !115, line: 511, baseType: !4068, size: 64, offset: 4608)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4070)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !115, line: 511, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1238, file: !115, line: 513, baseType: !4072, size: 64, offset: 4672)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !115, line: 288, size: 128, elements: !4074)
!4074 = !{!4075, !4076}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4073, file: !115, line: 293, baseType: !7, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4073, file: !115, line: 294, baseType: !318, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1238, file: !115, line: 515, baseType: !428, size: 128, offset: 4736)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1238, file: !115, line: 526, baseType: !4079, offset: 4864)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4080, line: 5, elements: !793)
!4080 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1238, file: !115, line: 528, baseType: !4082, size: 64, offset: 4864)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4084, line: 51, size: 1344, elements: !4085)
!4084 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4085 = !{!4086, !4087, !4089, !4090, !4180, !4189, !4190, !4191, !4192, !4193, !4194, !4195}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4083, file: !4084, line: 52, baseType: !367, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4083, file: !4084, line: 53, baseType: !4088, size: 32, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4084, line: 28, baseType: !320)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4083, file: !4084, line: 54, baseType: !367, size: 64, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4083, file: !4084, line: 55, baseType: !4091, size: 192, offset: 192)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4092, line: 17, size: 192, elements: !4093)
!4092 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4093 = !{!4094, !4096, !4179}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4091, file: !4092, line: 18, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4091, file: !4092, line: 19, baseType: !4097, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4092, line: 110, size: 1152, elements: !4100)
!4100 = !{!4101, !4105, !4109, !4115, !4121, !4125, !4129, !4134, !4138, !4139, !4143, !4147, !4151, !4162, !4163, !4164, !4165, !4175}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4099, file: !4092, line: 111, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!4095, !4095}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4099, file: !4092, line: 112, baseType: !4106, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{null, !4095}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4099, file: !4092, line: 113, baseType: !4110, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!443, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4091)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4099, file: !4092, line: 114, baseType: !4116, size: 64, offset: 192)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!3305, !4113, !4119}
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1238)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4099, file: !4092, line: 116, baseType: !4122, size: 64, offset: 256)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{!443, !4113, !367}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4099, file: !4092, line: 118, baseType: !4126, size: 64, offset: 320)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!319, !4113, !367, !7, !312, !313}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4099, file: !4092, line: 123, baseType: !4130, size: 64, offset: 384)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!319, !4113, !367, !4133, !313}
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4099, file: !4092, line: 126, baseType: !4135, size: 64, offset: 448)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!367, !4113}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4099, file: !4092, line: 127, baseType: !4135, size: 64, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4099, file: !4092, line: 128, baseType: !4140, size: 64, offset: 576)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!4095, !4113}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4099, file: !4092, line: 130, baseType: !4144, size: 64, offset: 640)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!4095, !4113, !4095}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4099, file: !4092, line: 133, baseType: !4148, size: 64, offset: 704)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!4095, !4113, !367}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4099, file: !4092, line: 135, baseType: !4152, size: 64, offset: 768)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!319, !4113, !367, !367, !7, !7, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4092, line: 43, size: 640, elements: !4157)
!4157 = !{!4158, !4159, !4160}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4156, file: !4092, line: 44, baseType: !4095, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4156, file: !4092, line: 45, baseType: !7, size: 32, offset: 64)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4156, file: !4092, line: 46, baseType: !4161, size: 512, offset: 128)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 512, elements: !1593)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4099, file: !4092, line: 140, baseType: !4144, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4099, file: !4092, line: 143, baseType: !4140, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4099, file: !4092, line: 145, baseType: !4102, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4099, file: !4092, line: 146, baseType: !4166, size: 64, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!319, !4113, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4092, line: 29, size: 128, elements: !4171)
!4171 = !{!4172, !4173, !4174}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4170, file: !4092, line: 30, baseType: !7, size: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4170, file: !4092, line: 31, baseType: !7, size: 32, offset: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4170, file: !4092, line: 32, baseType: !4113, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4099, file: !4092, line: 148, baseType: !4176, size: 64, offset: 1088)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!319, !4113, !2838}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4091, file: !4092, line: 20, baseType: !2838, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4083, file: !4084, line: 57, baseType: !4181, size: 64, offset: 384)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4084, line: 31, size: 704, elements: !4183)
!4183 = !{!4184, !4185, !4186, !4187, !4188}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4182, file: !4084, line: 32, baseType: !632, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4182, file: !4084, line: 33, baseType: !319, size: 32, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4182, file: !4084, line: 34, baseType: !312, size: 64, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4182, file: !4084, line: 35, baseType: !4181, size: 64, offset: 192)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4182, file: !4084, line: 43, baseType: !1335, size: 448, offset: 256)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4083, file: !4084, line: 58, baseType: !4181, size: 64, offset: 448)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4083, file: !4084, line: 59, baseType: !4082, size: 64, offset: 512)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4083, file: !4084, line: 60, baseType: !4082, size: 64, offset: 576)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4083, file: !4084, line: 61, baseType: !4082, size: 64, offset: 640)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4083, file: !4084, line: 63, baseType: !1241, size: 512, offset: 704)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4083, file: !4084, line: 65, baseType: !318, size: 64, offset: 1216)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4083, file: !4084, line: 66, baseType: !312, size: 64, offset: 1280)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1238, file: !115, line: 529, baseType: !4095, size: 64, offset: 4928)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1238, file: !115, line: 534, baseType: !658, size: 32, offset: 4992)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1238, file: !115, line: 535, baseType: !320, size: 32, offset: 5024)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1238, file: !115, line: 537, baseType: !898, offset: 5056)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1238, file: !115, line: 538, baseType: !428, size: 128, offset: 5056)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1238, file: !115, line: 540, baseType: !4202, size: 64, offset: 5184)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4204, line: 54, size: 960, elements: !4205)
!4204 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4205 = !{!4206, !4207, !4208, !4209, !4210, !4211, !4212, !4216, !4220, !4221, !4222, !4223, !4227, !4231, !4232}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4203, file: !4204, line: 55, baseType: !367, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4203, file: !4204, line: 56, baseType: !495, size: 64, offset: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4203, file: !4204, line: 58, baseType: !1320, size: 64, offset: 128)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4203, file: !4204, line: 59, baseType: !1320, size: 64, offset: 192)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4203, file: !4204, line: 60, baseType: !1247, size: 64, offset: 256)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4203, file: !4204, line: 62, baseType: !3802, size: 64, offset: 320)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4203, file: !4204, line: 63, baseType: !4213, size: 64, offset: 384)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!632, !2838, !2472}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4203, file: !4204, line: 65, baseType: !4217, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{null, !4202}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4203, file: !4204, line: 66, baseType: !3810, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4203, file: !4204, line: 68, baseType: !3819, size: 64, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4203, file: !4204, line: 70, baseType: !3621, size: 64, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4203, file: !4204, line: 71, baseType: !4224, size: 64, offset: 704)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!3305, !2838}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4203, file: !4204, line: 73, baseType: !4228, size: 64, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !2838, !2093, !2094}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4203, file: !4204, line: 75, baseType: !3814, size: 64, offset: 832)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4203, file: !4204, line: 77, baseType: !3931, size: 64, offset: 896)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1238, file: !115, line: 541, baseType: !1320, size: 64, offset: 5248)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1238, file: !115, line: 543, baseType: !3810, size: 64, offset: 5312)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1238, file: !115, line: 544, baseType: !4236, size: 64, offset: 5376)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !115, line: 45, flags: DIFlagFwdDecl)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1238, file: !115, line: 545, baseType: !4239, size: 64, offset: 5440)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !115, line: 47, flags: DIFlagFwdDecl)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1238, file: !115, line: 547, baseType: !443, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1238, file: !115, line: 548, baseType: !443, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1238, file: !115, line: 549, baseType: !443, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1238, file: !115, line: 550, baseType: !443, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "holder_dir", scope: !1207, file: !1208, line: 69, baseType: !1247, size: 64, offset: 5952)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1207, file: !1208, line: 70, baseType: !319, size: 32, offset: 6016)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "partno", scope: !1207, file: !1208, line: 70, baseType: !319, size: 32, offset: 6048)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1207, file: !1208, line: 71, baseType: !4249, size: 64, offset: 6080)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !1208, line: 48, size: 808, elements: !4251)
!4251 = !{!4252, !4256}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !4250, file: !1208, line: 49, baseType: !4253, size: 296)
!4253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 296, elements: !4254)
!4254 = !{!4255}
!4255 = !DISubrange(count: 37)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !4250, file: !1208, line: 50, baseType: !4257, size: 512, offset: 296)
!4257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 512, elements: !1282)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_work", scope: !1207, file: !1208, line: 75, baseType: !4259, size: 448, offset: 6144)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !2019, line: 124, size: 448, elements: !4260)
!4260 = !{!4261, !4262, !4263}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4259, file: !2019, line: 125, baseType: !2018, size: 256)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4259, file: !2019, line: 126, baseType: !518, size: 128, align: 64, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4259, file: !2019, line: 129, baseType: !2830, size: 64, offset: 384)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "bd_part_count", scope: !1190, file: !1191, line: 39, baseType: !7, size: 32, offset: 896)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !1190, file: !1191, line: 41, baseType: !898, offset: 928)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !1190, file: !1191, line: 42, baseType: !2368, size: 64, offset: 960)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "bd_bdi", scope: !1190, file: !1191, line: 43, baseType: !2759, size: 64, offset: 1024)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !1190, file: !1191, line: 46, baseType: !319, size: 32, offset: 1088)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !1190, file: !1191, line: 48, baseType: !886, size: 192, offset: 1152)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !1143, file: !1144, line: 259, baseType: !505, size: 64, offset: 1152)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !1143, file: !1144, line: 260, baseType: !7, size: 32, offset: 1216)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1143, file: !1144, line: 265, baseType: !898, offset: 1248)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !1143, file: !1144, line: 278, baseType: !898, offset: 1248)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !1143, file: !1144, line: 282, baseType: !2018, size: 256, offset: 1280)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !1143, file: !1144, line: 283, baseType: !1169, size: 64, offset: 1536)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !1143, file: !1144, line: 284, baseType: !4277, offset: 1600)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, elements: !2389)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1007, file: !86, line: 415, baseType: !4280, size: 64, offset: 1344)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{null, !505}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !961, file: !86, line: 466, baseType: !318, size: 64, offset: 896)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !961, file: !86, line: 467, baseType: !4285, size: 32, offset: 960)
!4285 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4286, line: 8, baseType: !320)
!4286 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !961, file: !86, line: 468, baseType: !898, offset: 992)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !961, file: !86, line: 469, baseType: !428, size: 128, offset: 1024)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !961, file: !86, line: 470, baseType: !312, size: 64, offset: 1152)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !956, file: !949, line: 87, baseType: !318, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !956, file: !949, line: 94, baseType: !318, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !949, line: 96, baseType: !4293, size: 64)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !949, line: 96, size: 64, elements: !4294)
!4294 = !{!4295}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4293, file: !949, line: 101, baseType: !336, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !949, line: 103, baseType: !4297, size: 320)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !949, line: 103, size: 320, elements: !4298)
!4298 = !{!4299, !4309, !4310, !4311}
!4299 = !DIDerivedType(tag: DW_TAG_member, scope: !4297, file: !949, line: 104, baseType: !4300, size: 128)
!4300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4297, file: !949, line: 104, size: 128, elements: !4301)
!4301 = !{!4302, !4303}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !4300, file: !949, line: 105, baseType: !428, size: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, scope: !4300, file: !949, line: 106, baseType: !4304, size: 128)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4300, file: !949, line: 106, size: 128, elements: !4305)
!4305 = !{!4306, !4307, !4308}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4304, file: !949, line: 107, baseType: !947, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4304, file: !949, line: 109, baseType: !319, size: 32, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !4304, file: !949, line: 110, baseType: !319, size: 32, offset: 96)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !4297, file: !949, line: 117, baseType: !2551, size: 64, offset: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !4297, file: !949, line: 119, baseType: !312, size: 64, offset: 192)
!4311 = !DIDerivedType(tag: DW_TAG_member, scope: !4297, file: !949, line: 120, baseType: !4312, size: 64, offset: 256)
!4312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4297, file: !949, line: 120, size: 64, elements: !4313)
!4313 = !{!4314, !4315, !4316}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !4312, file: !949, line: 121, baseType: !312, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !4312, file: !949, line: 122, baseType: !318, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, scope: !4312, file: !949, line: 123, baseType: !4317, size: 32)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4312, file: !949, line: 123, size: 32, elements: !4318)
!4318 = !{!4319, !4320, !4321}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !4317, file: !949, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !4317, file: !949, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4317, file: !949, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!4322 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !949, line: 130, baseType: !4323, size: 192)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !949, line: 130, size: 192, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4323, file: !949, line: 131, baseType: !318, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !4323, file: !949, line: 134, baseType: !385, size: 8, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !4323, file: !949, line: 135, baseType: !385, size: 8, offset: 72)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !4323, file: !949, line: 136, baseType: !973, size: 32, offset: 96)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !4323, file: !949, line: 137, baseType: !7, size: 32, offset: 128)
!4330 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !949, line: 139, baseType: !4331, size: 256)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !949, line: 139, size: 256, elements: !4332)
!4332 = !{!4333, !4334, !4335}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !4331, file: !949, line: 140, baseType: !318, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !4331, file: !949, line: 141, baseType: !973, size: 32, offset: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !4331, file: !949, line: 143, baseType: !428, size: 128, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !949, line: 145, baseType: !4337, size: 256)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !949, line: 145, size: 256, elements: !4338)
!4338 = !{!4339, !4340, !4341, !4342, !4347}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !4337, file: !949, line: 146, baseType: !318, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !4337, file: !949, line: 147, baseType: !3581, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !4337, file: !949, line: 148, baseType: !318, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, scope: !4337, file: !949, line: 149, baseType: !4343, size: 64, offset: 192)
!4343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4337, file: !949, line: 149, size: 64, elements: !4344)
!4344 = !{!4345, !4346}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !4343, file: !949, line: 150, baseType: !1359, size: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !4343, file: !949, line: 151, baseType: !973, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !4337, file: !949, line: 156, baseType: !898, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !949, line: 159, baseType: !4349, size: 128)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !949, line: 159, size: 128, elements: !4350)
!4350 = !{!4351, !4395}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4349, file: !949, line: 161, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !73, line: 110, size: 1152, elements: !4354)
!4354 = !{!4355, !4365, !4366, !4367, !4368, !4369, !4370, !4382, !4383, !4384}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4353, file: !73, line: 111, baseType: !4356, size: 384)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !73, line: 19, size: 384, elements: !4357)
!4357 = !{!4358, !4360, !4361, !4362, !4363, !4364}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4356, file: !73, line: 20, baseType: !4359, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4356, file: !73, line: 21, baseType: !4359, size: 64, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4356, file: !73, line: 22, baseType: !4359, size: 64, offset: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4356, file: !73, line: 23, baseType: !318, size: 64, offset: 192)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4356, file: !73, line: 24, baseType: !318, size: 64, offset: 256)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4356, file: !73, line: 25, baseType: !318, size: 64, offset: 320)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4353, file: !73, line: 112, baseType: !1231, size: 64, offset: 384)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !4353, file: !73, line: 113, baseType: !1217, size: 128, offset: 448)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4353, file: !73, line: 114, baseType: !1761, size: 192, offset: 576)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4353, file: !73, line: 115, baseType: !72, size: 32, offset: 768)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4353, file: !73, line: 116, baseType: !7, size: 32, offset: 800)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4353, file: !73, line: 117, baseType: !4371, size: 64, offset: 832)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !73, line: 67, size: 256, elements: !4374)
!4374 = !{!4375, !4376, !4380, !4381}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4373, file: !73, line: 73, baseType: !1066, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !4373, file: !73, line: 78, baseType: !4377, size: 64, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{null, !4352}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4373, file: !73, line: 83, baseType: !4377, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4373, file: !73, line: 89, baseType: !3542, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4353, file: !73, line: 118, baseType: !312, size: 64, offset: 896)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4353, file: !73, line: 119, baseType: !319, size: 32, offset: 960)
!4384 = !DIDerivedType(tag: DW_TAG_member, scope: !4353, file: !73, line: 120, baseType: !4385, size: 128, offset: 1024)
!4385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4353, file: !73, line: 120, size: 128, elements: !4386)
!4386 = !{!4387, !4393}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4385, file: !73, line: 121, baseType: !4388, size: 128)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4389, line: 6, size: 128, elements: !4390)
!4389 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4388, file: !4389, line: 7, baseType: !337, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4388, file: !4389, line: 8, baseType: !337, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4385, file: !73, line: 122, baseType: !4394)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4388, elements: !2133)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4349, file: !949, line: 162, baseType: !312, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !953, file: !949, line: 176, baseType: !518, size: 128, align: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !949, line: 179, baseType: !4398, size: 32, offset: 384)
!4398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !949, line: 179, size: 32, elements: !4399)
!4399 = !{!4400, !4401, !4402, !4403}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4398, file: !949, line: 184, baseType: !973, size: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4398, file: !949, line: 192, baseType: !7, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4398, file: !949, line: 194, baseType: !7, size: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !4398, file: !949, line: 195, baseType: !319, size: 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !948, file: !949, line: 199, baseType: !973, size: 32, offset: 416)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !806, file: !86, line: 1964, baseType: !4406, size: 64, offset: 1344)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!684, !745, !4409}
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !4411, line: 12, size: 256, elements: !4412)
!4411 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!4412 = !{!4413, !4414, !4415, !4416, !4417}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !4410, file: !4411, line: 13, baseType: !410, size: 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !4410, file: !4411, line: 16, baseType: !319, size: 32, offset: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !4410, file: !4411, line: 23, baseType: !318, size: 64, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !4410, file: !4411, line: 30, baseType: !318, size: 64, offset: 128)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !4410, file: !4411, line: 33, baseType: !4418, size: 64, offset: 192)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !949, line: 27, flags: DIFlagFwdDecl)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !806, file: !86, line: 1966, baseType: !4406, size: 64, offset: 1408)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !746, file: !86, line: 1424, baseType: !4422, size: 64, offset: 448)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4424)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 322, size: 704, elements: !4425)
!4425 = !{!4426, !4472, !4476, !4480, !4481, !4482, !4483, !4484, !4489, !4494, !4498}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !4424, file: !80, line: 323, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!319, !4430}
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 294, size: 1600, elements: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4457, !4458, !4459}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4431, file: !80, line: 295, baseType: !785, size: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4431, file: !80, line: 296, baseType: !428, size: 128, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4431, file: !80, line: 297, baseType: !428, size: 128, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4431, file: !80, line: 298, baseType: !428, size: 128, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4431, file: !80, line: 299, baseType: !886, size: 192, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4431, file: !80, line: 300, baseType: !898, offset: 704)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4431, file: !80, line: 301, baseType: !973, size: 32, offset: 704)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4431, file: !80, line: 302, baseType: !745, size: 64, offset: 768)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4431, file: !80, line: 303, baseType: !4442, size: 64, offset: 832)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !4443)
!4443 = !{!4444, !4456}
!4444 = !DIDerivedType(tag: DW_TAG_member, scope: !4442, file: !80, line: 69, baseType: !4445, size: 32)
!4445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4442, file: !80, line: 69, size: 32, elements: !4446)
!4446 = !{!4447, !4448, !4449}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4445, file: !80, line: 70, baseType: !581, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4445, file: !80, line: 71, baseType: !589, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4445, file: !80, line: 72, baseType: !4450, size: 32)
!4450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !4451, line: 24, baseType: !4452)
!4451 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!4452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4451, line: 22, size: 32, elements: !4453)
!4453 = !{!4454}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4452, file: !4451, line: 23, baseType: !4455, size: 32)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !4451, line: 20, baseType: !587)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4442, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4431, file: !80, line: 304, baseType: !502, size: 64, offset: 896)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4431, file: !80, line: 305, baseType: !318, size: 64, offset: 960)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4431, file: !80, line: 306, baseType: !4460, size: 576, offset: 1024)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !4461)
!4461 = !{!4462, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !4460, file: !80, line: 206, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !504)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !4460, file: !80, line: 207, baseType: !4463, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !4460, file: !80, line: 208, baseType: !4463, size: 64, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !4460, file: !80, line: 209, baseType: !4463, size: 64, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !4460, file: !80, line: 210, baseType: !4463, size: 64, offset: 256)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !4460, file: !80, line: 211, baseType: !4463, size: 64, offset: 320)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !4460, file: !80, line: 212, baseType: !4463, size: 64, offset: 384)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !4460, file: !80, line: 213, baseType: !681, size: 64, offset: 448)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !4460, file: !80, line: 214, baseType: !681, size: 64, offset: 512)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !4424, file: !80, line: 324, baseType: !4473, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!4430, !745, !319}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !4424, file: !80, line: 325, baseType: !4477, size: 64, offset: 128)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !4430}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !4424, file: !80, line: 326, baseType: !4427, size: 64, offset: 192)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !4424, file: !80, line: 327, baseType: !4427, size: 64, offset: 256)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !4424, file: !80, line: 328, baseType: !4427, size: 64, offset: 320)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !4424, file: !80, line: 329, baseType: !848, size: 64, offset: 384)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !4424, file: !80, line: 332, baseType: !4485, size: 64, offset: 448)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!4488, !574}
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !4424, file: !80, line: 333, baseType: !4490, size: 64, offset: 512)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!319, !574, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !4424, file: !80, line: 335, baseType: !4495, size: 64, offset: 576)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!319, !574, !4488}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4424, file: !80, line: 337, baseType: !4499, size: 64, offset: 640)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!319, !745, !4502}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !746, file: !86, line: 1425, baseType: !4504, size: 64, offset: 512)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 428, size: 704, elements: !4507)
!4507 = !{!4508, !4512, !4513, !4517, !4518, !4519, !4534, !4557, !4561, !4562, !4585}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !4506, file: !80, line: 429, baseType: !4509, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!319, !745, !319, !319, !692}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !4506, file: !80, line: 430, baseType: !848, size: 64, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !4506, file: !80, line: 431, baseType: !4514, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!319, !745, !7}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !4506, file: !80, line: 432, baseType: !4514, size: 64, offset: 192)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !4506, file: !80, line: 433, baseType: !848, size: 64, offset: 256)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !4506, file: !80, line: 434, baseType: !4520, size: 64, offset: 320)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!319, !745, !319, !4523}
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 415, size: 256, elements: !4525)
!4525 = !{!4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !4524, file: !80, line: 416, baseType: !319, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !4524, file: !80, line: 417, baseType: !7, size: 32, offset: 32)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !4524, file: !80, line: 418, baseType: !7, size: 32, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !4524, file: !80, line: 420, baseType: !7, size: 32, offset: 96)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !4524, file: !80, line: 421, baseType: !7, size: 32, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !4524, file: !80, line: 422, baseType: !7, size: 32, offset: 160)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !4524, file: !80, line: 423, baseType: !7, size: 32, offset: 192)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !4524, file: !80, line: 424, baseType: !7, size: 32, offset: 224)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !4506, file: !80, line: 435, baseType: !4535, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!319, !745, !4442, !4538}
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 343, size: 960, elements: !4540)
!4540 = !{!4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !4539, file: !80, line: 344, baseType: !319, size: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !4539, file: !80, line: 345, baseType: !337, size: 64, offset: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !4539, file: !80, line: 346, baseType: !337, size: 64, offset: 128)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !4539, file: !80, line: 347, baseType: !337, size: 64, offset: 192)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !4539, file: !80, line: 348, baseType: !337, size: 64, offset: 256)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !4539, file: !80, line: 349, baseType: !337, size: 64, offset: 320)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !4539, file: !80, line: 350, baseType: !337, size: 64, offset: 384)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !4539, file: !80, line: 351, baseType: !896, size: 64, offset: 448)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !4539, file: !80, line: 353, baseType: !896, size: 64, offset: 512)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !4539, file: !80, line: 354, baseType: !319, size: 32, offset: 576)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !4539, file: !80, line: 355, baseType: !319, size: 32, offset: 608)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !4539, file: !80, line: 356, baseType: !337, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !4539, file: !80, line: 357, baseType: !337, size: 64, offset: 704)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !4539, file: !80, line: 358, baseType: !337, size: 64, offset: 768)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !4539, file: !80, line: 359, baseType: !896, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !4539, file: !80, line: 360, baseType: !319, size: 32, offset: 896)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !4506, file: !80, line: 436, baseType: !4558, size: 64, offset: 448)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!319, !745, !4502, !4538}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !4506, file: !80, line: 438, baseType: !4535, size: 64, offset: 512)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !4506, file: !80, line: 439, baseType: !4563, size: 64, offset: 576)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!319, !745, !4566}
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 409, size: 1408, elements: !4568)
!4568 = !{!4569, !4570}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4567, file: !80, line: 410, baseType: !7, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4567, file: !80, line: 411, baseType: !4571, size: 1344, offset: 64)
!4571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4572, size: 1344, elements: !798)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 395, size: 448, elements: !4573)
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4584}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4572, file: !80, line: 396, baseType: !7, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4572, file: !80, line: 397, baseType: !7, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4572, file: !80, line: 399, baseType: !7, size: 32, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4572, file: !80, line: 400, baseType: !7, size: 32, offset: 96)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4572, file: !80, line: 401, baseType: !7, size: 32, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4572, file: !80, line: 402, baseType: !7, size: 32, offset: 160)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4572, file: !80, line: 403, baseType: !7, size: 32, offset: 192)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4572, file: !80, line: 404, baseType: !339, size: 64, offset: 256)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4572, file: !80, line: 405, baseType: !4583, size: 64, offset: 320)
!4583 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !314, line: 126, baseType: !337)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4572, file: !80, line: 406, baseType: !4583, size: 64, offset: 384)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !4506, file: !80, line: 440, baseType: !4514, size: 64, offset: 640)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !746, file: !86, line: 1426, baseType: !4587, size: 64, offset: 576)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4589)
!4589 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !86, line: 49, flags: DIFlagFwdDecl)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !746, file: !86, line: 1427, baseType: !318, size: 64, offset: 640)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !746, file: !86, line: 1428, baseType: !318, size: 64, offset: 704)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !746, file: !86, line: 1429, baseType: !318, size: 64, offset: 768)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !746, file: !86, line: 1430, baseType: !535, size: 64, offset: 832)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !746, file: !86, line: 1431, baseType: !993, size: 256, offset: 896)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !746, file: !86, line: 1432, baseType: !319, size: 32, offset: 1152)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !746, file: !86, line: 1433, baseType: !973, size: 32, offset: 1184)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !746, file: !86, line: 1437, baseType: !4598, size: 64, offset: 1216)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4601)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !86, line: 1437, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !746, file: !86, line: 1449, baseType: !4603, size: 64, offset: 1280)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !551, line: 34, size: 64, elements: !4604)
!4604 = !{!4605}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4603, file: !551, line: 35, baseType: !554, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !746, file: !86, line: 1450, baseType: !428, size: 128, offset: 1344)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !746, file: !86, line: 1451, baseType: !1189, size: 64, offset: 1472)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !746, file: !86, line: 1452, baseType: !2759, size: 64, offset: 1536)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !746, file: !86, line: 1453, baseType: !4610, size: 64, offset: 1600)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !86, line: 1453, flags: DIFlagFwdDecl)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !746, file: !86, line: 1454, baseType: !785, size: 128, offset: 1664)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !746, file: !86, line: 1455, baseType: !7, size: 32, offset: 1792)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !746, file: !86, line: 1456, baseType: !4615, size: 2432, offset: 1856)
!4615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 518, size: 2432, elements: !4616)
!4616 = !{!4617, !4618, !4619, !4621, !4653}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4615, file: !80, line: 519, baseType: !7, size: 32)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4615, file: !80, line: 520, baseType: !993, size: 256, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4615, file: !80, line: 521, baseType: !4620, size: 192, offset: 320)
!4620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 192, elements: !798)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4615, file: !80, line: 522, baseType: !4622, size: 1728, offset: 512)
!4622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4623, size: 1728, elements: !798)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !4624)
!4624 = !{!4625, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4623, file: !80, line: 223, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 443, size: 256, elements: !4628)
!4628 = !{!4629, !4630, !4643, !4644}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4627, file: !80, line: 444, baseType: !319, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4627, file: !80, line: 445, baseType: !4631, size: 64, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4633)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 310, size: 512, elements: !4634)
!4634 = !{!4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4633, file: !80, line: 311, baseType: !848, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4633, file: !80, line: 312, baseType: !848, size: 64, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4633, file: !80, line: 313, baseType: !848, size: 64, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4633, file: !80, line: 314, baseType: !848, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4633, file: !80, line: 315, baseType: !4427, size: 64, offset: 256)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4633, file: !80, line: 316, baseType: !4427, size: 64, offset: 320)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4633, file: !80, line: 317, baseType: !4427, size: 64, offset: 384)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4633, file: !80, line: 318, baseType: !4499, size: 64, offset: 448)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4627, file: !80, line: 446, baseType: !495, size: 64, offset: 128)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4627, file: !80, line: 447, baseType: !4626, size: 64, offset: 192)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4623, file: !80, line: 224, baseType: !319, size: 32, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4623, file: !80, line: 226, baseType: !428, size: 128, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4623, file: !80, line: 227, baseType: !318, size: 64, offset: 256)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4623, file: !80, line: 228, baseType: !7, size: 32, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4623, file: !80, line: 229, baseType: !7, size: 32, offset: 352)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4623, file: !80, line: 230, baseType: !4463, size: 64, offset: 384)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4623, file: !80, line: 231, baseType: !4463, size: 64, offset: 448)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4623, file: !80, line: 232, baseType: !312, size: 64, offset: 512)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4615, file: !80, line: 523, baseType: !4654, size: 192, offset: 2240)
!4654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4631, size: 192, elements: !798)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !746, file: !86, line: 1458, baseType: !4656, size: 2112, offset: 4288)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !86, line: 1410, size: 2112, elements: !4657)
!4657 = !{!4658, !4659, !4660}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4656, file: !86, line: 1411, baseType: !319, size: 32)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !4656, file: !86, line: 1412, baseType: !1741, size: 128, offset: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4656, file: !86, line: 1413, baseType: !4661, size: 1920, offset: 192)
!4661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4662, size: 1920, elements: !798)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4663, line: 12, size: 640, elements: !4664)
!4663 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!4664 = !{!4665, !4673, !4674, !4679, !4680}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4662, file: !4663, line: 13, baseType: !4666, size: 320)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4667, line: 17, size: 320, elements: !4668)
!4667 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!4668 = !{!4669, !4670, !4671, !4672}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4666, file: !4667, line: 18, baseType: !319, size: 32)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4666, file: !4667, line: 19, baseType: !319, size: 32, offset: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4666, file: !4667, line: 20, baseType: !1741, size: 128, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4666, file: !4667, line: 22, baseType: !518, size: 128, align: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4662, file: !4663, line: 14, baseType: !1180, size: 64, offset: 320)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4662, file: !4663, line: 15, baseType: !4675, size: 64, offset: 384)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4676, line: 16, size: 64, elements: !4677)
!4676 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!4677 = !{!4678}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4675, file: !4676, line: 17, baseType: !1479, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4662, file: !4663, line: 16, baseType: !1741, size: 128, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4662, file: !4663, line: 17, baseType: !973, size: 32, offset: 576)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !746, file: !86, line: 1465, baseType: !312, size: 64, offset: 6400)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !746, file: !86, line: 1468, baseType: !320, size: 32, offset: 6464)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !746, file: !86, line: 1470, baseType: !681, size: 64, offset: 6528)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !746, file: !86, line: 1471, baseType: !681, size: 64, offset: 6592)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !746, file: !86, line: 1473, baseType: !322, size: 32, offset: 6656)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !746, file: !86, line: 1474, baseType: !4687, size: 64, offset: 6720)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !86, line: 603, flags: DIFlagFwdDecl)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !746, file: !86, line: 1477, baseType: !2375, size: 256, offset: 6784)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !746, file: !86, line: 1478, baseType: !4691, size: 128, offset: 7040)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4692, line: 18, baseType: !4693)
!4692 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4692, line: 16, size: 128, elements: !4694)
!4694 = !{!4695}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4693, file: !4692, line: 17, baseType: !4696, size: 128)
!4696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 128, elements: !2145)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !746, file: !86, line: 1480, baseType: !7, size: 32, offset: 7168)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !746, file: !86, line: 1481, baseType: !2406, size: 32, offset: 7200)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !746, file: !86, line: 1487, baseType: !886, size: 192, offset: 7232)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !746, file: !86, line: 1493, baseType: !367, size: 64, offset: 7424)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !746, file: !86, line: 1495, baseType: !4702, size: 64, offset: 7488)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4704)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !533, line: 135, size: 1024, align: 512, elements: !4705)
!4705 = !{!4706, !4710, !4711, !4718, !4724, !4728, !4732, !4736, !4737, !4741, !4745, !4750, !4754}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4704, file: !533, line: 136, baseType: !4707, size: 64)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!319, !535, !7}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4704, file: !533, line: 137, baseType: !4707, size: 64, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4704, file: !533, line: 138, baseType: !4712, size: 64, offset: 128)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!319, !4715, !4717}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4704, file: !533, line: 139, baseType: !4719, size: 64, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!319, !4715, !7, !367, !4722}
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4704, file: !533, line: 141, baseType: !4725, size: 64, offset: 256)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!319, !4715}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4704, file: !533, line: 142, baseType: !4729, size: 64, offset: 320)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!319, !535}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4704, file: !533, line: 143, baseType: !4733, size: 64, offset: 384)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !535}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4704, file: !533, line: 144, baseType: !4733, size: 64, offset: 448)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4704, file: !533, line: 145, baseType: !4738, size: 64, offset: 512)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{null, !535, !574}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4704, file: !533, line: 146, baseType: !4742, size: 64, offset: 576)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!632, !535, !632, !319}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4704, file: !533, line: 147, baseType: !4746, size: 64, offset: 640)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!531, !4749}
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4704, file: !533, line: 148, baseType: !4751, size: 64, offset: 704)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!319, !692, !443}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4704, file: !533, line: 149, baseType: !4755, size: 64, offset: 768)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!535, !535, !4758}
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !575)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !746, file: !86, line: 1500, baseType: !319, size: 32, offset: 7552)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !746, file: !86, line: 1502, baseType: !4762, size: 448, offset: 7616)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !4411, line: 60, size: 448, elements: !4763)
!4763 = !{!4764, !4769, !4770, !4771, !4772, !4773, !4774}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4762, file: !4411, line: 61, baseType: !4765, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!318, !4768, !4409}
!4768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4762, file: !4411, line: 63, baseType: !4765, size: 64, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4762, file: !4411, line: 66, baseType: !684, size: 64, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4762, file: !4411, line: 67, baseType: !319, size: 32, offset: 192)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4762, file: !4411, line: 68, baseType: !7, size: 32, offset: 224)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4762, file: !4411, line: 71, baseType: !428, size: 128, offset: 256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4762, file: !4411, line: 77, baseType: !4775, size: 64, offset: 384)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !746, file: !86, line: 1505, baseType: !890, size: 64, offset: 8064)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !746, file: !86, line: 1508, baseType: !890, size: 64, offset: 8128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !746, file: !86, line: 1511, baseType: !319, size: 32, offset: 8192)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !746, file: !86, line: 1514, baseType: !4285, size: 32, offset: 8224)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !746, file: !86, line: 1517, baseType: !2830, size: 64, offset: 8256)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !746, file: !86, line: 1518, baseType: !781, size: 64, offset: 8320)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !746, file: !86, line: 1525, baseType: !1972, size: 64, offset: 8384)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !746, file: !86, line: 1532, baseType: !4784, size: 64, offset: 8448)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4785, line: 52, size: 64, elements: !4786)
!4785 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!4786 = !{!4787}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4784, file: !4785, line: 53, baseType: !4788, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4785, line: 40, size: 256, elements: !4790)
!4790 = !{!4791, !4792, !4797}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4789, file: !4785, line: 42, baseType: !898)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4789, file: !4785, line: 44, baseType: !4793, size: 192)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4785, line: 28, size: 192, elements: !4794)
!4794 = !{!4795, !4796}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4793, file: !4785, line: 29, baseType: !428, size: 128)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4793, file: !4785, line: 31, baseType: !684, size: 64, offset: 128)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4789, file: !4785, line: 49, baseType: !684, size: 64, offset: 192)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !746, file: !86, line: 1533, baseType: !4784, size: 64, offset: 8512)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !746, file: !86, line: 1534, baseType: !518, size: 128, align: 64, offset: 8576)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !746, file: !86, line: 1535, baseType: !2018, size: 256, offset: 8704)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !746, file: !86, line: 1537, baseType: !886, size: 192, offset: 8960)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !746, file: !86, line: 1542, baseType: !319, size: 32, offset: 9152)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !746, file: !86, line: 1545, baseType: !898, offset: 9184)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !746, file: !86, line: 1546, baseType: !428, size: 128, offset: 9216)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !746, file: !86, line: 1548, baseType: !898, offset: 9344)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !746, file: !86, line: 1549, baseType: !428, size: 128, offset: 9344)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !575, file: !86, line: 624, baseType: !960, size: 64, offset: 256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !575, file: !86, line: 631, baseType: !318, size: 64, offset: 320)
!4809 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !86, line: 639, baseType: !4810, size: 32, offset: 384)
!4810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !86, line: 639, size: 32, elements: !4811)
!4811 = !{!4812, !4813}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4810, file: !86, line: 640, baseType: !2729, size: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4810, file: !86, line: 641, baseType: !7, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !575, file: !86, line: 643, baseType: !658, size: 32, offset: 416)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !575, file: !86, line: 644, baseType: !502, size: 64, offset: 448)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !575, file: !86, line: 645, baseType: !677, size: 128, offset: 512)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !575, file: !86, line: 646, baseType: !677, size: 128, offset: 640)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !575, file: !86, line: 647, baseType: !677, size: 128, offset: 768)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !575, file: !86, line: 648, baseType: !898, offset: 896)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !575, file: !86, line: 649, baseType: !393, size: 16, offset: 896)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !575, file: !86, line: 650, baseType: !452, size: 8, offset: 912)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !575, file: !86, line: 651, baseType: !452, size: 8, offset: 920)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !575, file: !86, line: 652, baseType: !4583, size: 64, offset: 960)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !575, file: !86, line: 659, baseType: !318, size: 64, offset: 1024)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !575, file: !86, line: 660, baseType: !993, size: 256, offset: 1088)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !575, file: !86, line: 662, baseType: !318, size: 64, offset: 1344)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !575, file: !86, line: 663, baseType: !318, size: 64, offset: 1408)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !575, file: !86, line: 665, baseType: !785, size: 128, offset: 1472)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !575, file: !86, line: 666, baseType: !428, size: 128, offset: 1600)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !575, file: !86, line: 675, baseType: !428, size: 128, offset: 1728)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !575, file: !86, line: 676, baseType: !428, size: 128, offset: 1856)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !575, file: !86, line: 677, baseType: !428, size: 128, offset: 1984)
!4833 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !86, line: 678, baseType: !4834, size: 128, offset: 2112)
!4834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !86, line: 678, size: 128, elements: !4835)
!4835 = !{!4836, !4837}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4834, file: !86, line: 679, baseType: !781, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4834, file: !86, line: 680, baseType: !518, size: 128, align: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !575, file: !86, line: 682, baseType: !892, size: 64, offset: 2240)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !575, file: !86, line: 683, baseType: !892, size: 64, offset: 2304)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !575, file: !86, line: 684, baseType: !973, size: 32, offset: 2368)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !575, file: !86, line: 685, baseType: !973, size: 32, offset: 2400)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !575, file: !86, line: 686, baseType: !973, size: 32, offset: 2432)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !575, file: !86, line: 688, baseType: !973, size: 32, offset: 2464)
!4844 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !86, line: 690, baseType: !4845, size: 64, offset: 2496)
!4845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !86, line: 690, size: 64, elements: !4846)
!4846 = !{!4847, !4849}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4845, file: !86, line: 691, baseType: !4848, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4845, file: !86, line: 692, baseType: !813, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !575, file: !86, line: 694, baseType: !4851, size: 64, offset: 2560)
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !86, line: 1100, size: 384, elements: !4853)
!4853 = !{!4854, !4855, !4856, !4857}
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !4852, file: !86, line: 1101, baseType: !898)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !4852, file: !86, line: 1102, baseType: !428, size: 128)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !4852, file: !86, line: 1103, baseType: !428, size: 128, offset: 128)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !4852, file: !86, line: 1104, baseType: !428, size: 128, offset: 256)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !575, file: !86, line: 695, baseType: !961, size: 1216, align: 64, offset: 2624)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !575, file: !86, line: 696, baseType: !428, size: 128, offset: 3840)
!4860 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !86, line: 697, baseType: !4861, size: 64, offset: 3968)
!4861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !86, line: 697, size: 64, elements: !4862)
!4862 = !{!4863, !4864, !4865, !4868, !4869}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4861, file: !86, line: 698, baseType: !3276, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !4861, file: !86, line: 699, baseType: !1189, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4861, file: !86, line: 700, baseType: !4866, size: 64)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !86, line: 700, flags: DIFlagFwdDecl)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4861, file: !86, line: 701, baseType: !632, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4861, file: !86, line: 702, baseType: !7, size: 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !575, file: !86, line: 705, baseType: !322, size: 32, offset: 4032)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !575, file: !86, line: 708, baseType: !322, size: 32, offset: 4064)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !575, file: !86, line: 709, baseType: !4687, size: 64, offset: 4096)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !575, file: !86, line: 720, baseType: !312, size: 64, offset: 4160)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !536, file: !533, line: 98, baseType: !4875, size: 256, offset: 448)
!4875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !2376)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !536, file: !533, line: 101, baseType: !4877, size: 32, offset: 704)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4878, line: 25, size: 32, elements: !4879)
!4878 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!4879 = !{!4880}
!4880 = !DIDerivedType(tag: DW_TAG_member, scope: !4877, file: !4878, line: 26, baseType: !4881, size: 32)
!4881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4877, file: !4878, line: 26, size: 32, elements: !4882)
!4882 = !{!4883}
!4883 = !DIDerivedType(tag: DW_TAG_member, scope: !4881, file: !4878, line: 30, baseType: !4884, size: 32)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4881, file: !4878, line: 30, size: 32, elements: !4885)
!4885 = !{!4886, !4887}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4884, file: !4878, line: 31, baseType: !898)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4884, file: !4878, line: 32, baseType: !319, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !536, file: !533, line: 102, baseType: !4702, size: 64, offset: 768)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !536, file: !533, line: 103, baseType: !745, size: 64, offset: 832)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !536, file: !533, line: 104, baseType: !318, size: 64, offset: 896)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !536, file: !533, line: 105, baseType: !312, size: 64, offset: 960)
!4892 = !DIDerivedType(tag: DW_TAG_member, scope: !536, file: !533, line: 107, baseType: !4893, size: 128, offset: 1024)
!4893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !533, line: 107, size: 128, elements: !4894)
!4894 = !{!4895, !4896}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4893, file: !533, line: 108, baseType: !428, size: 128)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4893, file: !533, line: 109, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !536, file: !533, line: 111, baseType: !428, size: 128, offset: 1152)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !536, file: !533, line: 112, baseType: !428, size: 128, offset: 1280)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !536, file: !533, line: 120, baseType: !4901, size: 128, offset: 1408)
!4901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !536, file: !533, line: 116, size: 128, elements: !4902)
!4902 = !{!4903, !4904, !4905}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4901, file: !533, line: 117, baseType: !785, size: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4901, file: !533, line: 118, baseType: !550, size: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4901, file: !533, line: 119, baseType: !518, size: 128, align: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !506, file: !86, line: 922, baseType: !574, size: 64, offset: 256)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !506, file: !86, line: 923, baseType: !4848, size: 64, offset: 320)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !506, file: !86, line: 929, baseType: !898, offset: 384)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !506, file: !86, line: 930, baseType: !85, size: 32, offset: 384)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !506, file: !86, line: 931, baseType: !890, size: 64, offset: 448)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !506, file: !86, line: 932, baseType: !7, size: 32, offset: 512)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !506, file: !86, line: 933, baseType: !2406, size: 32, offset: 544)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !506, file: !86, line: 934, baseType: !886, size: 192, offset: 576)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !506, file: !86, line: 935, baseType: !502, size: 64, offset: 768)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !506, file: !86, line: 936, baseType: !4916, size: 192, offset: 832)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !86, line: 885, size: 192, elements: !4917)
!4917 = !{!4918, !4926, !4927, !4928, !4929, !4930}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4916, file: !86, line: 886, baseType: !4919)
!4919 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !4920, line: 20, baseType: !4921)
!4920 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4920, line: 11, elements: !4922)
!4922 = !{!4923}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !4921, file: !4920, line: 12, baseType: !4924)
!4924 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !910, line: 33, baseType: !4925)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !910, line: 31, elements: !793)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4916, file: !86, line: 887, baseType: !1731, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !4916, file: !86, line: 888, baseType: !94, size: 32, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4916, file: !86, line: 889, baseType: !581, size: 32, offset: 96)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !4916, file: !86, line: 889, baseType: !581, size: 32, offset: 128)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !4916, file: !86, line: 890, baseType: !319, size: 32, offset: 160)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !506, file: !86, line: 937, baseType: !1806, size: 64, offset: 1024)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !506, file: !86, line: 938, baseType: !4933, size: 256, offset: 1088)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !86, line: 896, size: 256, elements: !4934)
!4934 = !{!4935, !4936, !4937, !4938, !4939, !4940}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4933, file: !86, line: 897, baseType: !318, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4933, file: !86, line: 898, baseType: !7, size: 32, offset: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4933, file: !86, line: 899, baseType: !7, size: 32, offset: 96)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4933, file: !86, line: 902, baseType: !7, size: 32, offset: 128)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4933, file: !86, line: 903, baseType: !7, size: 32, offset: 160)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4933, file: !86, line: 904, baseType: !502, size: 64, offset: 192)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !506, file: !86, line: 940, baseType: !337, size: 64, offset: 1344)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !506, file: !86, line: 945, baseType: !312, size: 64, offset: 1408)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !506, file: !86, line: 949, baseType: !428, size: 128, offset: 1472)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !506, file: !86, line: 950, baseType: !428, size: 128, offset: 1600)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !506, file: !86, line: 952, baseType: !960, size: 64, offset: 1728)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !506, file: !86, line: 953, baseType: !4285, size: 32, offset: 1792)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !506, file: !86, line: 954, baseType: !4285, size: 32, offset: 1824)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !492, file: !86, line: 1825, baseType: !4949, size: 64, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4950, size: 64)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!721, !505, !632, !313, !922}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !492, file: !86, line: 1826, baseType: !4953, size: 64, offset: 192)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!721, !505, !367, !313, !922}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !492, file: !86, line: 1827, baseType: !1070, size: 64, offset: 256)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !492, file: !86, line: 1828, baseType: !1070, size: 64, offset: 320)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !492, file: !86, line: 1829, baseType: !4959, size: 64, offset: 384)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!319, !1073, !443}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !492, file: !86, line: 1830, baseType: !4963, size: 64, offset: 448)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!319, !505, !4966}
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !86, line: 1776, size: 128, elements: !4968)
!4968 = !{!4969, !4974}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4967, file: !86, line: 1777, baseType: !4970, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !86, line: 1773, baseType: !4971)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!319, !4966, !367, !319, !502, !337, !7}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4967, file: !86, line: 1778, baseType: !502, size: 64, offset: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !492, file: !86, line: 1831, baseType: !4963, size: 64, offset: 512)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !492, file: !86, line: 1832, baseType: !4977, size: 64, offset: 576)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!3764, !505, !3765}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !492, file: !86, line: 1833, baseType: !4981, size: 64, offset: 640)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4982, size: 64)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{!684, !505, !7, !318}
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !492, file: !86, line: 1834, baseType: !4981, size: 64, offset: 704)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !492, file: !86, line: 1835, baseType: !4986, size: 64, offset: 768)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!319, !505, !1349}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !492, file: !86, line: 1836, baseType: !318, size: 64, offset: 832)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !492, file: !86, line: 1837, baseType: !4991, size: 64, offset: 896)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!319, !574, !505}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !492, file: !86, line: 1838, baseType: !4995, size: 64, offset: 960)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!319, !505, !4998}
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !86, line: 1007, baseType: !312)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !492, file: !86, line: 1839, baseType: !4991, size: 64, offset: 1024)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !492, file: !86, line: 1840, baseType: !5001, size: 64, offset: 1088)
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!319, !505, !502, !502, !319}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !492, file: !86, line: 1841, baseType: !5005, size: 64, offset: 1152)
!5005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5006, size: 64)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!319, !319, !505, !319}
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !492, file: !86, line: 1842, baseType: !5009, size: 64, offset: 1216)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!319, !505, !319, !5012}
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !86, line: 1062, size: 1664, elements: !5014)
!5014 = !{!5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5039, !5040, !5041, !5054, !5085}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !5013, file: !86, line: 1063, baseType: !5012, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !5013, file: !86, line: 1064, baseType: !428, size: 128, offset: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !5013, file: !86, line: 1065, baseType: !785, size: 128, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !5013, file: !86, line: 1066, baseType: !428, size: 128, offset: 320)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !5013, file: !86, line: 1069, baseType: !428, size: 128, offset: 448)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !5013, file: !86, line: 1072, baseType: !4998, size: 64, offset: 576)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !5013, file: !86, line: 1073, baseType: !7, size: 32, offset: 640)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !5013, file: !86, line: 1074, baseType: !385, size: 8, offset: 672)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !5013, file: !86, line: 1075, baseType: !7, size: 32, offset: 704)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !5013, file: !86, line: 1076, baseType: !319, size: 32, offset: 736)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !5013, file: !86, line: 1077, baseType: !1741, size: 128, offset: 768)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !5013, file: !86, line: 1078, baseType: !505, size: 64, offset: 896)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !5013, file: !86, line: 1079, baseType: !502, size: 64, offset: 960)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !5013, file: !86, line: 1080, baseType: !502, size: 64, offset: 1024)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !5013, file: !86, line: 1082, baseType: !5030, size: 64, offset: 1088)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !86, line: 1314, size: 320, elements: !5032)
!5032 = !{!5033, !5034, !5035, !5036, !5037, !5038}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !5031, file: !86, line: 1315, baseType: !4919)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !5031, file: !86, line: 1316, baseType: !319, size: 32)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !5031, file: !86, line: 1317, baseType: !319, size: 32, offset: 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !5031, file: !86, line: 1318, baseType: !5030, size: 64, offset: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !5031, file: !86, line: 1319, baseType: !505, size: 64, offset: 128)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !5031, file: !86, line: 1320, baseType: !518, size: 128, align: 64, offset: 192)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !5013, file: !86, line: 1084, baseType: !318, size: 64, offset: 1152)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !5013, file: !86, line: 1085, baseType: !318, size: 64, offset: 1216)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !5013, file: !86, line: 1087, baseType: !5042, size: 64, offset: 1280)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5044)
!5044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !86, line: 1011, size: 128, elements: !5045)
!5045 = !{!5046, !5050}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !5044, file: !86, line: 1012, baseType: !5047, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{null, !5012, !5012}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !5044, file: !86, line: 1013, baseType: !5051, size: 64, offset: 64)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{null, !5012}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !5013, file: !86, line: 1088, baseType: !5055, size: 64, offset: 1344)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5057)
!5057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !86, line: 1016, size: 512, elements: !5058)
!5058 = !{!5059, !5063, !5067, !5068, !5072, !5076, !5080, !5084}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !5057, file: !86, line: 1017, baseType: !5060, size: 64)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!4998, !4998}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !5057, file: !86, line: 1018, baseType: !5064, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !4998}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !5057, file: !86, line: 1019, baseType: !5051, size: 64, offset: 128)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !5057, file: !86, line: 1020, baseType: !5069, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!319, !5012, !319}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !5057, file: !86, line: 1021, baseType: !5073, size: 64, offset: 256)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!443, !5012}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !5057, file: !86, line: 1022, baseType: !5077, size: 64, offset: 320)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!319, !5012, !319, !431}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !5057, file: !86, line: 1023, baseType: !5081, size: 64, offset: 384)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !5012, !1047}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !5057, file: !86, line: 1024, baseType: !5073, size: 64, offset: 448)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !5013, file: !86, line: 1097, baseType: !5086, size: 256, offset: 1408)
!5086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5013, file: !86, line: 1089, size: 256, elements: !5087)
!5087 = !{!5088, !5097, !5103}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !5086, file: !86, line: 1090, baseType: !5089, size: 256)
!5089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !5090, line: 10, size: 256, elements: !5091)
!5090 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!5091 = !{!5092, !5093, !5096}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5089, file: !5090, line: 11, baseType: !320, size: 32)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5089, file: !5090, line: 12, baseType: !5094, size: 64, offset: 64)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !5090, line: 5, flags: DIFlagFwdDecl)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5089, file: !5090, line: 13, baseType: !428, size: 128, offset: 128)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !5086, file: !86, line: 1091, baseType: !5098, size: 64)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !5090, line: 17, size: 64, elements: !5099)
!5099 = !{!5100}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5098, file: !5090, line: 18, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !5090, line: 16, flags: DIFlagFwdDecl)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !5086, file: !86, line: 1096, baseType: !5104, size: 192)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5086, file: !86, line: 1092, size: 192, elements: !5105)
!5105 = !{!5106, !5107, !5108}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5104, file: !86, line: 1093, baseType: !428, size: 128)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5104, file: !86, line: 1094, baseType: !319, size: 32, offset: 128)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !5104, file: !86, line: 1095, baseType: !7, size: 32, offset: 160)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !492, file: !86, line: 1843, baseType: !5110, size: 64, offset: 1280)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!721, !505, !947, !319, !313, !922, !319}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !492, file: !86, line: 1844, baseType: !1369, size: 64, offset: 1344)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !492, file: !86, line: 1845, baseType: !5115, size: 64, offset: 1408)
!5115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5116, size: 64)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!319, !319}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !492, file: !86, line: 1846, baseType: !5009, size: 64, offset: 1472)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !492, file: !86, line: 1847, baseType: !5120, size: 64, offset: 1536)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!721, !3276, !505, !922, !313, !7}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !492, file: !86, line: 1848, baseType: !5124, size: 64, offset: 1600)
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!721, !505, !922, !3276, !313, !7}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !492, file: !86, line: 1849, baseType: !5128, size: 64, offset: 1664)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!319, !505, !684, !5131, !1047}
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !492, file: !86, line: 1850, baseType: !5133, size: 64, offset: 1728)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5134, size: 64)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!684, !505, !319, !502, !502}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !492, file: !86, line: 1852, baseType: !5137, size: 64, offset: 1792)
!5137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5138, size: 64)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{null, !874, !505}
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !492, file: !86, line: 1856, baseType: !5141, size: 64, offset: 1856)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!721, !505, !502, !505, !502, !313, !7}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !492, file: !86, line: 1858, baseType: !5145, size: 64, offset: 1920)
!5145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5146, size: 64)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!502, !505, !502, !505, !502, !502, !7}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !492, file: !86, line: 1861, baseType: !5001, size: 64, offset: 1984)
!5149 = !DIGlobalVariableExpression(var: !5150, expr: !DIExpression())
!5150 = distinct !DIGlobalVariable(name: "ci_qheads_fops", scope: !2, file: !3, line: 148, type: !491, isLocal: true, isDefinition: true)
!5151 = !DIGlobalVariableExpression(var: !5152, expr: !DIExpression())
!5152 = distinct !DIGlobalVariable(name: "ci_requests_fops", scope: !2, file: !3, line: 185, type: !491, isLocal: true, isDefinition: true)
!5153 = !DIGlobalVariableExpression(var: !5154, expr: !DIExpression())
!5154 = distinct !DIGlobalVariable(name: "ci_otg_fops", scope: !2, file: !3, line: 248, type: !491, isLocal: true, isDefinition: true)
!5155 = !DIGlobalVariableExpression(var: !5156, expr: !DIExpression())
!5156 = distinct !DIGlobalVariable(name: "ci_role_fops", scope: !2, file: !3, line: 296, type: !491, isLocal: true, isDefinition: true)
!5157 = !DIGlobalVariableExpression(var: !5158, expr: !DIExpression())
!5158 = distinct !DIGlobalVariable(name: "ci_registers_fops", scope: !2, file: !3, line: 335, type: !491, isLocal: true, isDefinition: true)
!5159 = !{!"rsp"}
!5160 = !{i32 7, !"Dwarf Version", i32 4}
!5161 = !{i32 2, !"Debug Info Version", i32 3}
!5162 = !{i32 1, !"wchar_size", i32 2}
!5163 = !{i32 1, !"Code Model", i32 2}
!5164 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5165 = distinct !DISubprogram(name: "dbg_create_files", scope: !3, file: !3, line: 343, type: !5166, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !793)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{null, !5168}
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_hdrc", file: !135, line: 208, size: 58944, elements: !5170)
!5170 = !{!5171, !5172, !5173, !5187, !5188, !5205, !5206, !5207, !5831, !5909, !5910, !5912, !5913, !5914, !5918, !5919, !5920, !5923, !5924, !5925, !5926, !5927, !5928, !5956, !5957, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !6010, !6011, !6015, !6026, !6027, !6028, !6031, !6032, !6033, !6034, !6035, !6036, !6037, !6038}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5169, file: !135, line: 209, baseType: !2838, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5169, file: !135, line: 210, baseType: !898, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "hw_bank", scope: !5169, file: !135, line: 211, baseType: !5174, size: 2816, offset: 64)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_bank", file: !135, line: 149, size: 2816, elements: !5175)
!5175 = !{!5176, !5177, !5179, !5180, !5181, !5182, !5183}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "lpm", scope: !5174, file: !135, line: 150, baseType: !7, size: 32)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5174, file: !135, line: 151, baseType: !5178, size: 64, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !314, line: 158, baseType: !3303)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !5174, file: !135, line: 152, baseType: !312, size: 64, offset: 128)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5174, file: !135, line: 153, baseType: !312, size: 64, offset: 192)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !5174, file: !135, line: 154, baseType: !312, size: 64, offset: 256)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5174, file: !135, line: 155, baseType: !313, size: 64, offset: 320)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !5174, file: !135, line: 156, baseType: !5184, size: 2432, offset: 384)
!5184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 2432, elements: !5185)
!5185 = !{!5186}
!5186 = !DISubrange(count: 38)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5169, file: !135, line: 212, baseType: !319, size: 32, offset: 2880)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "roles", scope: !5169, file: !135, line: 213, baseType: !5189, size: 128, offset: 2944)
!5189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5190, size: 128, elements: !1828)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_role_driver", file: !135, line: 132, size: 256, elements: !5192)
!5192 = !{!5193, !5197, !5199, !5204}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5191, file: !135, line: 133, baseType: !5194, size: 64)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!319, !5168}
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5191, file: !135, line: 134, baseType: !5198, size: 64, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5191, file: !135, line: 135, baseType: !5200, size: 64, offset: 128)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!5203, !5168}
!5203 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !129, line: 17, baseType: !128)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5191, file: !135, line: 136, baseType: !367, size: 64, offset: 192)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !5169, file: !135, line: 214, baseType: !134, size: 32, offset: 3072)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "is_otg", scope: !5169, file: !135, line: 215, baseType: !443, size: 8, offset: 3104)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "otg", scope: !5169, file: !135, line: 216, baseType: !5208, size: 704, offset: 3136)
!5208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg", file: !263, line: 16, size: 704, elements: !5209)
!5209 = !{!5210, !5211, !5306, !5402, !5687, !5813, !5814, !5818, !5822, !5826, !5830}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "default_a", scope: !5208, file: !263, line: 17, baseType: !452, size: 8)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !5208, file: !263, line: 19, baseType: !5212, size: 64, offset: 64)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy", file: !141, line: 138, size: 6144, elements: !5214)
!5214 = !{!5215, !5216, !5217, !5293, !5294, !5295, !5296, !5302}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5213, file: !141, line: 139, baseType: !1238, size: 5568)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5213, file: !141, line: 140, baseType: !319, size: 32, offset: 5568)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5213, file: !141, line: 141, baseType: !5218, size: 64, offset: 5632)
!5218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5219, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5220)
!5220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_ops", file: !141, line: 72, size: 704, elements: !5221)
!5221 = !{!5222, !5226, !5227, !5228, !5229, !5233, !5282, !5286, !5287, !5288, !5292}
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5220, file: !141, line: 73, baseType: !5223, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!319, !5212}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5220, file: !141, line: 74, baseType: !5223, size: 64, offset: 64)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "power_on", scope: !5220, file: !141, line: 75, baseType: !5223, size: 64, offset: 128)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "power_off", scope: !5220, file: !141, line: 76, baseType: !5223, size: 64, offset: 192)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "set_mode", scope: !5220, file: !141, line: 77, baseType: !5230, size: 64, offset: 256)
!5230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!319, !5212, !140, !319}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !5220, file: !141, line: 89, baseType: !5234, size: 64, offset: 320)
!5234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5235, size: 64)
!5235 = !DISubroutineType(types: !5236)
!5236 = !{!319, !5212, !5237}
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "phy_configure_opts", file: !141, line: 55, size: 896, elements: !5239)
!5239 = !{!5240, !5269}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "mipi_dphy", scope: !5238, file: !141, line: 56, baseType: !5241, size: 896)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_mipi_dphy", file: !5242, line: 15, size: 896, elements: !5243)
!5242 = !DIFile(filename: "./include/linux/phy/phy-mipi-dphy.h", directory: "/home/lizy2001/genbc/linux")
!5243 = !{!5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "clk_miss", scope: !5241, file: !5242, line: 24, baseType: !7, size: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "clk_post", scope: !5241, file: !5242, line: 36, baseType: !7, size: 32, offset: 32)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pre", scope: !5241, file: !5242, line: 47, baseType: !7, size: 32, offset: 64)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "clk_prepare", scope: !5241, file: !5242, line: 59, baseType: !7, size: 32, offset: 96)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "clk_settle", scope: !5241, file: !5242, line: 71, baseType: !7, size: 32, offset: 128)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "clk_term_en", scope: !5241, file: !5242, line: 81, baseType: !7, size: 32, offset: 160)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "clk_trail", scope: !5241, file: !5242, line: 92, baseType: !7, size: 32, offset: 192)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "clk_zero", scope: !5241, file: !5242, line: 100, baseType: !7, size: 32, offset: 224)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "d_term_en", scope: !5241, file: !5242, line: 110, baseType: !7, size: 32, offset: 256)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "eot", scope: !5241, file: !5242, line: 121, baseType: !7, size: 32, offset: 288)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "hs_exit", scope: !5241, file: !5242, line: 131, baseType: !7, size: 32, offset: 320)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "hs_prepare", scope: !5241, file: !5242, line: 143, baseType: !7, size: 32, offset: 352)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "hs_settle", scope: !5241, file: !5242, line: 155, baseType: !7, size: 32, offset: 384)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "hs_skip", scope: !5241, file: !5242, line: 168, baseType: !7, size: 32, offset: 416)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "hs_trail", scope: !5241, file: !5242, line: 180, baseType: !7, size: 32, offset: 448)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "hs_zero", scope: !5241, file: !5242, line: 188, baseType: !7, size: 32, offset: 480)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5241, file: !5242, line: 198, baseType: !7, size: 32, offset: 512)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "lpx", scope: !5241, file: !5242, line: 208, baseType: !7, size: 32, offset: 544)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "ta_get", scope: !5241, file: !5242, line: 219, baseType: !7, size: 32, offset: 576)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "ta_go", scope: !5241, file: !5242, line: 230, baseType: !7, size: 32, offset: 608)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "ta_sure", scope: !5241, file: !5242, line: 242, baseType: !7, size: 32, offset: 640)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5241, file: !5242, line: 253, baseType: !7, size: 32, offset: 672)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "hs_clk_rate", scope: !5241, file: !5242, line: 260, baseType: !318, size: 64, offset: 704)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "lp_clk_rate", scope: !5241, file: !5242, line: 267, baseType: !318, size: 64, offset: 768)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5241, file: !5242, line: 275, baseType: !385, size: 8, offset: 832)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !5238, file: !141, line: 57, baseType: !5270, size: 352)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_configure_opts_dp", file: !5271, line: 17, size: 352, elements: !5272)
!5271 = !DIFile(filename: "./include/linux/phy/phy-dp.h", directory: "/home/lizy2001/genbc/linux")
!5272 = !{!5273, !5274, !5275, !5277, !5278, !5279, !5280, !5281}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "link_rate", scope: !5270, file: !5271, line: 25, baseType: !7, size: 32)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "lanes", scope: !5270, file: !5271, line: 35, baseType: !7, size: 32, offset: 32)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !5270, file: !5271, line: 46, baseType: !5276, size: 128, offset: 64)
!5276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !1425)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "pre", scope: !5270, file: !5271, line: 56, baseType: !5276, size: 128, offset: 192)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "ssc", scope: !5270, file: !5271, line: 64, baseType: !452, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !5270, file: !5271, line: 73, baseType: !452, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "set_lanes", scope: !5270, file: !5271, line: 82, baseType: !452, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltages", scope: !5270, file: !5271, line: 92, baseType: !452, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !5220, file: !141, line: 107, baseType: !5283, size: 64, offset: 384)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!319, !5212, !140, !319, !5237}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5220, file: !141, line: 109, baseType: !5223, size: 64, offset: 448)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "calibrate", scope: !5220, file: !141, line: 110, baseType: !5223, size: 64, offset: 512)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5220, file: !141, line: 111, baseType: !5289, size: 64, offset: 576)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{null, !5212}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5220, file: !141, line: 112, baseType: !495, size: 64, offset: 640)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5213, file: !141, line: 142, baseType: !886, size: 192, offset: 5696)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "init_count", scope: !5213, file: !141, line: 143, baseType: !319, size: 32, offset: 5888)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "power_count", scope: !5213, file: !141, line: 144, baseType: !319, size: 32, offset: 5920)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5213, file: !141, line: 145, baseType: !5297, size: 96, offset: 5952)
!5297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_attrs", file: !141, line: 121, size: 96, elements: !5298)
!5298 = !{!5299, !5300, !5301}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "bus_width", scope: !5297, file: !141, line: 122, baseType: !320, size: 32)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "max_link_rate", scope: !5297, file: !141, line: 123, baseType: !320, size: 32, offset: 32)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5297, file: !141, line: 124, baseType: !140, size: 32, offset: 64)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "pwr", scope: !5213, file: !141, line: 146, baseType: !5303, size: 64, offset: 6080)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !5305, line: 155, flags: DIFlagFwdDecl)
!5305 = !DIFile(filename: "./include/linux/regulator/consumer.h", directory: "/home/lizy2001/genbc/linux")
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !5208, file: !263, line: 21, baseType: !5307, size: 64, offset: 128)
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !164, line: 88, size: 2624, elements: !5309)
!5309 = !{!5310, !5311, !5312, !5313, !5314, !5315, !5317, !5318, !5330, !5331, !5335, !5336, !5348, !5349, !5350, !5351, !5352, !5363, !5364, !5369, !5370, !5371, !5372, !5376, !5380, !5384, !5388, !5389, !5393, !5397, !5398}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5308, file: !164, line: 89, baseType: !2838, size: 64)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !5308, file: !164, line: 90, baseType: !367, size: 64, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5308, file: !164, line: 91, baseType: !7, size: 32, offset: 128)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5308, file: !164, line: 93, baseType: !163, size: 32, offset: 160)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "last_event", scope: !5308, file: !164, line: 94, baseType: !169, size: 32, offset: 192)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "otg", scope: !5308, file: !164, line: 96, baseType: !5316, size: 64, offset: 256)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "io_dev", scope: !5308, file: !164, line: 98, baseType: !2838, size: 64, offset: 320)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "io_ops", scope: !5308, file: !164, line: 99, baseType: !5319, size: 64, offset: 384)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_io_ops", file: !164, line: 72, size: 128, elements: !5321)
!5321 = !{!5322, !5326}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5320, file: !164, line: 73, baseType: !5323, size: 64)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!319, !5307, !320}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5320, file: !164, line: 74, baseType: !5327, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!319, !5307, !320, !320}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "io_priv", scope: !5308, file: !164, line: 100, baseType: !312, size: 64, offset: 448)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !5308, file: !164, line: 103, baseType: !5332, size: 64, offset: 512)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5333, size: 64)
!5333 = !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_dev", file: !5334, line: 166, flags: DIFlagFwdDecl)
!5334 = !DIFile(filename: "./include/linux/extcon.h", directory: "/home/lizy2001/genbc/linux")
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "id_edev", scope: !5308, file: !164, line: 104, baseType: !5332, size: 64, offset: 576)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_nb", scope: !5308, file: !164, line: 105, baseType: !5337, size: 192, offset: 640)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5338, line: 54, size: 192, elements: !5339)
!5338 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!5339 = !{!5340, !5346, !5347}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5337, file: !5338, line: 55, baseType: !5341, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5338, line: 51, baseType: !5342)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DISubroutineType(types: !5344)
!5344 = !{!319, !5345, !318, !312}
!5345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5337, file: !5338, line: 56, baseType: !5345, size: 64, offset: 64)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5337, file: !5338, line: 57, baseType: !319, size: 32, offset: 128)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "id_nb", scope: !5308, file: !164, line: 106, baseType: !5337, size: 192, offset: 832)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "type_nb", scope: !5308, file: !164, line: 107, baseType: !5337, size: 192, offset: 1024)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "chg_type", scope: !5308, file: !164, line: 110, baseType: !176, size: 32, offset: 1216)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "chg_state", scope: !5308, file: !164, line: 111, baseType: !184, size: 32, offset: 1248)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "chg_cur", scope: !5308, file: !164, line: 112, baseType: !5353, size: 256, offset: 1280)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_charger_current", file: !164, line: 77, size: 256, elements: !5354)
!5354 = !{!5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_min", scope: !5353, file: !164, line: 78, baseType: !7, size: 32)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_max", scope: !5353, file: !164, line: 79, baseType: !7, size: 32, offset: 32)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_min", scope: !5353, file: !164, line: 80, baseType: !7, size: 32, offset: 64)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_max", scope: !5353, file: !164, line: 81, baseType: !7, size: 32, offset: 96)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_min", scope: !5353, file: !164, line: 82, baseType: !7, size: 32, offset: 128)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_max", scope: !5353, file: !164, line: 83, baseType: !7, size: 32, offset: 160)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "aca_min", scope: !5353, file: !164, line: 84, baseType: !7, size: 32, offset: 192)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "aca_max", scope: !5353, file: !164, line: 85, baseType: !7, size: 32, offset: 224)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "chg_work", scope: !5308, file: !164, line: 113, baseType: !2018, size: 256, offset: 1536)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !5308, file: !164, line: 116, baseType: !5365, size: 64, offset: 1792)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !5338, line: 60, size: 64, elements: !5366)
!5366 = !{!5367, !5368}
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5365, file: !5338, line: 61, baseType: !898)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5365, file: !5338, line: 62, baseType: !5345, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "port_status", scope: !5308, file: !164, line: 119, baseType: !1085, size: 16, offset: 1856)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "port_change", scope: !5308, file: !164, line: 120, baseType: !1085, size: 16, offset: 1872)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5308, file: !164, line: 123, baseType: !428, size: 128, offset: 1920)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5308, file: !164, line: 126, baseType: !5373, size: 64, offset: 2048)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{!319, !5307}
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5308, file: !164, line: 127, baseType: !5377, size: 64, offset: 2112)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DISubroutineType(types: !5379)
!5379 = !{null, !5307}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !5308, file: !164, line: 130, baseType: !5381, size: 64, offset: 2176)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!319, !5307, !319}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "set_power", scope: !5308, file: !164, line: 133, baseType: !5385, size: 64, offset: 2240)
!5385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5386, size: 64)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!319, !5307, !7}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "set_suspend", scope: !5308, file: !164, line: 137, baseType: !5381, size: 64, offset: 2304)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup", scope: !5308, file: !164, line: 145, baseType: !5390, size: 64, offset: 2368)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!319, !5307, !443}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "notify_connect", scope: !5308, file: !164, line: 148, baseType: !5394, size: 64, offset: 2432)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!319, !5307, !189}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "notify_disconnect", scope: !5308, file: !164, line: 150, baseType: !5394, size: 64, offset: 2496)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "charger_detect", scope: !5308, file: !164, line: 157, baseType: !5399, size: 64, offset: 2560)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!176, !5307}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !5208, file: !263, line: 22, baseType: !5403, size: 64, offset: 192)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !211, line: 424, size: 960, elements: !5405)
!5405 = !{!5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5418, !5419, !5424, !5682, !5683, !5684, !5685, !5686}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !5404, file: !211, line: 425, baseType: !2838, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !5404, file: !211, line: 426, baseType: !2838, size: 64, offset: 64)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !5404, file: !211, line: 427, baseType: !319, size: 32, offset: 128)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !5404, file: !211, line: 428, baseType: !367, size: 64, offset: 192)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !5404, file: !211, line: 429, baseType: !452, size: 8, offset: 256)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !5404, file: !211, line: 433, baseType: !452, size: 8, offset: 264)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !5404, file: !211, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5404, file: !211, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !5404, file: !211, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !5404, file: !211, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !5404, file: !211, line: 442, baseType: !7, size: 32, offset: 288)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !5404, file: !211, line: 444, baseType: !319, size: 32, offset: 320)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !5404, file: !211, line: 446, baseType: !886, size: 192, offset: 384)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !5404, file: !211, line: 448, baseType: !5420, size: 128, offset: 576)
!5420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !211, line: 417, size: 128, elements: !5421)
!5421 = !{!5422}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !5420, file: !211, line: 418, baseType: !5423, size: 128)
!5423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 128, elements: !1828)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !5404, file: !211, line: 449, baseType: !5425, size: 64, offset: 704)
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5426, size: 64)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !211, line: 631, size: 10624, elements: !5427)
!5427 = !{!5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5438, !5439, !5441, !5442, !5443, !5464, !5465, !5482, !5543, !5625, !5626, !5628, !5629, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5664, !5665, !5666, !5671, !5678, !5679, !5680, !5681}
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !5426, file: !211, line: 632, baseType: !319, size: 32)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !5426, file: !211, line: 633, baseType: !2144, size: 128, offset: 32)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !5426, file: !211, line: 634, baseType: !320, size: 32, offset: 160)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5426, file: !211, line: 635, baseType: !199, size: 32, offset: 192)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5426, file: !211, line: 636, baseType: !189, size: 32, offset: 224)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !5426, file: !211, line: 637, baseType: !7, size: 32, offset: 256)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !5426, file: !211, line: 638, baseType: !7, size: 32, offset: 288)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !5426, file: !211, line: 640, baseType: !5436, size: 64, offset: 320)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !211, line: 474, flags: DIFlagFwdDecl)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5426, file: !211, line: 641, baseType: !319, size: 32, offset: 384)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !5426, file: !211, line: 643, baseType: !5440, size: 64, offset: 416)
!5440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1828)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5426, file: !211, line: 645, baseType: !5425, size: 64, offset: 512)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5426, file: !211, line: 646, baseType: !5403, size: 64, offset: 576)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5426, file: !211, line: 647, baseType: !5444, size: 640, offset: 640)
!5444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !211, line: 67, size: 640, elements: !5445)
!5445 = !{!5446, !5447, !5448, !5455, !5456, !5457, !5460, !5461, !5462, !5463}
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5444, file: !211, line: 68, baseType: !381, size: 72)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !5444, file: !211, line: 69, baseType: !457, size: 48, offset: 72)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !5444, file: !211, line: 70, baseType: !5449, size: 64, offset: 120)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !190, line: 677, size: 64, elements: !5450)
!5450 = !{!5451, !5452, !5453, !5454}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5449, file: !190, line: 678, baseType: !384, size: 8)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5449, file: !190, line: 679, baseType: !384, size: 8, offset: 8)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !5449, file: !190, line: 680, baseType: !390, size: 16, offset: 16)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !5449, file: !190, line: 681, baseType: !481, size: 32, offset: 32)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !5444, file: !211, line: 71, baseType: !428, size: 128, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !5444, file: !211, line: 72, baseType: !312, size: 64, offset: 320)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !5444, file: !211, line: 73, baseType: !5458, size: 64, offset: 384)
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5459, size: 64)
!5459 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !211, line: 48, flags: DIFlagFwdDecl)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5444, file: !211, line: 75, baseType: !1160, size: 64, offset: 448)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5444, file: !211, line: 76, baseType: !319, size: 32, offset: 512)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5444, file: !211, line: 77, baseType: !319, size: 32, offset: 544)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !5444, file: !211, line: 78, baseType: !319, size: 32, offset: 576)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5426, file: !211, line: 649, baseType: !1238, size: 5568, offset: 1280)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !5426, file: !211, line: 651, baseType: !5466, size: 144, offset: 6848)
!5466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !190, line: 289, size: 144, elements: !5467)
!5467 = !{!5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481}
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5466, file: !190, line: 290, baseType: !384, size: 8)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5466, file: !190, line: 291, baseType: !384, size: 8, offset: 8)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !5466, file: !190, line: 293, baseType: !390, size: 16, offset: 16)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !5466, file: !190, line: 294, baseType: !384, size: 8, offset: 32)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !5466, file: !190, line: 295, baseType: !384, size: 8, offset: 40)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !5466, file: !190, line: 296, baseType: !384, size: 8, offset: 48)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !5466, file: !190, line: 297, baseType: !384, size: 8, offset: 56)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !5466, file: !190, line: 298, baseType: !390, size: 16, offset: 64)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !5466, file: !190, line: 299, baseType: !390, size: 16, offset: 80)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !5466, file: !190, line: 300, baseType: !390, size: 16, offset: 96)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !5466, file: !190, line: 301, baseType: !384, size: 8, offset: 112)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !5466, file: !190, line: 302, baseType: !384, size: 8, offset: 120)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !5466, file: !190, line: 303, baseType: !384, size: 8, offset: 128)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !5466, file: !190, line: 304, baseType: !384, size: 8, offset: 136)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !5426, file: !211, line: 652, baseType: !5483, size: 64, offset: 7040)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !211, line: 396, size: 384, elements: !5485)
!5485 = !{!5486, !5494, !5502, !5514, !5527, !5536}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5484, file: !211, line: 397, baseType: !5487, size: 64)
!5487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5488, size: 64)
!5488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !190, line: 844, size: 40, elements: !5489)
!5489 = !{!5490, !5491, !5492, !5493}
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5488, file: !190, line: 845, baseType: !384, size: 8)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5488, file: !190, line: 846, baseType: !384, size: 8, offset: 8)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5488, file: !190, line: 848, baseType: !390, size: 16, offset: 16)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !5488, file: !190, line: 849, baseType: !384, size: 8, offset: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !5484, file: !211, line: 400, baseType: !5495, size: 64, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !190, line: 895, size: 56, elements: !5497)
!5497 = !{!5498, !5499, !5500, !5501}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5496, file: !190, line: 896, baseType: !384, size: 8)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5496, file: !190, line: 897, baseType: !384, size: 8, offset: 8)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5496, file: !190, line: 898, baseType: !384, size: 8, offset: 16)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5496, file: !190, line: 899, baseType: !481, size: 32, offset: 24)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !5484, file: !211, line: 401, baseType: !5503, size: 64, offset: 128)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !190, line: 917, size: 80, elements: !5505)
!5505 = !{!5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513}
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5504, file: !190, line: 918, baseType: !384, size: 8)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5504, file: !190, line: 919, baseType: !384, size: 8, offset: 8)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5504, file: !190, line: 920, baseType: !384, size: 8, offset: 16)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5504, file: !190, line: 921, baseType: !384, size: 8, offset: 24)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !5504, file: !190, line: 923, baseType: !390, size: 16, offset: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !5504, file: !190, line: 928, baseType: !384, size: 8, offset: 48)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5504, file: !190, line: 929, baseType: !384, size: 8, offset: 56)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5504, file: !190, line: 930, baseType: !390, size: 16, offset: 64)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !5484, file: !211, line: 402, baseType: !5515, size: 64, offset: 192)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !190, line: 955, size: 128, elements: !5517)
!5517 = !{!5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5516, file: !190, line: 956, baseType: !384, size: 8)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5516, file: !190, line: 957, baseType: !384, size: 8, offset: 8)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5516, file: !190, line: 958, baseType: !384, size: 8, offset: 16)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5516, file: !190, line: 959, baseType: !384, size: 8, offset: 24)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5516, file: !190, line: 960, baseType: !481, size: 32, offset: 32)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !5516, file: !190, line: 963, baseType: !390, size: 16, offset: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !5516, file: !190, line: 967, baseType: !390, size: 16, offset: 80)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !5516, file: !190, line: 968, baseType: !5526, size: 32, offset: 96)
!5526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 32, elements: !1632)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !5484, file: !211, line: 403, baseType: !5528, size: 64, offset: 256)
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5529, size: 64)
!5529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !190, line: 940, size: 160, elements: !5530)
!5530 = !{!5531, !5532, !5533, !5534, !5535}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5529, file: !190, line: 941, baseType: !384, size: 8)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5529, file: !190, line: 942, baseType: !384, size: 8, offset: 8)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5529, file: !190, line: 943, baseType: !384, size: 8, offset: 16)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !5529, file: !190, line: 944, baseType: !384, size: 8, offset: 24)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !5529, file: !190, line: 945, baseType: !4696, size: 128, offset: 32)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !5484, file: !211, line: 404, baseType: !5537, size: 64, offset: 320)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !190, line: 1080, size: 24, elements: !5539)
!5539 = !{!5540, !5541, !5542}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5538, file: !190, line: 1081, baseType: !384, size: 8)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5538, file: !190, line: 1082, baseType: !384, size: 8, offset: 8)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !5538, file: !190, line: 1083, baseType: !384, size: 8, offset: 16)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !5426, file: !211, line: 653, baseType: !5544, size: 64, offset: 7104)
!5544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5545, size: 64)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !211, line: 374, size: 5440, elements: !5546)
!5546 = !{!5547, !5558, !5559, !5572, !5614, !5623, !5624}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5545, file: !211, line: 375, baseType: !5548, size: 72)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !190, line: 349, size: 72, elements: !5549)
!5549 = !{!5550, !5551, !5552, !5553, !5554, !5555, !5556, !5557}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5548, file: !190, line: 350, baseType: !384, size: 8)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5548, file: !190, line: 351, baseType: !384, size: 8, offset: 8)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !5548, file: !190, line: 353, baseType: !390, size: 16, offset: 16)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !5548, file: !190, line: 354, baseType: !384, size: 8, offset: 32)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !5548, file: !190, line: 355, baseType: !384, size: 8, offset: 40)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !5548, file: !190, line: 356, baseType: !384, size: 8, offset: 48)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !5548, file: !190, line: 357, baseType: !384, size: 8, offset: 56)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !5548, file: !190, line: 358, baseType: !384, size: 8, offset: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5545, file: !211, line: 377, baseType: !632, size: 64, offset: 128)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5545, file: !211, line: 381, baseType: !5560, size: 1024, offset: 192)
!5560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5561, size: 1024, elements: !2145)
!5561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5562, size: 64)
!5562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !190, line: 783, size: 64, elements: !5563)
!5563 = !{!5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5562, file: !190, line: 784, baseType: !384, size: 8)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5562, file: !190, line: 785, baseType: !384, size: 8, offset: 8)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !5562, file: !190, line: 787, baseType: !384, size: 8, offset: 16)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !5562, file: !190, line: 788, baseType: !384, size: 8, offset: 24)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !5562, file: !190, line: 789, baseType: !384, size: 8, offset: 32)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !5562, file: !190, line: 790, baseType: !384, size: 8, offset: 40)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !5562, file: !190, line: 791, baseType: !384, size: 8, offset: 48)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !5562, file: !190, line: 792, baseType: !384, size: 8, offset: 56)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !5545, file: !211, line: 385, baseType: !5573, size: 2048, offset: 1216)
!5573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5574, size: 2048, elements: !2376)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !211, line: 232, size: 6272, elements: !5576)
!5576 = !{!5577, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5575, file: !211, line: 235, baseType: !5578, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !211, line: 82, size: 320, elements: !5580)
!5580 = !{!5581, !5593, !5594, !5595, !5597}
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5579, file: !211, line: 83, baseType: !5582, size: 72)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !190, line: 389, size: 72, elements: !5583)
!5583 = !{!5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !5582, file: !190, line: 390, baseType: !384, size: 8)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !5582, file: !190, line: 391, baseType: !384, size: 8, offset: 8)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !5582, file: !190, line: 393, baseType: !384, size: 8, offset: 16)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !5582, file: !190, line: 394, baseType: !384, size: 8, offset: 24)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !5582, file: !190, line: 395, baseType: !384, size: 8, offset: 32)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !5582, file: !190, line: 396, baseType: !384, size: 8, offset: 40)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !5582, file: !190, line: 397, baseType: !384, size: 8, offset: 48)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !5582, file: !190, line: 398, baseType: !384, size: 8, offset: 56)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !5582, file: !190, line: 399, baseType: !384, size: 8, offset: 64)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5579, file: !211, line: 85, baseType: !319, size: 32, offset: 96)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5579, file: !211, line: 86, baseType: !1160, size: 64, offset: 128)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !5579, file: !211, line: 91, baseType: !5596, size: 64, offset: 192)
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5579, file: !211, line: 93, baseType: !632, size: 64, offset: 256)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !5575, file: !211, line: 237, baseType: !5578, size: 64, offset: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5575, file: !211, line: 239, baseType: !7, size: 32, offset: 128)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !5575, file: !211, line: 243, baseType: !5561, size: 64, offset: 192)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5575, file: !211, line: 245, baseType: !319, size: 32, offset: 256)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !5575, file: !211, line: 247, baseType: !210, size: 32, offset: 288)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !5575, file: !211, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !5575, file: !211, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !5575, file: !211, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !5575, file: !211, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !5575, file: !211, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !5575, file: !211, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !5575, file: !211, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5575, file: !211, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5575, file: !211, line: 257, baseType: !1238, size: 5568, offset: 384)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !5575, file: !211, line: 258, baseType: !2838, size: 64, offset: 5952)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !5575, file: !211, line: 259, baseType: !2018, size: 256, offset: 6016)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !5545, file: !211, line: 389, baseType: !5615, size: 2048, offset: 3264)
!5615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5616, size: 2048, elements: !2376)
!5616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5617, size: 64)
!5617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !211, line: 322, size: 64, elements: !5618)
!5618 = !{!5619, !5620, !5621}
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !5617, file: !211, line: 323, baseType: !7, size: 32)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5617, file: !211, line: 324, baseType: !2768, size: 32, offset: 32)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !5617, file: !211, line: 328, baseType: !5622, offset: 64)
!5622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5579, elements: !2389)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5545, file: !211, line: 391, baseType: !1160, size: 64, offset: 5312)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !5545, file: !211, line: 392, baseType: !319, size: 32, offset: 5376)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !5426, file: !211, line: 655, baseType: !5544, size: 64, offset: 7168)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !5426, file: !211, line: 656, baseType: !5627, size: 1024, offset: 7232)
!5627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5596, size: 1024, elements: !2145)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !5426, file: !211, line: 657, baseType: !5627, size: 1024, offset: 8256)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !5426, file: !211, line: 659, baseType: !5630, size: 64, offset: 9280)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !5426, file: !211, line: 661, baseType: !393, size: 16, offset: 9344)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !5426, file: !211, line: 662, baseType: !452, size: 8, offset: 9360)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5426, file: !211, line: 663, baseType: !452, size: 8, offset: 9368)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !5426, file: !211, line: 664, baseType: !452, size: 8, offset: 9376)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !5426, file: !211, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !5426, file: !211, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !5426, file: !211, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !5426, file: !211, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !5426, file: !211, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !5426, file: !211, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5426, file: !211, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !5426, file: !211, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !5426, file: !211, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !5426, file: !211, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !5426, file: !211, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !5426, file: !211, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !5426, file: !211, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !5426, file: !211, line: 679, baseType: !319, size: 32, offset: 9408)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !5426, file: !211, line: 682, baseType: !632, size: 64, offset: 9472)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5426, file: !211, line: 683, baseType: !632, size: 64, offset: 9536)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !5426, file: !211, line: 684, baseType: !632, size: 64, offset: 9600)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !5426, file: !211, line: 686, baseType: !428, size: 128, offset: 9664)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !5426, file: !211, line: 688, baseType: !319, size: 32, offset: 9792)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5426, file: !211, line: 690, baseType: !320, size: 32, offset: 9824)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !5426, file: !211, line: 691, baseType: !973, size: 32, offset: 9856)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !5426, file: !211, line: 693, baseType: !318, size: 64, offset: 9920)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !5426, file: !211, line: 696, baseType: !318, size: 64, offset: 9984)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !5426, file: !211, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !5426, file: !211, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !5426, file: !211, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !5426, file: !211, line: 702, baseType: !5662, size: 64, offset: 10112)
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !211, line: 28, flags: DIFlagFwdDecl)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5426, file: !211, line: 703, baseType: !319, size: 32, offset: 10176)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5426, file: !211, line: 704, baseType: !217, size: 32, offset: 10208)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !5426, file: !211, line: 705, baseType: !5667, size: 64, offset: 10240)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !211, line: 502, size: 64, elements: !5668)
!5668 = !{!5669, !5670}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !5667, file: !211, line: 506, baseType: !7, size: 32)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5667, file: !211, line: 512, baseType: !319, size: 32, offset: 32)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !5426, file: !211, line: 706, baseType: !5672, size: 128, offset: 10304)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !211, line: 522, size: 128, elements: !5673)
!5673 = !{!5674, !5675, !5676, !5677}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !5672, file: !211, line: 529, baseType: !7, size: 32)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !5672, file: !211, line: 535, baseType: !7, size: 32, offset: 32)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !5672, file: !211, line: 545, baseType: !7, size: 32, offset: 64)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5672, file: !211, line: 551, baseType: !319, size: 32, offset: 96)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !5426, file: !211, line: 707, baseType: !5672, size: 128, offset: 10432)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !5426, file: !211, line: 708, baseType: !7, size: 32, offset: 10560)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !5426, file: !211, line: 710, baseType: !1085, size: 16, offset: 10592)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !5426, file: !211, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !5404, file: !211, line: 450, baseType: !5403, size: 64, offset: 768)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !5404, file: !211, line: 452, baseType: !319, size: 32, offset: 832)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !5404, file: !211, line: 459, baseType: !319, size: 32, offset: 864)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !5404, file: !211, line: 460, baseType: !319, size: 32, offset: 896)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5404, file: !211, line: 462, baseType: !7, size: 32, offset: 928)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "gadget", scope: !5208, file: !263, line: 23, baseType: !5688, size: 64, offset: 256)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget", file: !331, line: 400, size: 6592, elements: !5690)
!5690 = !{!5691, !5692, !5695, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785, !5786, !5787, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809, !5810, !5811, !5812}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5689, file: !331, line: 401, baseType: !2018, size: 256)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "udc", scope: !5689, file: !331, line: 402, baseType: !5693, size: 64, offset: 256)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_udc", file: !331, line: 306, flags: DIFlagFwdDecl)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5689, file: !331, line: 404, baseType: !5696, size: 64, offset: 320)
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5698)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_ops", file: !331, line: 311, size: 768, elements: !5699)
!5699 = !{!5700, !5704, !5705, !5709, !5710, !5714, !5715, !5719, !5730, !5765, !5766, !5770}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame", scope: !5698, file: !331, line: 312, baseType: !5701, size: 64)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!319, !5688}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5698, file: !331, line: 313, baseType: !5701, size: 64, offset: 64)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "set_selfpowered", scope: !5698, file: !331, line: 314, baseType: !5706, size: 64, offset: 128)
!5706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5707, size: 64)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!319, !5688, !319}
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_session", scope: !5698, file: !331, line: 315, baseType: !5706, size: 64, offset: 192)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_draw", scope: !5698, file: !331, line: 316, baseType: !5711, size: 64, offset: 256)
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!319, !5688, !7}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "pullup", scope: !5698, file: !331, line: 317, baseType: !5706, size: 64, offset: 320)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5698, file: !331, line: 318, baseType: !5716, size: 64, offset: 384)
!5716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5717, size: 64)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!319, !5688, !7, !318}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "get_config_params", scope: !5698, file: !331, line: 320, baseType: !5720, size: 64, offset: 448)
!5720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5721, size: 64)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{null, !5688, !5723}
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5724, size: 64)
!5724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_dcd_config_params", file: !331, line: 293, size: 48, elements: !5725)
!5725 = !{!5726, !5727, !5728, !5729}
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !5724, file: !331, line: 294, baseType: !384, size: 8)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !5724, file: !331, line: 296, baseType: !390, size: 16, offset: 16)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "besl_baseline", scope: !5724, file: !331, line: 298, baseType: !384, size: 8, offset: 32)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "besl_deep", scope: !5724, file: !331, line: 299, baseType: !384, size: 8, offset: 40)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "udc_start", scope: !5698, file: !331, line: 322, baseType: !5731, size: 64, offset: 512)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!319, !5688, !5734}
!5734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5735, size: 64)
!5735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_gadget_driver", file: !331, line: 699, size: 1984, elements: !5736)
!5736 = !{!5737, !5738, !5739, !5740, !5744, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764}
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5735, file: !331, line: 700, baseType: !632, size: 64)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !5735, file: !331, line: 701, baseType: !189, size: 32, offset: 64)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5735, file: !331, line: 702, baseType: !5731, size: 64, offset: 128)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5735, file: !331, line: 704, baseType: !5741, size: 64, offset: 192)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{null, !5688}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5735, file: !331, line: 705, baseType: !5745, size: 64, offset: 256)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{!319, !5688, !5748}
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5749, size: 64)
!5749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5750)
!5750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ctrlrequest", file: !190, line: 213, size: 64, elements: !5751)
!5751 = !{!5752, !5753, !5754, !5755, !5756}
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "bRequestType", scope: !5750, file: !190, line: 214, baseType: !384, size: 8)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "bRequest", scope: !5750, file: !190, line: 215, baseType: !384, size: 8, offset: 8)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "wValue", scope: !5750, file: !190, line: 216, baseType: !390, size: 16, offset: 16)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "wIndex", scope: !5750, file: !190, line: 217, baseType: !390, size: 16, offset: 32)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "wLength", scope: !5750, file: !190, line: 218, baseType: !390, size: 16, offset: 48)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5735, file: !331, line: 707, baseType: !5741, size: 64, offset: 320)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5735, file: !331, line: 708, baseType: !5741, size: 64, offset: 384)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5735, file: !331, line: 709, baseType: !5741, size: 64, offset: 448)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5735, file: !331, line: 710, baseType: !5741, size: 64, offset: 512)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5735, file: !331, line: 713, baseType: !3860, size: 1152, offset: 576)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "udc_name", scope: !5735, file: !331, line: 715, baseType: !632, size: 64, offset: 1728)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !5735, file: !331, line: 716, baseType: !428, size: 128, offset: 1792)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "match_existing_only", scope: !5735, file: !331, line: 717, baseType: !7, size: 1, offset: 1920, flags: DIFlagBitField, extraData: i64 1920)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "udc_stop", scope: !5698, file: !331, line: 324, baseType: !5701, size: 64, offset: 576)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "udc_set_speed", scope: !5698, file: !331, line: 325, baseType: !5767, size: 64, offset: 640)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{null, !5688, !189}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "match_ep", scope: !5698, file: !331, line: 326, baseType: !5771, size: 64, offset: 704)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!362, !5688, !5774, !5775}
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !5689, file: !331, line: 405, baseType: !362, size: 64, offset: 384)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "ep_list", scope: !5689, file: !331, line: 406, baseType: !428, size: 128, offset: 448)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !5689, file: !331, line: 407, baseType: !189, size: 32, offset: 576)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "max_speed", scope: !5689, file: !331, line: 408, baseType: !189, size: 32, offset: 608)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5689, file: !331, line: 409, baseType: !199, size: 32, offset: 640)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5689, file: !331, line: 410, baseType: !367, size: 64, offset: 704)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5689, file: !331, line: 411, baseType: !1238, size: 5568, offset: 768)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "isoch_delay", scope: !5689, file: !331, line: 412, baseType: !7, size: 32, offset: 6336)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "out_epnum", scope: !5689, file: !331, line: 413, baseType: !7, size: 32, offset: 6368)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "in_epnum", scope: !5689, file: !331, line: 414, baseType: !7, size: 32, offset: 6400)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "mA", scope: !5689, file: !331, line: 415, baseType: !7, size: 32, offset: 6432)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "otg_caps", scope: !5689, file: !331, line: 416, baseType: !5788, size: 64, offset: 6464)
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg_caps", file: !263, line: 53, size: 48, elements: !5790)
!5790 = !{!5791, !5792, !5793, !5794}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "otg_rev", scope: !5789, file: !263, line: 54, baseType: !1085, size: 16)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_support", scope: !5789, file: !263, line: 55, baseType: !443, size: 8, offset: 16)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "srp_support", scope: !5789, file: !263, line: 56, baseType: !443, size: 8, offset: 24)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "adp_support", scope: !5789, file: !263, line: 57, baseType: !443, size: 8, offset: 32)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "sg_supported", scope: !5689, file: !331, line: 418, baseType: !7, size: 1, offset: 6528, flags: DIFlagBitField, extraData: i64 6528)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "is_otg", scope: !5689, file: !331, line: 419, baseType: !7, size: 1, offset: 6529, flags: DIFlagBitField, extraData: i64 6528)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "is_a_peripheral", scope: !5689, file: !331, line: 420, baseType: !7, size: 1, offset: 6530, flags: DIFlagBitField, extraData: i64 6528)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5689, file: !331, line: 421, baseType: !7, size: 1, offset: 6531, flags: DIFlagBitField, extraData: i64 6528)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "a_hnp_support", scope: !5689, file: !331, line: 422, baseType: !7, size: 1, offset: 6532, flags: DIFlagBitField, extraData: i64 6528)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "a_alt_hnp_support", scope: !5689, file: !331, line: 423, baseType: !7, size: 1, offset: 6533, flags: DIFlagBitField, extraData: i64 6528)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_polling_support", scope: !5689, file: !331, line: 424, baseType: !7, size: 1, offset: 6534, flags: DIFlagBitField, extraData: i64 6528)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "host_request_flag", scope: !5689, file: !331, line: 425, baseType: !7, size: 1, offset: 6535, flags: DIFlagBitField, extraData: i64 6528)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_ep_out_aligned_size", scope: !5689, file: !331, line: 426, baseType: !7, size: 1, offset: 6536, flags: DIFlagBitField, extraData: i64 6528)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_altset_not_supp", scope: !5689, file: !331, line: 427, baseType: !7, size: 1, offset: 6537, flags: DIFlagBitField, extraData: i64 6528)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_stall_not_supp", scope: !5689, file: !331, line: 428, baseType: !7, size: 1, offset: 6538, flags: DIFlagBitField, extraData: i64 6528)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_zlp_not_supp", scope: !5689, file: !331, line: 429, baseType: !7, size: 1, offset: 6539, flags: DIFlagBitField, extraData: i64 6528)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_avoids_skb_reserve", scope: !5689, file: !331, line: 430, baseType: !7, size: 1, offset: 6540, flags: DIFlagBitField, extraData: i64 6528)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "is_selfpowered", scope: !5689, file: !331, line: 431, baseType: !7, size: 1, offset: 6541, flags: DIFlagBitField, extraData: i64 6528)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "deactivated", scope: !5689, file: !331, line: 432, baseType: !7, size: 1, offset: 6542, flags: DIFlagBitField, extraData: i64 6528)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !5689, file: !331, line: 433, baseType: !7, size: 1, offset: 6543, flags: DIFlagBitField, extraData: i64 6528)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !5689, file: !331, line: 434, baseType: !7, size: 1, offset: 6544, flags: DIFlagBitField, extraData: i64 6528)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5689, file: !331, line: 435, baseType: !319, size: 32, offset: 6560)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5208, file: !263, line: 25, baseType: !222, size: 32, offset: 320)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "set_host", scope: !5208, file: !263, line: 28, baseType: !5815, size: 64, offset: 384)
!5815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5816, size: 64)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!319, !5316, !5403}
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "set_peripheral", scope: !5208, file: !263, line: 31, baseType: !5819, size: 64, offset: 448)
!5819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5820, size: 64)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!319, !5316, !5688}
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !5208, file: !263, line: 35, baseType: !5823, size: 64, offset: 512)
!5823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5824, size: 64)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!319, !5316, !443}
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "start_srp", scope: !5208, file: !263, line: 38, baseType: !5827, size: 64, offset: 576)
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5828, size: 64)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{!319, !5316}
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "start_hnp", scope: !5208, file: !263, line: 41, baseType: !5827, size: 64, offset: 640)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !5169, file: !135, line: 217, baseType: !5832, size: 2496, offset: 3840)
!5832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otg_fsm", file: !239, line: 137, size: 2496, elements: !5833)
!5833 = !{!5834, !5835, !5836, !5837, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845, !5846, !5847, !5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5867, !5868, !5869, !5870, !5871, !5872, !5873, !5874, !5902, !5903, !5904, !5905, !5907, !5908}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5832, file: !239, line: 139, baseType: !319, size: 32)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "adp_change", scope: !5832, file: !239, line: 140, baseType: !319, size: 32, offset: 32)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "power_up", scope: !5832, file: !239, line: 141, baseType: !319, size: 32, offset: 64)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "a_srp_det", scope: !5832, file: !239, line: 142, baseType: !319, size: 32, offset: 96)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "a_vbus_vld", scope: !5832, file: !239, line: 143, baseType: !319, size: 32, offset: 128)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "b_conn", scope: !5832, file: !239, line: 144, baseType: !319, size: 32, offset: 160)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "a_bus_resume", scope: !5832, file: !239, line: 145, baseType: !319, size: 32, offset: 192)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "a_bus_suspend", scope: !5832, file: !239, line: 146, baseType: !319, size: 32, offset: 224)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "a_conn", scope: !5832, file: !239, line: 147, baseType: !319, size: 32, offset: 256)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "b_se0_srp", scope: !5832, file: !239, line: 148, baseType: !319, size: 32, offset: 288)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssend_srp", scope: !5832, file: !239, line: 149, baseType: !319, size: 32, offset: 320)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "b_sess_vld", scope: !5832, file: !239, line: 150, baseType: !319, size: 32, offset: 352)
!5846 = !DIDerivedType(tag: DW_TAG_member, name: "test_device", scope: !5832, file: !239, line: 151, baseType: !319, size: 32, offset: 384)
!5847 = !DIDerivedType(tag: DW_TAG_member, name: "a_bus_drop", scope: !5832, file: !239, line: 152, baseType: !319, size: 32, offset: 416)
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "a_bus_req", scope: !5832, file: !239, line: 153, baseType: !319, size: 32, offset: 448)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "b_bus_req", scope: !5832, file: !239, line: 154, baseType: !319, size: 32, offset: 480)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "a_sess_vld", scope: !5832, file: !239, line: 157, baseType: !319, size: 32, offset: 512)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "b_bus_resume", scope: !5832, file: !239, line: 158, baseType: !319, size: 32, offset: 544)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "b_bus_suspend", scope: !5832, file: !239, line: 159, baseType: !319, size: 32, offset: 576)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "drv_vbus", scope: !5832, file: !239, line: 162, baseType: !319, size: 32, offset: 608)
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conn", scope: !5832, file: !239, line: 163, baseType: !319, size: 32, offset: 640)
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "loc_sof", scope: !5832, file: !239, line: 164, baseType: !319, size: 32, offset: 672)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "adp_prb", scope: !5832, file: !239, line: 165, baseType: !319, size: 32, offset: 704)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "adp_sns", scope: !5832, file: !239, line: 166, baseType: !319, size: 32, offset: 736)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "data_pulse", scope: !5832, file: !239, line: 167, baseType: !319, size: 32, offset: 768)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "a_set_b_hnp_en", scope: !5832, file: !239, line: 170, baseType: !319, size: 32, offset: 800)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "b_srp_done", scope: !5832, file: !239, line: 171, baseType: !319, size: 32, offset: 832)
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !5832, file: !239, line: 172, baseType: !319, size: 32, offset: 864)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "a_clr_err", scope: !5832, file: !239, line: 173, baseType: !319, size: 32, offset: 896)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "a_bus_drop_inf", scope: !5832, file: !239, line: 176, baseType: !319, size: 32, offset: 928)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "a_bus_req_inf", scope: !5832, file: !239, line: 177, baseType: !319, size: 32, offset: 960)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "a_clr_err_inf", scope: !5832, file: !239, line: 178, baseType: !319, size: 32, offset: 992)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "b_bus_req_inf", scope: !5832, file: !239, line: 179, baseType: !319, size: 32, offset: 1024)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "a_suspend_req_inf", scope: !5832, file: !239, line: 181, baseType: !319, size: 32, offset: 1056)
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "a_wait_vrise_tmout", scope: !5832, file: !239, line: 184, baseType: !319, size: 32, offset: 1088)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "a_wait_vfall_tmout", scope: !5832, file: !239, line: 185, baseType: !319, size: 32, offset: 1120)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "a_wait_bcon_tmout", scope: !5832, file: !239, line: 186, baseType: !319, size: 32, offset: 1152)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "a_aidl_bdis_tmout", scope: !5832, file: !239, line: 187, baseType: !319, size: 32, offset: 1184)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "b_ase0_brst_tmout", scope: !5832, file: !239, line: 188, baseType: !319, size: 32, offset: 1216)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "a_bidl_adis_tmout", scope: !5832, file: !239, line: 189, baseType: !319, size: 32, offset: 1248)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5832, file: !239, line: 191, baseType: !5875, size: 64, offset: 1280)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otg_fsm_ops", file: !239, line: 202, size: 704, elements: !5877)
!5877 = !{!5878, !5883, !5884, !5885, !5886, !5890, !5891, !5892, !5896, !5897, !5901}
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "chrg_vbus", scope: !5876, file: !239, line: 203, baseType: !5879, size: 64)
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5880 = !DISubroutineType(types: !5881)
!5881 = !{null, !5882, !319}
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "drv_vbus", scope: !5876, file: !239, line: 204, baseType: !5879, size: 64, offset: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "loc_conn", scope: !5876, file: !239, line: 205, baseType: !5879, size: 64, offset: 128)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "loc_sof", scope: !5876, file: !239, line: 206, baseType: !5879, size: 64, offset: 192)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "start_pulse", scope: !5876, file: !239, line: 207, baseType: !5887, size: 64, offset: 256)
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DISubroutineType(types: !5889)
!5889 = !{null, !5882}
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "start_adp_prb", scope: !5876, file: !239, line: 208, baseType: !5887, size: 64, offset: 320)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "start_adp_sns", scope: !5876, file: !239, line: 209, baseType: !5887, size: 64, offset: 384)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "add_timer", scope: !5876, file: !239, line: 210, baseType: !5893, size: 64, offset: 448)
!5893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5894, size: 64)
!5894 = !DISubroutineType(types: !5895)
!5895 = !{null, !5882, !238}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "del_timer", scope: !5876, file: !239, line: 211, baseType: !5893, size: 64, offset: 512)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "start_host", scope: !5876, file: !239, line: 212, baseType: !5898, size: 64, offset: 576)
!5898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5899, size: 64)
!5899 = !DISubroutineType(types: !5900)
!5900 = !{!319, !5882, !319}
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "start_gadget", scope: !5876, file: !239, line: 213, baseType: !5898, size: 64, offset: 640)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "otg", scope: !5832, file: !239, line: 192, baseType: !5316, size: 64, offset: 1344)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !5832, file: !239, line: 195, baseType: !319, size: 32, offset: 1408)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5832, file: !239, line: 196, baseType: !886, size: 192, offset: 1472)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "host_req_flag", scope: !5832, file: !239, line: 197, baseType: !5906, size: 64, offset: 1664)
!5906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "hnp_polling_work", scope: !5832, file: !239, line: 198, baseType: !2814, size: 704, offset: 1728)
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "state_changed", scope: !5832, file: !239, line: 199, baseType: !443, size: 8, offset: 2432)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "otg_fsm_hrtimer", scope: !5169, file: !135, line: 218, baseType: !1555, size: 512, offset: 6336)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "hr_timeouts", scope: !5169, file: !135, line: 219, baseType: !5911, size: 768, offset: 6848)
!5911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1563, size: 768, elements: !3412)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "enabled_otg_timer_bits", scope: !5169, file: !135, line: 220, baseType: !7, size: 32, offset: 7616)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "next_otg_timer", scope: !5169, file: !135, line: 221, baseType: !238, size: 32, offset: 7648)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "role_switch", scope: !5169, file: !135, line: 222, baseType: !5915, size: 64, offset: 7680)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_role_switch", file: !5917, line: 8, flags: DIFlagFwdDecl)
!5917 = !DIFile(filename: "./include/linux/usb/role.h", directory: "/home/lizy2001/genbc/linux")
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5169, file: !135, line: 223, baseType: !2018, size: 256, offset: 7744)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5169, file: !135, line: 224, baseType: !2830, size: 64, offset: 8000)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "qh_pool", scope: !5169, file: !135, line: 226, baseType: !5921, size: 64, offset: 8064)
!5921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5922, size: 64)
!5922 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !135, line: 103, flags: DIFlagFwdDecl)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "td_pool", scope: !5169, file: !135, line: 227, baseType: !5921, size: 64, offset: 8128)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "gadget", scope: !5169, file: !135, line: 229, baseType: !5689, size: 6592, offset: 8192)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5169, file: !135, line: 230, baseType: !5734, size: 64, offset: 14784)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "resume_state", scope: !5169, file: !135, line: 231, baseType: !199, size: 32, offset: 14848)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ep_max", scope: !5169, file: !135, line: 232, baseType: !7, size: 32, offset: 14880)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "ci_hw_ep", scope: !5169, file: !135, line: 233, baseType: !5929, size: 43008, offset: 14912)
!5929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5930, size: 43008, elements: !2376)
!5930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_hw_ep", file: !135, line: 87, size: 1344, elements: !5931)
!5931 = !{!5932, !5933, !5934, !5935, !5936, !5937, !5951, !5952, !5953, !5954, !5955}
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !5930, file: !135, line: 88, baseType: !363, size: 576)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5930, file: !135, line: 89, baseType: !452, size: 8, offset: 576)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5930, file: !135, line: 90, baseType: !452, size: 8, offset: 584)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5930, file: !135, line: 91, baseType: !452, size: 8, offset: 592)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5930, file: !135, line: 92, baseType: !2144, size: 128, offset: 600)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "qh", scope: !5930, file: !135, line: 97, baseType: !5938, size: 256, offset: 768)
!5938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5930, file: !135, line: 93, size: 256, elements: !5939)
!5939 = !{!5940, !5941, !5950}
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5938, file: !135, line: 94, baseType: !428, size: 128)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5938, file: !135, line: 95, baseType: !5942, size: 64, offset: 128)
!5942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5943, size: 64)
!5943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_hw_qh", file: !327, line: 43, size: 384, align: 32, elements: !5944)
!5944 = !{!5945, !5946, !5947, !5948, !5949}
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5943, file: !327, line: 45, baseType: !481, size: 32)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !5943, file: !327, line: 52, baseType: !481, size: 32, offset: 32)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "td", scope: !5943, file: !327, line: 54, baseType: !478, size: 224, align: 32, offset: 64)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !5943, file: !327, line: 56, baseType: !481, size: 32, offset: 288)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5943, file: !327, line: 57, baseType: !5750, size: 64, offset: 320)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5938, file: !135, line: 96, baseType: !336, size: 64, offset: 192)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "wedge", scope: !5930, file: !135, line: 98, baseType: !319, size: 32, offset: 1024)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !5930, file: !135, line: 101, baseType: !5168, size: 64, offset: 1088)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5930, file: !135, line: 102, baseType: !3579, size: 64, offset: 1152)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "td_pool", scope: !5930, file: !135, line: 103, baseType: !5921, size: 64, offset: 1216)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "pending_td", scope: !5930, file: !135, line: 104, baseType: !471, size: 64, offset: 1280)
!5956 = !DIDerivedType(tag: DW_TAG_member, name: "ep0_dir", scope: !5169, file: !135, line: 234, baseType: !320, size: 32, offset: 57920)
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "ep0out", scope: !5169, file: !135, line: 235, baseType: !5958, size: 64, offset: 57984)
!5958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5930, size: 64)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "ep0in", scope: !5169, file: !135, line: 235, baseType: !5958, size: 64, offset: 58048)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5169, file: !135, line: 237, baseType: !409, size: 64, offset: 58112)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "setaddr", scope: !5169, file: !135, line: 238, baseType: !443, size: 8, offset: 58176)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5169, file: !135, line: 239, baseType: !452, size: 8, offset: 58184)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "remote_wakeup", scope: !5169, file: !135, line: 240, baseType: !452, size: 8, offset: 58192)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !5169, file: !135, line: 241, baseType: !452, size: 8, offset: 58200)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "test_mode", scope: !5169, file: !135, line: 242, baseType: !452, size: 8, offset: 58208)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "platdata", scope: !5169, file: !135, line: 244, baseType: !5967, size: 64, offset: 58240)
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5968, size: 64)
!5968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_hdrc_platform_data", file: !5969, line: 33, size: 1920, elements: !5970)
!5969 = !DIFile(filename: "./include/linux/usb/chipidea.h", directory: "/home/lizy2001/genbc/linux")
!5970 = !{!5971, !5972, !5974, !5975, !5976, !5977, !5978, !5979, !5980, !5984, !5985, !5986, !5987, !5988, !5989, !5990, !5991, !6000, !6001, !6002, !6005, !6008, !6009}
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5968, file: !5969, line: 34, baseType: !367, size: 64)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "capoffset", scope: !5968, file: !5969, line: 36, baseType: !5973, size: 64, offset: 64)
!5973 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !314, line: 37, baseType: !318)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !5968, file: !5969, line: 37, baseType: !7, size: 32, offset: 128)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !5968, file: !5969, line: 38, baseType: !5212, size: 64, offset: 192)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !5968, file: !5969, line: 40, baseType: !5307, size: 64, offset: 256)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "phy_mode", scope: !5968, file: !5969, line: 41, baseType: !254, size: 32, offset: 320)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5968, file: !5969, line: 42, baseType: !318, size: 64, offset: 384)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "dr_mode", scope: !5968, file: !5969, line: 65, baseType: !262, size: 32, offset: 448)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !5968, file: !5969, line: 71, baseType: !5981, size: 64, offset: 512)
!5981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5982, size: 64)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{!319, !5168, !7}
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "reg_vbus", scope: !5968, file: !5969, line: 72, baseType: !5303, size: 64, offset: 576)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "ci_otg_caps", scope: !5968, file: !5969, line: 73, baseType: !5789, size: 48, offset: 640)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !5968, file: !5969, line: 74, baseType: !443, size: 8, offset: 688)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "itc_setting", scope: !5968, file: !5969, line: 76, baseType: !320, size: 32, offset: 704)
!5988 = !DIDerivedType(tag: DW_TAG_member, name: "ahb_burst_config", scope: !5968, file: !5969, line: 77, baseType: !320, size: 32, offset: 736)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "tx_burst_size", scope: !5968, file: !5969, line: 78, baseType: !320, size: 32, offset: 768)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "rx_burst_size", scope: !5968, file: !5969, line: 79, baseType: !320, size: 32, offset: 800)
!5991 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_extcon", scope: !5968, file: !5969, line: 82, baseType: !5992, size: 384, offset: 832)
!5992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ci_hdrc_cable", file: !5969, line: 24, size: 384, elements: !5993)
!5993 = !{!5994, !5995, !5996, !5997, !5998, !5999}
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !5992, file: !5969, line: 25, baseType: !443, size: 8)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5992, file: !5969, line: 26, baseType: !443, size: 8, offset: 8)
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5992, file: !5969, line: 27, baseType: !443, size: 8, offset: 16)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !5992, file: !5969, line: 28, baseType: !5332, size: 64, offset: 64)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !5992, file: !5969, line: 29, baseType: !5168, size: 64, offset: 128)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !5992, file: !5969, line: 30, baseType: !5337, size: 192, offset: 192)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "id_extcon", scope: !5968, file: !5969, line: 83, baseType: !5992, size: 384, offset: 1216)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "phy_clkgate_delay_us", scope: !5968, file: !5969, line: 84, baseType: !320, size: 32, offset: 1600)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "pctl", scope: !5968, file: !5969, line: 87, baseType: !6003, size: 64, offset: 1664)
!6003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6004, size: 64)
!6004 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !5969, line: 87, flags: DIFlagFwdDecl)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5968, file: !5969, line: 88, baseType: !6006, size: 64, offset: 1728)
!6006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6007, size: 64)
!6007 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !5969, line: 88, flags: DIFlagFwdDecl)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "pins_host", scope: !5968, file: !5969, line: 89, baseType: !6006, size: 64, offset: 1792)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "pins_device", scope: !5968, file: !5969, line: 90, baseType: !6006, size: 64, offset: 1856)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_active", scope: !5169, file: !135, line: 245, baseType: !319, size: 32, offset: 58304)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "ulpi", scope: !5169, file: !135, line: 246, baseType: !6012, size: 64, offset: 58368)
!6012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6013, size: 64)
!6013 = !DICompositeType(tag: DW_TAG_structure_type, name: "ulpi", file: !6014, line: 7, flags: DIFlagFwdDecl)
!6014 = !DIFile(filename: "./include/linux/ulpi/interface.h", directory: "/home/lizy2001/genbc/linux")
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "ulpi_ops", scope: !5169, file: !135, line: 247, baseType: !6016, size: 128, offset: 58432)
!6016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ulpi_ops", file: !6014, line: 15, size: 128, elements: !6017)
!6017 = !{!6018, !6022}
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !6016, file: !6014, line: 16, baseType: !6019, size: 64)
!6019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6020, size: 64)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{!319, !2838, !452}
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !6016, file: !6014, line: 17, baseType: !6023, size: 64, offset: 64)
!6023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6024, size: 64)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!319, !2838, !452, !452}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !5169, file: !135, line: 248, baseType: !5212, size: 64, offset: 58560)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !5169, file: !135, line: 250, baseType: !5307, size: 64, offset: 58624)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "hcd", scope: !5169, file: !135, line: 251, baseType: !6029, size: 64, offset: 58688)
!6029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6030, size: 64)
!6030 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !135, line: 251, flags: DIFlagFwdDecl)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs", scope: !5169, file: !135, line: 252, baseType: !535, size: 64, offset: 58752)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "id_event", scope: !5169, file: !135, line: 253, baseType: !443, size: 8, offset: 58816)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "b_sess_valid_event", scope: !5169, file: !135, line: 254, baseType: !443, size: 8, offset: 58824)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "imx28_write_fix", scope: !5169, file: !135, line: 255, baseType: !443, size: 8, offset: 58832)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "supports_runtime_pm", scope: !5169, file: !135, line: 256, baseType: !443, size: 8, offset: 58840)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "in_lpm", scope: !5169, file: !135, line: 257, baseType: !443, size: 8, offset: 58848)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_int", scope: !5169, file: !135, line: 258, baseType: !443, size: 8, offset: 58856)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5169, file: !135, line: 259, baseType: !269, size: 32, offset: 58880)
!6039 = !DILocalVariable(name: "ci", arg: 1, scope: !5165, file: !3, line: 343, type: !5168)
!6040 = !DILocation(line: 343, column: 39, scope: !5165)
!6041 = !DILocation(line: 345, column: 44, scope: !5165)
!6042 = !DILocation(line: 345, column: 48, scope: !5165)
!6043 = !DILocation(line: 345, column: 35, scope: !5165)
!6044 = !DILocation(line: 345, column: 54, scope: !5165)
!6045 = !DILocation(line: 345, column: 16, scope: !5165)
!6046 = !DILocation(line: 345, column: 2, scope: !5165)
!6047 = !DILocation(line: 345, column: 6, scope: !5165)
!6048 = !DILocation(line: 345, column: 14, scope: !5165)
!6049 = !DILocation(line: 347, column: 41, scope: !5165)
!6050 = !DILocation(line: 347, column: 45, scope: !5165)
!6051 = !DILocation(line: 347, column: 54, scope: !5165)
!6052 = !DILocation(line: 347, column: 2, scope: !5165)
!6053 = !DILocation(line: 349, column: 54, scope: !5165)
!6054 = !DILocation(line: 349, column: 58, scope: !5165)
!6055 = !DILocation(line: 349, column: 67, scope: !5165)
!6056 = !DILocation(line: 349, column: 2, scope: !5165)
!6057 = !DILocation(line: 351, column: 41, scope: !5165)
!6058 = !DILocation(line: 351, column: 45, scope: !5165)
!6059 = !DILocation(line: 351, column: 54, scope: !5165)
!6060 = !DILocation(line: 351, column: 2, scope: !5165)
!6061 = !DILocation(line: 353, column: 43, scope: !5165)
!6062 = !DILocation(line: 353, column: 47, scope: !5165)
!6063 = !DILocation(line: 353, column: 56, scope: !5165)
!6064 = !DILocation(line: 353, column: 2, scope: !5165)
!6065 = !DILocation(line: 356, column: 25, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 356, column: 6)
!6067 = !DILocation(line: 356, column: 6, scope: !6066)
!6068 = !DILocation(line: 356, column: 6, scope: !5165)
!6069 = !DILocation(line: 357, column: 39, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6066, file: !3, line: 356, column: 30)
!6071 = !DILocation(line: 357, column: 43, scope: !6070)
!6072 = !DILocation(line: 357, column: 52, scope: !6070)
!6073 = !DILocation(line: 357, column: 3, scope: !6070)
!6074 = !DILocation(line: 359, column: 2, scope: !6070)
!6075 = !DILocation(line: 361, column: 49, scope: !5165)
!6076 = !DILocation(line: 361, column: 53, scope: !5165)
!6077 = !DILocation(line: 361, column: 62, scope: !5165)
!6078 = !DILocation(line: 361, column: 2, scope: !5165)
!6079 = !DILocation(line: 363, column: 44, scope: !5165)
!6080 = !DILocation(line: 363, column: 48, scope: !5165)
!6081 = !DILocation(line: 363, column: 57, scope: !5165)
!6082 = !DILocation(line: 363, column: 2, scope: !5165)
!6083 = !DILocation(line: 365, column: 1, scope: !5165)
!6084 = distinct !DISubprogram(name: "debugfs_create_dir", scope: !6085, file: !6085, line: 196, type: !6086, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6085 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/lizy2001/genbc/linux")
!6086 = !DISubroutineType(types: !6087)
!6087 = !{!535, !367, !535}
!6088 = !DILocalVariable(name: "name", arg: 1, scope: !6084, file: !6085, line: 196, type: !367)
!6089 = !DILocation(line: 196, column: 61, scope: !6084)
!6090 = !DILocalVariable(name: "parent", arg: 2, scope: !6084, file: !6085, line: 197, type: !535)
!6091 = !DILocation(line: 197, column: 22, scope: !6084)
!6092 = !DILocation(line: 199, column: 9, scope: !6084)
!6093 = !DILocation(line: 199, column: 2, scope: !6084)
!6094 = distinct !DISubprogram(name: "dev_name", scope: !115, file: !115, line: 609, type: !6095, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{!367, !4119}
!6097 = !DILocalVariable(name: "dev", arg: 1, scope: !6094, file: !115, line: 609, type: !4119)
!6098 = !DILocation(line: 609, column: 57, scope: !6094)
!6099 = !DILocation(line: 612, column: 6, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6094, file: !115, line: 612, column: 6)
!6101 = !DILocation(line: 612, column: 11, scope: !6100)
!6102 = !DILocation(line: 612, column: 6, scope: !6094)
!6103 = !DILocation(line: 613, column: 10, scope: !6100)
!6104 = !DILocation(line: 613, column: 15, scope: !6100)
!6105 = !DILocation(line: 613, column: 3, scope: !6100)
!6106 = !DILocation(line: 615, column: 23, scope: !6094)
!6107 = !DILocation(line: 615, column: 28, scope: !6094)
!6108 = !DILocation(line: 615, column: 9, scope: !6094)
!6109 = !DILocation(line: 615, column: 2, scope: !6094)
!6110 = !DILocation(line: 616, column: 1, scope: !6094)
!6111 = distinct !DISubprogram(name: "debugfs_create_file", scope: !6085, file: !6085, line: 175, type: !6112, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!535, !367, !578, !535, !312, !4848}
!6114 = !DILocalVariable(name: "name", arg: 1, scope: !6111, file: !6085, line: 175, type: !367)
!6115 = !DILocation(line: 175, column: 62, scope: !6111)
!6116 = !DILocalVariable(name: "mode", arg: 2, scope: !6111, file: !6085, line: 175, type: !578)
!6117 = !DILocation(line: 175, column: 76, scope: !6111)
!6118 = !DILocalVariable(name: "parent", arg: 3, scope: !6111, file: !6085, line: 176, type: !535)
!6119 = !DILocation(line: 176, column: 21, scope: !6111)
!6120 = !DILocalVariable(name: "data", arg: 4, scope: !6111, file: !6085, line: 176, type: !312)
!6121 = !DILocation(line: 176, column: 35, scope: !6111)
!6122 = !DILocalVariable(name: "fops", arg: 5, scope: !6111, file: !6085, line: 177, type: !4848)
!6123 = !DILocation(line: 177, column: 36, scope: !6111)
!6124 = !DILocation(line: 179, column: 9, scope: !6111)
!6125 = !DILocation(line: 179, column: 2, scope: !6111)
!6126 = distinct !DISubprogram(name: "ci_otg_is_fsm_mode", scope: !135, file: !135, line: 437, type: !6127, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6127 = !DISubroutineType(types: !6128)
!6128 = !{!443, !5168}
!6129 = !DILocalVariable(name: "ci", arg: 1, scope: !6126, file: !135, line: 437, type: !5168)
!6130 = !DILocation(line: 437, column: 55, scope: !6126)
!6131 = !DILocation(line: 446, column: 2, scope: !6126)
!6132 = distinct !DISubprogram(name: "dbg_remove_files", scope: !3, file: !3, line: 371, type: !5166, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6133 = !DILocalVariable(name: "ci", arg: 1, scope: !6132, file: !3, line: 371, type: !5168)
!6134 = !DILocation(line: 371, column: 39, scope: !6132)
!6135 = !DILocation(line: 373, column: 27, scope: !6132)
!6136 = !DILocation(line: 373, column: 31, scope: !6132)
!6137 = !DILocation(line: 373, column: 2, scope: !6132)
!6138 = !DILocation(line: 374, column: 1, scope: !6132)
!6139 = distinct !DISubprogram(name: "debugfs_remove_recursive", scope: !6085, file: !6085, line: 220, type: !4734, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6140 = !DILocalVariable(name: "dentry", arg: 1, scope: !6139, file: !6085, line: 220, type: !535)
!6141 = !DILocation(line: 220, column: 60, scope: !6139)
!6142 = !DILocation(line: 221, column: 3, scope: !6139)
!6143 = distinct !DISubprogram(name: "ERR_PTR", scope: !6144, file: !6144, line: 24, type: !6145, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6144 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6145 = !DISubroutineType(types: !6146)
!6146 = !{!312, !684}
!6147 = !DILocalVariable(name: "error", arg: 1, scope: !6143, file: !6144, line: 24, type: !684)
!6148 = !DILocation(line: 24, column: 48, scope: !6143)
!6149 = !DILocation(line: 26, column: 18, scope: !6143)
!6150 = !DILocation(line: 26, column: 9, scope: !6143)
!6151 = !DILocation(line: 26, column: 2, scope: !6143)
!6152 = distinct !DISubprogram(name: "kobject_name", scope: !1242, file: !1242, line: 88, type: !6153, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6153 = !DISubroutineType(types: !6154)
!6154 = !{!367, !6155}
!6155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6156, size: 64)
!6156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1241)
!6157 = !DILocalVariable(name: "kobj", arg: 1, scope: !6152, file: !1242, line: 88, type: !6155)
!6158 = !DILocation(line: 88, column: 62, scope: !6152)
!6159 = !DILocation(line: 90, column: 9, scope: !6152)
!6160 = !DILocation(line: 90, column: 15, scope: !6152)
!6161 = !DILocation(line: 90, column: 2, scope: !6152)
!6162 = distinct !DISubprogram(name: "ci_device_open", scope: !3, file: !3, line: 48, type: !4992, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6163 = !DILocalVariable(name: "inode", arg: 1, scope: !6162, file: !3, line: 48, type: !574)
!6164 = !DILocation(line: 48, column: 1, scope: !6162)
!6165 = !DILocalVariable(name: "file", arg: 2, scope: !6162, file: !3, line: 48, type: !505)
!6166 = distinct !DISubprogram(name: "ci_device_show", scope: !3, file: !3, line: 24, type: !933, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6167 = !DILocalVariable(name: "s", arg: 1, scope: !6166, file: !3, line: 24, type: !874)
!6168 = !DILocation(line: 24, column: 44, scope: !6166)
!6169 = !DILocalVariable(name: "data", arg: 2, scope: !6166, file: !3, line: 24, type: !312)
!6170 = !DILocation(line: 24, column: 53, scope: !6166)
!6171 = !DILocalVariable(name: "ci", scope: !6166, file: !3, line: 26, type: !5168)
!6172 = !DILocation(line: 26, column: 18, scope: !6166)
!6173 = !DILocation(line: 26, column: 23, scope: !6166)
!6174 = !DILocation(line: 26, column: 26, scope: !6166)
!6175 = !DILocalVariable(name: "gadget", scope: !6166, file: !3, line: 27, type: !5688)
!6176 = !DILocation(line: 27, column: 21, scope: !6166)
!6177 = !DILocation(line: 27, column: 31, scope: !6166)
!6178 = !DILocation(line: 27, column: 35, scope: !6166)
!6179 = !DILocation(line: 29, column: 13, scope: !6166)
!6180 = !DILocation(line: 29, column: 44, scope: !6166)
!6181 = !DILocation(line: 29, column: 52, scope: !6166)
!6182 = !DILocation(line: 29, column: 2, scope: !6166)
!6183 = !DILocation(line: 30, column: 13, scope: !6166)
!6184 = !DILocation(line: 30, column: 44, scope: !6166)
!6185 = !DILocation(line: 30, column: 52, scope: !6166)
!6186 = !DILocation(line: 30, column: 2, scope: !6166)
!6187 = !DILocation(line: 31, column: 13, scope: !6166)
!6188 = !DILocation(line: 31, column: 44, scope: !6166)
!6189 = !DILocation(line: 31, column: 52, scope: !6166)
!6190 = !DILocation(line: 31, column: 2, scope: !6166)
!6191 = !DILocation(line: 32, column: 13, scope: !6166)
!6192 = !DILocation(line: 32, column: 44, scope: !6166)
!6193 = !DILocation(line: 32, column: 52, scope: !6166)
!6194 = !DILocation(line: 32, column: 2, scope: !6166)
!6195 = !DILocation(line: 33, column: 13, scope: !6166)
!6196 = !DILocation(line: 33, column: 44, scope: !6166)
!6197 = !DILocation(line: 33, column: 52, scope: !6166)
!6198 = !DILocation(line: 33, column: 2, scope: !6166)
!6199 = !DILocation(line: 34, column: 13, scope: !6166)
!6200 = !DILocation(line: 34, column: 44, scope: !6166)
!6201 = !DILocation(line: 34, column: 52, scope: !6166)
!6202 = !DILocation(line: 34, column: 2, scope: !6166)
!6203 = !DILocation(line: 35, column: 13, scope: !6166)
!6204 = !DILocation(line: 35, column: 44, scope: !6166)
!6205 = !DILocation(line: 35, column: 52, scope: !6166)
!6206 = !DILocation(line: 35, column: 2, scope: !6166)
!6207 = !DILocation(line: 36, column: 13, scope: !6166)
!6208 = !DILocation(line: 37, column: 7, scope: !6166)
!6209 = !DILocation(line: 37, column: 15, scope: !6166)
!6210 = !DILocation(line: 37, column: 22, scope: !6166)
!6211 = !DILocation(line: 37, column: 30, scope: !6166)
!6212 = !DILocation(line: 36, column: 2, scope: !6166)
!6213 = !DILocation(line: 39, column: 7, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 39, column: 6)
!6215 = !DILocation(line: 39, column: 11, scope: !6214)
!6216 = !DILocation(line: 39, column: 6, scope: !6166)
!6217 = !DILocation(line: 40, column: 3, scope: !6214)
!6218 = !DILocation(line: 42, column: 13, scope: !6166)
!6219 = !DILocation(line: 43, column: 11, scope: !6166)
!6220 = !DILocation(line: 43, column: 15, scope: !6166)
!6221 = !DILocation(line: 43, column: 23, scope: !6166)
!6222 = !DILocation(line: 43, column: 34, scope: !6166)
!6223 = !DILocation(line: 43, column: 38, scope: !6166)
!6224 = !DILocation(line: 43, column: 46, scope: !6166)
!6225 = !DILocation(line: 42, column: 2, scope: !6166)
!6226 = !DILocation(line: 44, column: 13, scope: !6166)
!6227 = !DILocation(line: 44, column: 44, scope: !6166)
!6228 = !DILocation(line: 44, column: 48, scope: !6166)
!6229 = !DILocation(line: 44, column: 56, scope: !6166)
!6230 = !DILocation(line: 44, column: 2, scope: !6166)
!6231 = !DILocation(line: 46, column: 2, scope: !6166)
!6232 = !DILocation(line: 47, column: 1, scope: !6166)
!6233 = distinct !DISubprogram(name: "ci_port_test_write", scope: !3, file: !3, line: 73, type: !4954, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6234 = !DILocalVariable(name: "lock", arg: 1, scope: !6235, file: !6236, line: 407, type: !3579)
!6235 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6236, file: !6236, line: 407, type: !6237, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6236 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!6237 = !DISubroutineType(types: !6238)
!6238 = !{null, !3579, !318}
!6239 = !DILocation(line: 407, column: 64, scope: !6235, inlinedAt: !6240)
!6240 = distinct !DILocation(line: 99, column: 2, scope: !6233)
!6241 = !DILocalVariable(name: "flags", arg: 2, scope: !6235, file: !6236, line: 407, type: !318)
!6242 = !DILocation(line: 407, column: 84, scope: !6235, inlinedAt: !6240)
!6243 = !DILocalVariable(name: "lock", arg: 1, scope: !6244, file: !6236, line: 327, type: !3579)
!6244 = distinct !DISubprogram(name: "spinlock_check", scope: !6236, file: !6236, line: 327, type: !6245, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!6247, !3579}
!6247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!6248 = !DILocation(line: 327, column: 67, scope: !6244, inlinedAt: !6249)
!6249 = distinct !DILocation(line: 97, column: 2, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 97, column: 2)
!6251 = distinct !DILexicalBlock(scope: !6252, file: !3, line: 97, column: 2)
!6252 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 97, column: 2)
!6253 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 97, column: 2)
!6254 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 97, column: 2)
!6255 = !DILocalVariable(name: "addr", arg: 1, scope: !6256, file: !6257, line: 138, type: !3305)
!6256 = distinct !DISubprogram(name: "check_copy_size", scope: !6257, file: !6257, line: 138, type: !6258, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6257 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!6258 = !DISubroutineType(types: !6259)
!6259 = !{!443, !3305, !313, !443}
!6260 = !DILocation(line: 138, column: 29, scope: !6256, inlinedAt: !6261)
!6261 = distinct !DILocation(line: 191, column: 6, scope: !6262, inlinedAt: !6267)
!6262 = distinct !DILexicalBlock(scope: !6264, file: !6263, line: 191, column: 6)
!6263 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!6264 = distinct !DISubprogram(name: "copy_from_user", scope: !6263, file: !6263, line: 189, type: !6265, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!318, !312, !3305, !318}
!6267 = distinct !DILocation(line: 84, column: 6, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 84, column: 6)
!6269 = !DILocalVariable(name: "bytes", arg: 2, scope: !6256, file: !6257, line: 138, type: !313)
!6270 = !DILocation(line: 138, column: 42, scope: !6256, inlinedAt: !6261)
!6271 = !DILocalVariable(name: "is_source", arg: 3, scope: !6256, file: !6257, line: 138, type: !443)
!6272 = !DILocation(line: 138, column: 54, scope: !6256, inlinedAt: !6261)
!6273 = !DILocalVariable(name: "sz", scope: !6256, file: !6257, line: 140, type: !319)
!6274 = !DILocation(line: 140, column: 6, scope: !6256, inlinedAt: !6261)
!6275 = !DILocalVariable(name: "__ret_warn_on", scope: !6276, file: !6257, line: 150, type: !319)
!6276 = distinct !DILexicalBlock(scope: !6277, file: !6257, line: 150, column: 6)
!6277 = distinct !DILexicalBlock(scope: !6256, file: !6257, line: 150, column: 6)
!6278 = !DILocation(line: 150, column: 6, scope: !6276, inlinedAt: !6261)
!6279 = !DILocalVariable(name: "to", arg: 1, scope: !6264, file: !6263, line: 189, type: !312)
!6280 = !DILocation(line: 189, column: 22, scope: !6264, inlinedAt: !6267)
!6281 = !DILocalVariable(name: "from", arg: 2, scope: !6264, file: !6263, line: 189, type: !3305)
!6282 = !DILocation(line: 189, column: 45, scope: !6264, inlinedAt: !6267)
!6283 = !DILocalVariable(name: "n", arg: 3, scope: !6264, file: !6263, line: 189, type: !318)
!6284 = !DILocation(line: 189, column: 65, scope: !6264, inlinedAt: !6267)
!6285 = !DILocalVariable(name: "file", arg: 1, scope: !6233, file: !3, line: 73, type: !505)
!6286 = !DILocation(line: 73, column: 48, scope: !6233)
!6287 = !DILocalVariable(name: "ubuf", arg: 2, scope: !6233, file: !3, line: 73, type: !367)
!6288 = !DILocation(line: 73, column: 73, scope: !6233)
!6289 = !DILocalVariable(name: "count", arg: 3, scope: !6233, file: !3, line: 74, type: !313)
!6290 = !DILocation(line: 74, column: 14, scope: !6233)
!6291 = !DILocalVariable(name: "ppos", arg: 4, scope: !6233, file: !3, line: 74, type: !922)
!6292 = !DILocation(line: 74, column: 29, scope: !6233)
!6293 = !DILocalVariable(name: "s", scope: !6233, file: !3, line: 76, type: !874)
!6294 = !DILocation(line: 76, column: 19, scope: !6233)
!6295 = !DILocation(line: 76, column: 23, scope: !6233)
!6296 = !DILocation(line: 76, column: 29, scope: !6233)
!6297 = !DILocalVariable(name: "ci", scope: !6233, file: !3, line: 77, type: !5168)
!6298 = !DILocation(line: 77, column: 18, scope: !6233)
!6299 = !DILocation(line: 77, column: 23, scope: !6233)
!6300 = !DILocation(line: 77, column: 26, scope: !6233)
!6301 = !DILocalVariable(name: "flags", scope: !6233, file: !3, line: 78, type: !318)
!6302 = !DILocation(line: 78, column: 16, scope: !6233)
!6303 = !DILocalVariable(name: "mode", scope: !6233, file: !3, line: 79, type: !7)
!6304 = !DILocation(line: 79, column: 11, scope: !6233)
!6305 = !DILocalVariable(name: "buf", scope: !6233, file: !3, line: 80, type: !2375)
!6306 = !DILocation(line: 80, column: 7, scope: !6233)
!6307 = !DILocalVariable(name: "ret", scope: !6233, file: !3, line: 81, type: !319)
!6308 = !DILocation(line: 81, column: 6, scope: !6233)
!6309 = !DILocalVariable(name: "__UNIQUE_ID___x297", scope: !6310, file: !3, line: 83, type: !313)
!6310 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 83, column: 10)
!6311 = !DILocation(line: 83, column: 10, scope: !6310)
!6312 = !DILocalVariable(name: "__UNIQUE_ID___y298", scope: !6310, file: !3, line: 83, type: !313)
!6313 = !DILocation(line: 83, column: 8, scope: !6233)
!6314 = !DILocation(line: 84, column: 21, scope: !6268)
!6315 = !DILocation(line: 84, column: 26, scope: !6268)
!6316 = !DILocation(line: 84, column: 32, scope: !6268)
!6317 = !DILocation(line: 191, column: 6, scope: !6262, inlinedAt: !6267)
!6318 = !DILocation(line: 141, column: 6, scope: !6319, inlinedAt: !6261)
!6319 = distinct !DILexicalBlock(scope: !6256, file: !6257, line: 141, column: 6)
!6320 = !DILocation(line: 0, scope: !6319, inlinedAt: !6261)
!6321 = !DILocation(line: 141, column: 6, scope: !6256, inlinedAt: !6261)
!6322 = !DILocation(line: 142, column: 29, scope: !6323, inlinedAt: !6261)
!6323 = distinct !DILexicalBlock(scope: !6324, file: !6257, line: 142, column: 7)
!6324 = distinct !DILexicalBlock(scope: !6319, file: !6257, line: 141, column: 39)
!6325 = !DILocation(line: 142, column: 8, scope: !6323, inlinedAt: !6261)
!6326 = !DILocation(line: 142, column: 7, scope: !6324, inlinedAt: !6261)
!6327 = !DILocation(line: 143, column: 18, scope: !6323, inlinedAt: !6261)
!6328 = !DILocation(line: 143, column: 22, scope: !6323, inlinedAt: !6261)
!6329 = !DILocation(line: 143, column: 4, scope: !6323, inlinedAt: !6261)
!6330 = !DILocation(line: 144, column: 12, scope: !6331, inlinedAt: !6261)
!6331 = distinct !DILexicalBlock(scope: !6323, file: !6257, line: 144, column: 12)
!6332 = !DILocation(line: 144, column: 12, scope: !6323, inlinedAt: !6261)
!6333 = !DILocation(line: 145, column: 4, scope: !6331, inlinedAt: !6261)
!6334 = !DILocation(line: 147, column: 4, scope: !6331, inlinedAt: !6261)
!6335 = !DILocation(line: 148, column: 3, scope: !6324, inlinedAt: !6261)
!6336 = !DILocation(line: 150, column: 6, scope: !6337, inlinedAt: !6261)
!6337 = distinct !DILexicalBlock(scope: !6276, file: !6257, line: 150, column: 6)
!6338 = !DILocation(line: 150, column: 6, scope: !6339, inlinedAt: !6261)
!6339 = distinct !DILexicalBlock(scope: !6340, file: !6257, line: 150, column: 6)
!6340 = distinct !DILexicalBlock(scope: !6337, file: !6257, line: 150, column: 6)
!6341 = !{i32 -2145536113, i32 -2145536084, i32 -2145536038, i32 -2145535980, i32 -2145535926, i32 -2145535872, i32 -2145535817, i32 -2145535786}
!6342 = !DILocation(line: 150, column: 6, scope: !6343, inlinedAt: !6261)
!6343 = distinct !DILexicalBlock(scope: !6340, file: !6257, line: 150, column: 6)
!6344 = !{i32 -2145535366, i32 -2145535359, i32 -2145535307, i32 -2145535276, i32 -2145535246}
!6345 = !DILocation(line: 150, column: 6, scope: !6340, inlinedAt: !6261)
!6346 = !DILocation(line: 150, column: 6, scope: !6277, inlinedAt: !6261)
!6347 = !DILocation(line: 150, column: 6, scope: !6256, inlinedAt: !6261)
!6348 = !DILocation(line: 151, column: 3, scope: !6277, inlinedAt: !6261)
!6349 = !DILocation(line: 152, column: 20, scope: !6256, inlinedAt: !6261)
!6350 = !DILocation(line: 152, column: 26, scope: !6256, inlinedAt: !6261)
!6351 = !DILocation(line: 152, column: 33, scope: !6256, inlinedAt: !6261)
!6352 = !DILocation(line: 152, column: 2, scope: !6256, inlinedAt: !6261)
!6353 = !DILocation(line: 153, column: 2, scope: !6256, inlinedAt: !6261)
!6354 = !DILocation(line: 154, column: 1, scope: !6256, inlinedAt: !6261)
!6355 = !DILocation(line: 191, column: 6, scope: !6264, inlinedAt: !6267)
!6356 = !DILocation(line: 192, column: 23, scope: !6262, inlinedAt: !6267)
!6357 = !DILocation(line: 192, column: 27, scope: !6262, inlinedAt: !6267)
!6358 = !DILocation(line: 192, column: 33, scope: !6262, inlinedAt: !6267)
!6359 = !DILocation(line: 192, column: 7, scope: !6262, inlinedAt: !6267)
!6360 = !DILocation(line: 192, column: 5, scope: !6262, inlinedAt: !6267)
!6361 = !DILocation(line: 192, column: 3, scope: !6262, inlinedAt: !6267)
!6362 = !DILocation(line: 193, column: 9, scope: !6264, inlinedAt: !6267)
!6363 = !DILocation(line: 84, column: 6, scope: !6268)
!6364 = !DILocation(line: 84, column: 6, scope: !6233)
!6365 = !DILocation(line: 85, column: 3, scope: !6268)
!6366 = !DILocation(line: 88, column: 6, scope: !6233)
!6367 = !DILocation(line: 88, column: 2, scope: !6233)
!6368 = !DILocation(line: 88, column: 13, scope: !6233)
!6369 = !DILocation(line: 90, column: 13, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 90, column: 6)
!6371 = !DILocation(line: 90, column: 6, scope: !6370)
!6372 = !DILocation(line: 90, column: 31, scope: !6370)
!6373 = !DILocation(line: 90, column: 6, scope: !6233)
!6374 = !DILocation(line: 91, column: 3, scope: !6370)
!6375 = !DILocation(line: 93, column: 6, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6233, file: !3, line: 93, column: 6)
!6377 = !DILocation(line: 93, column: 11, scope: !6376)
!6378 = !DILocation(line: 93, column: 6, scope: !6233)
!6379 = !DILocation(line: 94, column: 3, scope: !6376)
!6380 = !DILocation(line: 96, column: 22, scope: !6233)
!6381 = !DILocation(line: 96, column: 26, scope: !6233)
!6382 = !DILocation(line: 96, column: 2, scope: !6233)
!6383 = !DILocation(line: 97, column: 2, scope: !6233)
!6384 = !DILocation(line: 97, column: 2, scope: !6254)
!6385 = !DILocalVariable(name: "__dummy", scope: !6386, file: !3, line: 97, type: !318)
!6386 = distinct !DILexicalBlock(scope: !6253, file: !3, line: 97, column: 2)
!6387 = !DILocation(line: 97, column: 2, scope: !6386)
!6388 = !DILocalVariable(name: "__dummy2", scope: !6386, file: !3, line: 97, type: !318)
!6389 = !DILocation(line: 97, column: 2, scope: !6253)
!6390 = !DILocation(line: 97, column: 2, scope: !6252)
!6391 = !DILocation(line: 97, column: 2, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6252, file: !3, line: 97, column: 2)
!6393 = !DILocalVariable(name: "__dummy", scope: !6394, file: !3, line: 97, type: !318)
!6394 = distinct !DILexicalBlock(scope: !6395, file: !3, line: 97, column: 2)
!6395 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 97, column: 2)
!6396 = !DILocation(line: 97, column: 2, scope: !6394)
!6397 = !DILocalVariable(name: "__dummy2", scope: !6394, file: !3, line: 97, type: !318)
!6398 = !DILocation(line: 97, column: 2, scope: !6395)
!6399 = !DILocation(line: 97, column: 2, scope: !6251)
!6400 = !{i32 -2140515618}
!6401 = !DILocation(line: 97, column: 2, scope: !6250)
!6402 = !DILocation(line: 329, column: 10, scope: !6244, inlinedAt: !6249)
!6403 = !DILocation(line: 329, column: 16, scope: !6244, inlinedAt: !6249)
!6404 = !DILocation(line: 98, column: 25, scope: !6233)
!6405 = !DILocation(line: 98, column: 29, scope: !6233)
!6406 = !DILocation(line: 98, column: 8, scope: !6233)
!6407 = !DILocation(line: 98, column: 6, scope: !6233)
!6408 = !DILocation(line: 99, column: 26, scope: !6233)
!6409 = !DILocation(line: 99, column: 30, scope: !6233)
!6410 = !DILocation(line: 99, column: 36, scope: !6233)
!6411 = !DILocalVariable(name: "__dummy", scope: !6412, file: !6236, line: 409, type: !318)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !6236, line: 409, column: 2)
!6413 = distinct !DILexicalBlock(scope: !6235, file: !6236, line: 409, column: 2)
!6414 = !DILocation(line: 409, column: 2, scope: !6412, inlinedAt: !6240)
!6415 = !DILocalVariable(name: "__dummy2", scope: !6412, file: !6236, line: 409, type: !318)
!6416 = !DILocalVariable(name: "__dummy", scope: !6417, file: !6236, line: 409, type: !318)
!6417 = distinct !DILexicalBlock(scope: !6418, file: !6236, line: 409, column: 2)
!6418 = distinct !DILexicalBlock(scope: !6419, file: !6236, line: 409, column: 2)
!6419 = distinct !DILexicalBlock(scope: !6420, file: !6236, line: 409, column: 2)
!6420 = distinct !DILexicalBlock(scope: !6413, file: !6236, line: 409, column: 2)
!6421 = !DILocation(line: 409, column: 2, scope: !6417, inlinedAt: !6240)
!6422 = !DILocalVariable(name: "__dummy2", scope: !6417, file: !6236, line: 409, type: !318)
!6423 = !DILocation(line: 409, column: 2, scope: !6418, inlinedAt: !6240)
!6424 = !DILocation(line: 409, column: 2, scope: !6425, inlinedAt: !6240)
!6425 = distinct !DILexicalBlock(scope: !6420, file: !6236, line: 409, column: 2)
!6426 = !{i32 -2145288944}
!6427 = !DILocation(line: 409, column: 2, scope: !6428, inlinedAt: !6240)
!6428 = distinct !DILexicalBlock(scope: !6425, file: !6236, line: 409, column: 2)
!6429 = !DILocation(line: 100, column: 22, scope: !6233)
!6430 = !DILocation(line: 100, column: 26, scope: !6233)
!6431 = !DILocation(line: 100, column: 2, scope: !6233)
!6432 = !DILocation(line: 102, column: 9, scope: !6233)
!6433 = !DILocation(line: 102, column: 15, scope: !6233)
!6434 = !DILocation(line: 102, column: 21, scope: !6233)
!6435 = !DILocation(line: 102, column: 2, scope: !6233)
!6436 = !DILocation(line: 103, column: 1, scope: !6233)
!6437 = distinct !DISubprogram(name: "ci_port_test_open", scope: !3, file: !3, line: 105, type: !4992, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6438 = !DILocalVariable(name: "inode", arg: 1, scope: !6437, file: !3, line: 105, type: !574)
!6439 = !DILocation(line: 105, column: 44, scope: !6437)
!6440 = !DILocalVariable(name: "file", arg: 2, scope: !6437, file: !3, line: 105, type: !505)
!6441 = !DILocation(line: 105, column: 64, scope: !6437)
!6442 = !DILocation(line: 107, column: 21, scope: !6437)
!6443 = !DILocation(line: 107, column: 46, scope: !6437)
!6444 = !DILocation(line: 107, column: 53, scope: !6437)
!6445 = !DILocation(line: 107, column: 9, scope: !6437)
!6446 = !DILocation(line: 107, column: 2, scope: !6437)
!6447 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !6448, file: !6448, line: 384, type: !3820, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6448 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!6449 = !DILocalVariable(name: "dev", arg: 1, scope: !6447, file: !6448, line: 384, type: !2838)
!6450 = !DILocation(line: 384, column: 54, scope: !6447)
!6451 = !DILocation(line: 386, column: 29, scope: !6447)
!6452 = !DILocation(line: 386, column: 9, scope: !6447)
!6453 = !DILocation(line: 386, column: 2, scope: !6447)
!6454 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !6455, file: !6455, line: 666, type: !6456, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6455 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!6456 = !DISubroutineType(types: !6457)
!6457 = !{!318}
!6458 = !DILocalVariable(name: "f", scope: !6454, file: !6455, line: 668, type: !318)
!6459 = !DILocation(line: 668, column: 16, scope: !6454)
!6460 = !DILocation(line: 670, column: 6, scope: !6454)
!6461 = !DILocation(line: 670, column: 4, scope: !6454)
!6462 = !DILocation(line: 671, column: 2, scope: !6454)
!6463 = !DILocation(line: 672, column: 9, scope: !6454)
!6464 = !DILocation(line: 672, column: 2, scope: !6454)
!6465 = distinct !DISubprogram(name: "pm_runtime_put_sync", scope: !6448, file: !6448, line: 448, type: !3820, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6466 = !DILocalVariable(name: "dev", arg: 1, scope: !6465, file: !6448, line: 448, type: !2838)
!6467 = !DILocation(line: 448, column: 54, scope: !6465)
!6468 = !DILocation(line: 450, column: 27, scope: !6465)
!6469 = !DILocation(line: 450, column: 9, scope: !6465)
!6470 = !DILocation(line: 450, column: 2, scope: !6465)
!6471 = distinct !DISubprogram(name: "copy_overflow", scope: !6257, file: !6257, line: 132, type: !6472, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6472 = !DISubroutineType(types: !6473)
!6473 = !{null, !319, !318}
!6474 = !DILocalVariable(name: "size", arg: 1, scope: !6471, file: !6257, line: 132, type: !319)
!6475 = !DILocation(line: 132, column: 38, scope: !6471)
!6476 = !DILocalVariable(name: "count", arg: 2, scope: !6471, file: !6257, line: 132, type: !318)
!6477 = !DILocation(line: 132, column: 58, scope: !6471)
!6478 = !DILocalVariable(name: "__ret_warn_on", scope: !6479, file: !6257, line: 134, type: !319)
!6479 = distinct !DILexicalBlock(scope: !6471, file: !6257, line: 134, column: 2)
!6480 = !DILocation(line: 134, column: 2, scope: !6479)
!6481 = !DILocation(line: 134, column: 2, scope: !6482)
!6482 = distinct !DILexicalBlock(scope: !6479, file: !6257, line: 134, column: 2)
!6483 = !DILocation(line: 134, column: 2, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6482, file: !6257, line: 134, column: 2)
!6485 = !DILocation(line: 134, column: 2, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6484, file: !6257, line: 134, column: 2)
!6487 = !DILocation(line: 134, column: 2, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6484, file: !6257, line: 134, column: 2)
!6489 = !DILocation(line: 134, column: 2, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6488, file: !6257, line: 134, column: 2)
!6491 = !DILocation(line: 134, column: 2, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6488, file: !6257, line: 134, column: 2)
!6493 = !{i32 -2145537937, i32 -2145537908, i32 -2145537862, i32 -2145537804, i32 -2145537750, i32 -2145537696, i32 -2145537641, i32 -2145537610}
!6494 = !DILocation(line: 134, column: 2, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6488, file: !6257, line: 134, column: 2)
!6496 = !{i32 -2145537190, i32 -2145537183, i32 -2145537131, i32 -2145537100, i32 -2145537070}
!6497 = !DILocation(line: 134, column: 2, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6488, file: !6257, line: 134, column: 2)
!6499 = !DILocation(line: 134, column: 2, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6484, file: !6257, line: 134, column: 2)
!6501 = !DILocation(line: 135, column: 1, scope: !6471)
!6502 = distinct !DISubprogram(name: "check_object_size", scope: !6257, file: !6257, line: 122, type: !6503, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6503 = !DISubroutineType(types: !6504)
!6504 = !{null, !3305, !318, !443}
!6505 = !DILocalVariable(name: "ptr", arg: 1, scope: !6502, file: !6257, line: 122, type: !3305)
!6506 = !DILocation(line: 122, column: 50, scope: !6502)
!6507 = !DILocalVariable(name: "n", arg: 2, scope: !6502, file: !6257, line: 122, type: !318)
!6508 = !DILocation(line: 122, column: 69, scope: !6502)
!6509 = !DILocalVariable(name: "to_user", arg: 3, scope: !6502, file: !6257, line: 123, type: !443)
!6510 = !DILocation(line: 123, column: 15, scope: !6502)
!6511 = !DILocation(line: 124, column: 3, scope: !6502)
!6512 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !6455, file: !6455, line: 646, type: !6456, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6513 = !DILocalVariable(name: "__ret", scope: !6514, file: !6455, line: 648, type: !318)
!6514 = distinct !DILexicalBlock(scope: !6512, file: !6455, line: 648, column: 9)
!6515 = !DILocation(line: 648, column: 9, scope: !6514)
!6516 = !DILocalVariable(name: "__edi", scope: !6514, file: !6455, line: 648, type: !318)
!6517 = !DILocalVariable(name: "__esi", scope: !6514, file: !6455, line: 648, type: !318)
!6518 = !DILocalVariable(name: "__edx", scope: !6514, file: !6455, line: 648, type: !318)
!6519 = !DILocalVariable(name: "__ecx", scope: !6514, file: !6455, line: 648, type: !318)
!6520 = !DILocalVariable(name: "__eax", scope: !6514, file: !6455, line: 648, type: !318)
!6521 = !DILocation(line: 648, column: 9, scope: !6522)
!6522 = distinct !DILexicalBlock(scope: !6523, file: !6455, line: 648, column: 9)
!6523 = distinct !DILexicalBlock(scope: !6514, file: !6455, line: 648, column: 9)
!6524 = !{i32 -2145765787, i32 -2145763472, i32 -2145763238, i32 -2145763187, i32 -2145763159, i32 -2145763134, i32 -2145763450, i32 -2145763437, i32 -2145762999, i32 -2145762880, i32 -2145763345, i32 -2145763318, i32 -2145763290, i32 -2145763260}
!6525 = !DILocalVariable(name: "__mask", scope: !6526, file: !6455, line: 648, type: !318)
!6526 = distinct !DILexicalBlock(scope: !6522, file: !6455, line: 648, column: 9)
!6527 = !DILocation(line: 648, column: 9, scope: !6526)
!6528 = !DILocation(line: 648, column: 9, scope: !6523)
!6529 = !DILocation(line: 648, column: 2, scope: !6512)
!6530 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !6455, file: !6455, line: 656, type: !2322, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6531 = !DILocalVariable(name: "__edi", scope: !6532, file: !6455, line: 658, type: !318)
!6532 = distinct !DILexicalBlock(scope: !6530, file: !6455, line: 658, column: 2)
!6533 = !DILocation(line: 658, column: 2, scope: !6532)
!6534 = !DILocalVariable(name: "__esi", scope: !6532, file: !6455, line: 658, type: !318)
!6535 = !DILocalVariable(name: "__edx", scope: !6532, file: !6455, line: 658, type: !318)
!6536 = !DILocalVariable(name: "__ecx", scope: !6532, file: !6455, line: 658, type: !318)
!6537 = !DILocalVariable(name: "__eax", scope: !6532, file: !6455, line: 658, type: !318)
!6538 = !{i32 -2145758693, i32 -2145757961, i32 -2145757727, i32 -2145757676, i32 -2145757648, i32 -2145757623, i32 -2145757939, i32 -2145757926, i32 -2145757488, i32 -2145757369, i32 -2145757834, i32 -2145757807, i32 -2145757779, i32 -2145757749}
!6539 = !DILocation(line: 659, column: 1, scope: !6530)
!6540 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !6455, file: !6455, line: 651, type: !6541, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6541 = !DISubroutineType(types: !6542)
!6542 = !{null, !318}
!6543 = !DILocalVariable(name: "f", arg: 1, scope: !6540, file: !6455, line: 651, type: !318)
!6544 = !DILocation(line: 651, column: 65, scope: !6540)
!6545 = !DILocalVariable(name: "__edi", scope: !6546, file: !6455, line: 653, type: !318)
!6546 = distinct !DILexicalBlock(scope: !6540, file: !6455, line: 653, column: 2)
!6547 = !DILocation(line: 653, column: 2, scope: !6546)
!6548 = !DILocalVariable(name: "__esi", scope: !6546, file: !6455, line: 653, type: !318)
!6549 = !DILocalVariable(name: "__edx", scope: !6546, file: !6455, line: 653, type: !318)
!6550 = !DILocalVariable(name: "__ecx", scope: !6546, file: !6455, line: 653, type: !318)
!6551 = !DILocalVariable(name: "__eax", scope: !6546, file: !6455, line: 653, type: !318)
!6552 = !{i32 -2145761320, i32 -2145760570, i32 -2145760336, i32 -2145760285, i32 -2145760257, i32 -2145760232, i32 -2145760548, i32 -2145760535, i32 -2145760097, i32 -2145759978, i32 -2145760443, i32 -2145760416, i32 -2145760388, i32 -2145760358}
!6553 = !DILocation(line: 654, column: 1, scope: !6540)
!6554 = distinct !DISubprogram(name: "ci_port_test_show", scope: !3, file: !3, line: 53, type: !933, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6555 = !DILocation(line: 407, column: 64, scope: !6235, inlinedAt: !6556)
!6556 = distinct !DILocation(line: 62, column: 2, scope: !6554)
!6557 = !DILocation(line: 407, column: 84, scope: !6235, inlinedAt: !6556)
!6558 = !DILocation(line: 327, column: 67, scope: !6244, inlinedAt: !6559)
!6559 = distinct !DILocation(line: 60, column: 2, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 60, column: 2)
!6561 = distinct !DILexicalBlock(scope: !6562, file: !3, line: 60, column: 2)
!6562 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 60, column: 2)
!6563 = distinct !DILexicalBlock(scope: !6564, file: !3, line: 60, column: 2)
!6564 = distinct !DILexicalBlock(scope: !6554, file: !3, line: 60, column: 2)
!6565 = !DILocalVariable(name: "s", arg: 1, scope: !6554, file: !3, line: 53, type: !874)
!6566 = !DILocation(line: 53, column: 47, scope: !6554)
!6567 = !DILocalVariable(name: "data", arg: 2, scope: !6554, file: !3, line: 53, type: !312)
!6568 = !DILocation(line: 53, column: 56, scope: !6554)
!6569 = !DILocalVariable(name: "ci", scope: !6554, file: !3, line: 55, type: !5168)
!6570 = !DILocation(line: 55, column: 18, scope: !6554)
!6571 = !DILocation(line: 55, column: 23, scope: !6554)
!6572 = !DILocation(line: 55, column: 26, scope: !6554)
!6573 = !DILocalVariable(name: "flags", scope: !6554, file: !3, line: 56, type: !318)
!6574 = !DILocation(line: 56, column: 16, scope: !6554)
!6575 = !DILocalVariable(name: "mode", scope: !6554, file: !3, line: 57, type: !7)
!6576 = !DILocation(line: 57, column: 11, scope: !6554)
!6577 = !DILocation(line: 59, column: 22, scope: !6554)
!6578 = !DILocation(line: 59, column: 26, scope: !6554)
!6579 = !DILocation(line: 59, column: 2, scope: !6554)
!6580 = !DILocation(line: 60, column: 2, scope: !6554)
!6581 = !DILocation(line: 60, column: 2, scope: !6564)
!6582 = !DILocalVariable(name: "__dummy", scope: !6583, file: !3, line: 60, type: !318)
!6583 = distinct !DILexicalBlock(scope: !6563, file: !3, line: 60, column: 2)
!6584 = !DILocation(line: 60, column: 2, scope: !6583)
!6585 = !DILocalVariable(name: "__dummy2", scope: !6583, file: !3, line: 60, type: !318)
!6586 = !DILocation(line: 60, column: 2, scope: !6563)
!6587 = !DILocation(line: 60, column: 2, scope: !6562)
!6588 = !DILocation(line: 60, column: 2, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6562, file: !3, line: 60, column: 2)
!6590 = !DILocalVariable(name: "__dummy", scope: !6591, file: !3, line: 60, type: !318)
!6591 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 60, column: 2)
!6592 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 60, column: 2)
!6593 = !DILocation(line: 60, column: 2, scope: !6591)
!6594 = !DILocalVariable(name: "__dummy2", scope: !6591, file: !3, line: 60, type: !318)
!6595 = !DILocation(line: 60, column: 2, scope: !6592)
!6596 = !DILocation(line: 60, column: 2, scope: !6561)
!6597 = !{i32 -2140522495}
!6598 = !DILocation(line: 60, column: 2, scope: !6560)
!6599 = !DILocation(line: 329, column: 10, scope: !6244, inlinedAt: !6559)
!6600 = !DILocation(line: 329, column: 16, scope: !6244, inlinedAt: !6559)
!6601 = !DILocation(line: 61, column: 26, scope: !6554)
!6602 = !DILocation(line: 61, column: 9, scope: !6554)
!6603 = !DILocation(line: 61, column: 7, scope: !6554)
!6604 = !DILocation(line: 62, column: 26, scope: !6554)
!6605 = !DILocation(line: 62, column: 30, scope: !6554)
!6606 = !DILocation(line: 62, column: 36, scope: !6554)
!6607 = !DILocation(line: 409, column: 2, scope: !6412, inlinedAt: !6556)
!6608 = !DILocation(line: 409, column: 2, scope: !6417, inlinedAt: !6556)
!6609 = !DILocation(line: 409, column: 2, scope: !6418, inlinedAt: !6556)
!6610 = !DILocation(line: 409, column: 2, scope: !6425, inlinedAt: !6556)
!6611 = !DILocation(line: 409, column: 2, scope: !6428, inlinedAt: !6556)
!6612 = !DILocation(line: 63, column: 22, scope: !6554)
!6613 = !DILocation(line: 63, column: 26, scope: !6554)
!6614 = !DILocation(line: 63, column: 2, scope: !6554)
!6615 = !DILocation(line: 65, column: 13, scope: !6554)
!6616 = !DILocation(line: 65, column: 31, scope: !6554)
!6617 = !DILocation(line: 65, column: 2, scope: !6554)
!6618 = !DILocation(line: 67, column: 2, scope: !6554)
!6619 = distinct !DISubprogram(name: "ci_qheads_open", scope: !3, file: !3, line: 148, type: !4992, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6620 = !DILocalVariable(name: "inode", arg: 1, scope: !6619, file: !3, line: 148, type: !574)
!6621 = !DILocation(line: 148, column: 1, scope: !6619)
!6622 = !DILocalVariable(name: "file", arg: 2, scope: !6619, file: !3, line: 148, type: !505)
!6623 = distinct !DISubprogram(name: "ci_qheads_show", scope: !3, file: !3, line: 121, type: !933, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6624 = !DILocation(line: 407, column: 64, scope: !6235, inlinedAt: !6625)
!6625 = distinct !DILocation(line: 144, column: 2, scope: !6623)
!6626 = !DILocation(line: 407, column: 84, scope: !6235, inlinedAt: !6625)
!6627 = !DILocation(line: 327, column: 67, scope: !6244, inlinedAt: !6628)
!6628 = distinct !DILocation(line: 132, column: 2, scope: !6629)
!6629 = distinct !DILexicalBlock(scope: !6630, file: !3, line: 132, column: 2)
!6630 = distinct !DILexicalBlock(scope: !6631, file: !3, line: 132, column: 2)
!6631 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 132, column: 2)
!6632 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 132, column: 2)
!6633 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 132, column: 2)
!6634 = !DILocalVariable(name: "s", arg: 1, scope: !6623, file: !3, line: 121, type: !874)
!6635 = !DILocation(line: 121, column: 44, scope: !6623)
!6636 = !DILocalVariable(name: "data", arg: 2, scope: !6623, file: !3, line: 121, type: !312)
!6637 = !DILocation(line: 121, column: 53, scope: !6623)
!6638 = !DILocalVariable(name: "ci", scope: !6623, file: !3, line: 123, type: !5168)
!6639 = !DILocation(line: 123, column: 18, scope: !6623)
!6640 = !DILocation(line: 123, column: 23, scope: !6623)
!6641 = !DILocation(line: 123, column: 26, scope: !6623)
!6642 = !DILocalVariable(name: "flags", scope: !6623, file: !3, line: 124, type: !318)
!6643 = !DILocation(line: 124, column: 16, scope: !6623)
!6644 = !DILocalVariable(name: "i", scope: !6623, file: !3, line: 125, type: !7)
!6645 = !DILocation(line: 125, column: 11, scope: !6623)
!6646 = !DILocalVariable(name: "j", scope: !6623, file: !3, line: 125, type: !7)
!6647 = !DILocation(line: 125, column: 14, scope: !6623)
!6648 = !DILocation(line: 127, column: 6, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 127, column: 6)
!6650 = !DILocation(line: 127, column: 10, scope: !6649)
!6651 = !DILocation(line: 127, column: 15, scope: !6649)
!6652 = !DILocation(line: 127, column: 6, scope: !6623)
!6653 = !DILocation(line: 128, column: 14, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 127, column: 34)
!6655 = !DILocation(line: 128, column: 3, scope: !6654)
!6656 = !DILocation(line: 129, column: 3, scope: !6654)
!6657 = !DILocation(line: 132, column: 2, scope: !6623)
!6658 = !DILocation(line: 132, column: 2, scope: !6633)
!6659 = !DILocalVariable(name: "__dummy", scope: !6660, file: !3, line: 132, type: !318)
!6660 = distinct !DILexicalBlock(scope: !6632, file: !3, line: 132, column: 2)
!6661 = !DILocation(line: 132, column: 2, scope: !6660)
!6662 = !DILocalVariable(name: "__dummy2", scope: !6660, file: !3, line: 132, type: !318)
!6663 = !DILocation(line: 132, column: 2, scope: !6632)
!6664 = !DILocation(line: 132, column: 2, scope: !6631)
!6665 = !DILocation(line: 132, column: 2, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6631, file: !3, line: 132, column: 2)
!6667 = !DILocalVariable(name: "__dummy", scope: !6668, file: !3, line: 132, type: !318)
!6668 = distinct !DILexicalBlock(scope: !6669, file: !3, line: 132, column: 2)
!6669 = distinct !DILexicalBlock(scope: !6666, file: !3, line: 132, column: 2)
!6670 = !DILocation(line: 132, column: 2, scope: !6668)
!6671 = !DILocalVariable(name: "__dummy2", scope: !6668, file: !3, line: 132, type: !318)
!6672 = !DILocation(line: 132, column: 2, scope: !6669)
!6673 = !DILocation(line: 132, column: 2, scope: !6630)
!6674 = !{i32 -2140514613}
!6675 = !DILocation(line: 132, column: 2, scope: !6629)
!6676 = !DILocation(line: 329, column: 10, scope: !6244, inlinedAt: !6628)
!6677 = !DILocation(line: 329, column: 16, scope: !6244, inlinedAt: !6628)
!6678 = !DILocation(line: 133, column: 9, scope: !6679)
!6679 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 133, column: 2)
!6680 = !DILocation(line: 133, column: 7, scope: !6679)
!6681 = !DILocation(line: 133, column: 14, scope: !6682)
!6682 = distinct !DILexicalBlock(scope: !6679, file: !3, line: 133, column: 2)
!6683 = !DILocation(line: 133, column: 18, scope: !6682)
!6684 = !DILocation(line: 133, column: 22, scope: !6682)
!6685 = !DILocation(line: 133, column: 31, scope: !6682)
!6686 = !DILocation(line: 133, column: 16, scope: !6682)
!6687 = !DILocation(line: 133, column: 2, scope: !6679)
!6688 = !DILocalVariable(name: "hweprx", scope: !6689, file: !3, line: 134, type: !5958)
!6689 = distinct !DILexicalBlock(scope: !6682, file: !3, line: 133, column: 40)
!6690 = !DILocation(line: 134, column: 20, scope: !6689)
!6691 = !DILocation(line: 134, column: 30, scope: !6689)
!6692 = !DILocation(line: 134, column: 34, scope: !6689)
!6693 = !DILocation(line: 134, column: 43, scope: !6689)
!6694 = !DILocalVariable(name: "hweptx", scope: !6689, file: !3, line: 135, type: !5958)
!6695 = !DILocation(line: 135, column: 20, scope: !6689)
!6696 = !DILocation(line: 136, column: 5, scope: !6689)
!6697 = !DILocation(line: 136, column: 9, scope: !6689)
!6698 = !DILocation(line: 136, column: 18, scope: !6689)
!6699 = !DILocation(line: 136, column: 22, scope: !6689)
!6700 = !DILocation(line: 136, column: 26, scope: !6689)
!6701 = !DILocation(line: 136, column: 35, scope: !6689)
!6702 = !DILocation(line: 136, column: 20, scope: !6689)
!6703 = !DILocation(line: 137, column: 14, scope: !6689)
!6704 = !DILocation(line: 138, column: 7, scope: !6689)
!6705 = !DILocation(line: 138, column: 15, scope: !6689)
!6706 = !DILocation(line: 138, column: 23, scope: !6689)
!6707 = !DILocation(line: 138, column: 26, scope: !6689)
!6708 = !DILocation(line: 138, column: 10, scope: !6689)
!6709 = !DILocation(line: 138, column: 36, scope: !6689)
!6710 = !DILocation(line: 138, column: 44, scope: !6689)
!6711 = !DILocation(line: 138, column: 47, scope: !6689)
!6712 = !DILocation(line: 138, column: 31, scope: !6689)
!6713 = !DILocation(line: 137, column: 3, scope: !6689)
!6714 = !DILocation(line: 139, column: 10, scope: !6715)
!6715 = distinct !DILexicalBlock(scope: !6689, file: !3, line: 139, column: 3)
!6716 = !DILocation(line: 139, column: 8, scope: !6715)
!6717 = !DILocation(line: 139, column: 15, scope: !6718)
!6718 = distinct !DILexicalBlock(scope: !6715, file: !3, line: 139, column: 3)
!6719 = !DILocation(line: 139, column: 17, scope: !6718)
!6720 = !DILocation(line: 139, column: 3, scope: !6715)
!6721 = !DILocation(line: 140, column: 15, scope: !6718)
!6722 = !DILocation(line: 140, column: 46, scope: !6718)
!6723 = !DILocation(line: 141, column: 17, scope: !6718)
!6724 = !DILocation(line: 141, column: 25, scope: !6718)
!6725 = !DILocation(line: 141, column: 28, scope: !6718)
!6726 = !DILocation(line: 141, column: 10, scope: !6718)
!6727 = !DILocation(line: 141, column: 34, scope: !6718)
!6728 = !DILocation(line: 141, column: 32, scope: !6718)
!6729 = !DILocation(line: 141, column: 8, scope: !6718)
!6730 = !DILocation(line: 142, column: 17, scope: !6718)
!6731 = !DILocation(line: 142, column: 25, scope: !6718)
!6732 = !DILocation(line: 142, column: 28, scope: !6718)
!6733 = !DILocation(line: 142, column: 10, scope: !6718)
!6734 = !DILocation(line: 142, column: 34, scope: !6718)
!6735 = !DILocation(line: 142, column: 32, scope: !6718)
!6736 = !DILocation(line: 142, column: 8, scope: !6718)
!6737 = !DILocation(line: 140, column: 4, scope: !6718)
!6738 = !DILocation(line: 139, column: 59, scope: !6718)
!6739 = !DILocation(line: 139, column: 3, scope: !6718)
!6740 = distinct !{!6740, !6720, !6741}
!6741 = !DILocation(line: 142, column: 36, scope: !6715)
!6742 = !DILocation(line: 143, column: 2, scope: !6689)
!6743 = !DILocation(line: 133, column: 36, scope: !6682)
!6744 = !DILocation(line: 133, column: 2, scope: !6682)
!6745 = distinct !{!6745, !6687, !6746}
!6746 = !DILocation(line: 143, column: 2, scope: !6679)
!6747 = !DILocation(line: 144, column: 26, scope: !6623)
!6748 = !DILocation(line: 144, column: 30, scope: !6623)
!6749 = !DILocation(line: 144, column: 36, scope: !6623)
!6750 = !DILocation(line: 409, column: 2, scope: !6412, inlinedAt: !6625)
!6751 = !DILocation(line: 409, column: 2, scope: !6417, inlinedAt: !6625)
!6752 = !DILocation(line: 409, column: 2, scope: !6418, inlinedAt: !6625)
!6753 = !DILocation(line: 409, column: 2, scope: !6425, inlinedAt: !6625)
!6754 = !DILocation(line: 409, column: 2, scope: !6428, inlinedAt: !6625)
!6755 = !DILocation(line: 146, column: 2, scope: !6623)
!6756 = !DILocation(line: 147, column: 1, scope: !6623)
!6757 = distinct !DISubprogram(name: "ci_requests_open", scope: !3, file: !3, line: 185, type: !4992, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6758 = !DILocalVariable(name: "inode", arg: 1, scope: !6757, file: !3, line: 185, type: !574)
!6759 = !DILocation(line: 185, column: 1, scope: !6757)
!6760 = !DILocalVariable(name: "file", arg: 2, scope: !6757, file: !3, line: 185, type: !505)
!6761 = distinct !DISubprogram(name: "ci_requests_show", scope: !3, file: !3, line: 153, type: !933, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6762 = !DILocation(line: 407, column: 64, scope: !6235, inlinedAt: !6763)
!6763 = distinct !DILocation(line: 181, column: 2, scope: !6761)
!6764 = !DILocation(line: 407, column: 84, scope: !6235, inlinedAt: !6763)
!6765 = !DILocation(line: 327, column: 67, scope: !6244, inlinedAt: !6766)
!6766 = distinct !DILocation(line: 166, column: 2, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6768, file: !3, line: 166, column: 2)
!6768 = distinct !DILexicalBlock(scope: !6769, file: !3, line: 166, column: 2)
!6769 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 166, column: 2)
!6770 = distinct !DILexicalBlock(scope: !6771, file: !3, line: 166, column: 2)
!6771 = distinct !DILexicalBlock(scope: !6761, file: !3, line: 166, column: 2)
!6772 = !DILocalVariable(name: "s", arg: 1, scope: !6761, file: !3, line: 153, type: !874)
!6773 = !DILocation(line: 153, column: 46, scope: !6761)
!6774 = !DILocalVariable(name: "data", arg: 2, scope: !6761, file: !3, line: 153, type: !312)
!6775 = !DILocation(line: 153, column: 55, scope: !6761)
!6776 = !DILocalVariable(name: "ci", scope: !6761, file: !3, line: 155, type: !5168)
!6777 = !DILocation(line: 155, column: 18, scope: !6761)
!6778 = !DILocation(line: 155, column: 23, scope: !6761)
!6779 = !DILocation(line: 155, column: 26, scope: !6761)
!6780 = !DILocalVariable(name: "flags", scope: !6761, file: !3, line: 156, type: !318)
!6781 = !DILocation(line: 156, column: 16, scope: !6761)
!6782 = !DILocalVariable(name: "req", scope: !6761, file: !3, line: 157, type: !325)
!6783 = !DILocation(line: 157, column: 20, scope: !6761)
!6784 = !DILocalVariable(name: "node", scope: !6761, file: !3, line: 158, type: !471)
!6785 = !DILocation(line: 158, column: 18, scope: !6761)
!6786 = !DILocalVariable(name: "tmpnode", scope: !6761, file: !3, line: 158, type: !471)
!6787 = !DILocation(line: 158, column: 25, scope: !6761)
!6788 = !DILocalVariable(name: "i", scope: !6761, file: !3, line: 159, type: !7)
!6789 = !DILocation(line: 159, column: 11, scope: !6761)
!6790 = !DILocalVariable(name: "j", scope: !6761, file: !3, line: 159, type: !7)
!6791 = !DILocation(line: 159, column: 14, scope: !6761)
!6792 = !DILocalVariable(name: "qsize", scope: !6761, file: !3, line: 159, type: !7)
!6793 = !DILocation(line: 159, column: 17, scope: !6761)
!6794 = !DILocation(line: 161, column: 6, scope: !6795)
!6795 = distinct !DILexicalBlock(scope: !6761, file: !3, line: 161, column: 6)
!6796 = !DILocation(line: 161, column: 10, scope: !6795)
!6797 = !DILocation(line: 161, column: 15, scope: !6795)
!6798 = !DILocation(line: 161, column: 6, scope: !6761)
!6799 = !DILocation(line: 162, column: 14, scope: !6800)
!6800 = distinct !DILexicalBlock(scope: !6795, file: !3, line: 161, column: 34)
!6801 = !DILocation(line: 162, column: 3, scope: !6800)
!6802 = !DILocation(line: 163, column: 3, scope: !6800)
!6803 = !DILocation(line: 166, column: 2, scope: !6761)
!6804 = !DILocation(line: 166, column: 2, scope: !6771)
!6805 = !DILocalVariable(name: "__dummy", scope: !6806, file: !3, line: 166, type: !318)
!6806 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 166, column: 2)
!6807 = !DILocation(line: 166, column: 2, scope: !6806)
!6808 = !DILocalVariable(name: "__dummy2", scope: !6806, file: !3, line: 166, type: !318)
!6809 = !DILocation(line: 166, column: 2, scope: !6770)
!6810 = !DILocation(line: 166, column: 2, scope: !6769)
!6811 = !DILocation(line: 166, column: 2, scope: !6812)
!6812 = distinct !DILexicalBlock(scope: !6769, file: !3, line: 166, column: 2)
!6813 = !DILocalVariable(name: "__dummy", scope: !6814, file: !3, line: 166, type: !318)
!6814 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 166, column: 2)
!6815 = distinct !DILexicalBlock(scope: !6812, file: !3, line: 166, column: 2)
!6816 = !DILocation(line: 166, column: 2, scope: !6814)
!6817 = !DILocalVariable(name: "__dummy2", scope: !6814, file: !3, line: 166, type: !318)
!6818 = !DILocation(line: 166, column: 2, scope: !6815)
!6819 = !DILocation(line: 166, column: 2, scope: !6768)
!6820 = !{i32 -2140513093}
!6821 = !DILocation(line: 166, column: 2, scope: !6767)
!6822 = !DILocation(line: 329, column: 10, scope: !6244, inlinedAt: !6766)
!6823 = !DILocation(line: 329, column: 16, scope: !6244, inlinedAt: !6766)
!6824 = !DILocation(line: 167, column: 9, scope: !6825)
!6825 = distinct !DILexicalBlock(scope: !6761, file: !3, line: 167, column: 2)
!6826 = !DILocation(line: 167, column: 7, scope: !6825)
!6827 = !DILocation(line: 167, column: 14, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6825, file: !3, line: 167, column: 2)
!6829 = !DILocation(line: 167, column: 18, scope: !6828)
!6830 = !DILocation(line: 167, column: 22, scope: !6828)
!6831 = !DILocation(line: 167, column: 16, scope: !6828)
!6832 = !DILocation(line: 167, column: 2, scope: !6825)
!6833 = !DILocalVariable(name: "__mptr", scope: !6834, file: !3, line: 168, type: !312)
!6834 = distinct !DILexicalBlock(scope: !6835, file: !3, line: 168, column: 3)
!6835 = distinct !DILexicalBlock(scope: !6828, file: !3, line: 168, column: 3)
!6836 = !DILocation(line: 168, column: 3, scope: !6834)
!6837 = !DILocation(line: 168, column: 3, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6834, file: !3, line: 168, column: 3)
!6839 = !DILocation(line: 168, column: 3, scope: !6835)
!6840 = !DILocation(line: 168, column: 3, scope: !6841)
!6841 = distinct !DILexicalBlock(scope: !6835, file: !3, line: 168, column: 3)
!6842 = !DILocalVariable(name: "__mptr", scope: !6843, file: !3, line: 169, type: !312)
!6843 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 169, column: 4)
!6844 = distinct !DILexicalBlock(scope: !6845, file: !3, line: 169, column: 4)
!6845 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 168, column: 62)
!6846 = !DILocation(line: 169, column: 4, scope: !6843)
!6847 = !DILocation(line: 169, column: 4, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6843, file: !3, line: 169, column: 4)
!6849 = !DILocation(line: 169, column: 4, scope: !6844)
!6850 = !DILocalVariable(name: "__mptr", scope: !6851, file: !3, line: 169, type: !312)
!6851 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 169, column: 4)
!6852 = !DILocation(line: 169, column: 4, scope: !6851)
!6853 = !DILocation(line: 169, column: 4, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6851, file: !3, line: 169, column: 4)
!6855 = !DILocation(line: 169, column: 4, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6844, file: !3, line: 169, column: 4)
!6857 = !DILocation(line: 170, column: 16, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 169, column: 59)
!6859 = !DILocation(line: 171, column: 9, scope: !6858)
!6860 = !DILocation(line: 171, column: 14, scope: !6858)
!6861 = !DILocation(line: 171, column: 18, scope: !6858)
!6862 = !DILocation(line: 171, column: 28, scope: !6858)
!6863 = !DILocation(line: 171, column: 11, scope: !6858)
!6864 = !DILocation(line: 172, column: 14, scope: !6858)
!6865 = !DILocation(line: 172, column: 20, scope: !6858)
!6866 = !DILocation(line: 172, column: 9, scope: !6858)
!6867 = !DILocation(line: 173, column: 11, scope: !6858)
!6868 = !DILocation(line: 173, column: 15, scope: !6858)
!6869 = !DILocation(line: 173, column: 19, scope: !6858)
!6870 = !DILocation(line: 173, column: 28, scope: !6858)
!6871 = !DILocation(line: 173, column: 13, scope: !6858)
!6872 = !DILocation(line: 173, column: 10, scope: !6858)
!6873 = !DILocation(line: 170, column: 5, scope: !6858)
!6874 = !DILocation(line: 176, column: 12, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !6858, file: !3, line: 176, column: 5)
!6876 = !DILocation(line: 176, column: 10, scope: !6875)
!6877 = !DILocation(line: 176, column: 17, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6875, file: !3, line: 176, column: 5)
!6879 = !DILocation(line: 176, column: 21, scope: !6878)
!6880 = !DILocation(line: 176, column: 19, scope: !6878)
!6881 = !DILocation(line: 176, column: 5, scope: !6875)
!6882 = !DILocation(line: 177, column: 17, scope: !6878)
!6883 = !DILocation(line: 177, column: 40, scope: !6878)
!6884 = !DILocation(line: 178, column: 19, scope: !6878)
!6885 = !DILocation(line: 178, column: 25, scope: !6878)
!6886 = !DILocation(line: 178, column: 12, scope: !6878)
!6887 = !DILocation(line: 178, column: 31, scope: !6878)
!6888 = !DILocation(line: 178, column: 29, scope: !6878)
!6889 = !DILocation(line: 178, column: 10, scope: !6878)
!6890 = !DILocation(line: 177, column: 6, scope: !6878)
!6891 = !DILocation(line: 176, column: 29, scope: !6878)
!6892 = !DILocation(line: 176, column: 5, scope: !6878)
!6893 = distinct !{!6893, !6881, !6894}
!6894 = !DILocation(line: 178, column: 33, scope: !6875)
!6895 = !DILocation(line: 179, column: 4, scope: !6858)
!6896 = !DILocalVariable(name: "__mptr", scope: !6897, file: !3, line: 169, type: !312)
!6897 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 169, column: 4)
!6898 = !DILocation(line: 169, column: 4, scope: !6897)
!6899 = !DILocation(line: 169, column: 4, scope: !6900)
!6900 = distinct !DILexicalBlock(scope: !6897, file: !3, line: 169, column: 4)
!6901 = distinct !{!6901, !6849, !6902}
!6902 = !DILocation(line: 179, column: 4, scope: !6844)
!6903 = !DILocation(line: 180, column: 3, scope: !6845)
!6904 = !DILocalVariable(name: "__mptr", scope: !6905, file: !3, line: 168, type: !312)
!6905 = distinct !DILexicalBlock(scope: !6841, file: !3, line: 168, column: 3)
!6906 = !DILocation(line: 168, column: 3, scope: !6905)
!6907 = !DILocation(line: 168, column: 3, scope: !6908)
!6908 = distinct !DILexicalBlock(scope: !6905, file: !3, line: 168, column: 3)
!6909 = distinct !{!6909, !6839, !6910}
!6910 = !DILocation(line: 180, column: 3, scope: !6835)
!6911 = !DILocation(line: 167, column: 34, scope: !6828)
!6912 = !DILocation(line: 167, column: 2, scope: !6828)
!6913 = distinct !{!6913, !6832, !6914}
!6914 = !DILocation(line: 180, column: 3, scope: !6825)
!6915 = !DILocation(line: 181, column: 26, scope: !6761)
!6916 = !DILocation(line: 181, column: 30, scope: !6761)
!6917 = !DILocation(line: 181, column: 36, scope: !6761)
!6918 = !DILocation(line: 409, column: 2, scope: !6412, inlinedAt: !6763)
!6919 = !DILocation(line: 409, column: 2, scope: !6417, inlinedAt: !6763)
!6920 = !DILocation(line: 409, column: 2, scope: !6418, inlinedAt: !6763)
!6921 = !DILocation(line: 409, column: 2, scope: !6425, inlinedAt: !6763)
!6922 = !DILocation(line: 409, column: 2, scope: !6428, inlinedAt: !6763)
!6923 = !DILocation(line: 183, column: 2, scope: !6761)
!6924 = !DILocation(line: 184, column: 1, scope: !6761)
!6925 = distinct !DISubprogram(name: "ci_otg_open", scope: !3, file: !3, line: 248, type: !4992, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6926 = !DILocalVariable(name: "inode", arg: 1, scope: !6925, file: !3, line: 248, type: !574)
!6927 = !DILocation(line: 248, column: 1, scope: !6925)
!6928 = !DILocalVariable(name: "file", arg: 2, scope: !6925, file: !3, line: 248, type: !505)
!6929 = distinct !DISubprogram(name: "ci_otg_show", scope: !3, file: !3, line: 187, type: !933, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!6930 = !DILocalVariable(name: "s", arg: 1, scope: !6929, file: !3, line: 187, type: !874)
!6931 = !DILocation(line: 187, column: 41, scope: !6929)
!6932 = !DILocalVariable(name: "unused", arg: 2, scope: !6929, file: !3, line: 187, type: !312)
!6933 = !DILocation(line: 187, column: 50, scope: !6929)
!6934 = !DILocalVariable(name: "ci", scope: !6929, file: !3, line: 189, type: !5168)
!6935 = !DILocation(line: 189, column: 18, scope: !6929)
!6936 = !DILocation(line: 189, column: 23, scope: !6929)
!6937 = !DILocation(line: 189, column: 26, scope: !6929)
!6938 = !DILocalVariable(name: "fsm", scope: !6929, file: !3, line: 190, type: !5882)
!6939 = !DILocation(line: 190, column: 18, scope: !6929)
!6940 = !DILocation(line: 192, column: 7, scope: !6941)
!6941 = distinct !DILexicalBlock(scope: !6929, file: !3, line: 192, column: 6)
!6942 = !DILocation(line: 192, column: 10, scope: !6941)
!6943 = !DILocation(line: 192, column: 33, scope: !6941)
!6944 = !DILocation(line: 192, column: 14, scope: !6941)
!6945 = !DILocation(line: 192, column: 6, scope: !6929)
!6946 = !DILocation(line: 193, column: 3, scope: !6941)
!6947 = !DILocation(line: 195, column: 9, scope: !6929)
!6948 = !DILocation(line: 195, column: 13, scope: !6929)
!6949 = !DILocation(line: 195, column: 6, scope: !6929)
!6950 = !DILocation(line: 198, column: 13, scope: !6929)
!6951 = !DILocation(line: 199, column: 25, scope: !6929)
!6952 = !DILocation(line: 199, column: 29, scope: !6929)
!6953 = !DILocation(line: 199, column: 33, scope: !6929)
!6954 = !DILocation(line: 199, column: 4, scope: !6929)
!6955 = !DILocation(line: 198, column: 2, scope: !6929)
!6956 = !DILocation(line: 202, column: 13, scope: !6929)
!6957 = !DILocation(line: 202, column: 36, scope: !6929)
!6958 = !DILocation(line: 202, column: 41, scope: !6929)
!6959 = !DILocation(line: 202, column: 2, scope: !6929)
!6960 = !DILocation(line: 204, column: 13, scope: !6929)
!6961 = !DILocation(line: 204, column: 35, scope: !6929)
!6962 = !DILocation(line: 204, column: 40, scope: !6929)
!6963 = !DILocation(line: 204, column: 2, scope: !6929)
!6964 = !DILocation(line: 206, column: 13, scope: !6929)
!6965 = !DILocation(line: 206, column: 35, scope: !6929)
!6966 = !DILocation(line: 206, column: 40, scope: !6929)
!6967 = !DILocation(line: 206, column: 2, scope: !6929)
!6968 = !DILocation(line: 208, column: 13, scope: !6929)
!6969 = !DILocation(line: 208, column: 36, scope: !6929)
!6970 = !DILocation(line: 208, column: 41, scope: !6929)
!6971 = !DILocation(line: 208, column: 2, scope: !6929)
!6972 = !DILocation(line: 210, column: 13, scope: !6929)
!6973 = !DILocation(line: 210, column: 32, scope: !6929)
!6974 = !DILocation(line: 210, column: 37, scope: !6929)
!6975 = !DILocation(line: 210, column: 2, scope: !6929)
!6976 = !DILocation(line: 212, column: 13, scope: !6929)
!6977 = !DILocation(line: 212, column: 36, scope: !6929)
!6978 = !DILocation(line: 212, column: 41, scope: !6929)
!6979 = !DILocation(line: 212, column: 2, scope: !6929)
!6980 = !DILocation(line: 214, column: 13, scope: !6929)
!6981 = !DILocation(line: 214, column: 34, scope: !6929)
!6982 = !DILocation(line: 214, column: 39, scope: !6929)
!6983 = !DILocation(line: 214, column: 2, scope: !6929)
!6984 = !DILocation(line: 216, column: 13, scope: !6929)
!6985 = !DILocation(line: 216, column: 38, scope: !6929)
!6986 = !DILocation(line: 216, column: 43, scope: !6929)
!6987 = !DILocation(line: 216, column: 2, scope: !6929)
!6988 = !DILocation(line: 218, column: 13, scope: !6929)
!6989 = !DILocation(line: 218, column: 39, scope: !6929)
!6990 = !DILocation(line: 218, column: 44, scope: !6929)
!6991 = !DILocation(line: 218, column: 2, scope: !6929)
!6992 = !DILocation(line: 220, column: 13, scope: !6929)
!6993 = !DILocation(line: 220, column: 32, scope: !6929)
!6994 = !DILocation(line: 220, column: 37, scope: !6929)
!6995 = !DILocation(line: 220, column: 2, scope: !6929)
!6996 = !DILocation(line: 222, column: 13, scope: !6929)
!6997 = !DILocation(line: 222, column: 35, scope: !6929)
!6998 = !DILocation(line: 222, column: 40, scope: !6929)
!6999 = !DILocation(line: 222, column: 2, scope: !6929)
!7000 = !DILocation(line: 224, column: 13, scope: !6929)
!7001 = !DILocation(line: 224, column: 39, scope: !6929)
!7002 = !DILocation(line: 224, column: 44, scope: !6929)
!7003 = !DILocation(line: 224, column: 2, scope: !6929)
!7004 = !DILocation(line: 226, column: 13, scope: !6929)
!7005 = !DILocation(line: 226, column: 35, scope: !6929)
!7006 = !DILocation(line: 226, column: 40, scope: !6929)
!7007 = !DILocation(line: 226, column: 2, scope: !6929)
!7008 = !DILocation(line: 228, column: 13, scope: !6929)
!7009 = !DILocation(line: 228, column: 37, scope: !6929)
!7010 = !DILocation(line: 228, column: 42, scope: !6929)
!7011 = !DILocation(line: 228, column: 2, scope: !6929)
!7012 = !DILocation(line: 230, column: 13, scope: !6929)
!7013 = !DILocation(line: 230, column: 36, scope: !6929)
!7014 = !DILocation(line: 230, column: 41, scope: !6929)
!7015 = !DILocation(line: 230, column: 2, scope: !6929)
!7016 = !DILocation(line: 232, column: 13, scope: !6929)
!7017 = !DILocation(line: 232, column: 36, scope: !6929)
!7018 = !DILocation(line: 232, column: 41, scope: !6929)
!7019 = !DILocation(line: 232, column: 2, scope: !6929)
!7020 = !DILocation(line: 234, column: 13, scope: !6929)
!7021 = !DILocation(line: 234, column: 34, scope: !6929)
!7022 = !DILocation(line: 234, column: 39, scope: !6929)
!7023 = !DILocation(line: 234, column: 2, scope: !6929)
!7024 = !DILocation(line: 236, column: 13, scope: !6929)
!7025 = !DILocation(line: 236, column: 34, scope: !6929)
!7026 = !DILocation(line: 236, column: 39, scope: !6929)
!7027 = !DILocation(line: 236, column: 2, scope: !6929)
!7028 = !DILocation(line: 238, column: 13, scope: !6929)
!7029 = !DILocation(line: 238, column: 33, scope: !6929)
!7030 = !DILocation(line: 238, column: 38, scope: !6929)
!7031 = !DILocation(line: 238, column: 2, scope: !6929)
!7032 = !DILocation(line: 240, column: 13, scope: !6929)
!7033 = !DILocation(line: 240, column: 33, scope: !6929)
!7034 = !DILocation(line: 240, column: 38, scope: !6929)
!7035 = !DILocation(line: 240, column: 2, scope: !6929)
!7036 = !DILocation(line: 242, column: 13, scope: !6929)
!7037 = !DILocation(line: 242, column: 28, scope: !6929)
!7038 = !DILocation(line: 242, column: 33, scope: !6929)
!7039 = !DILocation(line: 242, column: 2, scope: !6929)
!7040 = !DILocation(line: 244, column: 13, scope: !6929)
!7041 = !DILocation(line: 244, column: 34, scope: !6929)
!7042 = !DILocation(line: 244, column: 39, scope: !6929)
!7043 = !DILocation(line: 244, column: 2, scope: !6929)
!7044 = !DILocation(line: 246, column: 2, scope: !6929)
!7045 = !DILocation(line: 247, column: 1, scope: !6929)
!7046 = distinct !DISubprogram(name: "ci_role_write", scope: !3, file: !3, line: 260, type: !4954, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7047 = !DILocation(line: 138, column: 29, scope: !6256, inlinedAt: !7048)
!7048 = distinct !DILocation(line: 191, column: 6, scope: !6262, inlinedAt: !7049)
!7049 = distinct !DILocation(line: 269, column: 6, scope: !7050)
!7050 = distinct !DILexicalBlock(scope: !7046, file: !3, line: 269, column: 6)
!7051 = !DILocation(line: 138, column: 42, scope: !6256, inlinedAt: !7048)
!7052 = !DILocation(line: 138, column: 54, scope: !6256, inlinedAt: !7048)
!7053 = !DILocation(line: 140, column: 6, scope: !6256, inlinedAt: !7048)
!7054 = !DILocation(line: 150, column: 6, scope: !6276, inlinedAt: !7048)
!7055 = !DILocation(line: 189, column: 22, scope: !6264, inlinedAt: !7049)
!7056 = !DILocation(line: 189, column: 45, scope: !6264, inlinedAt: !7049)
!7057 = !DILocation(line: 189, column: 65, scope: !6264, inlinedAt: !7049)
!7058 = !DILocalVariable(name: "file", arg: 1, scope: !7046, file: !3, line: 260, type: !505)
!7059 = !DILocation(line: 260, column: 43, scope: !7046)
!7060 = !DILocalVariable(name: "ubuf", arg: 2, scope: !7046, file: !3, line: 260, type: !367)
!7061 = !DILocation(line: 260, column: 68, scope: !7046)
!7062 = !DILocalVariable(name: "count", arg: 3, scope: !7046, file: !3, line: 261, type: !313)
!7063 = !DILocation(line: 261, column: 16, scope: !7046)
!7064 = !DILocalVariable(name: "ppos", arg: 4, scope: !7046, file: !3, line: 261, type: !922)
!7065 = !DILocation(line: 261, column: 31, scope: !7046)
!7066 = !DILocalVariable(name: "s", scope: !7046, file: !3, line: 263, type: !874)
!7067 = !DILocation(line: 263, column: 19, scope: !7046)
!7068 = !DILocation(line: 263, column: 23, scope: !7046)
!7069 = !DILocation(line: 263, column: 29, scope: !7046)
!7070 = !DILocalVariable(name: "ci", scope: !7046, file: !3, line: 264, type: !5168)
!7071 = !DILocation(line: 264, column: 18, scope: !7046)
!7072 = !DILocation(line: 264, column: 23, scope: !7046)
!7073 = !DILocation(line: 264, column: 26, scope: !7046)
!7074 = !DILocalVariable(name: "role", scope: !7046, file: !3, line: 265, type: !134)
!7075 = !DILocation(line: 265, column: 15, scope: !7046)
!7076 = !DILocalVariable(name: "buf", scope: !7046, file: !3, line: 266, type: !3210)
!7077 = !DILocation(line: 266, column: 7, scope: !7046)
!7078 = !DILocalVariable(name: "ret", scope: !7046, file: !3, line: 267, type: !319)
!7079 = !DILocation(line: 267, column: 6, scope: !7046)
!7080 = !DILocation(line: 269, column: 21, scope: !7050)
!7081 = !DILocation(line: 269, column: 26, scope: !7050)
!7082 = !DILocalVariable(name: "__UNIQUE_ID___x304", scope: !7083, file: !3, line: 269, type: !313)
!7083 = distinct !DILexicalBlock(scope: !7050, file: !3, line: 269, column: 32)
!7084 = !DILocation(line: 269, column: 32, scope: !7083)
!7085 = !DILocalVariable(name: "__UNIQUE_ID___y305", scope: !7083, file: !3, line: 269, type: !313)
!7086 = !DILocation(line: 191, column: 6, scope: !6262, inlinedAt: !7049)
!7087 = !DILocation(line: 141, column: 6, scope: !6319, inlinedAt: !7048)
!7088 = !DILocation(line: 0, scope: !6319, inlinedAt: !7048)
!7089 = !DILocation(line: 141, column: 6, scope: !6256, inlinedAt: !7048)
!7090 = !DILocation(line: 142, column: 29, scope: !6323, inlinedAt: !7048)
!7091 = !DILocation(line: 142, column: 8, scope: !6323, inlinedAt: !7048)
!7092 = !DILocation(line: 142, column: 7, scope: !6324, inlinedAt: !7048)
!7093 = !DILocation(line: 143, column: 18, scope: !6323, inlinedAt: !7048)
!7094 = !DILocation(line: 143, column: 22, scope: !6323, inlinedAt: !7048)
!7095 = !DILocation(line: 143, column: 4, scope: !6323, inlinedAt: !7048)
!7096 = !DILocation(line: 144, column: 12, scope: !6331, inlinedAt: !7048)
!7097 = !DILocation(line: 144, column: 12, scope: !6323, inlinedAt: !7048)
!7098 = !DILocation(line: 145, column: 4, scope: !6331, inlinedAt: !7048)
!7099 = !DILocation(line: 147, column: 4, scope: !6331, inlinedAt: !7048)
!7100 = !DILocation(line: 148, column: 3, scope: !6324, inlinedAt: !7048)
!7101 = !DILocation(line: 150, column: 6, scope: !6337, inlinedAt: !7048)
!7102 = !DILocation(line: 150, column: 6, scope: !6339, inlinedAt: !7048)
!7103 = !DILocation(line: 150, column: 6, scope: !6343, inlinedAt: !7048)
!7104 = !DILocation(line: 150, column: 6, scope: !6340, inlinedAt: !7048)
!7105 = !DILocation(line: 150, column: 6, scope: !6277, inlinedAt: !7048)
!7106 = !DILocation(line: 150, column: 6, scope: !6256, inlinedAt: !7048)
!7107 = !DILocation(line: 151, column: 3, scope: !6277, inlinedAt: !7048)
!7108 = !DILocation(line: 152, column: 20, scope: !6256, inlinedAt: !7048)
!7109 = !DILocation(line: 152, column: 26, scope: !6256, inlinedAt: !7048)
!7110 = !DILocation(line: 152, column: 33, scope: !6256, inlinedAt: !7048)
!7111 = !DILocation(line: 152, column: 2, scope: !6256, inlinedAt: !7048)
!7112 = !DILocation(line: 153, column: 2, scope: !6256, inlinedAt: !7048)
!7113 = !DILocation(line: 154, column: 1, scope: !6256, inlinedAt: !7048)
!7114 = !DILocation(line: 191, column: 6, scope: !6264, inlinedAt: !7049)
!7115 = !DILocation(line: 192, column: 23, scope: !6262, inlinedAt: !7049)
!7116 = !DILocation(line: 192, column: 27, scope: !6262, inlinedAt: !7049)
!7117 = !DILocation(line: 192, column: 33, scope: !6262, inlinedAt: !7049)
!7118 = !DILocation(line: 192, column: 7, scope: !6262, inlinedAt: !7049)
!7119 = !DILocation(line: 192, column: 5, scope: !6262, inlinedAt: !7049)
!7120 = !DILocation(line: 192, column: 3, scope: !6262, inlinedAt: !7049)
!7121 = !DILocation(line: 193, column: 9, scope: !6264, inlinedAt: !7049)
!7122 = !DILocation(line: 269, column: 6, scope: !7050)
!7123 = !DILocation(line: 269, column: 6, scope: !7046)
!7124 = !DILocation(line: 270, column: 3, scope: !7050)
!7125 = !DILocation(line: 272, column: 12, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !7046, file: !3, line: 272, column: 2)
!7127 = !DILocation(line: 272, column: 7, scope: !7126)
!7128 = !DILocation(line: 272, column: 28, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !7126, file: !3, line: 272, column: 2)
!7130 = !DILocation(line: 272, column: 33, scope: !7129)
!7131 = !DILocation(line: 272, column: 2, scope: !7126)
!7132 = !DILocation(line: 273, column: 7, scope: !7133)
!7133 = distinct !DILexicalBlock(scope: !7129, file: !3, line: 273, column: 7)
!7134 = !DILocation(line: 273, column: 11, scope: !7133)
!7135 = !DILocation(line: 273, column: 17, scope: !7133)
!7136 = !DILocation(line: 273, column: 23, scope: !7133)
!7137 = !DILocation(line: 274, column: 16, scope: !7133)
!7138 = !DILocation(line: 274, column: 21, scope: !7133)
!7139 = !DILocation(line: 274, column: 25, scope: !7133)
!7140 = !DILocation(line: 274, column: 31, scope: !7133)
!7141 = !DILocation(line: 274, column: 38, scope: !7133)
!7142 = !DILocation(line: 275, column: 16, scope: !7133)
!7143 = !DILocation(line: 275, column: 20, scope: !7133)
!7144 = !DILocation(line: 275, column: 26, scope: !7133)
!7145 = !DILocation(line: 275, column: 33, scope: !7133)
!7146 = !DILocation(line: 275, column: 9, scope: !7133)
!7147 = !DILocation(line: 274, column: 8, scope: !7133)
!7148 = !DILocation(line: 273, column: 7, scope: !7129)
!7149 = !DILocation(line: 276, column: 4, scope: !7133)
!7150 = !DILocation(line: 275, column: 38, scope: !7133)
!7151 = !DILocation(line: 272, column: 52, scope: !7129)
!7152 = !DILocation(line: 272, column: 2, scope: !7129)
!7153 = distinct !{!7153, !7131, !7154}
!7154 = !DILocation(line: 276, column: 4, scope: !7126)
!7155 = !DILocation(line: 278, column: 6, scope: !7156)
!7156 = distinct !DILexicalBlock(scope: !7046, file: !3, line: 278, column: 6)
!7157 = !DILocation(line: 278, column: 11, scope: !7156)
!7158 = !DILocation(line: 278, column: 26, scope: !7156)
!7159 = !DILocation(line: 278, column: 29, scope: !7156)
!7160 = !DILocation(line: 278, column: 37, scope: !7156)
!7161 = !DILocation(line: 278, column: 41, scope: !7156)
!7162 = !DILocation(line: 278, column: 34, scope: !7156)
!7163 = !DILocation(line: 278, column: 6, scope: !7046)
!7164 = !DILocation(line: 279, column: 3, scope: !7156)
!7165 = !DILocation(line: 281, column: 22, scope: !7046)
!7166 = !DILocation(line: 281, column: 26, scope: !7046)
!7167 = !DILocation(line: 281, column: 2, scope: !7046)
!7168 = !DILocation(line: 282, column: 14, scope: !7046)
!7169 = !DILocation(line: 282, column: 18, scope: !7046)
!7170 = !DILocation(line: 282, column: 2, scope: !7046)
!7171 = !DILocation(line: 283, column: 15, scope: !7046)
!7172 = !DILocation(line: 283, column: 2, scope: !7046)
!7173 = !DILocation(line: 284, column: 22, scope: !7046)
!7174 = !DILocation(line: 284, column: 26, scope: !7046)
!7175 = !DILocation(line: 284, column: 8, scope: !7046)
!7176 = !DILocation(line: 284, column: 6, scope: !7046)
!7177 = !DILocation(line: 285, column: 13, scope: !7046)
!7178 = !DILocation(line: 285, column: 17, scope: !7046)
!7179 = !DILocation(line: 285, column: 2, scope: !7046)
!7180 = !DILocation(line: 286, column: 22, scope: !7046)
!7181 = !DILocation(line: 286, column: 26, scope: !7046)
!7182 = !DILocation(line: 286, column: 2, scope: !7046)
!7183 = !DILocation(line: 288, column: 9, scope: !7046)
!7184 = !DILocation(line: 288, column: 15, scope: !7046)
!7185 = !DILocation(line: 288, column: 21, scope: !7046)
!7186 = !DILocation(line: 288, column: 2, scope: !7046)
!7187 = !DILocation(line: 289, column: 1, scope: !7046)
!7188 = distinct !DISubprogram(name: "ci_role_open", scope: !3, file: !3, line: 291, type: !4992, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7189 = !DILocalVariable(name: "inode", arg: 1, scope: !7188, file: !3, line: 291, type: !574)
!7190 = !DILocation(line: 291, column: 39, scope: !7188)
!7191 = !DILocalVariable(name: "file", arg: 2, scope: !7188, file: !3, line: 291, type: !505)
!7192 = !DILocation(line: 291, column: 59, scope: !7188)
!7193 = !DILocation(line: 293, column: 21, scope: !7188)
!7194 = !DILocation(line: 293, column: 41, scope: !7188)
!7195 = !DILocation(line: 293, column: 48, scope: !7188)
!7196 = !DILocation(line: 293, column: 9, scope: !7188)
!7197 = !DILocation(line: 293, column: 2, scope: !7188)
!7198 = distinct !DISubprogram(name: "ci_role_stop", scope: !135, file: !135, line: 284, type: !5166, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7199 = !DILocalVariable(name: "ci", arg: 1, scope: !7198, file: !135, line: 284, type: !5168)
!7200 = !DILocation(line: 284, column: 49, scope: !7198)
!7201 = !DILocalVariable(name: "role", scope: !7198, file: !135, line: 286, type: !134)
!7202 = !DILocation(line: 286, column: 15, scope: !7198)
!7203 = !DILocation(line: 286, column: 22, scope: !7198)
!7204 = !DILocation(line: 286, column: 26, scope: !7198)
!7205 = !DILocation(line: 288, column: 6, scope: !7206)
!7206 = distinct !DILexicalBlock(scope: !7198, file: !135, line: 288, column: 6)
!7207 = !DILocation(line: 288, column: 11, scope: !7206)
!7208 = !DILocation(line: 288, column: 6, scope: !7198)
!7209 = !DILocation(line: 289, column: 3, scope: !7206)
!7210 = !DILocation(line: 291, column: 2, scope: !7198)
!7211 = !DILocation(line: 291, column: 6, scope: !7198)
!7212 = !DILocation(line: 291, column: 11, scope: !7198)
!7213 = !DILocation(line: 293, column: 2, scope: !7198)
!7214 = !DILocation(line: 293, column: 6, scope: !7198)
!7215 = !DILocation(line: 293, column: 12, scope: !7198)
!7216 = !DILocation(line: 293, column: 19, scope: !7198)
!7217 = !DILocation(line: 293, column: 24, scope: !7198)
!7218 = !DILocation(line: 294, column: 1, scope: !7198)
!7219 = distinct !DISubprogram(name: "ci_role_start", scope: !135, file: !135, line: 268, type: !7220, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7220 = !DISubroutineType(types: !7221)
!7221 = !{!319, !5168, !134}
!7222 = !DILocalVariable(name: "ci", arg: 1, scope: !7219, file: !135, line: 268, type: !5168)
!7223 = !DILocation(line: 268, column: 49, scope: !7219)
!7224 = !DILocalVariable(name: "role", arg: 2, scope: !7219, file: !135, line: 268, type: !134)
!7225 = !DILocation(line: 268, column: 66, scope: !7219)
!7226 = !DILocalVariable(name: "ret", scope: !7219, file: !135, line: 270, type: !319)
!7227 = !DILocation(line: 270, column: 6, scope: !7219)
!7228 = !DILocation(line: 272, column: 6, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7219, file: !135, line: 272, column: 6)
!7230 = !DILocation(line: 272, column: 11, scope: !7229)
!7231 = !DILocation(line: 272, column: 6, scope: !7219)
!7232 = !DILocation(line: 273, column: 3, scope: !7229)
!7233 = !DILocation(line: 275, column: 7, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7219, file: !135, line: 275, column: 6)
!7235 = !DILocation(line: 275, column: 11, scope: !7234)
!7236 = !DILocation(line: 275, column: 17, scope: !7234)
!7237 = !DILocation(line: 275, column: 6, scope: !7219)
!7238 = !DILocation(line: 276, column: 3, scope: !7234)
!7239 = !DILocation(line: 278, column: 8, scope: !7219)
!7240 = !DILocation(line: 278, column: 12, scope: !7219)
!7241 = !DILocation(line: 278, column: 18, scope: !7219)
!7242 = !DILocation(line: 278, column: 25, scope: !7219)
!7243 = !DILocation(line: 278, column: 31, scope: !7219)
!7244 = !DILocation(line: 278, column: 6, scope: !7219)
!7245 = !DILocation(line: 279, column: 7, scope: !7246)
!7246 = distinct !DILexicalBlock(scope: !7219, file: !135, line: 279, column: 6)
!7247 = !DILocation(line: 279, column: 6, scope: !7219)
!7248 = !DILocation(line: 280, column: 14, scope: !7246)
!7249 = !DILocation(line: 280, column: 3, scope: !7246)
!7250 = !DILocation(line: 280, column: 7, scope: !7246)
!7251 = !DILocation(line: 280, column: 12, scope: !7246)
!7252 = !DILocation(line: 281, column: 9, scope: !7219)
!7253 = !DILocation(line: 281, column: 2, scope: !7219)
!7254 = !DILocation(line: 282, column: 1, scope: !7219)
!7255 = distinct !DISubprogram(name: "ci_role_show", scope: !3, file: !3, line: 250, type: !933, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7256 = !DILocalVariable(name: "s", arg: 1, scope: !7255, file: !3, line: 250, type: !874)
!7257 = !DILocation(line: 250, column: 42, scope: !7255)
!7258 = !DILocalVariable(name: "data", arg: 2, scope: !7255, file: !3, line: 250, type: !312)
!7259 = !DILocation(line: 250, column: 51, scope: !7255)
!7260 = !DILocalVariable(name: "ci", scope: !7255, file: !3, line: 252, type: !5168)
!7261 = !DILocation(line: 252, column: 18, scope: !7255)
!7262 = !DILocation(line: 252, column: 23, scope: !7255)
!7263 = !DILocation(line: 252, column: 26, scope: !7255)
!7264 = !DILocation(line: 254, column: 6, scope: !7265)
!7265 = distinct !DILexicalBlock(scope: !7255, file: !3, line: 254, column: 6)
!7266 = !DILocation(line: 254, column: 10, scope: !7265)
!7267 = !DILocation(line: 254, column: 15, scope: !7265)
!7268 = !DILocation(line: 254, column: 6, scope: !7255)
!7269 = !DILocation(line: 255, column: 14, scope: !7265)
!7270 = !DILocation(line: 255, column: 33, scope: !7265)
!7271 = !DILocation(line: 255, column: 25, scope: !7265)
!7272 = !DILocation(line: 255, column: 38, scope: !7265)
!7273 = !DILocation(line: 255, column: 3, scope: !7265)
!7274 = !DILocation(line: 257, column: 2, scope: !7255)
!7275 = distinct !DISubprogram(name: "ci_role", scope: !135, file: !135, line: 262, type: !7276, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7276 = !DISubroutineType(types: !7277)
!7277 = !{!5190, !5168}
!7278 = !DILocalVariable(name: "ci", arg: 1, scope: !7275, file: !135, line: 262, type: !5168)
!7279 = !DILocation(line: 262, column: 62, scope: !7275)
!7280 = !DILocation(line: 264, column: 2, scope: !7275)
!7281 = !DILocation(line: 264, column: 2, scope: !7282)
!7282 = distinct !DILexicalBlock(scope: !7283, file: !135, line: 264, column: 2)
!7283 = distinct !DILexicalBlock(scope: !7275, file: !135, line: 264, column: 2)
!7284 = !DILocation(line: 264, column: 2, scope: !7283)
!7285 = !DILocation(line: 264, column: 2, scope: !7286)
!7286 = distinct !DILexicalBlock(scope: !7282, file: !135, line: 264, column: 2)
!7287 = !DILocation(line: 264, column: 2, scope: !7288)
!7288 = distinct !DILexicalBlock(scope: !7286, file: !135, line: 264, column: 2)
!7289 = !DILocation(line: 264, column: 2, scope: !7290)
!7290 = distinct !DILexicalBlock(scope: !7286, file: !135, line: 264, column: 2)
!7291 = !{i32 -2140552873, i32 -2140552844, i32 -2140552798, i32 -2140552740, i32 -2140552686, i32 -2140552632, i32 -2140552577, i32 -2140552546}
!7292 = !DILocation(line: 264, column: 2, scope: !7293)
!7293 = distinct !DILexicalBlock(scope: !7294, file: !135, line: 264, column: 2)
!7294 = distinct !DILexicalBlock(scope: !7286, file: !135, line: 264, column: 2)
!7295 = !{i32 -2140552098, i32 -2140552091, i32 -2140552037, i32 -2140552006, i32 -2140551976}
!7296 = !DILocation(line: 264, column: 2, scope: !7294)
!7297 = !DILocation(line: 265, column: 9, scope: !7275)
!7298 = !DILocation(line: 265, column: 13, scope: !7275)
!7299 = !DILocation(line: 265, column: 19, scope: !7275)
!7300 = !DILocation(line: 265, column: 23, scope: !7275)
!7301 = !DILocation(line: 265, column: 2, scope: !7275)
!7302 = distinct !DISubprogram(name: "ci_registers_open", scope: !3, file: !3, line: 335, type: !4992, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7303 = !DILocalVariable(name: "inode", arg: 1, scope: !7302, file: !3, line: 335, type: !574)
!7304 = !DILocation(line: 335, column: 1, scope: !7302)
!7305 = !DILocalVariable(name: "file", arg: 2, scope: !7302, file: !3, line: 335, type: !505)
!7306 = distinct !DISubprogram(name: "ci_registers_show", scope: !3, file: !3, line: 304, type: !933, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7307 = !DILocalVariable(name: "s", arg: 1, scope: !7306, file: !3, line: 304, type: !874)
!7308 = !DILocation(line: 304, column: 47, scope: !7306)
!7309 = !DILocalVariable(name: "unused", arg: 2, scope: !7306, file: !3, line: 304, type: !312)
!7310 = !DILocation(line: 304, column: 56, scope: !7306)
!7311 = !DILocalVariable(name: "ci", scope: !7306, file: !3, line: 306, type: !5168)
!7312 = !DILocation(line: 306, column: 18, scope: !7306)
!7313 = !DILocation(line: 306, column: 23, scope: !7306)
!7314 = !DILocation(line: 306, column: 26, scope: !7306)
!7315 = !DILocalVariable(name: "tmp_reg", scope: !7306, file: !3, line: 307, type: !320)
!7316 = !DILocation(line: 307, column: 6, scope: !7306)
!7317 = !DILocation(line: 309, column: 7, scope: !7318)
!7318 = distinct !DILexicalBlock(scope: !7306, file: !3, line: 309, column: 6)
!7319 = !DILocation(line: 309, column: 10, scope: !7318)
!7320 = !DILocation(line: 309, column: 13, scope: !7318)
!7321 = !DILocation(line: 309, column: 17, scope: !7318)
!7322 = !DILocation(line: 309, column: 6, scope: !7306)
!7323 = !DILocation(line: 310, column: 3, scope: !7318)
!7324 = !DILocation(line: 313, column: 32, scope: !7306)
!7325 = !DILocation(line: 313, column: 12, scope: !7306)
!7326 = !DILocation(line: 313, column: 10, scope: !7306)
!7327 = !DILocation(line: 314, column: 13, scope: !7306)
!7328 = !DILocation(line: 314, column: 39, scope: !7306)
!7329 = !DILocation(line: 314, column: 2, scope: !7306)
!7330 = !DILocation(line: 316, column: 32, scope: !7306)
!7331 = !DILocation(line: 316, column: 12, scope: !7306)
!7332 = !DILocation(line: 316, column: 10, scope: !7306)
!7333 = !DILocation(line: 317, column: 13, scope: !7306)
!7334 = !DILocation(line: 317, column: 38, scope: !7306)
!7335 = !DILocation(line: 317, column: 2, scope: !7306)
!7336 = !DILocation(line: 319, column: 20, scope: !7306)
!7337 = !DILocation(line: 319, column: 12, scope: !7306)
!7338 = !DILocation(line: 319, column: 10, scope: !7306)
!7339 = !DILocation(line: 320, column: 13, scope: !7306)
!7340 = !DILocation(line: 320, column: 39, scope: !7306)
!7341 = !DILocation(line: 320, column: 2, scope: !7306)
!7342 = !DILocation(line: 322, column: 20, scope: !7306)
!7343 = !DILocation(line: 322, column: 12, scope: !7306)
!7344 = !DILocation(line: 322, column: 10, scope: !7306)
!7345 = !DILocation(line: 323, column: 13, scope: !7306)
!7346 = !DILocation(line: 323, column: 38, scope: !7306)
!7347 = !DILocation(line: 323, column: 2, scope: !7306)
!7348 = !DILocation(line: 325, column: 20, scope: !7306)
!7349 = !DILocation(line: 325, column: 12, scope: !7306)
!7350 = !DILocation(line: 325, column: 10, scope: !7306)
!7351 = !DILocation(line: 326, column: 13, scope: !7306)
!7352 = !DILocation(line: 326, column: 38, scope: !7306)
!7353 = !DILocation(line: 326, column: 2, scope: !7306)
!7354 = !DILocation(line: 328, column: 6, scope: !7355)
!7355 = distinct !DILexicalBlock(scope: !7306, file: !3, line: 328, column: 6)
!7356 = !DILocation(line: 328, column: 10, scope: !7355)
!7357 = !DILocation(line: 328, column: 6, scope: !7306)
!7358 = !DILocation(line: 329, column: 27, scope: !7359)
!7359 = distinct !DILexicalBlock(scope: !7355, file: !3, line: 328, column: 18)
!7360 = !DILocation(line: 329, column: 13, scope: !7359)
!7361 = !DILocation(line: 329, column: 11, scope: !7359)
!7362 = !DILocation(line: 330, column: 14, scope: !7359)
!7363 = !DILocation(line: 330, column: 38, scope: !7359)
!7364 = !DILocation(line: 330, column: 3, scope: !7359)
!7365 = !DILocation(line: 331, column: 2, scope: !7359)
!7366 = !DILocation(line: 333, column: 2, scope: !7306)
!7367 = !DILocation(line: 334, column: 1, scope: !7306)
!7368 = distinct !DISubprogram(name: "hw_read", scope: !135, file: !135, line: 354, type: !7369, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !793)
!7369 = !DISubroutineType(types: !7370)
!7370 = !{!320, !5168, !285, !320}
!7371 = !DILocalVariable(name: "ci", arg: 1, scope: !7368, file: !135, line: 354, type: !5168)
!7372 = !DILocation(line: 354, column: 43, scope: !7368)
!7373 = !DILocalVariable(name: "reg", arg: 2, scope: !7368, file: !135, line: 354, type: !285)
!7374 = !DILocation(line: 354, column: 63, scope: !7368)
!7375 = !DILocalVariable(name: "mask", arg: 3, scope: !7368, file: !135, line: 354, type: !320)
!7376 = !DILocation(line: 354, column: 72, scope: !7368)
!7377 = !DILocation(line: 356, column: 18, scope: !7368)
!7378 = !DILocation(line: 356, column: 22, scope: !7368)
!7379 = !DILocation(line: 356, column: 30, scope: !7368)
!7380 = !DILocation(line: 356, column: 37, scope: !7368)
!7381 = !DILocation(line: 356, column: 9, scope: !7368)
!7382 = !DILocation(line: 356, column: 45, scope: !7368)
!7383 = !DILocation(line: 356, column: 43, scope: !7368)
!7384 = !DILocation(line: 356, column: 2, scope: !7368)
