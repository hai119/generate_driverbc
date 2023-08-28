; ModuleID = '../bcout/drivers/tty/tty_ldisc.llvm.bc'
source_filename = "drivers/tty/tty_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
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
%struct.hlist_head = type { %struct.hlist_node* }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.backing_dev_info = type opaque
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
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
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
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.52 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.atomic64_t = type { i64 }
%struct.vm_userfaultfd_ctx = type {}
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, {}*, {}*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, {}*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.65, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.65 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.module = type opaque
%struct.ctl_table = type { i8*, i8*, i32, i16, %struct.ctl_table*, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)*, %struct.ctl_table_poll*, i8*, i8* }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
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
%struct.kmem_cache = type opaque
%struct.ctl_table_header = type { %union.anon.66, %struct.completion*, %struct.ctl_table*, %struct.ctl_table_root*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_node*, %struct.hlist_head }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { %struct.ctl_table*, i32, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, %struct.ctl_table_set* (%struct.ctl_table_root*)*, void (%struct.ctl_table_header*, %struct.ctl_table*, %struct.kuid_t*, %struct.kgid_t*)*, i32 (%struct.ctl_table_header*, %struct.ctl_table*)* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)*, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_node = type { %struct.rb_node, %struct.ctl_table_header* }

@tty_ldiscs_lock = internal global %struct.raw_spinlock undef, align 1, !dbg !0
@tty_ldiscs = internal global [30 x %struct.tty_ldisc_ops*] zeroinitializer, align 16, !dbg !4028
@tty_ldiscs_seq_ops = dso_local constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @tty_ldiscs_seq_start, void (%struct.seq_file*, i8*)* @tty_ldiscs_seq_stop, i8* (%struct.seq_file*, i8*, i64*)* @tty_ldiscs_seq_next, i32 (%struct.seq_file*, i8*)* @tty_ldiscs_seq_show }, align 8, !dbg !126
@.str = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_ldisc.c\00", align 1
@tty_root_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @tty_dir_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 16, !dbg !4035
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%-10s %2d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@tty_ldisc_autoload = internal global i32 1, align 4, !dbg !4033
@.str.3 = private unnamed_addr constant [13 x i8] c"tty-ldisc-%d\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\014Falling back ldisc for %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Couldn't open N_NULL ldisc for %s.\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@tty_dir_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* null, i32 0, i16 365, %struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @tty_table, i32 0, i32 0), i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* null, %struct.ctl_table_poll* null, i8* null, i8* null }, %struct.ctl_table zeroinitializer], align 16, !dbg !4060
@.str.8 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@tty_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8* bitcast (i32* @tty_ldisc_autoload to i8*), i32 4, i16 420, %struct.ctl_table* null, i32 (%struct.ctl_table*, i32, i8*, i64*, i64*)* @proc_dointvec, %struct.ctl_table_poll* null, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i8* getelementptr (i8, i8* bitcast ([0 x i32]* @sysctl_vals to i8*), i64 4) }, %struct.ctl_table zeroinitializer], align 16, !dbg !4062
@.str.9 = private unnamed_addr constant [15 x i8] c"ldisc_autoload\00", align 1
@sysctl_vals = external dso_local constant [0 x i32], align 4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_register_ldisc(i32 %disc, %struct.tty_ldisc_ops* %new_ldisc) #0 !dbg !4070 {
entry:
  %retval = alloca i32, align 4
  %disc.addr = alloca i32, align 4
  %new_ldisc.addr = alloca %struct.tty_ldisc_ops*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__dummy19 = alloca i64, align 8
  %__dummy220 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  store i32 %disc, i32* %disc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disc.addr, metadata !4073, metadata !DIExpression()), !dbg !4074
  store %struct.tty_ldisc_ops* %new_ldisc, %struct.tty_ldisc_ops** %new_ldisc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc_ops** %new_ldisc.addr, metadata !4075, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4077, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4079, metadata !DIExpression()), !dbg !4080
  store i32 0, i32* %ret, align 4, !dbg !4080
  %0 = load i32, i32* %disc.addr, align 4, !dbg !4081
  %cmp = icmp slt i32 %0, 0, !dbg !4083
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4084

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %disc.addr, align 4, !dbg !4085
  %cmp1 = icmp sge i32 %1, 30, !dbg !4086
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4087

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4088
  br label %return, !dbg !4088

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !4089

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4090, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4094, metadata !DIExpression()), !dbg !4093
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !4093
  %conv = zext i1 %cmp2 to i32, !dbg !4093
  store i32 1, i32* %tmp, align 4, !dbg !4093
  %2 = load i32, i32* %tmp, align 4, !dbg !4093
  br label %do.body3, !dbg !4095

do.body3:                                         ; preds = %do.body
  br label %do.body4, !dbg !4096

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !4098

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !4100, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !4104, metadata !DIExpression()), !dbg !4103
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !4103
  %conv9 = zext i1 %cmp8 to i32, !dbg !4103
  store i32 1, i32* %tmp10, align 4, !dbg !4103
  %3 = load i32, i32* %tmp10, align 4, !dbg !4103
  %call = call i64 @arch_local_irq_save() #11, !dbg !4105
  store i64 %call, i64* %flags, align 8, !dbg !4105
  br label %do.end, !dbg !4105

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !4098

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !4096

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4106, !srcloc !4108
  br label %do.body13, !dbg !4106

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4109

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4106

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4096

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4095

do.end17:                                         ; preds = %do.end16
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %new_ldisc.addr, align 8, !dbg !4111
  %5 = load i32, i32* %disc.addr, align 4, !dbg !4112
  %idxprom = sext i32 %5 to i64, !dbg !4113
  %arrayidx = getelementptr [30 x %struct.tty_ldisc_ops*], [30 x %struct.tty_ldisc_ops*]* @tty_ldiscs, i64 0, i64 %idxprom, !dbg !4113
  store %struct.tty_ldisc_ops* %4, %struct.tty_ldisc_ops** %arrayidx, align 8, !dbg !4114
  %6 = load i32, i32* %disc.addr, align 4, !dbg !4115
  %7 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %new_ldisc.addr, align 8, !dbg !4116
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %7, i32 0, i32 2, !dbg !4117
  store i32 %6, i32* %num, align 8, !dbg !4118
  %8 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %new_ldisc.addr, align 8, !dbg !4119
  %refcount = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %8, i32 0, i32 19, !dbg !4120
  store i32 0, i32* %refcount, align 8, !dbg !4121
  br label %do.body18, !dbg !4122

do.body18:                                        ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i64* %__dummy19, metadata !4123, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.declare(metadata i64* %__dummy220, metadata !4127, metadata !DIExpression()), !dbg !4126
  %cmp21 = icmp eq i64* %__dummy19, %__dummy220, !dbg !4126
  %conv22 = zext i1 %cmp21 to i32, !dbg !4126
  store i32 1, i32* %tmp23, align 4, !dbg !4126
  %9 = load i32, i32* %tmp23, align 4, !dbg !4126
  br label %do.body24, !dbg !4128

do.body24:                                        ; preds = %do.body18
  br label %do.body25, !dbg !4129

do.body25:                                        ; preds = %do.body24
  br label %do.body26, !dbg !4131

do.body26:                                        ; preds = %do.body25
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !4133, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.declare(metadata i64* %__dummy229, metadata !4137, metadata !DIExpression()), !dbg !4136
  %cmp30 = icmp eq i64* %__dummy28, %__dummy229, !dbg !4136
  %conv31 = zext i1 %cmp30 to i32, !dbg !4136
  store i32 1, i32* %tmp32, align 4, !dbg !4136
  %10 = load i32, i32* %tmp32, align 4, !dbg !4136
  %11 = load i64, i64* %flags, align 8, !dbg !4138
  call void @arch_local_irq_restore(i64 %11) #11, !dbg !4138
  br label %do.end33, !dbg !4138

do.end33:                                         ; preds = %do.body26
  br label %do.end34, !dbg !4131

do.end34:                                         ; preds = %do.end33
  br label %do.body35, !dbg !4129

do.body35:                                        ; preds = %do.end34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4139, !srcloc !4141
  br label %do.body36, !dbg !4139

do.body36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !4142

do.end37:                                         ; preds = %do.body36
  br label %do.end38, !dbg !4139

do.end38:                                         ; preds = %do.end37
  br label %do.end39, !dbg !4129

do.end39:                                         ; preds = %do.end38
  br label %do.end40, !dbg !4128

do.end40:                                         ; preds = %do.end39
  %12 = load i32, i32* %ret, align 4, !dbg !4144
  store i32 %12, i32* %retval, align 4, !dbg !4145
  br label %return, !dbg !4145

return:                                           ; preds = %do.end40, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4146
  ret i32 %13, !dbg !4146
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4147 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4151, metadata !DIExpression()), !dbg !4152
  %call = call i64 @arch_local_save_flags() #11, !dbg !4153
  store i64 %call, i64* %f, align 8, !dbg !4154
  call void @arch_local_irq_disable() #11, !dbg !4155
  %0 = load i64, i64* %f, align 8, !dbg !4156
  ret i64 %0, !dbg !4157
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !4158 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4161, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4163, metadata !DIExpression()), !dbg !4165
  %0 = load i64, i64* %__edi, align 8, !dbg !4165
  store i64 %0, i64* %__edi, align 8, !dbg !4165
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4166, metadata !DIExpression()), !dbg !4165
  %1 = load i64, i64* %__esi, align 8, !dbg !4165
  store i64 %1, i64* %__esi, align 8, !dbg !4165
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4167, metadata !DIExpression()), !dbg !4165
  %2 = load i64, i64* %__edx, align 8, !dbg !4165
  store i64 %2, i64* %__edx, align 8, !dbg !4165
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4168, metadata !DIExpression()), !dbg !4165
  %3 = load i64, i64* %__ecx, align 8, !dbg !4165
  store i64 %3, i64* %__ecx, align 8, !dbg !4165
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4169, metadata !DIExpression()), !dbg !4165
  %4 = load i64, i64* %__eax, align 8, !dbg !4165
  store i64 %4, i64* %__eax, align 8, !dbg !4165
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4165
  %6 = call i64 @llvm.read_register.i64(metadata !4064), !dbg !4165
  %7 = load i64, i64* %f.addr, align 8, !dbg !4165
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #4, !dbg !4165, !srcloc !4170
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4165
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4165
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4165
  call void @llvm.write_register.i64(metadata !4064, i64 %asmresult1), !dbg !4165
  ret void, !dbg !4171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_unregister_ldisc(i32 %disc) #0 !dbg !4172 {
entry:
  %retval = alloca i32, align 4
  %disc.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__dummy23 = alloca i64, align 8
  %__dummy224 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  %__dummy31 = alloca i64, align 8
  %__dummy232 = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  store i32 %disc, i32* %disc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disc.addr, metadata !4173, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4175, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4177, metadata !DIExpression()), !dbg !4178
  store i32 0, i32* %ret, align 4, !dbg !4178
  %0 = load i32, i32* %disc.addr, align 4, !dbg !4179
  %cmp = icmp slt i32 %0, 0, !dbg !4181
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4182

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %disc.addr, align 4, !dbg !4183
  %cmp1 = icmp sge i32 %1, 30, !dbg !4184
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4185

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4186
  br label %return, !dbg !4186

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !4187

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4188, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4192, metadata !DIExpression()), !dbg !4191
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !4191
  %conv = zext i1 %cmp2 to i32, !dbg !4191
  store i32 1, i32* %tmp, align 4, !dbg !4191
  %2 = load i32, i32* %tmp, align 4, !dbg !4191
  br label %do.body3, !dbg !4193

do.body3:                                         ; preds = %do.body
  br label %do.body4, !dbg !4194

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !4196

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !4198, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !4202, metadata !DIExpression()), !dbg !4201
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !4201
  %conv9 = zext i1 %cmp8 to i32, !dbg !4201
  store i32 1, i32* %tmp10, align 4, !dbg !4201
  %3 = load i32, i32* %tmp10, align 4, !dbg !4201
  %call = call i64 @arch_local_irq_save() #11, !dbg !4203
  store i64 %call, i64* %flags, align 8, !dbg !4203
  br label %do.end, !dbg !4203

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !4196

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !4194

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4204, !srcloc !4206
  br label %do.body13, !dbg !4204

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4207

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4204

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4194

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4193

do.end17:                                         ; preds = %do.end16
  %4 = load i32, i32* %disc.addr, align 4, !dbg !4209
  %idxprom = sext i32 %4 to i64, !dbg !4211
  %arrayidx = getelementptr [30 x %struct.tty_ldisc_ops*], [30 x %struct.tty_ldisc_ops*]* @tty_ldiscs, i64 0, i64 %idxprom, !dbg !4211
  %5 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %arrayidx, align 8, !dbg !4211
  %refcount = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %5, i32 0, i32 19, !dbg !4212
  %6 = load i32, i32* %refcount, align 8, !dbg !4212
  %tobool = icmp ne i32 %6, 0, !dbg !4211
  br i1 %tobool, label %if.then18, label %if.else, !dbg !4213

if.then18:                                        ; preds = %do.end17
  store i32 -16, i32* %ret, align 4, !dbg !4214
  br label %if.end21, !dbg !4215

if.else:                                          ; preds = %do.end17
  %7 = load i32, i32* %disc.addr, align 4, !dbg !4216
  %idxprom19 = sext i32 %7 to i64, !dbg !4217
  %arrayidx20 = getelementptr [30 x %struct.tty_ldisc_ops*], [30 x %struct.tty_ldisc_ops*]* @tty_ldiscs, i64 0, i64 %idxprom19, !dbg !4217
  store %struct.tty_ldisc_ops* null, %struct.tty_ldisc_ops** %arrayidx20, align 8, !dbg !4218
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  br label %do.body22, !dbg !4219

do.body22:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i64* %__dummy23, metadata !4220, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.declare(metadata i64* %__dummy224, metadata !4224, metadata !DIExpression()), !dbg !4223
  %cmp25 = icmp eq i64* %__dummy23, %__dummy224, !dbg !4223
  %conv26 = zext i1 %cmp25 to i32, !dbg !4223
  store i32 1, i32* %tmp27, align 4, !dbg !4223
  %8 = load i32, i32* %tmp27, align 4, !dbg !4223
  br label %do.body28, !dbg !4225

do.body28:                                        ; preds = %do.body22
  br label %do.body29, !dbg !4226

do.body29:                                        ; preds = %do.body28
  br label %do.body30, !dbg !4228

do.body30:                                        ; preds = %do.body29
  call void @llvm.dbg.declare(metadata i64* %__dummy31, metadata !4230, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata i64* %__dummy232, metadata !4234, metadata !DIExpression()), !dbg !4233
  %cmp33 = icmp eq i64* %__dummy31, %__dummy232, !dbg !4233
  %conv34 = zext i1 %cmp33 to i32, !dbg !4233
  store i32 1, i32* %tmp35, align 4, !dbg !4233
  %9 = load i32, i32* %tmp35, align 4, !dbg !4233
  %10 = load i64, i64* %flags, align 8, !dbg !4235
  call void @arch_local_irq_restore(i64 %10) #11, !dbg !4235
  br label %do.end36, !dbg !4235

do.end36:                                         ; preds = %do.body30
  br label %do.end37, !dbg !4228

do.end37:                                         ; preds = %do.end36
  br label %do.body38, !dbg !4226

do.body38:                                        ; preds = %do.end37
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !4236, !srcloc !4238
  br label %do.body39, !dbg !4236

do.body39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4239

do.end40:                                         ; preds = %do.body39
  br label %do.end41, !dbg !4236

do.end41:                                         ; preds = %do.end40
  br label %do.end42, !dbg !4226

do.end42:                                         ; preds = %do.end41
  br label %do.end43, !dbg !4225

do.end43:                                         ; preds = %do.end42
  %11 = load i32, i32* %ret, align 4, !dbg !4241
  store i32 %11, i32* %retval, align 4, !dbg !4242
  br label %return, !dbg !4242

return:                                           ; preds = %do.end43, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4243
  ret i32 %12, !dbg !4243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @tty_ldiscs_seq_start(%struct.seq_file* %m, i64* %pos) #0 !dbg !4244 {
entry:
  %m.addr = alloca %struct.seq_file*, align 8
  %pos.addr = alloca i64*, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  store i64* %pos, i64** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pos.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  %0 = load i64*, i64** %pos.addr, align 8, !dbg !4249
  %1 = load i64, i64* %0, align 8, !dbg !4250
  %cmp = icmp slt i64 %1, 30, !dbg !4251
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4252

cond.true:                                        ; preds = %entry
  %2 = load i64*, i64** %pos.addr, align 8, !dbg !4253
  br label %cond.end, !dbg !4252

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4252

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %2, %cond.true ], [ null, %cond.false ], !dbg !4252
  %3 = bitcast i64* %cond to i8*, !dbg !4252
  ret i8* %3, !dbg !4254
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_ldiscs_seq_stop(%struct.seq_file* %m, i8* %v) #0 !dbg !4255 {
entry:
  %m.addr = alloca %struct.seq_file*, align 8
  %v.addr = alloca i8*, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !4256, metadata !DIExpression()), !dbg !4257
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !4258, metadata !DIExpression()), !dbg !4259
  ret void, !dbg !4260
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @tty_ldiscs_seq_next(%struct.seq_file* %m, i8* %v, i64* %pos) #0 !dbg !4261 {
entry:
  %m.addr = alloca %struct.seq_file*, align 8
  %v.addr = alloca i8*, align 8
  %pos.addr = alloca i64*, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !4262, metadata !DIExpression()), !dbg !4263
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !4264, metadata !DIExpression()), !dbg !4265
  store i64* %pos, i64** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pos.addr, metadata !4266, metadata !DIExpression()), !dbg !4267
  %0 = load i64*, i64** %pos.addr, align 8, !dbg !4268
  %1 = load i64, i64* %0, align 8, !dbg !4269
  %inc = add i64 %1, 1, !dbg !4269
  store i64 %inc, i64* %0, align 8, !dbg !4269
  %2 = load i64*, i64** %pos.addr, align 8, !dbg !4270
  %3 = load i64, i64* %2, align 8, !dbg !4271
  %cmp = icmp slt i64 %3, 30, !dbg !4272
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4273

cond.true:                                        ; preds = %entry
  %4 = load i64*, i64** %pos.addr, align 8, !dbg !4274
  br label %cond.end, !dbg !4273

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4273

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ %4, %cond.true ], [ null, %cond.false ], !dbg !4273
  %5 = bitcast i64* %cond to i8*, !dbg !4273
  ret i8* %5, !dbg !4275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_ldiscs_seq_show(%struct.seq_file* %m, i8* %v) #0 !dbg !4276 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.seq_file*, align 8
  %v.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ldops = alloca %struct.tty_ldisc_ops*, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4281, metadata !DIExpression()), !dbg !4282
  %0 = load i8*, i8** %v.addr, align 8, !dbg !4283
  %1 = bitcast i8* %0 to i64*, !dbg !4284
  %2 = load i64, i64* %1, align 8, !dbg !4285
  %conv = trunc i64 %2 to i32, !dbg !4285
  store i32 %conv, i32* %i, align 4, !dbg !4282
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc_ops** %ldops, metadata !4286, metadata !DIExpression()), !dbg !4287
  %3 = load i32, i32* %i, align 4, !dbg !4288
  %call = call %struct.tty_ldisc_ops* @get_ldops(i32 %3) #11, !dbg !4289
  store %struct.tty_ldisc_ops* %call, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4290
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4291
  %5 = bitcast %struct.tty_ldisc_ops* %4 to i8*, !dbg !4291
  %call1 = call zeroext i1 @IS_ERR(i8* %5) #11, !dbg !4293
  br i1 %call1, label %if.then, label %if.end, !dbg !4294

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4295
  br label %return, !dbg !4295

if.end:                                           ; preds = %entry
  %6 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !4296
  %7 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4297
  %name = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %7, i32 0, i32 1, !dbg !4298
  %8 = load i8*, i8** %name, align 8, !dbg !4298
  %tobool = icmp ne i8* %8, null, !dbg !4297
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4297

cond.true:                                        ; preds = %if.end
  %9 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4299
  %name2 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %9, i32 0, i32 1, !dbg !4300
  %10 = load i8*, i8** %name2, align 8, !dbg !4300
  br label %cond.end, !dbg !4297

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4297

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %cond.false ], !dbg !4297
  %11 = load i32, i32* %i, align 4, !dbg !4301
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i32 %11) #11, !dbg !4302
  %12 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4303
  call void @put_ldops(%struct.tty_ldisc_ops* %12) #11, !dbg !4304
  store i32 0, i32* %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

return:                                           ; preds = %cond.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4306
  ret i32 %13, !dbg !4306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.tty_ldisc* @tty_ldisc_ref_wait(%struct.tty_struct* %tty) #0 !dbg !4307 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ld = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !4312, metadata !DIExpression()), !dbg !4313
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4314
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !4315
  %call = call i32 @ldsem_down_read(%struct.ld_semaphore* %ldisc_sem, i64 9223372036854775807) #11, !dbg !4316
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4317
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 7, !dbg !4318
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !4318
  store %struct.tty_ldisc* %2, %struct.tty_ldisc** %ld, align 8, !dbg !4319
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4320
  %tobool = icmp ne %struct.tty_ldisc* %3, null, !dbg !4320
  br i1 %tobool, label %if.end, label %if.then, !dbg !4322

if.then:                                          ; preds = %entry
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4323
  %ldisc_sem1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 6, !dbg !4324
  call void @ldsem_up_read(%struct.ld_semaphore* %ldisc_sem1) #11, !dbg !4325
  br label %if.end, !dbg !4325

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4326
  ret %struct.tty_ldisc* %5, !dbg !4327
}

; Function Attrs: noredzone
declare dso_local i32 @ldsem_down_read(%struct.ld_semaphore*, i64) #2

; Function Attrs: noredzone
declare dso_local void @ldsem_up_read(%struct.ld_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %tty) #0 !dbg !4328 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ld = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !4331, metadata !DIExpression()), !dbg !4332
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %ld, align 8, !dbg !4332
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4333
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !4335
  %call = call i32 @ldsem_down_read_trylock(%struct.ld_semaphore* %ldisc_sem) #11, !dbg !4336
  %tobool = icmp ne i32 %call, 0, !dbg !4336
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4337

if.then:                                          ; preds = %entry
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4338
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 7, !dbg !4340
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !4340
  store %struct.tty_ldisc* %2, %struct.tty_ldisc** %ld, align 8, !dbg !4341
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4342
  %tobool1 = icmp ne %struct.tty_ldisc* %3, null, !dbg !4342
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4344

if.then2:                                         ; preds = %if.then
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4345
  %ldisc_sem3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 6, !dbg !4346
  call void @ldsem_up_read(%struct.ld_semaphore* %ldisc_sem3) #11, !dbg !4347
  br label %if.end, !dbg !4347

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end4, !dbg !4348

if.end4:                                          ; preds = %if.end, %entry
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4349
  ret %struct.tty_ldisc* %5, !dbg !4350
}

; Function Attrs: noredzone
declare dso_local i32 @ldsem_down_read_trylock(%struct.ld_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_ldisc_deref(%struct.tty_ldisc* %ld) #0 !dbg !4351 {
entry:
  %ld.addr = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_ldisc* %ld, %struct.tty_ldisc** %ld.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !4356
  %tty = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %0, i32 0, i32 1, !dbg !4357
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty, align 8, !dbg !4357
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 6, !dbg !4358
  call void @ldsem_up_read(%struct.ld_semaphore* %ldisc_sem) #11, !dbg !4359
  ret void, !dbg !4360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_ldisc_lock(%struct.tty_struct* %tty, i64 %timeout) #0 !dbg !4361 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %timeout.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4364, metadata !DIExpression()), !dbg !4365
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4366, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4368, metadata !DIExpression()), !dbg !4369
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4370
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 21, !dbg !4371
  call void @set_bit(i64 20, i64* %flags) #11, !dbg !4372
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4373
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 34, !dbg !4373
  call void @__wake_up(%struct.wait_queue_head* %read_wait, i32 1, i32 0, i8* null) #11, !dbg !4373
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4374
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 33, !dbg !4374
  call void @__wake_up(%struct.wait_queue_head* %write_wait, i32 1, i32 0, i8* null) #11, !dbg !4374
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4375
  %4 = load i64, i64* %timeout.addr, align 8, !dbg !4376
  %call = call i32 @__tty_ldisc_lock(%struct.tty_struct* %3, i64 %4) #11, !dbg !4377
  store i32 %call, i32* %ret, align 4, !dbg !4378
  %5 = load i32, i32* %ret, align 4, !dbg !4379
  %tobool = icmp ne i32 %5, 0, !dbg !4379
  br i1 %tobool, label %if.end, label %if.then, !dbg !4381

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4382
  br label %return, !dbg !4382

if.end:                                           ; preds = %entry
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4383
  %flags1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 21, !dbg !4384
  call void @set_bit(i64 22, i64* %flags1) #11, !dbg !4385
  store i32 0, i32* %retval, align 4, !dbg !4386
  br label %return, !dbg !4386

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4387
  ret i32 %7, !dbg !4387
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4388 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4394, metadata !DIExpression()), !dbg !4397
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4399, metadata !DIExpression()), !dbg !4400
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4401, metadata !DIExpression()), !dbg !4409
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4411, metadata !DIExpression()), !dbg !4412
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4415, metadata !DIExpression()), !dbg !4416
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4417
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4418
  %div = sdiv i64 %1, 64, !dbg !4418
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4419
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4417
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4420
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4421
  %conv.i = trunc i64 %4 to i32, !dbg !4421
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4422
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4423
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4423
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !4423
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4424
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4425
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4426
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #4, !dbg !4428
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4429

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4430
  %12 = bitcast i64* %11 to i8*, !dbg !4430
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4430
  %shr.i = ashr i64 %13, 3, !dbg !4430
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4430
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4432
  %and.i = and i64 %14, 7, !dbg !4432
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4432
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4432
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #4, !dbg !4433, !srcloc !4434
  br label %arch_set_bit.exit, !dbg !4435

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4436
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4438
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #4, !dbg !4439, !srcloc !4440
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4441
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__tty_ldisc_lock(%struct.tty_struct* %tty, i64 %timeout) #0 !dbg !4442 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %timeout.addr = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4445, metadata !DIExpression()), !dbg !4446
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4447
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !4448
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !4449
  %call = call i32 @ldsem_down_write(%struct.ld_semaphore* %ldisc_sem, i64 %1) #11, !dbg !4450
  ret i32 %call, !dbg !4451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_ldisc_unlock(%struct.tty_struct* %tty) #0 !dbg !4452 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4455
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 21, !dbg !4456
  call void @clear_bit(i64 22, i64* %flags) #11, !dbg !4457
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4458
  %flags1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 21, !dbg !4459
  call void @clear_bit(i64 20, i64* %flags1) #11, !dbg !4460
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4461
  call void @__tty_ldisc_unlock(%struct.tty_struct* %2) #11, !dbg !4462
  ret void, !dbg !4463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !4464 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4465, metadata !DIExpression()), !dbg !4467
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4469, metadata !DIExpression()), !dbg !4470
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4401, metadata !DIExpression()), !dbg !4471
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4411, metadata !DIExpression()), !dbg !4473
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4476, metadata !DIExpression()), !dbg !4477
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4478
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4479
  %div = sdiv i64 %1, 64, !dbg !4479
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4480
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4478
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4481
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4482
  %conv.i = trunc i64 %4 to i32, !dbg !4482
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4483
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4484
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4484
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !4484
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4485
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4486
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4487
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #4, !dbg !4489
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4490

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4491
  %12 = bitcast i64* %11 to i8*, !dbg !4491
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4491
  %shr.i = ashr i64 %13, 3, !dbg !4491
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4491
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4493
  %and.i = and i64 %14, 7, !dbg !4493
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4493
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4493
  %neg.i = xor i32 %shl.i, -1, !dbg !4494
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #4, !dbg !4495, !srcloc !4496
  br label %arch_clear_bit.exit, !dbg !4497

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4498
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4500
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #4, !dbg !4501, !srcloc !4502
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4503
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__tty_ldisc_unlock(%struct.tty_struct* %tty) #0 !dbg !4504 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4507
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !4508
  call void @ldsem_up_write(%struct.ld_semaphore* %ldisc_sem) #11, !dbg !4509
  ret void, !dbg !4510
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_ldisc_flush(%struct.tty_struct* %tty) #0 !dbg !4511 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ld = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4512, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !4514, metadata !DIExpression()), !dbg !4515
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4516
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %0) #11, !dbg !4517
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ld, align 8, !dbg !4515
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4518
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4519
  call void @tty_buffer_flush(%struct.tty_struct* %1, %struct.tty_ldisc* %2) #11, !dbg !4520
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4521
  %tobool = icmp ne %struct.tty_ldisc* %3, null, !dbg !4521
  br i1 %tobool, label %if.then, label %if.end, !dbg !4523

if.then:                                          ; preds = %entry
  %4 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4524
  call void @tty_ldisc_deref(%struct.tty_ldisc* %4) #11, !dbg !4525
  br label %if.end, !dbg !4525

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4526
}

; Function Attrs: noredzone
declare dso_local void @tty_buffer_flush(%struct.tty_struct*, %struct.tty_ldisc*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_set_ldisc(%struct.tty_struct* %tty, i32 %disc) #0 !dbg !4527 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %disc.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %old_ldisc = alloca %struct.tty_ldisc*, align 8
  %new_ldisc = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i32 %disc, i32* %disc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disc.addr, metadata !4530, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4532, metadata !DIExpression()), !dbg !4533
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %old_ldisc, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %new_ldisc, metadata !4536, metadata !DIExpression()), !dbg !4537
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4538
  %1 = load i32, i32* %disc.addr, align 4, !dbg !4539
  %call = call %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %0, i32 %1) #11, !dbg !4540
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4541
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4542
  %3 = bitcast %struct.tty_ldisc* %2 to i8*, !dbg !4542
  %call2 = call zeroext i1 @IS_ERR(i8* %3) #11, !dbg !4544
  br i1 %call2, label %if.then, label %if.end, !dbg !4545

if.then:                                          ; preds = %entry
  %4 = load %struct.tty_ldisc*, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4546
  %5 = bitcast %struct.tty_ldisc* %4 to i8*, !dbg !4546
  %call3 = call i64 @PTR_ERR(i8* %5) #11, !dbg !4547
  %conv = trunc i64 %call3 to i32, !dbg !4547
  store i32 %conv, i32* %retval, align 4, !dbg !4548
  br label %return, !dbg !4548

if.end:                                           ; preds = %entry
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4549
  call void @tty_lock(%struct.tty_struct* %6) #11, !dbg !4550
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4551
  %call4 = call i32 @tty_ldisc_lock(%struct.tty_struct* %7, i64 1250) #11, !dbg !4552
  store i32 %call4, i32* %retval1, align 4, !dbg !4553
  %8 = load i32, i32* %retval1, align 4, !dbg !4554
  %tobool = icmp ne i32 %8, 0, !dbg !4554
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !4556

if.then5:                                         ; preds = %if.end
  br label %err, !dbg !4557

if.end6:                                          ; preds = %if.end
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4558
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 7, !dbg !4560
  %10 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !4560
  %tobool7 = icmp ne %struct.tty_ldisc* %10, null, !dbg !4558
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4561

if.then8:                                         ; preds = %if.end6
  store i32 -5, i32* %retval1, align 4, !dbg !4562
  br label %out, !dbg !4564

if.end9:                                          ; preds = %if.end6
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4565
  %ldisc10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 7, !dbg !4567
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc10, align 8, !dbg !4567
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %12, i32 0, i32 0, !dbg !4568
  %13 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !4568
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %13, i32 0, i32 2, !dbg !4569
  %14 = load i32, i32* %num, align 8, !dbg !4569
  %15 = load i32, i32* %disc.addr, align 4, !dbg !4570
  %cmp = icmp eq i32 %14, %15, !dbg !4571
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !4572

if.then12:                                        ; preds = %if.end9
  br label %out, !dbg !4573

if.end13:                                         ; preds = %if.end9
  %16 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4574
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 21, !dbg !4576
  %call14 = call zeroext i1 @test_bit(i64 18, i64* %flags) #11, !dbg !4577
  br i1 %call14, label %if.then15, label %if.end16, !dbg !4578

if.then15:                                        ; preds = %if.end13
  store i32 -5, i32* %retval1, align 4, !dbg !4579
  br label %out, !dbg !4581

if.end16:                                         ; preds = %if.end13
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4582
  %ldisc17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 7, !dbg !4583
  %18 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc17, align 8, !dbg !4583
  store %struct.tty_ldisc* %18, %struct.tty_ldisc** %old_ldisc, align 8, !dbg !4584
  %19 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4585
  %20 = load %struct.tty_ldisc*, %struct.tty_ldisc** %old_ldisc, align 8, !dbg !4586
  call void @tty_ldisc_close(%struct.tty_struct* %19, %struct.tty_ldisc* %20) #11, !dbg !4587
  %21 = load %struct.tty_ldisc*, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4588
  %22 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4589
  %ldisc18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 7, !dbg !4590
  store %struct.tty_ldisc* %21, %struct.tty_ldisc** %ldisc18, align 8, !dbg !4591
  %23 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4592
  %24 = load i32, i32* %disc.addr, align 4, !dbg !4593
  call void @tty_set_termios_ldisc(%struct.tty_struct* %23, i32 %24) #11, !dbg !4594
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4595
  %26 = load %struct.tty_ldisc*, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4596
  %call19 = call i32 @tty_ldisc_open(%struct.tty_struct* %25, %struct.tty_ldisc* %26) #11, !dbg !4597
  store i32 %call19, i32* %retval1, align 4, !dbg !4598
  %27 = load i32, i32* %retval1, align 4, !dbg !4599
  %cmp20 = icmp slt i32 %27, 0, !dbg !4601
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4602

if.then22:                                        ; preds = %if.end16
  %28 = load %struct.tty_ldisc*, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4603
  call void @tty_ldisc_put(%struct.tty_ldisc* %28) #11, !dbg !4605
  %29 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4606
  %30 = load %struct.tty_ldisc*, %struct.tty_ldisc** %old_ldisc, align 8, !dbg !4607
  call void @tty_ldisc_restore(%struct.tty_struct* %29, %struct.tty_ldisc* %30) #11, !dbg !4608
  br label %if.end23, !dbg !4609

if.end23:                                         ; preds = %if.then22, %if.end16
  %31 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4610
  %ldisc24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 7, !dbg !4612
  %32 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc24, align 8, !dbg !4612
  %ops25 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %32, i32 0, i32 0, !dbg !4613
  %33 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops25, align 8, !dbg !4613
  %num26 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %33, i32 0, i32 2, !dbg !4614
  %34 = load i32, i32* %num26, align 8, !dbg !4614
  %35 = load %struct.tty_ldisc*, %struct.tty_ldisc** %old_ldisc, align 8, !dbg !4615
  %ops27 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %35, i32 0, i32 0, !dbg !4616
  %36 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops27, align 8, !dbg !4616
  %num28 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %36, i32 0, i32 2, !dbg !4617
  %37 = load i32, i32* %num28, align 8, !dbg !4617
  %cmp29 = icmp ne i32 %34, %37, !dbg !4618
  br i1 %cmp29, label %land.lhs.true, label %if.end37, !dbg !4619

land.lhs.true:                                    ; preds = %if.end23
  %38 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4620
  %ops31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 4, !dbg !4621
  %39 = load %struct.tty_operations*, %struct.tty_operations** %ops31, align 8, !dbg !4621
  %set_ldisc = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %39, i32 0, i32 22, !dbg !4622
  %40 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %set_ldisc, align 8, !dbg !4622
  %tobool32 = icmp ne void (%struct.tty_struct*)* %40, null, !dbg !4620
  br i1 %tobool32, label %if.then33, label %if.end37, !dbg !4623

if.then33:                                        ; preds = %land.lhs.true
  %41 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4624
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 11, !dbg !4626
  call void @down_read(%struct.rw_semaphore* %termios_rwsem) #11, !dbg !4627
  %42 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4628
  %ops34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 4, !dbg !4629
  %43 = load %struct.tty_operations*, %struct.tty_operations** %ops34, align 8, !dbg !4629
  %set_ldisc35 = getelementptr inbounds %struct.tty_operations, %struct.tty_operations* %43, i32 0, i32 22, !dbg !4630
  %44 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %set_ldisc35, align 8, !dbg !4630
  %45 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4631
  call void %44(%struct.tty_struct* %45) #11, !dbg !4628
  %46 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4632
  %termios_rwsem36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 11, !dbg !4633
  call void @up_read(%struct.rw_semaphore* %termios_rwsem36) #11, !dbg !4634
  br label %if.end37, !dbg !4635

if.end37:                                         ; preds = %if.then33, %land.lhs.true, %if.end23
  %47 = load %struct.tty_ldisc*, %struct.tty_ldisc** %old_ldisc, align 8, !dbg !4636
  store %struct.tty_ldisc* %47, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4637
  br label %out, !dbg !4638

out:                                              ; preds = %if.end37, %if.then15, %if.then12, %if.then8
  call void @llvm.dbg.label(metadata !4639), !dbg !4640
  %48 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4641
  call void @tty_ldisc_unlock(%struct.tty_struct* %48) #11, !dbg !4642
  %49 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4643
  %port = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 44, !dbg !4644
  %50 = load %struct.tty_port*, %struct.tty_port** %port, align 8, !dbg !4644
  %call38 = call zeroext i1 @tty_buffer_restart_work(%struct.tty_port* %50) #11, !dbg !4645
  br label %err, !dbg !4645

err:                                              ; preds = %out, %if.then5
  call void @llvm.dbg.label(metadata !4646), !dbg !4647
  %51 = load %struct.tty_ldisc*, %struct.tty_ldisc** %new_ldisc, align 8, !dbg !4648
  call void @tty_ldisc_put(%struct.tty_ldisc* %51) #11, !dbg !4649
  %52 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4650
  call void @tty_unlock(%struct.tty_struct* %52) #11, !dbg !4651
  %53 = load i32, i32* %retval1, align 4, !dbg !4652
  store i32 %53, i32* %retval, align 4, !dbg !4653
  br label %return, !dbg !4653

return:                                           ; preds = %err, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !4654
  ret i32 %54, !dbg !4654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %tty, i32 %disc) #0 !dbg !4655 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4658, metadata !DIExpression()), !dbg !4662
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4670, metadata !DIExpression()), !dbg !4671
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4672, metadata !DIExpression()), !dbg !4673
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4674, metadata !DIExpression()), !dbg !4675
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4676, metadata !DIExpression()), !dbg !4680
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4682, metadata !DIExpression()), !dbg !4686
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4688, metadata !DIExpression()), !dbg !4692
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4697, metadata !DIExpression()), !dbg !4698
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4699, metadata !DIExpression()), !dbg !4700
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4701, metadata !DIExpression()), !dbg !4702
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4703, metadata !DIExpression()), !dbg !4704
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4705, metadata !DIExpression()), !dbg !4706
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4707, metadata !DIExpression()), !dbg !4708
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4709, metadata !DIExpression()), !dbg !4710
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4711, metadata !DIExpression()), !dbg !4712
  %retval = alloca %struct.tty_ldisc*, align 8
  %tty.addr = alloca %struct.tty_struct*, align 8
  %disc.addr = alloca i32, align 4
  %ld = alloca %struct.tty_ldisc*, align 8
  %ldops = alloca %struct.tty_ldisc_ops*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !4713, metadata !DIExpression()), !dbg !4714
  store i32 %disc, i32* %disc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disc.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !4717, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc_ops** %ldops, metadata !4719, metadata !DIExpression()), !dbg !4720
  %0 = load i32, i32* %disc.addr, align 4, !dbg !4721
  %cmp = icmp slt i32 %0, 0, !dbg !4723
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4724

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %disc.addr, align 4, !dbg !4725
  %cmp1 = icmp sge i32 %1, 30, !dbg !4726
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4727

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i8* @ERR_PTR(i64 -22) #11, !dbg !4728
  %2 = bitcast i8* %call to %struct.tty_ldisc*, !dbg !4728
  store %struct.tty_ldisc* %2, %struct.tty_ldisc** %retval, align 8, !dbg !4729
  br label %return, !dbg !4729

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %disc.addr, align 4, !dbg !4730
  %call2 = call %struct.tty_ldisc_ops* @get_ldops(i32 %3) #11, !dbg !4731
  store %struct.tty_ldisc_ops* %call2, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4732
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4733
  %5 = bitcast %struct.tty_ldisc_ops* %4 to i8*, !dbg !4733
  %call3 = call zeroext i1 @IS_ERR(i8* %5) #11, !dbg !4735
  br i1 %call3, label %if.then4, label %if.end15, !dbg !4736

if.then4:                                         ; preds = %if.end
  %call5 = call zeroext i1 @capable(i32 16) #11, !dbg !4737
  br i1 %call5, label %if.end8, label %land.lhs.true, !dbg !4740

land.lhs.true:                                    ; preds = %if.then4
  %6 = load i32, i32* @tty_ldisc_autoload, align 4, !dbg !4741
  %tobool = icmp ne i32 %6, 0, !dbg !4741
  br i1 %tobool, label %if.end8, label %if.then6, !dbg !4742

if.then6:                                         ; preds = %land.lhs.true
  %call7 = call i8* @ERR_PTR(i64 -1) #11, !dbg !4743
  %7 = bitcast i8* %call7 to %struct.tty_ldisc*, !dbg !4743
  store %struct.tty_ldisc* %7, %struct.tty_ldisc** %retval, align 8, !dbg !4744
  br label %return, !dbg !4744

if.end8:                                          ; preds = %land.lhs.true, %if.then4
  %8 = load i32, i32* %disc.addr, align 4, !dbg !4745
  %call9 = call i32 (i8*, ...) @request_module(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %8) #11, !dbg !4746
  %9 = load i32, i32* %disc.addr, align 4, !dbg !4747
  %call10 = call %struct.tty_ldisc_ops* @get_ldops(i32 %9) #11, !dbg !4748
  store %struct.tty_ldisc_ops* %call10, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4749
  %10 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4750
  %11 = bitcast %struct.tty_ldisc_ops* %10 to i8*, !dbg !4750
  %call11 = call zeroext i1 @IS_ERR(i8* %11) #11, !dbg !4752
  br i1 %call11, label %if.then12, label %if.end14, !dbg !4753

if.then12:                                        ; preds = %if.end8
  %12 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4754
  %13 = bitcast %struct.tty_ldisc_ops* %12 to i8*, !dbg !4754
  %call13 = call i8* @ERR_CAST(i8* %13) #11, !dbg !4755
  %14 = bitcast i8* %call13 to %struct.tty_ldisc*, !dbg !4755
  store %struct.tty_ldisc* %14, %struct.tty_ldisc** %retval, align 8, !dbg !4756
  br label %return, !dbg !4756

if.end14:                                         ; preds = %if.end8
  br label %if.end15, !dbg !4757

if.end15:                                         ; preds = %if.end14, %if.end
  store i64 16, i64* %size.addr.i, align 8
  store i32 36032, i32* %flags.addr.i, align 4
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !4758
  %16 = call i1 @llvm.is.constant.i64(i64 %15) #4, !dbg !4759
  br i1 %16, label %if.then.i, label %if.end9.i, !dbg !4760

if.then.i:                                        ; preds = %if.end15
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !4761
  %cmp.i = icmp ugt i64 %17, 8192, !dbg !4762
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4763

if.then1.i:                                       ; preds = %if.then.i
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4764
  %19 = load i32, i32* %flags.addr.i, align 4, !dbg !4765
  store i64 %18, i64* %size.addr.i.i, align 8
  store i32 %19, i32* %flags.addr.i.i, align 4
  %20 = load i64, i64* %size.addr.i.i, align 8, !dbg !4766
  %call.i.i = call i32 @get_order(i64 %20) #13, !dbg !4767
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4706
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4768
  %22 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4769
  %23 = load i32, i32* %order.i.i, align 4, !dbg !4770
  store i64 %21, i64* %size.addr.i.i.i, align 8
  store i32 %22, i32* %flags.addr.i.i.i, align 4
  store i32 %23, i32* %order.addr.i.i.i, align 4
  %24 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4771
  %25 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4772
  %26 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4773
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %24, i32 %25, i32 %26) #12, !dbg !4774
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4774
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4774
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4774
  call void @llvm.assume(i1 %maskcond.i.i.i) #4, !dbg !4774
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4775
  br label %kmalloc.exit, !dbg !4775

if.end.i:                                         ; preds = %if.then.i
  %27 = load i64, i64* %size.addr.i, align 8, !dbg !4776
  store i64 %27, i64* %size.addr.i11.i, align 8
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %tobool.i.i = icmp ne i64 %28, 0, !dbg !4777
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4779

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4780
  br label %kmalloc_index.exit.i, !dbg !4780

if.end.i.i:                                       ; preds = %if.end.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4781
  %cmp.i.i = icmp ule i64 %29, 8, !dbg !4783
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4784

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4785
  br label %kmalloc_index.exit.i, !dbg !4785

if.end2.i.i:                                      ; preds = %if.end.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4786
  %cmp3.i.i = icmp ugt i64 %30, 64, !dbg !4788
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4789

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4790
  %cmp4.i.i = icmp ule i64 %31, 96, !dbg !4791
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4792

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4793
  br label %kmalloc_index.exit.i, !dbg !4793

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4794
  %cmp7.i.i = icmp ugt i64 %32, 128, !dbg !4796
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4797

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp9.i.i = icmp ule i64 %33, 192, !dbg !4799
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4800

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4801
  br label %kmalloc_index.exit.i, !dbg !4801

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4802
  %cmp12.i.i = icmp ule i64 %34, 8, !dbg !4804
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4805

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4806
  br label %kmalloc_index.exit.i, !dbg !4806

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4807
  %cmp15.i.i = icmp ule i64 %35, 16, !dbg !4809
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4810

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4811
  br label %kmalloc_index.exit.i, !dbg !4811

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4812
  %cmp18.i.i = icmp ule i64 %36, 32, !dbg !4814
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4815

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4816
  br label %kmalloc_index.exit.i, !dbg !4816

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4817
  %cmp21.i.i = icmp ule i64 %37, 64, !dbg !4819
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4820

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4821
  br label %kmalloc_index.exit.i, !dbg !4821

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4822
  %cmp24.i.i = icmp ule i64 %38, 128, !dbg !4824
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4825

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4826
  br label %kmalloc_index.exit.i, !dbg !4826

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4827
  %cmp27.i.i = icmp ule i64 %39, 256, !dbg !4829
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4830

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4831
  br label %kmalloc_index.exit.i, !dbg !4831

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4832
  %cmp30.i.i = icmp ule i64 %40, 512, !dbg !4834
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4835

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4836
  br label %kmalloc_index.exit.i, !dbg !4836

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4837
  %cmp33.i.i = icmp ule i64 %41, 1024, !dbg !4839
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4840

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4841
  br label %kmalloc_index.exit.i, !dbg !4841

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4842
  %cmp36.i.i = icmp ule i64 %42, 2048, !dbg !4844
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4845

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4846
  br label %kmalloc_index.exit.i, !dbg !4846

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4847
  %cmp39.i.i = icmp ule i64 %43, 4096, !dbg !4849
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4850

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4851
  br label %kmalloc_index.exit.i, !dbg !4851

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4852
  %cmp42.i.i = icmp ule i64 %44, 8192, !dbg !4854
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4855

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4856
  br label %kmalloc_index.exit.i, !dbg !4856

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4857
  %cmp45.i.i = icmp ule i64 %45, 16384, !dbg !4859
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4860

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4861
  br label %kmalloc_index.exit.i, !dbg !4861

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4862
  %cmp48.i.i = icmp ule i64 %46, 32768, !dbg !4864
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4865

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4866
  br label %kmalloc_index.exit.i, !dbg !4866

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4867
  %cmp51.i.i = icmp ule i64 %47, 65536, !dbg !4869
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4870

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4871
  br label %kmalloc_index.exit.i, !dbg !4871

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4872
  %cmp54.i.i = icmp ule i64 %48, 131072, !dbg !4874
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4875

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4876
  br label %kmalloc_index.exit.i, !dbg !4876

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4877
  %cmp57.i.i = icmp ule i64 %49, 262144, !dbg !4879
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4880

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4881
  br label %kmalloc_index.exit.i, !dbg !4881

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4882
  %cmp60.i.i = icmp ule i64 %50, 524288, !dbg !4884
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4885

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4886
  br label %kmalloc_index.exit.i, !dbg !4886

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4887
  %cmp63.i.i = icmp ule i64 %51, 1048576, !dbg !4889
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4890

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4891
  br label %kmalloc_index.exit.i, !dbg !4891

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4892
  %cmp66.i.i = icmp ule i64 %52, 2097152, !dbg !4894
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4895

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4896
  br label %kmalloc_index.exit.i, !dbg !4896

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4897
  %cmp69.i.i = icmp ule i64 %53, 4194304, !dbg !4899
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4900

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4901
  br label %kmalloc_index.exit.i, !dbg !4901

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4902
  %cmp72.i.i = icmp ule i64 %54, 8388608, !dbg !4904
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4905

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4906
  br label %kmalloc_index.exit.i, !dbg !4906

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4907
  %cmp75.i.i = icmp ule i64 %55, 16777216, !dbg !4909
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4910

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4911
  br label %kmalloc_index.exit.i, !dbg !4911

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4912
  %cmp78.i.i = icmp ule i64 %56, 33554432, !dbg !4914
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4915

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4916
  br label %kmalloc_index.exit.i, !dbg !4916

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4917
  %cmp81.i.i = icmp ule i64 %57, 67108864, !dbg !4919
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4920

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4921
  br label %kmalloc_index.exit.i, !dbg !4921

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #4, !dbg !4922, !srcloc !4925
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 224) #4, !dbg !4926, !srcloc !4929
  unreachable, !dbg !4930

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %58 = load i32, i32* %retval.i.i, align 4, !dbg !4931
  store i32 %58, i32* %index.i, align 4, !dbg !4932
  %59 = load i32, i32* %index.i, align 4, !dbg !4933
  %tobool.i = icmp ne i32 %59, 0, !dbg !4933
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4935

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4936
  br label %kmalloc.exit, !dbg !4936

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %60 = load i32, i32* %flags.addr.i, align 4, !dbg !4937
  store i32 %60, i32* %flags.addr.i13.i, align 4
  %61 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4938
  %and.i.i = and i32 %61, 17, !dbg !4938
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4938
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4938
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4938
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4938
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4940

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4941
  br label %kmalloc_type.exit.i, !dbg !4941

if.end.i16.i:                                     ; preds = %if.end4.i
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4942
  %and2.i.i = and i32 %62, 1, !dbg !4943
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4942
  %63 = zext i1 %tobool3.i.i to i64, !dbg !4942
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4942
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4944
  br label %kmalloc_type.exit.i, !dbg !4944

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %64 = load i32, i32* %retval.i12.i, align 4, !dbg !4945
  %idxprom.i = zext i32 %64 to i64, !dbg !4946
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4946
  %65 = load i32, i32* %index.i, align 4, !dbg !4947
  %idxprom6.i = zext i32 %65 to i64, !dbg !4946
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4946
  %66 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4946
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !4948
  %68 = load i64, i64* %size.addr.i, align 8, !dbg !4949
  store %struct.kmem_cache* %66, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %67, i32* %flags.addr.i17.i, align 4
  store i64 %68, i64* %size.addr.i18.i, align 8
  %69 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4950
  %70 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4951
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %69, i32 %70) #12, !dbg !4952
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4952
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4952
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4952
  call void @llvm.assume(i1 %maskcond.i.i) #4, !dbg !4952
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4675
  %71 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4953
  %72 = load i8*, i8** %ret.i.i, align 8, !dbg !4954
  %73 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4955
  %74 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4956
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %71, i8* %72, i64 %73, i32 %74) #12, !dbg !4957
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4958
  %75 = load i8*, i8** %ret.i.i, align 8, !dbg !4959
  store i8* %75, i8** %retval.i, align 8, !dbg !4960
  br label %kmalloc.exit, !dbg !4960

if.end9.i:                                        ; preds = %if.end15
  %76 = load i64, i64* %size.addr.i, align 8, !dbg !4961
  %77 = load i32, i32* %flags.addr.i, align 4, !dbg !4962
  %call10.i = call noalias i8* @__kmalloc(i64 %76, i32 %77) #12, !dbg !4963
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4963
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4963
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4963
  call void @llvm.assume(i1 %maskcond.i) #4, !dbg !4963
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4964
  br label %kmalloc.exit, !dbg !4964

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %78 = load i8*, i8** %retval.i, align 8, !dbg !4965
  %79 = bitcast i8* %78 to %struct.tty_ldisc*, !dbg !4966
  store %struct.tty_ldisc* %79, %struct.tty_ldisc** %ld, align 8, !dbg !4967
  %80 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !4968
  %81 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4969
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %81, i32 0, i32 0, !dbg !4970
  store %struct.tty_ldisc_ops* %80, %struct.tty_ldisc_ops** %ops, align 8, !dbg !4971
  %82 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !4972
  %83 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4973
  %tty17 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %83, i32 0, i32 1, !dbg !4974
  store %struct.tty_struct* %82, %struct.tty_struct** %tty17, align 8, !dbg !4975
  %84 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !4976
  store %struct.tty_ldisc* %84, %struct.tty_ldisc** %retval, align 8, !dbg !4977
  br label %return, !dbg !4977

return:                                           ; preds = %kmalloc.exit, %if.then12, %if.then6, %if.then
  %85 = load %struct.tty_ldisc*, %struct.tty_ldisc** %retval, align 8, !dbg !4978
  ret %struct.tty_ldisc* %85, !dbg !4978
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4979 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4985
  %1 = ptrtoint i8* %0 to i64, !dbg !4985
  %2 = inttoptr i64 %1 to i8*, !dbg !4985
  %3 = ptrtoint i8* %2 to i64, !dbg !4985
  %cmp = icmp uge i64 %3, -4095, !dbg !4985
  %lnot = xor i1 %cmp, true, !dbg !4985
  %lnot1 = xor i1 %lnot, true, !dbg !4985
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4985
  %conv = sext i32 %lnot.ext to i64, !dbg !4985
  %tobool = icmp ne i64 %conv, 0, !dbg !4985
  ret i1 %tobool, !dbg !4986
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4987 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4990, metadata !DIExpression()), !dbg !4991
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4992
  %1 = ptrtoint i8* %0 to i64, !dbg !4993
  ret i64 %1, !dbg !4994
}

; Function Attrs: noredzone
declare dso_local void @tty_lock(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4995 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5001, metadata !DIExpression()), !dbg !5003
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5005, metadata !DIExpression()), !dbg !5006
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5007, metadata !DIExpression()), !dbg !5008
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5009, metadata !DIExpression()), !dbg !5011
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5013, metadata !DIExpression()), !dbg !5014
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5015, metadata !DIExpression()), !dbg !5017
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5019, metadata !DIExpression()), !dbg !5020
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5025
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5026
  %div = sdiv i64 %1, 64, !dbg !5026
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5027
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5025
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5028
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5029
  %conv.i = trunc i64 %4 to i32, !dbg !5029
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !5030
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5031
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5031
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5031
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5032
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5032
  br i1 %8, label %cond.true, label %cond.false, !dbg !5032

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5032
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5032
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5033
  %and.i = and i64 %11, 63, !dbg !5034
  %shl.i = shl i64 1, %and.i, !dbg !5035
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5036
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5037
  %shr.i = ashr i64 %13, 6, !dbg !5038
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5036
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5036
  %and1.i = and i64 %shl.i, %14, !dbg !5039
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5040
  %conv = zext i1 %cmp.i to i32, !dbg !5032
  br label %cond.end, !dbg !5032

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5032
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5032
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5041
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5042
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #4, !dbg !5043, !srcloc !5044
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5043
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5045
  %tobool.i = trunc i8 %20 to i1, !dbg !5045
  %conv2 = zext i1 %tobool.i to i32, !dbg !5032
  br label %cond.end, !dbg !5032

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5032
  %tobool = icmp ne i32 %cond, 0, !dbg !5032
  ret i1 %tobool, !dbg !5046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_ldisc_close(%struct.tty_struct* %tty, %struct.tty_ldisc* %ld) #0 !dbg !5047 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ld.addr = alloca %struct.tty_ldisc*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  store %struct.tty_ldisc* %ld, %struct.tty_ldisc** %ld.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  br label %do.body, !dbg !5054

do.body:                                          ; preds = %entry
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5055
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !5055
  br label %do.end, !dbg !5055

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5057, metadata !DIExpression()), !dbg !5059
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5059
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 21, !dbg !5059
  %call = call zeroext i1 @test_bit(i64 11, i64* %flags) #11, !dbg !5059
  %lnot = xor i1 %call, true, !dbg !5059
  %lnot1 = xor i1 %lnot, true, !dbg !5059
  %lnot2 = xor i1 %lnot1, true, !dbg !5059
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5059
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5059
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5060
  %tobool = icmp ne i32 %2, 0, !dbg !5060
  %lnot3 = xor i1 %tobool, true, !dbg !5060
  %lnot5 = xor i1 %lnot3, true, !dbg !5060
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5060
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5060
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5060
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5059

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !5060

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !5062

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5064

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !5062

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 485, i32 2305, i64 12) #4, !dbg !5066, !srcloc !5068
  br label %do.end12, !dbg !5066

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 232) #4, !dbg !5069, !srcloc !5071
  br label %do.body13, !dbg !5062

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !5072

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !5062

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !5062

if.end:                                           ; preds = %do.end15, %do.end
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5059
  %tobool16 = icmp ne i32 %3, 0, !dbg !5059
  %lnot17 = xor i1 %tobool16, true, !dbg !5059
  %lnot19 = xor i1 %lnot17, true, !dbg !5059
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5059
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5059
  store i64 %conv21, i64* %tmp, align 8, !dbg !5060
  %4 = load i64, i64* %tmp, align 8, !dbg !5059
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5074
  %flags22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 21, !dbg !5075
  call void @clear_bit(i64 11, i64* %flags22) #11, !dbg !5076
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !5077
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %6, i32 0, i32 0, !dbg !5079
  %7 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5079
  %close = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %7, i32 0, i32 5, !dbg !5080
  %8 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %close, align 8, !dbg !5080
  %tobool23 = icmp ne void (%struct.tty_struct*)* %8, null, !dbg !5077
  br i1 %tobool23, label %if.then24, label %if.end27, !dbg !5081

if.then24:                                        ; preds = %if.end
  %9 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !5082
  %ops25 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %9, i32 0, i32 0, !dbg !5083
  %10 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops25, align 8, !dbg !5083
  %close26 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %10, i32 0, i32 5, !dbg !5084
  %11 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %close26, align 8, !dbg !5084
  %12 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5085
  call void %11(%struct.tty_struct* %12) #11, !dbg !5082
  br label %if.end27, !dbg !5082

if.end27:                                         ; preds = %if.then24, %if.end
  ret void, !dbg !5086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_set_termios_ldisc(%struct.tty_struct* %tty, i32 %disc) #0 !dbg !5087 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %disc.addr = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  store i32 %disc, i32* %disc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disc.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5092
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 11, !dbg !5093
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #11, !dbg !5094
  %1 = load i32, i32* %disc.addr, align 4, !dbg !5095
  %conv = trunc i32 %1 to i8, !dbg !5095
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5096
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 15, !dbg !5097
  %c_line = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i32 0, i32 4, !dbg !5098
  store i8 %conv, i8* %c_line, align 8, !dbg !5099
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5100
  %termios_rwsem1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 11, !dbg !5101
  call void @up_write(%struct.rw_semaphore* %termios_rwsem1) #11, !dbg !5102
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5103
  %disc_data = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 36, !dbg !5104
  store i8* null, i8** %disc_data, align 8, !dbg !5105
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5106
  %receive_room = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 29, !dbg !5107
  store i32 0, i32* %receive_room, align 8, !dbg !5108
  ret void, !dbg !5109
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_ldisc_open(%struct.tty_struct* %tty, %struct.tty_ldisc* %ld) #0 !dbg !5110 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ld.addr = alloca %struct.tty_ldisc*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  store %struct.tty_ldisc* %ld, %struct.tty_ldisc** %ld.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5117, metadata !DIExpression()), !dbg !5119
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5119
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 21, !dbg !5119
  %call = call zeroext i1 @test_and_set_bit(i64 11, i64* %flags) #11, !dbg !5119
  %lnot = xor i1 %call, true, !dbg !5119
  %lnot1 = xor i1 %lnot, true, !dbg !5119
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5119
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5119
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5120
  %tobool = icmp ne i32 %1, 0, !dbg !5120
  %lnot2 = xor i1 %tobool, true, !dbg !5120
  %lnot4 = xor i1 %lnot2, true, !dbg !5120
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5120
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5120
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5120
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5119

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5120

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !5122

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !5124

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !5122

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 459, i32 2305, i64 12) #4, !dbg !5126, !srcloc !5128
  br label %do.end9, !dbg !5126

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 231) #4, !dbg !5129, !srcloc !5131
  br label %do.body10, !dbg !5122

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5132

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !5122

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !5122

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5119
  %tobool13 = icmp ne i32 %2, 0, !dbg !5119
  %lnot14 = xor i1 %tobool13, true, !dbg !5119
  %lnot16 = xor i1 %lnot14, true, !dbg !5119
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5119
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5119
  store i64 %conv18, i64* %tmp, align 8, !dbg !5120
  %3 = load i64, i64* %tmp, align 8, !dbg !5119
  %4 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !5134
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %4, i32 0, i32 0, !dbg !5136
  %5 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5136
  %open = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %5, i32 0, i32 4, !dbg !5137
  %6 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %open, align 8, !dbg !5137
  %tobool19 = icmp ne i32 (%struct.tty_struct*)* %6, null, !dbg !5134
  br i1 %tobool19, label %if.then20, label %if.end28, !dbg !5138

if.then20:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5139, metadata !DIExpression()), !dbg !5141
  %7 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !5142
  %ops21 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %7, i32 0, i32 0, !dbg !5143
  %8 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops21, align 8, !dbg !5143
  %open22 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %8, i32 0, i32 4, !dbg !5144
  %9 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %open22, align 8, !dbg !5144
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5145
  %call23 = call i32 %9(%struct.tty_struct* %10) #11, !dbg !5142
  store i32 %call23, i32* %ret, align 4, !dbg !5146
  %11 = load i32, i32* %ret, align 4, !dbg !5147
  %tobool24 = icmp ne i32 %11, 0, !dbg !5147
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !5149

if.then25:                                        ; preds = %if.then20
  %12 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5150
  %flags26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 21, !dbg !5151
  call void @clear_bit(i64 11, i64* %flags26) #11, !dbg !5152
  br label %if.end27, !dbg !5152

if.end27:                                         ; preds = %if.then25, %if.then20
  %13 = load i32, i32* %ret, align 4, !dbg !5153
  store i32 %13, i32* %retval, align 4, !dbg !5154
  br label %return, !dbg !5154

if.end28:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

return:                                           ; preds = %if.end28, %if.end27
  %14 = load i32, i32* %retval, align 4, !dbg !5156
  ret i32 %14, !dbg !5156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_ldisc_put(%struct.tty_ldisc* %ld) #0 !dbg !5157 {
entry:
  %ld.addr = alloca %struct.tty_ldisc*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.tty_ldisc* %ld, %struct.tty_ldisc** %ld.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5160, metadata !DIExpression()), !dbg !5163
  %0 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !5163
  %tobool = icmp ne %struct.tty_ldisc* %0, null, !dbg !5163
  %lnot = xor i1 %tobool, true, !dbg !5163
  %lnot1 = xor i1 %lnot, true, !dbg !5163
  %lnot2 = xor i1 %lnot1, true, !dbg !5163
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5163
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5163
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !5164
  %tobool3 = icmp ne i32 %1, 0, !dbg !5164
  %lnot4 = xor i1 %tobool3, true, !dbg !5164
  %lnot6 = xor i1 %lnot4, true, !dbg !5164
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5164
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5164
  %tobool8 = icmp ne i64 %conv, 0, !dbg !5164
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5163

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5164

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !5166

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !5168

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !5166

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 200, i32 2307, i64 12) #4, !dbg !5170, !srcloc !5172
  br label %do.end11, !dbg !5170

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 229) #4, !dbg !5173, !srcloc !5175
  br label %do.body12, !dbg !5166

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5176

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5166

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5166

if.end:                                           ; preds = %do.end14, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !5163
  %tobool15 = icmp ne i32 %2, 0, !dbg !5163
  %lnot16 = xor i1 %tobool15, true, !dbg !5163
  %lnot18 = xor i1 %lnot16, true, !dbg !5163
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5163
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5163
  store i64 %conv20, i64* %tmp, align 8, !dbg !5164
  %3 = load i64, i64* %tmp, align 8, !dbg !5163
  %tobool21 = icmp ne i64 %3, 0, !dbg !5178
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5179

if.then22:                                        ; preds = %if.end
  br label %return, !dbg !5180

if.end23:                                         ; preds = %if.end
  %4 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !5181
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %4, i32 0, i32 0, !dbg !5182
  %5 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5182
  call void @put_ldops(%struct.tty_ldisc_ops* %5) #11, !dbg !5183
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld.addr, align 8, !dbg !5184
  %7 = bitcast %struct.tty_ldisc* %6 to i8*, !dbg !5184
  call void @kfree(i8* %7) #11, !dbg !5185
  br label %return, !dbg !5186

return:                                           ; preds = %if.end23, %if.then22
  ret void, !dbg !5186
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_ldisc_restore(%struct.tty_struct* %tty, %struct.tty_ldisc* %old) #0 !dbg !5187 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %old.addr = alloca %struct.tty_ldisc*, align 8
  %name = alloca i8*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  store %struct.tty_ldisc* %old, %struct.tty_ldisc** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %old.addr, metadata !5190, metadata !DIExpression()), !dbg !5191
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5192
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %old.addr, align 8, !dbg !5194
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %1, i32 0, i32 0, !dbg !5195
  %2 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5195
  %num = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %2, i32 0, i32 2, !dbg !5196
  %3 = load i32, i32* %num, align 8, !dbg !5196
  %call = call i32 @tty_ldisc_failto(%struct.tty_struct* %0, i32 %3) #11, !dbg !5197
  %cmp = icmp slt i32 %call, 0, !dbg !5198
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5199

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %name, metadata !5200, metadata !DIExpression()), !dbg !5202
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5203
  %call1 = call i8* @tty_name(%struct.tty_struct* %4) #11, !dbg !5204
  store i8* %call1, i8** %name, align 8, !dbg !5202
  %5 = load i8*, i8** %name, align 8, !dbg !5205
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %5) #14, !dbg !5205
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5206
  %call3 = call i32 @tty_ldisc_failto(%struct.tty_struct* %6, i32 0) #11, !dbg !5208
  %cmp4 = icmp slt i32 %call3, 0, !dbg !5209
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !5210

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5211
  %call5 = call i32 @tty_ldisc_failto(%struct.tty_struct* %7, i32 27) #11, !dbg !5212
  %cmp6 = icmp slt i32 %call5, 0, !dbg !5213
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !5214

if.then7:                                         ; preds = %land.lhs.true
  %8 = load i8*, i8** %name, align 8, !dbg !5215
  call void (i8*, ...) @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %8) #15, !dbg !5216
  unreachable, !dbg !5216

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end8, !dbg !5217

if.end8:                                          ; preds = %if.end, %entry
  ret void, !dbg !5218
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @tty_buffer_restart_work(%struct.tty_port*) #2

; Function Attrs: noredzone
declare dso_local void @tty_unlock(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_ldisc_reinit(%struct.tty_struct* %tty, i32 %disc) #0 !dbg !5219 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %disc.addr = alloca i32, align 4
  %ld = alloca %struct.tty_ldisc*, align 8
  %retval1 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5220, metadata !DIExpression()), !dbg !5221
  store i32 %disc, i32* %disc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disc.addr, metadata !5222, metadata !DIExpression()), !dbg !5223
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !5224, metadata !DIExpression()), !dbg !5225
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5226, metadata !DIExpression()), !dbg !5227
  br label %do.body, !dbg !5228

do.body:                                          ; preds = %entry
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5229
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !5229
  br label %do.end, !dbg !5229

do.end:                                           ; preds = %do.body
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5231
  %2 = load i32, i32* %disc.addr, align 4, !dbg !5232
  %call = call %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %1, i32 %2) #11, !dbg !5233
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ld, align 8, !dbg !5234
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5235
  %4 = bitcast %struct.tty_ldisc* %3 to i8*, !dbg !5235
  %call2 = call zeroext i1 @IS_ERR(i8* %4) #11, !dbg !5237
  br i1 %call2, label %if.then, label %if.end17, !dbg !5238

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !5239

do.body3:                                         ; preds = %if.then
  %5 = load i32, i32* %disc.addr, align 4, !dbg !5241
  %cmp = icmp eq i32 %5, 0, !dbg !5241
  %lnot = xor i1 %cmp, true, !dbg !5241
  %lnot4 = xor i1 %lnot, true, !dbg !5241
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5241
  %conv = sext i32 %lnot.ext to i64, !dbg !5241
  %tobool = icmp ne i64 %conv, 0, !dbg !5241
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5244

if.then5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !5241

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !5245

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5247

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !5245

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 681, i32 0, i64 12) #4, !dbg !5249, !srcloc !5251
  br label %do.end10, !dbg !5249

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !5245

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 233) #4, !dbg !5252, !srcloc !5255
  unreachable, !dbg !5256

do.end12:                                         ; No predecessors!
  br label %do.end13, !dbg !5245

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !5245

if.end:                                           ; preds = %do.end13, %do.body3
  br label %do.end14, !dbg !5244

do.end14:                                         ; preds = %if.end
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5257
  %7 = bitcast %struct.tty_ldisc* %6 to i8*, !dbg !5257
  %call15 = call i64 @PTR_ERR(i8* %7) #11, !dbg !5258
  %conv16 = trunc i64 %call15 to i32, !dbg !5258
  store i32 %conv16, i32* %retval, align 4, !dbg !5259
  br label %return, !dbg !5259

if.end17:                                         ; preds = %do.end
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5260
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 7, !dbg !5262
  %9 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !5262
  %tobool18 = icmp ne %struct.tty_ldisc* %9, null, !dbg !5260
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !5263

if.then19:                                        ; preds = %if.end17
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5264
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5266
  %ldisc20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 7, !dbg !5267
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc20, align 8, !dbg !5267
  call void @tty_ldisc_close(%struct.tty_struct* %10, %struct.tty_ldisc* %12) #11, !dbg !5268
  %13 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5269
  %ldisc21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 7, !dbg !5270
  %14 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc21, align 8, !dbg !5270
  call void @tty_ldisc_put(%struct.tty_ldisc* %14) #11, !dbg !5271
  br label %if.end22, !dbg !5272

if.end22:                                         ; preds = %if.then19, %if.end17
  %15 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5273
  %16 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5274
  %ldisc23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 7, !dbg !5275
  store %struct.tty_ldisc* %15, %struct.tty_ldisc** %ldisc23, align 8, !dbg !5276
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5277
  %18 = load i32, i32* %disc.addr, align 4, !dbg !5278
  call void @tty_set_termios_ldisc(%struct.tty_struct* %17, i32 %18) #11, !dbg !5279
  %19 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5280
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5281
  %ldisc24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 7, !dbg !5282
  %21 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc24, align 8, !dbg !5282
  %call25 = call i32 @tty_ldisc_open(%struct.tty_struct* %19, %struct.tty_ldisc* %21) #11, !dbg !5283
  store i32 %call25, i32* %retval1, align 4, !dbg !5284
  %22 = load i32, i32* %retval1, align 4, !dbg !5285
  %tobool26 = icmp ne i32 %22, 0, !dbg !5285
  br i1 %tobool26, label %if.then27, label %if.end30, !dbg !5287

if.then27:                                        ; preds = %if.end22
  %23 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5288
  %ldisc28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 7, !dbg !5290
  %24 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc28, align 8, !dbg !5290
  call void @tty_ldisc_put(%struct.tty_ldisc* %24) #11, !dbg !5291
  %25 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5292
  %ldisc29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 7, !dbg !5293
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %ldisc29, align 8, !dbg !5294
  br label %if.end30, !dbg !5295

if.end30:                                         ; preds = %if.then27, %if.end22
  %26 = load i32, i32* %retval1, align 4, !dbg !5296
  store i32 %26, i32* %retval, align 4, !dbg !5297
  br label %return, !dbg !5297

return:                                           ; preds = %if.end30, %do.end14
  %27 = load i32, i32* %retval, align 4, !dbg !5298
  ret i32 %27, !dbg !5298
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_ldisc_hangup(%struct.tty_struct* %tty, i1 zeroext %reinit) #0 !dbg !5299 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %reinit.addr = alloca i8, align 1
  %ld = alloca %struct.tty_ldisc*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5302, metadata !DIExpression()), !dbg !5303
  %frombool = zext i1 %reinit to i8
  store i8 %frombool, i8* %reinit.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reinit.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !5306, metadata !DIExpression()), !dbg !5307
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5308
  %call = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %0) #11, !dbg !5309
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ld, align 8, !dbg !5310
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5311
  %cmp = icmp ne %struct.tty_ldisc* %1, null, !dbg !5313
  br i1 %cmp, label %if.then, label %if.end18, !dbg !5314

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5315
  %ops = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %2, i32 0, i32 0, !dbg !5318
  %3 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops, align 8, !dbg !5318
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %3, i32 0, i32 6, !dbg !5319
  %4 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer, align 8, !dbg !5319
  %tobool = icmp ne void (%struct.tty_struct*)* %4, null, !dbg !5315
  br i1 %tobool, label %if.then1, label %if.end, !dbg !5320

if.then1:                                         ; preds = %if.then
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5321
  %ops2 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %5, i32 0, i32 0, !dbg !5322
  %6 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops2, align 8, !dbg !5322
  %flush_buffer3 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %6, i32 0, i32 6, !dbg !5323
  %7 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %flush_buffer3, align 8, !dbg !5323
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5324
  call void %7(%struct.tty_struct* %8) #11, !dbg !5321
  br label %if.end, !dbg !5321

if.end:                                           ; preds = %if.then1, %if.then
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5325
  call void @tty_driver_flush_buffer(%struct.tty_struct* %9) #11, !dbg !5326
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5327
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 21, !dbg !5329
  %call4 = call zeroext i1 @test_bit(i64 5, i64* %flags) #11, !dbg !5330
  br i1 %call4, label %land.lhs.true, label %if.end10, !dbg !5331

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5332
  %ops5 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %11, i32 0, i32 0, !dbg !5333
  %12 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops5, align 8, !dbg !5333
  %write_wakeup = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %12, i32 0, i32 15, !dbg !5334
  %13 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %write_wakeup, align 8, !dbg !5334
  %tobool6 = icmp ne void (%struct.tty_struct*)* %13, null, !dbg !5332
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !5335

if.then7:                                         ; preds = %land.lhs.true
  %14 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5336
  %ops8 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %14, i32 0, i32 0, !dbg !5337
  %15 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops8, align 8, !dbg !5337
  %write_wakeup9 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %15, i32 0, i32 15, !dbg !5338
  %16 = load void (%struct.tty_struct*)*, void (%struct.tty_struct*)** %write_wakeup9, align 8, !dbg !5338
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5339
  call void %16(%struct.tty_struct* %17) #11, !dbg !5336
  br label %if.end10, !dbg !5336

if.end10:                                         ; preds = %if.then7, %land.lhs.true, %if.end
  %18 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5340
  %ops11 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %18, i32 0, i32 0, !dbg !5342
  %19 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops11, align 8, !dbg !5342
  %hangup = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %19, i32 0, i32 13, !dbg !5343
  %20 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %hangup, align 8, !dbg !5343
  %tobool12 = icmp ne i32 (%struct.tty_struct*)* %20, null, !dbg !5340
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !5344

if.then13:                                        ; preds = %if.end10
  %21 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5345
  %ops14 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %21, i32 0, i32 0, !dbg !5346
  %22 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ops14, align 8, !dbg !5346
  %hangup15 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %22, i32 0, i32 13, !dbg !5347
  %23 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %hangup15, align 8, !dbg !5347
  %24 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5348
  %call16 = call i32 %23(%struct.tty_struct* %24) #11, !dbg !5345
  br label %if.end17, !dbg !5345

if.end17:                                         ; preds = %if.then13, %if.end10
  %25 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5349
  call void @tty_ldisc_deref(%struct.tty_ldisc* %25) #11, !dbg !5350
  br label %if.end18, !dbg !5351

if.end18:                                         ; preds = %if.end17, %entry
  %26 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5352
  %write_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 33, !dbg !5352
  call void @__wake_up(%struct.wait_queue_head* %write_wait, i32 1, i32 1, i8* inttoptr (i64 4 to i8*)) #11, !dbg !5352
  %27 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5353
  %read_wait = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 34, !dbg !5353
  call void @__wake_up(%struct.wait_queue_head* %read_wait, i32 1, i32 1, i8* inttoptr (i64 1 to i8*)) #11, !dbg !5353
  %28 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5354
  %call19 = call i32 @tty_ldisc_lock(%struct.tty_struct* %28, i64 9223372036854775807) #11, !dbg !5355
  %29 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5356
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 3, !dbg !5358
  %30 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8, !dbg !5358
  %flags20 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %30, i32 0, i32 13, !dbg !5359
  %31 = load i64, i64* %flags20, align 8, !dbg !5359
  %and = and i64 %31, 2, !dbg !5360
  %tobool21 = icmp ne i64 %and, 0, !dbg !5360
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5361

if.then22:                                        ; preds = %if.end18
  %32 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5362
  call void @tty_reset_termios(%struct.tty_struct* %32) #11, !dbg !5363
  br label %if.end23, !dbg !5363

if.end23:                                         ; preds = %if.then22, %if.end18
  %33 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5364
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 7, !dbg !5366
  %34 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !5366
  %tobool24 = icmp ne %struct.tty_ldisc* %34, null, !dbg !5364
  br i1 %tobool24, label %if.then25, label %if.end63, !dbg !5367

if.then25:                                        ; preds = %if.end23
  %35 = load i8, i8* %reinit.addr, align 1, !dbg !5368
  %tobool26 = trunc i8 %35 to i1, !dbg !5368
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !5371

if.then27:                                        ; preds = %if.then25
  %36 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5372
  %37 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5375
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 15, !dbg !5376
  %c_line = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios, i32 0, i32 4, !dbg !5377
  %38 = load i8, i8* %c_line, align 8, !dbg !5377
  %conv = zext i8 %38 to i32, !dbg !5375
  %call28 = call i32 @tty_ldisc_reinit(%struct.tty_struct* %36, i32 %conv) #11, !dbg !5378
  %cmp29 = icmp slt i32 %call28, 0, !dbg !5379
  br i1 %cmp29, label %land.lhs.true31, label %if.end61, !dbg !5380

land.lhs.true31:                                  ; preds = %if.then27
  %39 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5381
  %call32 = call i32 @tty_ldisc_reinit(%struct.tty_struct* %39, i32 0) #11, !dbg !5382
  %cmp33 = icmp slt i32 %call32, 0, !dbg !5383
  br i1 %cmp33, label %if.then35, label %if.end61, !dbg !5384

if.then35:                                        ; preds = %land.lhs.true31
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5385, metadata !DIExpression()), !dbg !5387
  %40 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5387
  %call36 = call i32 @tty_ldisc_reinit(%struct.tty_struct* %40, i32 27) #11, !dbg !5387
  %cmp37 = icmp slt i32 %call36, 0, !dbg !5387
  %lnot = xor i1 %cmp37, true, !dbg !5387
  %lnot39 = xor i1 %lnot, true, !dbg !5387
  %lnot.ext = zext i1 %lnot39 to i32, !dbg !5387
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5387
  %41 = load i32, i32* %__ret_warn_on, align 4, !dbg !5388
  %tobool40 = icmp ne i32 %41, 0, !dbg !5388
  %lnot41 = xor i1 %tobool40, true, !dbg !5388
  %lnot43 = xor i1 %lnot41, true, !dbg !5388
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !5388
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !5388
  %tobool46 = icmp ne i64 %conv45, 0, !dbg !5388
  br i1 %tobool46, label %if.then47, label %if.end54, !dbg !5387

if.then47:                                        ; preds = %if.then35
  br label %do.body, !dbg !5388

do.body:                                          ; preds = %if.then47
  br label %do.body48, !dbg !5390

do.body48:                                        ; preds = %do.body
  br label %do.end, !dbg !5392

do.end:                                           ; preds = %do.body48
  br label %do.body49, !dbg !5390

do.body49:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 753, i32 2305, i64 12) #4, !dbg !5394, !srcloc !5396
  br label %do.end50, !dbg !5394

do.end50:                                         ; preds = %do.body49
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 234) #4, !dbg !5397, !srcloc !5399
  br label %do.body51, !dbg !5390

do.body51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !5400

do.end52:                                         ; preds = %do.body51
  br label %do.end53, !dbg !5390

do.end53:                                         ; preds = %do.end52
  br label %if.end54, !dbg !5390

if.end54:                                         ; preds = %do.end53, %if.then35
  %42 = load i32, i32* %__ret_warn_on, align 4, !dbg !5387
  %tobool55 = icmp ne i32 %42, 0, !dbg !5387
  %lnot56 = xor i1 %tobool55, true, !dbg !5387
  %lnot58 = xor i1 %lnot56, true, !dbg !5387
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !5387
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !5387
  store i64 %conv60, i64* %tmp, align 8, !dbg !5388
  %43 = load i64, i64* %tmp, align 8, !dbg !5387
  br label %if.end61, !dbg !5402

if.end61:                                         ; preds = %if.end54, %land.lhs.true31, %if.then27
  br label %if.end62, !dbg !5403

if.else:                                          ; preds = %if.then25
  %44 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5404
  call void @tty_ldisc_kill(%struct.tty_struct* %44) #11, !dbg !5405
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end61
  br label %if.end63, !dbg !5406

if.end63:                                         ; preds = %if.end62, %if.end23
  %45 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5407
  call void @tty_ldisc_unlock(%struct.tty_struct* %45) #11, !dbg !5408
  ret void, !dbg !5409
}

; Function Attrs: noredzone
declare dso_local void @tty_driver_flush_buffer(%struct.tty_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_reset_termios(%struct.tty_struct* %tty) #0 !dbg !5410 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5411, metadata !DIExpression()), !dbg !5412
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5413
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 11, !dbg !5414
  call void @down_write(%struct.rw_semaphore* %termios_rwsem) #11, !dbg !5415
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5416
  %termios = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 15, !dbg !5417
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5418
  %driver = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 3, !dbg !5419
  %3 = load %struct.tty_driver*, %struct.tty_driver** %driver, align 8, !dbg !5419
  %init_termios = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %3, i32 0, i32 12, !dbg !5420
  %4 = bitcast %struct.ktermios* %termios to i8*, !dbg !5420
  %5 = bitcast %struct.ktermios* %init_termios to i8*, !dbg !5420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 4 %5, i64 44, i1 false), !dbg !5420
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5421
  %termios1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 15, !dbg !5422
  %call = call i32 @tty_termios_input_baud_rate(%struct.ktermios* %termios1) #11, !dbg !5423
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5424
  %termios2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 15, !dbg !5425
  %c_ispeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios2, i32 0, i32 6, !dbg !5426
  store i32 %call, i32* %c_ispeed, align 4, !dbg !5427
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5428
  %termios3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 15, !dbg !5429
  %call4 = call i32 @tty_termios_baud_rate(%struct.ktermios* %termios3) #11, !dbg !5430
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5431
  %termios5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 15, !dbg !5432
  %c_ospeed = getelementptr inbounds %struct.ktermios, %struct.ktermios* %termios5, i32 0, i32 7, !dbg !5433
  store i32 %call4, i32* %c_ospeed, align 8, !dbg !5434
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5435
  %termios_rwsem6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 11, !dbg !5436
  call void @up_write(%struct.rw_semaphore* %termios_rwsem6) #11, !dbg !5437
  ret void, !dbg !5438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_ldisc_kill(%struct.tty_struct* %tty) #0 !dbg !5439 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  br label %do.body, !dbg !5442

do.body:                                          ; preds = %entry
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5443
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !5443
  br label %do.end, !dbg !5443

do.end:                                           ; preds = %do.body
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5445
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 7, !dbg !5447
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !5447
  %tobool = icmp ne %struct.tty_ldisc* %2, null, !dbg !5445
  br i1 %tobool, label %if.end, label %if.then, !dbg !5448

if.then:                                          ; preds = %do.end
  br label %return, !dbg !5449

if.end:                                           ; preds = %do.end
  %3 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5450
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5451
  %ldisc1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 7, !dbg !5452
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc1, align 8, !dbg !5452
  call void @tty_ldisc_close(%struct.tty_struct* %3, %struct.tty_ldisc* %5) #11, !dbg !5453
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5454
  %ldisc2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 7, !dbg !5455
  %7 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc2, align 8, !dbg !5455
  call void @tty_ldisc_put(%struct.tty_ldisc* %7) #11, !dbg !5456
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5457
  %ldisc3 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 7, !dbg !5458
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %ldisc3, align 8, !dbg !5459
  br label %return, !dbg !5460

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5460
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_ldisc_setup(%struct.tty_struct* %tty, %struct.tty_struct* %o_tty) #0 !dbg !5461 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %o_tty.addr = alloca %struct.tty_struct*, align 8
  %retval1 = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5464, metadata !DIExpression()), !dbg !5465
  store %struct.tty_struct* %o_tty, %struct.tty_struct** %o_tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %o_tty.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5468, metadata !DIExpression()), !dbg !5469
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5470
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5471
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %1, i32 0, i32 7, !dbg !5472
  %2 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !5472
  %call = call i32 @tty_ldisc_open(%struct.tty_struct* %0, %struct.tty_ldisc* %2) #11, !dbg !5473
  store i32 %call, i32* %retval1, align 4, !dbg !5469
  %3 = load i32, i32* %retval1, align 4, !dbg !5474
  %tobool = icmp ne i32 %3, 0, !dbg !5474
  br i1 %tobool, label %if.then, label %if.end, !dbg !5476

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %retval1, align 4, !dbg !5477
  store i32 %4, i32* %retval, align 4, !dbg !5478
  br label %return, !dbg !5478

if.end:                                           ; preds = %entry
  %5 = load %struct.tty_struct*, %struct.tty_struct** %o_tty.addr, align 8, !dbg !5479
  %tobool2 = icmp ne %struct.tty_struct* %5, null, !dbg !5479
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !5481

if.then3:                                         ; preds = %if.end
  %6 = load %struct.tty_struct*, %struct.tty_struct** %o_tty.addr, align 8, !dbg !5482
  %7 = load %struct.tty_struct*, %struct.tty_struct** %o_tty.addr, align 8, !dbg !5484
  %ldisc4 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 7, !dbg !5485
  %8 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc4, align 8, !dbg !5485
  %call5 = call i32 @tty_ldisc_open(%struct.tty_struct* %6, %struct.tty_ldisc* %8) #11, !dbg !5486
  store i32 %call5, i32* %retval1, align 4, !dbg !5487
  %9 = load i32, i32* %retval1, align 4, !dbg !5488
  %tobool6 = icmp ne i32 %9, 0, !dbg !5488
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5490

if.then7:                                         ; preds = %if.then3
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5491
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5493
  %ldisc8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 7, !dbg !5494
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc8, align 8, !dbg !5494
  call void @tty_ldisc_close(%struct.tty_struct* %10, %struct.tty_ldisc* %12) #11, !dbg !5495
  %13 = load i32, i32* %retval1, align 4, !dbg !5496
  store i32 %13, i32* %retval, align 4, !dbg !5497
  br label %return, !dbg !5497

if.end9:                                          ; preds = %if.then3
  br label %if.end10, !dbg !5498

if.end10:                                         ; preds = %if.end9, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5499
  br label %return, !dbg !5499

return:                                           ; preds = %if.end10, %if.then7, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !5500
  ret i32 %14, !dbg !5500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_ldisc_release(%struct.tty_struct* %tty) #0 !dbg !5501 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %o_tty = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %o_tty, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5506
  %link = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 31, !dbg !5507
  %1 = load %struct.tty_struct*, %struct.tty_struct** %link, align 8, !dbg !5507
  store %struct.tty_struct* %1, %struct.tty_struct** %o_tty, align 8, !dbg !5505
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5508
  %3 = load %struct.tty_struct*, %struct.tty_struct** %o_tty, align 8, !dbg !5509
  call void @tty_ldisc_lock_pair(%struct.tty_struct* %2, %struct.tty_struct* %3) #11, !dbg !5510
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5511
  call void @tty_ldisc_kill(%struct.tty_struct* %4) #11, !dbg !5512
  %5 = load %struct.tty_struct*, %struct.tty_struct** %o_tty, align 8, !dbg !5513
  %tobool = icmp ne %struct.tty_struct* %5, null, !dbg !5513
  br i1 %tobool, label %if.then, label %if.end, !dbg !5515

if.then:                                          ; preds = %entry
  %6 = load %struct.tty_struct*, %struct.tty_struct** %o_tty, align 8, !dbg !5516
  call void @tty_ldisc_kill(%struct.tty_struct* %6) #11, !dbg !5517
  br label %if.end, !dbg !5517

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5518
  %8 = load %struct.tty_struct*, %struct.tty_struct** %o_tty, align 8, !dbg !5519
  call void @tty_ldisc_unlock_pair(%struct.tty_struct* %7, %struct.tty_struct* %8) #11, !dbg !5520
  ret void, !dbg !5521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_ldisc_lock_pair(%struct.tty_struct* %tty, %struct.tty_struct* %tty2) #0 !dbg !5522 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %tty2.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5525, metadata !DIExpression()), !dbg !5526
  store %struct.tty_struct* %tty2, %struct.tty_struct** %tty2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty2.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5529
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !5530
  %call = call i32 @tty_ldisc_lock_pair_timeout(%struct.tty_struct* %0, %struct.tty_struct* %1, i64 9223372036854775807) #11, !dbg !5531
  ret void, !dbg !5532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tty_ldisc_unlock_pair(%struct.tty_struct* %tty, %struct.tty_struct* %tty2) #0 !dbg !5533 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %tty2.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  store %struct.tty_struct* %tty2, %struct.tty_struct** %tty2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty2.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5538
  call void @__tty_ldisc_unlock(%struct.tty_struct* %0) #11, !dbg !5539
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !5540
  %tobool = icmp ne %struct.tty_struct* %1, null, !dbg !5540
  br i1 %tobool, label %if.then, label %if.end, !dbg !5542

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !5543
  call void @__tty_ldisc_unlock(%struct.tty_struct* %2) #11, !dbg !5544
  br label %if.end, !dbg !5544

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tty_ldisc_init(%struct.tty_struct* %tty) #0 !dbg !5546 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ld = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %ld, metadata !5549, metadata !DIExpression()), !dbg !5550
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5551
  %call = call %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %0, i32 0) #11, !dbg !5552
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %ld, align 8, !dbg !5550
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5553
  %2 = bitcast %struct.tty_ldisc* %1 to i8*, !dbg !5553
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #11, !dbg !5555
  br i1 %call1, label %if.then, label %if.end, !dbg !5556

if.then:                                          ; preds = %entry
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5557
  %4 = bitcast %struct.tty_ldisc* %3 to i8*, !dbg !5557
  %call2 = call i64 @PTR_ERR(i8* %4) #11, !dbg !5558
  %conv = trunc i64 %call2 to i32, !dbg !5558
  store i32 %conv, i32* %retval, align 4, !dbg !5559
  br label %return, !dbg !5559

if.end:                                           ; preds = %entry
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ld, align 8, !dbg !5560
  %6 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5561
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 7, !dbg !5562
  store %struct.tty_ldisc* %5, %struct.tty_ldisc** %ldisc, align 8, !dbg !5563
  store i32 0, i32* %retval, align 4, !dbg !5564
  br label %return, !dbg !5564

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5565
  ret i32 %7, !dbg !5565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_ldisc_deinit(%struct.tty_struct* %tty) #0 !dbg !5566 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5567, metadata !DIExpression()), !dbg !5568
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5569
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 7, !dbg !5571
  %1 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc, align 8, !dbg !5571
  %tobool = icmp ne %struct.tty_ldisc* %1, null, !dbg !5569
  br i1 %tobool, label %if.then, label %if.end, !dbg !5572

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5573
  %ldisc1 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 7, !dbg !5574
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %ldisc1, align 8, !dbg !5574
  call void @tty_ldisc_put(%struct.tty_ldisc* %3) #11, !dbg !5575
  br label %if.end, !dbg !5575

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5576
  %ldisc2 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 7, !dbg !5577
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %ldisc2, align 8, !dbg !5578
  ret void, !dbg !5579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @tty_sysctl_init() #0 !dbg !5580 {
entry:
  %call = call %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* getelementptr inbounds ([2 x %struct.ctl_table], [2 x %struct.ctl_table]* @tty_root_table, i64 0, i64 0)) #11, !dbg !5581
  ret void, !dbg !5582
}

; Function Attrs: noredzone
declare dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5583 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5584, metadata !DIExpression()), !dbg !5586
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5587, metadata !DIExpression()), !dbg !5586
  %0 = load i64, i64* %__edi, align 8, !dbg !5586
  store i64 %0, i64* %__edi, align 8, !dbg !5586
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5588, metadata !DIExpression()), !dbg !5586
  %1 = load i64, i64* %__esi, align 8, !dbg !5586
  store i64 %1, i64* %__esi, align 8, !dbg !5586
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5589, metadata !DIExpression()), !dbg !5586
  %2 = load i64, i64* %__edx, align 8, !dbg !5586
  store i64 %2, i64* %__edx, align 8, !dbg !5586
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5590, metadata !DIExpression()), !dbg !5586
  %3 = load i64, i64* %__ecx, align 8, !dbg !5586
  store i64 %3, i64* %__ecx, align 8, !dbg !5586
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5591, metadata !DIExpression()), !dbg !5586
  %4 = load i64, i64* %__eax, align 8, !dbg !5586
  store i64 %4, i64* %__eax, align 8, !dbg !5586
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5586
  %6 = call i64 @llvm.read_register.i64(metadata !4064), !dbg !5592
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #4, !dbg !5592, !srcloc !5595
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5592
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5592
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5592
  call void @llvm.write_register.i64(metadata !4064, i64 %asmresult1), !dbg !5592
  %8 = load i64, i64* %__eax, align 8, !dbg !5592
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5596, metadata !DIExpression()), !dbg !5598
  store i64 -1, i64* %__mask, align 8, !dbg !5598
  %9 = load i64, i64* %__mask, align 8, !dbg !5598
  store i64 %9, i64* %tmp, align 8, !dbg !5598
  %10 = load i64, i64* %tmp, align 8, !dbg !5598
  %and = and i64 %8, %10, !dbg !5592
  store i64 %and, i64* %__ret, align 8, !dbg !5592
  %11 = load i64, i64* %__ret, align 8, !dbg !5586
  store i64 %11, i64* %tmp2, align 8, !dbg !5599
  %12 = load i64, i64* %tmp2, align 8, !dbg !5586
  ret i64 %12, !dbg !5600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5601 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5602, metadata !DIExpression()), !dbg !5604
  %0 = load i64, i64* %__edi, align 8, !dbg !5604
  store i64 %0, i64* %__edi, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5605, metadata !DIExpression()), !dbg !5604
  %1 = load i64, i64* %__esi, align 8, !dbg !5604
  store i64 %1, i64* %__esi, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5606, metadata !DIExpression()), !dbg !5604
  %2 = load i64, i64* %__edx, align 8, !dbg !5604
  store i64 %2, i64* %__edx, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5607, metadata !DIExpression()), !dbg !5604
  %3 = load i64, i64* %__ecx, align 8, !dbg !5604
  store i64 %3, i64* %__ecx, align 8, !dbg !5604
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5608, metadata !DIExpression()), !dbg !5604
  %4 = load i64, i64* %__eax, align 8, !dbg !5604
  store i64 %4, i64* %__eax, align 8, !dbg !5604
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5604
  %6 = call i64 @llvm.read_register.i64(metadata !4064), !dbg !5604
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #4, !dbg !5604, !srcloc !5609
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5604
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5604
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5604
  call void @llvm.write_register.i64(metadata !4064, i64 %asmresult1), !dbg !5604
  ret void, !dbg !5610
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.tty_ldisc_ops* @get_ldops(i32 %disc) #0 !dbg !5611 {
entry:
  %disc.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %ldops = alloca %struct.tty_ldisc_ops*, align 8
  %ret = alloca %struct.tty_ldisc_ops*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy22 = alloca i64, align 8
  %__dummy223 = alloca i64, align 8
  %tmp26 = alloca i32, align 4
  %__dummy30 = alloca i64, align 8
  %__dummy231 = alloca i64, align 8
  %tmp34 = alloca i32, align 4
  store i32 %disc, i32* %disc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %disc.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5616, metadata !DIExpression()), !dbg !5617
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc_ops** %ldops, metadata !5618, metadata !DIExpression()), !dbg !5619
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc_ops** %ret, metadata !5620, metadata !DIExpression()), !dbg !5621
  br label %do.body, !dbg !5622

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5623, metadata !DIExpression()), !dbg !5626
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5627, metadata !DIExpression()), !dbg !5626
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5626
  %conv = zext i1 %cmp to i32, !dbg !5626
  store i32 1, i32* %tmp, align 4, !dbg !5626
  %0 = load i32, i32* %tmp, align 4, !dbg !5626
  br label %do.body1, !dbg !5628

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !5629

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5631

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !5633, metadata !DIExpression()), !dbg !5636
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !5637, metadata !DIExpression()), !dbg !5636
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !5636
  %conv7 = zext i1 %cmp6 to i32, !dbg !5636
  store i32 1, i32* %tmp8, align 4, !dbg !5636
  %1 = load i32, i32* %tmp8, align 4, !dbg !5636
  %call = call i64 @arch_local_irq_save() #11, !dbg !5638
  store i64 %call, i64* %flags, align 8, !dbg !5638
  br label %do.end, !dbg !5638

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !5631

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !5629

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5639, !srcloc !5641
  br label %do.body11, !dbg !5639

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5642

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5639

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !5629

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !5628

do.end15:                                         ; preds = %do.end14
  %call16 = call i8* @ERR_PTR(i64 -22) #11, !dbg !5644
  %2 = bitcast i8* %call16 to %struct.tty_ldisc_ops*, !dbg !5644
  store %struct.tty_ldisc_ops* %2, %struct.tty_ldisc_ops** %ret, align 8, !dbg !5645
  %3 = load i32, i32* %disc.addr, align 4, !dbg !5646
  %idxprom = sext i32 %3 to i64, !dbg !5647
  %arrayidx = getelementptr [30 x %struct.tty_ldisc_ops*], [30 x %struct.tty_ldisc_ops*]* @tty_ldiscs, i64 0, i64 %idxprom, !dbg !5647
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %arrayidx, align 8, !dbg !5647
  store %struct.tty_ldisc_ops* %4, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !5648
  %5 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !5649
  %tobool = icmp ne %struct.tty_ldisc_ops* %5, null, !dbg !5649
  br i1 %tobool, label %if.then, label %if.end20, !dbg !5651

if.then:                                          ; preds = %do.end15
  %call17 = call i8* @ERR_PTR(i64 -11) #11, !dbg !5652
  %6 = bitcast i8* %call17 to %struct.tty_ldisc_ops*, !dbg !5652
  store %struct.tty_ldisc_ops* %6, %struct.tty_ldisc_ops** %ret, align 8, !dbg !5654
  %7 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !5655
  %owner = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %7, i32 0, i32 18, !dbg !5657
  %8 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5657
  %call18 = call zeroext i1 @try_module_get(%struct.module* %8) #11, !dbg !5658
  br i1 %call18, label %if.then19, label %if.end, !dbg !5659

if.then19:                                        ; preds = %if.then
  %9 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !5660
  %refcount = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %9, i32 0, i32 19, !dbg !5662
  %10 = load i32, i32* %refcount, align 8, !dbg !5663
  %inc = add i32 %10, 1, !dbg !5663
  store i32 %inc, i32* %refcount, align 8, !dbg !5663
  %11 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops, align 8, !dbg !5664
  store %struct.tty_ldisc_ops* %11, %struct.tty_ldisc_ops** %ret, align 8, !dbg !5665
  br label %if.end, !dbg !5666

if.end:                                           ; preds = %if.then19, %if.then
  br label %if.end20, !dbg !5667

if.end20:                                         ; preds = %if.end, %do.end15
  br label %do.body21, !dbg !5668

do.body21:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i64* %__dummy22, metadata !5669, metadata !DIExpression()), !dbg !5672
  call void @llvm.dbg.declare(metadata i64* %__dummy223, metadata !5673, metadata !DIExpression()), !dbg !5672
  %cmp24 = icmp eq i64* %__dummy22, %__dummy223, !dbg !5672
  %conv25 = zext i1 %cmp24 to i32, !dbg !5672
  store i32 1, i32* %tmp26, align 4, !dbg !5672
  %12 = load i32, i32* %tmp26, align 4, !dbg !5672
  br label %do.body27, !dbg !5674

do.body27:                                        ; preds = %do.body21
  br label %do.body28, !dbg !5675

do.body28:                                        ; preds = %do.body27
  br label %do.body29, !dbg !5677

do.body29:                                        ; preds = %do.body28
  call void @llvm.dbg.declare(metadata i64* %__dummy30, metadata !5679, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.declare(metadata i64* %__dummy231, metadata !5683, metadata !DIExpression()), !dbg !5682
  %cmp32 = icmp eq i64* %__dummy30, %__dummy231, !dbg !5682
  %conv33 = zext i1 %cmp32 to i32, !dbg !5682
  store i32 1, i32* %tmp34, align 4, !dbg !5682
  %13 = load i32, i32* %tmp34, align 4, !dbg !5682
  %14 = load i64, i64* %flags, align 8, !dbg !5684
  call void @arch_local_irq_restore(i64 %14) #11, !dbg !5684
  br label %do.end35, !dbg !5684

do.end35:                                         ; preds = %do.body29
  br label %do.end36, !dbg !5677

do.end36:                                         ; preds = %do.end35
  br label %do.body37, !dbg !5675

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5685, !srcloc !5687
  br label %do.body38, !dbg !5685

do.body38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !5688

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !5685

do.end40:                                         ; preds = %do.end39
  br label %do.end41, !dbg !5675

do.end41:                                         ; preds = %do.end40
  br label %do.end42, !dbg !5674

do.end42:                                         ; preds = %do.end41
  %15 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ret, align 8, !dbg !5690
  ret %struct.tty_ldisc_ops* %15, !dbg !5691
}

; Function Attrs: noredzone
declare dso_local void @seq_printf(%struct.seq_file*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @put_ldops(%struct.tty_ldisc_ops* %ldops) #0 !dbg !5692 {
entry:
  %ldops.addr = alloca %struct.tty_ldisc_ops*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy17 = alloca i64, align 8
  %__dummy218 = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  %__dummy26 = alloca i64, align 8
  %__dummy227 = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  store %struct.tty_ldisc_ops* %ldops, %struct.tty_ldisc_ops** %ldops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc_ops** %ldops.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5697, metadata !DIExpression()), !dbg !5698
  br label %do.body, !dbg !5699

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5700, metadata !DIExpression()), !dbg !5703
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5704, metadata !DIExpression()), !dbg !5703
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5703
  %conv = zext i1 %cmp to i32, !dbg !5703
  store i32 1, i32* %tmp, align 4, !dbg !5703
  %0 = load i32, i32* %tmp, align 4, !dbg !5703
  br label %do.body1, !dbg !5705

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !5706

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5708

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !5710, metadata !DIExpression()), !dbg !5713
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !5714, metadata !DIExpression()), !dbg !5713
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !5713
  %conv7 = zext i1 %cmp6 to i32, !dbg !5713
  store i32 1, i32* %tmp8, align 4, !dbg !5713
  %1 = load i32, i32* %tmp8, align 4, !dbg !5713
  %call = call i64 @arch_local_irq_save() #11, !dbg !5715
  store i64 %call, i64* %flags, align 8, !dbg !5715
  br label %do.end, !dbg !5715

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !5708

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !5706

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5716, !srcloc !5718
  br label %do.body11, !dbg !5716

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5719

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5716

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !5706

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !5705

do.end15:                                         ; preds = %do.end14
  %2 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops.addr, align 8, !dbg !5721
  %refcount = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %2, i32 0, i32 19, !dbg !5722
  %3 = load i32, i32* %refcount, align 8, !dbg !5723
  %dec = add i32 %3, -1, !dbg !5723
  store i32 %dec, i32* %refcount, align 8, !dbg !5723
  %4 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %ldops.addr, align 8, !dbg !5724
  %owner = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %4, i32 0, i32 18, !dbg !5725
  %5 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5725
  call void @module_put(%struct.module* %5) #11, !dbg !5726
  br label %do.body16, !dbg !5727

do.body16:                                        ; preds = %do.end15
  call void @llvm.dbg.declare(metadata i64* %__dummy17, metadata !5728, metadata !DIExpression()), !dbg !5731
  call void @llvm.dbg.declare(metadata i64* %__dummy218, metadata !5732, metadata !DIExpression()), !dbg !5731
  %cmp19 = icmp eq i64* %__dummy17, %__dummy218, !dbg !5731
  %conv20 = zext i1 %cmp19 to i32, !dbg !5731
  store i32 1, i32* %tmp21, align 4, !dbg !5731
  %6 = load i32, i32* %tmp21, align 4, !dbg !5731
  br label %do.body22, !dbg !5733

do.body22:                                        ; preds = %do.body16
  br label %do.body23, !dbg !5734

do.body23:                                        ; preds = %do.body22
  br label %do.body24, !dbg !5736

do.body24:                                        ; preds = %do.body23
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5738, metadata !DIExpression()), !dbg !5741
  call void @llvm.dbg.declare(metadata i64* %__dummy227, metadata !5742, metadata !DIExpression()), !dbg !5741
  %cmp28 = icmp eq i64* %__dummy26, %__dummy227, !dbg !5741
  %conv29 = zext i1 %cmp28 to i32, !dbg !5741
  store i32 1, i32* %tmp30, align 4, !dbg !5741
  %7 = load i32, i32* %tmp30, align 4, !dbg !5741
  %8 = load i64, i64* %flags, align 8, !dbg !5743
  call void @arch_local_irq_restore(i64 %8) #11, !dbg !5743
  br label %do.end31, !dbg !5743

do.end31:                                         ; preds = %do.body24
  br label %do.end32, !dbg !5736

do.end32:                                         ; preds = %do.end31
  br label %do.body33, !dbg !5734

do.body33:                                        ; preds = %do.end32
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !dbg !5744, !srcloc !5746
  br label %do.body34, !dbg !5744

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5747

do.end35:                                         ; preds = %do.body34
  br label %do.end36, !dbg !5744

do.end36:                                         ; preds = %do.end35
  br label %do.end37, !dbg !5734

do.end37:                                         ; preds = %do.end36
  br label %do.end38, !dbg !5733

do.end38:                                         ; preds = %do.end37
  ret void, !dbg !5749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !5750 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5753, metadata !DIExpression()), !dbg !5754
  %0 = load i64, i64* %error.addr, align 8, !dbg !5755
  %1 = inttoptr i64 %0 to i8*, !dbg !5756
  ret i8* %1, !dbg !5757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !5758 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  ret i1 true, !dbg !5764
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !5765 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  ret void, !dbg !5770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5771 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5775, metadata !DIExpression()), !dbg !5776
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5777, metadata !DIExpression()), !dbg !5778
  ret i1 true, !dbg !5779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5780 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  ret void, !dbg !5790
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local i32 @ldsem_down_write(%struct.ld_semaphore*, i64) #2

; Function Attrs: noredzone
declare dso_local void @ldsem_up_write(%struct.ld_semaphore*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_module(i8* %name, ...) #0 !dbg !5791 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  ret i32 -38, !dbg !5797
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !5798 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5801, metadata !DIExpression()), !dbg !5802
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5803
  ret i8* %0, !dbg !5804
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5805 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5809, metadata !DIExpression()), !dbg !5813
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5815, metadata !DIExpression()), !dbg !5816
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5817, metadata !DIExpression()), !dbg !5818
  %0 = load i64, i64* %size.addr, align 8, !dbg !5819
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5821
  br i1 %1, label %if.then, label %if.end447, !dbg !5822

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5823
  %tobool = icmp ne i64 %2, 0, !dbg !5823
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5826

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5828
  %cmp = icmp ult i64 %3, 4096, !dbg !5830
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5831

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub = sub i64 %4, 1, !dbg !5833
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5833
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5833

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub4 = sub i64 %6, 1, !dbg !5833
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5833
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5833

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub6 = sub i64 %8, 1, !dbg !5833
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5833
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5833

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5833

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub9 = sub i64 %9, 1, !dbg !5833
  %and = and i64 %sub9, -9223372036854775808, !dbg !5833
  %tobool10 = icmp ne i64 %and, 0, !dbg !5833
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5833

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5833

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub13 = sub i64 %10, 1, !dbg !5833
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5833
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5833
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5833

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5833

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub18 = sub i64 %11, 1, !dbg !5833
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5833
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5833
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5833

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5833

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub23 = sub i64 %12, 1, !dbg !5833
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5833
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5833
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5833

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5833

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub28 = sub i64 %13, 1, !dbg !5833
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5833
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5833
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5833

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5833

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub33 = sub i64 %14, 1, !dbg !5833
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5833
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5833
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5833

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5833

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub38 = sub i64 %15, 1, !dbg !5833
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5833
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5833
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5833

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5833

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub43 = sub i64 %16, 1, !dbg !5833
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5833
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5833
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5833

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5833

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub48 = sub i64 %17, 1, !dbg !5833
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5833
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5833
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5833

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5833

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub53 = sub i64 %18, 1, !dbg !5833
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5833
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5833
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5833

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5833

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub58 = sub i64 %19, 1, !dbg !5833
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5833
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5833
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5833

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5833

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub63 = sub i64 %20, 1, !dbg !5833
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5833
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5833
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5833

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5833

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub68 = sub i64 %21, 1, !dbg !5833
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5833
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5833
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5833

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5833

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub73 = sub i64 %22, 1, !dbg !5833
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5833
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5833
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5833

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5833

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub78 = sub i64 %23, 1, !dbg !5833
  %and79 = and i64 %sub78, 562949953421312, !dbg !5833
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5833
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5833

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5833

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub83 = sub i64 %24, 1, !dbg !5833
  %and84 = and i64 %sub83, 281474976710656, !dbg !5833
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5833
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5833

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5833

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub88 = sub i64 %25, 1, !dbg !5833
  %and89 = and i64 %sub88, 140737488355328, !dbg !5833
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5833
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5833

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5833

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub93 = sub i64 %26, 1, !dbg !5833
  %and94 = and i64 %sub93, 70368744177664, !dbg !5833
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5833
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5833

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5833

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub98 = sub i64 %27, 1, !dbg !5833
  %and99 = and i64 %sub98, 35184372088832, !dbg !5833
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5833
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5833

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5833

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub103 = sub i64 %28, 1, !dbg !5833
  %and104 = and i64 %sub103, 17592186044416, !dbg !5833
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5833
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5833

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5833

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub108 = sub i64 %29, 1, !dbg !5833
  %and109 = and i64 %sub108, 8796093022208, !dbg !5833
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5833
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5833

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5833

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub113 = sub i64 %30, 1, !dbg !5833
  %and114 = and i64 %sub113, 4398046511104, !dbg !5833
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5833
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5833

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5833

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub118 = sub i64 %31, 1, !dbg !5833
  %and119 = and i64 %sub118, 2199023255552, !dbg !5833
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5833
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5833

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5833

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub123 = sub i64 %32, 1, !dbg !5833
  %and124 = and i64 %sub123, 1099511627776, !dbg !5833
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5833
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5833

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5833

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub128 = sub i64 %33, 1, !dbg !5833
  %and129 = and i64 %sub128, 549755813888, !dbg !5833
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5833
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5833

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5833

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub133 = sub i64 %34, 1, !dbg !5833
  %and134 = and i64 %sub133, 274877906944, !dbg !5833
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5833
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5833

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5833

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub138 = sub i64 %35, 1, !dbg !5833
  %and139 = and i64 %sub138, 137438953472, !dbg !5833
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5833
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5833

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5833

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub143 = sub i64 %36, 1, !dbg !5833
  %and144 = and i64 %sub143, 68719476736, !dbg !5833
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5833
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5833

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5833

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub148 = sub i64 %37, 1, !dbg !5833
  %and149 = and i64 %sub148, 34359738368, !dbg !5833
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5833
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5833

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5833

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub153 = sub i64 %38, 1, !dbg !5833
  %and154 = and i64 %sub153, 17179869184, !dbg !5833
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5833
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5833

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5833

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub158 = sub i64 %39, 1, !dbg !5833
  %and159 = and i64 %sub158, 8589934592, !dbg !5833
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5833
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5833

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5833

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub163 = sub i64 %40, 1, !dbg !5833
  %and164 = and i64 %sub163, 4294967296, !dbg !5833
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5833
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5833

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5833

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub168 = sub i64 %41, 1, !dbg !5833
  %and169 = and i64 %sub168, 2147483648, !dbg !5833
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5833
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5833

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5833

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub173 = sub i64 %42, 1, !dbg !5833
  %and174 = and i64 %sub173, 1073741824, !dbg !5833
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5833
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5833

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5833

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub178 = sub i64 %43, 1, !dbg !5833
  %and179 = and i64 %sub178, 536870912, !dbg !5833
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5833
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5833

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5833

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub183 = sub i64 %44, 1, !dbg !5833
  %and184 = and i64 %sub183, 268435456, !dbg !5833
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5833
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5833

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5833

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub188 = sub i64 %45, 1, !dbg !5833
  %and189 = and i64 %sub188, 134217728, !dbg !5833
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5833
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5833

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5833

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub193 = sub i64 %46, 1, !dbg !5833
  %and194 = and i64 %sub193, 67108864, !dbg !5833
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5833
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5833

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5833

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub198 = sub i64 %47, 1, !dbg !5833
  %and199 = and i64 %sub198, 33554432, !dbg !5833
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5833
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5833

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5833

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub203 = sub i64 %48, 1, !dbg !5833
  %and204 = and i64 %sub203, 16777216, !dbg !5833
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5833
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5833

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5833

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub208 = sub i64 %49, 1, !dbg !5833
  %and209 = and i64 %sub208, 8388608, !dbg !5833
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5833
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5833

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5833

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub213 = sub i64 %50, 1, !dbg !5833
  %and214 = and i64 %sub213, 4194304, !dbg !5833
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5833
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5833

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5833

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub218 = sub i64 %51, 1, !dbg !5833
  %and219 = and i64 %sub218, 2097152, !dbg !5833
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5833
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5833

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5833

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub223 = sub i64 %52, 1, !dbg !5833
  %and224 = and i64 %sub223, 1048576, !dbg !5833
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5833
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5833

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5833

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub228 = sub i64 %53, 1, !dbg !5833
  %and229 = and i64 %sub228, 524288, !dbg !5833
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5833
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5833

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5833

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub233 = sub i64 %54, 1, !dbg !5833
  %and234 = and i64 %sub233, 262144, !dbg !5833
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5833
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5833

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5833

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub238 = sub i64 %55, 1, !dbg !5833
  %and239 = and i64 %sub238, 131072, !dbg !5833
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5833
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5833

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5833

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub243 = sub i64 %56, 1, !dbg !5833
  %and244 = and i64 %sub243, 65536, !dbg !5833
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5833
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5833

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5833

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub248 = sub i64 %57, 1, !dbg !5833
  %and249 = and i64 %sub248, 32768, !dbg !5833
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5833
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5833

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5833

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub253 = sub i64 %58, 1, !dbg !5833
  %and254 = and i64 %sub253, 16384, !dbg !5833
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5833
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5833

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5833

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub258 = sub i64 %59, 1, !dbg !5833
  %and259 = and i64 %sub258, 8192, !dbg !5833
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5833
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5833

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5833

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub263 = sub i64 %60, 1, !dbg !5833
  %and264 = and i64 %sub263, 4096, !dbg !5833
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5833
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5833

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5833

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub268 = sub i64 %61, 1, !dbg !5833
  %and269 = and i64 %sub268, 2048, !dbg !5833
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5833
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5833

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5833

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub273 = sub i64 %62, 1, !dbg !5833
  %and274 = and i64 %sub273, 1024, !dbg !5833
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5833
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5833

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5833

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub278 = sub i64 %63, 1, !dbg !5833
  %and279 = and i64 %sub278, 512, !dbg !5833
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5833
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5833

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5833

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub283 = sub i64 %64, 1, !dbg !5833
  %and284 = and i64 %sub283, 256, !dbg !5833
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5833
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5833

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5833

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub288 = sub i64 %65, 1, !dbg !5833
  %and289 = and i64 %sub288, 128, !dbg !5833
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5833
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5833

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5833

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub293 = sub i64 %66, 1, !dbg !5833
  %and294 = and i64 %sub293, 64, !dbg !5833
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5833
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5833

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5833

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub298 = sub i64 %67, 1, !dbg !5833
  %and299 = and i64 %sub298, 32, !dbg !5833
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5833
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5833

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5833

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub303 = sub i64 %68, 1, !dbg !5833
  %and304 = and i64 %sub303, 16, !dbg !5833
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5833
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5833

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5833

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub308 = sub i64 %69, 1, !dbg !5833
  %and309 = and i64 %sub308, 8, !dbg !5833
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5833
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5833

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5833

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub313 = sub i64 %70, 1, !dbg !5833
  %and314 = and i64 %sub313, 4, !dbg !5833
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5833
  %71 = zext i1 %tobool315 to i64, !dbg !5833
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5833
  br label %cond.end, !dbg !5833

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5833
  br label %cond.end317, !dbg !5833

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5833
  br label %cond.end319, !dbg !5833

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5833
  br label %cond.end321, !dbg !5833

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5833
  br label %cond.end323, !dbg !5833

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5833
  br label %cond.end325, !dbg !5833

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5833
  br label %cond.end327, !dbg !5833

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5833
  br label %cond.end329, !dbg !5833

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5833
  br label %cond.end331, !dbg !5833

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5833
  br label %cond.end333, !dbg !5833

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5833
  br label %cond.end335, !dbg !5833

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5833
  br label %cond.end337, !dbg !5833

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5833
  br label %cond.end339, !dbg !5833

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5833
  br label %cond.end341, !dbg !5833

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5833
  br label %cond.end343, !dbg !5833

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5833
  br label %cond.end345, !dbg !5833

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5833
  br label %cond.end347, !dbg !5833

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5833
  br label %cond.end349, !dbg !5833

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5833
  br label %cond.end351, !dbg !5833

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5833
  br label %cond.end353, !dbg !5833

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5833
  br label %cond.end355, !dbg !5833

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5833
  br label %cond.end357, !dbg !5833

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5833
  br label %cond.end359, !dbg !5833

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5833
  br label %cond.end361, !dbg !5833

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5833
  br label %cond.end363, !dbg !5833

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5833
  br label %cond.end365, !dbg !5833

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5833
  br label %cond.end367, !dbg !5833

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5833
  br label %cond.end369, !dbg !5833

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5833
  br label %cond.end371, !dbg !5833

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5833
  br label %cond.end373, !dbg !5833

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5833
  br label %cond.end375, !dbg !5833

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5833
  br label %cond.end377, !dbg !5833

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5833
  br label %cond.end379, !dbg !5833

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5833
  br label %cond.end381, !dbg !5833

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5833
  br label %cond.end383, !dbg !5833

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5833
  br label %cond.end385, !dbg !5833

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5833
  br label %cond.end387, !dbg !5833

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5833
  br label %cond.end389, !dbg !5833

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5833
  br label %cond.end391, !dbg !5833

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5833
  br label %cond.end393, !dbg !5833

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5833
  br label %cond.end395, !dbg !5833

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5833
  br label %cond.end397, !dbg !5833

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5833
  br label %cond.end399, !dbg !5833

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5833
  br label %cond.end401, !dbg !5833

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5833
  br label %cond.end403, !dbg !5833

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5833
  br label %cond.end405, !dbg !5833

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5833
  br label %cond.end407, !dbg !5833

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5833
  br label %cond.end409, !dbg !5833

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5833
  br label %cond.end411, !dbg !5833

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5833
  br label %cond.end413, !dbg !5833

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5833
  br label %cond.end415, !dbg !5833

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5833
  br label %cond.end417, !dbg !5833

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5833
  br label %cond.end419, !dbg !5833

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5833
  br label %cond.end421, !dbg !5833

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5833
  br label %cond.end423, !dbg !5833

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5833
  br label %cond.end425, !dbg !5833

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5833
  br label %cond.end427, !dbg !5833

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5833
  br label %cond.end429, !dbg !5833

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5833
  br label %cond.end431, !dbg !5833

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5833
  br label %cond.end433, !dbg !5833

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5833
  br label %cond.end435, !dbg !5833

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5833
  br label %cond.end437, !dbg !5833

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5833
  br label %cond.end440, !dbg !5833

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5833

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5833
  br label %cond.end444, !dbg !5833

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5833
  %sub443 = sub i64 %72, 1, !dbg !5833
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !5833
  br label %cond.end444, !dbg !5833

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5833
  %sub446 = sub i32 %cond445, 12, !dbg !5834
  %add = add i32 %sub446, 1, !dbg !5835
  store i32 %add, i32* %retval, align 4, !dbg !5836
  br label %return, !dbg !5836

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5837
  %dec = add i64 %73, -1, !dbg !5837
  store i64 %dec, i64* %size.addr, align 8, !dbg !5837
  %74 = load i64, i64* %size.addr, align 8, !dbg !5838
  %shr = lshr i64 %74, 12, !dbg !5838
  store i64 %shr, i64* %size.addr, align 8, !dbg !5838
  %75 = load i64, i64* %size.addr, align 8, !dbg !5839
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5816
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5840
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5841
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #3, !dbg !5840, !srcloc !5842
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5840
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5843
  %add.i = add i32 %79, 1, !dbg !5844
  store i32 %add.i, i32* %retval, align 4, !dbg !5845
  br label %return, !dbg !5845

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5846
  ret i32 %80, !dbg !5846
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5847 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5809, metadata !DIExpression()), !dbg !5851
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5815, metadata !DIExpression()), !dbg !5853
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5854, metadata !DIExpression()), !dbg !5855
  %0 = load i64, i64* %n.addr, align 8, !dbg !5856
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5853
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5857
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5858
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #3, !dbg !5857, !srcloc !5842
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5857
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5859
  %add.i = add i32 %4, 1, !dbg !5860
  %sub = sub i32 %add.i, 1, !dbg !5861
  ret i32 %sub, !dbg !5862
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5863 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5867, metadata !DIExpression()), !dbg !5868
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5871, metadata !DIExpression()), !dbg !5872
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5875
  ret i8* %0, !dbg !5876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5877 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  ret i1 true, !dbg !5882
}

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !5883 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5886, metadata !DIExpression()), !dbg !5888
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5890, metadata !DIExpression()), !dbg !5891
  %c.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %c.i, metadata !5892, metadata !DIExpression()), !dbg !5894
  %tmp.i = alloca i8, align 1
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5895, metadata !DIExpression()), !dbg !5897
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5899, metadata !DIExpression()), !dbg !5900
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5903, metadata !DIExpression()), !dbg !5904
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5905
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5906
  %div = sdiv i64 %1, 64, !dbg !5906
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5907
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5905
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5908
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5909
  %conv.i = trunc i64 %4 to i32, !dbg !5909
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5910
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5911
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5911
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #12, !dbg !5911
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5912
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5913
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5894
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5894
  %11 = call i8 asm sideeffect " btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10, i64* %9) #4, !dbg !5894, !srcloc !5914
  store i8 %11, i8* %c.i, align 1, !dbg !5894
  %12 = load i8, i8* %c.i, align 1, !dbg !5894
  %tobool.i = trunc i8 %12 to i1, !dbg !5894
  %frombool.i = zext i1 %tobool.i to i8, !dbg !5894
  store i8 %frombool.i, i8* %tmp.i, align 1, !dbg !5894
  %13 = load i8, i8* %tmp.i, align 1, !dbg !5894
  %tobool1.i = trunc i8 %13 to i1, !dbg !5894
  ret i1 %tobool1.i, !dbg !5915
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_ldisc_failto(%struct.tty_struct* %tty, i32 %ld) #0 !dbg !5916 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %ld.addr = alloca i32, align 4
  %disc = alloca %struct.tty_ldisc*, align 8
  %r = alloca i32, align 4
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  store i32 %ld, i32* %ld.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ld.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  call void @llvm.dbg.declare(metadata %struct.tty_ldisc** %disc, metadata !5921, metadata !DIExpression()), !dbg !5922
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5923
  %1 = load i32, i32* %ld.addr, align 4, !dbg !5924
  %call = call %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %0, i32 %1) #11, !dbg !5925
  store %struct.tty_ldisc* %call, %struct.tty_ldisc** %disc, align 8, !dbg !5922
  call void @llvm.dbg.declare(metadata i32* %r, metadata !5926, metadata !DIExpression()), !dbg !5927
  br label %do.body, !dbg !5928

do.body:                                          ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5929
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %2, i32 0, i32 6, !dbg !5929
  br label %do.end, !dbg !5929

do.end:                                           ; preds = %do.body
  %3 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !5931
  %4 = bitcast %struct.tty_ldisc* %3 to i8*, !dbg !5931
  %call1 = call zeroext i1 @IS_ERR(i8* %4) #11, !dbg !5933
  br i1 %call1, label %if.then, label %if.end, !dbg !5934

if.then:                                          ; preds = %do.end
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !5935
  %6 = bitcast %struct.tty_ldisc* %5 to i8*, !dbg !5935
  %call2 = call i64 @PTR_ERR(i8* %6) #11, !dbg !5936
  %conv = trunc i64 %call2 to i32, !dbg !5936
  store i32 %conv, i32* %retval, align 4, !dbg !5937
  br label %return, !dbg !5937

if.end:                                           ; preds = %do.end
  %7 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !5938
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5939
  %ldisc = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 7, !dbg !5940
  store %struct.tty_ldisc* %7, %struct.tty_ldisc** %ldisc, align 8, !dbg !5941
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5942
  %10 = load i32, i32* %ld.addr, align 4, !dbg !5943
  call void @tty_set_termios_ldisc(%struct.tty_struct* %9, i32 %10) #11, !dbg !5944
  %11 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5945
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !5947
  %call3 = call i32 @tty_ldisc_open(%struct.tty_struct* %11, %struct.tty_ldisc* %12) #11, !dbg !5948
  store i32 %call3, i32* %r, align 4, !dbg !5949
  %cmp = icmp slt i32 %call3, 0, !dbg !5950
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5951

if.then5:                                         ; preds = %if.end
  %13 = load %struct.tty_ldisc*, %struct.tty_ldisc** %disc, align 8, !dbg !5952
  call void @tty_ldisc_put(%struct.tty_ldisc* %13) #11, !dbg !5953
  br label %if.end6, !dbg !5953

if.end6:                                          ; preds = %if.then5, %if.end
  %14 = load i32, i32* %r, align 4, !dbg !5954
  store i32 %14, i32* %retval, align 4, !dbg !5955
  br label %return, !dbg !5955

return:                                           ; preds = %if.end6, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5956
  ret i32 %15, !dbg !5956
}

; Function Attrs: noredzone
declare dso_local i8* @tty_name(%struct.tty_struct*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #8

; Function Attrs: cold noredzone noreturn
declare dso_local void @panic(i8*, ...) #9

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: noredzone
declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios*) #2

; Function Attrs: noredzone
declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tty_ldisc_lock_pair_timeout(%struct.tty_struct* %tty, %struct.tty_struct* %tty2, i64 %timeout) #0 !dbg !5957 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca %struct.tty_struct*, align 8
  %tty2.addr = alloca %struct.tty_struct*, align 8
  %timeout.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !5960, metadata !DIExpression()), !dbg !5961
  store %struct.tty_struct* %tty2, %struct.tty_struct** %tty2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty2.addr, metadata !5962, metadata !DIExpression()), !dbg !5963
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5966, metadata !DIExpression()), !dbg !5967
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5968
  %1 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !5970
  %cmp = icmp ult %struct.tty_struct* %0, %1, !dbg !5971
  br i1 %cmp, label %if.then, label %if.else, !dbg !5972

if.then:                                          ; preds = %entry
  %2 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5973
  %3 = load i64, i64* %timeout.addr, align 8, !dbg !5975
  %call = call i32 @__tty_ldisc_lock(%struct.tty_struct* %2, i64 %3) #11, !dbg !5976
  store i32 %call, i32* %ret, align 4, !dbg !5977
  %4 = load i32, i32* %ret, align 4, !dbg !5978
  %tobool = icmp ne i32 %4, 0, !dbg !5978
  br i1 %tobool, label %if.then1, label %if.end5, !dbg !5980

if.then1:                                         ; preds = %if.then
  %5 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !5981
  %6 = load i64, i64* %timeout.addr, align 8, !dbg !5983
  %call2 = call i32 @__tty_ldisc_lock_nested(%struct.tty_struct* %5, i64 %6) #11, !dbg !5984
  store i32 %call2, i32* %ret, align 4, !dbg !5985
  %7 = load i32, i32* %ret, align 4, !dbg !5986
  %tobool3 = icmp ne i32 %7, 0, !dbg !5986
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !5988

if.then4:                                         ; preds = %if.then1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5989
  call void @__tty_ldisc_unlock(%struct.tty_struct* %8) #11, !dbg !5990
  br label %if.end, !dbg !5990

if.end:                                           ; preds = %if.then4, %if.then1
  br label %if.end5, !dbg !5991

if.end5:                                          ; preds = %if.end, %if.then
  br label %if.end43, !dbg !5992

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5993, metadata !DIExpression()), !dbg !5996
  %9 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !5996
  %10 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !5996
  %cmp6 = icmp eq %struct.tty_struct* %9, %10, !dbg !5996
  %lnot = xor i1 %cmp6, true, !dbg !5996
  %lnot7 = xor i1 %lnot, true, !dbg !5996
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5996
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5996
  %11 = load i32, i32* %__ret_warn_on, align 4, !dbg !5997
  %tobool8 = icmp ne i32 %11, 0, !dbg !5997
  %lnot9 = xor i1 %tobool8, true, !dbg !5997
  %lnot11 = xor i1 %lnot9, true, !dbg !5997
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5997
  %conv = sext i32 %lnot.ext12 to i64, !dbg !5997
  %tobool13 = icmp ne i64 %conv, 0, !dbg !5997
  br i1 %tobool13, label %if.then14, label %if.end21, !dbg !5996

if.then14:                                        ; preds = %if.else
  br label %do.body, !dbg !5997

do.body:                                          ; preds = %if.then14
  br label %do.body15, !dbg !5999

do.body15:                                        ; preds = %do.body
  br label %do.end, !dbg !6001

do.end:                                           ; preds = %do.body15
  br label %do.body16, !dbg !5999

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 368, i32 2307, i64 12) #4, !dbg !6003, !srcloc !6005
  br label %do.end17, !dbg !6003

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #4, !dbg !6006, !srcloc !6008
  br label %do.body18, !dbg !5999

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6009

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !5999

do.end20:                                         ; preds = %do.end19
  br label %if.end21, !dbg !5999

if.end21:                                         ; preds = %do.end20, %if.else
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !5996
  %tobool22 = icmp ne i32 %12, 0, !dbg !5996
  %lnot23 = xor i1 %tobool22, true, !dbg !5996
  %lnot25 = xor i1 %lnot23, true, !dbg !5996
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5996
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !5996
  store i64 %conv27, i64* %tmp, align 8, !dbg !5997
  %13 = load i64, i64* %tmp, align 8, !dbg !5996
  %14 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !6011
  %tobool28 = icmp ne %struct.tty_struct* %14, null, !dbg !6011
  br i1 %tobool28, label %land.lhs.true, label %if.else40, !dbg !6013

land.lhs.true:                                    ; preds = %if.end21
  %15 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6014
  %16 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !6015
  %cmp29 = icmp ne %struct.tty_struct* %15, %16, !dbg !6016
  br i1 %cmp29, label %if.then31, label %if.else40, !dbg !6017

if.then31:                                        ; preds = %land.lhs.true
  %17 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !6018
  %18 = load i64, i64* %timeout.addr, align 8, !dbg !6020
  %call32 = call i32 @__tty_ldisc_lock(%struct.tty_struct* %17, i64 %18) #11, !dbg !6021
  store i32 %call32, i32* %ret, align 4, !dbg !6022
  %19 = load i32, i32* %ret, align 4, !dbg !6023
  %tobool33 = icmp ne i32 %19, 0, !dbg !6023
  br i1 %tobool33, label %if.then34, label %if.end39, !dbg !6025

if.then34:                                        ; preds = %if.then31
  %20 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6026
  %21 = load i64, i64* %timeout.addr, align 8, !dbg !6028
  %call35 = call i32 @__tty_ldisc_lock_nested(%struct.tty_struct* %20, i64 %21) #11, !dbg !6029
  store i32 %call35, i32* %ret, align 4, !dbg !6030
  %22 = load i32, i32* %ret, align 4, !dbg !6031
  %tobool36 = icmp ne i32 %22, 0, !dbg !6031
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !6033

if.then37:                                        ; preds = %if.then34
  %23 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !6034
  call void @__tty_ldisc_unlock(%struct.tty_struct* %23) #11, !dbg !6035
  br label %if.end38, !dbg !6035

if.end38:                                         ; preds = %if.then37, %if.then34
  br label %if.end39, !dbg !6036

if.end39:                                         ; preds = %if.end38, %if.then31
  br label %if.end42, !dbg !6037

if.else40:                                        ; preds = %land.lhs.true, %if.end21
  %24 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6038
  %25 = load i64, i64* %timeout.addr, align 8, !dbg !6039
  %call41 = call i32 @__tty_ldisc_lock(%struct.tty_struct* %24, i64 %25) #11, !dbg !6040
  store i32 %call41, i32* %ret, align 4, !dbg !6041
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.end39
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end5
  %26 = load i32, i32* %ret, align 4, !dbg !6042
  %tobool44 = icmp ne i32 %26, 0, !dbg !6042
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !6044

if.then45:                                        ; preds = %if.end43
  store i32 -16, i32* %retval, align 4, !dbg !6045
  br label %return, !dbg !6045

if.end46:                                         ; preds = %if.end43
  %27 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6046
  %flags = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 21, !dbg !6047
  call void @set_bit(i64 22, i64* %flags) #11, !dbg !6048
  %28 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !6049
  %tobool47 = icmp ne %struct.tty_struct* %28, null, !dbg !6049
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !6051

if.then48:                                        ; preds = %if.end46
  %29 = load %struct.tty_struct*, %struct.tty_struct** %tty2.addr, align 8, !dbg !6052
  %flags49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 21, !dbg !6053
  call void @set_bit(i64 22, i64* %flags49) #11, !dbg !6054
  br label %if.end50, !dbg !6054

if.end50:                                         ; preds = %if.then48, %if.end46
  store i32 0, i32* %retval, align 4, !dbg !6055
  br label %return, !dbg !6055

return:                                           ; preds = %if.end50, %if.then45
  %30 = load i32, i32* %retval, align 4, !dbg !6056
  ret i32 %30, !dbg !6056
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__tty_ldisc_lock_nested(%struct.tty_struct* %tty, i64 %timeout) #0 !dbg !6057 {
entry:
  %tty.addr = alloca %struct.tty_struct*, align 8
  %timeout.addr = alloca i64, align 8
  store %struct.tty_struct* %tty, %struct.tty_struct** %tty.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tty_struct** %tty.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !6060, metadata !DIExpression()), !dbg !6061
  %0 = load %struct.tty_struct*, %struct.tty_struct** %tty.addr, align 8, !dbg !6062
  %ldisc_sem = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %0, i32 0, i32 6, !dbg !6062
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !6062
  %call = call i32 @ldsem_down_write(%struct.ld_semaphore* %ldisc_sem, i64 %1) #11, !dbg !6062
  ret i32 %call, !dbg !6063
}

; Function Attrs: noredzone
declare dso_local i32 @proc_dointvec(%struct.ctl_table*, i32, i8*, i64*, i64*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { cold noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind willreturn }
attributes #11 = { noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { cold noredzone }
attributes #15 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4064}
!llvm.module.flags = !{!4065, !4066, !4067, !4068}
!llvm.ident = !{!4069}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tty_ldiscs_lock", scope: !2, file: !3, line: 44, type: !617, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !125, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/tty_ldisc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !98}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !99, line: 305, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!105 = !{!106, !107, !108, !111, !110, !113, !118, !121, !123, !124}
!106 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !109, line: 37, baseType: !110)
!109 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !112, line: 52, baseType: !7)
!112 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !109, line: 46, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !116, line: 88, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!120 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !109, line: 148, baseType: !7)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!125 = !{!126, !4028, !0, !4033, !4035, !4060, !4062}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "tty_ldiscs_seq_ops", scope: !2, file: !3, line: 235, type: !128, isLocal: false, isDefinition: true)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !130, line: 31, size: 256, elements: !131)
!130 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!131 = !{!132, !4025, !4026, !4027}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !129, file: !130, line: 32, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!107, !136, !113}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !130, line: 16, size: 896, elements: !138)
!138 = !{!139, !141, !145, !146, !147, !148, !149, !150, !187, !189, !191, !4024}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !137, file: !130, line: 17, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !137, file: !130, line: 18, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 55, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !116, line: 72, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !116, line: 16, baseType: !110)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !137, file: !130, line: 19, baseType: !142, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !137, file: !130, line: 20, baseType: !142, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !137, file: !130, line: 21, baseType: !142, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !137, file: !130, line: 22, baseType: !114, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !137, file: !130, line: 23, baseType: !114, size: 64, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !137, file: !130, line: 24, baseType: !151, size: 192, offset: 448)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !152, line: 53, size: 192, elements: !153)
!152 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !165, !181}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !151, file: !152, line: 54, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !156, line: 13, baseType: !157)
!156 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !109, line: 175, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 173, size: 64, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !158, file: !109, line: 174, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !162, line: 22, baseType: !163)
!162 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !164, line: 30, baseType: !117)
!164 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !151, file: !152, line: 55, baseType: !166, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !167, line: 83, baseType: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !167, line: 71, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !167, line: 72, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !167, line: 72, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !171, file: !167, line: 73, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !167, line: 20, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !174, file: !167, line: 21, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !178, line: 25, baseType: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 25, elements: !180)
!180 = !{}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !151, file: !152, line: 59, baseType: !182, size: 128, offset: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !109, line: 178, size: 128, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !109, line: 179, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !109, line: 179, baseType: !185, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !137, file: !130, line: 25, baseType: !188, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !137, file: !130, line: 26, baseType: !190, size: 32, offset: 704)
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !137, file: !130, line: 27, baseType: !192, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !195)
!195 = !{!196, !214, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !4007, !4008, !4017, !4018, !4019, !4020, !4021, !4022, !4023}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !194, file: !44, line: 920, baseType: !197, size: 128)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !44, line: 917, size: 128, elements: !198)
!198 = !{!199, !205}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !197, file: !44, line: 918, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !201, line: 58, size: 64, elements: !202)
!201 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !201, line: 59, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !197, file: !44, line: 919, baseType: !206, size: 128, align: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !109, line: 216, size: 128, align: 64, elements: !207)
!207 = !{!208, !210}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !109, line: 217, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !206, file: !109, line: 218, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !209}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !194, file: !44, line: 921, baseType: !215, size: 128, offset: 128)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !216, line: 8, size: 128, elements: !217)
!216 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !215, file: !216, line: 9, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !221, line: 18, flags: DIFlagFwdDecl)
!221 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !215, file: !216, line: 10, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !221, line: 89, size: 1536, elements: !225)
!225 = !{!226, !227, !237, !245, !246, !267, !3958, !3960, !3972, !3973, !3974, !3975, !3976, !3981, !3982, !3983}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !224, file: !221, line: 91, baseType: !7, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !224, file: !221, line: 92, baseType: !228, size: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !229, line: 277, baseType: !230)
!229 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !229, line: 277, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !230, file: !229, line: 277, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !229, line: 70, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !229, line: 65, size: 32, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !234, file: !229, line: 66, baseType: !7, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !224, file: !221, line: 93, baseType: !238, size: 128, offset: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !239, line: 38, size: 128, elements: !240)
!239 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !239, line: 39, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !238, file: !239, line: 39, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !224, file: !221, line: 94, baseType: !223, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !224, file: !221, line: 95, baseType: !247, size: 128, offset: 256)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !221, line: 47, size: 128, elements: !248)
!248 = !{!249, !263}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !221, line: 48, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !247, file: !221, line: 48, size: 64, elements: !251)
!251 = !{!252, !259}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !221, line: 49, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !250, file: !221, line: 49, size: 64, elements: !254)
!254 = !{!255, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !253, file: !221, line: 50, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !162, line: 21, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !164, line: 27, baseType: !7)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !253, file: !221, line: 50, baseType: !256, size: 32, offset: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !250, file: !221, line: 52, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !162, line: 23, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !164, line: 31, baseType: !262)
!262 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !221, line: 54, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !224, file: !221, line: 96, baseType: !268, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !270)
!270 = !{!271, !274, !275, !283, !290, !291, !441, !3893, !3894, !3895, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3936, !3944, !3945, !3946, !3954, !3955, !3956, !3957}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !269, file: !44, line: 611, baseType: !272, size: 16)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !109, line: 19, baseType: !273)
!273 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !269, file: !44, line: 612, baseType: !273, size: 16, offset: 16)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !269, file: !44, line: 613, baseType: !276, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !277, line: 23, baseType: !278)
!277 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 21, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !278, file: !277, line: 22, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !109, line: 32, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !116, line: 49, baseType: !7)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !269, file: !44, line: 614, baseType: !284, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !277, line: 28, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 26, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !277, line: 27, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !109, line: 33, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !116, line: 50, baseType: !7)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !269, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !269, file: !44, line: 622, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !295)
!295 = !{!296, !300, !315, !319, !325, !329, !335, !339, !343, !347, !351, !352, !358, !362, !385, !414, !421, !427, !432, !436, !437}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !294, file: !44, line: 1865, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!223, !268, !223, !7}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !294, file: !44, line: 1866, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !223, !268, !306}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !308, line: 10, size: 128, elements: !309)
!308 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!309 = !{!310, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !307, file: !308, line: 11, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !107}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !307, file: !308, line: 12, baseType: !107, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !294, file: !44, line: 1867, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!190, !268, !190}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !294, file: !44, line: 1868, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !268, !190}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !294, file: !44, line: 1870, baseType: !326, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!190, !223, !140, !190}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !294, file: !44, line: 1872, baseType: !330, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!190, !268, !223, !272, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !109, line: 30, baseType: !334)
!334 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !294, file: !44, line: 1873, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!190, !223, !268, !223}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !294, file: !44, line: 1874, baseType: !340, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!190, !268, !223}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !294, file: !44, line: 1875, baseType: !344, size: 64, offset: 512)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!190, !268, !223, !304}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !294, file: !44, line: 1876, baseType: !348, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!190, !268, !223, !272}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !294, file: !44, line: 1877, baseType: !340, size: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !294, file: !44, line: 1878, baseType: !353, size: 64, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!190, !268, !223, !272, !356}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !109, line: 16, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !109, line: 13, baseType: !256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !294, file: !44, line: 1879, baseType: !359, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!190, !268, !223, !268, !223, !7}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !294, file: !44, line: 1881, baseType: !363, size: 64, offset: 832)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!190, !223, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !381, !382, !383}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !367, file: !44, line: 220, baseType: !7, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !367, file: !44, line: 221, baseType: !272, size: 16, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !367, file: !44, line: 222, baseType: !276, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !367, file: !44, line: 223, baseType: !284, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !367, file: !44, line: 224, baseType: !114, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !367, file: !44, line: 225, baseType: !375, size: 128, offset: 192)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !376, line: 13, size: 128, elements: !377)
!376 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !375, file: !376, line: 14, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !376, line: 8, baseType: !163)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !375, file: !376, line: 15, baseType: !106, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !367, file: !44, line: 226, baseType: !375, size: 128, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !367, file: !44, line: 227, baseType: !375, size: 128, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !367, file: !44, line: 234, baseType: !384, size: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !294, file: !44, line: 1882, baseType: !386, size: 64, offset: 896)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!190, !389, !391, !256, !7}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !393, line: 22, size: 1152, elements: !394)
!393 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !396, !397, !398, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !392, file: !393, line: 23, baseType: !256, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !392, file: !393, line: 24, baseType: !272, size: 16, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !392, file: !393, line: 25, baseType: !7, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !392, file: !393, line: 26, baseType: !399, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !109, line: 104, baseType: !256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !392, file: !393, line: 27, baseType: !260, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !392, file: !393, line: 28, baseType: !260, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !392, file: !393, line: 37, baseType: !260, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !392, file: !393, line: 38, baseType: !356, size: 32, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !392, file: !393, line: 39, baseType: !356, size: 32, offset: 352)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !392, file: !393, line: 40, baseType: !276, size: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !392, file: !393, line: 41, baseType: !284, size: 32, offset: 416)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !392, file: !393, line: 42, baseType: !114, size: 64, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !392, file: !393, line: 43, baseType: !375, size: 128, offset: 512)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !392, file: !393, line: 44, baseType: !375, size: 128, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !392, file: !393, line: 45, baseType: !375, size: 128, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !392, file: !393, line: 46, baseType: !375, size: 128, offset: 896)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !392, file: !393, line: 47, baseType: !260, size: 64, offset: 1024)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !392, file: !393, line: 48, baseType: !260, size: 64, offset: 1088)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !294, file: !44, line: 1883, baseType: !415, size: 64, offset: 960)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !223, !140, !142}
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !109, line: 60, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !116, line: 73, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !116, line: 15, baseType: !106)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !294, file: !44, line: 1884, baseType: !422, size: 64, offset: 1024)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!190, !268, !425, !260, !260}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !294, file: !44, line: 1886, baseType: !428, size: 64, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!190, !268, !431, !190}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !294, file: !44, line: 1887, baseType: !433, size: 64, offset: 1152)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!190, !268, !223, !384, !7, !272}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !294, file: !44, line: 1890, baseType: !348, size: 64, offset: 1216)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !294, file: !44, line: 1891, baseType: !438, size: 64, offset: 1280)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!190, !268, !323, !190}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !269, file: !44, line: 623, baseType: !442, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !501, !3500, !3582, !3665, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3681, !3685, !3686, !3689, !3690, !3693, !3694, !3695, !3736, !3763, !3764, !3765, !3766, !3767, !3768, !3771, !3773, !3780, !3781, !3783, !3784, !3785, !3844, !3845, !3860, !3861, !3862, !3863, !3864, !3867, !3868, !3869, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !443, file: !44, line: 1417, baseType: !182, size: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !443, file: !44, line: 1418, baseType: !356, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !443, file: !44, line: 1419, baseType: !266, size: 8, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !443, file: !44, line: 1420, baseType: !110, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !443, file: !44, line: 1421, baseType: !114, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !443, file: !44, line: 1422, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !453)
!453 = !{!454, !455, !456, !462, !466, !470, !474, !478, !479, !489, !492, !493, !494, !498, !499, !500}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !44, line: 2229, baseType: !304, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !452, file: !44, line: 2230, baseType: !190, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !452, file: !44, line: 2238, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!190, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !452, file: !44, line: 2239, baseType: !463, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !452, file: !44, line: 2240, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!223, !451, !190, !304, !107}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !452, file: !44, line: 2242, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !442}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !452, file: !44, line: 2243, baseType: !475, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !477, line: 76, flags: DIFlagFwdDecl)
!477 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !44, line: 2244, baseType: !451, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !452, file: !44, line: 2245, baseType: !480, size: 64, offset: 512)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !109, line: 182, size: 64, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !480, file: !109, line: 183, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !109, line: 186, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !109, line: 187, baseType: !483, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !484, file: !109, line: 187, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !452, file: !44, line: 2247, baseType: !490, offset: 576)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !491, line: 187, elements: !180)
!491 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !452, file: !44, line: 2248, baseType: !490, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !452, file: !44, line: 2249, baseType: !490, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !452, file: !44, line: 2250, baseType: !495, offset: 576)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 3)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !452, file: !44, line: 2252, baseType: !490, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !452, file: !44, line: 2253, baseType: !490, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !452, file: !44, line: 2254, baseType: !490, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !443, file: !44, line: 1423, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !505)
!505 = !{!506, !510, !514, !515, !519, !525, !529, !530, !531, !535, !539, !540, !541, !542, !548, !553, !554, !558, !559, !560, !561, !3484, !3499}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !504, file: !44, line: 1936, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!268, !442}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !504, file: !44, line: 1937, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !268}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !504, file: !44, line: 1938, baseType: !511, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !504, file: !44, line: 1940, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !268, !190}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !504, file: !44, line: 1941, baseType: !520, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!190, !268, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !504, file: !44, line: 1942, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!190, !268}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !504, file: !44, line: 1943, baseType: !511, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !504, file: !44, line: 1944, baseType: !471, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !504, file: !44, line: 1945, baseType: !532, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!190, !442, !190}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !504, file: !44, line: 1946, baseType: !536, size: 64, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!190, !442}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !504, file: !44, line: 1947, baseType: !536, size: 64, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !504, file: !44, line: 1948, baseType: !536, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !504, file: !44, line: 1949, baseType: !536, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !504, file: !44, line: 1950, baseType: !543, size: 64, offset: 832)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!190, !223, !546}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !504, file: !44, line: 1951, baseType: !549, size: 64, offset: 896)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!190, !442, !552, !140}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !504, file: !44, line: 1952, baseType: !471, size: 64, offset: 960)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !504, file: !44, line: 1954, baseType: !555, size: 64, offset: 1024)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!190, !136, !223}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !504, file: !44, line: 1955, baseType: !555, size: 64, offset: 1088)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !504, file: !44, line: 1956, baseType: !555, size: 64, offset: 1152)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !504, file: !44, line: 1957, baseType: !555, size: 64, offset: 1216)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !504, file: !44, line: 1963, baseType: !562, size: 64, offset: 1280)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!190, !442, !565, !123}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !567, line: 68, size: 512, align: 128, elements: !568)
!567 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!568 = !{!569, !570, !3476, !3483}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !567, line: 69, baseType: !110, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !567, line: 77, baseType: !571, size: 320, offset: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 77, size: 320, elements: !572)
!572 = !{!573, !753, !758, !786, !794, !800, !3407, !3475}
!573 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 78, baseType: !574, size: 320)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 78, size: 320, elements: !575)
!575 = !{!576, !577, !751, !752}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !574, file: !567, line: 84, baseType: !182, size: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !574, file: !567, line: 86, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !580)
!580 = !{!581, !582, !589, !590, !595, !610, !619, !620, !621, !622, !744, !745, !748, !749, !750}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !579, file: !44, line: 452, baseType: !268, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !579, file: !44, line: 453, baseType: !583, size: 128, offset: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !584, line: 292, size: 128, elements: !585)
!584 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !587, !588}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !583, file: !584, line: 293, baseType: !166)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !583, file: !584, line: 295, baseType: !123, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !583, file: !584, line: 296, baseType: !107, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !579, file: !44, line: 454, baseType: !123, size: 32, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !579, file: !44, line: 455, baseType: !591, size: 32, offset: 224)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !109, line: 168, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 166, size: 32, elements: !593)
!593 = !{!594}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !592, file: !109, line: 167, baseType: !190, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !579, file: !44, line: 460, baseType: !596, size: 128, offset: 256)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !597, line: 125, size: 128, elements: !598)
!597 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !609}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !596, file: !597, line: 126, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !597, line: 31, size: 64, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !600, file: !597, line: 32, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !597, line: 24, size: 192, align: 64, elements: !605)
!605 = !{!606, !607, !608}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !604, file: !597, line: 25, baseType: !110, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !604, file: !597, line: 26, baseType: !603, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !604, file: !597, line: 27, baseType: !603, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !596, file: !597, line: 127, baseType: !603, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !579, file: !44, line: 461, baseType: !611, size: 256, offset: 384)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !612, line: 35, size: 256, elements: !613)
!612 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614, !615, !616, !618}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !611, file: !612, line: 36, baseType: !155, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !612, line: 42, baseType: !155, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !611, file: !612, line: 46, baseType: !617, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !167, line: 29, baseType: !174)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !611, file: !612, line: 47, baseType: !182, size: 128, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !579, file: !44, line: 462, baseType: !110, size: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !579, file: !44, line: 463, baseType: !110, size: 64, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !579, file: !44, line: 464, baseType: !110, size: 64, offset: 768)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !579, file: !44, line: 465, baseType: !623, size: 64, offset: 832)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !626)
!626 = !{!627, !631, !635, !639, !643, !647, !653, !659, !663, !668, !672, !676, !680, !708, !712, !718, !719, !720, !724, !729, !733, !740}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !625, file: !44, line: 368, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!190, !565, !523}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !625, file: !44, line: 369, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!190, !384, !565}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !625, file: !44, line: 372, baseType: !636, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!190, !578, !523}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !625, file: !44, line: 375, baseType: !640, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!190, !565}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !625, file: !44, line: 381, baseType: !644, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!190, !384, !578, !185, !7}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !625, file: !44, line: 383, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !625, file: !44, line: 385, baseType: !654, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!190, !384, !578, !114, !7, !7, !657, !658}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !625, file: !44, line: 388, baseType: !660, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!190, !384, !578, !114, !7, !7, !565, !107}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !625, file: !44, line: 393, baseType: !664, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !578, !667}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !109, line: 125, baseType: !260)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !625, file: !44, line: 394, baseType: !669, size: 64, offset: 576)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !565, !7, !7}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !625, file: !44, line: 395, baseType: !673, size: 64, offset: 640)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!190, !565, !123}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !625, file: !44, line: 396, baseType: !677, size: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !565}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !625, file: !44, line: 397, baseType: !681, size: 64, offset: 768)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!418, !684, !706}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !686)
!686 = !{!687, !688, !689, !693, !694, !695, !698, !699}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !685, file: !44, line: 321, baseType: !384, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !685, file: !44, line: 326, baseType: !114, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !685, file: !44, line: 327, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !684, !106, !106}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !685, file: !44, line: 328, baseType: !107, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !685, file: !44, line: 329, baseType: !190, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !685, file: !44, line: 330, baseType: !696, size: 16, offset: 288)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !162, line: 19, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !164, line: 24, baseType: !273)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !685, file: !44, line: 331, baseType: !696, size: 16, offset: 304)
!699 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !44, line: 332, baseType: !700, size: 64, offset: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !685, file: !44, line: 332, size: 64, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !700, file: !44, line: 333, baseType: !7, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !700, file: !44, line: 334, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !625, file: !44, line: 402, baseType: !709, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!190, !578, !565, !565, !5}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !625, file: !44, line: 404, baseType: !713, size: 64, offset: 896)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!333, !565, !716}
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !717, line: 305, baseType: !7)
!717 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !625, file: !44, line: 405, baseType: !677, size: 64, offset: 960)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !625, file: !44, line: 406, baseType: !640, size: 64, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !625, file: !44, line: 407, baseType: !721, size: 64, offset: 1088)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!190, !565, !110, !110}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !625, file: !44, line: 409, baseType: !725, size: 64, offset: 1152)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !565, !728, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !625, file: !44, line: 410, baseType: !730, size: 64, offset: 1216)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!190, !578, !565}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !625, file: !44, line: 413, baseType: !734, size: 64, offset: 1280)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!190, !737, !384, !739}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !625, file: !44, line: 415, baseType: !741, size: 64, offset: 1344)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !384}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !44, line: 466, baseType: !110, size: 64, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !579, file: !44, line: 467, baseType: !746, size: 32, offset: 960)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !747, line: 8, baseType: !256)
!747 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!748 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !579, file: !44, line: 468, baseType: !166, offset: 992)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !579, file: !44, line: 469, baseType: !182, size: 128, offset: 1024)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !579, file: !44, line: 470, baseType: !107, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !574, file: !567, line: 87, baseType: !110, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !574, file: !567, line: 94, baseType: !110, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 96, baseType: !754, size: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 96, size: 64, elements: !755)
!755 = !{!756}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !754, file: !567, line: 101, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !109, line: 143, baseType: !260)
!758 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 103, baseType: !759, size: 320)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 103, size: 320, elements: !760)
!760 = !{!761, !771, !774, !775}
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !567, line: 104, baseType: !762, size: 128)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !567, line: 104, size: 128, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !762, file: !567, line: 105, baseType: !182, size: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !567, line: 106, baseType: !766, size: 128)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !567, line: 106, size: 128, elements: !767)
!767 = !{!768, !769, !770}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !567, line: 107, baseType: !565, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !766, file: !567, line: 109, baseType: !190, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !766, file: !567, line: 110, baseType: !190, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !759, file: !567, line: 117, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !567, line: 117, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !759, file: !567, line: 119, baseType: !107, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !567, line: 120, baseType: !776, size: 64, offset: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !567, line: 120, size: 64, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !776, file: !567, line: 121, baseType: !107, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !776, file: !567, line: 122, baseType: !110, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !567, line: 123, baseType: !781, size: 32)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !776, file: !567, line: 123, size: 32, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !781, file: !567, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !781, file: !567, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !781, file: !567, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 130, baseType: !787, size: 192)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 130, size: 192, elements: !788)
!788 = !{!789, !790, !791, !792, !793}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !787, file: !567, line: 131, baseType: !110, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !787, file: !567, line: 134, baseType: !266, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !787, file: !567, line: 135, baseType: !266, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !787, file: !567, line: 136, baseType: !591, size: 32, offset: 96)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !787, file: !567, line: 137, baseType: !7, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 139, baseType: !795, size: 256)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 139, size: 256, elements: !796)
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !795, file: !567, line: 140, baseType: !110, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !795, file: !567, line: 141, baseType: !591, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !795, file: !567, line: 143, baseType: !182, size: 128, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 145, baseType: !801, size: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 145, size: 256, elements: !802)
!802 = !{!803, !804, !807, !808, !3406}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !801, file: !567, line: 146, baseType: !110, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !801, file: !567, line: 147, baseType: !805, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !806, line: 509, baseType: !565)
!806 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !801, file: !567, line: 148, baseType: !110, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !567, line: 149, baseType: !809, size: 64, offset: 192)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !567, line: 149, size: 64, elements: !810)
!810 = !{!811, !3405}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !809, file: !567, line: 150, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !567, line: 388, size: 7296, elements: !814)
!814 = !{!815, !3404}
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !567, line: 389, baseType: !816, size: 7296)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !813, file: !567, line: 389, size: 7296, elements: !817)
!817 = !{!818, !936, !937, !938, !942, !943, !944, !945, !946, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !987, !995, !998, !1038, !1039, !3388, !3389, !3392, !3393, !3394, !3397, !3398, !3399, !3402, !3403}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !816, file: !567, line: 390, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !567, line: 305, size: 1472, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !828, !829, !836, !837, !842, !843, !846, !930, !931, !932, !933, !934}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !820, file: !567, line: 308, baseType: !110, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !820, file: !567, line: 309, baseType: !110, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !820, file: !567, line: 313, baseType: !819, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !820, file: !567, line: 313, baseType: !819, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !820, file: !567, line: 315, baseType: !604, size: 192, align: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !820, file: !567, line: 323, baseType: !110, size: 64, offset: 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !820, file: !567, line: 327, baseType: !812, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !820, file: !567, line: 333, baseType: !830, size: 64, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !806, line: 284, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !806, line: 284, size: 64, elements: !832)
!832 = !{!833}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !831, file: !806, line: 284, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !835, line: 19, baseType: !110)
!835 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!836 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !820, file: !567, line: 334, baseType: !110, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !820, file: !567, line: 343, baseType: !838, size: 256, offset: 704)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !820, file: !567, line: 340, size: 256, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !838, file: !567, line: 341, baseType: !604, size: 192, align: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !838, file: !567, line: 342, baseType: !110, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !820, file: !567, line: 351, baseType: !182, size: 128, offset: 960)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !820, file: !567, line: 353, baseType: !844, size: 64, offset: 1088)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !567, line: 353, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !820, file: !567, line: 356, baseType: !847, size: 64, offset: 1152)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !850)
!850 = !{!851, !855, !856, !860, !864, !904, !908, !912, !916, !917, !918, !922, !926}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !849, file: !14, line: 558, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !819}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !849, file: !14, line: 559, baseType: !852, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !849, file: !14, line: 560, baseType: !857, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!190, !819, !110}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !849, file: !14, line: 561, baseType: !861, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!190, !819}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !849, file: !14, line: 562, baseType: !865, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !567, line: 682, baseType: !7)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !884, !891, !897, !898, !899, !901, !903}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !870, file: !14, line: 509, baseType: !819, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !870, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !870, file: !14, line: 511, baseType: !123, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !870, file: !14, line: 512, baseType: !110, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !870, file: !14, line: 513, baseType: !110, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !870, file: !14, line: 514, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !806, line: 385, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 385, size: 64, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !880, file: !806, line: 385, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !835, line: 15, baseType: !110)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !870, file: !14, line: 516, baseType: !885, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !806, line: 359, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 359, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !887, file: !806, line: 359, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !835, line: 16, baseType: !110)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !870, file: !14, line: 519, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !835, line: 21, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 21, size: 64, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !893, file: !835, line: 21, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !835, line: 14, baseType: !110)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !870, file: !14, line: 521, baseType: !565, size: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !870, file: !14, line: 522, baseType: !565, size: 64, offset: 512)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !870, file: !14, line: 528, baseType: !900, size: 64, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !870, file: !14, line: 532, baseType: !902, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !870, file: !14, line: 536, baseType: !805, size: 64, offset: 704)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !849, file: !14, line: 563, baseType: !905, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!868, !869, !13}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !849, file: !14, line: 565, baseType: !909, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !869, !110, !110}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !849, file: !14, line: 567, baseType: !913, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!110, !819}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !849, file: !14, line: 571, baseType: !865, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !849, file: !14, line: 574, baseType: !865, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !849, file: !14, line: 579, baseType: !919, size: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!190, !819, !110, !107, !190, !190}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !849, file: !14, line: 585, baseType: !923, size: 64, offset: 704)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!304, !819}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !849, file: !14, line: 615, baseType: !927, size: 64, offset: 768)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!565, !819, !110}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !820, file: !567, line: 359, baseType: !110, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !820, file: !567, line: 361, baseType: !384, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !820, file: !567, line: 362, baseType: !107, size: 64, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !820, file: !567, line: 365, baseType: !155, size: 64, offset: 1408)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !820, file: !567, line: 373, baseType: !935, offset: 1472)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !567, line: 296, elements: !180)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !816, file: !567, line: 391, baseType: !600, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !816, file: !567, line: 392, baseType: !260, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !816, file: !567, line: 394, baseType: !939, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!110, !384, !110, !110, !110, !110}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !816, file: !567, line: 398, baseType: !110, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !816, file: !567, line: 399, baseType: !110, size: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !816, file: !567, line: 405, baseType: !110, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !816, file: !567, line: 406, baseType: !110, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !816, file: !567, line: 407, baseType: !947, size: 64, offset: 512)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !806, line: 286, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 286, size: 64, elements: !950)
!950 = !{!951}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !949, file: !806, line: 286, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !835, line: 18, baseType: !110)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !816, file: !567, line: 416, baseType: !591, size: 32, offset: 576)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !816, file: !567, line: 428, baseType: !591, size: 32, offset: 608)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !816, file: !567, line: 437, baseType: !591, size: 32, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !816, file: !567, line: 447, baseType: !591, size: 32, offset: 672)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !816, file: !567, line: 450, baseType: !155, size: 64, offset: 704)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !816, file: !567, line: 452, baseType: !190, size: 32, offset: 768)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !816, file: !567, line: 454, baseType: !166, offset: 800)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !816, file: !567, line: 457, baseType: !611, size: 256, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !816, file: !567, line: 459, baseType: !182, size: 128, offset: 1088)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !816, file: !567, line: 466, baseType: !110, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !816, file: !567, line: 467, baseType: !110, size: 64, offset: 1280)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !816, file: !567, line: 469, baseType: !110, size: 64, offset: 1344)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !816, file: !567, line: 470, baseType: !110, size: 64, offset: 1408)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !816, file: !567, line: 471, baseType: !157, size: 64, offset: 1472)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !816, file: !567, line: 472, baseType: !110, size: 64, offset: 1536)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !816, file: !567, line: 473, baseType: !110, size: 64, offset: 1600)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !816, file: !567, line: 474, baseType: !110, size: 64, offset: 1664)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !816, file: !567, line: 475, baseType: !110, size: 64, offset: 1728)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !816, file: !567, line: 477, baseType: !166, offset: 1792)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !816, file: !567, line: 478, baseType: !110, size: 64, offset: 1792)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !816, file: !567, line: 478, baseType: !110, size: 64, offset: 1856)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !816, file: !567, line: 478, baseType: !110, size: 64, offset: 1920)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !816, file: !567, line: 478, baseType: !110, size: 64, offset: 1984)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !816, file: !567, line: 479, baseType: !110, size: 64, offset: 2048)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !816, file: !567, line: 479, baseType: !110, size: 64, offset: 2112)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !816, file: !567, line: 479, baseType: !110, size: 64, offset: 2176)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !816, file: !567, line: 480, baseType: !110, size: 64, offset: 2240)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !816, file: !567, line: 480, baseType: !110, size: 64, offset: 2304)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !816, file: !567, line: 480, baseType: !110, size: 64, offset: 2368)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !816, file: !567, line: 480, baseType: !110, size: 64, offset: 2432)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !816, file: !567, line: 482, baseType: !984, size: 2816, offset: 2496)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2816, elements: !985)
!985 = !{!986}
!986 = !DISubrange(count: 44)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !816, file: !567, line: 488, baseType: !988, size: 256, offset: 5312)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !989, line: 60, size: 256, elements: !990)
!989 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !988, file: !989, line: 61, baseType: !992, size: 256)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 4)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !816, file: !567, line: 490, baseType: !996, size: 64, offset: 5568)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !567, line: 490, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !816, file: !567, line: 493, baseType: !999, size: 896, offset: 5632)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1000, line: 53, baseType: !1001)
!1000 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1000, line: 13, size: 896, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1009, !1010, !1011, !1012, !1032, !1033, !1034}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1001, file: !1000, line: 18, baseType: !260, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1001, file: !1000, line: 28, baseType: !157, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1001, file: !1000, line: 31, baseType: !611, size: 256, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1001, file: !1000, line: 32, baseType: !1007, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1000, line: 32, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1001, file: !1000, line: 37, baseType: !273, size: 16, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1001, file: !1000, line: 40, baseType: !151, size: 192, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1001, file: !1000, line: 41, baseType: !107, size: 64, offset: 704)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1001, file: !1000, line: 42, baseType: !1013, size: 64, offset: 768)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1016, line: 13, size: 896, elements: !1017)
!1016 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1015, file: !1016, line: 14, baseType: !107, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1015, file: !1016, line: 15, baseType: !110, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1015, file: !1016, line: 17, baseType: !110, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1015, file: !1016, line: 17, baseType: !110, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1015, file: !1016, line: 19, baseType: !106, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1015, file: !1016, line: 21, baseType: !106, size: 64, offset: 320)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1015, file: !1016, line: 22, baseType: !106, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1015, file: !1016, line: 23, baseType: !106, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1015, file: !1016, line: 24, baseType: !106, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1015, file: !1016, line: 25, baseType: !106, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1015, file: !1016, line: 26, baseType: !106, size: 64, offset: 640)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1015, file: !1016, line: 27, baseType: !106, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1015, file: !1016, line: 28, baseType: !106, size: 64, offset: 768)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1015, file: !1016, line: 29, baseType: !106, size: 64, offset: 832)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1001, file: !1000, line: 44, baseType: !591, size: 32, offset: 832)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1001, file: !1000, line: 50, baseType: !696, size: 16, offset: 864)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1001, file: !1000, line: 51, baseType: !1035, size: 16, offset: 880)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !162, line: 18, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !164, line: 23, baseType: !1037)
!1037 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !567, line: 495, baseType: !110, size: 64, offset: 6528)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !816, file: !567, line: 497, baseType: !1040, size: 64, offset: 6592)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !567, line: 381, size: 384, elements: !1042)
!1042 = !{!1043, !1044, !3387}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1041, file: !567, line: 382, baseType: !591, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1041, file: !567, line: 383, baseType: !1045, size: 128, offset: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !567, line: 376, size: 128, elements: !1046)
!1046 = !{!1047, !3385}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1045, file: !567, line: 377, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1050, line: 640, size: 48640, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !{!1052, !1058, !1059, !1060, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1077, !1095, !1106, !1191, !1192, !1193, !1204, !1205, !1207, !1208, !1209, !1210, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1294, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1332, !1334, !1335, !1336, !1348, !1349, !1350, !1351, !1352, !1353, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1377, !1382, !1566, !1567, !1568, !1569, !1573, !1576, !1579, !1582, !1585, !1589, !2953, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2999, !3000, !3001, !3002, !3003, !3008, !3009, !3010, !3013, !3014, !3017, !3020, !3023, !3026, !3058, !3061, !3062, !3141, !3142, !3145, !3146, !3149, !3150, !3151, !3155, !3156, !3157, !3170, !3171, !3172, !3182, !3187, !3188, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1049, file: !1050, line: 646, baseType: !1053, size: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1054, line: 56, size: 128, elements: !1055)
!1054 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !1054, line: 57, baseType: !110, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1053, file: !1054, line: 58, baseType: !256, size: 32, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1049, file: !1050, line: 649, baseType: !122, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1049, file: !1050, line: 657, baseType: !107, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1049, file: !1050, line: 658, baseType: !1061, size: 32, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1062, line: 113, baseType: !1063)
!1062 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1062, line: 111, size: 32, elements: !1064)
!1064 = !{!1065}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1063, file: !1062, line: 112, baseType: !591, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1049, file: !1050, line: 660, baseType: !7, size: 32, offset: 288)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1049, file: !1050, line: 661, baseType: !7, size: 32, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1049, file: !1050, line: 684, baseType: !190, size: 32, offset: 352)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1049, file: !1050, line: 686, baseType: !190, size: 32, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1049, file: !1050, line: 687, baseType: !190, size: 32, offset: 416)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1049, file: !1050, line: 688, baseType: !190, size: 32, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1049, file: !1050, line: 689, baseType: !7, size: 32, offset: 480)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1049, file: !1050, line: 691, baseType: !1074, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1050, line: 691, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1049, file: !1050, line: 692, baseType: !1078, size: 832, offset: 576)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1050, line: 451, size: 832, elements: !1079)
!1079 = !{!1080, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1078, file: !1050, line: 453, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1050, line: 325, size: 128, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1081, file: !1050, line: 326, baseType: !110, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1081, file: !1050, line: 327, baseType: !256, size: 32, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1078, file: !1050, line: 454, baseType: !604, size: 192, align: 64, offset: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1078, file: !1050, line: 455, baseType: !182, size: 128, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1078, file: !1050, line: 456, baseType: !7, size: 32, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1078, file: !1050, line: 458, baseType: !260, size: 64, offset: 512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1078, file: !1050, line: 459, baseType: !260, size: 64, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1078, file: !1050, line: 460, baseType: !260, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1078, file: !1050, line: 461, baseType: !260, size: 64, offset: 704)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1078, file: !1050, line: 463, baseType: !260, size: 64, offset: 768)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1078, file: !1050, line: 465, baseType: !1094, offset: 832)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1050, line: 415, elements: !180)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1049, file: !1050, line: 693, baseType: !1096, size: 384, offset: 1408)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1050, line: 489, size: 384, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1096, file: !1050, line: 490, baseType: !182, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1096, file: !1050, line: 491, baseType: !110, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1096, file: !1050, line: 492, baseType: !110, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1096, file: !1050, line: 493, baseType: !7, size: 32, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1096, file: !1050, line: 494, baseType: !273, size: 16, offset: 288)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1096, file: !1050, line: 495, baseType: !273, size: 16, offset: 304)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1096, file: !1050, line: 497, baseType: !1105, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1049, file: !1050, line: 697, baseType: !1107, size: 1792, offset: 1792)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1050, line: 507, size: 1792, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1188, !1189}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1107, file: !1050, line: 508, baseType: !604, size: 192, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1107, file: !1050, line: 515, baseType: !260, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1107, file: !1050, line: 516, baseType: !260, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1107, file: !1050, line: 517, baseType: !260, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1107, file: !1050, line: 518, baseType: !260, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1107, file: !1050, line: 519, baseType: !260, size: 64, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1107, file: !1050, line: 526, baseType: !161, size: 64, offset: 512)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1107, file: !1050, line: 527, baseType: !260, size: 64, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1107, file: !1050, line: 528, baseType: !7, size: 32, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1107, file: !1050, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1107, file: !1050, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1107, file: !1050, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1107, file: !1050, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1107, file: !1050, line: 563, baseType: !1123, size: 512, offset: 704)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1124)
!1124 = !{!1125, !1133, !1134, !1139, !1182, !1185, !1186, !1187}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1123, file: !20, line: 119, baseType: !1126, size: 256)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1127, line: 9, size: 256, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1128 = !{!1129, !1130}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1126, file: !1127, line: 10, baseType: !604, size: 192, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1126, file: !1127, line: 11, baseType: !1131, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1132, line: 29, baseType: !161)
!1132 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1123, file: !20, line: 120, baseType: !1131, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1123, file: !20, line: 121, baseType: !1135, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!19, !1138}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1123, file: !20, line: 122, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1142)
!1142 = !{!1143, !1163, !1164, !1167, !1172, !1173, !1177, !1181}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1141, file: !20, line: 160, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1145, file: !20, line: 215, baseType: !617)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1145, file: !20, line: 216, baseType: !7, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1145, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1145, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1145, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1145, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1145, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1145, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1145, file: !20, line: 233, baseType: !1131, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1145, file: !20, line: 234, baseType: !1138, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1145, file: !20, line: 235, baseType: !1131, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1145, file: !20, line: 236, baseType: !1138, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1145, file: !20, line: 237, baseType: !1160, size: 4096, offset: 512)
!1160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 4096, elements: !1161)
!1161 = !{!1162}
!1162 = !DISubrange(count: 8)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1141, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1141, file: !20, line: 162, baseType: !1165, size: 32, offset: 96)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !109, line: 27, baseType: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !116, line: 96, baseType: !190)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1141, file: !20, line: 163, baseType: !1168, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !229, line: 276, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !229, line: 276, size: 32, elements: !1170)
!1170 = !{!1171}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1169, file: !229, line: 276, baseType: !233, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1141, file: !20, line: 164, baseType: !1138, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1141, file: !20, line: 165, baseType: !1174, size: 128, offset: 256)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1127, line: 14, size: 128, elements: !1175)
!1175 = !{!1176}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1174, file: !1127, line: 15, baseType: !596, size: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1141, file: !20, line: 166, baseType: !1178, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1131}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1141, file: !20, line: 167, baseType: !1131, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1123, file: !20, line: 123, baseType: !1183, size: 8, offset: 448)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !162, line: 17, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !164, line: 21, baseType: !266)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1123, file: !20, line: 124, baseType: !1183, size: 8, offset: 456)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1123, file: !20, line: 125, baseType: !1183, size: 8, offset: 464)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1123, file: !20, line: 126, baseType: !1183, size: 8, offset: 472)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1107, file: !1050, line: 572, baseType: !1123, size: 512, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1107, file: !1050, line: 580, baseType: !1190, size: 64, offset: 1728)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1049, file: !1050, line: 721, baseType: !7, size: 32, offset: 3584)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1049, file: !1050, line: 722, baseType: !190, size: 32, offset: 3616)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1049, file: !1050, line: 723, baseType: !1194, size: 64, offset: 3648)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1197, line: 17, baseType: !1198)
!1197 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1197, line: 17, size: 64, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1198, file: !1197, line: 17, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !1202)
!1202 = !{!1203}
!1203 = !DISubrange(count: 1)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1049, file: !1050, line: 724, baseType: !1196, size: 64, offset: 3712)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1049, file: !1050, line: 749, baseType: !1206, offset: 3776)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1050, line: 290, elements: !180)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1049, file: !1050, line: 751, baseType: !182, size: 128, offset: 3776)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1049, file: !1050, line: 757, baseType: !812, size: 64, offset: 3904)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1049, file: !1050, line: 758, baseType: !812, size: 64, offset: 3968)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1049, file: !1050, line: 761, baseType: !1211, size: 320, offset: 4032)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !989, line: 34, size: 320, elements: !1212)
!1212 = !{!1213, !1214}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1211, file: !989, line: 35, baseType: !260, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1211, file: !989, line: 36, baseType: !1215, size: 256, offset: 64)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 256, elements: !993)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1049, file: !1050, line: 766, baseType: !190, size: 32, offset: 4352)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1049, file: !1050, line: 767, baseType: !190, size: 32, offset: 4384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1049, file: !1050, line: 768, baseType: !190, size: 32, offset: 4416)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1049, file: !1050, line: 770, baseType: !190, size: 32, offset: 4448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1049, file: !1050, line: 772, baseType: !110, size: 64, offset: 4480)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1049, file: !1050, line: 775, baseType: !7, size: 32, offset: 4544)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1049, file: !1050, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1049, file: !1050, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1049, file: !1050, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1049, file: !1050, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1049, file: !1050, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1049, file: !1050, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1049, file: !1050, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1049, file: !1050, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1049, file: !1050, line: 831, baseType: !110, size: 64, offset: 4672)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1049, file: !1050, line: 833, baseType: !1232, size: 384, offset: 4736)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1233)
!1233 = !{!1234, !1239}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1232, file: !25, line: 26, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!106, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !25, line: 27, baseType: !1240, size: 320, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !25, line: 27, size: 320, elements: !1241)
!1241 = !{!1242, !1252, !1279}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1240, file: !25, line: 36, baseType: !1243, size: 320)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !25, line: 29, size: 320, elements: !1244)
!1244 = !{!1245, !1247, !1248, !1249, !1250, !1251}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1243, file: !25, line: 30, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1243, file: !25, line: 31, baseType: !256, size: 32, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1243, file: !25, line: 32, baseType: !256, size: 32, offset: 96)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1243, file: !25, line: 33, baseType: !256, size: 32, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1243, file: !25, line: 34, baseType: !260, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1243, file: !25, line: 35, baseType: !1246, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1240, file: !25, line: 46, baseType: !1253, size: 192)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !25, line: 38, size: 192, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1278}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1253, file: !25, line: 39, baseType: !1165, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1253, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !25, line: 41, baseType: !1258, size: 64, offset: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !25, line: 41, size: 64, elements: !1259)
!1259 = !{!1260, !1268}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1258, file: !25, line: 42, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1263, line: 7, size: 128, elements: !1264)
!1263 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1267}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1262, file: !1263, line: 8, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !116, line: 93, baseType: !117)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1262, file: !1263, line: 9, baseType: !117, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1258, file: !25, line: 43, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1271, line: 7, size: 64, elements: !1272)
!1271 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !{!1273, !1277}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1270, file: !1271, line: 8, baseType: !1274, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1271, line: 5, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !162, line: 20, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !164, line: 26, baseType: !190)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1270, file: !1271, line: 9, baseType: !1275, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1253, file: !25, line: 45, baseType: !260, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1240, file: !25, line: 54, baseType: !1280, size: 256)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1240, file: !25, line: 48, size: 256, elements: !1281)
!1281 = !{!1282, !1290, !1291, !1292, !1293}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1280, file: !25, line: 49, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1285, line: 36, size: 64, elements: !1286)
!1285 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1286 = !{!1287, !1288, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1284, file: !1285, line: 37, baseType: !190, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1284, file: !1285, line: 38, baseType: !1037, size: 16, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1284, file: !1285, line: 39, baseType: !1037, size: 16, offset: 48)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1280, file: !25, line: 50, baseType: !190, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1280, file: !25, line: 51, baseType: !190, size: 32, offset: 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1280, file: !25, line: 52, baseType: !110, size: 64, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1280, file: !25, line: 53, baseType: !110, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1049, file: !1050, line: 835, baseType: !1295, size: 32, offset: 5120)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !109, line: 22, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !116, line: 28, baseType: !190)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1049, file: !1050, line: 836, baseType: !1295, size: 32, offset: 5152)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1049, file: !1050, line: 840, baseType: !110, size: 64, offset: 5184)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1049, file: !1050, line: 849, baseType: !1048, size: 64, offset: 5248)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1049, file: !1050, line: 852, baseType: !1048, size: 64, offset: 5312)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1049, file: !1050, line: 857, baseType: !182, size: 128, offset: 5376)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1049, file: !1050, line: 858, baseType: !182, size: 128, offset: 5504)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1049, file: !1050, line: 859, baseType: !1048, size: 64, offset: 5632)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1049, file: !1050, line: 867, baseType: !182, size: 128, offset: 5696)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1049, file: !1050, line: 868, baseType: !182, size: 128, offset: 5824)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1049, file: !1050, line: 871, baseType: !1307, size: 64, offset: 5952)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1315, !1316, !1323, !1324}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1308, file: !53, line: 61, baseType: !1061, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1308, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1308, file: !53, line: 63, baseType: !166, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1308, file: !53, line: 65, baseType: !1314, size: 256, offset: 64)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 256, elements: !993)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1308, file: !53, line: 66, baseType: !480, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1308, file: !53, line: 68, baseType: !1317, size: 128, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1318, line: 40, baseType: !1319)
!1318 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1318, line: 36, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1319, file: !1318, line: 37, baseType: !166)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1319, file: !1318, line: 38, baseType: !182, size: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1308, file: !53, line: 69, baseType: !206, size: 128, align: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1308, file: !53, line: 70, baseType: !1325, size: 128, offset: 640)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 128, elements: !1202)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1326, file: !53, line: 55, baseType: !190, size: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1326, file: !53, line: 56, baseType: !1330, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1049, file: !1050, line: 872, baseType: !1333, size: 512, offset: 6016)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 512, elements: !993)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1049, file: !1050, line: 873, baseType: !182, size: 128, offset: 6528)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1049, file: !1050, line: 874, baseType: !182, size: 128, offset: 6656)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1049, file: !1050, line: 876, baseType: !1337, size: 64, offset: 6784)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1339, line: 26, size: 192, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1338, file: !1339, line: 27, baseType: !7, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1338, file: !1339, line: 28, baseType: !1343, size: 128, offset: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1344, line: 43, size: 128, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !{!1346, !1347}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1343, file: !1344, line: 44, baseType: !617)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1343, file: !1344, line: 45, baseType: !182, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1049, file: !1050, line: 879, baseType: !552, size: 64, offset: 6848)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1049, file: !1050, line: 882, baseType: !552, size: 64, offset: 6912)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1049, file: !1050, line: 884, baseType: !260, size: 64, offset: 6976)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1049, file: !1050, line: 885, baseType: !260, size: 64, offset: 7040)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1049, file: !1050, line: 890, baseType: !260, size: 64, offset: 7104)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1049, file: !1050, line: 891, baseType: !1354, size: 128, offset: 7168)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1050, line: 242, size: 128, elements: !1355)
!1355 = !{!1356, !1357, !1358}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1354, file: !1050, line: 244, baseType: !260, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1354, file: !1050, line: 245, baseType: !260, size: 64, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1354, file: !1050, line: 246, baseType: !617, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1049, file: !1050, line: 900, baseType: !110, size: 64, offset: 7296)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1049, file: !1050, line: 901, baseType: !110, size: 64, offset: 7360)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1049, file: !1050, line: 904, baseType: !260, size: 64, offset: 7424)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1049, file: !1050, line: 907, baseType: !260, size: 64, offset: 7488)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1049, file: !1050, line: 910, baseType: !110, size: 64, offset: 7552)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1049, file: !1050, line: 911, baseType: !110, size: 64, offset: 7616)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1049, file: !1050, line: 914, baseType: !1366, size: 640, offset: 7680)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1367, line: 123, size: 640, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1375, !1376}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1366, file: !1367, line: 124, baseType: !1370, size: 576)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 576, elements: !496)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1367, line: 108, size: 192, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1371, file: !1367, line: 109, baseType: !260, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1371, file: !1367, line: 110, baseType: !1174, size: 128, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1366, file: !1367, line: 125, baseType: !7, size: 32, offset: 576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1366, file: !1367, line: 126, baseType: !7, size: 32, offset: 608)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1049, file: !1050, line: 917, baseType: !1378, size: 192, offset: 8320)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1367, line: 134, size: 192, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1378, file: !1367, line: 135, baseType: !206, size: 128, align: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1378, file: !1367, line: 136, baseType: !7, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1049, file: !1050, line: 923, baseType: !1383, size: 64, offset: 8512)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1385)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1386, line: 111, size: 1280, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1407, !1408, !1409, !1410, !1411, !1412, !1519, !1520, !1521, !1522, !1548, !1551, !1561}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1385, file: !1386, line: 112, baseType: !591, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1385, file: !1386, line: 120, baseType: !276, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1385, file: !1386, line: 121, baseType: !284, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1385, file: !1386, line: 122, baseType: !276, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1385, file: !1386, line: 123, baseType: !284, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1385, file: !1386, line: 124, baseType: !276, size: 32, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1385, file: !1386, line: 125, baseType: !284, size: 32, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1385, file: !1386, line: 126, baseType: !276, size: 32, offset: 224)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1385, file: !1386, line: 127, baseType: !284, size: 32, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1385, file: !1386, line: 128, baseType: !7, size: 32, offset: 288)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1385, file: !1386, line: 129, baseType: !1399, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1400, line: 26, baseType: !1401)
!1400 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1400, line: 24, size: 64, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1401, file: !1400, line: 25, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 64, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 2)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1385, file: !1386, line: 130, baseType: !1399, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1385, file: !1386, line: 131, baseType: !1399, size: 64, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1385, file: !1386, line: 132, baseType: !1399, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1385, file: !1386, line: 133, baseType: !1399, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1385, file: !1386, line: 135, baseType: !266, size: 8, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1385, file: !1386, line: 137, baseType: !1413, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1415, line: 189, size: 1664, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1418, !1421, !1426, !1427, !1430, !1431, !1436, !1437, !1438, !1439, !1441, !1442, !1443, !1444, !1445, !1483, !1504}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1414, file: !1415, line: 190, baseType: !1061, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1414, file: !1415, line: 191, baseType: !1419, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1415, line: 28, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !109, line: 98, baseType: !1275)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 192, baseType: !1422, size: 192, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 192, size: 192, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1422, file: !1415, line: 193, baseType: !182, size: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1422, file: !1415, line: 194, baseType: !604, size: 192, align: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1414, file: !1415, line: 199, baseType: !611, size: 256, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1414, file: !1415, line: 200, baseType: !1428, size: 64, offset: 512)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1415, line: 200, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1414, file: !1415, line: 201, baseType: !107, size: 64, offset: 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 202, baseType: !1432, size: 64, offset: 640)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 202, size: 64, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1432, file: !1415, line: 203, baseType: !379, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1432, file: !1415, line: 204, baseType: !379, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1414, file: !1415, line: 206, baseType: !379, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1414, file: !1415, line: 207, baseType: !276, size: 32, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1414, file: !1415, line: 208, baseType: !284, size: 32, offset: 800)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1414, file: !1415, line: 209, baseType: !1440, size: 32, offset: 832)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1415, line: 31, baseType: !399)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1414, file: !1415, line: 210, baseType: !273, size: 16, offset: 864)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1414, file: !1415, line: 211, baseType: !273, size: 16, offset: 880)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1414, file: !1415, line: 215, baseType: !1037, size: 16, offset: 896)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !1415, line: 222, baseType: !110, size: 64, offset: 960)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 239, baseType: !1446, size: 320, offset: 1024)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 239, size: 320, elements: !1447)
!1447 = !{!1448, !1475}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1446, file: !1415, line: 240, baseType: !1449, size: 320)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1415, line: 108, size: 320, elements: !1450)
!1450 = !{!1451, !1452, !1464, !1467, !1474}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1449, file: !1415, line: 110, baseType: !110, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1415, line: 111, baseType: !1453, size: 64, offset: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1415, line: 111, size: 64, elements: !1454)
!1454 = !{!1455, !1463}
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1453, file: !1415, line: 112, baseType: !1456, size: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1453, file: !1415, line: 112, size: 64, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1456, file: !1415, line: 114, baseType: !696, size: 16)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1456, file: !1415, line: 115, baseType: !1460, size: 48, offset: 16)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 48, elements: !1461)
!1461 = !{!1462}
!1462 = !DISubrange(count: 6)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1453, file: !1415, line: 121, baseType: !110, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1449, file: !1415, line: 123, baseType: !1465, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1415, line: 96, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1449, file: !1415, line: 124, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1415, line: 102, size: 192, elements: !1470)
!1470 = !{!1471, !1472, !1473}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1469, file: !1415, line: 103, baseType: !206, size: 128, align: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1469, file: !1415, line: 104, baseType: !1061, size: 32, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1469, file: !1415, line: 105, baseType: !333, size: 8, offset: 160)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1449, file: !1415, line: 125, baseType: !304, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1446, file: !1415, line: 241, baseType: !1476, size: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1446, file: !1415, line: 241, size: 320, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1476, file: !1415, line: 242, baseType: !110, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1476, file: !1415, line: 243, baseType: !110, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1476, file: !1415, line: 244, baseType: !1465, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1476, file: !1415, line: 245, baseType: !1468, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1476, file: !1415, line: 246, baseType: !140, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 254, baseType: !1484, size: 256, offset: 1344)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 254, size: 256, elements: !1485)
!1485 = !{!1486, !1492}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1484, file: !1415, line: 255, baseType: !1487, size: 256)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1415, line: 128, size: 256, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1487, file: !1415, line: 129, baseType: !107, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1487, file: !1415, line: 130, baseType: !1491, size: 256)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !993)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1415, line: 256, baseType: !1493, size: 256)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1484, file: !1415, line: 256, size: 256, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1493, file: !1415, line: 258, baseType: !182, size: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1493, file: !1415, line: 259, baseType: !1497, size: 128, offset: 128)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1498, line: 22, size: 128, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1503}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1497, file: !1498, line: 23, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1498, line: 23, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1497, file: !1498, line: 24, baseType: !110, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1414, file: !1415, line: 274, baseType: !1505, size: 64, offset: 1600)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1415, line: 170, size: 192, elements: !1507)
!1507 = !{!1508, !1517, !1518}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1506, file: !1415, line: 171, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1415, line: 165, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!190, !1413, !1513, !1515, !1413}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1466)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1487)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1506, file: !1415, line: 172, baseType: !1413, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1506, file: !1415, line: 173, baseType: !1465, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1385, file: !1386, line: 138, baseType: !1413, size: 64, offset: 768)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1385, file: !1386, line: 139, baseType: !1413, size: 64, offset: 832)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1385, file: !1386, line: 140, baseType: !1413, size: 64, offset: 896)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1385, file: !1386, line: 145, baseType: !1523, size: 64, offset: 960)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1525, line: 13, size: 896, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1524, file: !1525, line: 14, baseType: !1061, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1524, file: !1525, line: 15, baseType: !591, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1524, file: !1525, line: 16, baseType: !591, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1524, file: !1525, line: 21, baseType: !155, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1524, file: !1525, line: 27, baseType: !110, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1524, file: !1525, line: 28, baseType: !110, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1524, file: !1525, line: 29, baseType: !155, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1524, file: !1525, line: 32, baseType: !484, size: 128, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1524, file: !1525, line: 33, baseType: !276, size: 32, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1524, file: !1525, line: 37, baseType: !155, size: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1524, file: !1525, line: 44, baseType: !1538, size: 256, offset: 640)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1539, line: 15, size: 256, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1540 = !{!1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1538, file: !1539, line: 16, baseType: !617)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1538, file: !1539, line: 18, baseType: !190, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1538, file: !1539, line: 19, baseType: !190, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1538, file: !1539, line: 20, baseType: !190, size: 32, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1538, file: !1539, line: 21, baseType: !190, size: 32, offset: 96)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1538, file: !1539, line: 22, baseType: !110, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1538, file: !1539, line: 23, baseType: !110, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1385, file: !1386, line: 146, baseType: !1549, size: 64, offset: 1024)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !567, line: 516, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1385, file: !1386, line: 147, baseType: !1552, size: 64, offset: 1088)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1386, line: 25, size: 64, elements: !1554)
!1554 = !{!1555, !1556, !1557}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1553, file: !1386, line: 26, baseType: !591, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1553, file: !1386, line: 27, baseType: !190, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1553, file: !1386, line: 28, baseType: !1558, offset: 64)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, elements: !1559)
!1559 = !{!1560}
!1560 = !DISubrange(count: 0)
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !1386, line: 149, baseType: !1562, size: 128, offset: 1152)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !1386, line: 149, size: 128, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1562, file: !1386, line: 150, baseType: !190, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1562, file: !1386, line: 151, baseType: !206, size: 128, align: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1049, file: !1050, line: 926, baseType: !1383, size: 64, offset: 8576)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1049, file: !1050, line: 929, baseType: !1383, size: 64, offset: 8640)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1049, file: !1050, line: 933, baseType: !1413, size: 64, offset: 8704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1049, file: !1050, line: 943, baseType: !1570, size: 128, offset: 8768)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !1571)
!1571 = !{!1572}
!1572 = !DISubrange(count: 16)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1049, file: !1050, line: 945, baseType: !1574, size: 64, offset: 8896)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1050, line: 49, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1049, file: !1050, line: 956, baseType: !1577, size: 64, offset: 8960)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1050, line: 45, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1049, file: !1050, line: 959, baseType: !1580, size: 64, offset: 9024)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1050, line: 959, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1049, file: !1050, line: 962, baseType: !1583, size: 64, offset: 9088)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1050, line: 66, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1049, file: !1050, line: 966, baseType: !1586, size: 64, offset: 9152)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1588, line: 35, flags: DIFlagFwdDecl)
!1588 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1049, file: !1050, line: 969, baseType: !1590, size: 64, offset: 9216)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1592, line: 82, size: 7296, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1629, !1638, !1639, !1641, !1642, !1643, !2909, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2939, !2940, !2947, !2948, !2949, !2950, !2951, !2952}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1591, file: !1592, line: 83, baseType: !1061, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1591, file: !1592, line: 84, baseType: !591, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1591, file: !1592, line: 85, baseType: !190, size: 32, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1591, file: !1592, line: 86, baseType: !182, size: 128, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1591, file: !1592, line: 88, baseType: !1317, size: 128, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1591, file: !1592, line: 91, baseType: !1048, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1591, file: !1592, line: 94, baseType: !1601, size: 192, offset: 448)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1602, line: 30, size: 192, elements: !1603)
!1602 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1601, file: !1602, line: 31, baseType: !182, size: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1601, file: !1602, line: 32, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1607, line: 25, baseType: !1608)
!1607 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1607, line: 23, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1608, file: !1607, line: 24, baseType: !1201, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1591, file: !1592, line: 97, baseType: !480, size: 64, offset: 640)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1591, file: !1592, line: 100, baseType: !190, size: 32, offset: 704)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1591, file: !1592, line: 106, baseType: !190, size: 32, offset: 736)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1591, file: !1592, line: 107, baseType: !1048, size: 64, offset: 768)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1591, file: !1592, line: 110, baseType: !190, size: 32, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1591, file: !1592, line: 111, baseType: !7, size: 32, offset: 864)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1591, file: !1592, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1591, file: !1592, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1591, file: !1592, line: 128, baseType: !190, size: 32, offset: 928)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1591, file: !1592, line: 129, baseType: !182, size: 128, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1591, file: !1592, line: 132, baseType: !1123, size: 512, offset: 1088)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1591, file: !1592, line: 133, baseType: !1131, size: 64, offset: 1600)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1591, file: !1592, line: 140, baseType: !1624, size: 256, offset: 1664)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 256, elements: !1405)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1592, line: 38, size: 128, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1625, file: !1592, line: 39, baseType: !260, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1625, file: !1592, line: 40, baseType: !260, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1591, file: !1592, line: 146, baseType: !1630, size: 192, offset: 1920)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1592, line: 66, size: 192, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1630, file: !1592, line: 67, baseType: !1633, size: 192)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1592, line: 47, size: 192, elements: !1634)
!1634 = !{!1635, !1636, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1633, file: !1592, line: 48, baseType: !157, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1633, file: !1592, line: 49, baseType: !157, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1633, file: !1592, line: 50, baseType: !157, size: 64, offset: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1591, file: !1592, line: 150, baseType: !1366, size: 640, offset: 2112)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1591, file: !1592, line: 153, baseType: !1640, size: 256, offset: 2752)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 256, elements: !993)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1591, file: !1592, line: 159, baseType: !1307, size: 64, offset: 3008)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1591, file: !1592, line: 162, baseType: !190, size: 32, offset: 3072)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1591, file: !1592, line: 164, baseType: !1644, size: 64, offset: 3136)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1646, line: 285, size: 5056, elements: !1647)
!1646 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!1647 = !{!1648, !1649, !1654, !2316, !2808, !2809, !2810, !2819, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1645, file: !1646, line: 286, baseType: !190, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1645, file: !1646, line: 287, baseType: !1650, size: 32, offset: 32)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1651, line: 19, size: 32, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1650, file: !1651, line: 20, baseType: !1061, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1645, file: !1646, line: 288, baseType: !1655, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !1657)
!1657 = !{!1658, !1964, !1965, !1968, !1969, !2020, !2093, !2094, !2095, !2096, !2097, !2106, !2222, !2235, !2238, !2239, !2243, !2245, !2246, !2247, !2251, !2257, !2258, !2261, !2265, !2268, !2269, !2270, !2271, !2272, !2304, !2305, !2306, !2309, !2312, !2313, !2314, !2315}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1656, file: !73, line: 462, baseType: !1659, size: 512)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1660, line: 64, size: 512, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1663, !1664, !1666, !1708, !1810, !1958, !1959, !1960, !1961, !1962, !1963}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !1660, line: 65, baseType: !304, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1659, file: !1660, line: 66, baseType: !182, size: 128, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1659, file: !1660, line: 67, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1659, file: !1660, line: 68, baseType: !1667, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1660, line: 192, size: 704, elements: !1669)
!1669 = !{!1670, !1671, !1672, !1673}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1668, file: !1660, line: 193, baseType: !182, size: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1668, file: !1660, line: 194, baseType: !166, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1668, file: !1660, line: 195, baseType: !1659, size: 512, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1668, file: !1660, line: 196, baseType: !1674, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1660, line: 156, size: 192, elements: !1677)
!1677 = !{!1678, !1683, !1688}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1676, file: !1660, line: 157, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!190, !1667, !1665}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1676, file: !1660, line: 158, baseType: !1684, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!304, !1667, !1665}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1676, file: !1660, line: 159, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!190, !1667, !1665, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1660, line: 148, size: 20736, elements: !1695)
!1695 = !{!1696, !1698, !1702, !1703, !1707}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1694, file: !1660, line: 149, baseType: !1697, size: 192)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 192, elements: !496)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1694, file: !1660, line: 150, baseType: !1699, size: 4096, offset: 192)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 4096, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1694, file: !1660, line: 151, baseType: !190, size: 32, offset: 4288)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1694, file: !1660, line: 152, baseType: !1704, size: 16384, offset: 4320)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16384, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 2048)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1694, file: !1660, line: 153, baseType: !190, size: 32, offset: 20704)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1659, file: !1660, line: 69, baseType: !1709, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1660, line: 138, size: 448, elements: !1711)
!1711 = !{!1712, !1716, !1735, !1737, !1770, !1800, !1804}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1710, file: !1660, line: 139, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !1665}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1710, file: !1660, line: 140, baseType: !1717, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1720, line: 230, size: 128, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1731}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1719, file: !1720, line: 231, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!418, !1665, !1726, !140}
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1720, line: 30, size: 128, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1727, file: !1720, line: 31, baseType: !304, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1727, file: !1720, line: 32, baseType: !272, size: 16, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1719, file: !1720, line: 232, baseType: !1732, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!418, !1665, !1726, !304, !142}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1710, file: !1660, line: 141, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1710, file: !1660, line: 142, baseType: !1738, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1720, line: 84, size: 320, elements: !1742)
!1742 = !{!1743, !1744, !1748, !1767, !1768}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1741, file: !1720, line: 85, baseType: !304, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1741, file: !1720, line: 86, baseType: !1745, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!272, !1665, !1726, !190}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1741, file: !1720, line: 88, baseType: !1749, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!272, !1665, !1752, !190}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1720, line: 168, size: 448, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1762, !1763}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1753, file: !1720, line: 169, baseType: !1727, size: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1753, file: !1720, line: 170, baseType: !142, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1753, file: !1720, line: 171, baseType: !107, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1753, file: !1720, line: 172, baseType: !1759, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!418, !384, !1665, !1752, !140, !114, !142}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1753, file: !1720, line: 174, baseType: !1759, size: 64, offset: 320)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1753, file: !1720, line: 176, baseType: !1764, size: 64, offset: 384)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!190, !384, !1665, !1752, !819}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1741, file: !1720, line: 90, baseType: !1736, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1741, file: !1720, line: 91, baseType: !1769, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1710, file: !1660, line: 143, baseType: !1771, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1774, !1665}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !1777)
!1777 = !{!1778, !1779, !1783, !1787, !1795, !1799}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !61, line: 40, baseType: !60, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1776, file: !61, line: 41, baseType: !1780, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!333}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1776, file: !61, line: 42, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!107}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1776, file: !61, line: 43, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!1791, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1776, file: !61, line: 44, baseType: !1796, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1791}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1776, file: !61, line: 45, baseType: !311, size: 64, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1710, file: !1660, line: 144, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!1791, !1665}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1710, file: !1660, line: 145, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1665, !1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1659, file: !1660, line: 70, baseType: !1811, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1813, line: 123, size: 1024, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1951, !1952, !1953, !1954, !1955}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1812, file: !1813, line: 124, baseType: !591, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1812, file: !1813, line: 125, baseType: !591, size: 32, offset: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1812, file: !1813, line: 135, baseType: !1811, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1813, line: 136, baseType: !304, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1812, file: !1813, line: 138, baseType: !604, size: 192, align: 64, offset: 192)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1812, file: !1813, line: 140, baseType: !1791, size: 64, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1812, file: !1813, line: 141, baseType: !7, size: 32, offset: 448)
!1822 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1813, line: 142, baseType: !1823, size: 256, offset: 512)
!1823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1812, file: !1813, line: 142, size: 256, elements: !1824)
!1824 = !{!1825, !1871, !1875}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1823, file: !1813, line: 143, baseType: !1826, size: 192)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1813, line: 91, size: 192, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1826, file: !1813, line: 92, baseType: !110, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1826, file: !1813, line: 94, baseType: !600, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1826, file: !1813, line: 100, baseType: !1831, size: 64, offset: 128)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1813, line: 180, size: 704, elements: !1833)
!1833 = !{!1834, !1835, !1836, !1843, !1844, !1845, !1869, !1870}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1832, file: !1813, line: 182, baseType: !1811, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1832, file: !1813, line: 183, baseType: !7, size: 32, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1832, file: !1813, line: 186, baseType: !1837, size: 192, offset: 128)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1838, line: 19, size: 192, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1837, file: !1838, line: 20, baseType: !583, size: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1837, file: !1838, line: 21, baseType: !7, size: 32, offset: 128)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1837, file: !1838, line: 22, baseType: !7, size: 32, offset: 160)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1832, file: !1813, line: 187, baseType: !256, size: 32, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1832, file: !1813, line: 188, baseType: !256, size: 32, offset: 352)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1832, file: !1813, line: 189, baseType: !1846, size: 64, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1813, line: 168, size: 320, elements: !1848)
!1848 = !{!1849, !1853, !1857, !1861, !1865}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1847, file: !1813, line: 169, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!190, !136, !1831}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1847, file: !1813, line: 171, baseType: !1854, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!190, !1811, !304, !272}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1847, file: !1813, line: 173, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!190, !1811}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1847, file: !1813, line: 174, baseType: !1862, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!190, !1811, !1811, !304}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1847, file: !1813, line: 176, baseType: !1866, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!190, !136, !1811, !1831}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1832, file: !1813, line: 192, baseType: !182, size: 128, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1832, file: !1813, line: 194, baseType: !1317, size: 128, offset: 576)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1823, file: !1813, line: 144, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1813, line: 103, size: 64, elements: !1873)
!1873 = !{!1874}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1872, file: !1813, line: 104, baseType: !1811, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1823, file: !1813, line: 145, baseType: !1876, size: 256)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1813, line: 107, size: 256, elements: !1877)
!1877 = !{!1878, !1946, !1949, !1950}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1876, file: !1813, line: 108, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1813, line: 217, size: 768, elements: !1882)
!1882 = !{!1883, !1903, !1907, !1911, !1912, !1916, !1920, !1924, !1925, !1926, !1927, !1942}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1881, file: !1813, line: 222, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!190, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1813, line: 197, size: 1088, elements: !1889)
!1889 = !{!1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1888, file: !1813, line: 199, baseType: !1811, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1888, file: !1813, line: 200, baseType: !384, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1888, file: !1813, line: 201, baseType: !136, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1888, file: !1813, line: 202, baseType: !107, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1888, file: !1813, line: 205, baseType: !151, size: 192, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1888, file: !1813, line: 206, baseType: !151, size: 192, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1888, file: !1813, line: 207, baseType: !190, size: 32, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1888, file: !1813, line: 208, baseType: !182, size: 128, offset: 704)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1888, file: !1813, line: 209, baseType: !140, size: 64, offset: 832)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1888, file: !1813, line: 211, baseType: !142, size: 64, offset: 896)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1888, file: !1813, line: 212, baseType: !333, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1888, file: !1813, line: 213, baseType: !333, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1888, file: !1813, line: 214, baseType: !847, size: 64, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1881, file: !1813, line: 223, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !1887}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1881, file: !1813, line: 236, baseType: !1908, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!190, !136, !107}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1881, file: !1813, line: 238, baseType: !133, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1881, file: !1813, line: 239, baseType: !1913, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!107, !136, !107, !113}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1881, file: !1813, line: 240, baseType: !1917, size: 64, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !136, !107}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1881, file: !1813, line: 242, baseType: !1921, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!418, !1887, !140, !142, !114}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1881, file: !1813, line: 252, baseType: !142, size: 64, offset: 448)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1881, file: !1813, line: 259, baseType: !333, size: 8, offset: 512)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1881, file: !1813, line: 260, baseType: !1921, size: 64, offset: 576)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1881, file: !1813, line: 263, baseType: !1928, size: 64, offset: 640)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!111, !1887, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1933, line: 43, size: 128, elements: !1934)
!1933 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1934 = !{!1935, !1941}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1932, file: !1933, line: 44, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1933, line: 37, baseType: !1937)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !384, !1940, !1931}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1932, file: !1933, line: 45, baseType: !111, size: 32, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1881, file: !1813, line: 266, baseType: !1943, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!190, !1887, !819}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1876, file: !1813, line: 109, baseType: !1947, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1813, line: 31, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1876, file: !1813, line: 110, baseType: !114, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1876, file: !1813, line: 111, baseType: !1811, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1812, file: !1813, line: 148, baseType: !107, size: 64, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1812, file: !1813, line: 154, baseType: !260, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1813, line: 156, baseType: !273, size: 16, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1812, file: !1813, line: 157, baseType: !272, size: 16, offset: 912)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1812, file: !1813, line: 158, baseType: !1956, size: 64, offset: 960)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1813, line: 32, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1659, file: !1660, line: 71, baseType: !1650, size: 32, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1659, file: !1660, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1659, file: !1660, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1659, file: !1660, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1659, file: !1660, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1659, file: !1660, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1656, file: !73, line: 463, baseType: !1655, size: 64, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1656, file: !73, line: 465, baseType: !1966, size: 64, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1656, file: !73, line: 467, baseType: !304, size: 64, offset: 640)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1656, file: !73, line: 468, baseType: !1970, size: 64, offset: 704)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1980, !1985, !1989}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1972, file: !73, line: 88, baseType: !304, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1972, file: !73, line: 89, baseType: !1738, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1972, file: !73, line: 90, baseType: !1977, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!190, !1655, !1693}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1972, file: !73, line: 91, baseType: !1981, size: 64, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!140, !1655, !1984, !1808, !1809}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1972, file: !73, line: 93, baseType: !1986, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{null, !1655}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1972, file: !73, line: 95, baseType: !1990, size: 64, offset: 320)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !1993)
!1993 = !{!1994, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1992, file: !80, line: 279, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!190, !1655}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1992, file: !80, line: 280, baseType: !1986, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1992, file: !80, line: 281, baseType: !1995, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1992, file: !80, line: 282, baseType: !1995, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1992, file: !80, line: 283, baseType: !1995, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1992, file: !80, line: 284, baseType: !1995, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1992, file: !80, line: 285, baseType: !1995, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1992, file: !80, line: 286, baseType: !1995, size: 64, offset: 448)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1992, file: !80, line: 287, baseType: !1995, size: 64, offset: 512)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1992, file: !80, line: 288, baseType: !1995, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1992, file: !80, line: 289, baseType: !1995, size: 64, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1992, file: !80, line: 290, baseType: !1995, size: 64, offset: 704)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1992, file: !80, line: 291, baseType: !1995, size: 64, offset: 768)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1992, file: !80, line: 292, baseType: !1995, size: 64, offset: 832)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1992, file: !80, line: 293, baseType: !1995, size: 64, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1992, file: !80, line: 294, baseType: !1995, size: 64, offset: 960)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1992, file: !80, line: 295, baseType: !1995, size: 64, offset: 1024)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1992, file: !80, line: 296, baseType: !1995, size: 64, offset: 1088)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1992, file: !80, line: 297, baseType: !1995, size: 64, offset: 1152)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1992, file: !80, line: 298, baseType: !1995, size: 64, offset: 1216)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1992, file: !80, line: 299, baseType: !1995, size: 64, offset: 1280)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1992, file: !80, line: 300, baseType: !1995, size: 64, offset: 1344)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1992, file: !80, line: 301, baseType: !1995, size: 64, offset: 1408)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1656, file: !73, line: 470, baseType: !2021, size: 64, offset: 768)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2023, line: 82, size: 1408, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2030, !2031, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2088, !2091, !2092}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2022, file: !2023, line: 83, baseType: !304, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2022, file: !2023, line: 84, baseType: !304, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2022, file: !2023, line: 85, baseType: !1655, size: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2022, file: !2023, line: 86, baseType: !1738, size: 64, offset: 192)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2022, file: !2023, line: 87, baseType: !1738, size: 64, offset: 256)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2022, file: !2023, line: 88, baseType: !1738, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2022, file: !2023, line: 90, baseType: !2032, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!190, !1655, !2035}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !2037)
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2048, !2052, !2053, !2054, !2055, !2056, !2064, !2065, !2066, !2067, !2068, !2069}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2036, file: !67, line: 96, baseType: !304, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2036, file: !67, line: 97, baseType: !2021, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2036, file: !67, line: 99, baseType: !475, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2036, file: !67, line: 100, baseType: !304, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2036, file: !67, line: 102, baseType: !333, size: 8, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2036, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2036, file: !67, line: 105, baseType: !2045, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2036, file: !67, line: 106, baseType: !2049, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2051)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2036, file: !67, line: 108, baseType: !1995, size: 64, offset: 448)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2036, file: !67, line: 109, baseType: !1986, size: 64, offset: 512)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2036, file: !67, line: 110, baseType: !1995, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2036, file: !67, line: 111, baseType: !1986, size: 64, offset: 640)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2036, file: !67, line: 112, baseType: !2057, size: 64, offset: 704)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!190, !1655, !2060}
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !2061)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !2062)
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2061, file: !80, line: 51, baseType: !190, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2036, file: !67, line: 113, baseType: !1995, size: 64, offset: 768)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2036, file: !67, line: 114, baseType: !1738, size: 64, offset: 832)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2036, file: !67, line: 115, baseType: !1738, size: 64, offset: 896)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2036, file: !67, line: 117, baseType: !1990, size: 64, offset: 960)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2036, file: !67, line: 118, baseType: !1986, size: 64, offset: 1024)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2036, file: !67, line: 120, baseType: !2070, size: 64, offset: 1088)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2022, file: !2023, line: 91, baseType: !1977, size: 64, offset: 448)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2022, file: !2023, line: 92, baseType: !1995, size: 64, offset: 512)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2022, file: !2023, line: 93, baseType: !1986, size: 64, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2022, file: !2023, line: 94, baseType: !1995, size: 64, offset: 640)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2022, file: !2023, line: 95, baseType: !1986, size: 64, offset: 704)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2022, file: !2023, line: 97, baseType: !1995, size: 64, offset: 768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2022, file: !2023, line: 98, baseType: !1995, size: 64, offset: 832)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2022, file: !2023, line: 100, baseType: !2057, size: 64, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2022, file: !2023, line: 101, baseType: !1995, size: 64, offset: 960)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2022, file: !2023, line: 103, baseType: !1995, size: 64, offset: 1024)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2022, file: !2023, line: 105, baseType: !1995, size: 64, offset: 1088)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2022, file: !2023, line: 107, baseType: !1990, size: 64, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2022, file: !2023, line: 109, baseType: !2085, size: 64, offset: 1216)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2023, line: 109, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2022, file: !2023, line: 111, baseType: !2089, size: 64, offset: 1280)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2023, line: 111, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2022, file: !2023, line: 112, baseType: !490, offset: 1344)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2022, file: !2023, line: 114, baseType: !333, size: 8, offset: 1344)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1656, file: !73, line: 471, baseType: !2035, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1656, file: !73, line: 473, baseType: !107, size: 64, offset: 896)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1656, file: !73, line: 475, baseType: !107, size: 64, offset: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1656, file: !73, line: 480, baseType: !151, size: 192, offset: 1024)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1656, file: !73, line: 484, baseType: !2098, size: 576, offset: 1216)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2098, file: !73, line: 362, baseType: !182, size: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2098, file: !73, line: 363, baseType: !182, size: 128, offset: 128)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2098, file: !73, line: 364, baseType: !182, size: 128, offset: 256)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2098, file: !73, line: 365, baseType: !182, size: 128, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2098, file: !73, line: 366, baseType: !333, size: 8, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2098, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1656, file: !73, line: 485, baseType: !2107, size: 2304, offset: 1792)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2215, !2219}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2107, file: !80, line: 566, baseType: !2060, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2107, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2107, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2107, file: !80, line: 569, baseType: !333, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2107, file: !80, line: 570, baseType: !333, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2107, file: !80, line: 571, baseType: !333, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2107, file: !80, line: 572, baseType: !333, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2107, file: !80, line: 573, baseType: !333, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2107, file: !80, line: 574, baseType: !333, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2107, file: !80, line: 575, baseType: !333, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2107, file: !80, line: 576, baseType: !333, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2107, file: !80, line: 577, baseType: !256, size: 32, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2107, file: !80, line: 578, baseType: !166, offset: 96)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2107, file: !80, line: 580, baseType: !182, size: 128, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2107, file: !80, line: 581, baseType: !1338, size: 192, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2107, file: !80, line: 582, baseType: !2125, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2127, line: 43, size: 1472, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2136, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2126, file: !2127, line: 44, baseType: !304, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2126, file: !2127, line: 45, baseType: !190, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2126, file: !2127, line: 46, baseType: !182, size: 128, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2126, file: !2127, line: 47, baseType: !166, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2126, file: !2127, line: 48, baseType: !2134, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2126, file: !2127, line: 49, baseType: !2137, size: 320, offset: 320)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2138, line: 11, size: 320, elements: !2139)
!2138 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2141, !2142, !2147}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2137, file: !2138, line: 16, baseType: !484, size: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2137, file: !2138, line: 17, baseType: !110, size: 64, offset: 128)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2137, file: !2138, line: 18, baseType: !2143, size: 64, offset: 192)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{null, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2137, file: !2138, line: 19, baseType: !256, size: 32, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2126, file: !2127, line: 50, baseType: !110, size: 64, offset: 640)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2126, file: !2127, line: 51, baseType: !1131, size: 64, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2126, file: !2127, line: 52, baseType: !1131, size: 64, offset: 768)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2126, file: !2127, line: 53, baseType: !1131, size: 64, offset: 832)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2126, file: !2127, line: 54, baseType: !1131, size: 64, offset: 896)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2126, file: !2127, line: 55, baseType: !1131, size: 64, offset: 960)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2126, file: !2127, line: 56, baseType: !110, size: 64, offset: 1024)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2126, file: !2127, line: 57, baseType: !110, size: 64, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2126, file: !2127, line: 58, baseType: !110, size: 64, offset: 1152)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2126, file: !2127, line: 59, baseType: !110, size: 64, offset: 1216)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2126, file: !2127, line: 60, baseType: !110, size: 64, offset: 1280)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2126, file: !2127, line: 61, baseType: !1655, size: 64, offset: 1344)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2126, file: !2127, line: 62, baseType: !333, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2126, file: !2127, line: 63, baseType: !333, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2107, file: !80, line: 583, baseType: !333, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2107, file: !80, line: 584, baseType: !333, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2107, file: !80, line: 585, baseType: !333, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2107, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2107, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2107, file: !80, line: 592, baseType: !1123, size: 512, offset: 576)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2107, file: !80, line: 593, baseType: !260, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2107, file: !80, line: 594, baseType: !2170, size: 256, offset: 1152)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2171, line: 102, size: 256, elements: !2172)
!2171 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2170, file: !2171, line: 103, baseType: !155, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2170, file: !2171, line: 104, baseType: !182, size: 128, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2170, file: !2171, line: 105, baseType: !2176, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2171, line: 21, baseType: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2107, file: !80, line: 595, baseType: !1317, size: 128, offset: 1408)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2107, file: !80, line: 596, baseType: !2134, size: 64, offset: 1536)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2107, file: !80, line: 597, baseType: !591, size: 32, offset: 1600)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2107, file: !80, line: 598, baseType: !591, size: 32, offset: 1632)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2107, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2107, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2107, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2107, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2107, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2107, file: !80, line: 604, baseType: !333, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2107, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2107, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2107, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2107, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2107, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2107, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2107, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2107, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2107, file: !80, line: 613, baseType: !190, size: 32, offset: 1792)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2107, file: !80, line: 614, baseType: !190, size: 32, offset: 1824)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2107, file: !80, line: 615, baseType: !260, size: 64, offset: 1856)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2107, file: !80, line: 616, baseType: !260, size: 64, offset: 1920)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2107, file: !80, line: 617, baseType: !260, size: 64, offset: 1984)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2107, file: !80, line: 618, baseType: !260, size: 64, offset: 2048)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2107, file: !80, line: 620, baseType: !2206, size: 64, offset: 2112)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2207, file: !80, line: 537, baseType: !166)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2207, file: !80, line: 538, baseType: !7, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2207, file: !80, line: 540, baseType: !182, size: 128, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2207, file: !80, line: 543, baseType: !2213, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2107, file: !80, line: 621, baseType: !2216, size: 64, offset: 2176)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !1655, !1275}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2107, file: !80, line: 622, baseType: !2220, size: 64, offset: 2240)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1656, file: !73, line: 486, baseType: !2223, size: 64, offset: 4096)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2232, !2233, !2234}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2224, file: !80, line: 643, baseType: !1992, size: 1472)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2224, file: !80, line: 644, baseType: !1995, size: 64, offset: 1472)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2224, file: !80, line: 645, baseType: !2229, size: 64, offset: 1536)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !1655, !333}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2224, file: !80, line: 646, baseType: !1995, size: 64, offset: 1600)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2224, file: !80, line: 647, baseType: !1986, size: 64, offset: 1664)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2224, file: !80, line: 648, baseType: !1986, size: 64, offset: 1728)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1656, file: !73, line: 493, baseType: !2236, size: 64, offset: 4160)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1656, file: !73, line: 499, baseType: !182, size: 128, offset: 4224)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1656, file: !73, line: 502, baseType: !2240, size: 64, offset: 4352)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2242)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1656, file: !73, line: 504, baseType: !2244, size: 64, offset: 4416)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1656, file: !73, line: 505, baseType: !260, size: 64, offset: 4480)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1656, file: !73, line: 510, baseType: !260, size: 64, offset: 4544)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1656, file: !73, line: 511, baseType: !2248, size: 64, offset: 4608)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1656, file: !73, line: 513, baseType: !2252, size: 64, offset: 4672)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !2254)
!2254 = !{!2255, !2256}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2253, file: !73, line: 293, baseType: !7, size: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2253, file: !73, line: 294, baseType: !110, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1656, file: !73, line: 515, baseType: !182, size: 128, offset: 4736)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1656, file: !73, line: 526, baseType: !2259, offset: 4864)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2260, line: 5, elements: !180)
!2260 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1656, file: !73, line: 528, baseType: !2262, size: 64, offset: 4864)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2264, line: 14, flags: DIFlagFwdDecl)
!2264 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1656, file: !73, line: 529, baseType: !2266, size: 64, offset: 4928)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2023, line: 22, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1656, file: !73, line: 534, baseType: !356, size: 32, offset: 4992)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1656, file: !73, line: 535, baseType: !256, size: 32, offset: 5024)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1656, file: !73, line: 537, baseType: !166, offset: 5056)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1656, file: !73, line: 538, baseType: !182, size: 128, offset: 5056)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1656, file: !73, line: 540, baseType: !2273, size: 64, offset: 5184)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2275, line: 54, size: 960, elements: !2276)
!2275 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2276 = !{!2277, !2278, !2279, !2280, !2281, !2282, !2283, !2287, !2291, !2292, !2293, !2294, !2298, !2302, !2303}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2274, file: !2275, line: 55, baseType: !304, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2274, file: !2275, line: 56, baseType: !475, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2274, file: !2275, line: 58, baseType: !1738, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2274, file: !2275, line: 59, baseType: !1738, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2274, file: !2275, line: 60, baseType: !1665, size: 64, offset: 256)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2274, file: !2275, line: 62, baseType: !1977, size: 64, offset: 320)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2274, file: !2275, line: 63, baseType: !2284, size: 64, offset: 384)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!140, !1655, !1984}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2274, file: !2275, line: 65, baseType: !2288, size: 64, offset: 448)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !2273}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2274, file: !2275, line: 66, baseType: !1986, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2274, file: !2275, line: 68, baseType: !1995, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2274, file: !2275, line: 70, baseType: !1774, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2274, file: !2275, line: 71, baseType: !2295, size: 64, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!1791, !1655}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2274, file: !2275, line: 73, baseType: !2299, size: 64, offset: 768)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !1655, !1808, !1809}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2274, file: !2275, line: 75, baseType: !1990, size: 64, offset: 832)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2274, file: !2275, line: 77, baseType: !2089, size: 64, offset: 896)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1656, file: !73, line: 541, baseType: !1738, size: 64, offset: 5248)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1656, file: !73, line: 543, baseType: !1986, size: 64, offset: 5312)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1656, file: !73, line: 544, baseType: !2307, size: 64, offset: 5376)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1656, file: !73, line: 545, baseType: !2310, size: 64, offset: 5440)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1656, file: !73, line: 547, baseType: !333, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1656, file: !73, line: 548, baseType: !333, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1656, file: !73, line: 549, baseType: !333, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1656, file: !73, line: 550, baseType: !333, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1645, file: !1646, line: 289, baseType: !2317, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !2319, line: 302, size: 1472, elements: !2320)
!2319 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!2320 = !{!2321, !2322, !2323, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2581, !2582, !2586, !2587, !2589, !2678, !2681, !2682, !2807}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2318, file: !2319, line: 303, baseType: !190, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2318, file: !2319, line: 304, baseType: !1650, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !2318, file: !2319, line: 305, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2327, line: 14, size: 832, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329, !2330, !2331, !2551, !2552, !2553}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2326, file: !2327, line: 15, baseType: !1659, size: 512)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2326, file: !2327, line: 16, baseType: !475, size: 64, offset: 512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2326, file: !2327, line: 17, baseType: !2332, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2335)
!2335 = !{!2336, !2337, !2341, !2345, !2349, !2350, !2351, !2355, !2368, !2369, !2373, !2377, !2378, !2382, !2383, !2387, !2392, !2393, !2397, !2401, !2509, !2513, !2514, !2518, !2519, !2525, !2529, !2534, !2538, !2542, !2546, !2550}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2334, file: !44, line: 1823, baseType: !475, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2334, file: !44, line: 1824, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!114, !384, !114, !190}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2334, file: !44, line: 1825, baseType: !2342, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!418, !384, !140, !142, !113}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2334, file: !44, line: 1826, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!418, !384, !304, !142, !113}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2334, file: !44, line: 1827, baseType: !681, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2334, file: !44, line: 1828, baseType: !681, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2334, file: !44, line: 1829, baseType: !2352, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!190, !684, !333}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2334, file: !44, line: 1830, baseType: !2356, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!190, !384, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2361)
!2361 = !{!2362, !2367}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2360, file: !44, line: 1777, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2364)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!190, !2359, !304, !190, !114, !260, !7}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2360, file: !44, line: 1778, baseType: !114, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2334, file: !44, line: 1831, baseType: !2356, size: 64, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2334, file: !44, line: 1832, baseType: !2370, size: 64, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!111, !384, !1931}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2334, file: !44, line: 1833, baseType: !2374, size: 64, offset: 640)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!106, !384, !7, !110}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2334, file: !44, line: 1834, baseType: !2374, size: 64, offset: 704)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2334, file: !44, line: 1835, baseType: !2379, size: 64, offset: 768)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!190, !384, !819}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2334, file: !44, line: 1836, baseType: !110, size: 64, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2334, file: !44, line: 1837, baseType: !2384, size: 64, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!190, !268, !384}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2334, file: !44, line: 1838, baseType: !2388, size: 64, offset: 960)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!190, !384, !2391}
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !107)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2334, file: !44, line: 1839, baseType: !2384, size: 64, offset: 1024)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2334, file: !44, line: 1840, baseType: !2394, size: 64, offset: 1088)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!190, !384, !114, !114, !190}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2334, file: !44, line: 1841, baseType: !2398, size: 64, offset: 1152)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!190, !190, !384, !190}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2334, file: !44, line: 1842, baseType: !2402, size: 64, offset: 1216)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!190, !384, !190, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2439, !2440, !2441, !2454, !2485}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2406, file: !44, line: 1063, baseType: !2405, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2406, file: !44, line: 1064, baseType: !182, size: 128, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2406, file: !44, line: 1065, baseType: !484, size: 128, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2406, file: !44, line: 1066, baseType: !182, size: 128, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2406, file: !44, line: 1069, baseType: !182, size: 128, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2406, file: !44, line: 1072, baseType: !2391, size: 64, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2406, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2406, file: !44, line: 1074, baseType: !266, size: 8, offset: 672)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2406, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2406, file: !44, line: 1076, baseType: !190, size: 32, offset: 736)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2406, file: !44, line: 1077, baseType: !1317, size: 128, offset: 768)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2406, file: !44, line: 1078, baseType: !384, size: 64, offset: 896)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2406, file: !44, line: 1079, baseType: !114, size: 64, offset: 960)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2406, file: !44, line: 1080, baseType: !114, size: 64, offset: 1024)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2406, file: !44, line: 1082, baseType: !2423, size: 64, offset: 1088)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2425)
!2425 = !{!2426, !2434, !2435, !2436, !2437, !2438}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2424, file: !44, line: 1315, baseType: !2427)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2428, line: 20, baseType: !2429)
!2428 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2428, line: 11, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2429, file: !2428, line: 12, baseType: !2432)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !178, line: 33, baseType: !2433)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !178, line: 31, elements: !180)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2424, file: !44, line: 1316, baseType: !190, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2424, file: !44, line: 1317, baseType: !190, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2424, file: !44, line: 1318, baseType: !2423, size: 64, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2424, file: !44, line: 1319, baseType: !384, size: 64, offset: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2424, file: !44, line: 1320, baseType: !206, size: 128, align: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2406, file: !44, line: 1084, baseType: !110, size: 64, offset: 1152)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2406, file: !44, line: 1085, baseType: !110, size: 64, offset: 1216)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2406, file: !44, line: 1087, baseType: !2442, size: 64, offset: 1280)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2444)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2445)
!2445 = !{!2446, !2450}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2444, file: !44, line: 1012, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{null, !2405, !2405}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2444, file: !44, line: 1013, baseType: !2451, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !2405}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2406, file: !44, line: 1088, baseType: !2455, size: 64, offset: 1344)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2457)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2458)
!2458 = !{!2459, !2463, !2467, !2468, !2472, !2476, !2480, !2484}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2457, file: !44, line: 1017, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!2391, !2391}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2457, file: !44, line: 1018, baseType: !2464, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !2391}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2457, file: !44, line: 1019, baseType: !2451, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2457, file: !44, line: 1020, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!190, !2405, !190}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2457, file: !44, line: 1021, baseType: !2473, size: 64, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!333, !2405}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2457, file: !44, line: 1022, baseType: !2477, size: 64, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!190, !2405, !190, !185}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2457, file: !44, line: 1023, baseType: !2481, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !2405, !658}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2457, file: !44, line: 1024, baseType: !2473, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2406, file: !44, line: 1097, baseType: !2486, size: 256, offset: 1408)
!2486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2406, file: !44, line: 1089, size: 256, elements: !2487)
!2487 = !{!2488, !2497, !2503}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2486, file: !44, line: 1090, baseType: !2489, size: 256)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2490, line: 10, size: 256, elements: !2491)
!2490 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2491 = !{!2492, !2493, !2496}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2489, file: !2490, line: 11, baseType: !256, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2489, file: !2490, line: 12, baseType: !2494, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2490, line: 5, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2489, file: !2490, line: 13, baseType: !182, size: 128, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2486, file: !44, line: 1091, baseType: !2498, size: 64)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2490, line: 17, size: 64, elements: !2499)
!2499 = !{!2500}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2498, file: !2490, line: 18, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2490, line: 16, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2486, file: !44, line: 1096, baseType: !2504, size: 192)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2486, file: !44, line: 1092, size: 192, elements: !2505)
!2505 = !{!2506, !2507, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2504, file: !44, line: 1093, baseType: !182, size: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2504, file: !44, line: 1094, baseType: !190, size: 32, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2504, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2334, file: !44, line: 1843, baseType: !2510, size: 64, offset: 1280)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!418, !384, !565, !190, !142, !113, !190}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2334, file: !44, line: 1844, baseType: !939, size: 64, offset: 1344)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2334, file: !44, line: 1845, baseType: !2515, size: 64, offset: 1408)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!190, !190}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2334, file: !44, line: 1846, baseType: !2402, size: 64, offset: 1472)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2334, file: !44, line: 1847, baseType: !2520, size: 64, offset: 1536)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!418, !2523, !384, !113, !142, !7}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1050, line: 53, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2334, file: !44, line: 1848, baseType: !2526, size: 64, offset: 1600)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!418, !384, !113, !2523, !142, !7}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2334, file: !44, line: 1849, baseType: !2530, size: 64, offset: 1664)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!190, !384, !106, !2533, !658}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2334, file: !44, line: 1850, baseType: !2535, size: 64, offset: 1728)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!106, !384, !190, !114, !114}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2334, file: !44, line: 1852, baseType: !2539, size: 64, offset: 1792)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !136, !384}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2334, file: !44, line: 1856, baseType: !2543, size: 64, offset: 1856)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!418, !384, !114, !384, !114, !142, !7}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2334, file: !44, line: 1858, baseType: !2547, size: 64, offset: 1920)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!114, !384, !114, !384, !114, !114, !7}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2334, file: !44, line: 1861, baseType: !2394, size: 64, offset: 1984)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2326, file: !2327, line: 18, baseType: !182, size: 128, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2326, file: !2327, line: 19, baseType: !356, size: 32, offset: 768)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2326, file: !2327, line: 20, baseType: !7, size: 32, offset: 800)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2318, file: !2319, line: 306, baseType: !475, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !2318, file: !2319, line: 307, baseType: !304, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2318, file: !2319, line: 308, baseType: !304, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !2318, file: !2319, line: 309, baseType: !190, size: 32, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2318, file: !2319, line: 310, baseType: !190, size: 32, offset: 352)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !2318, file: !2319, line: 311, baseType: !190, size: 32, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2318, file: !2319, line: 312, baseType: !7, size: 32, offset: 416)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2318, file: !2319, line: 313, baseType: !1037, size: 16, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !2318, file: !2319, line: 314, baseType: !1037, size: 16, offset: 464)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !2318, file: !2319, line: 315, baseType: !2564, size: 352, offset: 480)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2565, line: 32, size: 352, elements: !2566)
!2565 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!2566 = !{!2567, !2569, !2570, !2571, !2572, !2574, !2578, !2580}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2564, file: !2565, line: 33, baseType: !2568, size: 32)
!2568 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2565, line: 9, baseType: !7)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2564, file: !2565, line: 34, baseType: !2568, size: 32, offset: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2564, file: !2565, line: 35, baseType: !2568, size: 32, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2564, file: !2565, line: 36, baseType: !2568, size: 32, offset: 96)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2564, file: !2565, line: 37, baseType: !2573, size: 8, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2565, line: 7, baseType: !266)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2564, file: !2565, line: 38, baseType: !2575, size: 152, offset: 136)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2573, size: 152, elements: !2576)
!2576 = !{!2577}
!2577 = !DISubrange(count: 19)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2564, file: !2565, line: 39, baseType: !2579, size: 32, offset: 288)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2565, line: 8, baseType: !7)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2564, file: !2565, line: 40, baseType: !2579, size: 32, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2318, file: !2319, line: 316, baseType: !110, size: 64, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !2318, file: !2319, line: 317, baseType: !2583, size: 64, offset: 896)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2585, line: 123, flags: DIFlagFwdDecl)
!2585 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2318, file: !2319, line: 318, baseType: !2317, size: 64, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !2318, file: !2319, line: 323, baseType: !2588, size: 64, offset: 1024)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !2318, file: !2319, line: 324, baseType: !2590, size: 64, offset: 1088)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !1646, line: 230, size: 2432, elements: !2593)
!2593 = !{!2594, !2626, !2627, !2628, !2650, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2673, !2674, !2675, !2676, !2677}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2592, file: !1646, line: 231, baseType: !2595, size: 1024)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !1646, line: 85, size: 1024, elements: !2596)
!2596 = !{!2597, !2615, !2616, !2617, !2618, !2619, !2623, !2624, !2625}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2595, file: !1646, line: 86, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !1646, line: 58, size: 256, elements: !2600)
!2600 = !{!2601, !2606, !2607, !2608, !2609, !2610, !2611}
!2601 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !1646, line: 59, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2599, file: !1646, line: 59, size: 64, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2602, file: !1646, line: 60, baseType: !2598, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2602, file: !1646, line: 61, baseType: !200, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2599, file: !1646, line: 63, baseType: !190, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2599, file: !1646, line: 64, baseType: !190, size: 32, offset: 96)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2599, file: !1646, line: 65, baseType: !190, size: 32, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2599, file: !1646, line: 66, baseType: !190, size: 32, offset: 160)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !1646, line: 67, baseType: !190, size: 32, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2599, file: !1646, line: 69, baseType: !2612, offset: 256)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !2613)
!2613 = !{!2614}
!2614 = !DISubrange(count: -1)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2595, file: !1646, line: 87, baseType: !2170, size: 256, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2595, file: !1646, line: 88, baseType: !151, size: 192, offset: 320)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2595, file: !1646, line: 89, baseType: !591, size: 32, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2595, file: !1646, line: 90, baseType: !2599, size: 256, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2595, file: !1646, line: 91, baseType: !2620, size: 64, offset: 832)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !201, line: 54, size: 64, elements: !2621)
!2621 = !{!2622}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2620, file: !201, line: 55, baseType: !204, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2595, file: !1646, line: 92, baseType: !591, size: 32, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2595, file: !1646, line: 93, baseType: !190, size: 32, offset: 928)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2595, file: !1646, line: 94, baseType: !2598, size: 64, offset: 960)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2592, file: !1646, line: 232, baseType: !1644, size: 64, offset: 1024)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2592, file: !1646, line: 233, baseType: !1644, size: 64, offset: 1088)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2592, file: !1646, line: 234, baseType: !2629, size: 64, offset: 1152)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !1646, line: 205, size: 320, elements: !2632)
!2632 = !{!2633, !2637, !2641, !2645, !2649}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2631, file: !1646, line: 207, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!190, !2591}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2631, file: !1646, line: 209, baseType: !2638, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2591, !190}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2631, file: !1646, line: 213, baseType: !2642, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{null, !2591}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2631, file: !1646, line: 218, baseType: !2646, size: 64, offset: 192)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!190, !2591, !1644}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2631, file: !1646, line: 220, baseType: !2642, size: 64, offset: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2592, file: !1646, line: 235, baseType: !2651, size: 64, offset: 1216)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !1646, line: 223, size: 128, elements: !2654)
!2654 = !{!2655, !2659}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2653, file: !1646, line: 224, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!190, !2591, !264, !264, !142}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2653, file: !1646, line: 225, baseType: !2642, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2592, file: !1646, line: 236, baseType: !166, offset: 1280)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2592, file: !1646, line: 237, baseType: !190, size: 32, offset: 1280)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2592, file: !1646, line: 238, baseType: !190, size: 32, offset: 1312)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2592, file: !1646, line: 239, baseType: !1317, size: 128, offset: 1344)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2592, file: !1646, line: 240, baseType: !1317, size: 128, offset: 1472)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !1646, line: 241, baseType: !110, size: 64, offset: 1600)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2592, file: !1646, line: 242, baseType: !110, size: 64, offset: 1664)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2592, file: !1646, line: 243, baseType: !266, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !2592, file: !1646, line: 244, baseType: !266, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2592, file: !1646, line: 245, baseType: !151, size: 192, offset: 1792)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2592, file: !1646, line: 246, baseType: !151, size: 192, offset: 1984)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2592, file: !1646, line: 247, baseType: !2672, size: 64, offset: 2176)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2592, file: !1646, line: 248, baseType: !7, size: 32, offset: 2240)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2592, file: !1646, line: 249, baseType: !7, size: 32, offset: 2272)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2592, file: !1646, line: 250, baseType: !190, size: 32, offset: 2304)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2592, file: !1646, line: 253, baseType: !1650, size: 32, offset: 2336)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2592, file: !1646, line: 254, baseType: !107, size: 64, offset: 2368)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2318, file: !2319, line: 325, baseType: !2679, size: 64, offset: 1152)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !2318, file: !2319, line: 326, baseType: !107, size: 64, offset: 1216)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2318, file: !2319, line: 332, baseType: !2683, size: 64, offset: 1280)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2685)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !2319, line: 254, size: 2176, elements: !2686)
!2686 = !{!2687, !2691, !2695, !2699, !2703, !2707, !2711, !2712, !2716, !2720, !2721, !2725, !2726, !2730, !2734, !2738, !2739, !2740, !2741, !2742, !2743, !2747, !2748, !2749, !2753, !2757, !2758, !2762, !2774, !2789, !2795, !2801, !2802, !2806}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2685, file: !2319, line: 255, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!1644, !2317, !384, !190}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2685, file: !2319, line: 257, baseType: !2692, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!190, !2317, !1644}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2685, file: !2319, line: 258, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{null, !2317, !1644}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2685, file: !2319, line: 259, baseType: !2700, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!190, !1644, !384}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2685, file: !2319, line: 260, baseType: !2704, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !1644, !384}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2685, file: !2319, line: 261, baseType: !2708, size: 64, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{null, !1644}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2685, file: !2319, line: 262, baseType: !2708, size: 64, offset: 384)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2685, file: !2319, line: 263, baseType: !2713, size: 64, offset: 448)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!190, !1644, !264, !190}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2685, file: !2319, line: 265, baseType: !2717, size: 64, offset: 512)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!190, !1644, !266}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2685, file: !2319, line: 266, baseType: !2708, size: 64, offset: 576)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2685, file: !2319, line: 267, baseType: !2722, size: 64, offset: 640)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!190, !1644}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2685, file: !2319, line: 268, baseType: !2722, size: 64, offset: 704)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2685, file: !2319, line: 269, baseType: !2727, size: 64, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!190, !1644, !7, !110}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2685, file: !2319, line: 271, baseType: !2731, size: 64, offset: 832)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!106, !1644, !7, !110}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2685, file: !2319, line: 273, baseType: !2735, size: 64, offset: 896)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{null, !1644, !2680}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2685, file: !2319, line: 274, baseType: !2708, size: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2685, file: !2319, line: 275, baseType: !2708, size: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2685, file: !2319, line: 276, baseType: !2708, size: 64, offset: 1088)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2685, file: !2319, line: 277, baseType: !2708, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2685, file: !2319, line: 278, baseType: !2708, size: 64, offset: 1216)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2685, file: !2319, line: 279, baseType: !2744, size: 64, offset: 1280)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!190, !1644, !190}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2685, file: !2319, line: 280, baseType: !2708, size: 64, offset: 1344)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2685, file: !2319, line: 281, baseType: !2708, size: 64, offset: 1408)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2685, file: !2319, line: 282, baseType: !2750, size: 64, offset: 1472)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !1644, !190}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2685, file: !2319, line: 283, baseType: !2754, size: 64, offset: 1536)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{null, !1644, !120}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2685, file: !2319, line: 284, baseType: !2722, size: 64, offset: 1600)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2685, file: !2319, line: 285, baseType: !2759, size: 64, offset: 1664)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!190, !1644, !7, !7}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2685, file: !2319, line: 287, baseType: !2763, size: 64, offset: 1728)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!190, !1644, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2768, line: 15, size: 64, elements: !2769)
!2768 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!2769 = !{!2770, !2771, !2772, !2773}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2767, file: !2768, line: 16, baseType: !273, size: 16)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2767, file: !2768, line: 17, baseType: !273, size: 16, offset: 16)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2767, file: !2768, line: 18, baseType: !273, size: 16, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2767, file: !2768, line: 19, baseType: !273, size: 16, offset: 48)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !2685, file: !2319, line: 288, baseType: !2775, size: 64, offset: 1792)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!190, !1644, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !2780, line: 10, size: 128, elements: !2781)
!2780 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!2781 = !{!2782, !2783, !2784, !2788}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !2779, file: !2780, line: 12, baseType: !697, size: 16)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !2779, file: !2780, line: 13, baseType: !697, size: 16, offset: 16)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !2779, file: !2780, line: 14, baseType: !2785, size: 80, offset: 32)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 80, elements: !2786)
!2786 = !{!2787}
!2787 = !DISubrange(count: 5)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !2779, file: !2780, line: 15, baseType: !697, size: 16, offset: 112)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2685, file: !2319, line: 289, baseType: !2790, size: 64, offset: 1856)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!190, !1644, !2793}
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !2319, line: 251, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2685, file: !2319, line: 291, baseType: !2796, size: 64, offset: 1920)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!190, !1644, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !2319, line: 252, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2685, file: !2319, line: 292, baseType: !2796, size: 64, offset: 1984)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2685, file: !2319, line: 293, baseType: !2803, size: 64, offset: 2048)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !1644, !136}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2685, file: !2319, line: 299, baseType: !1908, size: 64, offset: 2112)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !2318, file: !2319, line: 333, baseType: !182, size: 128, offset: 1344)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1645, file: !1646, line: 290, baseType: !2683, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1645, file: !1646, line: 291, baseType: !190, size: 32, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !1645, file: !1646, line: 294, baseType: !2811, size: 384, offset: 320)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2812, line: 133, size: 384, elements: !2813)
!2812 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!2813 = !{!2814, !2815, !2816, !2817, !2818}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2811, file: !2812, line: 134, baseType: !155, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2811, file: !2812, line: 135, baseType: !617, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2811, file: !2812, line: 136, baseType: !7, size: 32, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2811, file: !2812, line: 137, baseType: !182, size: 128, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2811, file: !2812, line: 138, baseType: !182, size: 128, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !1645, file: !1646, line: 295, baseType: !2820, size: 64, offset: 704)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2812, line: 215, size: 128, elements: !2822)
!2822 = !{!2823, !2868}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2821, file: !2812, line: 216, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2812, line: 175, size: 1216, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2838, !2842, !2846, !2847, !2848, !2852, !2853, !2857, !2858, !2862, !2866, !2867}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2825, file: !2812, line: 176, baseType: !190, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2825, file: !2812, line: 177, baseType: !140, size: 64, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2825, file: !2812, line: 178, baseType: !190, size: 32, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2812, line: 179, baseType: !190, size: 32, offset: 160)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2825, file: !2812, line: 184, baseType: !2722, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2825, file: !2812, line: 185, baseType: !2708, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2825, file: !2812, line: 186, baseType: !2708, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2825, file: !2812, line: 187, baseType: !2835, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!418, !1644, !384, !2672, !142}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2825, file: !2812, line: 189, baseType: !2839, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!418, !1644, !384, !264, !142}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2825, file: !2812, line: 191, baseType: !2843, size: 64, offset: 512)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!190, !1644, !384, !7, !110}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2825, file: !2812, line: 193, baseType: !2843, size: 64, offset: 576)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2825, file: !2812, line: 195, baseType: !2735, size: 64, offset: 640)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2825, file: !2812, line: 196, baseType: !2849, size: 64, offset: 704)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!111, !1644, !384, !1931}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2825, file: !2812, line: 198, baseType: !2722, size: 64, offset: 768)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2825, file: !2812, line: 203, baseType: !2854, size: 64, offset: 832)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !1644, !264, !140, !190}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2825, file: !2812, line: 205, baseType: !2708, size: 64, offset: 896)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2825, file: !2812, line: 206, baseType: !2859, size: 64, offset: 960)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !1644, !7}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2825, file: !2812, line: 207, baseType: !2863, size: 64, offset: 1024)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!190, !1644, !264, !140, !190}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2825, file: !2812, line: 210, baseType: !475, size: 64, offset: 1088)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2825, file: !2812, line: 212, baseType: !190, size: 32, offset: 1152)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2821, file: !2812, line: 217, baseType: !1644, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !1645, file: !1646, line: 297, baseType: !151, size: 192, offset: 768)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !1645, file: !1646, line: 298, baseType: !151, size: 192, offset: 960)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !1645, file: !1646, line: 299, baseType: !151, size: 192, offset: 1152)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !1645, file: !1646, line: 300, baseType: !611, size: 256, offset: 1344)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !1645, file: !1646, line: 301, baseType: !151, size: 192, offset: 1600)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !1645, file: !1646, line: 302, baseType: !166, offset: 1792)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !1645, file: !1646, line: 303, baseType: !166, offset: 1792)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1645, file: !1646, line: 305, baseType: !2564, size: 352, offset: 1792)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !1645, file: !1646, line: 305, baseType: !2564, size: 352, offset: 2144)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !1645, file: !1646, line: 306, baseType: !2778, size: 64, offset: 2496)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1645, file: !1646, line: 307, baseType: !2880, size: 512, offset: 2560)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 512, elements: !1700)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !1645, file: !1646, line: 308, baseType: !1307, size: 64, offset: 3072)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1645, file: !1646, line: 313, baseType: !1307, size: 64, offset: 3136)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1645, file: !1646, line: 314, baseType: !110, size: 64, offset: 3200)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1645, file: !1646, line: 315, baseType: !190, size: 32, offset: 3264)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !1645, file: !1646, line: 316, baseType: !2767, size: 64, offset: 3296)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !1645, file: !1646, line: 317, baseType: !110, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !1645, file: !1646, line: 318, baseType: !110, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1645, file: !1646, line: 319, baseType: !110, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !1645, file: !1646, line: 320, baseType: !190, size: 32, offset: 3456)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !1645, file: !1646, line: 321, baseType: !110, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !1645, file: !1646, line: 322, baseType: !110, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !1645, file: !1646, line: 323, baseType: !110, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !1645, file: !1646, line: 324, baseType: !7, size: 32, offset: 3584)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !1645, file: !1646, line: 325, baseType: !190, size: 32, offset: 3616)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1645, file: !1646, line: 327, baseType: !1644, size: 64, offset: 3648)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1645, file: !1646, line: 328, baseType: !2423, size: 64, offset: 3712)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !1645, file: !1646, line: 329, baseType: !1317, size: 128, offset: 3776)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !1645, file: !1646, line: 330, baseType: !1317, size: 128, offset: 3904)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !1645, file: !1646, line: 331, baseType: !2170, size: 256, offset: 4032)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !1645, file: !1646, line: 332, baseType: !107, size: 64, offset: 4288)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1645, file: !1646, line: 333, baseType: !107, size: 64, offset: 4352)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1645, file: !1646, line: 334, baseType: !166, offset: 4416)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !1645, file: !1646, line: 335, baseType: !182, size: 128, offset: 4416)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !1645, file: !1646, line: 339, baseType: !190, size: 32, offset: 4544)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1645, file: !1646, line: 340, baseType: !2672, size: 64, offset: 4608)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !1645, file: !1646, line: 341, baseType: !190, size: 32, offset: 4672)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !1645, file: !1646, line: 343, baseType: !2170, size: 256, offset: 4736)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1645, file: !1646, line: 344, baseType: !2591, size: 64, offset: 4992)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1591, file: !1592, line: 175, baseType: !2910, size: 32, offset: 3200)
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !229, line: 805, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !229, line: 798, size: 32, elements: !2912)
!2912 = !{!2913, !2914}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2911, file: !229, line: 803, baseType: !228, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2911, file: !229, line: 804, baseType: !166, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1591, file: !1592, line: 176, baseType: !260, size: 64, offset: 3264)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1591, file: !1592, line: 176, baseType: !260, size: 64, offset: 3328)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1591, file: !1592, line: 176, baseType: !260, size: 64, offset: 3392)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1591, file: !1592, line: 176, baseType: !260, size: 64, offset: 3456)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1591, file: !1592, line: 177, baseType: !260, size: 64, offset: 3520)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1591, file: !1592, line: 178, baseType: !260, size: 64, offset: 3584)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1591, file: !1592, line: 179, baseType: !1354, size: 128, offset: 3648)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1591, file: !1592, line: 180, baseType: !110, size: 64, offset: 3776)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1591, file: !1592, line: 180, baseType: !110, size: 64, offset: 3840)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1591, file: !1592, line: 180, baseType: !110, size: 64, offset: 3904)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1591, file: !1592, line: 180, baseType: !110, size: 64, offset: 3968)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1591, file: !1592, line: 181, baseType: !110, size: 64, offset: 4032)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1591, file: !1592, line: 181, baseType: !110, size: 64, offset: 4096)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1591, file: !1592, line: 181, baseType: !110, size: 64, offset: 4160)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1591, file: !1592, line: 181, baseType: !110, size: 64, offset: 4224)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1591, file: !1592, line: 182, baseType: !110, size: 64, offset: 4288)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1591, file: !1592, line: 182, baseType: !110, size: 64, offset: 4352)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1591, file: !1592, line: 182, baseType: !110, size: 64, offset: 4416)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1591, file: !1592, line: 182, baseType: !110, size: 64, offset: 4480)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1591, file: !1592, line: 183, baseType: !110, size: 64, offset: 4544)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1591, file: !1592, line: 183, baseType: !110, size: 64, offset: 4608)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1591, file: !1592, line: 184, baseType: !2937, offset: 4672)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2938, line: 12, elements: !180)
!2938 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1591, file: !1592, line: 192, baseType: !262, size: 64, offset: 4672)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1591, file: !1592, line: 203, baseType: !2941, size: 2048, offset: 4736)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2942, size: 2048, elements: !1571)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2943, line: 43, size: 128, elements: !2944)
!2943 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2942, file: !2943, line: 44, baseType: !144, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2942, file: !2943, line: 45, baseType: !144, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1591, file: !1592, line: 220, baseType: !333, size: 8, offset: 6784)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1591, file: !1592, line: 221, baseType: !1037, size: 16, offset: 6800)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1591, file: !1592, line: 222, baseType: !1037, size: 16, offset: 6816)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1591, file: !1592, line: 224, baseType: !812, size: 64, offset: 6848)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1591, file: !1592, line: 227, baseType: !151, size: 192, offset: 6912)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1591, file: !1592, line: 233, baseType: !151, size: 192, offset: 7104)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1049, file: !1050, line: 970, baseType: !2954, size: 64, offset: 9280)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1592, line: 20, size: 16576, elements: !2956)
!2956 = !{!2957, !2958, !2959, !2960}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2955, file: !1592, line: 21, baseType: !166)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2955, file: !1592, line: 22, baseType: !1061, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2955, file: !1592, line: 23, baseType: !1317, size: 128, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2955, file: !1592, line: 24, baseType: !2961, size: 16384, offset: 192)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2962, size: 16384, elements: !1700)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1602, line: 49, size: 256, elements: !2963)
!2963 = !{!2964}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2962, file: !1602, line: 50, baseType: !2965, size: 256)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1602, line: 35, size: 256, elements: !2966)
!2966 = !{!2967, !2974, !2975, !2981}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2965, file: !1602, line: 37, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2969, line: 19, baseType: !2970)
!2969 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2969, line: 18, baseType: !2972)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !190}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2965, file: !1602, line: 38, baseType: !110, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2965, file: !1602, line: 44, baseType: !2976, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2969, line: 22, baseType: !2977)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2969, line: 21, baseType: !2979)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2965, file: !1602, line: 46, baseType: !1606, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1049, file: !1050, line: 971, baseType: !1606, size: 64, offset: 9344)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1049, file: !1050, line: 972, baseType: !1606, size: 64, offset: 9408)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1049, file: !1050, line: 974, baseType: !1606, size: 64, offset: 9472)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1049, file: !1050, line: 975, baseType: !1601, size: 192, offset: 9536)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1049, file: !1050, line: 976, baseType: !110, size: 64, offset: 9728)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1049, file: !1050, line: 977, baseType: !142, size: 64, offset: 9792)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1049, file: !1050, line: 978, baseType: !7, size: 32, offset: 9856)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1049, file: !1050, line: 980, baseType: !209, size: 64, offset: 9920)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1049, file: !1050, line: 989, baseType: !2991, size: 128, offset: 9984)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2992, line: 35, size: 128, elements: !2993)
!2992 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2993 = !{!2994, !2995, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2991, file: !2992, line: 36, baseType: !190, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2991, file: !2992, line: 37, baseType: !591, size: 32, offset: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2991, file: !2992, line: 38, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2992, line: 23, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1049, file: !1050, line: 992, baseType: !260, size: 64, offset: 10112)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1049, file: !1050, line: 993, baseType: !260, size: 64, offset: 10176)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1049, file: !1050, line: 996, baseType: !166, offset: 10240)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1049, file: !1050, line: 999, baseType: !617, offset: 10240)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1049, file: !1050, line: 1001, baseType: !3004, size: 64, offset: 10240)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1050, line: 636, size: 64, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3004, file: !1050, line: 637, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1049, file: !1050, line: 1005, baseType: !596, size: 128, offset: 10304)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1049, file: !1050, line: 1007, baseType: !1048, size: 64, offset: 10432)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1049, file: !1050, line: 1009, baseType: !3011, size: 64, offset: 10496)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1050, line: 1009, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1049, file: !1050, line: 1043, baseType: !107, size: 64, offset: 10560)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1049, file: !1050, line: 1046, baseType: !3015, size: 64, offset: 10624)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1050, line: 41, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1049, file: !1050, line: 1050, baseType: !3018, size: 64, offset: 10688)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1050, line: 42, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1049, file: !1050, line: 1054, baseType: !3021, size: 64, offset: 10752)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1050, line: 55, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1049, file: !1050, line: 1056, baseType: !3024, size: 64, offset: 10816)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1050, line: 40, flags: DIFlagFwdDecl)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1049, file: !1050, line: 1058, baseType: !3027, size: 64, offset: 10880)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3029, line: 99, size: 704, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036, !3037, !3056, !3057}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3028, file: !3029, line: 100, baseType: !155, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3028, file: !3029, line: 101, baseType: !591, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3028, file: !3029, line: 102, baseType: !591, size: 32, offset: 96)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3028, file: !3029, line: 105, baseType: !166, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3028, file: !3029, line: 107, baseType: !273, size: 16, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3028, file: !3029, line: 109, baseType: !583, size: 128, offset: 192)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3028, file: !3029, line: 110, baseType: !3038, size: 64, offset: 320)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3029, line: 73, size: 448, elements: !3040)
!3040 = !{!3041, !3044, !3045, !3050, !3055}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3039, file: !3029, line: 74, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3029, line: 74, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3039, file: !3029, line: 75, baseType: !3027, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, scope: !3039, file: !3029, line: 83, baseType: !3046, size: 128, offset: 128)
!3046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3039, file: !3029, line: 83, size: 128, elements: !3047)
!3047 = !{!3048, !3049}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3046, file: !3029, line: 84, baseType: !182, size: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3046, file: !3029, line: 85, baseType: !772, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !3039, file: !3029, line: 87, baseType: !3051, size: 128, offset: 256)
!3051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3039, file: !3029, line: 87, size: 128, elements: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3051, file: !3029, line: 88, baseType: !484, size: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3051, file: !3029, line: 89, baseType: !206, size: 128, align: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3039, file: !3029, line: 92, baseType: !7, size: 32, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3028, file: !3029, line: 111, baseType: !480, size: 64, offset: 384)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3028, file: !3029, line: 113, baseType: !2170, size: 256, offset: 448)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1049, file: !1050, line: 1061, baseType: !3059, size: 64, offset: 10944)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1050, line: 43, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1049, file: !1050, line: 1064, baseType: !110, size: 64, offset: 11008)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1049, file: !1050, line: 1065, baseType: !3063, size: 64, offset: 11072)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1602, line: 14, baseType: !3065)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1602, line: 12, size: 384, elements: !3066)
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !1602, line: 13, baseType: !3068, size: 384)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !1602, line: 13, size: 384, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3068, file: !1602, line: 13, baseType: !190, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3068, file: !1602, line: 13, baseType: !190, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3068, file: !1602, line: 13, baseType: !190, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3068, file: !1602, line: 13, baseType: !3074, size: 256, offset: 128)
!3074 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3075, line: 32, size: 256, elements: !3076)
!3075 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3076 = !{!3077, !3082, !3095, !3101, !3110, !3130, !3135}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3074, file: !3075, line: 37, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3075, line: 34, size: 64, elements: !3079)
!3079 = !{!3080, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3078, file: !3075, line: 35, baseType: !1296, size: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3078, file: !3075, line: 36, baseType: !282, size: 32, offset: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3074, file: !3075, line: 45, baseType: !3083, size: 192)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3075, line: 40, size: 192, elements: !3084)
!3084 = !{!3085, !3087, !3088, !3094}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3083, file: !3075, line: 41, baseType: !3086, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !116, line: 95, baseType: !190)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3083, file: !3075, line: 42, baseType: !190, size: 32, offset: 32)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3083, file: !3075, line: 43, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3075, line: 11, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3075, line: 8, size: 64, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3090, file: !3075, line: 9, baseType: !190, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3090, file: !3075, line: 10, baseType: !107, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3083, file: !3075, line: 44, baseType: !190, size: 32, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3074, file: !3075, line: 52, baseType: !3096, size: 128)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3075, line: 48, size: 128, elements: !3097)
!3097 = !{!3098, !3099, !3100}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3096, file: !3075, line: 49, baseType: !1296, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3096, file: !3075, line: 50, baseType: !282, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3096, file: !3075, line: 51, baseType: !3089, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3074, file: !3075, line: 61, baseType: !3102, size: 256)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3075, line: 55, size: 256, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107, !3109}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3102, file: !3075, line: 56, baseType: !1296, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3102, file: !3075, line: 57, baseType: !282, size: 32, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3102, file: !3075, line: 58, baseType: !190, size: 32, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3102, file: !3075, line: 59, baseType: !3108, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !116, line: 94, baseType: !420)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3102, file: !3075, line: 60, baseType: !3108, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3074, file: !3075, line: 95, baseType: !3111, size: 256)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3075, line: 64, size: 256, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3111, file: !3075, line: 65, baseType: !107, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3111, file: !3075, line: 77, baseType: !3115, size: 192, offset: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3111, file: !3075, line: 77, size: 192, elements: !3116)
!3116 = !{!3117, !3118, !3125}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3115, file: !3075, line: 82, baseType: !1037, size: 16)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3115, file: !3075, line: 88, baseType: !3119, size: 192)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3115, file: !3075, line: 84, size: 192, elements: !3120)
!3120 = !{!3121, !3123, !3124}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3119, file: !3075, line: 85, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !1161)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3119, file: !3075, line: 86, baseType: !107, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3119, file: !3075, line: 87, baseType: !107, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3115, file: !3075, line: 93, baseType: !3126, size: 96)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3115, file: !3075, line: 90, size: 96, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3126, file: !3075, line: 91, baseType: !3122, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3126, file: !3075, line: 92, baseType: !257, size: 32, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3074, file: !3075, line: 101, baseType: !3131, size: 128)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3075, line: 98, size: 128, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3131, file: !3075, line: 99, baseType: !106, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3131, file: !3075, line: 100, baseType: !190, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3074, file: !3075, line: 108, baseType: !3136, size: 128)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !3075, line: 104, size: 128, elements: !3137)
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3136, file: !3075, line: 105, baseType: !107, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3136, file: !3075, line: 106, baseType: !190, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3136, file: !3075, line: 107, baseType: !7, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1049, file: !1050, line: 1067, baseType: !2937, offset: 11136)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1049, file: !1050, line: 1099, baseType: !3143, size: 64, offset: 11136)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1050, line: 56, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1049, file: !1050, line: 1103, baseType: !182, size: 128, offset: 11200)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1049, file: !1050, line: 1104, baseType: !3147, size: 64, offset: 11328)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1050, line: 46, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1049, file: !1050, line: 1105, baseType: !151, size: 192, offset: 11392)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1049, file: !1050, line: 1106, baseType: !7, size: 32, offset: 11584)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1049, file: !1050, line: 1109, baseType: !3152, size: 128, offset: 11648)
!3152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3153, size: 128, elements: !1405)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1050, line: 51, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1049, file: !1050, line: 1110, baseType: !151, size: 192, offset: 11776)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1049, file: !1050, line: 1111, baseType: !182, size: 128, offset: 11968)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1049, file: !1050, line: 1173, baseType: !3158, size: 64, offset: 12096)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3160, line: 62, size: 256, align: 256, elements: !3161)
!3160 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3161 = !{!3162, !3163, !3164, !3169}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3159, file: !3160, line: 75, baseType: !257, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3159, file: !3160, line: 90, baseType: !257, size: 32, offset: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3159, file: !3160, line: 124, baseType: !3165, size: 64, offset: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3159, file: !3160, line: 109, size: 64, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3165, file: !3160, line: 110, baseType: !261, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3165, file: !3160, line: 112, baseType: !261, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3159, file: !3160, line: 144, baseType: !257, size: 32, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1049, file: !1050, line: 1174, baseType: !256, size: 32, offset: 12160)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1049, file: !1050, line: 1179, baseType: !110, size: 64, offset: 12224)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1049, file: !1050, line: 1182, baseType: !3173, size: 128, offset: 12288)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !989, line: 76, size: 128, elements: !3174)
!3174 = !{!3175, !3180, !3181}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3173, file: !989, line: 85, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3177, line: 7, size: 64, elements: !3178)
!3177 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3178 = !{!3179}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3176, file: !3177, line: 12, baseType: !1198, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3173, file: !989, line: 88, baseType: !333, size: 8, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3173, file: !989, line: 95, baseType: !333, size: 8, offset: 72)
!3182 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !1050, line: 1184, baseType: !3183, size: 128, offset: 12416)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1049, file: !1050, line: 1184, size: 128, elements: !3184)
!3184 = !{!3185, !3186}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3183, file: !1050, line: 1185, baseType: !1061, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3183, file: !1050, line: 1186, baseType: !206, size: 128, align: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1049, file: !1050, line: 1190, baseType: !2523, size: 64, offset: 12544)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1049, file: !1050, line: 1192, baseType: !3189, size: 128, offset: 12608)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !989, line: 64, size: 128, elements: !3190)
!3190 = !{!3191, !3192, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3189, file: !989, line: 65, baseType: !565, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3189, file: !989, line: 67, baseType: !257, size: 32, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3189, file: !989, line: 68, baseType: !257, size: 32, offset: 96)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1049, file: !1050, line: 1206, baseType: !190, size: 32, offset: 12736)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1049, file: !1050, line: 1207, baseType: !190, size: 32, offset: 12768)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1049, file: !1050, line: 1209, baseType: !110, size: 64, offset: 12800)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1049, file: !1050, line: 1219, baseType: !260, size: 64, offset: 12864)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1049, file: !1050, line: 1220, baseType: !260, size: 64, offset: 12928)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1049, file: !1050, line: 1317, baseType: !190, size: 32, offset: 12992)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1049, file: !1050, line: 1319, baseType: !1048, size: 64, offset: 13056)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1049, file: !1050, line: 1322, baseType: !3202, size: 64, offset: 13120)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1050, line: 1322, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1049, file: !1050, line: 1326, baseType: !1061, size: 32, offset: 13184)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1049, file: !1050, line: 1342, baseType: !107, size: 64, offset: 13248)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1049, file: !1050, line: 1343, baseType: !261, size: 64, offset: 13312)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1049, file: !1050, line: 1344, baseType: !260, size: 64, offset: 13376)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1049, file: !1050, line: 1345, baseType: !261, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1049, file: !1050, line: 1346, baseType: !261, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1049, file: !1050, line: 1347, baseType: !261, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1049, file: !1050, line: 1348, baseType: !206, size: 128, align: 64, offset: 13504)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1049, file: !1050, line: 1358, baseType: !3213, size: 34816, offset: 13824)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3214, line: 485, size: 34816, elements: !3215)
!3214 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3215 = !{!3216, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3245, !3246, !3247, !3248, !3249, !3250, !3253, !3254, !3255}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3213, file: !3214, line: 487, baseType: !3217, size: 192)
!3217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3218, size: 192, elements: !496)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3219, line: 16, size: 64, elements: !3220)
!3219 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3218, file: !3219, line: 17, baseType: !696, size: 16)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3218, file: !3219, line: 18, baseType: !696, size: 16, offset: 16)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3218, file: !3219, line: 19, baseType: !696, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3218, file: !3219, line: 19, baseType: !696, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3218, file: !3219, line: 19, baseType: !696, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3218, file: !3219, line: 19, baseType: !696, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3218, file: !3219, line: 19, baseType: !696, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3218, file: !3219, line: 20, baseType: !696, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3218, file: !3219, line: 20, baseType: !696, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3218, file: !3219, line: 20, baseType: !696, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3218, file: !3219, line: 20, baseType: !696, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3218, file: !3219, line: 20, baseType: !696, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3218, file: !3219, line: 20, baseType: !696, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3213, file: !3214, line: 491, baseType: !110, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3213, file: !3214, line: 495, baseType: !273, size: 16, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3213, file: !3214, line: 496, baseType: !273, size: 16, offset: 272)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3213, file: !3214, line: 497, baseType: !273, size: 16, offset: 288)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3213, file: !3214, line: 498, baseType: !273, size: 16, offset: 304)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3213, file: !3214, line: 502, baseType: !110, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3213, file: !3214, line: 503, baseType: !110, size: 64, offset: 384)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3213, file: !3214, line: 514, baseType: !3242, size: 256, offset: 448)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3243, size: 256, elements: !993)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3214, line: 483, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3213, file: !3214, line: 516, baseType: !110, size: 64, offset: 704)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3213, file: !3214, line: 518, baseType: !110, size: 64, offset: 768)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3213, file: !3214, line: 520, baseType: !110, size: 64, offset: 832)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3213, file: !3214, line: 521, baseType: !110, size: 64, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3213, file: !3214, line: 522, baseType: !110, size: 64, offset: 960)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3213, file: !3214, line: 528, baseType: !3251, size: 64, offset: 1024)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3214, line: 10, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3213, file: !3214, line: 535, baseType: !110, size: 64, offset: 1088)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3213, file: !3214, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3213, file: !3214, line: 540, baseType: !3256, size: 33280, offset: 1536)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3257, line: 317, size: 33280, elements: !3258)
!3257 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3256, file: !3257, line: 330, baseType: !7, size: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3256, file: !3257, line: 337, baseType: !110, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3256, file: !3257, line: 348, baseType: !3262, size: 32768, offset: 512)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3257, line: 304, size: 32768, elements: !3263)
!3263 = !{!3264, !3279, !3318, !3368, !3381}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3262, file: !3257, line: 305, baseType: !3265, size: 896)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3257, line: 12, size: 896, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3278}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3265, file: !3257, line: 13, baseType: !256, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3265, file: !3257, line: 14, baseType: !256, size: 32, offset: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3265, file: !3257, line: 15, baseType: !256, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3265, file: !3257, line: 16, baseType: !256, size: 32, offset: 96)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3265, file: !3257, line: 17, baseType: !256, size: 32, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3265, file: !3257, line: 18, baseType: !256, size: 32, offset: 160)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3265, file: !3257, line: 19, baseType: !256, size: 32, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3265, file: !3257, line: 22, baseType: !3275, size: 640, offset: 224)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 640, elements: !3276)
!3276 = !{!3277}
!3277 = !DISubrange(count: 20)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3265, file: !3257, line: 25, baseType: !256, size: 32, offset: 864)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3262, file: !3257, line: 306, baseType: !3280, size: 4096, align: 128)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3257, line: 34, size: 4096, align: 128, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3301, !3302, !3303, !3307, !3309, !3313}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3280, file: !3257, line: 35, baseType: !696, size: 16)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3280, file: !3257, line: 36, baseType: !696, size: 16, offset: 16)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3280, file: !3257, line: 37, baseType: !696, size: 16, offset: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3280, file: !3257, line: 38, baseType: !696, size: 16, offset: 48)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3257, line: 39, baseType: !3287, size: 128, offset: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3257, line: 39, size: 128, elements: !3288)
!3288 = !{!3289, !3294}
!3289 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !3257, line: 40, baseType: !3290, size: 128)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3257, line: 40, size: 128, elements: !3291)
!3291 = !{!3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3290, file: !3257, line: 41, baseType: !260, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3290, file: !3257, line: 42, baseType: !260, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, scope: !3287, file: !3257, line: 44, baseType: !3295, size: 128)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3287, file: !3257, line: 44, size: 128, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3295, file: !3257, line: 45, baseType: !256, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3295, file: !3257, line: 46, baseType: !256, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3295, file: !3257, line: 47, baseType: !256, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3295, file: !3257, line: 48, baseType: !256, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3280, file: !3257, line: 51, baseType: !256, size: 32, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3280, file: !3257, line: 52, baseType: !256, size: 32, offset: 224)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3280, file: !3257, line: 55, baseType: !3304, size: 1024, offset: 256)
!3304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 1024, elements: !3305)
!3305 = !{!3306}
!3306 = !DISubrange(count: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3280, file: !3257, line: 58, baseType: !3308, size: 2048, offset: 1280)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 2048, elements: !1700)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3280, file: !3257, line: 60, baseType: !3310, size: 384, offset: 3328)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 384, elements: !3311)
!3311 = !{!3312}
!3312 = !DISubrange(count: 12)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3257, line: 62, baseType: !3314, size: 384, offset: 3712)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3257, line: 62, size: 384, elements: !3315)
!3315 = !{!3316, !3317}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3314, file: !3257, line: 63, baseType: !3310, size: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3314, file: !3257, line: 64, baseType: !3310, size: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3262, file: !3257, line: 307, baseType: !3319, size: 1088)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3257, line: 79, size: 1088, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3367}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3319, file: !3257, line: 80, baseType: !256, size: 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3319, file: !3257, line: 81, baseType: !256, size: 32, offset: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3319, file: !3257, line: 82, baseType: !256, size: 32, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3319, file: !3257, line: 83, baseType: !256, size: 32, offset: 96)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3319, file: !3257, line: 84, baseType: !256, size: 32, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3319, file: !3257, line: 85, baseType: !256, size: 32, offset: 160)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3319, file: !3257, line: 86, baseType: !256, size: 32, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3319, file: !3257, line: 88, baseType: !3275, size: 640, offset: 224)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3319, file: !3257, line: 89, baseType: !1183, size: 8, offset: 864)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3319, file: !3257, line: 90, baseType: !1183, size: 8, offset: 872)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3319, file: !3257, line: 91, baseType: !1183, size: 8, offset: 880)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3319, file: !3257, line: 92, baseType: !1183, size: 8, offset: 888)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3319, file: !3257, line: 93, baseType: !1183, size: 8, offset: 896)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3319, file: !3257, line: 94, baseType: !1183, size: 8, offset: 904)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3319, file: !3257, line: 95, baseType: !3336, size: 64, offset: 960)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3338, line: 11, size: 128, elements: !3339)
!3338 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3339 = !{!3340, !3341}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3337, file: !3338, line: 12, baseType: !106, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3337, file: !3338, line: 13, baseType: !3342, size: 64, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3344, line: 56, size: 1344, elements: !3345)
!3344 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3343, file: !3344, line: 61, baseType: !110, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3343, file: !3344, line: 62, baseType: !110, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3343, file: !3344, line: 63, baseType: !110, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3343, file: !3344, line: 64, baseType: !110, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3343, file: !3344, line: 65, baseType: !110, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3343, file: !3344, line: 66, baseType: !110, size: 64, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3343, file: !3344, line: 68, baseType: !110, size: 64, offset: 384)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3343, file: !3344, line: 69, baseType: !110, size: 64, offset: 448)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3343, file: !3344, line: 70, baseType: !110, size: 64, offset: 512)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3343, file: !3344, line: 71, baseType: !110, size: 64, offset: 576)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3343, file: !3344, line: 72, baseType: !110, size: 64, offset: 640)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3343, file: !3344, line: 73, baseType: !110, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3343, file: !3344, line: 74, baseType: !110, size: 64, offset: 768)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3343, file: !3344, line: 75, baseType: !110, size: 64, offset: 832)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3343, file: !3344, line: 76, baseType: !110, size: 64, offset: 896)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3343, file: !3344, line: 81, baseType: !110, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3343, file: !3344, line: 83, baseType: !110, size: 64, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3343, file: !3344, line: 84, baseType: !110, size: 64, offset: 1088)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3343, file: !3344, line: 85, baseType: !110, size: 64, offset: 1152)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3343, file: !3344, line: 86, baseType: !110, size: 64, offset: 1216)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3343, file: !3344, line: 87, baseType: !110, size: 64, offset: 1280)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3319, file: !3257, line: 96, baseType: !256, size: 32, offset: 1024)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3262, file: !3257, line: 308, baseType: !3369, size: 4608, align: 512)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3257, line: 289, size: 4608, align: 512, elements: !3370)
!3370 = !{!3371, !3372, !3379}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3369, file: !3257, line: 290, baseType: !3280, size: 4096, align: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3369, file: !3257, line: 291, baseType: !3373, size: 512, offset: 4096)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3257, line: 268, size: 512, elements: !3374)
!3374 = !{!3375, !3376, !3377}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3373, file: !3257, line: 269, baseType: !260, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3373, file: !3257, line: 270, baseType: !260, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3373, file: !3257, line: 271, baseType: !3378, size: 384, offset: 128)
!3378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 384, elements: !1461)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3369, file: !3257, line: 292, baseType: !3380, offset: 4608)
!3380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, elements: !1559)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3262, file: !3257, line: 309, baseType: !3382, size: 32768)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 32768, elements: !3383)
!3383 = !{!3384}
!3384 = !DISubrange(count: 4096)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1045, file: !567, line: 378, baseType: !3386, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1041, file: !567, line: 384, baseType: !1338, size: 192, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !816, file: !567, line: 500, baseType: !166, offset: 6656)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !816, file: !567, line: 501, baseType: !3390, size: 64, offset: 6656)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !567, line: 387, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !816, file: !567, line: 516, baseType: !1549, size: 64, offset: 6720)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !816, file: !567, line: 519, baseType: !384, size: 64, offset: 6784)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !816, file: !567, line: 521, baseType: !3395, size: 64, offset: 6848)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !567, line: 521, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !816, file: !567, line: 545, baseType: !591, size: 32, offset: 6912)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !816, file: !567, line: 548, baseType: !333, size: 8, offset: 6944)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !816, file: !567, line: 550, baseType: !3400, offset: 6952)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3401, line: 142, elements: !180)
!3401 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !816, file: !567, line: 554, baseType: !2170, size: 256, offset: 6976)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !816, file: !567, line: 557, baseType: !256, size: 32, offset: 7232)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !813, file: !567, line: 565, baseType: !2612, offset: 7296)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !809, file: !567, line: 151, baseType: !591, size: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !801, file: !567, line: 156, baseType: !166, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !567, line: 159, baseType: !3408, size: 128)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !571, file: !567, line: 159, size: 128, elements: !3409)
!3409 = !{!3410, !3474}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3408, file: !567, line: 161, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !3413)
!3413 = !{!3414, !3424, !3445, !3446, !3447, !3448, !3449, !3461, !3462, !3463}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3412, file: !31, line: 111, baseType: !3415, size: 384)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !3416)
!3416 = !{!3417, !3419, !3420, !3421, !3422, !3423}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3415, file: !31, line: 20, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3415, file: !31, line: 21, baseType: !3418, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3415, file: !31, line: 22, baseType: !3418, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3415, file: !31, line: 23, baseType: !110, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3415, file: !31, line: 24, baseType: !110, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3415, file: !31, line: 25, baseType: !110, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3412, file: !31, line: 112, baseType: !3425, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3427, line: 105, size: 128, elements: !3428)
!3427 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3426, file: !3427, line: 110, baseType: !110, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3426, file: !3427, line: 118, baseType: !3431, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3427, line: 95, size: 448, elements: !3433)
!3433 = !{!3434, !3435, !3440, !3441, !3442, !3443, !3444}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3432, file: !3427, line: 96, baseType: !155, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3432, file: !3427, line: 97, baseType: !3436, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3427, line: 60, baseType: !3438)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !3425}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3432, file: !3427, line: 98, baseType: !3436, size: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3432, file: !3427, line: 99, baseType: !333, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3432, file: !3427, line: 100, baseType: !333, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3432, file: !3427, line: 101, baseType: !206, size: 128, align: 64, offset: 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3432, file: !3427, line: 102, baseType: !3425, size: 64, offset: 384)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3412, file: !31, line: 113, baseType: !3426, size: 128, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3412, file: !31, line: 114, baseType: !1338, size: 192, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3412, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3412, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3412, file: !31, line: 117, baseType: !3450, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !3453)
!3453 = !{!3454, !3455, !3459, !3460}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3452, file: !31, line: 73, baseType: !677, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3452, file: !31, line: 78, baseType: !3456, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{null, !3411}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3452, file: !31, line: 83, baseType: !3456, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3452, file: !31, line: 89, baseType: !865, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3412, file: !31, line: 118, baseType: !107, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3412, file: !31, line: 119, baseType: !190, size: 32, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !31, line: 120, baseType: !3464, size: 128, offset: 1024)
!3464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3412, file: !31, line: 120, size: 128, elements: !3465)
!3465 = !{!3466, !3472}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3464, file: !31, line: 121, baseType: !3467, size: 128)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3468, line: 6, size: 128, elements: !3469)
!3468 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3469 = !{!3470, !3471}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3467, file: !3468, line: 7, baseType: !260, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3467, file: !3468, line: 8, baseType: !260, size: 64, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3464, file: !31, line: 122, baseType: !3473)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3467, elements: !1559)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3408, file: !567, line: 162, baseType: !107, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !571, file: !567, line: 176, baseType: !206, size: 128, align: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !567, line: 179, baseType: !3477, size: 32, offset: 384)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !567, line: 179, size: 32, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3477, file: !567, line: 184, baseType: !591, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3477, file: !567, line: 192, baseType: !7, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3477, file: !567, line: 194, baseType: !7, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3477, file: !567, line: 195, baseType: !190, size: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !566, file: !567, line: 199, baseType: !591, size: 32, offset: 416)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !504, file: !44, line: 1964, baseType: !3485, size: 64, offset: 1344)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!106, !442, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3490, line: 12, size: 256, elements: !3491)
!3490 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3491 = !{!3492, !3493, !3494, !3495, !3496}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3489, file: !3490, line: 13, baseType: !123, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3489, file: !3490, line: 16, baseType: !190, size: 32, offset: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3489, file: !3490, line: 23, baseType: !110, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3489, file: !3490, line: 30, baseType: !110, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3489, file: !3490, line: 33, baseType: !3497, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !567, line: 27, flags: DIFlagFwdDecl)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !504, file: !44, line: 1966, baseType: !3485, size: 64, offset: 1408)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !443, file: !44, line: 1424, baseType: !3501, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3503)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !3504)
!3504 = !{!3505, !3551, !3555, !3559, !3560, !3561, !3562, !3563, !3568, !3573, !3577}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3503, file: !38, line: 323, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!190, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !3511)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3536, !3537, !3538}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3510, file: !38, line: 295, baseType: !484, size: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3510, file: !38, line: 296, baseType: !182, size: 128, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3510, file: !38, line: 297, baseType: !182, size: 128, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3510, file: !38, line: 298, baseType: !182, size: 128, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3510, file: !38, line: 299, baseType: !151, size: 192, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3510, file: !38, line: 300, baseType: !166, offset: 704)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3510, file: !38, line: 301, baseType: !591, size: 32, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3510, file: !38, line: 302, baseType: !442, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3510, file: !38, line: 303, baseType: !3521, size: 64, offset: 832)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !3522)
!3522 = !{!3523, !3535}
!3523 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !38, line: 69, baseType: !3524, size: 32)
!3524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !38, line: 69, size: 32, elements: !3525)
!3525 = !{!3526, !3527, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3524, file: !38, line: 70, baseType: !276, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3524, file: !38, line: 71, baseType: !284, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3524, file: !38, line: 72, baseType: !3529, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3530, line: 24, baseType: !3531)
!3530 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3530, line: 22, size: 32, elements: !3532)
!3532 = !{!3533}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3531, file: !3530, line: 23, baseType: !3534, size: 32)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3530, line: 20, baseType: !282)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3521, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3510, file: !38, line: 304, baseType: !114, size: 64, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3510, file: !38, line: 305, baseType: !110, size: 64, offset: 960)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3510, file: !38, line: 306, baseType: !3539, size: 576, offset: 1024)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !3540)
!3540 = !{!3541, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3539, file: !38, line: 206, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !117)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3539, file: !38, line: 207, baseType: !3542, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3539, file: !38, line: 208, baseType: !3542, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3539, file: !38, line: 209, baseType: !3542, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3539, file: !38, line: 210, baseType: !3542, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3539, file: !38, line: 211, baseType: !3542, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3539, file: !38, line: 212, baseType: !3542, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3539, file: !38, line: 213, baseType: !379, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3539, file: !38, line: 214, baseType: !379, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3503, file: !38, line: 324, baseType: !3552, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!3509, !442, !190}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3503, file: !38, line: 325, baseType: !3556, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{null, !3509}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3503, file: !38, line: 326, baseType: !3506, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3503, file: !38, line: 327, baseType: !3506, size: 64, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3503, file: !38, line: 328, baseType: !3506, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3503, file: !38, line: 329, baseType: !532, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3503, file: !38, line: 332, baseType: !3564, size: 64, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!3567, !268}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3503, file: !38, line: 333, baseType: !3569, size: 64, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!190, !268, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3503, file: !38, line: 335, baseType: !3574, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!190, !268, !3567}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3503, file: !38, line: 337, baseType: !3578, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!190, !442, !3581}
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !443, file: !44, line: 1425, baseType: !3583, size: 64, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3585)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !3586)
!3586 = !{!3587, !3591, !3592, !3596, !3597, !3598, !3613, !3636, !3640, !3641, !3664}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3585, file: !38, line: 429, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!190, !442, !190, !190, !389}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3585, file: !38, line: 430, baseType: !532, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3585, file: !38, line: 431, baseType: !3593, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!190, !442, !7}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3585, file: !38, line: 432, baseType: !3593, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3585, file: !38, line: 433, baseType: !532, size: 64, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3585, file: !38, line: 434, baseType: !3599, size: 64, offset: 320)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!190, !442, !190, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3603, file: !38, line: 416, baseType: !190, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3603, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3603, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3603, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3603, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3603, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3603, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3603, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3585, file: !38, line: 435, baseType: !3614, size: 64, offset: 384)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!190, !442, !3521, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3618, file: !38, line: 344, baseType: !190, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3618, file: !38, line: 345, baseType: !260, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3618, file: !38, line: 346, baseType: !260, size: 64, offset: 128)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3618, file: !38, line: 347, baseType: !260, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3618, file: !38, line: 348, baseType: !260, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3618, file: !38, line: 349, baseType: !260, size: 64, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3618, file: !38, line: 350, baseType: !260, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3618, file: !38, line: 351, baseType: !161, size: 64, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3618, file: !38, line: 353, baseType: !161, size: 64, offset: 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3618, file: !38, line: 354, baseType: !190, size: 32, offset: 576)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3618, file: !38, line: 355, baseType: !190, size: 32, offset: 608)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3618, file: !38, line: 356, baseType: !260, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3618, file: !38, line: 357, baseType: !260, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3618, file: !38, line: 358, baseType: !260, size: 64, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3618, file: !38, line: 359, baseType: !161, size: 64, offset: 832)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3618, file: !38, line: 360, baseType: !190, size: 32, offset: 896)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3585, file: !38, line: 436, baseType: !3637, size: 64, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!190, !442, !3581, !3617}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3585, file: !38, line: 438, baseType: !3614, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3585, file: !38, line: 439, baseType: !3642, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!190, !442, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !3647)
!3647 = !{!3648, !3649}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3646, file: !38, line: 410, baseType: !7, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3646, file: !38, line: 411, baseType: !3650, size: 1344, offset: 64)
!3650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3651, size: 1344, elements: !496)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3663}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3651, file: !38, line: 396, baseType: !7, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3651, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3651, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3651, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3651, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3651, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3651, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3651, file: !38, line: 404, baseType: !262, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3651, file: !38, line: 405, baseType: !3662, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !109, line: 126, baseType: !260)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3651, file: !38, line: 406, baseType: !3662, size: 64, offset: 384)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3585, file: !38, line: 440, baseType: !3593, size: 64, offset: 640)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !443, file: !44, line: 1426, baseType: !3666, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3668)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !443, file: !44, line: 1427, baseType: !110, size: 64, offset: 640)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !443, file: !44, line: 1428, baseType: !110, size: 64, offset: 704)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !443, file: !44, line: 1429, baseType: !110, size: 64, offset: 768)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !443, file: !44, line: 1430, baseType: !223, size: 64, offset: 832)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !443, file: !44, line: 1431, baseType: !611, size: 256, offset: 896)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !443, file: !44, line: 1432, baseType: !190, size: 32, offset: 1152)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !443, file: !44, line: 1433, baseType: !591, size: 32, offset: 1184)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !443, file: !44, line: 1437, baseType: !3677, size: 64, offset: 1216)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3680)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !443, file: !44, line: 1449, baseType: !3682, size: 64, offset: 1280)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !239, line: 34, size: 64, elements: !3683)
!3683 = !{!3684}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3682, file: !239, line: 35, baseType: !242, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !443, file: !44, line: 1450, baseType: !182, size: 128, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !443, file: !44, line: 1451, baseType: !3687, size: 64, offset: 1472)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !443, file: !44, line: 1452, baseType: !3024, size: 64, offset: 1536)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !443, file: !44, line: 1453, baseType: !3691, size: 64, offset: 1600)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !443, file: !44, line: 1454, baseType: !484, size: 128, offset: 1664)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !443, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !443, file: !44, line: 1456, baseType: !3696, size: 2432, offset: 1856)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3702, !3734}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3696, file: !38, line: 519, baseType: !7, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3696, file: !38, line: 520, baseType: !611, size: 256, offset: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3696, file: !38, line: 521, baseType: !3701, size: 192, offset: 320)
!3701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 192, elements: !496)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3696, file: !38, line: 522, baseType: !3703, size: 1728, offset: 512)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3704, size: 1728, elements: !496)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !3705)
!3705 = !{!3706, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3704, file: !38, line: 223, baseType: !3707, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !3709)
!3709 = !{!3710, !3711, !3724, !3725}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3708, file: !38, line: 444, baseType: !190, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3708, file: !38, line: 445, baseType: !3712, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3714)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !3715)
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3714, file: !38, line: 311, baseType: !532, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3714, file: !38, line: 312, baseType: !532, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3714, file: !38, line: 313, baseType: !532, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3714, file: !38, line: 314, baseType: !532, size: 64, offset: 192)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3714, file: !38, line: 315, baseType: !3506, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3714, file: !38, line: 316, baseType: !3506, size: 64, offset: 320)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3714, file: !38, line: 317, baseType: !3506, size: 64, offset: 384)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3714, file: !38, line: 318, baseType: !3578, size: 64, offset: 448)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3708, file: !38, line: 446, baseType: !475, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3708, file: !38, line: 447, baseType: !3707, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3704, file: !38, line: 224, baseType: !190, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3704, file: !38, line: 226, baseType: !182, size: 128, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3704, file: !38, line: 227, baseType: !110, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3704, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3704, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3704, file: !38, line: 230, baseType: !3542, size: 64, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3704, file: !38, line: 231, baseType: !3542, size: 64, offset: 448)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3704, file: !38, line: 232, baseType: !107, size: 64, offset: 512)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3696, file: !38, line: 523, baseType: !3735, size: 192, offset: 2240)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3712, size: 192, elements: !496)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !443, file: !44, line: 1458, baseType: !3737, size: 2112, offset: 4288)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !3738)
!3738 = !{!3739, !3740, !3741}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3737, file: !44, line: 1411, baseType: !190, size: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3737, file: !44, line: 1412, baseType: !1317, size: 128, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3737, file: !44, line: 1413, baseType: !3742, size: 1920, offset: 192)
!3742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3743, size: 1920, elements: !496)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3744, line: 12, size: 640, elements: !3745)
!3744 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3745 = !{!3746, !3754, !3756, !3761, !3762}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3743, file: !3744, line: 13, baseType: !3747, size: 320)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3748, line: 17, size: 320, elements: !3749)
!3748 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3749 = !{!3750, !3751, !3752, !3753}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3747, file: !3748, line: 18, baseType: !190, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3747, file: !3748, line: 19, baseType: !190, size: 32, offset: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3747, file: !3748, line: 20, baseType: !1317, size: 128, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3747, file: !3748, line: 22, baseType: !206, size: 128, align: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3743, file: !3744, line: 14, baseType: !3755, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3743, file: !3744, line: 15, baseType: !3757, size: 64, offset: 384)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3758, line: 16, size: 64, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3759 = !{!3760}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3757, file: !3758, line: 17, baseType: !1048, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3743, file: !3744, line: 16, baseType: !1317, size: 128, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3743, file: !3744, line: 17, baseType: !591, size: 32, offset: 576)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !443, file: !44, line: 1465, baseType: !107, size: 64, offset: 6400)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !443, file: !44, line: 1468, baseType: !256, size: 32, offset: 6464)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !443, file: !44, line: 1470, baseType: !379, size: 64, offset: 6528)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !443, file: !44, line: 1471, baseType: !379, size: 64, offset: 6592)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !443, file: !44, line: 1473, baseType: !257, size: 32, offset: 6656)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !443, file: !44, line: 1474, baseType: !3769, size: 64, offset: 6720)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !443, file: !44, line: 1477, baseType: !3772, size: 256, offset: 6784)
!3772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !3305)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !443, file: !44, line: 1478, baseType: !3774, size: 128, offset: 7040)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3775, line: 18, baseType: !3776)
!3775 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3775, line: 16, size: 128, elements: !3777)
!3777 = !{!3778}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3776, file: !3775, line: 17, baseType: !3779, size: 128)
!3779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 128, elements: !1571)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !443, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !443, file: !44, line: 1481, baseType: !3782, size: 32, offset: 7200)
!3782 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !109, line: 150, baseType: !7)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !443, file: !44, line: 1487, baseType: !151, size: 192, offset: 7232)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !443, file: !44, line: 1493, baseType: !304, size: 64, offset: 7424)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !443, file: !44, line: 1495, baseType: !3786, size: 64, offset: 7488)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3788)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !221, line: 135, size: 1024, align: 512, elements: !3789)
!3789 = !{!3790, !3794, !3795, !3802, !3808, !3812, !3816, !3820, !3821, !3825, !3829, !3834, !3838}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3788, file: !221, line: 136, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!190, !223, !7}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3788, file: !221, line: 137, baseType: !3791, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3788, file: !221, line: 138, baseType: !3796, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!190, !3799, !3801}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3788, file: !221, line: 139, baseType: !3803, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!190, !3799, !7, !304, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3788, file: !221, line: 141, baseType: !3809, size: 64, offset: 256)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!190, !3799}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3788, file: !221, line: 142, baseType: !3813, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!190, !223}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3788, file: !221, line: 143, baseType: !3817, size: 64, offset: 384)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !223}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3788, file: !221, line: 144, baseType: !3817, size: 64, offset: 448)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3788, file: !221, line: 145, baseType: !3822, size: 64, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !223, !268}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3788, file: !221, line: 146, baseType: !3826, size: 64, offset: 576)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!140, !223, !140, !190}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3788, file: !221, line: 147, baseType: !3830, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!219, !3833}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3788, file: !221, line: 148, baseType: !3835, size: 64, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!190, !389, !333}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3788, file: !221, line: 149, baseType: !3839, size: 64, offset: 768)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!223, !223, !3842}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !443, file: !44, line: 1500, baseType: !190, size: 32, offset: 7552)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !443, file: !44, line: 1502, baseType: !3846, size: 448, offset: 7616)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3490, line: 60, size: 448, elements: !3847)
!3847 = !{!3848, !3853, !3854, !3855, !3856, !3857, !3858}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3846, file: !3490, line: 61, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!110, !3852, !3488}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3846, file: !3490, line: 63, baseType: !3849, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3846, file: !3490, line: 66, baseType: !106, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3846, file: !3490, line: 67, baseType: !190, size: 32, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3846, file: !3490, line: 68, baseType: !7, size: 32, offset: 224)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3846, file: !3490, line: 71, baseType: !182, size: 128, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3846, file: !3490, line: 77, baseType: !3859, size: 64, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !443, file: !44, line: 1505, baseType: !155, size: 64, offset: 8064)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !443, file: !44, line: 1508, baseType: !155, size: 64, offset: 8128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !443, file: !44, line: 1511, baseType: !190, size: 32, offset: 8192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !443, file: !44, line: 1514, baseType: !746, size: 32, offset: 8224)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !443, file: !44, line: 1517, baseType: !3865, size: 64, offset: 8256)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2171, line: 18, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !443, file: !44, line: 1518, baseType: !480, size: 64, offset: 8320)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !443, file: !44, line: 1525, baseType: !1549, size: 64, offset: 8384)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !443, file: !44, line: 1532, baseType: !3870, size: 64, offset: 8448)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3871, line: 52, size: 64, elements: !3872)
!3871 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3872 = !{!3873}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3870, file: !3871, line: 53, baseType: !3874, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3871, line: 40, size: 256, elements: !3876)
!3876 = !{!3877, !3878, !3883}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3875, file: !3871, line: 42, baseType: !166)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3875, file: !3871, line: 44, baseType: !3879, size: 192)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3871, line: 28, size: 192, elements: !3880)
!3880 = !{!3881, !3882}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3879, file: !3871, line: 29, baseType: !182, size: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3879, file: !3871, line: 31, baseType: !106, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3875, file: !3871, line: 49, baseType: !106, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !443, file: !44, line: 1533, baseType: !3870, size: 64, offset: 8512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !443, file: !44, line: 1534, baseType: !206, size: 128, align: 64, offset: 8576)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !443, file: !44, line: 1535, baseType: !2170, size: 256, offset: 8704)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !443, file: !44, line: 1537, baseType: !151, size: 192, offset: 8960)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !443, file: !44, line: 1542, baseType: !190, size: 32, offset: 9152)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !443, file: !44, line: 1545, baseType: !166, offset: 9184)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !443, file: !44, line: 1546, baseType: !182, size: 128, offset: 9216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !443, file: !44, line: 1548, baseType: !166, offset: 9344)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !443, file: !44, line: 1549, baseType: !182, size: 128, offset: 9344)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !269, file: !44, line: 624, baseType: !578, size: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !269, file: !44, line: 631, baseType: !110, size: 64, offset: 320)
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !44, line: 639, baseType: !3896, size: 32, offset: 384)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !44, line: 639, size: 32, elements: !3897)
!3897 = !{!3898, !3900}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3896, file: !44, line: 640, baseType: !3899, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3896, file: !44, line: 641, baseType: !7, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !269, file: !44, line: 643, baseType: !356, size: 32, offset: 416)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !269, file: !44, line: 644, baseType: !114, size: 64, offset: 448)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !269, file: !44, line: 645, baseType: !375, size: 128, offset: 512)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !269, file: !44, line: 646, baseType: !375, size: 128, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !269, file: !44, line: 647, baseType: !375, size: 128, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !269, file: !44, line: 648, baseType: !166, offset: 896)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !269, file: !44, line: 649, baseType: !273, size: 16, offset: 896)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !269, file: !44, line: 650, baseType: !1183, size: 8, offset: 912)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !269, file: !44, line: 651, baseType: !1183, size: 8, offset: 920)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !269, file: !44, line: 652, baseType: !3662, size: 64, offset: 960)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !269, file: !44, line: 659, baseType: !110, size: 64, offset: 1024)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !269, file: !44, line: 660, baseType: !611, size: 256, offset: 1088)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !269, file: !44, line: 662, baseType: !110, size: 64, offset: 1344)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !269, file: !44, line: 663, baseType: !110, size: 64, offset: 1408)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !269, file: !44, line: 665, baseType: !484, size: 128, offset: 1472)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !269, file: !44, line: 666, baseType: !182, size: 128, offset: 1600)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !269, file: !44, line: 675, baseType: !182, size: 128, offset: 1728)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !269, file: !44, line: 676, baseType: !182, size: 128, offset: 1856)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !269, file: !44, line: 677, baseType: !182, size: 128, offset: 1984)
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !44, line: 678, baseType: !3921, size: 128, offset: 2112)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !44, line: 678, size: 128, elements: !3922)
!3922 = !{!3923, !3924}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3921, file: !44, line: 679, baseType: !480, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3921, file: !44, line: 680, baseType: !206, size: 128, align: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !269, file: !44, line: 682, baseType: !157, size: 64, offset: 2240)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !269, file: !44, line: 683, baseType: !157, size: 64, offset: 2304)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !269, file: !44, line: 684, baseType: !591, size: 32, offset: 2368)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !269, file: !44, line: 685, baseType: !591, size: 32, offset: 2400)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !269, file: !44, line: 686, baseType: !591, size: 32, offset: 2432)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !269, file: !44, line: 688, baseType: !591, size: 32, offset: 2464)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !44, line: 690, baseType: !3932, size: 64, offset: 2496)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !44, line: 690, size: 64, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3932, file: !44, line: 691, baseType: !2332, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3932, file: !44, line: 692, baseType: !511, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !269, file: !44, line: 694, baseType: !3937, size: 64, offset: 2560)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3939)
!3939 = !{!3940, !3941, !3942, !3943}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3938, file: !44, line: 1101, baseType: !166)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3938, file: !44, line: 1102, baseType: !182, size: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3938, file: !44, line: 1103, baseType: !182, size: 128, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3938, file: !44, line: 1104, baseType: !182, size: 128, offset: 256)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !269, file: !44, line: 695, baseType: !579, size: 1216, align: 64, offset: 2624)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !269, file: !44, line: 696, baseType: !182, size: 128, offset: 3840)
!3946 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !44, line: 697, baseType: !3947, size: 64, offset: 3968)
!3947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !44, line: 697, size: 64, elements: !3948)
!3948 = !{!3949, !3950, !3951, !3952, !3953}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3947, file: !44, line: 698, baseType: !2523, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3947, file: !44, line: 699, baseType: !3687, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3947, file: !44, line: 700, baseType: !2325, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3947, file: !44, line: 701, baseType: !140, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3947, file: !44, line: 702, baseType: !7, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !269, file: !44, line: 705, baseType: !257, size: 32, offset: 4032)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !269, file: !44, line: 708, baseType: !257, size: 32, offset: 4064)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !269, file: !44, line: 709, baseType: !3769, size: 64, offset: 4096)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !269, file: !44, line: 720, baseType: !107, size: 64, offset: 4160)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !224, file: !221, line: 98, baseType: !3959, size: 256, offset: 448)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !3305)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !224, file: !221, line: 101, baseType: !3961, size: 32, offset: 704)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3962, line: 25, size: 32, elements: !3963)
!3962 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3963 = !{!3964}
!3964 = !DIDerivedType(tag: DW_TAG_member, scope: !3961, file: !3962, line: 26, baseType: !3965, size: 32)
!3965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3961, file: !3962, line: 26, size: 32, elements: !3966)
!3966 = !{!3967}
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !3962, line: 30, baseType: !3968, size: 32)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3965, file: !3962, line: 30, size: 32, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3968, file: !3962, line: 31, baseType: !166)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3968, file: !3962, line: 32, baseType: !190, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !224, file: !221, line: 102, baseType: !3786, size: 64, offset: 768)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !224, file: !221, line: 103, baseType: !442, size: 64, offset: 832)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !224, file: !221, line: 104, baseType: !110, size: 64, offset: 896)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !224, file: !221, line: 105, baseType: !107, size: 64, offset: 960)
!3976 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !221, line: 107, baseType: !3977, size: 128, offset: 1024)
!3977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !221, line: 107, size: 128, elements: !3978)
!3978 = !{!3979, !3980}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3977, file: !221, line: 108, baseType: !182, size: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3977, file: !221, line: 109, baseType: !1940, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !224, file: !221, line: 111, baseType: !182, size: 128, offset: 1152)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !224, file: !221, line: 112, baseType: !182, size: 128, offset: 1280)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !224, file: !221, line: 120, baseType: !3984, size: 128, offset: 1408)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !221, line: 116, size: 128, elements: !3985)
!3985 = !{!3986, !3987, !3988}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3984, file: !221, line: 117, baseType: !484, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3984, file: !221, line: 118, baseType: !238, size: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3984, file: !221, line: 119, baseType: !206, size: 128, align: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !194, file: !44, line: 922, baseType: !268, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !194, file: !44, line: 923, baseType: !2332, size: 64, offset: 320)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !194, file: !44, line: 929, baseType: !166, offset: 384)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !194, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !194, file: !44, line: 931, baseType: !155, size: 64, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !194, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !194, file: !44, line: 933, baseType: !3782, size: 32, offset: 544)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !194, file: !44, line: 934, baseType: !151, size: 192, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !194, file: !44, line: 935, baseType: !114, size: 64, offset: 768)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !194, file: !44, line: 936, baseType: !3999, size: 192, offset: 832)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3999, file: !44, line: 886, baseType: !2427)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3999, file: !44, line: 887, baseType: !1307, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3999, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3999, file: !44, line: 889, baseType: !276, size: 32, offset: 96)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3999, file: !44, line: 889, baseType: !276, size: 32, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3999, file: !44, line: 890, baseType: !190, size: 32, offset: 160)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !194, file: !44, line: 937, baseType: !1383, size: 64, offset: 1024)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !194, file: !44, line: 938, baseType: !4009, size: 256, offset: 1088)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015, !4016}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4009, file: !44, line: 897, baseType: !110, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4009, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4009, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4009, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4009, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4009, file: !44, line: 904, baseType: !114, size: 64, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !194, file: !44, line: 940, baseType: !260, size: 64, offset: 1344)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !194, file: !44, line: 945, baseType: !107, size: 64, offset: 1408)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !194, file: !44, line: 949, baseType: !182, size: 128, offset: 1472)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !194, file: !44, line: 950, baseType: !182, size: 128, offset: 1600)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !194, file: !44, line: 952, baseType: !578, size: 64, offset: 1728)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !194, file: !44, line: 953, baseType: !746, size: 32, offset: 1792)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !194, file: !44, line: 954, baseType: !746, size: 32, offset: 1824)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !137, file: !130, line: 28, baseType: !107, size: 64, offset: 832)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !129, file: !130, line: 33, baseType: !1917, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !130, line: 34, baseType: !1913, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !129, file: !130, line: 35, baseType: !1908, size: 64, offset: 192)
!4028 = !DIGlobalVariableExpression(var: !4029, expr: !DIExpression())
!4029 = distinct !DIGlobalVariable(name: "tty_ldiscs", scope: !2, file: !3, line: 46, type: !4030, isLocal: true, isDefinition: true)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2824, size: 1920, elements: !4031)
!4031 = !{!4032}
!4032 = !DISubrange(count: 30)
!4033 = !DIGlobalVariableExpression(var: !4034, expr: !DIExpression())
!4034 = distinct !DIGlobalVariable(name: "tty_ldisc_autoload", scope: !2, file: !3, line: 158, type: !190, isLocal: true, isDefinition: true)
!4035 = !DIGlobalVariableExpression(var: !4036, expr: !DIExpression())
!4036 = distinct !DIGlobalVariable(name: "tty_root_table", scope: !2, file: !3, line: 874, type: !4037, isLocal: true, isDefinition: true)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4038, size: 1024, elements: !1405)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !1588, line: 112, size: 512, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4046, !4052, !4058, !4059}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !4038, file: !1588, line: 113, baseType: !304, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4038, file: !1588, line: 114, baseType: !107, size: 64, offset: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4038, file: !1588, line: 115, baseType: !190, size: 32, offset: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4038, file: !1588, line: 116, baseType: !272, size: 16, offset: 160)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4038, file: !1588, line: 117, baseType: !4045, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !4038, file: !1588, line: 118, baseType: !4047, size: 64, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !1588, line: 47, baseType: !4049)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!190, !4045, !190, !107, !4051, !113}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4038, file: !1588, line: 119, baseType: !4053, size: 64, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !1588, line: 94, size: 192, elements: !4055)
!4055 = !{!4056, !4057}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4054, file: !1588, line: 95, baseType: !591, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4054, file: !1588, line: 96, baseType: !1317, size: 128, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !4038, file: !1588, line: 120, baseType: !107, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !4038, file: !1588, line: 121, baseType: !107, size: 64, offset: 448)
!4060 = !DIGlobalVariableExpression(var: !4061, expr: !DIExpression())
!4061 = distinct !DIGlobalVariable(name: "tty_dir_table", scope: !2, file: !3, line: 865, type: !4037, isLocal: true, isDefinition: true)
!4062 = !DIGlobalVariableExpression(var: !4063, expr: !DIExpression())
!4063 = distinct !DIGlobalVariable(name: "tty_table", scope: !2, file: !3, line: 852, type: !4037, isLocal: true, isDefinition: true)
!4064 = !{!"rsp"}
!4065 = !{i32 7, !"Dwarf Version", i32 4}
!4066 = !{i32 2, !"Debug Info Version", i32 3}
!4067 = !{i32 1, !"wchar_size", i32 2}
!4068 = !{i32 1, !"Code Model", i32 2}
!4069 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4070 = distinct !DISubprogram(name: "tty_register_ldisc", scope: !3, file: !3, line: 61, type: !4071, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!190, !190, !2824}
!4073 = !DILocalVariable(name: "disc", arg: 1, scope: !4070, file: !3, line: 61, type: !190)
!4074 = !DILocation(line: 61, column: 28, scope: !4070)
!4075 = !DILocalVariable(name: "new_ldisc", arg: 2, scope: !4070, file: !3, line: 61, type: !2824)
!4076 = !DILocation(line: 61, column: 56, scope: !4070)
!4077 = !DILocalVariable(name: "flags", scope: !4070, file: !3, line: 63, type: !110)
!4078 = !DILocation(line: 63, column: 16, scope: !4070)
!4079 = !DILocalVariable(name: "ret", scope: !4070, file: !3, line: 64, type: !190)
!4080 = !DILocation(line: 64, column: 6, scope: !4070)
!4081 = !DILocation(line: 66, column: 6, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 66, column: 6)
!4083 = !DILocation(line: 66, column: 11, scope: !4082)
!4084 = !DILocation(line: 66, column: 19, scope: !4082)
!4085 = !DILocation(line: 66, column: 22, scope: !4082)
!4086 = !DILocation(line: 66, column: 27, scope: !4082)
!4087 = !DILocation(line: 66, column: 6, scope: !4070)
!4088 = !DILocation(line: 67, column: 3, scope: !4082)
!4089 = !DILocation(line: 69, column: 2, scope: !4070)
!4090 = !DILocalVariable(name: "__dummy", scope: !4091, file: !3, line: 69, type: !110)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 69, column: 2)
!4092 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 69, column: 2)
!4093 = !DILocation(line: 69, column: 2, scope: !4091)
!4094 = !DILocalVariable(name: "__dummy2", scope: !4091, file: !3, line: 69, type: !110)
!4095 = !DILocation(line: 69, column: 2, scope: !4092)
!4096 = !DILocation(line: 69, column: 2, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 69, column: 2)
!4098 = !DILocation(line: 69, column: 2, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 69, column: 2)
!4100 = !DILocalVariable(name: "__dummy", scope: !4101, file: !3, line: 69, type: !110)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 69, column: 2)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 69, column: 2)
!4103 = !DILocation(line: 69, column: 2, scope: !4101)
!4104 = !DILocalVariable(name: "__dummy2", scope: !4101, file: !3, line: 69, type: !110)
!4105 = !DILocation(line: 69, column: 2, scope: !4102)
!4106 = !DILocation(line: 69, column: 2, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 69, column: 2)
!4108 = !{i32 -2142058571}
!4109 = !DILocation(line: 69, column: 2, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 69, column: 2)
!4111 = !DILocation(line: 70, column: 21, scope: !4070)
!4112 = !DILocation(line: 70, column: 13, scope: !4070)
!4113 = !DILocation(line: 70, column: 2, scope: !4070)
!4114 = !DILocation(line: 70, column: 19, scope: !4070)
!4115 = !DILocation(line: 71, column: 19, scope: !4070)
!4116 = !DILocation(line: 71, column: 2, scope: !4070)
!4117 = !DILocation(line: 71, column: 13, scope: !4070)
!4118 = !DILocation(line: 71, column: 17, scope: !4070)
!4119 = !DILocation(line: 72, column: 2, scope: !4070)
!4120 = !DILocation(line: 72, column: 13, scope: !4070)
!4121 = !DILocation(line: 72, column: 22, scope: !4070)
!4122 = !DILocation(line: 73, column: 2, scope: !4070)
!4123 = !DILocalVariable(name: "__dummy", scope: !4124, file: !3, line: 73, type: !110)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 73, column: 2)
!4125 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 73, column: 2)
!4126 = !DILocation(line: 73, column: 2, scope: !4124)
!4127 = !DILocalVariable(name: "__dummy2", scope: !4124, file: !3, line: 73, type: !110)
!4128 = !DILocation(line: 73, column: 2, scope: !4125)
!4129 = !DILocation(line: 73, column: 2, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 73, column: 2)
!4131 = !DILocation(line: 73, column: 2, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 73, column: 2)
!4133 = !DILocalVariable(name: "__dummy", scope: !4134, file: !3, line: 73, type: !110)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 73, column: 2)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 73, column: 2)
!4136 = !DILocation(line: 73, column: 2, scope: !4134)
!4137 = !DILocalVariable(name: "__dummy2", scope: !4134, file: !3, line: 73, type: !110)
!4138 = !DILocation(line: 73, column: 2, scope: !4135)
!4139 = !DILocation(line: 73, column: 2, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 73, column: 2)
!4141 = !{i32 -2142057710}
!4142 = !DILocation(line: 73, column: 2, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4140, file: !3, line: 73, column: 2)
!4144 = !DILocation(line: 75, column: 9, scope: !4070)
!4145 = !DILocation(line: 75, column: 2, scope: !4070)
!4146 = !DILocation(line: 76, column: 1, scope: !4070)
!4147 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4148, file: !4148, line: 666, type: !4149, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4148 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4149 = !DISubroutineType(types: !4150)
!4150 = !{!110}
!4151 = !DILocalVariable(name: "f", scope: !4147, file: !4148, line: 668, type: !110)
!4152 = !DILocation(line: 668, column: 16, scope: !4147)
!4153 = !DILocation(line: 670, column: 6, scope: !4147)
!4154 = !DILocation(line: 670, column: 4, scope: !4147)
!4155 = !DILocation(line: 671, column: 2, scope: !4147)
!4156 = !DILocation(line: 672, column: 9, scope: !4147)
!4157 = !DILocation(line: 672, column: 2, scope: !4147)
!4158 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4148, file: !4148, line: 651, type: !4159, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{null, !110}
!4161 = !DILocalVariable(name: "f", arg: 1, scope: !4158, file: !4148, line: 651, type: !110)
!4162 = !DILocation(line: 651, column: 65, scope: !4158)
!4163 = !DILocalVariable(name: "__edi", scope: !4164, file: !4148, line: 653, type: !110)
!4164 = distinct !DILexicalBlock(scope: !4158, file: !4148, line: 653, column: 2)
!4165 = !DILocation(line: 653, column: 2, scope: !4164)
!4166 = !DILocalVariable(name: "__esi", scope: !4164, file: !4148, line: 653, type: !110)
!4167 = !DILocalVariable(name: "__edx", scope: !4164, file: !4148, line: 653, type: !110)
!4168 = !DILocalVariable(name: "__ecx", scope: !4164, file: !4148, line: 653, type: !110)
!4169 = !DILocalVariable(name: "__eax", scope: !4164, file: !4148, line: 653, type: !110)
!4170 = !{i32 -2145698109, i32 -2145697359, i32 -2145697125, i32 -2145697074, i32 -2145697046, i32 -2145697021, i32 -2145697337, i32 -2145697324, i32 -2145696886, i32 -2145696767, i32 -2145697232, i32 -2145697205, i32 -2145697177, i32 -2145697147}
!4171 = !DILocation(line: 654, column: 1, scope: !4158)
!4172 = distinct !DISubprogram(name: "tty_unregister_ldisc", scope: !3, file: !3, line: 90, type: !2516, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4173 = !DILocalVariable(name: "disc", arg: 1, scope: !4172, file: !3, line: 90, type: !190)
!4174 = !DILocation(line: 90, column: 30, scope: !4172)
!4175 = !DILocalVariable(name: "flags", scope: !4172, file: !3, line: 92, type: !110)
!4176 = !DILocation(line: 92, column: 16, scope: !4172)
!4177 = !DILocalVariable(name: "ret", scope: !4172, file: !3, line: 93, type: !190)
!4178 = !DILocation(line: 93, column: 6, scope: !4172)
!4179 = !DILocation(line: 95, column: 6, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 95, column: 6)
!4181 = !DILocation(line: 95, column: 11, scope: !4180)
!4182 = !DILocation(line: 95, column: 19, scope: !4180)
!4183 = !DILocation(line: 95, column: 22, scope: !4180)
!4184 = !DILocation(line: 95, column: 27, scope: !4180)
!4185 = !DILocation(line: 95, column: 6, scope: !4172)
!4186 = !DILocation(line: 96, column: 3, scope: !4180)
!4187 = !DILocation(line: 98, column: 2, scope: !4172)
!4188 = !DILocalVariable(name: "__dummy", scope: !4189, file: !3, line: 98, type: !110)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 98, column: 2)
!4190 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 98, column: 2)
!4191 = !DILocation(line: 98, column: 2, scope: !4189)
!4192 = !DILocalVariable(name: "__dummy2", scope: !4189, file: !3, line: 98, type: !110)
!4193 = !DILocation(line: 98, column: 2, scope: !4190)
!4194 = !DILocation(line: 98, column: 2, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 98, column: 2)
!4196 = !DILocation(line: 98, column: 2, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 98, column: 2)
!4198 = !DILocalVariable(name: "__dummy", scope: !4199, file: !3, line: 98, type: !110)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 98, column: 2)
!4200 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 98, column: 2)
!4201 = !DILocation(line: 98, column: 2, scope: !4199)
!4202 = !DILocalVariable(name: "__dummy2", scope: !4199, file: !3, line: 98, type: !110)
!4203 = !DILocation(line: 98, column: 2, scope: !4200)
!4204 = !DILocation(line: 98, column: 2, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 98, column: 2)
!4206 = !{i32 -2142056767}
!4207 = !DILocation(line: 98, column: 2, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 98, column: 2)
!4209 = !DILocation(line: 99, column: 17, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 99, column: 6)
!4211 = !DILocation(line: 99, column: 6, scope: !4210)
!4212 = !DILocation(line: 99, column: 24, scope: !4210)
!4213 = !DILocation(line: 99, column: 6, scope: !4172)
!4214 = !DILocation(line: 100, column: 7, scope: !4210)
!4215 = !DILocation(line: 100, column: 3, scope: !4210)
!4216 = !DILocation(line: 102, column: 14, scope: !4210)
!4217 = !DILocation(line: 102, column: 3, scope: !4210)
!4218 = !DILocation(line: 102, column: 20, scope: !4210)
!4219 = !DILocation(line: 103, column: 2, scope: !4172)
!4220 = !DILocalVariable(name: "__dummy", scope: !4221, file: !3, line: 103, type: !110)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 103, column: 2)
!4222 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 103, column: 2)
!4223 = !DILocation(line: 103, column: 2, scope: !4221)
!4224 = !DILocalVariable(name: "__dummy2", scope: !4221, file: !3, line: 103, type: !110)
!4225 = !DILocation(line: 103, column: 2, scope: !4222)
!4226 = !DILocation(line: 103, column: 2, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 103, column: 2)
!4228 = !DILocation(line: 103, column: 2, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 103, column: 2)
!4230 = !DILocalVariable(name: "__dummy", scope: !4231, file: !3, line: 103, type: !110)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 103, column: 2)
!4232 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 103, column: 2)
!4233 = !DILocation(line: 103, column: 2, scope: !4231)
!4234 = !DILocalVariable(name: "__dummy2", scope: !4231, file: !3, line: 103, type: !110)
!4235 = !DILocation(line: 103, column: 2, scope: !4232)
!4236 = !DILocation(line: 103, column: 2, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 103, column: 2)
!4238 = !{i32 -2142055891}
!4239 = !DILocation(line: 103, column: 2, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 103, column: 2)
!4241 = !DILocation(line: 105, column: 9, scope: !4172)
!4242 = !DILocation(line: 105, column: 2, scope: !4172)
!4243 = !DILocation(line: 106, column: 1, scope: !4172)
!4244 = distinct !DISubprogram(name: "tty_ldiscs_seq_start", scope: !3, file: !3, line: 207, type: !134, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4245 = !DILocalVariable(name: "m", arg: 1, scope: !4244, file: !3, line: 207, type: !136)
!4246 = !DILocation(line: 207, column: 52, scope: !4244)
!4247 = !DILocalVariable(name: "pos", arg: 2, scope: !4244, file: !3, line: 207, type: !113)
!4248 = !DILocation(line: 207, column: 63, scope: !4244)
!4249 = !DILocation(line: 209, column: 11, scope: !4244)
!4250 = !DILocation(line: 209, column: 10, scope: !4244)
!4251 = !DILocation(line: 209, column: 15, scope: !4244)
!4252 = !DILocation(line: 209, column: 9, scope: !4244)
!4253 = !DILocation(line: 209, column: 30, scope: !4244)
!4254 = !DILocation(line: 209, column: 2, scope: !4244)
!4255 = distinct !DISubprogram(name: "tty_ldiscs_seq_stop", scope: !3, file: !3, line: 218, type: !1918, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4256 = !DILocalVariable(name: "m", arg: 1, scope: !4255, file: !3, line: 218, type: !136)
!4257 = !DILocation(line: 218, column: 50, scope: !4255)
!4258 = !DILocalVariable(name: "v", arg: 2, scope: !4255, file: !3, line: 218, type: !107)
!4259 = !DILocation(line: 218, column: 59, scope: !4255)
!4260 = !DILocation(line: 220, column: 1, scope: !4255)
!4261 = distinct !DISubprogram(name: "tty_ldiscs_seq_next", scope: !3, file: !3, line: 212, type: !1914, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4262 = !DILocalVariable(name: "m", arg: 1, scope: !4261, file: !3, line: 212, type: !136)
!4263 = !DILocation(line: 212, column: 51, scope: !4261)
!4264 = !DILocalVariable(name: "v", arg: 2, scope: !4261, file: !3, line: 212, type: !107)
!4265 = !DILocation(line: 212, column: 60, scope: !4261)
!4266 = !DILocalVariable(name: "pos", arg: 3, scope: !4261, file: !3, line: 212, type: !113)
!4267 = !DILocation(line: 212, column: 71, scope: !4261)
!4268 = !DILocation(line: 214, column: 4, scope: !4261)
!4269 = !DILocation(line: 214, column: 8, scope: !4261)
!4270 = !DILocation(line: 215, column: 11, scope: !4261)
!4271 = !DILocation(line: 215, column: 10, scope: !4261)
!4272 = !DILocation(line: 215, column: 15, scope: !4261)
!4273 = !DILocation(line: 215, column: 9, scope: !4261)
!4274 = !DILocation(line: 215, column: 30, scope: !4261)
!4275 = !DILocation(line: 215, column: 2, scope: !4261)
!4276 = distinct !DISubprogram(name: "tty_ldiscs_seq_show", scope: !3, file: !3, line: 222, type: !1909, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4277 = !DILocalVariable(name: "m", arg: 1, scope: !4276, file: !3, line: 222, type: !136)
!4278 = !DILocation(line: 222, column: 49, scope: !4276)
!4279 = !DILocalVariable(name: "v", arg: 2, scope: !4276, file: !3, line: 222, type: !107)
!4280 = !DILocation(line: 222, column: 58, scope: !4276)
!4281 = !DILocalVariable(name: "i", scope: !4276, file: !3, line: 224, type: !190)
!4282 = !DILocation(line: 224, column: 6, scope: !4276)
!4283 = !DILocation(line: 224, column: 21, scope: !4276)
!4284 = !DILocation(line: 224, column: 11, scope: !4276)
!4285 = !DILocation(line: 224, column: 10, scope: !4276)
!4286 = !DILocalVariable(name: "ldops", scope: !4276, file: !3, line: 225, type: !2824)
!4287 = !DILocation(line: 225, column: 24, scope: !4276)
!4288 = !DILocation(line: 227, column: 20, scope: !4276)
!4289 = !DILocation(line: 227, column: 10, scope: !4276)
!4290 = !DILocation(line: 227, column: 8, scope: !4276)
!4291 = !DILocation(line: 228, column: 13, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 228, column: 6)
!4293 = !DILocation(line: 228, column: 6, scope: !4292)
!4294 = !DILocation(line: 228, column: 6, scope: !4276)
!4295 = !DILocation(line: 229, column: 3, scope: !4292)
!4296 = !DILocation(line: 230, column: 13, scope: !4276)
!4297 = !DILocation(line: 230, column: 31, scope: !4276)
!4298 = !DILocation(line: 230, column: 38, scope: !4276)
!4299 = !DILocation(line: 230, column: 45, scope: !4276)
!4300 = !DILocation(line: 230, column: 52, scope: !4276)
!4301 = !DILocation(line: 230, column: 66, scope: !4276)
!4302 = !DILocation(line: 230, column: 2, scope: !4276)
!4303 = !DILocation(line: 231, column: 12, scope: !4276)
!4304 = !DILocation(line: 231, column: 2, scope: !4276)
!4305 = !DILocation(line: 232, column: 2, scope: !4276)
!4306 = !DILocation(line: 233, column: 1, scope: !4276)
!4307 = distinct !DISubprogram(name: "tty_ldisc_ref_wait", scope: !3, file: !3, line: 262, type: !4308, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!2820, !1644}
!4310 = !DILocalVariable(name: "tty", arg: 1, scope: !4307, file: !3, line: 262, type: !1644)
!4311 = !DILocation(line: 262, column: 57, scope: !4307)
!4312 = !DILocalVariable(name: "ld", scope: !4307, file: !3, line: 264, type: !2820)
!4313 = !DILocation(line: 264, column: 20, scope: !4307)
!4314 = !DILocation(line: 266, column: 19, scope: !4307)
!4315 = !DILocation(line: 266, column: 24, scope: !4307)
!4316 = !DILocation(line: 266, column: 2, scope: !4307)
!4317 = !DILocation(line: 267, column: 7, scope: !4307)
!4318 = !DILocation(line: 267, column: 12, scope: !4307)
!4319 = !DILocation(line: 267, column: 5, scope: !4307)
!4320 = !DILocation(line: 268, column: 7, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 268, column: 6)
!4322 = !DILocation(line: 268, column: 6, scope: !4307)
!4323 = !DILocation(line: 269, column: 18, scope: !4321)
!4324 = !DILocation(line: 269, column: 23, scope: !4321)
!4325 = !DILocation(line: 269, column: 3, scope: !4321)
!4326 = !DILocation(line: 270, column: 9, scope: !4307)
!4327 = !DILocation(line: 270, column: 2, scope: !4307)
!4328 = distinct !DISubprogram(name: "tty_ldisc_ref", scope: !3, file: !3, line: 283, type: !4308, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4329 = !DILocalVariable(name: "tty", arg: 1, scope: !4328, file: !3, line: 283, type: !1644)
!4330 = !DILocation(line: 283, column: 52, scope: !4328)
!4331 = !DILocalVariable(name: "ld", scope: !4328, file: !3, line: 285, type: !2820)
!4332 = !DILocation(line: 285, column: 20, scope: !4328)
!4333 = !DILocation(line: 287, column: 31, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4328, file: !3, line: 287, column: 6)
!4335 = !DILocation(line: 287, column: 36, scope: !4334)
!4336 = !DILocation(line: 287, column: 6, scope: !4334)
!4337 = !DILocation(line: 287, column: 6, scope: !4328)
!4338 = !DILocation(line: 288, column: 8, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 287, column: 48)
!4340 = !DILocation(line: 288, column: 13, scope: !4339)
!4341 = !DILocation(line: 288, column: 6, scope: !4339)
!4342 = !DILocation(line: 289, column: 8, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 289, column: 7)
!4344 = !DILocation(line: 289, column: 7, scope: !4339)
!4345 = !DILocation(line: 290, column: 19, scope: !4343)
!4346 = !DILocation(line: 290, column: 24, scope: !4343)
!4347 = !DILocation(line: 290, column: 4, scope: !4343)
!4348 = !DILocation(line: 291, column: 2, scope: !4339)
!4349 = !DILocation(line: 292, column: 9, scope: !4328)
!4350 = !DILocation(line: 292, column: 2, scope: !4328)
!4351 = distinct !DISubprogram(name: "tty_ldisc_deref", scope: !3, file: !3, line: 304, type: !4352, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !2820}
!4354 = !DILocalVariable(name: "ld", arg: 1, scope: !4351, file: !3, line: 304, type: !2820)
!4355 = !DILocation(line: 304, column: 40, scope: !4351)
!4356 = !DILocation(line: 306, column: 17, scope: !4351)
!4357 = !DILocation(line: 306, column: 21, scope: !4351)
!4358 = !DILocation(line: 306, column: 26, scope: !4351)
!4359 = !DILocation(line: 306, column: 2, scope: !4351)
!4360 = !DILocation(line: 307, column: 1, scope: !4351)
!4361 = distinct !DISubprogram(name: "tty_ldisc_lock", scope: !3, file: !3, line: 329, type: !4362, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!190, !1644, !110}
!4364 = !DILocalVariable(name: "tty", arg: 1, scope: !4361, file: !3, line: 329, type: !1644)
!4365 = !DILocation(line: 329, column: 39, scope: !4361)
!4366 = !DILocalVariable(name: "timeout", arg: 2, scope: !4361, file: !3, line: 329, type: !110)
!4367 = !DILocation(line: 329, column: 58, scope: !4361)
!4368 = !DILocalVariable(name: "ret", scope: !4361, file: !3, line: 331, type: !190)
!4369 = !DILocation(line: 331, column: 6, scope: !4361)
!4370 = !DILocation(line: 334, column: 31, scope: !4361)
!4371 = !DILocation(line: 334, column: 36, scope: !4361)
!4372 = !DILocation(line: 334, column: 2, scope: !4361)
!4373 = !DILocation(line: 335, column: 2, scope: !4361)
!4374 = !DILocation(line: 336, column: 2, scope: !4361)
!4375 = !DILocation(line: 338, column: 25, scope: !4361)
!4376 = !DILocation(line: 338, column: 30, scope: !4361)
!4377 = !DILocation(line: 338, column: 8, scope: !4361)
!4378 = !DILocation(line: 338, column: 6, scope: !4361)
!4379 = !DILocation(line: 339, column: 7, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 339, column: 6)
!4381 = !DILocation(line: 339, column: 6, scope: !4361)
!4382 = !DILocation(line: 340, column: 3, scope: !4380)
!4383 = !DILocation(line: 341, column: 29, scope: !4361)
!4384 = !DILocation(line: 341, column: 34, scope: !4361)
!4385 = !DILocation(line: 341, column: 2, scope: !4361)
!4386 = !DILocation(line: 342, column: 2, scope: !4361)
!4387 = !DILocation(line: 343, column: 1, scope: !4361)
!4388 = distinct !DISubprogram(name: "set_bit", scope: !4389, file: !4389, line: 26, type: !4390, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4389 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !106, !4392}
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!4394 = !DILocalVariable(name: "nr", arg: 1, scope: !4395, file: !4396, line: 52, type: !106)
!4395 = distinct !DISubprogram(name: "arch_set_bit", scope: !4396, file: !4396, line: 52, type: !4390, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4396 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4397 = !DILocation(line: 52, column: 19, scope: !4395, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 29, column: 2, scope: !4388)
!4399 = !DILocalVariable(name: "addr", arg: 2, scope: !4395, file: !4396, line: 52, type: !4392)
!4400 = !DILocation(line: 52, column: 47, scope: !4395, inlinedAt: !4398)
!4401 = !DILocalVariable(name: "v", arg: 1, scope: !4402, file: !4403, line: 84, type: !4406)
!4402 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4403, file: !4403, line: 84, type: !4404, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4403 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4404 = !DISubroutineType(types: !4405)
!4405 = !{null, !4406, !142}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4408)
!4408 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4409 = !DILocation(line: 84, column: 74, scope: !4402, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 28, column: 2, scope: !4388)
!4411 = !DILocalVariable(name: "size", arg: 2, scope: !4402, file: !4403, line: 84, type: !142)
!4412 = !DILocation(line: 84, column: 84, scope: !4402, inlinedAt: !4410)
!4413 = !DILocalVariable(name: "nr", arg: 1, scope: !4388, file: !4389, line: 26, type: !106)
!4414 = !DILocation(line: 26, column: 33, scope: !4388)
!4415 = !DILocalVariable(name: "addr", arg: 2, scope: !4388, file: !4389, line: 26, type: !4392)
!4416 = !DILocation(line: 26, column: 61, scope: !4388)
!4417 = !DILocation(line: 28, column: 26, scope: !4388)
!4418 = !DILocation(line: 28, column: 33, scope: !4388)
!4419 = !DILocation(line: 28, column: 31, scope: !4388)
!4420 = !DILocation(line: 86, column: 20, scope: !4402, inlinedAt: !4410)
!4421 = !DILocation(line: 86, column: 23, scope: !4402, inlinedAt: !4410)
!4422 = !DILocation(line: 86, column: 2, scope: !4402, inlinedAt: !4410)
!4423 = !DILocation(line: 87, column: 2, scope: !4402, inlinedAt: !4410)
!4424 = !DILocation(line: 29, column: 15, scope: !4388)
!4425 = !DILocation(line: 29, column: 19, scope: !4388)
!4426 = !DILocation(line: 54, column: 27, scope: !4427, inlinedAt: !4398)
!4427 = distinct !DILexicalBlock(scope: !4395, file: !4396, line: 54, column: 6)
!4428 = !DILocation(line: 54, column: 6, scope: !4427, inlinedAt: !4398)
!4429 = !DILocation(line: 54, column: 6, scope: !4395, inlinedAt: !4398)
!4430 = !DILocation(line: 56, column: 6, scope: !4431, inlinedAt: !4398)
!4431 = distinct !DILexicalBlock(scope: !4427, file: !4396, line: 54, column: 32)
!4432 = !DILocation(line: 57, column: 12, scope: !4431, inlinedAt: !4398)
!4433 = !DILocation(line: 55, column: 3, scope: !4431, inlinedAt: !4398)
!4434 = !{i32 -2147140118}
!4435 = !DILocation(line: 59, column: 2, scope: !4431, inlinedAt: !4398)
!4436 = !DILocation(line: 61, column: 8, scope: !4437, inlinedAt: !4398)
!4437 = distinct !DILexicalBlock(scope: !4427, file: !4396, line: 59, column: 9)
!4438 = !DILocation(line: 61, column: 32, scope: !4437, inlinedAt: !4398)
!4439 = !DILocation(line: 60, column: 3, scope: !4437, inlinedAt: !4398)
!4440 = !{i32 -2147139986}
!4441 = !DILocation(line: 30, column: 1, scope: !4388)
!4442 = distinct !DISubprogram(name: "__tty_ldisc_lock", scope: !3, file: !3, line: 312, type: !4362, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4443 = !DILocalVariable(name: "tty", arg: 1, scope: !4442, file: !3, line: 312, type: !1644)
!4444 = !DILocation(line: 312, column: 37, scope: !4442)
!4445 = !DILocalVariable(name: "timeout", arg: 2, scope: !4442, file: !3, line: 312, type: !110)
!4446 = !DILocation(line: 312, column: 56, scope: !4442)
!4447 = !DILocation(line: 314, column: 27, scope: !4442)
!4448 = !DILocation(line: 314, column: 32, scope: !4442)
!4449 = !DILocation(line: 314, column: 43, scope: !4442)
!4450 = !DILocation(line: 314, column: 9, scope: !4442)
!4451 = !DILocation(line: 314, column: 2, scope: !4442)
!4452 = distinct !DISubprogram(name: "tty_ldisc_unlock", scope: !3, file: !3, line: 345, type: !2709, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4453 = !DILocalVariable(name: "tty", arg: 1, scope: !4452, file: !3, line: 345, type: !1644)
!4454 = !DILocation(line: 345, column: 42, scope: !4452)
!4455 = !DILocation(line: 347, column: 31, scope: !4452)
!4456 = !DILocation(line: 347, column: 36, scope: !4452)
!4457 = !DILocation(line: 347, column: 2, scope: !4452)
!4458 = !DILocation(line: 349, column: 33, scope: !4452)
!4459 = !DILocation(line: 349, column: 38, scope: !4452)
!4460 = !DILocation(line: 349, column: 2, scope: !4452)
!4461 = !DILocation(line: 350, column: 21, scope: !4452)
!4462 = !DILocation(line: 350, column: 2, scope: !4452)
!4463 = !DILocation(line: 351, column: 1, scope: !4452)
!4464 = distinct !DISubprogram(name: "clear_bit", scope: !4389, file: !4389, line: 39, type: !4390, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4465 = !DILocalVariable(name: "nr", arg: 1, scope: !4466, file: !4396, line: 72, type: !106)
!4466 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4396, file: !4396, line: 72, type: !4390, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4467 = !DILocation(line: 72, column: 21, scope: !4466, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 42, column: 2, scope: !4464)
!4469 = !DILocalVariable(name: "addr", arg: 2, scope: !4466, file: !4396, line: 72, type: !4392)
!4470 = !DILocation(line: 72, column: 49, scope: !4466, inlinedAt: !4468)
!4471 = !DILocation(line: 84, column: 74, scope: !4402, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 41, column: 2, scope: !4464)
!4473 = !DILocation(line: 84, column: 84, scope: !4402, inlinedAt: !4472)
!4474 = !DILocalVariable(name: "nr", arg: 1, scope: !4464, file: !4389, line: 39, type: !106)
!4475 = !DILocation(line: 39, column: 35, scope: !4464)
!4476 = !DILocalVariable(name: "addr", arg: 2, scope: !4464, file: !4389, line: 39, type: !4392)
!4477 = !DILocation(line: 39, column: 63, scope: !4464)
!4478 = !DILocation(line: 41, column: 26, scope: !4464)
!4479 = !DILocation(line: 41, column: 33, scope: !4464)
!4480 = !DILocation(line: 41, column: 31, scope: !4464)
!4481 = !DILocation(line: 86, column: 20, scope: !4402, inlinedAt: !4472)
!4482 = !DILocation(line: 86, column: 23, scope: !4402, inlinedAt: !4472)
!4483 = !DILocation(line: 86, column: 2, scope: !4402, inlinedAt: !4472)
!4484 = !DILocation(line: 87, column: 2, scope: !4402, inlinedAt: !4472)
!4485 = !DILocation(line: 42, column: 17, scope: !4464)
!4486 = !DILocation(line: 42, column: 21, scope: !4464)
!4487 = !DILocation(line: 74, column: 27, scope: !4488, inlinedAt: !4468)
!4488 = distinct !DILexicalBlock(scope: !4466, file: !4396, line: 74, column: 6)
!4489 = !DILocation(line: 74, column: 6, scope: !4488, inlinedAt: !4468)
!4490 = !DILocation(line: 74, column: 6, scope: !4466, inlinedAt: !4468)
!4491 = !DILocation(line: 76, column: 6, scope: !4492, inlinedAt: !4468)
!4492 = distinct !DILexicalBlock(scope: !4488, file: !4396, line: 74, column: 32)
!4493 = !DILocation(line: 77, column: 13, scope: !4492, inlinedAt: !4468)
!4494 = !DILocation(line: 77, column: 12, scope: !4492, inlinedAt: !4468)
!4495 = !DILocation(line: 75, column: 3, scope: !4492, inlinedAt: !4468)
!4496 = !{i32 -2147139164}
!4497 = !DILocation(line: 78, column: 2, scope: !4492, inlinedAt: !4468)
!4498 = !DILocation(line: 80, column: 8, scope: !4499, inlinedAt: !4468)
!4499 = distinct !DILexicalBlock(scope: !4488, file: !4396, line: 78, column: 9)
!4500 = !DILocation(line: 80, column: 32, scope: !4499, inlinedAt: !4468)
!4501 = !DILocation(line: 79, column: 3, scope: !4499, inlinedAt: !4468)
!4502 = !{i32 -2147139032}
!4503 = !DILocation(line: 43, column: 1, scope: !4464)
!4504 = distinct !DISubprogram(name: "__tty_ldisc_unlock", scope: !3, file: !3, line: 324, type: !2709, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4505 = !DILocalVariable(name: "tty", arg: 1, scope: !4504, file: !3, line: 324, type: !1644)
!4506 = !DILocation(line: 324, column: 58, scope: !4504)
!4507 = !DILocation(line: 326, column: 18, scope: !4504)
!4508 = !DILocation(line: 326, column: 23, scope: !4504)
!4509 = !DILocation(line: 326, column: 2, scope: !4504)
!4510 = !DILocation(line: 327, column: 1, scope: !4504)
!4511 = distinct !DISubprogram(name: "tty_ldisc_flush", scope: !3, file: !3, line: 410, type: !2709, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4512 = !DILocalVariable(name: "tty", arg: 1, scope: !4511, file: !3, line: 410, type: !1644)
!4513 = !DILocation(line: 410, column: 41, scope: !4511)
!4514 = !DILocalVariable(name: "ld", scope: !4511, file: !3, line: 412, type: !2820)
!4515 = !DILocation(line: 412, column: 20, scope: !4511)
!4516 = !DILocation(line: 412, column: 39, scope: !4511)
!4517 = !DILocation(line: 412, column: 25, scope: !4511)
!4518 = !DILocation(line: 414, column: 19, scope: !4511)
!4519 = !DILocation(line: 414, column: 24, scope: !4511)
!4520 = !DILocation(line: 414, column: 2, scope: !4511)
!4521 = !DILocation(line: 415, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 415, column: 6)
!4523 = !DILocation(line: 415, column: 6, scope: !4511)
!4524 = !DILocation(line: 416, column: 19, scope: !4522)
!4525 = !DILocation(line: 416, column: 3, scope: !4522)
!4526 = !DILocation(line: 417, column: 1, scope: !4511)
!4527 = distinct !DISubprogram(name: "tty_set_ldisc", scope: !3, file: !3, line: 552, type: !2745, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4528 = !DILocalVariable(name: "tty", arg: 1, scope: !4527, file: !3, line: 552, type: !1644)
!4529 = !DILocation(line: 552, column: 38, scope: !4527)
!4530 = !DILocalVariable(name: "disc", arg: 2, scope: !4527, file: !3, line: 552, type: !190)
!4531 = !DILocation(line: 552, column: 47, scope: !4527)
!4532 = !DILocalVariable(name: "retval", scope: !4527, file: !3, line: 554, type: !190)
!4533 = !DILocation(line: 554, column: 6, scope: !4527)
!4534 = !DILocalVariable(name: "old_ldisc", scope: !4527, file: !3, line: 555, type: !2820)
!4535 = !DILocation(line: 555, column: 20, scope: !4527)
!4536 = !DILocalVariable(name: "new_ldisc", scope: !4527, file: !3, line: 555, type: !2820)
!4537 = !DILocation(line: 555, column: 32, scope: !4527)
!4538 = !DILocation(line: 557, column: 28, scope: !4527)
!4539 = !DILocation(line: 557, column: 33, scope: !4527)
!4540 = !DILocation(line: 557, column: 14, scope: !4527)
!4541 = !DILocation(line: 557, column: 12, scope: !4527)
!4542 = !DILocation(line: 558, column: 13, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 558, column: 6)
!4544 = !DILocation(line: 558, column: 6, scope: !4543)
!4545 = !DILocation(line: 558, column: 6, scope: !4527)
!4546 = !DILocation(line: 559, column: 18, scope: !4543)
!4547 = !DILocation(line: 559, column: 10, scope: !4543)
!4548 = !DILocation(line: 559, column: 3, scope: !4543)
!4549 = !DILocation(line: 561, column: 11, scope: !4527)
!4550 = !DILocation(line: 561, column: 2, scope: !4527)
!4551 = !DILocation(line: 562, column: 26, scope: !4527)
!4552 = !DILocation(line: 562, column: 11, scope: !4527)
!4553 = !DILocation(line: 562, column: 9, scope: !4527)
!4554 = !DILocation(line: 563, column: 6, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 563, column: 6)
!4556 = !DILocation(line: 563, column: 6, scope: !4527)
!4557 = !DILocation(line: 564, column: 3, scope: !4555)
!4558 = !DILocation(line: 566, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 566, column: 6)
!4560 = !DILocation(line: 566, column: 12, scope: !4559)
!4561 = !DILocation(line: 566, column: 6, scope: !4527)
!4562 = !DILocation(line: 567, column: 10, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 566, column: 19)
!4564 = !DILocation(line: 568, column: 3, scope: !4563)
!4565 = !DILocation(line: 572, column: 6, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 572, column: 6)
!4567 = !DILocation(line: 572, column: 11, scope: !4566)
!4568 = !DILocation(line: 572, column: 18, scope: !4566)
!4569 = !DILocation(line: 572, column: 23, scope: !4566)
!4570 = !DILocation(line: 572, column: 30, scope: !4566)
!4571 = !DILocation(line: 572, column: 27, scope: !4566)
!4572 = !DILocation(line: 572, column: 6, scope: !4527)
!4573 = !DILocation(line: 573, column: 3, scope: !4566)
!4574 = !DILocation(line: 575, column: 28, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 575, column: 6)
!4576 = !DILocation(line: 575, column: 33, scope: !4575)
!4577 = !DILocation(line: 575, column: 6, scope: !4575)
!4578 = !DILocation(line: 575, column: 6, scope: !4527)
!4579 = !DILocation(line: 577, column: 10, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 575, column: 41)
!4581 = !DILocation(line: 578, column: 3, scope: !4580)
!4582 = !DILocation(line: 581, column: 14, scope: !4527)
!4583 = !DILocation(line: 581, column: 19, scope: !4527)
!4584 = !DILocation(line: 581, column: 12, scope: !4527)
!4585 = !DILocation(line: 584, column: 18, scope: !4527)
!4586 = !DILocation(line: 584, column: 23, scope: !4527)
!4587 = !DILocation(line: 584, column: 2, scope: !4527)
!4588 = !DILocation(line: 587, column: 15, scope: !4527)
!4589 = !DILocation(line: 587, column: 2, scope: !4527)
!4590 = !DILocation(line: 587, column: 7, scope: !4527)
!4591 = !DILocation(line: 587, column: 13, scope: !4527)
!4592 = !DILocation(line: 588, column: 24, scope: !4527)
!4593 = !DILocation(line: 588, column: 29, scope: !4527)
!4594 = !DILocation(line: 588, column: 2, scope: !4527)
!4595 = !DILocation(line: 590, column: 26, scope: !4527)
!4596 = !DILocation(line: 590, column: 31, scope: !4527)
!4597 = !DILocation(line: 590, column: 11, scope: !4527)
!4598 = !DILocation(line: 590, column: 9, scope: !4527)
!4599 = !DILocation(line: 591, column: 6, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 591, column: 6)
!4601 = !DILocation(line: 591, column: 13, scope: !4600)
!4602 = !DILocation(line: 591, column: 6, scope: !4527)
!4603 = !DILocation(line: 593, column: 17, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 591, column: 18)
!4605 = !DILocation(line: 593, column: 3, scope: !4604)
!4606 = !DILocation(line: 594, column: 21, scope: !4604)
!4607 = !DILocation(line: 594, column: 26, scope: !4604)
!4608 = !DILocation(line: 594, column: 3, scope: !4604)
!4609 = !DILocation(line: 595, column: 2, scope: !4604)
!4610 = !DILocation(line: 597, column: 6, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4527, file: !3, line: 597, column: 6)
!4612 = !DILocation(line: 597, column: 11, scope: !4611)
!4613 = !DILocation(line: 597, column: 18, scope: !4611)
!4614 = !DILocation(line: 597, column: 23, scope: !4611)
!4615 = !DILocation(line: 597, column: 30, scope: !4611)
!4616 = !DILocation(line: 597, column: 41, scope: !4611)
!4617 = !DILocation(line: 597, column: 46, scope: !4611)
!4618 = !DILocation(line: 597, column: 27, scope: !4611)
!4619 = !DILocation(line: 597, column: 50, scope: !4611)
!4620 = !DILocation(line: 597, column: 53, scope: !4611)
!4621 = !DILocation(line: 597, column: 58, scope: !4611)
!4622 = !DILocation(line: 597, column: 63, scope: !4611)
!4623 = !DILocation(line: 597, column: 6, scope: !4527)
!4624 = !DILocation(line: 598, column: 14, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 597, column: 74)
!4626 = !DILocation(line: 598, column: 19, scope: !4625)
!4627 = !DILocation(line: 598, column: 3, scope: !4625)
!4628 = !DILocation(line: 599, column: 3, scope: !4625)
!4629 = !DILocation(line: 599, column: 8, scope: !4625)
!4630 = !DILocation(line: 599, column: 13, scope: !4625)
!4631 = !DILocation(line: 599, column: 23, scope: !4625)
!4632 = !DILocation(line: 600, column: 12, scope: !4625)
!4633 = !DILocation(line: 600, column: 17, scope: !4625)
!4634 = !DILocation(line: 600, column: 3, scope: !4625)
!4635 = !DILocation(line: 601, column: 2, scope: !4625)
!4636 = !DILocation(line: 608, column: 14, scope: !4527)
!4637 = !DILocation(line: 608, column: 12, scope: !4527)
!4638 = !DILocation(line: 608, column: 2, scope: !4527)
!4639 = !DILabel(scope: !4527, name: "out", file: !3, line: 609)
!4640 = !DILocation(line: 609, column: 1, scope: !4527)
!4641 = !DILocation(line: 610, column: 19, scope: !4527)
!4642 = !DILocation(line: 610, column: 2, scope: !4527)
!4643 = !DILocation(line: 614, column: 26, scope: !4527)
!4644 = !DILocation(line: 614, column: 31, scope: !4527)
!4645 = !DILocation(line: 614, column: 2, scope: !4527)
!4646 = !DILabel(scope: !4527, name: "err", file: !3, line: 615)
!4647 = !DILocation(line: 615, column: 1, scope: !4527)
!4648 = !DILocation(line: 616, column: 16, scope: !4527)
!4649 = !DILocation(line: 616, column: 2, scope: !4527)
!4650 = !DILocation(line: 617, column: 13, scope: !4527)
!4651 = !DILocation(line: 617, column: 2, scope: !4527)
!4652 = !DILocation(line: 618, column: 9, scope: !4527)
!4653 = !DILocation(line: 618, column: 2, scope: !4527)
!4654 = !DILocation(line: 619, column: 1, scope: !4527)
!4655 = distinct !DISubprogram(name: "tty_ldisc_get", scope: !3, file: !3, line: 160, type: !4656, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!2820, !1644, !190}
!4658 = !DILocalVariable(name: "s", arg: 1, scope: !4659, file: !99, line: 445, type: !772)
!4659 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !99, file: !99, line: 445, type: !4660, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!107, !772, !123, !142}
!4662 = !DILocation(line: 445, column: 72, scope: !4659, inlinedAt: !4663)
!4663 = distinct !DILocation(line: 552, column: 10, scope: !4664, inlinedAt: !4669)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !99, line: 540, column: 34)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !99, line: 540, column: 6)
!4666 = distinct !DISubprogram(name: "kmalloc", scope: !99, file: !99, line: 538, type: !4667, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!107, !142, !123}
!4669 = distinct !DILocation(line: 186, column: 7, scope: !4655)
!4670 = !DILocalVariable(name: "flags", arg: 2, scope: !4659, file: !99, line: 446, type: !123)
!4671 = !DILocation(line: 446, column: 9, scope: !4659, inlinedAt: !4663)
!4672 = !DILocalVariable(name: "size", arg: 3, scope: !4659, file: !99, line: 446, type: !142)
!4673 = !DILocation(line: 446, column: 23, scope: !4659, inlinedAt: !4663)
!4674 = !DILocalVariable(name: "ret", scope: !4659, file: !99, line: 448, type: !107)
!4675 = !DILocation(line: 448, column: 8, scope: !4659, inlinedAt: !4663)
!4676 = !DILocalVariable(name: "flags", arg: 1, scope: !4677, file: !99, line: 318, type: !123)
!4677 = distinct !DISubprogram(name: "kmalloc_type", scope: !99, file: !99, line: 318, type: !4678, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!98, !123}
!4680 = !DILocation(line: 318, column: 67, scope: !4677, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 553, column: 20, scope: !4664, inlinedAt: !4669)
!4682 = !DILocalVariable(name: "size", arg: 1, scope: !4683, file: !99, line: 346, type: !142)
!4683 = distinct !DISubprogram(name: "kmalloc_index", scope: !99, file: !99, line: 346, type: !4684, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!7, !142}
!4686 = !DILocation(line: 346, column: 58, scope: !4683, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 547, column: 11, scope: !4664, inlinedAt: !4669)
!4688 = !DILocalVariable(name: "size", arg: 1, scope: !4689, file: !99, line: 472, type: !142)
!4689 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !99, file: !99, line: 472, type: !4690, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{!107, !142, !123, !7}
!4692 = !DILocation(line: 472, column: 28, scope: !4689, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 481, column: 9, scope: !4694, inlinedAt: !4695)
!4694 = distinct !DISubprogram(name: "kmalloc_large", scope: !99, file: !99, line: 478, type: !4667, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4695 = distinct !DILocation(line: 545, column: 11, scope: !4696, inlinedAt: !4669)
!4696 = distinct !DILexicalBlock(scope: !4664, file: !99, line: 544, column: 7)
!4697 = !DILocalVariable(name: "flags", arg: 2, scope: !4689, file: !99, line: 472, type: !123)
!4698 = !DILocation(line: 472, column: 40, scope: !4689, inlinedAt: !4693)
!4699 = !DILocalVariable(name: "order", arg: 3, scope: !4689, file: !99, line: 472, type: !7)
!4700 = !DILocation(line: 472, column: 60, scope: !4689, inlinedAt: !4693)
!4701 = !DILocalVariable(name: "size", arg: 1, scope: !4694, file: !99, line: 478, type: !142)
!4702 = !DILocation(line: 478, column: 51, scope: !4694, inlinedAt: !4695)
!4703 = !DILocalVariable(name: "flags", arg: 2, scope: !4694, file: !99, line: 478, type: !123)
!4704 = !DILocation(line: 478, column: 63, scope: !4694, inlinedAt: !4695)
!4705 = !DILocalVariable(name: "order", scope: !4694, file: !99, line: 480, type: !7)
!4706 = !DILocation(line: 480, column: 15, scope: !4694, inlinedAt: !4695)
!4707 = !DILocalVariable(name: "size", arg: 1, scope: !4666, file: !99, line: 538, type: !142)
!4708 = !DILocation(line: 538, column: 45, scope: !4666, inlinedAt: !4669)
!4709 = !DILocalVariable(name: "flags", arg: 2, scope: !4666, file: !99, line: 538, type: !123)
!4710 = !DILocation(line: 538, column: 57, scope: !4666, inlinedAt: !4669)
!4711 = !DILocalVariable(name: "index", scope: !4664, file: !99, line: 542, type: !7)
!4712 = !DILocation(line: 542, column: 16, scope: !4664, inlinedAt: !4669)
!4713 = !DILocalVariable(name: "tty", arg: 1, scope: !4655, file: !3, line: 160, type: !1644)
!4714 = !DILocation(line: 160, column: 59, scope: !4655)
!4715 = !DILocalVariable(name: "disc", arg: 2, scope: !4655, file: !3, line: 160, type: !190)
!4716 = !DILocation(line: 160, column: 68, scope: !4655)
!4717 = !DILocalVariable(name: "ld", scope: !4655, file: !3, line: 162, type: !2820)
!4718 = !DILocation(line: 162, column: 20, scope: !4655)
!4719 = !DILocalVariable(name: "ldops", scope: !4655, file: !3, line: 163, type: !2824)
!4720 = !DILocation(line: 163, column: 24, scope: !4655)
!4721 = !DILocation(line: 165, column: 6, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 165, column: 6)
!4723 = !DILocation(line: 165, column: 11, scope: !4722)
!4724 = !DILocation(line: 165, column: 19, scope: !4722)
!4725 = !DILocation(line: 165, column: 22, scope: !4722)
!4726 = !DILocation(line: 165, column: 27, scope: !4722)
!4727 = !DILocation(line: 165, column: 6, scope: !4655)
!4728 = !DILocation(line: 166, column: 10, scope: !4722)
!4729 = !DILocation(line: 166, column: 3, scope: !4722)
!4730 = !DILocation(line: 172, column: 20, scope: !4655)
!4731 = !DILocation(line: 172, column: 10, scope: !4655)
!4732 = !DILocation(line: 172, column: 8, scope: !4655)
!4733 = !DILocation(line: 173, column: 13, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 173, column: 6)
!4735 = !DILocation(line: 173, column: 6, scope: !4734)
!4736 = !DILocation(line: 173, column: 6, scope: !4655)
!4737 = !DILocation(line: 174, column: 8, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 174, column: 7)
!4739 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 173, column: 21)
!4740 = !DILocation(line: 174, column: 32, scope: !4738)
!4741 = !DILocation(line: 174, column: 36, scope: !4738)
!4742 = !DILocation(line: 174, column: 7, scope: !4739)
!4743 = !DILocation(line: 175, column: 11, scope: !4738)
!4744 = !DILocation(line: 175, column: 4, scope: !4738)
!4745 = !DILocation(line: 176, column: 34, scope: !4739)
!4746 = !DILocation(line: 176, column: 3, scope: !4739)
!4747 = !DILocation(line: 177, column: 21, scope: !4739)
!4748 = !DILocation(line: 177, column: 11, scope: !4739)
!4749 = !DILocation(line: 177, column: 9, scope: !4739)
!4750 = !DILocation(line: 178, column: 14, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 178, column: 7)
!4752 = !DILocation(line: 178, column: 7, scope: !4751)
!4753 = !DILocation(line: 178, column: 7, scope: !4739)
!4754 = !DILocation(line: 179, column: 20, scope: !4751)
!4755 = !DILocation(line: 179, column: 11, scope: !4751)
!4756 = !DILocation(line: 179, column: 4, scope: !4751)
!4757 = !DILocation(line: 180, column: 2, scope: !4739)
!4758 = !DILocation(line: 540, column: 27, scope: !4665, inlinedAt: !4669)
!4759 = !DILocation(line: 540, column: 6, scope: !4665, inlinedAt: !4669)
!4760 = !DILocation(line: 540, column: 6, scope: !4666, inlinedAt: !4669)
!4761 = !DILocation(line: 544, column: 7, scope: !4696, inlinedAt: !4669)
!4762 = !DILocation(line: 544, column: 12, scope: !4696, inlinedAt: !4669)
!4763 = !DILocation(line: 544, column: 7, scope: !4664, inlinedAt: !4669)
!4764 = !DILocation(line: 545, column: 25, scope: !4696, inlinedAt: !4669)
!4765 = !DILocation(line: 545, column: 31, scope: !4696, inlinedAt: !4669)
!4766 = !DILocation(line: 480, column: 33, scope: !4694, inlinedAt: !4695)
!4767 = !DILocation(line: 480, column: 23, scope: !4694, inlinedAt: !4695)
!4768 = !DILocation(line: 481, column: 29, scope: !4694, inlinedAt: !4695)
!4769 = !DILocation(line: 481, column: 35, scope: !4694, inlinedAt: !4695)
!4770 = !DILocation(line: 481, column: 42, scope: !4694, inlinedAt: !4695)
!4771 = !DILocation(line: 474, column: 23, scope: !4689, inlinedAt: !4693)
!4772 = !DILocation(line: 474, column: 29, scope: !4689, inlinedAt: !4693)
!4773 = !DILocation(line: 474, column: 36, scope: !4689, inlinedAt: !4693)
!4774 = !DILocation(line: 474, column: 9, scope: !4689, inlinedAt: !4693)
!4775 = !DILocation(line: 545, column: 4, scope: !4696, inlinedAt: !4669)
!4776 = !DILocation(line: 547, column: 25, scope: !4664, inlinedAt: !4669)
!4777 = !DILocation(line: 348, column: 7, scope: !4778, inlinedAt: !4687)
!4778 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 348, column: 6)
!4779 = !DILocation(line: 348, column: 6, scope: !4683, inlinedAt: !4687)
!4780 = !DILocation(line: 349, column: 3, scope: !4778, inlinedAt: !4687)
!4781 = !DILocation(line: 351, column: 6, scope: !4782, inlinedAt: !4687)
!4782 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 351, column: 6)
!4783 = !DILocation(line: 351, column: 11, scope: !4782, inlinedAt: !4687)
!4784 = !DILocation(line: 351, column: 6, scope: !4683, inlinedAt: !4687)
!4785 = !DILocation(line: 352, column: 3, scope: !4782, inlinedAt: !4687)
!4786 = !DILocation(line: 354, column: 32, scope: !4787, inlinedAt: !4687)
!4787 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 354, column: 6)
!4788 = !DILocation(line: 354, column: 37, scope: !4787, inlinedAt: !4687)
!4789 = !DILocation(line: 354, column: 42, scope: !4787, inlinedAt: !4687)
!4790 = !DILocation(line: 354, column: 45, scope: !4787, inlinedAt: !4687)
!4791 = !DILocation(line: 354, column: 50, scope: !4787, inlinedAt: !4687)
!4792 = !DILocation(line: 354, column: 6, scope: !4683, inlinedAt: !4687)
!4793 = !DILocation(line: 355, column: 3, scope: !4787, inlinedAt: !4687)
!4794 = !DILocation(line: 356, column: 32, scope: !4795, inlinedAt: !4687)
!4795 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 356, column: 6)
!4796 = !DILocation(line: 356, column: 37, scope: !4795, inlinedAt: !4687)
!4797 = !DILocation(line: 356, column: 43, scope: !4795, inlinedAt: !4687)
!4798 = !DILocation(line: 356, column: 46, scope: !4795, inlinedAt: !4687)
!4799 = !DILocation(line: 356, column: 51, scope: !4795, inlinedAt: !4687)
!4800 = !DILocation(line: 356, column: 6, scope: !4683, inlinedAt: !4687)
!4801 = !DILocation(line: 357, column: 3, scope: !4795, inlinedAt: !4687)
!4802 = !DILocation(line: 358, column: 6, scope: !4803, inlinedAt: !4687)
!4803 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 358, column: 6)
!4804 = !DILocation(line: 358, column: 11, scope: !4803, inlinedAt: !4687)
!4805 = !DILocation(line: 358, column: 6, scope: !4683, inlinedAt: !4687)
!4806 = !DILocation(line: 358, column: 26, scope: !4803, inlinedAt: !4687)
!4807 = !DILocation(line: 359, column: 6, scope: !4808, inlinedAt: !4687)
!4808 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 359, column: 6)
!4809 = !DILocation(line: 359, column: 11, scope: !4808, inlinedAt: !4687)
!4810 = !DILocation(line: 359, column: 6, scope: !4683, inlinedAt: !4687)
!4811 = !DILocation(line: 359, column: 26, scope: !4808, inlinedAt: !4687)
!4812 = !DILocation(line: 360, column: 6, scope: !4813, inlinedAt: !4687)
!4813 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 360, column: 6)
!4814 = !DILocation(line: 360, column: 11, scope: !4813, inlinedAt: !4687)
!4815 = !DILocation(line: 360, column: 6, scope: !4683, inlinedAt: !4687)
!4816 = !DILocation(line: 360, column: 26, scope: !4813, inlinedAt: !4687)
!4817 = !DILocation(line: 361, column: 6, scope: !4818, inlinedAt: !4687)
!4818 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 361, column: 6)
!4819 = !DILocation(line: 361, column: 11, scope: !4818, inlinedAt: !4687)
!4820 = !DILocation(line: 361, column: 6, scope: !4683, inlinedAt: !4687)
!4821 = !DILocation(line: 361, column: 26, scope: !4818, inlinedAt: !4687)
!4822 = !DILocation(line: 362, column: 6, scope: !4823, inlinedAt: !4687)
!4823 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 362, column: 6)
!4824 = !DILocation(line: 362, column: 11, scope: !4823, inlinedAt: !4687)
!4825 = !DILocation(line: 362, column: 6, scope: !4683, inlinedAt: !4687)
!4826 = !DILocation(line: 362, column: 26, scope: !4823, inlinedAt: !4687)
!4827 = !DILocation(line: 363, column: 6, scope: !4828, inlinedAt: !4687)
!4828 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 363, column: 6)
!4829 = !DILocation(line: 363, column: 11, scope: !4828, inlinedAt: !4687)
!4830 = !DILocation(line: 363, column: 6, scope: !4683, inlinedAt: !4687)
!4831 = !DILocation(line: 363, column: 26, scope: !4828, inlinedAt: !4687)
!4832 = !DILocation(line: 364, column: 6, scope: !4833, inlinedAt: !4687)
!4833 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 364, column: 6)
!4834 = !DILocation(line: 364, column: 11, scope: !4833, inlinedAt: !4687)
!4835 = !DILocation(line: 364, column: 6, scope: !4683, inlinedAt: !4687)
!4836 = !DILocation(line: 364, column: 26, scope: !4833, inlinedAt: !4687)
!4837 = !DILocation(line: 365, column: 6, scope: !4838, inlinedAt: !4687)
!4838 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 365, column: 6)
!4839 = !DILocation(line: 365, column: 11, scope: !4838, inlinedAt: !4687)
!4840 = !DILocation(line: 365, column: 6, scope: !4683, inlinedAt: !4687)
!4841 = !DILocation(line: 365, column: 26, scope: !4838, inlinedAt: !4687)
!4842 = !DILocation(line: 366, column: 6, scope: !4843, inlinedAt: !4687)
!4843 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 366, column: 6)
!4844 = !DILocation(line: 366, column: 11, scope: !4843, inlinedAt: !4687)
!4845 = !DILocation(line: 366, column: 6, scope: !4683, inlinedAt: !4687)
!4846 = !DILocation(line: 366, column: 26, scope: !4843, inlinedAt: !4687)
!4847 = !DILocation(line: 367, column: 6, scope: !4848, inlinedAt: !4687)
!4848 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 367, column: 6)
!4849 = !DILocation(line: 367, column: 11, scope: !4848, inlinedAt: !4687)
!4850 = !DILocation(line: 367, column: 6, scope: !4683, inlinedAt: !4687)
!4851 = !DILocation(line: 367, column: 26, scope: !4848, inlinedAt: !4687)
!4852 = !DILocation(line: 368, column: 6, scope: !4853, inlinedAt: !4687)
!4853 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 368, column: 6)
!4854 = !DILocation(line: 368, column: 11, scope: !4853, inlinedAt: !4687)
!4855 = !DILocation(line: 368, column: 6, scope: !4683, inlinedAt: !4687)
!4856 = !DILocation(line: 368, column: 26, scope: !4853, inlinedAt: !4687)
!4857 = !DILocation(line: 369, column: 6, scope: !4858, inlinedAt: !4687)
!4858 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 369, column: 6)
!4859 = !DILocation(line: 369, column: 11, scope: !4858, inlinedAt: !4687)
!4860 = !DILocation(line: 369, column: 6, scope: !4683, inlinedAt: !4687)
!4861 = !DILocation(line: 369, column: 26, scope: !4858, inlinedAt: !4687)
!4862 = !DILocation(line: 370, column: 6, scope: !4863, inlinedAt: !4687)
!4863 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 370, column: 6)
!4864 = !DILocation(line: 370, column: 11, scope: !4863, inlinedAt: !4687)
!4865 = !DILocation(line: 370, column: 6, scope: !4683, inlinedAt: !4687)
!4866 = !DILocation(line: 370, column: 26, scope: !4863, inlinedAt: !4687)
!4867 = !DILocation(line: 371, column: 6, scope: !4868, inlinedAt: !4687)
!4868 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 371, column: 6)
!4869 = !DILocation(line: 371, column: 11, scope: !4868, inlinedAt: !4687)
!4870 = !DILocation(line: 371, column: 6, scope: !4683, inlinedAt: !4687)
!4871 = !DILocation(line: 371, column: 26, scope: !4868, inlinedAt: !4687)
!4872 = !DILocation(line: 372, column: 6, scope: !4873, inlinedAt: !4687)
!4873 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 372, column: 6)
!4874 = !DILocation(line: 372, column: 11, scope: !4873, inlinedAt: !4687)
!4875 = !DILocation(line: 372, column: 6, scope: !4683, inlinedAt: !4687)
!4876 = !DILocation(line: 372, column: 26, scope: !4873, inlinedAt: !4687)
!4877 = !DILocation(line: 373, column: 6, scope: !4878, inlinedAt: !4687)
!4878 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 373, column: 6)
!4879 = !DILocation(line: 373, column: 11, scope: !4878, inlinedAt: !4687)
!4880 = !DILocation(line: 373, column: 6, scope: !4683, inlinedAt: !4687)
!4881 = !DILocation(line: 373, column: 26, scope: !4878, inlinedAt: !4687)
!4882 = !DILocation(line: 374, column: 6, scope: !4883, inlinedAt: !4687)
!4883 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 374, column: 6)
!4884 = !DILocation(line: 374, column: 11, scope: !4883, inlinedAt: !4687)
!4885 = !DILocation(line: 374, column: 6, scope: !4683, inlinedAt: !4687)
!4886 = !DILocation(line: 374, column: 26, scope: !4883, inlinedAt: !4687)
!4887 = !DILocation(line: 375, column: 6, scope: !4888, inlinedAt: !4687)
!4888 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 375, column: 6)
!4889 = !DILocation(line: 375, column: 11, scope: !4888, inlinedAt: !4687)
!4890 = !DILocation(line: 375, column: 6, scope: !4683, inlinedAt: !4687)
!4891 = !DILocation(line: 375, column: 27, scope: !4888, inlinedAt: !4687)
!4892 = !DILocation(line: 376, column: 6, scope: !4893, inlinedAt: !4687)
!4893 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 376, column: 6)
!4894 = !DILocation(line: 376, column: 11, scope: !4893, inlinedAt: !4687)
!4895 = !DILocation(line: 376, column: 6, scope: !4683, inlinedAt: !4687)
!4896 = !DILocation(line: 376, column: 32, scope: !4893, inlinedAt: !4687)
!4897 = !DILocation(line: 377, column: 6, scope: !4898, inlinedAt: !4687)
!4898 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 377, column: 6)
!4899 = !DILocation(line: 377, column: 11, scope: !4898, inlinedAt: !4687)
!4900 = !DILocation(line: 377, column: 6, scope: !4683, inlinedAt: !4687)
!4901 = !DILocation(line: 377, column: 32, scope: !4898, inlinedAt: !4687)
!4902 = !DILocation(line: 378, column: 6, scope: !4903, inlinedAt: !4687)
!4903 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 378, column: 6)
!4904 = !DILocation(line: 378, column: 11, scope: !4903, inlinedAt: !4687)
!4905 = !DILocation(line: 378, column: 6, scope: !4683, inlinedAt: !4687)
!4906 = !DILocation(line: 378, column: 32, scope: !4903, inlinedAt: !4687)
!4907 = !DILocation(line: 379, column: 6, scope: !4908, inlinedAt: !4687)
!4908 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 379, column: 6)
!4909 = !DILocation(line: 379, column: 11, scope: !4908, inlinedAt: !4687)
!4910 = !DILocation(line: 379, column: 6, scope: !4683, inlinedAt: !4687)
!4911 = !DILocation(line: 379, column: 33, scope: !4908, inlinedAt: !4687)
!4912 = !DILocation(line: 380, column: 6, scope: !4913, inlinedAt: !4687)
!4913 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 380, column: 6)
!4914 = !DILocation(line: 380, column: 11, scope: !4913, inlinedAt: !4687)
!4915 = !DILocation(line: 380, column: 6, scope: !4683, inlinedAt: !4687)
!4916 = !DILocation(line: 380, column: 33, scope: !4913, inlinedAt: !4687)
!4917 = !DILocation(line: 381, column: 6, scope: !4918, inlinedAt: !4687)
!4918 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 381, column: 6)
!4919 = !DILocation(line: 381, column: 11, scope: !4918, inlinedAt: !4687)
!4920 = !DILocation(line: 381, column: 6, scope: !4683, inlinedAt: !4687)
!4921 = !DILocation(line: 381, column: 33, scope: !4918, inlinedAt: !4687)
!4922 = !DILocation(line: 382, column: 2, scope: !4923, inlinedAt: !4687)
!4923 = distinct !DILexicalBlock(scope: !4924, file: !99, line: 382, column: 2)
!4924 = distinct !DILexicalBlock(scope: !4683, file: !99, line: 382, column: 2)
!4925 = !{i32 -2142215875, i32 -2142215846, i32 -2142215800, i32 -2142215742, i32 -2142215688, i32 -2142215634, i32 -2142215579, i32 -2142215548}
!4926 = !DILocation(line: 382, column: 2, scope: !4927, inlinedAt: !4687)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !99, line: 382, column: 2)
!4928 = distinct !DILexicalBlock(scope: !4924, file: !99, line: 382, column: 2)
!4929 = !{i32 -2142215105, i32 -2142215098, i32 -2142215044, i32 -2142215013, i32 -2142214983}
!4930 = !DILocation(line: 382, column: 2, scope: !4928, inlinedAt: !4687)
!4931 = !DILocation(line: 386, column: 1, scope: !4683, inlinedAt: !4687)
!4932 = !DILocation(line: 547, column: 9, scope: !4664, inlinedAt: !4669)
!4933 = !DILocation(line: 549, column: 8, scope: !4934, inlinedAt: !4669)
!4934 = distinct !DILexicalBlock(scope: !4664, file: !99, line: 549, column: 7)
!4935 = !DILocation(line: 549, column: 7, scope: !4664, inlinedAt: !4669)
!4936 = !DILocation(line: 550, column: 4, scope: !4934, inlinedAt: !4669)
!4937 = !DILocation(line: 553, column: 33, scope: !4664, inlinedAt: !4669)
!4938 = !DILocation(line: 325, column: 6, scope: !4939, inlinedAt: !4681)
!4939 = distinct !DILexicalBlock(scope: !4677, file: !99, line: 325, column: 6)
!4940 = !DILocation(line: 325, column: 6, scope: !4677, inlinedAt: !4681)
!4941 = !DILocation(line: 326, column: 3, scope: !4939, inlinedAt: !4681)
!4942 = !DILocation(line: 332, column: 9, scope: !4677, inlinedAt: !4681)
!4943 = !DILocation(line: 332, column: 15, scope: !4677, inlinedAt: !4681)
!4944 = !DILocation(line: 332, column: 2, scope: !4677, inlinedAt: !4681)
!4945 = !DILocation(line: 336, column: 1, scope: !4677, inlinedAt: !4681)
!4946 = !DILocation(line: 553, column: 5, scope: !4664, inlinedAt: !4669)
!4947 = !DILocation(line: 553, column: 41, scope: !4664, inlinedAt: !4669)
!4948 = !DILocation(line: 554, column: 5, scope: !4664, inlinedAt: !4669)
!4949 = !DILocation(line: 554, column: 12, scope: !4664, inlinedAt: !4669)
!4950 = !DILocation(line: 448, column: 31, scope: !4659, inlinedAt: !4663)
!4951 = !DILocation(line: 448, column: 34, scope: !4659, inlinedAt: !4663)
!4952 = !DILocation(line: 448, column: 14, scope: !4659, inlinedAt: !4663)
!4953 = !DILocation(line: 450, column: 22, scope: !4659, inlinedAt: !4663)
!4954 = !DILocation(line: 450, column: 25, scope: !4659, inlinedAt: !4663)
!4955 = !DILocation(line: 450, column: 30, scope: !4659, inlinedAt: !4663)
!4956 = !DILocation(line: 450, column: 36, scope: !4659, inlinedAt: !4663)
!4957 = !DILocation(line: 450, column: 8, scope: !4659, inlinedAt: !4663)
!4958 = !DILocation(line: 450, column: 6, scope: !4659, inlinedAt: !4663)
!4959 = !DILocation(line: 451, column: 9, scope: !4659, inlinedAt: !4663)
!4960 = !DILocation(line: 552, column: 3, scope: !4664, inlinedAt: !4669)
!4961 = !DILocation(line: 557, column: 19, scope: !4666, inlinedAt: !4669)
!4962 = !DILocation(line: 557, column: 25, scope: !4666, inlinedAt: !4669)
!4963 = !DILocation(line: 557, column: 9, scope: !4666, inlinedAt: !4669)
!4964 = !DILocation(line: 557, column: 2, scope: !4666, inlinedAt: !4669)
!4965 = !DILocation(line: 558, column: 1, scope: !4666, inlinedAt: !4669)
!4966 = !DILocation(line: 186, column: 7, scope: !4655)
!4967 = !DILocation(line: 186, column: 5, scope: !4655)
!4968 = !DILocation(line: 187, column: 12, scope: !4655)
!4969 = !DILocation(line: 187, column: 2, scope: !4655)
!4970 = !DILocation(line: 187, column: 6, scope: !4655)
!4971 = !DILocation(line: 187, column: 10, scope: !4655)
!4972 = !DILocation(line: 188, column: 12, scope: !4655)
!4973 = !DILocation(line: 188, column: 2, scope: !4655)
!4974 = !DILocation(line: 188, column: 6, scope: !4655)
!4975 = !DILocation(line: 188, column: 10, scope: !4655)
!4976 = !DILocation(line: 190, column: 9, scope: !4655)
!4977 = !DILocation(line: 190, column: 2, scope: !4655)
!4978 = !DILocation(line: 191, column: 1, scope: !4655)
!4979 = distinct !DISubprogram(name: "IS_ERR", scope: !4980, file: !4980, line: 34, type: !4981, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4980 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!333, !1791}
!4983 = !DILocalVariable(name: "ptr", arg: 1, scope: !4979, file: !4980, line: 34, type: !1791)
!4984 = !DILocation(line: 34, column: 60, scope: !4979)
!4985 = !DILocation(line: 36, column: 9, scope: !4979)
!4986 = !DILocation(line: 36, column: 2, scope: !4979)
!4987 = distinct !DISubprogram(name: "PTR_ERR", scope: !4980, file: !4980, line: 29, type: !4988, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!106, !1791}
!4990 = !DILocalVariable(name: "ptr", arg: 1, scope: !4987, file: !4980, line: 29, type: !1791)
!4991 = !DILocation(line: 29, column: 61, scope: !4987)
!4992 = !DILocation(line: 31, column: 16, scope: !4987)
!4993 = !DILocation(line: 31, column: 9, scope: !4987)
!4994 = !DILocation(line: 31, column: 2, scope: !4987)
!4995 = distinct !DISubprogram(name: "test_bit", scope: !4996, file: !4996, line: 132, type: !4997, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!4996 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!333, !106, !4999}
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4393)
!5001 = !DILocalVariable(name: "nr", arg: 1, scope: !5002, file: !4396, line: 210, type: !106)
!5002 = distinct !DISubprogram(name: "variable_test_bit", scope: !4396, file: !4396, line: 210, type: !4997, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5003 = !DILocation(line: 210, column: 52, scope: !5002, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 135, column: 9, scope: !4995)
!5005 = !DILocalVariable(name: "addr", arg: 2, scope: !5002, file: !4396, line: 210, type: !4999)
!5006 = !DILocation(line: 210, column: 86, scope: !5002, inlinedAt: !5004)
!5007 = !DILocalVariable(name: "oldbit", scope: !5002, file: !4396, line: 212, type: !333)
!5008 = !DILocation(line: 212, column: 7, scope: !5002, inlinedAt: !5004)
!5009 = !DILocalVariable(name: "nr", arg: 1, scope: !5010, file: !4396, line: 204, type: !106)
!5010 = distinct !DISubprogram(name: "constant_test_bit", scope: !4396, file: !4396, line: 204, type: !4997, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5011 = !DILocation(line: 204, column: 52, scope: !5010, inlinedAt: !5012)
!5012 = distinct !DILocation(line: 135, column: 9, scope: !4995)
!5013 = !DILocalVariable(name: "addr", arg: 2, scope: !5010, file: !4396, line: 204, type: !4999)
!5014 = !DILocation(line: 204, column: 86, scope: !5010, inlinedAt: !5012)
!5015 = !DILocalVariable(name: "v", arg: 1, scope: !5016, file: !4403, line: 69, type: !4406)
!5016 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4403, file: !4403, line: 69, type: !4404, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5017 = !DILocation(line: 69, column: 73, scope: !5016, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 134, column: 2, scope: !4995)
!5019 = !DILocalVariable(name: "size", arg: 2, scope: !5016, file: !4403, line: 69, type: !142)
!5020 = !DILocation(line: 69, column: 83, scope: !5016, inlinedAt: !5018)
!5021 = !DILocalVariable(name: "nr", arg: 1, scope: !4995, file: !4996, line: 132, type: !106)
!5022 = !DILocation(line: 132, column: 34, scope: !4995)
!5023 = !DILocalVariable(name: "addr", arg: 2, scope: !4995, file: !4996, line: 132, type: !4999)
!5024 = !DILocation(line: 132, column: 68, scope: !4995)
!5025 = !DILocation(line: 134, column: 25, scope: !4995)
!5026 = !DILocation(line: 134, column: 32, scope: !4995)
!5027 = !DILocation(line: 134, column: 30, scope: !4995)
!5028 = !DILocation(line: 71, column: 19, scope: !5016, inlinedAt: !5018)
!5029 = !DILocation(line: 71, column: 22, scope: !5016, inlinedAt: !5018)
!5030 = !DILocation(line: 71, column: 2, scope: !5016, inlinedAt: !5018)
!5031 = !DILocation(line: 72, column: 2, scope: !5016, inlinedAt: !5018)
!5032 = !DILocation(line: 135, column: 9, scope: !4995)
!5033 = !DILocation(line: 206, column: 19, scope: !5010, inlinedAt: !5012)
!5034 = !DILocation(line: 206, column: 22, scope: !5010, inlinedAt: !5012)
!5035 = !DILocation(line: 206, column: 15, scope: !5010, inlinedAt: !5012)
!5036 = !DILocation(line: 207, column: 4, scope: !5010, inlinedAt: !5012)
!5037 = !DILocation(line: 207, column: 9, scope: !5010, inlinedAt: !5012)
!5038 = !DILocation(line: 207, column: 12, scope: !5010, inlinedAt: !5012)
!5039 = !DILocation(line: 206, column: 44, scope: !5010, inlinedAt: !5012)
!5040 = !DILocation(line: 207, column: 37, scope: !5010, inlinedAt: !5012)
!5041 = !DILocation(line: 217, column: 33, scope: !5002, inlinedAt: !5004)
!5042 = !DILocation(line: 217, column: 46, scope: !5002, inlinedAt: !5004)
!5043 = !DILocation(line: 214, column: 2, scope: !5002, inlinedAt: !5004)
!5044 = !{i32 -2147130870, i32 -2147130810}
!5045 = !DILocation(line: 219, column: 9, scope: !5002, inlinedAt: !5004)
!5046 = !DILocation(line: 135, column: 2, scope: !4995)
!5047 = distinct !DISubprogram(name: "tty_ldisc_close", scope: !3, file: !3, line: 482, type: !5048, scopeLine: 483, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{null, !1644, !2820}
!5050 = !DILocalVariable(name: "tty", arg: 1, scope: !5047, file: !3, line: 482, type: !1644)
!5051 = !DILocation(line: 482, column: 48, scope: !5047)
!5052 = !DILocalVariable(name: "ld", arg: 2, scope: !5047, file: !3, line: 482, type: !2820)
!5053 = !DILocation(line: 482, column: 71, scope: !5047)
!5054 = !DILocation(line: 484, column: 2, scope: !5047)
!5055 = !DILocation(line: 484, column: 2, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 484, column: 2)
!5057 = !DILocalVariable(name: "__ret_warn_on", scope: !5058, file: !3, line: 485, type: !190)
!5058 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 485, column: 2)
!5059 = !DILocation(line: 485, column: 2, scope: !5058)
!5060 = !DILocation(line: 485, column: 2, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 485, column: 2)
!5062 = !DILocation(line: 485, column: 2, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 485, column: 2)
!5064 = !DILocation(line: 485, column: 2, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 485, column: 2)
!5066 = !DILocation(line: 485, column: 2, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 485, column: 2)
!5068 = !{i32 -2142045701, i32 -2142045672, i32 -2142045626, i32 -2142045568, i32 -2142045514, i32 -2142045460, i32 -2142045405, i32 -2142045374}
!5069 = !DILocation(line: 485, column: 2, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 485, column: 2)
!5071 = !{i32 -2142044969, i32 -2142044962, i32 -2142044910, i32 -2142044879, i32 -2142044849}
!5072 = !DILocation(line: 485, column: 2, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 485, column: 2)
!5074 = !DILocation(line: 486, column: 29, scope: !5047)
!5075 = !DILocation(line: 486, column: 34, scope: !5047)
!5076 = !DILocation(line: 486, column: 2, scope: !5047)
!5077 = !DILocation(line: 487, column: 6, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 487, column: 6)
!5079 = !DILocation(line: 487, column: 10, scope: !5078)
!5080 = !DILocation(line: 487, column: 15, scope: !5078)
!5081 = !DILocation(line: 487, column: 6, scope: !5047)
!5082 = !DILocation(line: 488, column: 3, scope: !5078)
!5083 = !DILocation(line: 488, column: 7, scope: !5078)
!5084 = !DILocation(line: 488, column: 12, scope: !5078)
!5085 = !DILocation(line: 488, column: 18, scope: !5078)
!5086 = !DILocation(line: 490, column: 1, scope: !5047)
!5087 = distinct !DISubprogram(name: "tty_set_termios_ldisc", scope: !3, file: !3, line: 436, type: !2751, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5088 = !DILocalVariable(name: "tty", arg: 1, scope: !5087, file: !3, line: 436, type: !1644)
!5089 = !DILocation(line: 436, column: 54, scope: !5087)
!5090 = !DILocalVariable(name: "disc", arg: 2, scope: !5087, file: !3, line: 436, type: !190)
!5091 = !DILocation(line: 436, column: 63, scope: !5087)
!5092 = !DILocation(line: 438, column: 14, scope: !5087)
!5093 = !DILocation(line: 438, column: 19, scope: !5087)
!5094 = !DILocation(line: 438, column: 2, scope: !5087)
!5095 = !DILocation(line: 439, column: 24, scope: !5087)
!5096 = !DILocation(line: 439, column: 2, scope: !5087)
!5097 = !DILocation(line: 439, column: 7, scope: !5087)
!5098 = !DILocation(line: 439, column: 15, scope: !5087)
!5099 = !DILocation(line: 439, column: 22, scope: !5087)
!5100 = !DILocation(line: 440, column: 12, scope: !5087)
!5101 = !DILocation(line: 440, column: 17, scope: !5087)
!5102 = !DILocation(line: 440, column: 2, scope: !5087)
!5103 = !DILocation(line: 442, column: 2, scope: !5087)
!5104 = !DILocation(line: 442, column: 7, scope: !5087)
!5105 = !DILocation(line: 442, column: 17, scope: !5087)
!5106 = !DILocation(line: 443, column: 2, scope: !5087)
!5107 = !DILocation(line: 443, column: 7, scope: !5087)
!5108 = !DILocation(line: 443, column: 20, scope: !5087)
!5109 = !DILocation(line: 444, column: 1, scope: !5087)
!5110 = distinct !DISubprogram(name: "tty_ldisc_open", scope: !3, file: !3, line: 457, type: !5111, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!190, !1644, !2820}
!5113 = !DILocalVariable(name: "tty", arg: 1, scope: !5110, file: !3, line: 457, type: !1644)
!5114 = !DILocation(line: 457, column: 46, scope: !5110)
!5115 = !DILocalVariable(name: "ld", arg: 2, scope: !5110, file: !3, line: 457, type: !2820)
!5116 = !DILocation(line: 457, column: 69, scope: !5110)
!5117 = !DILocalVariable(name: "__ret_warn_on", scope: !5118, file: !3, line: 459, type: !190)
!5118 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 459, column: 2)
!5119 = !DILocation(line: 459, column: 2, scope: !5118)
!5120 = !DILocation(line: 459, column: 2, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 459, column: 2)
!5122 = !DILocation(line: 459, column: 2, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 459, column: 2)
!5124 = !DILocation(line: 459, column: 2, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 459, column: 2)
!5126 = !DILocation(line: 459, column: 2, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 459, column: 2)
!5128 = !{i32 -2142047203, i32 -2142047174, i32 -2142047128, i32 -2142047070, i32 -2142047016, i32 -2142046962, i32 -2142046907, i32 -2142046876}
!5129 = !DILocation(line: 459, column: 2, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 459, column: 2)
!5131 = !{i32 -2142046471, i32 -2142046464, i32 -2142046412, i32 -2142046381, i32 -2142046351}
!5132 = !DILocation(line: 459, column: 2, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 459, column: 2)
!5134 = !DILocation(line: 460, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 460, column: 6)
!5136 = !DILocation(line: 460, column: 10, scope: !5135)
!5137 = !DILocation(line: 460, column: 15, scope: !5135)
!5138 = !DILocation(line: 460, column: 6, scope: !5110)
!5139 = !DILocalVariable(name: "ret", scope: !5140, file: !3, line: 461, type: !190)
!5140 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 460, column: 21)
!5141 = !DILocation(line: 461, column: 7, scope: !5140)
!5142 = !DILocation(line: 463, column: 9, scope: !5140)
!5143 = !DILocation(line: 463, column: 13, scope: !5140)
!5144 = !DILocation(line: 463, column: 18, scope: !5140)
!5145 = !DILocation(line: 463, column: 23, scope: !5140)
!5146 = !DILocation(line: 463, column: 7, scope: !5140)
!5147 = !DILocation(line: 464, column: 7, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 464, column: 7)
!5149 = !DILocation(line: 464, column: 7, scope: !5140)
!5150 = !DILocation(line: 465, column: 31, scope: !5148)
!5151 = !DILocation(line: 465, column: 36, scope: !5148)
!5152 = !DILocation(line: 465, column: 4, scope: !5148)
!5153 = !DILocation(line: 468, column: 10, scope: !5140)
!5154 = !DILocation(line: 468, column: 3, scope: !5140)
!5155 = !DILocation(line: 470, column: 2, scope: !5110)
!5156 = !DILocation(line: 471, column: 1, scope: !5110)
!5157 = distinct !DISubprogram(name: "tty_ldisc_put", scope: !3, file: !3, line: 198, type: !4352, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5158 = !DILocalVariable(name: "ld", arg: 1, scope: !5157, file: !3, line: 198, type: !2820)
!5159 = !DILocation(line: 198, column: 45, scope: !5157)
!5160 = !DILocalVariable(name: "__ret_warn_on", scope: !5161, file: !3, line: 200, type: !190)
!5161 = distinct !DILexicalBlock(scope: !5162, file: !3, line: 200, column: 6)
!5162 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 200, column: 6)
!5163 = !DILocation(line: 200, column: 6, scope: !5161)
!5164 = !DILocation(line: 200, column: 6, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 200, column: 6)
!5166 = !DILocation(line: 200, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 200, column: 6)
!5168 = !DILocation(line: 200, column: 6, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 200, column: 6)
!5170 = !DILocation(line: 200, column: 6, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 200, column: 6)
!5172 = !{i32 -2142051381, i32 -2142051352, i32 -2142051306, i32 -2142051248, i32 -2142051194, i32 -2142051140, i32 -2142051085, i32 -2142051054}
!5173 = !DILocation(line: 200, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 200, column: 6)
!5175 = !{i32 -2142050638, i32 -2142050631, i32 -2142050579, i32 -2142050548, i32 -2142050518}
!5176 = !DILocation(line: 200, column: 6, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 200, column: 6)
!5178 = !DILocation(line: 200, column: 6, scope: !5162)
!5179 = !DILocation(line: 200, column: 6, scope: !5157)
!5180 = !DILocation(line: 201, column: 3, scope: !5162)
!5181 = !DILocation(line: 203, column: 12, scope: !5157)
!5182 = !DILocation(line: 203, column: 16, scope: !5157)
!5183 = !DILocation(line: 203, column: 2, scope: !5157)
!5184 = !DILocation(line: 204, column: 8, scope: !5157)
!5185 = !DILocation(line: 204, column: 2, scope: !5157)
!5186 = !DILocation(line: 205, column: 1, scope: !5157)
!5187 = distinct !DISubprogram(name: "tty_ldisc_restore", scope: !3, file: !3, line: 525, type: !5048, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5188 = !DILocalVariable(name: "tty", arg: 1, scope: !5187, file: !3, line: 525, type: !1644)
!5189 = !DILocation(line: 525, column: 50, scope: !5187)
!5190 = !DILocalVariable(name: "old", arg: 2, scope: !5187, file: !3, line: 525, type: !2820)
!5191 = !DILocation(line: 525, column: 73, scope: !5187)
!5192 = !DILocation(line: 528, column: 23, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5187, file: !3, line: 528, column: 6)
!5194 = !DILocation(line: 528, column: 28, scope: !5193)
!5195 = !DILocation(line: 528, column: 33, scope: !5193)
!5196 = !DILocation(line: 528, column: 38, scope: !5193)
!5197 = !DILocation(line: 528, column: 6, scope: !5193)
!5198 = !DILocation(line: 528, column: 43, scope: !5193)
!5199 = !DILocation(line: 528, column: 6, scope: !5187)
!5200 = !DILocalVariable(name: "name", scope: !5201, file: !3, line: 529, type: !304)
!5201 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 528, column: 48)
!5202 = !DILocation(line: 529, column: 15, scope: !5201)
!5203 = !DILocation(line: 529, column: 31, scope: !5201)
!5204 = !DILocation(line: 529, column: 22, scope: !5201)
!5205 = !DILocation(line: 531, column: 3, scope: !5201)
!5206 = !DILocation(line: 535, column: 24, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 535, column: 7)
!5208 = !DILocation(line: 535, column: 7, scope: !5207)
!5209 = !DILocation(line: 535, column: 36, scope: !5207)
!5210 = !DILocation(line: 535, column: 40, scope: !5207)
!5211 = !DILocation(line: 536, column: 24, scope: !5207)
!5212 = !DILocation(line: 536, column: 7, scope: !5207)
!5213 = !DILocation(line: 536, column: 37, scope: !5207)
!5214 = !DILocation(line: 535, column: 7, scope: !5201)
!5215 = !DILocation(line: 537, column: 48, scope: !5207)
!5216 = !DILocation(line: 537, column: 4, scope: !5207)
!5217 = !DILocation(line: 538, column: 2, scope: !5201)
!5218 = !DILocation(line: 539, column: 1, scope: !5187)
!5219 = distinct !DISubprogram(name: "tty_ldisc_reinit", scope: !3, file: !3, line: 673, type: !2745, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5220 = !DILocalVariable(name: "tty", arg: 1, scope: !5219, file: !3, line: 673, type: !1644)
!5221 = !DILocation(line: 673, column: 41, scope: !5219)
!5222 = !DILocalVariable(name: "disc", arg: 2, scope: !5219, file: !3, line: 673, type: !190)
!5223 = !DILocation(line: 673, column: 50, scope: !5219)
!5224 = !DILocalVariable(name: "ld", scope: !5219, file: !3, line: 675, type: !2820)
!5225 = !DILocation(line: 675, column: 20, scope: !5219)
!5226 = !DILocalVariable(name: "retval", scope: !5219, file: !3, line: 676, type: !190)
!5227 = !DILocation(line: 676, column: 6, scope: !5219)
!5228 = !DILocation(line: 678, column: 2, scope: !5219)
!5229 = !DILocation(line: 678, column: 2, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 678, column: 2)
!5231 = !DILocation(line: 679, column: 21, scope: !5219)
!5232 = !DILocation(line: 679, column: 26, scope: !5219)
!5233 = !DILocation(line: 679, column: 7, scope: !5219)
!5234 = !DILocation(line: 679, column: 5, scope: !5219)
!5235 = !DILocation(line: 680, column: 13, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 680, column: 6)
!5237 = !DILocation(line: 680, column: 6, scope: !5236)
!5238 = !DILocation(line: 680, column: 6, scope: !5219)
!5239 = !DILocation(line: 681, column: 3, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 680, column: 18)
!5241 = !DILocation(line: 681, column: 3, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 681, column: 3)
!5243 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 681, column: 3)
!5244 = !DILocation(line: 681, column: 3, scope: !5243)
!5245 = !DILocation(line: 681, column: 3, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 681, column: 3)
!5247 = !DILocation(line: 681, column: 3, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 681, column: 3)
!5249 = !DILocation(line: 681, column: 3, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 681, column: 3)
!5251 = !{i32 -2142044084, i32 -2142044055, i32 -2142044009, i32 -2142043951, i32 -2142043897, i32 -2142043843, i32 -2142043788, i32 -2142043757}
!5252 = !DILocation(line: 681, column: 3, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 681, column: 3)
!5254 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 681, column: 3)
!5255 = !{i32 -2142043311, i32 -2142043304, i32 -2142043250, i32 -2142043219, i32 -2142043189}
!5256 = !DILocation(line: 681, column: 3, scope: !5254)
!5257 = !DILocation(line: 682, column: 18, scope: !5240)
!5258 = !DILocation(line: 682, column: 10, scope: !5240)
!5259 = !DILocation(line: 682, column: 3, scope: !5240)
!5260 = !DILocation(line: 685, column: 6, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 685, column: 6)
!5262 = !DILocation(line: 685, column: 11, scope: !5261)
!5263 = !DILocation(line: 685, column: 6, scope: !5219)
!5264 = !DILocation(line: 686, column: 19, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 685, column: 18)
!5266 = !DILocation(line: 686, column: 24, scope: !5265)
!5267 = !DILocation(line: 686, column: 29, scope: !5265)
!5268 = !DILocation(line: 686, column: 3, scope: !5265)
!5269 = !DILocation(line: 687, column: 17, scope: !5265)
!5270 = !DILocation(line: 687, column: 22, scope: !5265)
!5271 = !DILocation(line: 687, column: 3, scope: !5265)
!5272 = !DILocation(line: 688, column: 2, scope: !5265)
!5273 = !DILocation(line: 691, column: 15, scope: !5219)
!5274 = !DILocation(line: 691, column: 2, scope: !5219)
!5275 = !DILocation(line: 691, column: 7, scope: !5219)
!5276 = !DILocation(line: 691, column: 13, scope: !5219)
!5277 = !DILocation(line: 692, column: 24, scope: !5219)
!5278 = !DILocation(line: 692, column: 29, scope: !5219)
!5279 = !DILocation(line: 692, column: 2, scope: !5219)
!5280 = !DILocation(line: 693, column: 26, scope: !5219)
!5281 = !DILocation(line: 693, column: 31, scope: !5219)
!5282 = !DILocation(line: 693, column: 36, scope: !5219)
!5283 = !DILocation(line: 693, column: 11, scope: !5219)
!5284 = !DILocation(line: 693, column: 9, scope: !5219)
!5285 = !DILocation(line: 694, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 694, column: 6)
!5287 = !DILocation(line: 694, column: 6, scope: !5219)
!5288 = !DILocation(line: 695, column: 17, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 694, column: 14)
!5290 = !DILocation(line: 695, column: 22, scope: !5289)
!5291 = !DILocation(line: 695, column: 3, scope: !5289)
!5292 = !DILocation(line: 696, column: 3, scope: !5289)
!5293 = !DILocation(line: 696, column: 8, scope: !5289)
!5294 = !DILocation(line: 696, column: 14, scope: !5289)
!5295 = !DILocation(line: 697, column: 2, scope: !5289)
!5296 = !DILocation(line: 698, column: 9, scope: !5219)
!5297 = !DILocation(line: 698, column: 2, scope: !5219)
!5298 = !DILocation(line: 699, column: 1, scope: !5219)
!5299 = distinct !DISubprogram(name: "tty_ldisc_hangup", scope: !3, file: !3, line: 716, type: !5300, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5300 = !DISubroutineType(types: !5301)
!5301 = !{null, !1644, !333}
!5302 = !DILocalVariable(name: "tty", arg: 1, scope: !5299, file: !3, line: 716, type: !1644)
!5303 = !DILocation(line: 716, column: 42, scope: !5299)
!5304 = !DILocalVariable(name: "reinit", arg: 2, scope: !5299, file: !3, line: 716, type: !333)
!5305 = !DILocation(line: 716, column: 52, scope: !5299)
!5306 = !DILocalVariable(name: "ld", scope: !5299, file: !3, line: 718, type: !2820)
!5307 = !DILocation(line: 718, column: 20, scope: !5299)
!5308 = !DILocation(line: 722, column: 21, scope: !5299)
!5309 = !DILocation(line: 722, column: 7, scope: !5299)
!5310 = !DILocation(line: 722, column: 5, scope: !5299)
!5311 = !DILocation(line: 723, column: 6, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 723, column: 6)
!5313 = !DILocation(line: 723, column: 9, scope: !5312)
!5314 = !DILocation(line: 723, column: 6, scope: !5299)
!5315 = !DILocation(line: 724, column: 7, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 724, column: 7)
!5317 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 723, column: 18)
!5318 = !DILocation(line: 724, column: 11, scope: !5316)
!5319 = !DILocation(line: 724, column: 16, scope: !5316)
!5320 = !DILocation(line: 724, column: 7, scope: !5317)
!5321 = !DILocation(line: 725, column: 4, scope: !5316)
!5322 = !DILocation(line: 725, column: 8, scope: !5316)
!5323 = !DILocation(line: 725, column: 13, scope: !5316)
!5324 = !DILocation(line: 725, column: 26, scope: !5316)
!5325 = !DILocation(line: 726, column: 27, scope: !5317)
!5326 = !DILocation(line: 726, column: 3, scope: !5317)
!5327 = !DILocation(line: 727, column: 39, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 727, column: 7)
!5329 = !DILocation(line: 727, column: 44, scope: !5328)
!5330 = !DILocation(line: 727, column: 8, scope: !5328)
!5331 = !DILocation(line: 727, column: 52, scope: !5328)
!5332 = !DILocation(line: 728, column: 7, scope: !5328)
!5333 = !DILocation(line: 728, column: 11, scope: !5328)
!5334 = !DILocation(line: 728, column: 16, scope: !5328)
!5335 = !DILocation(line: 727, column: 7, scope: !5317)
!5336 = !DILocation(line: 729, column: 4, scope: !5328)
!5337 = !DILocation(line: 729, column: 8, scope: !5328)
!5338 = !DILocation(line: 729, column: 13, scope: !5328)
!5339 = !DILocation(line: 729, column: 26, scope: !5328)
!5340 = !DILocation(line: 730, column: 7, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 730, column: 7)
!5342 = !DILocation(line: 730, column: 11, scope: !5341)
!5343 = !DILocation(line: 730, column: 16, scope: !5341)
!5344 = !DILocation(line: 730, column: 7, scope: !5317)
!5345 = !DILocation(line: 731, column: 4, scope: !5341)
!5346 = !DILocation(line: 731, column: 8, scope: !5341)
!5347 = !DILocation(line: 731, column: 13, scope: !5341)
!5348 = !DILocation(line: 731, column: 20, scope: !5341)
!5349 = !DILocation(line: 732, column: 19, scope: !5317)
!5350 = !DILocation(line: 732, column: 3, scope: !5317)
!5351 = !DILocation(line: 733, column: 2, scope: !5317)
!5352 = !DILocation(line: 735, column: 2, scope: !5299)
!5353 = !DILocation(line: 736, column: 2, scope: !5299)
!5354 = !DILocation(line: 744, column: 17, scope: !5299)
!5355 = !DILocation(line: 744, column: 2, scope: !5299)
!5356 = !DILocation(line: 746, column: 6, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 746, column: 6)
!5358 = !DILocation(line: 746, column: 11, scope: !5357)
!5359 = !DILocation(line: 746, column: 19, scope: !5357)
!5360 = !DILocation(line: 746, column: 25, scope: !5357)
!5361 = !DILocation(line: 746, column: 6, scope: !5299)
!5362 = !DILocation(line: 747, column: 21, scope: !5357)
!5363 = !DILocation(line: 747, column: 3, scope: !5357)
!5364 = !DILocation(line: 749, column: 6, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 749, column: 6)
!5366 = !DILocation(line: 749, column: 11, scope: !5365)
!5367 = !DILocation(line: 749, column: 6, scope: !5299)
!5368 = !DILocation(line: 750, column: 7, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 750, column: 7)
!5370 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 749, column: 18)
!5371 = !DILocation(line: 750, column: 7, scope: !5370)
!5372 = !DILocation(line: 751, column: 25, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 751, column: 8)
!5374 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 750, column: 15)
!5375 = !DILocation(line: 751, column: 30, scope: !5373)
!5376 = !DILocation(line: 751, column: 35, scope: !5373)
!5377 = !DILocation(line: 751, column: 43, scope: !5373)
!5378 = !DILocation(line: 751, column: 8, scope: !5373)
!5379 = !DILocation(line: 751, column: 51, scope: !5373)
!5380 = !DILocation(line: 751, column: 55, scope: !5373)
!5381 = !DILocation(line: 752, column: 25, scope: !5373)
!5382 = !DILocation(line: 752, column: 8, scope: !5373)
!5383 = !DILocation(line: 752, column: 37, scope: !5373)
!5384 = !DILocation(line: 751, column: 8, scope: !5374)
!5385 = !DILocalVariable(name: "__ret_warn_on", scope: !5386, file: !3, line: 753, type: !190)
!5386 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 753, column: 5)
!5387 = !DILocation(line: 753, column: 5, scope: !5386)
!5388 = !DILocation(line: 753, column: 5, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 753, column: 5)
!5390 = !DILocation(line: 753, column: 5, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 753, column: 5)
!5392 = !DILocation(line: 753, column: 5, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 753, column: 5)
!5394 = !DILocation(line: 753, column: 5, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 753, column: 5)
!5396 = !{i32 -2142042166, i32 -2142042137, i32 -2142042091, i32 -2142042033, i32 -2142041979, i32 -2142041925, i32 -2142041870, i32 -2142041839}
!5397 = !DILocation(line: 753, column: 5, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 753, column: 5)
!5399 = !{i32 -2142041434, i32 -2142041427, i32 -2142041375, i32 -2142041344, i32 -2142041314}
!5400 = !DILocation(line: 753, column: 5, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 753, column: 5)
!5402 = !DILocation(line: 753, column: 5, scope: !5373)
!5403 = !DILocation(line: 754, column: 3, scope: !5374)
!5404 = !DILocation(line: 755, column: 19, scope: !5369)
!5405 = !DILocation(line: 755, column: 4, scope: !5369)
!5406 = !DILocation(line: 756, column: 2, scope: !5370)
!5407 = !DILocation(line: 757, column: 19, scope: !5299)
!5408 = !DILocation(line: 757, column: 2, scope: !5299)
!5409 = !DILocation(line: 758, column: 1, scope: !5299)
!5410 = distinct !DISubprogram(name: "tty_reset_termios", scope: !3, file: !3, line: 649, type: !2709, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5411 = !DILocalVariable(name: "tty", arg: 1, scope: !5410, file: !3, line: 649, type: !1644)
!5412 = !DILocation(line: 649, column: 50, scope: !5410)
!5413 = !DILocation(line: 651, column: 14, scope: !5410)
!5414 = !DILocation(line: 651, column: 19, scope: !5410)
!5415 = !DILocation(line: 651, column: 2, scope: !5410)
!5416 = !DILocation(line: 652, column: 2, scope: !5410)
!5417 = !DILocation(line: 652, column: 7, scope: !5410)
!5418 = !DILocation(line: 652, column: 17, scope: !5410)
!5419 = !DILocation(line: 652, column: 22, scope: !5410)
!5420 = !DILocation(line: 652, column: 30, scope: !5410)
!5421 = !DILocation(line: 653, column: 55, scope: !5410)
!5422 = !DILocation(line: 653, column: 60, scope: !5410)
!5423 = !DILocation(line: 653, column: 26, scope: !5410)
!5424 = !DILocation(line: 653, column: 2, scope: !5410)
!5425 = !DILocation(line: 653, column: 7, scope: !5410)
!5426 = !DILocation(line: 653, column: 15, scope: !5410)
!5427 = !DILocation(line: 653, column: 24, scope: !5410)
!5428 = !DILocation(line: 654, column: 49, scope: !5410)
!5429 = !DILocation(line: 654, column: 54, scope: !5410)
!5430 = !DILocation(line: 654, column: 26, scope: !5410)
!5431 = !DILocation(line: 654, column: 2, scope: !5410)
!5432 = !DILocation(line: 654, column: 7, scope: !5410)
!5433 = !DILocation(line: 654, column: 15, scope: !5410)
!5434 = !DILocation(line: 654, column: 24, scope: !5410)
!5435 = !DILocation(line: 655, column: 12, scope: !5410)
!5436 = !DILocation(line: 655, column: 17, scope: !5410)
!5437 = !DILocation(line: 655, column: 2, scope: !5410)
!5438 = !DILocation(line: 656, column: 1, scope: !5410)
!5439 = distinct !DISubprogram(name: "tty_ldisc_kill", scope: !3, file: !3, line: 628, type: !2709, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5440 = !DILocalVariable(name: "tty", arg: 1, scope: !5439, file: !3, line: 628, type: !1644)
!5441 = !DILocation(line: 628, column: 47, scope: !5439)
!5442 = !DILocation(line: 630, column: 2, scope: !5439)
!5443 = !DILocation(line: 630, column: 2, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 630, column: 2)
!5445 = !DILocation(line: 631, column: 7, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 631, column: 6)
!5447 = !DILocation(line: 631, column: 12, scope: !5446)
!5448 = !DILocation(line: 631, column: 6, scope: !5439)
!5449 = !DILocation(line: 632, column: 3, scope: !5446)
!5450 = !DILocation(line: 636, column: 18, scope: !5439)
!5451 = !DILocation(line: 636, column: 23, scope: !5439)
!5452 = !DILocation(line: 636, column: 28, scope: !5439)
!5453 = !DILocation(line: 636, column: 2, scope: !5439)
!5454 = !DILocation(line: 637, column: 16, scope: !5439)
!5455 = !DILocation(line: 637, column: 21, scope: !5439)
!5456 = !DILocation(line: 637, column: 2, scope: !5439)
!5457 = !DILocation(line: 639, column: 2, scope: !5439)
!5458 = !DILocation(line: 639, column: 7, scope: !5439)
!5459 = !DILocation(line: 639, column: 13, scope: !5439)
!5460 = !DILocation(line: 640, column: 1, scope: !5439)
!5461 = distinct !DISubprogram(name: "tty_ldisc_setup", scope: !3, file: !3, line: 770, type: !5462, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!190, !1644, !1644}
!5464 = !DILocalVariable(name: "tty", arg: 1, scope: !5461, file: !3, line: 770, type: !1644)
!5465 = !DILocation(line: 770, column: 40, scope: !5461)
!5466 = !DILocalVariable(name: "o_tty", arg: 2, scope: !5461, file: !3, line: 770, type: !1644)
!5467 = !DILocation(line: 770, column: 64, scope: !5461)
!5468 = !DILocalVariable(name: "retval", scope: !5461, file: !3, line: 772, type: !190)
!5469 = !DILocation(line: 772, column: 6, scope: !5461)
!5470 = !DILocation(line: 772, column: 30, scope: !5461)
!5471 = !DILocation(line: 772, column: 35, scope: !5461)
!5472 = !DILocation(line: 772, column: 40, scope: !5461)
!5473 = !DILocation(line: 772, column: 15, scope: !5461)
!5474 = !DILocation(line: 773, column: 6, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 773, column: 6)
!5476 = !DILocation(line: 773, column: 6, scope: !5461)
!5477 = !DILocation(line: 774, column: 10, scope: !5475)
!5478 = !DILocation(line: 774, column: 3, scope: !5475)
!5479 = !DILocation(line: 776, column: 6, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 776, column: 6)
!5481 = !DILocation(line: 776, column: 6, scope: !5461)
!5482 = !DILocation(line: 781, column: 27, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 776, column: 13)
!5484 = !DILocation(line: 781, column: 34, scope: !5483)
!5485 = !DILocation(line: 781, column: 41, scope: !5483)
!5486 = !DILocation(line: 781, column: 12, scope: !5483)
!5487 = !DILocation(line: 781, column: 10, scope: !5483)
!5488 = !DILocation(line: 782, column: 7, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 782, column: 7)
!5490 = !DILocation(line: 782, column: 7, scope: !5483)
!5491 = !DILocation(line: 783, column: 20, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 782, column: 15)
!5493 = !DILocation(line: 783, column: 25, scope: !5492)
!5494 = !DILocation(line: 783, column: 30, scope: !5492)
!5495 = !DILocation(line: 783, column: 4, scope: !5492)
!5496 = !DILocation(line: 784, column: 11, scope: !5492)
!5497 = !DILocation(line: 784, column: 4, scope: !5492)
!5498 = !DILocation(line: 786, column: 2, scope: !5483)
!5499 = !DILocation(line: 787, column: 2, scope: !5461)
!5500 = !DILocation(line: 788, column: 1, scope: !5461)
!5501 = distinct !DISubprogram(name: "tty_ldisc_release", scope: !3, file: !3, line: 798, type: !2709, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5502 = !DILocalVariable(name: "tty", arg: 1, scope: !5501, file: !3, line: 798, type: !1644)
!5503 = !DILocation(line: 798, column: 43, scope: !5501)
!5504 = !DILocalVariable(name: "o_tty", scope: !5501, file: !3, line: 800, type: !1644)
!5505 = !DILocation(line: 800, column: 21, scope: !5501)
!5506 = !DILocation(line: 800, column: 29, scope: !5501)
!5507 = !DILocation(line: 800, column: 34, scope: !5501)
!5508 = !DILocation(line: 807, column: 22, scope: !5501)
!5509 = !DILocation(line: 807, column: 27, scope: !5501)
!5510 = !DILocation(line: 807, column: 2, scope: !5501)
!5511 = !DILocation(line: 808, column: 17, scope: !5501)
!5512 = !DILocation(line: 808, column: 2, scope: !5501)
!5513 = !DILocation(line: 809, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 809, column: 6)
!5515 = !DILocation(line: 809, column: 6, scope: !5501)
!5516 = !DILocation(line: 810, column: 18, scope: !5514)
!5517 = !DILocation(line: 810, column: 3, scope: !5514)
!5518 = !DILocation(line: 811, column: 24, scope: !5501)
!5519 = !DILocation(line: 811, column: 29, scope: !5501)
!5520 = !DILocation(line: 811, column: 2, scope: !5501)
!5521 = !DILocation(line: 817, column: 1, scope: !5501)
!5522 = distinct !DISubprogram(name: "tty_ldisc_lock_pair", scope: !3, file: !3, line: 389, type: !5523, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{null, !1644, !1644}
!5525 = !DILocalVariable(name: "tty", arg: 1, scope: !5522, file: !3, line: 389, type: !1644)
!5526 = !DILocation(line: 389, column: 52, scope: !5522)
!5527 = !DILocalVariable(name: "tty2", arg: 2, scope: !5522, file: !3, line: 389, type: !1644)
!5528 = !DILocation(line: 389, column: 76, scope: !5522)
!5529 = !DILocation(line: 391, column: 30, scope: !5522)
!5530 = !DILocation(line: 391, column: 35, scope: !5522)
!5531 = !DILocation(line: 391, column: 2, scope: !5522)
!5532 = !DILocation(line: 392, column: 1, scope: !5522)
!5533 = distinct !DISubprogram(name: "tty_ldisc_unlock_pair", scope: !3, file: !3, line: 394, type: !5523, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5534 = !DILocalVariable(name: "tty", arg: 1, scope: !5533, file: !3, line: 394, type: !1644)
!5535 = !DILocation(line: 394, column: 54, scope: !5533)
!5536 = !DILocalVariable(name: "tty2", arg: 2, scope: !5533, file: !3, line: 395, type: !1644)
!5537 = !DILocation(line: 395, column: 26, scope: !5533)
!5538 = !DILocation(line: 397, column: 21, scope: !5533)
!5539 = !DILocation(line: 397, column: 2, scope: !5533)
!5540 = !DILocation(line: 398, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 398, column: 6)
!5542 = !DILocation(line: 398, column: 6, scope: !5533)
!5543 = !DILocation(line: 399, column: 22, scope: !5541)
!5544 = !DILocation(line: 399, column: 3, scope: !5541)
!5545 = !DILocation(line: 400, column: 1, scope: !5533)
!5546 = distinct !DISubprogram(name: "tty_ldisc_init", scope: !3, file: !3, line: 828, type: !2723, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5547 = !DILocalVariable(name: "tty", arg: 1, scope: !5546, file: !3, line: 828, type: !1644)
!5548 = !DILocation(line: 828, column: 39, scope: !5546)
!5549 = !DILocalVariable(name: "ld", scope: !5546, file: !3, line: 830, type: !2820)
!5550 = !DILocation(line: 830, column: 20, scope: !5546)
!5551 = !DILocation(line: 830, column: 39, scope: !5546)
!5552 = !DILocation(line: 830, column: 25, scope: !5546)
!5553 = !DILocation(line: 831, column: 13, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 831, column: 6)
!5555 = !DILocation(line: 831, column: 6, scope: !5554)
!5556 = !DILocation(line: 831, column: 6, scope: !5546)
!5557 = !DILocation(line: 832, column: 18, scope: !5554)
!5558 = !DILocation(line: 832, column: 10, scope: !5554)
!5559 = !DILocation(line: 832, column: 3, scope: !5554)
!5560 = !DILocation(line: 833, column: 15, scope: !5546)
!5561 = !DILocation(line: 833, column: 2, scope: !5546)
!5562 = !DILocation(line: 833, column: 7, scope: !5546)
!5563 = !DILocation(line: 833, column: 13, scope: !5546)
!5564 = !DILocation(line: 834, column: 2, scope: !5546)
!5565 = !DILocation(line: 835, column: 1, scope: !5546)
!5566 = distinct !DISubprogram(name: "tty_ldisc_deinit", scope: !3, file: !3, line: 844, type: !2709, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5567 = !DILocalVariable(name: "tty", arg: 1, scope: !5566, file: !3, line: 844, type: !1644)
!5568 = !DILocation(line: 844, column: 42, scope: !5566)
!5569 = !DILocation(line: 847, column: 6, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 847, column: 6)
!5571 = !DILocation(line: 847, column: 11, scope: !5570)
!5572 = !DILocation(line: 847, column: 6, scope: !5566)
!5573 = !DILocation(line: 848, column: 17, scope: !5570)
!5574 = !DILocation(line: 848, column: 22, scope: !5570)
!5575 = !DILocation(line: 848, column: 3, scope: !5570)
!5576 = !DILocation(line: 849, column: 2, scope: !5566)
!5577 = !DILocation(line: 849, column: 7, scope: !5566)
!5578 = !DILocation(line: 849, column: 13, scope: !5566)
!5579 = !DILocation(line: 850, column: 1, scope: !5566)
!5580 = distinct !DISubprogram(name: "tty_sysctl_init", scope: !3, file: !3, line: 883, type: !2979, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5581 = !DILocation(line: 885, column: 2, scope: !5580)
!5582 = !DILocation(line: 886, column: 1, scope: !5580)
!5583 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4148, file: !4148, line: 646, type: !4149, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5584 = !DILocalVariable(name: "__ret", scope: !5585, file: !4148, line: 648, type: !110)
!5585 = distinct !DILexicalBlock(scope: !5583, file: !4148, line: 648, column: 9)
!5586 = !DILocation(line: 648, column: 9, scope: !5585)
!5587 = !DILocalVariable(name: "__edi", scope: !5585, file: !4148, line: 648, type: !110)
!5588 = !DILocalVariable(name: "__esi", scope: !5585, file: !4148, line: 648, type: !110)
!5589 = !DILocalVariable(name: "__edx", scope: !5585, file: !4148, line: 648, type: !110)
!5590 = !DILocalVariable(name: "__ecx", scope: !5585, file: !4148, line: 648, type: !110)
!5591 = !DILocalVariable(name: "__eax", scope: !5585, file: !4148, line: 648, type: !110)
!5592 = !DILocation(line: 648, column: 9, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5594, file: !4148, line: 648, column: 9)
!5594 = distinct !DILexicalBlock(scope: !5585, file: !4148, line: 648, column: 9)
!5595 = !{i32 -2145702576, i32 -2145700261, i32 -2145700027, i32 -2145699976, i32 -2145699948, i32 -2145699923, i32 -2145700239, i32 -2145700226, i32 -2145699788, i32 -2145699669, i32 -2145700134, i32 -2145700107, i32 -2145700079, i32 -2145700049}
!5596 = !DILocalVariable(name: "__mask", scope: !5597, file: !4148, line: 648, type: !110)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !4148, line: 648, column: 9)
!5598 = !DILocation(line: 648, column: 9, scope: !5597)
!5599 = !DILocation(line: 648, column: 9, scope: !5594)
!5600 = !DILocation(line: 648, column: 2, scope: !5583)
!5601 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4148, file: !4148, line: 656, type: !2979, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5602 = !DILocalVariable(name: "__edi", scope: !5603, file: !4148, line: 658, type: !110)
!5603 = distinct !DILexicalBlock(scope: !5601, file: !4148, line: 658, column: 2)
!5604 = !DILocation(line: 658, column: 2, scope: !5603)
!5605 = !DILocalVariable(name: "__esi", scope: !5603, file: !4148, line: 658, type: !110)
!5606 = !DILocalVariable(name: "__edx", scope: !5603, file: !4148, line: 658, type: !110)
!5607 = !DILocalVariable(name: "__ecx", scope: !5603, file: !4148, line: 658, type: !110)
!5608 = !DILocalVariable(name: "__eax", scope: !5603, file: !4148, line: 658, type: !110)
!5609 = !{i32 -2145695482, i32 -2145694750, i32 -2145694516, i32 -2145694465, i32 -2145694437, i32 -2145694412, i32 -2145694728, i32 -2145694715, i32 -2145694277, i32 -2145694158, i32 -2145694623, i32 -2145694596, i32 -2145694568, i32 -2145694538}
!5610 = !DILocation(line: 659, column: 1, scope: !5601)
!5611 = distinct !DISubprogram(name: "get_ldops", scope: !3, file: !3, line: 109, type: !5612, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{!2824, !190}
!5614 = !DILocalVariable(name: "disc", arg: 1, scope: !5611, file: !3, line: 109, type: !190)
!5615 = !DILocation(line: 109, column: 44, scope: !5611)
!5616 = !DILocalVariable(name: "flags", scope: !5611, file: !3, line: 111, type: !110)
!5617 = !DILocation(line: 111, column: 16, scope: !5611)
!5618 = !DILocalVariable(name: "ldops", scope: !5611, file: !3, line: 112, type: !2824)
!5619 = !DILocation(line: 112, column: 24, scope: !5611)
!5620 = !DILocalVariable(name: "ret", scope: !5611, file: !3, line: 112, type: !2824)
!5621 = !DILocation(line: 112, column: 32, scope: !5611)
!5622 = !DILocation(line: 114, column: 2, scope: !5611)
!5623 = !DILocalVariable(name: "__dummy", scope: !5624, file: !3, line: 114, type: !110)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 114, column: 2)
!5625 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 114, column: 2)
!5626 = !DILocation(line: 114, column: 2, scope: !5624)
!5627 = !DILocalVariable(name: "__dummy2", scope: !5624, file: !3, line: 114, type: !110)
!5628 = !DILocation(line: 114, column: 2, scope: !5625)
!5629 = !DILocation(line: 114, column: 2, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 114, column: 2)
!5631 = !DILocation(line: 114, column: 2, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 114, column: 2)
!5633 = !DILocalVariable(name: "__dummy", scope: !5634, file: !3, line: 114, type: !110)
!5634 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 114, column: 2)
!5635 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 114, column: 2)
!5636 = !DILocation(line: 114, column: 2, scope: !5634)
!5637 = !DILocalVariable(name: "__dummy2", scope: !5634, file: !3, line: 114, type: !110)
!5638 = !DILocation(line: 114, column: 2, scope: !5635)
!5639 = !DILocation(line: 114, column: 2, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 114, column: 2)
!5641 = !{i32 -2142054952}
!5642 = !DILocation(line: 114, column: 2, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 114, column: 2)
!5644 = !DILocation(line: 115, column: 8, scope: !5611)
!5645 = !DILocation(line: 115, column: 6, scope: !5611)
!5646 = !DILocation(line: 116, column: 21, scope: !5611)
!5647 = !DILocation(line: 116, column: 10, scope: !5611)
!5648 = !DILocation(line: 116, column: 8, scope: !5611)
!5649 = !DILocation(line: 117, column: 6, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 117, column: 6)
!5651 = !DILocation(line: 117, column: 6, scope: !5611)
!5652 = !DILocation(line: 118, column: 9, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 117, column: 13)
!5654 = !DILocation(line: 118, column: 7, scope: !5653)
!5655 = !DILocation(line: 119, column: 22, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 119, column: 7)
!5657 = !DILocation(line: 119, column: 29, scope: !5656)
!5658 = !DILocation(line: 119, column: 7, scope: !5656)
!5659 = !DILocation(line: 119, column: 7, scope: !5653)
!5660 = !DILocation(line: 120, column: 4, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 119, column: 37)
!5662 = !DILocation(line: 120, column: 11, scope: !5661)
!5663 = !DILocation(line: 120, column: 19, scope: !5661)
!5664 = !DILocation(line: 121, column: 10, scope: !5661)
!5665 = !DILocation(line: 121, column: 8, scope: !5661)
!5666 = !DILocation(line: 122, column: 3, scope: !5661)
!5667 = !DILocation(line: 123, column: 2, scope: !5653)
!5668 = !DILocation(line: 124, column: 2, scope: !5611)
!5669 = !DILocalVariable(name: "__dummy", scope: !5670, file: !3, line: 124, type: !110)
!5670 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 124, column: 2)
!5671 = distinct !DILexicalBlock(scope: !5611, file: !3, line: 124, column: 2)
!5672 = !DILocation(line: 124, column: 2, scope: !5670)
!5673 = !DILocalVariable(name: "__dummy2", scope: !5670, file: !3, line: 124, type: !110)
!5674 = !DILocation(line: 124, column: 2, scope: !5671)
!5675 = !DILocation(line: 124, column: 2, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 124, column: 2)
!5677 = !DILocation(line: 124, column: 2, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 124, column: 2)
!5679 = !DILocalVariable(name: "__dummy", scope: !5680, file: !3, line: 124, type: !110)
!5680 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 124, column: 2)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 124, column: 2)
!5682 = !DILocation(line: 124, column: 2, scope: !5680)
!5683 = !DILocalVariable(name: "__dummy2", scope: !5680, file: !3, line: 124, type: !110)
!5684 = !DILocation(line: 124, column: 2, scope: !5681)
!5685 = !DILocation(line: 124, column: 2, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 124, column: 2)
!5687 = !{i32 -2142054085}
!5688 = !DILocation(line: 124, column: 2, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 124, column: 2)
!5690 = !DILocation(line: 125, column: 9, scope: !5611)
!5691 = !DILocation(line: 125, column: 2, scope: !5611)
!5692 = distinct !DISubprogram(name: "put_ldops", scope: !3, file: !3, line: 128, type: !5693, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{null, !2824}
!5695 = !DILocalVariable(name: "ldops", arg: 1, scope: !5692, file: !3, line: 128, type: !2824)
!5696 = !DILocation(line: 128, column: 45, scope: !5692)
!5697 = !DILocalVariable(name: "flags", scope: !5692, file: !3, line: 130, type: !110)
!5698 = !DILocation(line: 130, column: 16, scope: !5692)
!5699 = !DILocation(line: 132, column: 2, scope: !5692)
!5700 = !DILocalVariable(name: "__dummy", scope: !5701, file: !3, line: 132, type: !110)
!5701 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 132, column: 2)
!5702 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 132, column: 2)
!5703 = !DILocation(line: 132, column: 2, scope: !5701)
!5704 = !DILocalVariable(name: "__dummy2", scope: !5701, file: !3, line: 132, type: !110)
!5705 = !DILocation(line: 132, column: 2, scope: !5702)
!5706 = !DILocation(line: 132, column: 2, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 132, column: 2)
!5708 = !DILocation(line: 132, column: 2, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 132, column: 2)
!5710 = !DILocalVariable(name: "__dummy", scope: !5711, file: !3, line: 132, type: !110)
!5711 = distinct !DILexicalBlock(scope: !5712, file: !3, line: 132, column: 2)
!5712 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 132, column: 2)
!5713 = !DILocation(line: 132, column: 2, scope: !5711)
!5714 = !DILocalVariable(name: "__dummy2", scope: !5711, file: !3, line: 132, type: !110)
!5715 = !DILocation(line: 132, column: 2, scope: !5712)
!5716 = !DILocation(line: 132, column: 2, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 132, column: 2)
!5718 = !{i32 -2142053245}
!5719 = !DILocation(line: 132, column: 2, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 132, column: 2)
!5721 = !DILocation(line: 133, column: 2, scope: !5692)
!5722 = !DILocation(line: 133, column: 9, scope: !5692)
!5723 = !DILocation(line: 133, column: 17, scope: !5692)
!5724 = !DILocation(line: 134, column: 13, scope: !5692)
!5725 = !DILocation(line: 134, column: 20, scope: !5692)
!5726 = !DILocation(line: 134, column: 2, scope: !5692)
!5727 = !DILocation(line: 135, column: 2, scope: !5692)
!5728 = !DILocalVariable(name: "__dummy", scope: !5729, file: !3, line: 135, type: !110)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 135, column: 2)
!5730 = distinct !DILexicalBlock(scope: !5692, file: !3, line: 135, column: 2)
!5731 = !DILocation(line: 135, column: 2, scope: !5729)
!5732 = !DILocalVariable(name: "__dummy2", scope: !5729, file: !3, line: 135, type: !110)
!5733 = !DILocation(line: 135, column: 2, scope: !5730)
!5734 = !DILocation(line: 135, column: 2, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 135, column: 2)
!5736 = !DILocation(line: 135, column: 2, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 135, column: 2)
!5738 = !DILocalVariable(name: "__dummy", scope: !5739, file: !3, line: 135, type: !110)
!5739 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 135, column: 2)
!5740 = distinct !DILexicalBlock(scope: !5737, file: !3, line: 135, column: 2)
!5741 = !DILocation(line: 135, column: 2, scope: !5739)
!5742 = !DILocalVariable(name: "__dummy2", scope: !5739, file: !3, line: 135, type: !110)
!5743 = !DILocation(line: 135, column: 2, scope: !5740)
!5744 = !DILocation(line: 135, column: 2, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 135, column: 2)
!5746 = !{i32 -2142052384}
!5747 = !DILocation(line: 135, column: 2, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 135, column: 2)
!5749 = !DILocation(line: 136, column: 1, scope: !5692)
!5750 = distinct !DISubprogram(name: "ERR_PTR", scope: !4980, file: !4980, line: 24, type: !5751, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!107, !106}
!5753 = !DILocalVariable(name: "error", arg: 1, scope: !5750, file: !4980, line: 24, type: !106)
!5754 = !DILocation(line: 24, column: 48, scope: !5750)
!5755 = !DILocation(line: 26, column: 18, scope: !5750)
!5756 = !DILocation(line: 26, column: 9, scope: !5750)
!5757 = !DILocation(line: 26, column: 2, scope: !5750)
!5758 = distinct !DISubprogram(name: "try_module_get", scope: !5759, file: !5759, line: 751, type: !5760, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5759 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!5760 = !DISubroutineType(types: !5761)
!5761 = !{!333, !475}
!5762 = !DILocalVariable(name: "module", arg: 1, scope: !5758, file: !5759, line: 751, type: !475)
!5763 = !DILocation(line: 751, column: 50, scope: !5758)
!5764 = !DILocation(line: 753, column: 2, scope: !5758)
!5765 = distinct !DISubprogram(name: "module_put", scope: !5759, file: !5759, line: 756, type: !5766, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{null, !475}
!5768 = !DILocalVariable(name: "module", arg: 1, scope: !5765, file: !5759, line: 756, type: !475)
!5769 = !DILocation(line: 756, column: 46, scope: !5765)
!5770 = !DILocation(line: 758, column: 1, scope: !5765)
!5771 = distinct !DISubprogram(name: "kasan_check_write", scope: !5772, file: !5772, line: 38, type: !5773, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5772 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!333, !4406, !7}
!5775 = !DILocalVariable(name: "p", arg: 1, scope: !5771, file: !5772, line: 38, type: !4406)
!5776 = !DILocation(line: 38, column: 59, scope: !5771)
!5777 = !DILocalVariable(name: "size", arg: 2, scope: !5771, file: !5772, line: 38, type: !7)
!5778 = !DILocation(line: 38, column: 75, scope: !5771)
!5779 = !DILocation(line: 40, column: 2, scope: !5771)
!5780 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5781, file: !5781, line: 178, type: !5782, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5781 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5782 = !DISubroutineType(types: !5783)
!5783 = !{null, !4406, !142, !190}
!5784 = !DILocalVariable(name: "ptr", arg: 1, scope: !5780, file: !5781, line: 178, type: !4406)
!5785 = !DILocation(line: 178, column: 60, scope: !5780)
!5786 = !DILocalVariable(name: "size", arg: 2, scope: !5780, file: !5781, line: 178, type: !142)
!5787 = !DILocation(line: 178, column: 72, scope: !5780)
!5788 = !DILocalVariable(name: "type", arg: 3, scope: !5780, file: !5781, line: 179, type: !190)
!5789 = !DILocation(line: 179, column: 15, scope: !5780)
!5790 = !DILocation(line: 179, column: 23, scope: !5780)
!5791 = distinct !DISubprogram(name: "request_module", scope: !5792, file: !5792, line: 30, type: !5793, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5792 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/lizy2001/genbc/linux")
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!190, !304, null}
!5795 = !DILocalVariable(name: "name", arg: 1, scope: !5791, file: !5792, line: 30, type: !304)
!5796 = !DILocation(line: 30, column: 46, scope: !5791)
!5797 = !DILocation(line: 30, column: 59, scope: !5791)
!5798 = distinct !DISubprogram(name: "ERR_CAST", scope: !4980, file: !4980, line: 51, type: !5799, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!107, !1791}
!5801 = !DILocalVariable(name: "ptr", arg: 1, scope: !5798, file: !4980, line: 51, type: !1791)
!5802 = !DILocation(line: 51, column: 64, scope: !5798)
!5803 = !DILocation(line: 54, column: 18, scope: !5798)
!5804 = !DILocation(line: 54, column: 2, scope: !5798)
!5805 = distinct !DISubprogram(name: "get_order", scope: !5806, file: !5806, line: 29, type: !5807, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5806 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5807 = !DISubroutineType(types: !5808)
!5808 = !{!190, !110}
!5809 = !DILocalVariable(name: "x", arg: 1, scope: !5810, file: !4396, line: 366, type: !261)
!5810 = distinct !DISubprogram(name: "fls64", scope: !4396, file: !4396, line: 366, type: !5811, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!190, !261}
!5813 = !DILocation(line: 366, column: 40, scope: !5810, inlinedAt: !5814)
!5814 = distinct !DILocation(line: 46, column: 9, scope: !5805)
!5815 = !DILocalVariable(name: "bitpos", scope: !5810, file: !4396, line: 368, type: !190)
!5816 = !DILocation(line: 368, column: 6, scope: !5810, inlinedAt: !5814)
!5817 = !DILocalVariable(name: "size", arg: 1, scope: !5805, file: !5806, line: 29, type: !110)
!5818 = !DILocation(line: 29, column: 63, scope: !5805)
!5819 = !DILocation(line: 31, column: 27, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5805, file: !5806, line: 31, column: 6)
!5821 = !DILocation(line: 31, column: 6, scope: !5820)
!5822 = !DILocation(line: 31, column: 6, scope: !5805)
!5823 = !DILocation(line: 32, column: 8, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !5806, line: 32, column: 7)
!5825 = distinct !DILexicalBlock(scope: !5820, file: !5806, line: 31, column: 34)
!5826 = !DILocation(line: 32, column: 7, scope: !5825)
!5827 = !DILocation(line: 33, column: 4, scope: !5824)
!5828 = !DILocation(line: 35, column: 7, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5825, file: !5806, line: 35, column: 7)
!5830 = !DILocation(line: 35, column: 12, scope: !5829)
!5831 = !DILocation(line: 35, column: 7, scope: !5825)
!5832 = !DILocation(line: 36, column: 4, scope: !5829)
!5833 = !DILocation(line: 38, column: 10, scope: !5825)
!5834 = !DILocation(line: 38, column: 28, scope: !5825)
!5835 = !DILocation(line: 38, column: 41, scope: !5825)
!5836 = !DILocation(line: 38, column: 3, scope: !5825)
!5837 = !DILocation(line: 41, column: 6, scope: !5805)
!5838 = !DILocation(line: 42, column: 7, scope: !5805)
!5839 = !DILocation(line: 46, column: 15, scope: !5805)
!5840 = !DILocation(line: 374, column: 2, scope: !5810, inlinedAt: !5814)
!5841 = !DILocation(line: 376, column: 14, scope: !5810, inlinedAt: !5814)
!5842 = !{i32 312103}
!5843 = !DILocation(line: 377, column: 9, scope: !5810, inlinedAt: !5814)
!5844 = !DILocation(line: 377, column: 16, scope: !5810, inlinedAt: !5814)
!5845 = !DILocation(line: 46, column: 2, scope: !5805)
!5846 = !DILocation(line: 48, column: 1, scope: !5805)
!5847 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5848, file: !5848, line: 30, type: !5849, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5848 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5849 = !DISubroutineType(types: !5850)
!5850 = !{!190, !260}
!5851 = !DILocation(line: 366, column: 40, scope: !5810, inlinedAt: !5852)
!5852 = distinct !DILocation(line: 32, column: 9, scope: !5847)
!5853 = !DILocation(line: 368, column: 6, scope: !5810, inlinedAt: !5852)
!5854 = !DILocalVariable(name: "n", arg: 1, scope: !5847, file: !5848, line: 30, type: !260)
!5855 = !DILocation(line: 30, column: 21, scope: !5847)
!5856 = !DILocation(line: 32, column: 15, scope: !5847)
!5857 = !DILocation(line: 374, column: 2, scope: !5810, inlinedAt: !5852)
!5858 = !DILocation(line: 376, column: 14, scope: !5810, inlinedAt: !5852)
!5859 = !DILocation(line: 377, column: 9, scope: !5810, inlinedAt: !5852)
!5860 = !DILocation(line: 377, column: 16, scope: !5810, inlinedAt: !5852)
!5861 = !DILocation(line: 32, column: 18, scope: !5847)
!5862 = !DILocation(line: 32, column: 2, scope: !5847)
!5863 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5864, file: !5864, line: 137, type: !5865, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5864 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5865 = !DISubroutineType(types: !5866)
!5866 = !{!107, !772, !1791, !142, !123}
!5867 = !DILocalVariable(name: "s", arg: 1, scope: !5863, file: !5864, line: 137, type: !772)
!5868 = !DILocation(line: 137, column: 54, scope: !5863)
!5869 = !DILocalVariable(name: "object", arg: 2, scope: !5863, file: !5864, line: 137, type: !1791)
!5870 = !DILocation(line: 137, column: 69, scope: !5863)
!5871 = !DILocalVariable(name: "size", arg: 3, scope: !5863, file: !5864, line: 138, type: !142)
!5872 = !DILocation(line: 138, column: 12, scope: !5863)
!5873 = !DILocalVariable(name: "flags", arg: 4, scope: !5863, file: !5864, line: 138, type: !123)
!5874 = !DILocation(line: 138, column: 24, scope: !5863)
!5875 = !DILocation(line: 140, column: 17, scope: !5863)
!5876 = !DILocation(line: 140, column: 2, scope: !5863)
!5877 = distinct !DISubprogram(name: "kasan_check_read", scope: !5772, file: !5772, line: 34, type: !5773, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5878 = !DILocalVariable(name: "p", arg: 1, scope: !5877, file: !5772, line: 34, type: !4406)
!5879 = !DILocation(line: 34, column: 58, scope: !5877)
!5880 = !DILocalVariable(name: "size", arg: 2, scope: !5877, file: !5772, line: 34, type: !7)
!5881 = !DILocation(line: 34, column: 74, scope: !5877)
!5882 = !DILocation(line: 36, column: 2, scope: !5877)
!5883 = distinct !DISubprogram(name: "test_and_set_bit", scope: !4389, file: !4389, line: 68, type: !5884, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5884 = !DISubroutineType(types: !5885)
!5885 = !{!333, !106, !4392}
!5886 = !DILocalVariable(name: "nr", arg: 1, scope: !5887, file: !4396, line: 136, type: !106)
!5887 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !4396, file: !4396, line: 136, type: !5884, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5888 = !DILocation(line: 136, column: 28, scope: !5887, inlinedAt: !5889)
!5889 = distinct !DILocation(line: 71, column: 9, scope: !5883)
!5890 = !DILocalVariable(name: "addr", arg: 2, scope: !5887, file: !4396, line: 136, type: !4392)
!5891 = !DILocation(line: 136, column: 56, scope: !5887, inlinedAt: !5889)
!5892 = !DILocalVariable(name: "c", scope: !5893, file: !4396, line: 138, type: !333)
!5893 = distinct !DILexicalBlock(scope: !5887, file: !4396, line: 138, column: 9)
!5894 = !DILocation(line: 138, column: 9, scope: !5893, inlinedAt: !5889)
!5895 = !DILocalVariable(name: "v", arg: 1, scope: !5896, file: !4403, line: 99, type: !4406)
!5896 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4403, file: !4403, line: 99, type: !4404, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5897 = !DILocation(line: 99, column: 79, scope: !5896, inlinedAt: !5898)
!5898 = distinct !DILocation(line: 70, column: 2, scope: !5883)
!5899 = !DILocalVariable(name: "size", arg: 2, scope: !5896, file: !4403, line: 99, type: !142)
!5900 = !DILocation(line: 99, column: 89, scope: !5896, inlinedAt: !5898)
!5901 = !DILocalVariable(name: "nr", arg: 1, scope: !5883, file: !4389, line: 68, type: !106)
!5902 = !DILocation(line: 68, column: 42, scope: !5883)
!5903 = !DILocalVariable(name: "addr", arg: 2, scope: !5883, file: !4389, line: 68, type: !4392)
!5904 = !DILocation(line: 68, column: 70, scope: !5883)
!5905 = !DILocation(line: 70, column: 31, scope: !5883)
!5906 = !DILocation(line: 70, column: 38, scope: !5883)
!5907 = !DILocation(line: 70, column: 36, scope: !5883)
!5908 = !DILocation(line: 101, column: 20, scope: !5896, inlinedAt: !5898)
!5909 = !DILocation(line: 101, column: 23, scope: !5896, inlinedAt: !5898)
!5910 = !DILocation(line: 101, column: 2, scope: !5896, inlinedAt: !5898)
!5911 = !DILocation(line: 102, column: 2, scope: !5896, inlinedAt: !5898)
!5912 = !DILocation(line: 71, column: 31, scope: !5883)
!5913 = !DILocation(line: 71, column: 35, scope: !5883)
!5914 = !{i32 -2147135632, i32 -2147135536}
!5915 = !DILocation(line: 71, column: 2, scope: !5883)
!5916 = distinct !DISubprogram(name: "tty_ldisc_failto", scope: !3, file: !3, line: 501, type: !2745, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5917 = !DILocalVariable(name: "tty", arg: 1, scope: !5916, file: !3, line: 501, type: !1644)
!5918 = !DILocation(line: 501, column: 48, scope: !5916)
!5919 = !DILocalVariable(name: "ld", arg: 2, scope: !5916, file: !3, line: 501, type: !190)
!5920 = !DILocation(line: 501, column: 57, scope: !5916)
!5921 = !DILocalVariable(name: "disc", scope: !5916, file: !3, line: 503, type: !2820)
!5922 = !DILocation(line: 503, column: 20, scope: !5916)
!5923 = !DILocation(line: 503, column: 41, scope: !5916)
!5924 = !DILocation(line: 503, column: 46, scope: !5916)
!5925 = !DILocation(line: 503, column: 27, scope: !5916)
!5926 = !DILocalVariable(name: "r", scope: !5916, file: !3, line: 504, type: !190)
!5927 = !DILocation(line: 504, column: 6, scope: !5916)
!5928 = !DILocation(line: 506, column: 2, scope: !5916)
!5929 = !DILocation(line: 506, column: 2, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 506, column: 2)
!5931 = !DILocation(line: 507, column: 13, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 507, column: 6)
!5933 = !DILocation(line: 507, column: 6, scope: !5932)
!5934 = !DILocation(line: 507, column: 6, scope: !5916)
!5935 = !DILocation(line: 508, column: 18, scope: !5932)
!5936 = !DILocation(line: 508, column: 10, scope: !5932)
!5937 = !DILocation(line: 508, column: 3, scope: !5932)
!5938 = !DILocation(line: 509, column: 15, scope: !5916)
!5939 = !DILocation(line: 509, column: 2, scope: !5916)
!5940 = !DILocation(line: 509, column: 7, scope: !5916)
!5941 = !DILocation(line: 509, column: 13, scope: !5916)
!5942 = !DILocation(line: 510, column: 24, scope: !5916)
!5943 = !DILocation(line: 510, column: 29, scope: !5916)
!5944 = !DILocation(line: 510, column: 2, scope: !5916)
!5945 = !DILocation(line: 511, column: 26, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 511, column: 6)
!5947 = !DILocation(line: 511, column: 31, scope: !5946)
!5948 = !DILocation(line: 511, column: 11, scope: !5946)
!5949 = !DILocation(line: 511, column: 9, scope: !5946)
!5950 = !DILocation(line: 511, column: 38, scope: !5946)
!5951 = !DILocation(line: 511, column: 6, scope: !5916)
!5952 = !DILocation(line: 512, column: 17, scope: !5946)
!5953 = !DILocation(line: 512, column: 3, scope: !5946)
!5954 = !DILocation(line: 513, column: 9, scope: !5916)
!5955 = !DILocation(line: 513, column: 2, scope: !5916)
!5956 = !DILocation(line: 514, column: 1, scope: !5916)
!5957 = distinct !DISubprogram(name: "tty_ldisc_lock_pair_timeout", scope: !3, file: !3, line: 354, type: !5958, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!5958 = !DISubroutineType(types: !5959)
!5959 = !{!190, !1644, !1644, !110}
!5960 = !DILocalVariable(name: "tty", arg: 1, scope: !5957, file: !3, line: 354, type: !1644)
!5961 = !DILocation(line: 354, column: 48, scope: !5957)
!5962 = !DILocalVariable(name: "tty2", arg: 2, scope: !5957, file: !3, line: 354, type: !1644)
!5963 = !DILocation(line: 354, column: 72, scope: !5957)
!5964 = !DILocalVariable(name: "timeout", arg: 3, scope: !5957, file: !3, line: 355, type: !110)
!5965 = !DILocation(line: 355, column: 22, scope: !5957)
!5966 = !DILocalVariable(name: "ret", scope: !5957, file: !3, line: 357, type: !190)
!5967 = !DILocation(line: 357, column: 6, scope: !5957)
!5968 = !DILocation(line: 359, column: 6, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 359, column: 6)
!5970 = !DILocation(line: 359, column: 12, scope: !5969)
!5971 = !DILocation(line: 359, column: 10, scope: !5969)
!5972 = !DILocation(line: 359, column: 6, scope: !5957)
!5973 = !DILocation(line: 360, column: 26, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 359, column: 18)
!5975 = !DILocation(line: 360, column: 31, scope: !5974)
!5976 = !DILocation(line: 360, column: 9, scope: !5974)
!5977 = !DILocation(line: 360, column: 7, scope: !5974)
!5978 = !DILocation(line: 361, column: 7, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5974, file: !3, line: 361, column: 7)
!5980 = !DILocation(line: 361, column: 7, scope: !5974)
!5981 = !DILocation(line: 362, column: 34, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 361, column: 12)
!5983 = !DILocation(line: 362, column: 40, scope: !5982)
!5984 = !DILocation(line: 362, column: 10, scope: !5982)
!5985 = !DILocation(line: 362, column: 8, scope: !5982)
!5986 = !DILocation(line: 363, column: 9, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 363, column: 8)
!5988 = !DILocation(line: 363, column: 8, scope: !5982)
!5989 = !DILocation(line: 364, column: 24, scope: !5987)
!5990 = !DILocation(line: 364, column: 5, scope: !5987)
!5991 = !DILocation(line: 365, column: 3, scope: !5982)
!5992 = !DILocation(line: 366, column: 2, scope: !5974)
!5993 = !DILocalVariable(name: "__ret_warn_on", scope: !5994, file: !3, line: 368, type: !190)
!5994 = distinct !DILexicalBlock(scope: !5995, file: !3, line: 368, column: 3)
!5995 = distinct !DILexicalBlock(scope: !5969, file: !3, line: 366, column: 9)
!5996 = !DILocation(line: 368, column: 3, scope: !5994)
!5997 = !DILocation(line: 368, column: 3, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 368, column: 3)
!5999 = !DILocation(line: 368, column: 3, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 368, column: 3)
!6001 = !DILocation(line: 368, column: 3, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 368, column: 3)
!6003 = !DILocation(line: 368, column: 3, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 368, column: 3)
!6005 = !{i32 -2142048823, i32 -2142048794, i32 -2142048748, i32 -2142048690, i32 -2142048636, i32 -2142048582, i32 -2142048527, i32 -2142048496}
!6006 = !DILocation(line: 368, column: 3, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 368, column: 3)
!6008 = !{i32 -2142048080, i32 -2142048073, i32 -2142048021, i32 -2142047990, i32 -2142047960}
!6009 = !DILocation(line: 368, column: 3, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 368, column: 3)
!6011 = !DILocation(line: 369, column: 7, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5995, file: !3, line: 369, column: 7)
!6013 = !DILocation(line: 369, column: 12, scope: !6012)
!6014 = !DILocation(line: 369, column: 15, scope: !6012)
!6015 = !DILocation(line: 369, column: 22, scope: !6012)
!6016 = !DILocation(line: 369, column: 19, scope: !6012)
!6017 = !DILocation(line: 369, column: 7, scope: !5995)
!6018 = !DILocation(line: 370, column: 27, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 369, column: 28)
!6020 = !DILocation(line: 370, column: 33, scope: !6019)
!6021 = !DILocation(line: 370, column: 10, scope: !6019)
!6022 = !DILocation(line: 370, column: 8, scope: !6019)
!6023 = !DILocation(line: 371, column: 8, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 371, column: 8)
!6025 = !DILocation(line: 371, column: 8, scope: !6019)
!6026 = !DILocation(line: 372, column: 35, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 371, column: 13)
!6028 = !DILocation(line: 372, column: 40, scope: !6027)
!6029 = !DILocation(line: 372, column: 11, scope: !6027)
!6030 = !DILocation(line: 372, column: 9, scope: !6027)
!6031 = !DILocation(line: 373, column: 10, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 373, column: 9)
!6033 = !DILocation(line: 373, column: 9, scope: !6027)
!6034 = !DILocation(line: 374, column: 25, scope: !6032)
!6035 = !DILocation(line: 374, column: 6, scope: !6032)
!6036 = !DILocation(line: 375, column: 4, scope: !6027)
!6037 = !DILocation(line: 376, column: 3, scope: !6019)
!6038 = !DILocation(line: 377, column: 27, scope: !6012)
!6039 = !DILocation(line: 377, column: 32, scope: !6012)
!6040 = !DILocation(line: 377, column: 10, scope: !6012)
!6041 = !DILocation(line: 377, column: 8, scope: !6012)
!6042 = !DILocation(line: 380, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 380, column: 6)
!6044 = !DILocation(line: 380, column: 6, scope: !5957)
!6045 = !DILocation(line: 381, column: 3, scope: !6043)
!6046 = !DILocation(line: 383, column: 29, scope: !5957)
!6047 = !DILocation(line: 383, column: 34, scope: !5957)
!6048 = !DILocation(line: 383, column: 2, scope: !5957)
!6049 = !DILocation(line: 384, column: 6, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 384, column: 6)
!6051 = !DILocation(line: 384, column: 6, scope: !5957)
!6052 = !DILocation(line: 385, column: 30, scope: !6050)
!6053 = !DILocation(line: 385, column: 36, scope: !6050)
!6054 = !DILocation(line: 385, column: 3, scope: !6050)
!6055 = !DILocation(line: 386, column: 2, scope: !5957)
!6056 = !DILocation(line: 387, column: 1, scope: !5957)
!6057 = distinct !DISubprogram(name: "__tty_ldisc_lock_nested", scope: !3, file: !3, line: 318, type: !4362, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !180)
!6058 = !DILocalVariable(name: "tty", arg: 1, scope: !6057, file: !3, line: 318, type: !1644)
!6059 = !DILocation(line: 318, column: 44, scope: !6057)
!6060 = !DILocalVariable(name: "timeout", arg: 2, scope: !6057, file: !3, line: 318, type: !110)
!6061 = !DILocation(line: 318, column: 63, scope: !6057)
!6062 = !DILocation(line: 320, column: 9, scope: !6057)
!6063 = !DILocation(line: 320, column: 2, scope: !6057)
