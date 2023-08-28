; ModuleID = '../bcout/drivers/media/v4l2-core/v4l2-event.llvm.bc'
source_filename = "drivers/media/v4l2-core/v4l2-event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.v4l2_subscribed_event_ops = type { i32 (%struct.v4l2_subscribed_event*, i32)*, void (%struct.v4l2_subscribed_event*)*, void (%struct.v4l2_event*, %struct.v4l2_event*)*, void (%struct.v4l2_event*, %struct.v4l2_event*)* }
%struct.v4l2_subscribed_event = type { %struct.list_head, i32, i32, i32, %struct.v4l2_fh*, %struct.list_head, %struct.v4l2_subscribed_event_ops*, i32, i32, i32, [0 x %struct.v4l2_kevent] }
%struct.v4l2_fh = type { %struct.list_head, %struct.video_device*, %struct.v4l2_ctrl_handler*, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, %struct.v4l2_m2m_ctx* }
%struct.video_device = type { %struct.media_entity, %struct.media_intf_devnode*, %struct.media_pipeline, %struct.v4l2_file_operations*, i32, %struct.device, %struct.cdev*, %struct.v4l2_device*, %struct.device*, %struct.v4l2_ctrl_handler*, %struct.vb2_queue*, %struct.v4l2_prio_state*, [32 x i8], i32, i32, i32, i16, i64, i32, %struct.spinlock, %struct.list_head, i32, i64, void (%struct.video_device*)*, %struct.v4l2_ioctl_ops*, [3 x i64], %struct.mutex* }
%struct.media_entity = type { %struct.media_gobj, i8*, i32, i32, i64, i16, i16, i16, i32, %struct.media_pad*, %struct.list_head, %struct.media_entity_operations*, i32, i32, %struct.media_pipeline*, %union.anon.68 }
%struct.media_gobj = type { %struct.media_device*, i32, %struct.list_head }
%struct.media_device = type opaque
%struct.media_pad = type { %struct.media_gobj, %struct.media_entity*, i16, i32, i64 }
%struct.media_entity_operations = type { i32 (%struct.media_entity*, %struct.fwnode_endpoint*)*, i32 (%struct.media_entity*, %struct.media_pad*, %struct.media_pad*, i32)*, i32 (%struct.media_link*)* }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.65, %union.anon.66, %struct.media_link*, i64, i8 }
%union.anon.65 = type { %struct.media_gobj* }
%union.anon.66 = type { %struct.media_gobj* }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_intf_devnode = type { %struct.media_interface, i32, i32 }
%struct.media_interface = type { %struct.media_gobj, %struct.list_head, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.67], %struct.media_entity_enum, i32 }
%struct.anon.67 = type { %struct.media_entity*, %struct.list_head* }
%struct.media_entity_enum = type { i64*, i32 }
%struct.v4l2_file_operations = type { %struct.module*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*)*, i32 (%struct.file*)* }
%struct.module = type opaque
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
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
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
%struct.vdso_image = type opaque
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
%struct.vm_struct = type opaque
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
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.v4l2_device = type opaque
%struct.vb2_queue = type opaque
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.v4l2_ioctl_ops = type opaque
%struct.v4l2_ctrl_handler = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.v4l2_m2m_ctx = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.v4l2_kevent = type { %struct.list_head, %struct.v4l2_subscribed_event*, %struct.v4l2_event, i64 }
%struct.v4l2_event = type { i32, %union.anon.70, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.70 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.71, i32, i32, i32, i32, i32 }
%union.anon.71 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
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
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.v4l2_event_subscription = type { i32, i32, i32, [5 x i32] }
%struct.v4l2_subdev = type opaque
%struct.v4l2_event_src_change = type { i32 }

@v4l2_event_src_ch_ops = internal constant %struct.v4l2_subscribed_event_ops { i32 (%struct.v4l2_subscribed_event*, i32)* null, void (%struct.v4l2_subscribed_event*)* null, void (%struct.v4l2_event*, %struct.v4l2_event*)* @v4l2_event_src_replace, void (%struct.v4l2_event*, %struct.v4l2_event*)* @v4l2_event_src_merge }, align 8, !dbg !0
@.str = private unnamed_addr constant [37 x i8] c"drivers/media/v4l2-core/v4l2-event.c\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_event_dequeue(%struct.v4l2_fh* %fh, %struct.v4l2_event* %event, i32 %nonblocking) #0 !dbg !4028 {
entry:
  %retval = alloca i32, align 4
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %event.addr = alloca %struct.v4l2_event*, align 8
  %nonblocking.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret10 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4031, metadata !DIExpression()), !dbg !4032
  store %struct.v4l2_event* %event, %struct.v4l2_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %event.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i32 %nonblocking, i32* %nonblocking.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nonblocking.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4037, metadata !DIExpression()), !dbg !4038
  %0 = load i32, i32* %nonblocking.addr, align 4, !dbg !4039
  %tobool = icmp ne i32 %0, 0, !dbg !4039
  br i1 %tobool, label %if.then, label %if.end, !dbg !4041

if.then:                                          ; preds = %entry
  %1 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4042
  %2 = load %struct.v4l2_event*, %struct.v4l2_event** %event.addr, align 8, !dbg !4043
  %call = call i32 @__v4l2_event_dequeue(%struct.v4l2_fh* %1, %struct.v4l2_event* %2) #6, !dbg !4044
  store i32 %call, i32* %retval, align 4, !dbg !4045
  br label %return, !dbg !4045

if.end:                                           ; preds = %entry
  %3 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4046
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %3, i32 0, i32 1, !dbg !4048
  %4 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !4048
  %lock = getelementptr inbounds %struct.video_device, %struct.video_device* %4, i32 0, i32 26, !dbg !4049
  %5 = load %struct.mutex*, %struct.mutex** %lock, align 8, !dbg !4049
  %tobool1 = icmp ne %struct.mutex* %5, null, !dbg !4046
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !4050

if.then2:                                         ; preds = %if.end
  %6 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4051
  %vdev3 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %6, i32 0, i32 1, !dbg !4052
  %7 = load %struct.video_device*, %struct.video_device** %vdev3, align 8, !dbg !4052
  %lock4 = getelementptr inbounds %struct.video_device, %struct.video_device* %7, i32 0, i32 26, !dbg !4053
  %8 = load %struct.mutex*, %struct.mutex** %lock4, align 8, !dbg !4053
  call void @mutex_unlock(%struct.mutex* %8) #6, !dbg !4054
  br label %if.end5, !dbg !4054

if.end5:                                          ; preds = %if.then2, %if.end
  br label %do.body, !dbg !4055

do.body:                                          ; preds = %do.cond, %if.end5
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !4056, metadata !DIExpression()), !dbg !4059
  store i32 0, i32* %__ret, align 4, !dbg !4059
  br label %do.body6, !dbg !4059

do.body6:                                         ; preds = %do.body
  br label %do.body7, !dbg !4060

do.body7:                                         ; preds = %do.body6
  br label %do.end, !dbg !4062

do.end:                                           ; preds = %do.body7
  br label %do.end8, !dbg !4060

do.end8:                                          ; preds = %do.end
  %9 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4064
  %navailable = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %9, i32 0, i32 8, !dbg !4064
  %10 = load i32, i32* %navailable, align 8, !dbg !4064
  %cmp = icmp ne i32 %10, 0, !dbg !4064
  br i1 %cmp, label %if.end20, label %if.then9, !dbg !4059

if.then9:                                         ; preds = %do.end8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4066, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.declare(metadata i64* %__ret10, metadata !4080, metadata !DIExpression()), !dbg !4079
  store i64 0, i64* %__ret10, align 8, !dbg !4079
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #6, !dbg !4079
  br label %for.cond, !dbg !4079

for.cond:                                         ; preds = %if.end18, %if.then9
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4081, metadata !DIExpression()), !dbg !4085
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4085
  %wait = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %11, i32 0, i32 4, !dbg !4085
  %call11 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry, i32 1) #6, !dbg !4085
  store i64 %call11, i64* %__int, align 8, !dbg !4085
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4086
  %navailable12 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %12, i32 0, i32 8, !dbg !4086
  %13 = load i32, i32* %navailable12, align 8, !dbg !4086
  %cmp13 = icmp ne i32 %13, 0, !dbg !4086
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4085

if.then14:                                        ; preds = %for.cond
  br label %for.end, !dbg !4086

if.end15:                                         ; preds = %for.cond
  %14 = load i64, i64* %__int, align 8, !dbg !4088
  %tobool16 = icmp ne i64 %14, 0, !dbg !4088
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4085

if.then17:                                        ; preds = %if.end15
  %15 = load i64, i64* %__int, align 8, !dbg !4090
  store i64 %15, i64* %__ret10, align 8, !dbg !4090
  br label %__out, !dbg !4090

if.end18:                                         ; preds = %if.end15
  call void @schedule() #6, !dbg !4085
  br label %for.cond, !dbg !4092, !llvm.loop !4093

for.end:                                          ; preds = %if.then14
  %16 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4079
  %wait19 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %16, i32 0, i32 4, !dbg !4079
  call void @finish_wait(%struct.wait_queue_head* %wait19, %struct.wait_queue_entry* %__wq_entry) #6, !dbg !4079
  br label %__out, !dbg !4079

__out:                                            ; preds = %for.end, %if.then17
  call void @llvm.dbg.label(metadata !4095), !dbg !4079
  %17 = load i64, i64* %__ret10, align 8, !dbg !4079
  store i64 %17, i64* %tmp, align 8, !dbg !4079
  %18 = load i64, i64* %tmp, align 8, !dbg !4079
  %conv = trunc i64 %18 to i32, !dbg !4064
  store i32 %conv, i32* %__ret, align 4, !dbg !4064
  br label %if.end20, !dbg !4064

if.end20:                                         ; preds = %__out, %do.end8
  %19 = load i32, i32* %__ret, align 4, !dbg !4059
  store i32 %19, i32* %tmp21, align 4, !dbg !4064
  %20 = load i32, i32* %tmp21, align 4, !dbg !4059
  store i32 %20, i32* %ret, align 4, !dbg !4096
  %21 = load i32, i32* %ret, align 4, !dbg !4097
  %cmp22 = icmp slt i32 %21, 0, !dbg !4099
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4100

if.then24:                                        ; preds = %if.end20
  br label %do.end29, !dbg !4101

if.end25:                                         ; preds = %if.end20
  %22 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4102
  %23 = load %struct.v4l2_event*, %struct.v4l2_event** %event.addr, align 8, !dbg !4103
  %call26 = call i32 @__v4l2_event_dequeue(%struct.v4l2_fh* %22, %struct.v4l2_event* %23) #6, !dbg !4104
  store i32 %call26, i32* %ret, align 4, !dbg !4105
  br label %do.cond, !dbg !4106

do.cond:                                          ; preds = %if.end25
  %24 = load i32, i32* %ret, align 4, !dbg !4107
  %cmp27 = icmp eq i32 %24, -2, !dbg !4108
  br i1 %cmp27, label %do.body, label %do.end29, !dbg !4106, !llvm.loop !4109

do.end29:                                         ; preds = %do.cond, %if.then24
  %25 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4111
  %vdev30 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %25, i32 0, i32 1, !dbg !4113
  %26 = load %struct.video_device*, %struct.video_device** %vdev30, align 8, !dbg !4113
  %lock31 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 26, !dbg !4114
  %27 = load %struct.mutex*, %struct.mutex** %lock31, align 8, !dbg !4114
  %tobool32 = icmp ne %struct.mutex* %27, null, !dbg !4111
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !4115

if.then33:                                        ; preds = %do.end29
  %28 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4116
  %vdev34 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %28, i32 0, i32 1, !dbg !4117
  %29 = load %struct.video_device*, %struct.video_device** %vdev34, align 8, !dbg !4117
  %lock35 = getelementptr inbounds %struct.video_device, %struct.video_device* %29, i32 0, i32 26, !dbg !4118
  %30 = load %struct.mutex*, %struct.mutex** %lock35, align 8, !dbg !4118
  call void @mutex_lock(%struct.mutex* %30) #6, !dbg !4119
  br label %if.end36, !dbg !4119

if.end36:                                         ; preds = %if.then33, %do.end29
  %31 = load i32, i32* %ret, align 4, !dbg !4120
  store i32 %31, i32* %retval, align 4, !dbg !4121
  br label %return, !dbg !4121

return:                                           ; preds = %if.end36, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !4122
  ret i32 %32, !dbg !4122
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__v4l2_event_dequeue(%struct.v4l2_fh* %fh, %struct.v4l2_event* %event) #0 !dbg !4123 {
entry:
  %lock.addr.i71 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i71, metadata !4126, metadata !DIExpression()), !dbg !4131
  %flags.addr.i72 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i72, metadata !4135, metadata !DIExpression()), !dbg !4136
  %tmp.i73 = alloca i32, align 4
  %tmp8.i74 = alloca i32, align 4
  %lock.addr.i69 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i69, metadata !4126, metadata !DIExpression()), !dbg !4137
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4135, metadata !DIExpression()), !dbg !4139
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4140, metadata !DIExpression()), !dbg !4145
  %retval = alloca i32, align 4
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %event.addr = alloca %struct.v4l2_event*, align 8
  %kev = alloca %struct.v4l2_kevent*, align 8
  %ts = alloca %struct.timespec64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp52 = alloca %struct.v4l2_kevent*, align 8
  %tmp57 = alloca %struct.timespec64, align 8
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  store %struct.v4l2_event* %event, %struct.v4l2_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %event.addr, metadata !4154, metadata !DIExpression()), !dbg !4155
  call void @llvm.dbg.declare(metadata %struct.v4l2_kevent** %kev, metadata !4156, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.declare(metadata %struct.timespec64* %ts, metadata !4158, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4160, metadata !DIExpression()), !dbg !4161
  br label %do.body, !dbg !4162

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4163

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4164, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4167, metadata !DIExpression()), !dbg !4166
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4166
  %conv = zext i1 %cmp to i32, !dbg !4166
  store i32 1, i32* %tmp, align 4, !dbg !4166
  %0 = load i32, i32* %tmp, align 4, !dbg !4166
  br label %do.body2, !dbg !4168

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4169

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4170

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4172, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4176, metadata !DIExpression()), !dbg !4175
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4175
  %conv8 = zext i1 %cmp7 to i32, !dbg !4175
  store i32 1, i32* %tmp9, align 4, !dbg !4175
  %1 = load i32, i32* %tmp9, align 4, !dbg !4175
  %call = call i64 @arch_local_irq_save() #6, !dbg !4177
  store i64 %call, i64* %flags, align 8, !dbg !4177
  br label %do.end, !dbg !4177

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4170

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4169

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4178, !srcloc !4179
  br label %do.body12, !dbg !4178

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4180
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %2, i32 0, i32 1, !dbg !4180
  %3 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !4180
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %3, i32 0, i32 19, !dbg !4180
  store %struct.spinlock* %fh_lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4181
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !4182
  %rlock.i = bitcast %union.anon.3* %5 to %struct.raw_spinlock*, !dbg !4182
  br label %do.end14, !dbg !4180

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4178

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4169

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4168

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4163

do.end18:                                         ; preds = %do.end17
  %6 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4183
  %available = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %6, i32 0, i32 7, !dbg !4184
  %call19 = call i32 @list_empty(%struct.list_head* %available) #6, !dbg !4185
  %tobool = icmp ne i32 %call19, 0, !dbg !4185
  br i1 %tobool, label %if.then, label %if.end, !dbg !4186

if.then:                                          ; preds = %do.end18
  %7 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4187
  %vdev20 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %7, i32 0, i32 1, !dbg !4188
  %8 = load %struct.video_device*, %struct.video_device** %vdev20, align 8, !dbg !4188
  %fh_lock21 = getelementptr inbounds %struct.video_device, %struct.video_device* %8, i32 0, i32 19, !dbg !4189
  %9 = load i64, i64* %flags, align 8, !dbg !4190
  store %struct.spinlock* %fh_lock21, %struct.spinlock** %lock.addr.i71, align 8
  store i64 %9, i64* %flags.addr.i72, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !4194
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !4194
  store i32 1, i32* %tmp.i73, align 4, !dbg !4194
  %10 = load i32, i32* %tmp.i73, align 4, !dbg !4194
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !4201
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !4201
  store i32 1, i32* %tmp8.i74, align 4, !dbg !4201
  %11 = load i32, i32* %tmp8.i74, align 4, !dbg !4201
  %12 = load i64, i64* %flags.addr.i72, align 8, !dbg !4203
  call void @arch_local_irq_restore(i64 %12) #7, !dbg !4203
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4204, !srcloc !4206
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i71, align 8, !dbg !4207
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !4207
  %rlock.i75 = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !4207
  store i32 -2, i32* %retval, align 4, !dbg !4209
  br label %return, !dbg !4209

if.end:                                           ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4210, metadata !DIExpression()), !dbg !4212
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4212
  %navailable = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %15, i32 0, i32 8, !dbg !4212
  %16 = load i32, i32* %navailable, align 8, !dbg !4212
  %cmp22 = icmp eq i32 %16, 0, !dbg !4212
  %lnot = xor i1 %cmp22, true, !dbg !4212
  %lnot24 = xor i1 %lnot, true, !dbg !4212
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !4212
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4212
  %17 = load i32, i32* %__ret_warn_on, align 4, !dbg !4213
  %tobool25 = icmp ne i32 %17, 0, !dbg !4213
  %lnot26 = xor i1 %tobool25, true, !dbg !4213
  %lnot28 = xor i1 %lnot26, true, !dbg !4213
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4213
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !4213
  %tobool31 = icmp ne i64 %conv30, 0, !dbg !4213
  br i1 %tobool31, label %if.then32, label %if.end41, !dbg !4212

if.then32:                                        ; preds = %if.end
  br label %do.body33, !dbg !4213

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !4215

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4217

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !4215

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 40, i32 2305, i64 12) #5, !dbg !4219, !srcloc !4221
  br label %do.end37, !dbg !4219

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #5, !dbg !4222, !srcloc !4224
  br label %do.body38, !dbg !4215

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !4225

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !4215

do.end40:                                         ; preds = %do.end39
  br label %if.end41, !dbg !4215

if.end41:                                         ; preds = %do.end40, %if.end
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !4212
  %tobool43 = icmp ne i32 %18, 0, !dbg !4212
  %lnot44 = xor i1 %tobool43, true, !dbg !4212
  %lnot46 = xor i1 %lnot44, true, !dbg !4212
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !4212
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !4212
  store i64 %conv48, i64* %tmp42, align 8, !dbg !4213
  %19 = load i64, i64* %tmp42, align 8, !dbg !4212
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4227, metadata !DIExpression()), !dbg !4229
  %20 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4229
  %available49 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %20, i32 0, i32 7, !dbg !4229
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %available49, i32 0, i32 0, !dbg !4229
  %21 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4229
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !4229
  store i8* %22, i8** %__mptr, align 8, !dbg !4229
  br label %do.body50, !dbg !4229

do.body50:                                        ; preds = %if.end41
  br label %do.end51, !dbg !4230

do.end51:                                         ; preds = %do.body50
  %23 = load i8*, i8** %__mptr, align 8, !dbg !4229
  %add.ptr = getelementptr i8, i8* %23, i64 0, !dbg !4229
  %24 = bitcast i8* %add.ptr to %struct.v4l2_kevent*, !dbg !4229
  store %struct.v4l2_kevent* %24, %struct.v4l2_kevent** %tmp52, align 8, !dbg !4230
  %25 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %tmp52, align 8, !dbg !4229
  store %struct.v4l2_kevent* %25, %struct.v4l2_kevent** %kev, align 8, !dbg !4232
  %26 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4233
  %list = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %26, i32 0, i32 0, !dbg !4234
  call void @list_del(%struct.list_head* %list) #6, !dbg !4235
  %27 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4236
  %navailable53 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %27, i32 0, i32 8, !dbg !4237
  %28 = load i32, i32* %navailable53, align 8, !dbg !4238
  %dec = add i32 %28, -1, !dbg !4238
  store i32 %dec, i32* %navailable53, align 8, !dbg !4238
  %29 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4239
  %navailable54 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %29, i32 0, i32 8, !dbg !4240
  %30 = load i32, i32* %navailable54, align 8, !dbg !4240
  %31 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4241
  %event55 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %31, i32 0, i32 2, !dbg !4242
  %pending = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %event55, i32 0, i32 2, !dbg !4243
  store i32 %30, i32* %pending, align 8, !dbg !4244
  %32 = load %struct.v4l2_event*, %struct.v4l2_event** %event.addr, align 8, !dbg !4245
  %33 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4246
  %event56 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %33, i32 0, i32 2, !dbg !4247
  %34 = bitcast %struct.v4l2_event* %32 to i8*, !dbg !4247
  %35 = bitcast %struct.v4l2_event* %event56 to i8*, !dbg !4247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 136, i1 false), !dbg !4247
  %36 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4248
  %ts58 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %36, i32 0, i32 3, !dbg !4249
  %37 = load i64, i64* %ts58, align 8, !dbg !4249
  %call59 = call { i64, i64 } @ns_to_timespec64(i64 %37) #6, !dbg !4250
  %38 = bitcast %struct.timespec64* %tmp57 to { i64, i64 }*, !dbg !4250
  %39 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 0, !dbg !4250
  %40 = extractvalue { i64, i64 } %call59, 0, !dbg !4250
  store i64 %40, i64* %39, align 8, !dbg !4250
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %38, i32 0, i32 1, !dbg !4250
  %42 = extractvalue { i64, i64 } %call59, 1, !dbg !4250
  store i64 %42, i64* %41, align 8, !dbg !4250
  %43 = bitcast %struct.timespec64* %ts to i8*, !dbg !4250
  %44 = bitcast %struct.timespec64* %tmp57 to i8*, !dbg !4250
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false), !dbg !4250
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4251
  %45 = load i64, i64* %tv_sec, align 8, !dbg !4251
  %46 = load %struct.v4l2_event*, %struct.v4l2_event** %event.addr, align 8, !dbg !4252
  %timestamp = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %46, i32 0, i32 4, !dbg !4253
  %tv_sec60 = getelementptr inbounds %struct.__kernel_timespec, %struct.__kernel_timespec* %timestamp, i32 0, i32 0, !dbg !4254
  store i64 %45, i64* %tv_sec60, align 8, !dbg !4255
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4256
  %47 = load i64, i64* %tv_nsec, align 8, !dbg !4256
  %48 = load %struct.v4l2_event*, %struct.v4l2_event** %event.addr, align 8, !dbg !4257
  %timestamp61 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %48, i32 0, i32 4, !dbg !4258
  %tv_nsec62 = getelementptr inbounds %struct.__kernel_timespec, %struct.__kernel_timespec* %timestamp61, i32 0, i32 1, !dbg !4259
  store i64 %47, i64* %tv_nsec62, align 8, !dbg !4260
  %49 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4261
  %sev = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %49, i32 0, i32 1, !dbg !4262
  %50 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4262
  %call63 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %50, i32 1) #6, !dbg !4263
  %51 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4264
  %sev64 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %51, i32 0, i32 1, !dbg !4265
  %52 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev64, align 8, !dbg !4265
  %first = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %52, i32 0, i32 8, !dbg !4266
  store i32 %call63, i32* %first, align 4, !dbg !4267
  %53 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4268
  %sev65 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %53, i32 0, i32 1, !dbg !4269
  %54 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev65, align 8, !dbg !4269
  %in_use = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %54, i32 0, i32 9, !dbg !4270
  %55 = load i32, i32* %in_use, align 8, !dbg !4271
  %dec66 = add i32 %55, -1, !dbg !4271
  store i32 %dec66, i32* %in_use, align 8, !dbg !4271
  %56 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4272
  %vdev67 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %56, i32 0, i32 1, !dbg !4273
  %57 = load %struct.video_device*, %struct.video_device** %vdev67, align 8, !dbg !4273
  %fh_lock68 = getelementptr inbounds %struct.video_device, %struct.video_device* %57, i32 0, i32 19, !dbg !4274
  %58 = load i64, i64* %flags, align 8, !dbg !4275
  store %struct.spinlock* %fh_lock68, %struct.spinlock** %lock.addr.i69, align 8
  store i64 %58, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !4276
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !4276
  store i32 1, i32* %tmp.i, align 4, !dbg !4276
  %59 = load i32, i32* %tmp.i, align 4, !dbg !4276
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !4277
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !4277
  store i32 1, i32* %tmp8.i, align 4, !dbg !4277
  %60 = load i32, i32* %tmp8.i, align 4, !dbg !4277
  %61 = load i64, i64* %flags.addr.i, align 8, !dbg !4278
  call void @arch_local_irq_restore(i64 %61) #7, !dbg !4278
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4279, !srcloc !4206
  %62 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i69, align 8, !dbg !4280
  %63 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %62, i32 0, i32 0, !dbg !4280
  %rlock.i70 = bitcast %union.anon.3* %63 to %struct.raw_spinlock*, !dbg !4280
  store i32 0, i32* %retval, align 4, !dbg !4281
  br label %return, !dbg !4281

return:                                           ; preds = %do.end51, %if.then
  %64 = load i32, i32* %retval, align 4, !dbg !4282
  ret i32 %64, !dbg !4282
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @v4l2_event_queue(%struct.video_device* %vdev, %struct.v4l2_event* %ev) #0 !dbg !4283 {
entry:
  %lock.addr.i35 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i35, metadata !4126, metadata !DIExpression()), !dbg !4286
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4135, metadata !DIExpression()), !dbg !4288
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4140, metadata !DIExpression()), !dbg !4289
  %vdev.addr = alloca %struct.video_device*, align 8
  %ev.addr = alloca %struct.v4l2_event*, align 8
  %fh = alloca %struct.v4l2_fh*, align 8
  %flags = alloca i64, align 8
  %ts = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp23 = alloca %struct.v4l2_fh*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp32 = alloca %struct.v4l2_fh*, align 8
  store %struct.video_device* %vdev, %struct.video_device** %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.video_device** %vdev.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  store %struct.v4l2_event* %ev, %struct.v4l2_event** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %ev.addr, metadata !4298, metadata !DIExpression()), !dbg !4299
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh, metadata !4300, metadata !DIExpression()), !dbg !4301
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4302, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.declare(metadata i64* %ts, metadata !4304, metadata !DIExpression()), !dbg !4305
  %0 = load %struct.video_device*, %struct.video_device** %vdev.addr, align 8, !dbg !4306
  %cmp = icmp eq %struct.video_device* %0, null, !dbg !4308
  br i1 %cmp, label %if.then, label %if.end, !dbg !4309

if.then:                                          ; preds = %entry
  br label %return, !dbg !4310

if.end:                                           ; preds = %entry
  %call = call i64 @ktime_get_ns() #6, !dbg !4311
  store i64 %call, i64* %ts, align 8, !dbg !4312
  br label %do.body, !dbg !4313

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4314

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4315, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4318, metadata !DIExpression()), !dbg !4317
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !4317
  %conv = zext i1 %cmp2 to i32, !dbg !4317
  store i32 1, i32* %tmp, align 4, !dbg !4317
  %1 = load i32, i32* %tmp, align 4, !dbg !4317
  br label %do.body3, !dbg !4319

do.body3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !4320

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !4321

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !4323, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !4327, metadata !DIExpression()), !dbg !4326
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !4326
  %conv9 = zext i1 %cmp8 to i32, !dbg !4326
  store i32 1, i32* %tmp10, align 4, !dbg !4326
  %2 = load i32, i32* %tmp10, align 4, !dbg !4326
  %call11 = call i64 @arch_local_irq_save() #6, !dbg !4328
  store i64 %call11, i64* %flags, align 8, !dbg !4328
  br label %do.end, !dbg !4328

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !4321

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !4320

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4329, !srcloc !4330
  br label %do.body14, !dbg !4329

do.body14:                                        ; preds = %do.body13
  %3 = load %struct.video_device*, %struct.video_device** %vdev.addr, align 8, !dbg !4331
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %3, i32 0, i32 19, !dbg !4331
  store %struct.spinlock* %fh_lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4332
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !4333
  %rlock.i = bitcast %union.anon.3* %5 to %struct.raw_spinlock*, !dbg !4333
  br label %do.end16, !dbg !4331

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !4329

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4320

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4319

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4314

do.end20:                                         ; preds = %do.end19
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4334, metadata !DIExpression()), !dbg !4337
  %6 = load %struct.video_device*, %struct.video_device** %vdev.addr, align 8, !dbg !4337
  %fh_list = getelementptr inbounds %struct.video_device, %struct.video_device* %6, i32 0, i32 20, !dbg !4337
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %fh_list, i32 0, i32 0, !dbg !4337
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4337
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4337
  store i8* %8, i8** %__mptr, align 8, !dbg !4337
  br label %do.body21, !dbg !4337

do.body21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !4338

do.end22:                                         ; preds = %do.body21
  %9 = load i8*, i8** %__mptr, align 8, !dbg !4337
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !4337
  %10 = bitcast i8* %add.ptr to %struct.v4l2_fh*, !dbg !4337
  store %struct.v4l2_fh* %10, %struct.v4l2_fh** %tmp23, align 8, !dbg !4338
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %tmp23, align 8, !dbg !4337
  store %struct.v4l2_fh* %11, %struct.v4l2_fh** %fh, align 8, !dbg !4340
  br label %for.cond, !dbg !4340

for.cond:                                         ; preds = %do.end31, %do.end22
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh, align 8, !dbg !4341
  %list = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %12, i32 0, i32 0, !dbg !4341
  %13 = load %struct.video_device*, %struct.video_device** %vdev.addr, align 8, !dbg !4341
  %fh_list24 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 20, !dbg !4341
  %cmp25 = icmp eq %struct.list_head* %list, %fh_list24, !dbg !4341
  %lnot = xor i1 %cmp25, true, !dbg !4341
  br i1 %lnot, label %for.body, label %for.end, !dbg !4340

for.body:                                         ; preds = %for.cond
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh, align 8, !dbg !4343
  %15 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4344
  %16 = load i64, i64* %ts, align 8, !dbg !4345
  call void @__v4l2_event_queue_fh(%struct.v4l2_fh* %14, %struct.v4l2_event* %15, i64 %16) #6, !dbg !4346
  br label %for.inc, !dbg !4346

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !4347, metadata !DIExpression()), !dbg !4349
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh, align 8, !dbg !4349
  %list28 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %17, i32 0, i32 0, !dbg !4349
  %next29 = getelementptr inbounds %struct.list_head, %struct.list_head* %list28, i32 0, i32 0, !dbg !4349
  %18 = load %struct.list_head*, %struct.list_head** %next29, align 8, !dbg !4349
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4349
  store i8* %19, i8** %__mptr27, align 8, !dbg !4349
  br label %do.body30, !dbg !4349

do.body30:                                        ; preds = %for.inc
  br label %do.end31, !dbg !4350

do.end31:                                         ; preds = %do.body30
  %20 = load i8*, i8** %__mptr27, align 8, !dbg !4349
  %add.ptr33 = getelementptr i8, i8* %20, i64 0, !dbg !4349
  %21 = bitcast i8* %add.ptr33 to %struct.v4l2_fh*, !dbg !4349
  store %struct.v4l2_fh* %21, %struct.v4l2_fh** %tmp32, align 8, !dbg !4350
  %22 = load %struct.v4l2_fh*, %struct.v4l2_fh** %tmp32, align 8, !dbg !4349
  store %struct.v4l2_fh* %22, %struct.v4l2_fh** %fh, align 8, !dbg !4341
  br label %for.cond, !dbg !4341, !llvm.loop !4352

for.end:                                          ; preds = %for.cond
  %23 = load %struct.video_device*, %struct.video_device** %vdev.addr, align 8, !dbg !4354
  %fh_lock34 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 19, !dbg !4355
  %24 = load i64, i64* %flags, align 8, !dbg !4356
  store %struct.spinlock* %fh_lock34, %struct.spinlock** %lock.addr.i35, align 8
  store i64 %24, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !4357
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !4357
  store i32 1, i32* %tmp.i, align 4, !dbg !4357
  %25 = load i32, i32* %tmp.i, align 4, !dbg !4357
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !4358
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !4358
  store i32 1, i32* %tmp8.i, align 4, !dbg !4358
  %26 = load i32, i32* %tmp8.i, align 4, !dbg !4358
  %27 = load i64, i64* %flags.addr.i, align 8, !dbg !4359
  call void @arch_local_irq_restore(i64 %27) #7, !dbg !4359
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4360, !srcloc !4206
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i35, align 8, !dbg !4361
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !4361
  %rlock.i36 = bitcast %union.anon.3* %29 to %struct.raw_spinlock*, !dbg !4361
  br label %return, !dbg !4362

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !4362
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_get_ns() #0 !dbg !4363 {
entry:
  %call = call i64 @ktime_get() #6, !dbg !4367
  %call1 = call i64 @ktime_to_ns(i64 %call) #6, !dbg !4368
  ret i64 %call1, !dbg !4369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4370 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4374, metadata !DIExpression()), !dbg !4375
  %call = call i64 @arch_local_save_flags() #6, !dbg !4376
  store i64 %call, i64* %f, align 8, !dbg !4377
  call void @arch_local_irq_disable() #6, !dbg !4378
  %0 = load i64, i64* %f, align 8, !dbg !4379
  ret i64 %0, !dbg !4380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__v4l2_event_queue_fh(%struct.v4l2_fh* %fh, %struct.v4l2_event* %ev, i64 %ts) #0 !dbg !4381 {
entry:
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %ev.addr = alloca %struct.v4l2_event*, align 8
  %ts.addr = alloca i64, align 8
  %sev = alloca %struct.v4l2_subscribed_event*, align 8
  %kev = alloca %struct.v4l2_kevent*, align 8
  %copy_payload = alloca i8, align 1
  %second_oldest = alloca %struct.v4l2_kevent*, align 8
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4384, metadata !DIExpression()), !dbg !4385
  store %struct.v4l2_event* %ev, %struct.v4l2_event** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %ev.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  store i64 %ts, i64* %ts.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ts.addr, metadata !4388, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %sev, metadata !4390, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.declare(metadata %struct.v4l2_kevent** %kev, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.declare(metadata i8* %copy_payload, metadata !4394, metadata !DIExpression()), !dbg !4395
  store i8 1, i8* %copy_payload, align 1, !dbg !4395
  %0 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4396
  %1 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4397
  %type = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %1, i32 0, i32 0, !dbg !4398
  %2 = load i32, i32* %type, align 8, !dbg !4398
  %3 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4399
  %id = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %3, i32 0, i32 5, !dbg !4400
  %4 = load i32, i32* %id, align 8, !dbg !4400
  %call = call %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh* %0, i32 %2, i32 %4) #6, !dbg !4401
  store %struct.v4l2_subscribed_event* %call, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4402
  %5 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4403
  %cmp = icmp eq %struct.v4l2_subscribed_event* %5, null, !dbg !4405
  br i1 %cmp, label %if.then, label %if.end, !dbg !4406

if.then:                                          ; preds = %entry
  br label %return, !dbg !4407

if.end:                                           ; preds = %entry
  %6 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4408
  %sequence = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %6, i32 0, i32 9, !dbg !4409
  %7 = load i32, i32* %sequence, align 4, !dbg !4410
  %inc = add i32 %7, 1, !dbg !4410
  store i32 %inc, i32* %sequence, align 4, !dbg !4410
  %8 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4411
  %in_use = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %8, i32 0, i32 9, !dbg !4413
  %9 = load i32, i32* %in_use, align 8, !dbg !4413
  %10 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4414
  %elems = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %10, i32 0, i32 7, !dbg !4415
  %11 = load i32, i32* %elems, align 8, !dbg !4415
  %cmp1 = icmp eq i32 %9, %11, !dbg !4416
  br i1 %cmp1, label %if.then2, label %if.end33, !dbg !4417

if.then2:                                         ; preds = %if.end
  %12 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4418
  %events = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %12, i32 0, i32 10, !dbg !4420
  %arraydecay = getelementptr inbounds [0 x %struct.v4l2_kevent], [0 x %struct.v4l2_kevent]* %events, i64 0, i64 0, !dbg !4418
  %13 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4421
  %call3 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %13, i32 0) #6, !dbg !4422
  %idx.ext = zext i32 %call3 to i64, !dbg !4423
  %add.ptr = getelementptr %struct.v4l2_kevent, %struct.v4l2_kevent* %arraydecay, i64 %idx.ext, !dbg !4423
  store %struct.v4l2_kevent* %add.ptr, %struct.v4l2_kevent** %kev, align 8, !dbg !4424
  %14 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4425
  %list = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %14, i32 0, i32 0, !dbg !4426
  call void @list_del(%struct.list_head* %list) #6, !dbg !4427
  %15 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4428
  %in_use4 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %15, i32 0, i32 9, !dbg !4429
  %16 = load i32, i32* %in_use4, align 8, !dbg !4430
  %dec = add i32 %16, -1, !dbg !4430
  store i32 %dec, i32* %in_use4, align 8, !dbg !4430
  %17 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4431
  %call5 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %17, i32 1) #6, !dbg !4432
  %18 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4433
  %first = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %18, i32 0, i32 8, !dbg !4434
  store i32 %call5, i32* %first, align 4, !dbg !4435
  %19 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4436
  %navailable = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %19, i32 0, i32 8, !dbg !4437
  %20 = load i32, i32* %navailable, align 8, !dbg !4438
  %dec6 = add i32 %20, -1, !dbg !4438
  store i32 %dec6, i32* %navailable, align 8, !dbg !4438
  %21 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4439
  %elems7 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %21, i32 0, i32 7, !dbg !4441
  %22 = load i32, i32* %elems7, align 8, !dbg !4441
  %cmp8 = icmp eq i32 %22, 1, !dbg !4442
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !4443

if.then9:                                         ; preds = %if.then2
  %23 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4444
  %ops = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %23, i32 0, i32 6, !dbg !4447
  %24 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops, align 8, !dbg !4447
  %tobool = icmp ne %struct.v4l2_subscribed_event_ops* %24, null, !dbg !4444
  br i1 %tobool, label %land.lhs.true, label %if.end15, !dbg !4448

land.lhs.true:                                    ; preds = %if.then9
  %25 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4449
  %ops10 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %25, i32 0, i32 6, !dbg !4450
  %26 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops10, align 8, !dbg !4450
  %replace = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %26, i32 0, i32 2, !dbg !4451
  %27 = load void (%struct.v4l2_event*, %struct.v4l2_event*)*, void (%struct.v4l2_event*, %struct.v4l2_event*)** %replace, align 8, !dbg !4451
  %tobool11 = icmp ne void (%struct.v4l2_event*, %struct.v4l2_event*)* %27, null, !dbg !4449
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !4452

if.then12:                                        ; preds = %land.lhs.true
  %28 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4453
  %ops13 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %28, i32 0, i32 6, !dbg !4455
  %29 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops13, align 8, !dbg !4455
  %replace14 = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %29, i32 0, i32 2, !dbg !4456
  %30 = load void (%struct.v4l2_event*, %struct.v4l2_event*)*, void (%struct.v4l2_event*, %struct.v4l2_event*)** %replace14, align 8, !dbg !4456
  %31 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4457
  %event = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %31, i32 0, i32 2, !dbg !4458
  %32 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4459
  call void %30(%struct.v4l2_event* %event, %struct.v4l2_event* %32) #6, !dbg !4453
  store i8 0, i8* %copy_payload, align 1, !dbg !4460
  br label %if.end15, !dbg !4461

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %if.then9
  br label %if.end32, !dbg !4462

if.else:                                          ; preds = %if.then2
  %33 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4463
  %ops16 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %33, i32 0, i32 6, !dbg !4465
  %34 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops16, align 8, !dbg !4465
  %tobool17 = icmp ne %struct.v4l2_subscribed_event_ops* %34, null, !dbg !4463
  br i1 %tobool17, label %land.lhs.true18, label %if.end31, !dbg !4466

land.lhs.true18:                                  ; preds = %if.else
  %35 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4467
  %ops19 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %35, i32 0, i32 6, !dbg !4468
  %36 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops19, align 8, !dbg !4468
  %merge = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %36, i32 0, i32 3, !dbg !4469
  %37 = load void (%struct.v4l2_event*, %struct.v4l2_event*)*, void (%struct.v4l2_event*, %struct.v4l2_event*)** %merge, align 8, !dbg !4469
  %tobool20 = icmp ne void (%struct.v4l2_event*, %struct.v4l2_event*)* %37, null, !dbg !4467
  br i1 %tobool20, label %if.then21, label %if.end31, !dbg !4470

if.then21:                                        ; preds = %land.lhs.true18
  call void @llvm.dbg.declare(metadata %struct.v4l2_kevent** %second_oldest, metadata !4471, metadata !DIExpression()), !dbg !4473
  %38 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4474
  %events22 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %38, i32 0, i32 10, !dbg !4475
  %arraydecay23 = getelementptr inbounds [0 x %struct.v4l2_kevent], [0 x %struct.v4l2_kevent]* %events22, i64 0, i64 0, !dbg !4474
  %39 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4476
  %call24 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %39, i32 0) #6, !dbg !4477
  %idx.ext25 = zext i32 %call24 to i64, !dbg !4478
  %add.ptr26 = getelementptr %struct.v4l2_kevent, %struct.v4l2_kevent* %arraydecay23, i64 %idx.ext25, !dbg !4478
  store %struct.v4l2_kevent* %add.ptr26, %struct.v4l2_kevent** %second_oldest, align 8, !dbg !4473
  %40 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4479
  %ops27 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %40, i32 0, i32 6, !dbg !4480
  %41 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops27, align 8, !dbg !4480
  %merge28 = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %41, i32 0, i32 3, !dbg !4481
  %42 = load void (%struct.v4l2_event*, %struct.v4l2_event*)*, void (%struct.v4l2_event*, %struct.v4l2_event*)** %merge28, align 8, !dbg !4481
  %43 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4482
  %event29 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %43, i32 0, i32 2, !dbg !4483
  %44 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %second_oldest, align 8, !dbg !4484
  %event30 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %44, i32 0, i32 2, !dbg !4485
  call void %42(%struct.v4l2_event* %event29, %struct.v4l2_event* %event30) #6, !dbg !4479
  br label %if.end31, !dbg !4486

if.end31:                                         ; preds = %if.then21, %land.lhs.true18, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end15
  br label %if.end33, !dbg !4487

if.end33:                                         ; preds = %if.end32, %if.end
  %45 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4488
  %events34 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %45, i32 0, i32 10, !dbg !4489
  %arraydecay35 = getelementptr inbounds [0 x %struct.v4l2_kevent], [0 x %struct.v4l2_kevent]* %events34, i64 0, i64 0, !dbg !4488
  %46 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4490
  %47 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4491
  %in_use36 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %47, i32 0, i32 9, !dbg !4492
  %48 = load i32, i32* %in_use36, align 8, !dbg !4492
  %call37 = call i32 @sev_pos(%struct.v4l2_subscribed_event* %46, i32 %48) #6, !dbg !4493
  %idx.ext38 = zext i32 %call37 to i64, !dbg !4494
  %add.ptr39 = getelementptr %struct.v4l2_kevent, %struct.v4l2_kevent* %arraydecay35, i64 %idx.ext38, !dbg !4494
  store %struct.v4l2_kevent* %add.ptr39, %struct.v4l2_kevent** %kev, align 8, !dbg !4495
  %49 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4496
  %type40 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %49, i32 0, i32 0, !dbg !4497
  %50 = load i32, i32* %type40, align 8, !dbg !4497
  %51 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4498
  %event41 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %51, i32 0, i32 2, !dbg !4499
  %type42 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %event41, i32 0, i32 0, !dbg !4500
  store i32 %50, i32* %type42, align 8, !dbg !4501
  %52 = load i8, i8* %copy_payload, align 1, !dbg !4502
  %tobool43 = trunc i8 %52 to i1, !dbg !4502
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !4504

if.then44:                                        ; preds = %if.end33
  %53 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4505
  %event45 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %53, i32 0, i32 2, !dbg !4506
  %u = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %event45, i32 0, i32 1, !dbg !4507
  %54 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4508
  %u46 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %54, i32 0, i32 1, !dbg !4509
  %55 = bitcast %union.anon.70* %u to i8*, !dbg !4509
  %56 = bitcast %union.anon.70* %u46 to i8*, !dbg !4509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 64, i1 false), !dbg !4509
  br label %if.end47, !dbg !4505

if.end47:                                         ; preds = %if.then44, %if.end33
  %57 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4510
  %id48 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %57, i32 0, i32 5, !dbg !4511
  %58 = load i32, i32* %id48, align 8, !dbg !4511
  %59 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4512
  %event49 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %59, i32 0, i32 2, !dbg !4513
  %id50 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %event49, i32 0, i32 5, !dbg !4514
  store i32 %58, i32* %id50, align 8, !dbg !4515
  %60 = load i64, i64* %ts.addr, align 8, !dbg !4516
  %61 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4517
  %ts51 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %61, i32 0, i32 3, !dbg !4518
  store i64 %60, i64* %ts51, align 8, !dbg !4519
  %62 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4520
  %sequence52 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %62, i32 0, i32 9, !dbg !4521
  %63 = load i32, i32* %sequence52, align 4, !dbg !4521
  %64 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4522
  %event53 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %64, i32 0, i32 2, !dbg !4523
  %sequence54 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %event53, i32 0, i32 3, !dbg !4524
  store i32 %63, i32* %sequence54, align 4, !dbg !4525
  %65 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4526
  %in_use55 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %65, i32 0, i32 9, !dbg !4527
  %66 = load i32, i32* %in_use55, align 8, !dbg !4528
  %inc56 = add i32 %66, 1, !dbg !4528
  store i32 %inc56, i32* %in_use55, align 8, !dbg !4528
  %67 = load %struct.v4l2_kevent*, %struct.v4l2_kevent** %kev, align 8, !dbg !4529
  %list57 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %67, i32 0, i32 0, !dbg !4530
  %68 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4531
  %available = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %68, i32 0, i32 7, !dbg !4532
  call void @list_add_tail(%struct.list_head* %list57, %struct.list_head* %available) #6, !dbg !4533
  %69 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4534
  %navailable58 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %69, i32 0, i32 8, !dbg !4535
  %70 = load i32, i32* %navailable58, align 8, !dbg !4536
  %inc59 = add i32 %70, 1, !dbg !4536
  store i32 %inc59, i32* %navailable58, align 8, !dbg !4536
  %71 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4537
  %wait = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %71, i32 0, i32 4, !dbg !4537
  call void @__wake_up(%struct.wait_queue_head* %wait, i32 3, i32 0, i8* null) #6, !dbg !4537
  br label %return, !dbg !4538

return:                                           ; preds = %if.end47, %if.then
  ret void, !dbg !4538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @v4l2_event_queue_fh(%struct.v4l2_fh* %fh, %struct.v4l2_event* %ev) #0 !dbg !4539 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4126, metadata !DIExpression()), !dbg !4542
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4135, metadata !DIExpression()), !dbg !4544
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4140, metadata !DIExpression()), !dbg !4545
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %ev.addr = alloca %struct.v4l2_event*, align 8
  %flags = alloca i64, align 8
  %ts = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4552, metadata !DIExpression()), !dbg !4553
  store %struct.v4l2_event* %ev, %struct.v4l2_event** %ev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %ev.addr, metadata !4554, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4556, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.declare(metadata i64* %ts, metadata !4558, metadata !DIExpression()), !dbg !4559
  %call = call i64 @ktime_get_ns() #6, !dbg !4560
  store i64 %call, i64* %ts, align 8, !dbg !4559
  br label %do.body, !dbg !4561

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4562

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4563, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4566, metadata !DIExpression()), !dbg !4565
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4565
  %conv = zext i1 %cmp to i32, !dbg !4565
  store i32 1, i32* %tmp, align 4, !dbg !4565
  %0 = load i32, i32* %tmp, align 4, !dbg !4565
  br label %do.body2, !dbg !4567

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4568

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4569

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4571, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4575, metadata !DIExpression()), !dbg !4574
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4574
  %conv8 = zext i1 %cmp7 to i32, !dbg !4574
  store i32 1, i32* %tmp9, align 4, !dbg !4574
  %1 = load i32, i32* %tmp9, align 4, !dbg !4574
  %call10 = call i64 @arch_local_irq_save() #6, !dbg !4576
  store i64 %call10, i64* %flags, align 8, !dbg !4576
  br label %do.end, !dbg !4576

do.end:                                           ; preds = %do.body4
  br label %do.end11, !dbg !4569

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !4568

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4577, !srcloc !4578
  br label %do.body13, !dbg !4577

do.body13:                                        ; preds = %do.body12
  %2 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4579
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %2, i32 0, i32 1, !dbg !4579
  %3 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !4579
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %3, i32 0, i32 19, !dbg !4579
  store %struct.spinlock* %fh_lock, %struct.spinlock** %lock.addr.i, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4580
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !4581
  %rlock.i = bitcast %union.anon.3* %5 to %struct.raw_spinlock*, !dbg !4581
  br label %do.end15, !dbg !4579

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !4577

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4568

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4567

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4562

do.end19:                                         ; preds = %do.end18
  %6 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4582
  %7 = load %struct.v4l2_event*, %struct.v4l2_event** %ev.addr, align 8, !dbg !4583
  %8 = load i64, i64* %ts, align 8, !dbg !4584
  call void @__v4l2_event_queue_fh(%struct.v4l2_fh* %6, %struct.v4l2_event* %7, i64 %8) #6, !dbg !4585
  %9 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4586
  %vdev20 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %9, i32 0, i32 1, !dbg !4587
  %10 = load %struct.video_device*, %struct.video_device** %vdev20, align 8, !dbg !4587
  %fh_lock21 = getelementptr inbounds %struct.video_device, %struct.video_device* %10, i32 0, i32 19, !dbg !4588
  %11 = load i64, i64* %flags, align 8, !dbg !4589
  store %struct.spinlock* %fh_lock21, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %11, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !4590
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !4590
  store i32 1, i32* %tmp.i, align 4, !dbg !4590
  %12 = load i32, i32* %tmp.i, align 4, !dbg !4590
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !4591
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !4591
  store i32 1, i32* %tmp8.i, align 4, !dbg !4591
  %13 = load i32, i32* %tmp8.i, align 4, !dbg !4591
  %14 = load i64, i64* %flags.addr.i, align 8, !dbg !4592
  call void @arch_local_irq_restore(i64 %14) #7, !dbg !4592
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4593, !srcloc !4206
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !4594
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !4594
  %rlock.i23 = bitcast %union.anon.3* %16 to %struct.raw_spinlock*, !dbg !4594
  ret void, !dbg !4595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_event_pending(%struct.v4l2_fh* %fh) #0 !dbg !4596 {
entry:
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4601
  %navailable = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %0, i32 0, i32 8, !dbg !4602
  %1 = load i32, i32* %navailable, align 8, !dbg !4602
  ret i32 %1, !dbg !4603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_event_subscribe(%struct.v4l2_fh* %fh, %struct.v4l2_event_subscription* %sub, i32 %elems, %struct.v4l2_subscribed_event_ops* %ops) #0 !dbg !4604 {
entry:
  %lock.addr.i100 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i100, metadata !4140, metadata !DIExpression()), !dbg !4618
  %lock.addr.i95 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i95, metadata !4126, metadata !DIExpression()), !dbg !4630
  %flags.addr.i96 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i96, metadata !4135, metadata !DIExpression()), !dbg !4632
  %tmp.i97 = alloca i32, align 4
  %tmp8.i98 = alloca i32, align 4
  %lock.addr.i93 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i93, metadata !4126, metadata !DIExpression()), !dbg !4633
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4135, metadata !DIExpression()), !dbg !4635
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4140, metadata !DIExpression()), !dbg !4636
  %retval = alloca i32, align 4
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %sub.addr = alloca %struct.v4l2_event_subscription*, align 8
  %elems.addr = alloca i32, align 4
  %ops.addr = alloca %struct.v4l2_subscribed_event_ops*, align 8
  %sev = alloca %struct.v4l2_subscribed_event*, align 8
  %found_ev = alloca %struct.v4l2_subscribed_event*, align 8
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy24 = alloca i64, align 8
  %__dummy225 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %__dummy61 = alloca i64, align 8
  %__dummy262 = alloca i64, align 8
  %tmp65 = alloca i32, align 4
  %__dummy69 = alloca i64, align 8
  %__dummy270 = alloca i64, align 8
  %tmp73 = alloca i32, align 4
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  store %struct.v4l2_event_subscription* %sub, %struct.v4l2_event_subscription** %sub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event_subscription** %sub.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  store i32 %elems, i32* %elems.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elems.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  store %struct.v4l2_subscribed_event_ops* %ops, %struct.v4l2_subscribed_event_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event_ops** %ops.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %sev, metadata !4651, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %found_ev, metadata !4653, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4655, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4657, metadata !DIExpression()), !dbg !4658
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4659, metadata !DIExpression()), !dbg !4660
  store i32 0, i32* %ret, align 4, !dbg !4660
  %0 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !4661
  %type = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %0, i32 0, i32 0, !dbg !4663
  %1 = load i32, i32* %type, align 4, !dbg !4663
  %cmp = icmp eq i32 %1, 0, !dbg !4664
  br i1 %cmp, label %if.then, label %if.end, !dbg !4665

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4666
  br label %return, !dbg !4666

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %elems.addr, align 4, !dbg !4667
  %cmp1 = icmp ult i32 %2, 1, !dbg !4669
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4670

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %elems.addr, align 4, !dbg !4671
  br label %if.end3, !dbg !4672

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, i32* %elems.addr, align 4, !dbg !4673
  %conv = zext i32 %3 to i64, !dbg !4673
  %call = call i64 @__ab_c_size(i64 %conv, i64 168, i64 80) #6, !dbg !4673
  %call4 = call i8* @kvzalloc(i64 %call, i32 3264) #6, !dbg !4674
  %4 = bitcast i8* %call4 to %struct.v4l2_subscribed_event*, !dbg !4674
  store %struct.v4l2_subscribed_event* %4, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4675
  %5 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4676
  %tobool = icmp ne %struct.v4l2_subscribed_event* %5, null, !dbg !4676
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !4678

if.then5:                                         ; preds = %if.end3
  store i32 -12, i32* %retval, align 4, !dbg !4679
  br label %return, !dbg !4679

if.end6:                                          ; preds = %if.end3
  store i32 0, i32* %i, align 4, !dbg !4680
  br label %for.cond, !dbg !4682

for.cond:                                         ; preds = %for.inc, %if.end6
  %6 = load i32, i32* %i, align 4, !dbg !4683
  %7 = load i32, i32* %elems.addr, align 4, !dbg !4685
  %cmp7 = icmp ult i32 %6, %7, !dbg !4686
  br i1 %cmp7, label %for.body, label %for.end, !dbg !4687

for.body:                                         ; preds = %for.cond
  %8 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4688
  %9 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4689
  %events = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %9, i32 0, i32 10, !dbg !4690
  %10 = load i32, i32* %i, align 4, !dbg !4691
  %idxprom = zext i32 %10 to i64, !dbg !4689
  %arrayidx = getelementptr [0 x %struct.v4l2_kevent], [0 x %struct.v4l2_kevent]* %events, i64 0, i64 %idxprom, !dbg !4689
  %sev9 = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %arrayidx, i32 0, i32 1, !dbg !4692
  store %struct.v4l2_subscribed_event* %8, %struct.v4l2_subscribed_event** %sev9, align 8, !dbg !4693
  br label %for.inc, !dbg !4689

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !4694
  %inc = add i32 %11, 1, !dbg !4694
  store i32 %inc, i32* %i, align 4, !dbg !4694
  br label %for.cond, !dbg !4695, !llvm.loop !4696

for.end:                                          ; preds = %for.cond
  %12 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !4698
  %type10 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %12, i32 0, i32 0, !dbg !4699
  %13 = load i32, i32* %type10, align 4, !dbg !4699
  %14 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4700
  %type11 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %14, i32 0, i32 1, !dbg !4701
  store i32 %13, i32* %type11, align 8, !dbg !4702
  %15 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !4703
  %id = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %15, i32 0, i32 1, !dbg !4704
  %16 = load i32, i32* %id, align 4, !dbg !4704
  %17 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4705
  %id12 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %17, i32 0, i32 2, !dbg !4706
  store i32 %16, i32* %id12, align 4, !dbg !4707
  %18 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !4708
  %flags13 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %18, i32 0, i32 2, !dbg !4709
  %19 = load i32, i32* %flags13, align 4, !dbg !4709
  %20 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4710
  %flags14 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %20, i32 0, i32 3, !dbg !4711
  store i32 %19, i32* %flags14, align 8, !dbg !4712
  %21 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4713
  %22 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4714
  %fh15 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %22, i32 0, i32 4, !dbg !4715
  store %struct.v4l2_fh* %21, %struct.v4l2_fh** %fh15, align 8, !dbg !4716
  %23 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops.addr, align 8, !dbg !4717
  %24 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4718
  %ops16 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %24, i32 0, i32 6, !dbg !4719
  store %struct.v4l2_subscribed_event_ops* %23, %struct.v4l2_subscribed_event_ops** %ops16, align 8, !dbg !4720
  %25 = load i32, i32* %elems.addr, align 4, !dbg !4721
  %26 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4722
  %elems17 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %26, i32 0, i32 7, !dbg !4723
  store i32 %25, i32* %elems17, align 8, !dbg !4724
  %27 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4725
  %subscribe_lock = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %27, i32 0, i32 5, !dbg !4726
  call void @mutex_lock(%struct.mutex* %subscribe_lock) #6, !dbg !4727
  br label %do.body, !dbg !4728

do.body:                                          ; preds = %for.end
  br label %do.body18, !dbg !4729

do.body18:                                        ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4730, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4733, metadata !DIExpression()), !dbg !4732
  %cmp19 = icmp eq i64* %__dummy, %__dummy2, !dbg !4732
  %conv20 = zext i1 %cmp19 to i32, !dbg !4732
  store i32 1, i32* %tmp, align 4, !dbg !4732
  %28 = load i32, i32* %tmp, align 4, !dbg !4732
  br label %do.body21, !dbg !4734

do.body21:                                        ; preds = %do.body18
  br label %do.body22, !dbg !4735

do.body22:                                        ; preds = %do.body21
  br label %do.body23, !dbg !4736

do.body23:                                        ; preds = %do.body22
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !4738, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata i64* %__dummy225, metadata !4742, metadata !DIExpression()), !dbg !4741
  %cmp26 = icmp eq i64* %__dummy24, %__dummy225, !dbg !4741
  %conv27 = zext i1 %cmp26 to i32, !dbg !4741
  store i32 1, i32* %tmp28, align 4, !dbg !4741
  %29 = load i32, i32* %tmp28, align 4, !dbg !4741
  %call29 = call i64 @arch_local_irq_save() #6, !dbg !4743
  store i64 %call29, i64* %flags, align 8, !dbg !4743
  br label %do.end, !dbg !4743

do.end:                                           ; preds = %do.body23
  br label %do.end30, !dbg !4736

do.end30:                                         ; preds = %do.end
  br label %do.body31, !dbg !4735

do.body31:                                        ; preds = %do.end30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4744, !srcloc !4745
  br label %do.body32, !dbg !4744

do.body32:                                        ; preds = %do.body31
  %30 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4746
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %30, i32 0, i32 1, !dbg !4746
  %31 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !4746
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 19, !dbg !4746
  store %struct.spinlock* %fh_lock, %struct.spinlock** %lock.addr.i, align 8
  %32 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4747
  %33 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %32, i32 0, i32 0, !dbg !4748
  %rlock.i = bitcast %union.anon.3* %33 to %struct.raw_spinlock*, !dbg !4748
  br label %do.end34, !dbg !4746

do.end34:                                         ; preds = %do.body32
  br label %do.end35, !dbg !4744

do.end35:                                         ; preds = %do.end34
  br label %do.end36, !dbg !4735

do.end36:                                         ; preds = %do.end35
  br label %do.end37, !dbg !4734

do.end37:                                         ; preds = %do.end36
  br label %do.end38, !dbg !4729

do.end38:                                         ; preds = %do.end37
  %34 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4749
  %35 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !4750
  %type39 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %35, i32 0, i32 0, !dbg !4751
  %36 = load i32, i32* %type39, align 4, !dbg !4751
  %37 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !4752
  %id40 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %37, i32 0, i32 1, !dbg !4753
  %38 = load i32, i32* %id40, align 4, !dbg !4753
  %call41 = call %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh* %34, i32 %36, i32 %38) #6, !dbg !4754
  store %struct.v4l2_subscribed_event* %call41, %struct.v4l2_subscribed_event** %found_ev, align 8, !dbg !4755
  %39 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %found_ev, align 8, !dbg !4756
  %tobool42 = icmp ne %struct.v4l2_subscribed_event* %39, null, !dbg !4756
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !4758

if.then43:                                        ; preds = %do.end38
  %40 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4759
  %list = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %40, i32 0, i32 0, !dbg !4760
  %41 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4761
  %subscribed = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %41, i32 0, i32 6, !dbg !4762
  call void @list_add(%struct.list_head* %list, %struct.list_head* %subscribed) #6, !dbg !4763
  br label %if.end44, !dbg !4763

if.end44:                                         ; preds = %if.then43, %do.end38
  %42 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4764
  %vdev45 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %42, i32 0, i32 1, !dbg !4765
  %43 = load %struct.video_device*, %struct.video_device** %vdev45, align 8, !dbg !4765
  %fh_lock46 = getelementptr inbounds %struct.video_device, %struct.video_device* %43, i32 0, i32 19, !dbg !4766
  %44 = load i64, i64* %flags, align 8, !dbg !4767
  store %struct.spinlock* %fh_lock46, %struct.spinlock** %lock.addr.i95, align 8
  store i64 %44, i64* %flags.addr.i96, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !4768
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !4768
  store i32 1, i32* %tmp.i97, align 4, !dbg !4768
  %45 = load i32, i32* %tmp.i97, align 4, !dbg !4768
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !4769
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !4769
  store i32 1, i32* %tmp8.i98, align 4, !dbg !4769
  %46 = load i32, i32* %tmp8.i98, align 4, !dbg !4769
  %47 = load i64, i64* %flags.addr.i96, align 8, !dbg !4770
  call void @arch_local_irq_restore(i64 %47) #7, !dbg !4770
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4771, !srcloc !4206
  %48 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i95, align 8, !dbg !4772
  %49 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %48, i32 0, i32 0, !dbg !4772
  %rlock.i99 = bitcast %union.anon.3* %49 to %struct.raw_spinlock*, !dbg !4772
  %50 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %found_ev, align 8, !dbg !4773
  %tobool47 = icmp ne %struct.v4l2_subscribed_event* %50, null, !dbg !4773
  br i1 %tobool47, label %if.then48, label %if.else, !dbg !4774

if.then48:                                        ; preds = %if.end44
  %51 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4775
  %52 = bitcast %struct.v4l2_subscribed_event* %51 to i8*, !dbg !4775
  call void @kvfree(i8* %52) #6, !dbg !4777
  br label %if.end91, !dbg !4778

if.else:                                          ; preds = %if.end44
  %53 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4779
  %ops49 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %53, i32 0, i32 6, !dbg !4780
  %54 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops49, align 8, !dbg !4780
  %tobool50 = icmp ne %struct.v4l2_subscribed_event_ops* %54, null, !dbg !4779
  br i1 %tobool50, label %land.lhs.true, label %if.end90, !dbg !4781

land.lhs.true:                                    ; preds = %if.else
  %55 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4782
  %ops51 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %55, i32 0, i32 6, !dbg !4783
  %56 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops51, align 8, !dbg !4783
  %add = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %56, i32 0, i32 0, !dbg !4784
  %57 = load i32 (%struct.v4l2_subscribed_event*, i32)*, i32 (%struct.v4l2_subscribed_event*, i32)** %add, align 8, !dbg !4784
  %tobool52 = icmp ne i32 (%struct.v4l2_subscribed_event*, i32)* %57, null, !dbg !4782
  br i1 %tobool52, label %if.then53, label %if.end90, !dbg !4785

if.then53:                                        ; preds = %land.lhs.true
  %58 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4786
  %ops54 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %58, i32 0, i32 6, !dbg !4787
  %59 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops54, align 8, !dbg !4787
  %add55 = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %59, i32 0, i32 0, !dbg !4788
  %60 = load i32 (%struct.v4l2_subscribed_event*, i32)*, i32 (%struct.v4l2_subscribed_event*, i32)** %add55, align 8, !dbg !4788
  %61 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4789
  %62 = load i32, i32* %elems.addr, align 4, !dbg !4790
  %call56 = call i32 %60(%struct.v4l2_subscribed_event* %61, i32 %62) #6, !dbg !4786
  store i32 %call56, i32* %ret, align 4, !dbg !4791
  %63 = load i32, i32* %ret, align 4, !dbg !4792
  %tobool57 = icmp ne i32 %63, 0, !dbg !4792
  br i1 %tobool57, label %if.then58, label %if.end89, !dbg !4793

if.then58:                                        ; preds = %if.then53
  br label %do.body59, !dbg !4794

do.body59:                                        ; preds = %if.then58
  br label %do.body60, !dbg !4795

do.body60:                                        ; preds = %do.body59
  call void @llvm.dbg.declare(metadata i64* %__dummy61, metadata !4796, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.declare(metadata i64* %__dummy262, metadata !4799, metadata !DIExpression()), !dbg !4798
  %cmp63 = icmp eq i64* %__dummy61, %__dummy262, !dbg !4798
  %conv64 = zext i1 %cmp63 to i32, !dbg !4798
  store i32 1, i32* %tmp65, align 4, !dbg !4798
  %64 = load i32, i32* %tmp65, align 4, !dbg !4798
  br label %do.body66, !dbg !4800

do.body66:                                        ; preds = %do.body60
  br label %do.body67, !dbg !4801

do.body67:                                        ; preds = %do.body66
  br label %do.body68, !dbg !4802

do.body68:                                        ; preds = %do.body67
  call void @llvm.dbg.declare(metadata i64* %__dummy69, metadata !4804, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.declare(metadata i64* %__dummy270, metadata !4808, metadata !DIExpression()), !dbg !4807
  %cmp71 = icmp eq i64* %__dummy69, %__dummy270, !dbg !4807
  %conv72 = zext i1 %cmp71 to i32, !dbg !4807
  store i32 1, i32* %tmp73, align 4, !dbg !4807
  %65 = load i32, i32* %tmp73, align 4, !dbg !4807
  %call74 = call i64 @arch_local_irq_save() #6, !dbg !4809
  store i64 %call74, i64* %flags, align 8, !dbg !4809
  br label %do.end75, !dbg !4809

do.end75:                                         ; preds = %do.body68
  br label %do.end76, !dbg !4802

do.end76:                                         ; preds = %do.end75
  br label %do.body77, !dbg !4801

do.body77:                                        ; preds = %do.end76
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4810, !srcloc !4811
  br label %do.body78, !dbg !4810

do.body78:                                        ; preds = %do.body77
  %66 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4812
  %vdev79 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %66, i32 0, i32 1, !dbg !4812
  %67 = load %struct.video_device*, %struct.video_device** %vdev79, align 8, !dbg !4812
  %fh_lock80 = getelementptr inbounds %struct.video_device, %struct.video_device* %67, i32 0, i32 19, !dbg !4812
  store %struct.spinlock* %fh_lock80, %struct.spinlock** %lock.addr.i100, align 8
  %68 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i100, align 8, !dbg !4813
  %69 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %68, i32 0, i32 0, !dbg !4814
  %rlock.i101 = bitcast %union.anon.3* %69 to %struct.raw_spinlock*, !dbg !4814
  br label %do.end82, !dbg !4812

do.end82:                                         ; preds = %do.body78
  br label %do.end83, !dbg !4810

do.end83:                                         ; preds = %do.end82
  br label %do.end84, !dbg !4801

do.end84:                                         ; preds = %do.end83
  br label %do.end85, !dbg !4800

do.end85:                                         ; preds = %do.end84
  br label %do.end86, !dbg !4795

do.end86:                                         ; preds = %do.end85
  %70 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4815
  call void @__v4l2_event_unsubscribe(%struct.v4l2_subscribed_event* %70) #6, !dbg !4816
  %71 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4817
  %vdev87 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %71, i32 0, i32 1, !dbg !4818
  %72 = load %struct.video_device*, %struct.video_device** %vdev87, align 8, !dbg !4818
  %fh_lock88 = getelementptr inbounds %struct.video_device, %struct.video_device* %72, i32 0, i32 19, !dbg !4819
  %73 = load i64, i64* %flags, align 8, !dbg !4820
  store %struct.spinlock* %fh_lock88, %struct.spinlock** %lock.addr.i93, align 8
  store i64 %73, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !4821
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !4821
  store i32 1, i32* %tmp.i, align 4, !dbg !4821
  %74 = load i32, i32* %tmp.i, align 4, !dbg !4821
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !4822
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !4822
  store i32 1, i32* %tmp8.i, align 4, !dbg !4822
  %75 = load i32, i32* %tmp8.i, align 4, !dbg !4822
  %76 = load i64, i64* %flags.addr.i, align 8, !dbg !4823
  call void @arch_local_irq_restore(i64 %76) #7, !dbg !4823
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4824, !srcloc !4206
  %77 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i93, align 8, !dbg !4825
  %78 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %77, i32 0, i32 0, !dbg !4825
  %rlock.i94 = bitcast %union.anon.3* %78 to %struct.raw_spinlock*, !dbg !4825
  %79 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4826
  %80 = bitcast %struct.v4l2_subscribed_event* %79 to i8*, !dbg !4826
  call void @kvfree(i8* %80) #6, !dbg !4827
  br label %if.end89, !dbg !4828

if.end89:                                         ; preds = %do.end86, %if.then53
  br label %if.end90, !dbg !4829

if.end90:                                         ; preds = %if.end89, %land.lhs.true, %if.else
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then48
  %81 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4830
  %subscribe_lock92 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %81, i32 0, i32 5, !dbg !4831
  call void @mutex_unlock(%struct.mutex* %subscribe_lock92) #6, !dbg !4832
  %82 = load i32, i32* %ret, align 4, !dbg !4833
  store i32 %82, i32* %retval, align 4, !dbg !4834
  br label %return, !dbg !4834

return:                                           ; preds = %if.end91, %if.then5, %if.then
  %83 = load i32, i32* %retval, align 4, !dbg !4835
  ret i32 %83, !dbg !4835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kvzalloc(i64 %size, i32 %flags) #0 !dbg !4836 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  %0 = load i64, i64* %size.addr, align 8, !dbg !4843
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4844
  %or = or i32 %1, 256, !dbg !4845
  %call = call i8* @kvmalloc(i64 %0, i32 %or) #6, !dbg !4846
  ret i8* %call, !dbg !4847
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__ab_c_size(i64 %a, i64 %b, i64 %c) #0 !dbg !4848 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  %__a3 = alloca i64, align 8
  %__b4 = alloca i64, align 8
  %__d5 = alloca i64*, align 8
  %tmp10 = alloca i8, align 1
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !4852, metadata !DIExpression()), !dbg !4853
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store i64 %c, i64* %c.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %c.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4858, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4860, metadata !DIExpression()), !dbg !4863
  %0 = load i64, i64* %a.addr, align 8, !dbg !4863
  store i64 %0, i64* %__a, align 8, !dbg !4863
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4864, metadata !DIExpression()), !dbg !4863
  %1 = load i64, i64* %b.addr, align 8, !dbg !4863
  store i64 %1, i64* %__b, align 8, !dbg !4863
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4865, metadata !DIExpression()), !dbg !4863
  store i64* %bytes, i64** %__d, align 8, !dbg !4863
  %cmp = icmp eq i64* %__a, %__b, !dbg !4863
  %conv = zext i1 %cmp to i32, !dbg !4863
  %2 = load i64*, i64** %__d, align 8, !dbg !4863
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4863
  %conv2 = zext i1 %cmp1 to i32, !dbg !4863
  %3 = load i64, i64* %__a, align 8, !dbg !4863
  %4 = load i64, i64* %__b, align 8, !dbg !4863
  %5 = load i64*, i64** %__d, align 8, !dbg !4863
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4863
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4863
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4863
  store i64 %8, i64* %5, align 8, !dbg !4863
  %frombool = zext i1 %7 to i8, !dbg !4863
  store i8 %frombool, i8* %tmp, align 1, !dbg !4863
  %9 = load i8, i8* %tmp, align 1, !dbg !4863
  %tobool = trunc i8 %9 to i1, !dbg !4863
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #6, !dbg !4867
  br i1 %call, label %if.then, label %if.end, !dbg !4868

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval, align 8, !dbg !4869
  br label %return, !dbg !4869

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__a3, metadata !4870, metadata !DIExpression()), !dbg !4873
  %10 = load i64, i64* %bytes, align 8, !dbg !4873
  store i64 %10, i64* %__a3, align 8, !dbg !4873
  call void @llvm.dbg.declare(metadata i64* %__b4, metadata !4874, metadata !DIExpression()), !dbg !4873
  %11 = load i64, i64* %c.addr, align 8, !dbg !4873
  store i64 %11, i64* %__b4, align 8, !dbg !4873
  call void @llvm.dbg.declare(metadata i64** %__d5, metadata !4875, metadata !DIExpression()), !dbg !4873
  store i64* %bytes, i64** %__d5, align 8, !dbg !4873
  %cmp6 = icmp eq i64* %__a3, %__b4, !dbg !4873
  %conv7 = zext i1 %cmp6 to i32, !dbg !4873
  %12 = load i64*, i64** %__d5, align 8, !dbg !4873
  %cmp8 = icmp eq i64* %__a3, %12, !dbg !4873
  %conv9 = zext i1 %cmp8 to i32, !dbg !4873
  %13 = load i64, i64* %__a3, align 8, !dbg !4873
  %14 = load i64, i64* %__b4, align 8, !dbg !4873
  %15 = load i64*, i64** %__d5, align 8, !dbg !4873
  %16 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %13, i64 %14), !dbg !4873
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4873
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4873
  store i64 %18, i64* %15, align 8, !dbg !4873
  %frombool11 = zext i1 %17 to i8, !dbg !4873
  store i8 %frombool11, i8* %tmp10, align 1, !dbg !4873
  %19 = load i8, i8* %tmp10, align 1, !dbg !4873
  %tobool12 = trunc i8 %19 to i1, !dbg !4873
  %call13 = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool12) #6, !dbg !4876
  br i1 %call13, label %if.then14, label %if.end15, !dbg !4877

if.then14:                                        ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !4878
  br label %return, !dbg !4878

if.end15:                                         ; preds = %if.end
  %20 = load i64, i64* %bytes, align 8, !dbg !4879
  store i64 %20, i64* %retval, align 8, !dbg !4880
  br label %return, !dbg !4880

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !4881
  ret i64 %21, !dbg !4881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh* %fh, i32 %type, i32 %id) #0 !dbg !4882 {
entry:
  %retval = alloca %struct.v4l2_subscribed_event*, align 8
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %type.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %sev = alloca %struct.v4l2_subscribed_event*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.v4l2_subscribed_event*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp13 = alloca %struct.v4l2_subscribed_event*, align 8
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %sev, metadata !4891, metadata !DIExpression()), !dbg !4892
  br label %do.body, !dbg !4893

do.body:                                          ; preds = %entry
  %0 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4894
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %0, i32 0, i32 1, !dbg !4894
  %1 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !4894
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %1, i32 0, i32 19, !dbg !4894
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %fh_lock, i32 0, i32 0, !dbg !4894
  %rlock = bitcast %union.anon.3* %2 to %struct.raw_spinlock*, !dbg !4894
  br label %do.end, !dbg !4894

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4896, metadata !DIExpression()), !dbg !4899
  %3 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4899
  %subscribed = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %3, i32 0, i32 6, !dbg !4899
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %subscribed, i32 0, i32 0, !dbg !4899
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4899
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !4899
  store i8* %5, i8** %__mptr, align 8, !dbg !4899
  br label %do.body1, !dbg !4899

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4900

do.end2:                                          ; preds = %do.body1
  %6 = load i8*, i8** %__mptr, align 8, !dbg !4899
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !4899
  %7 = bitcast i8* %add.ptr to %struct.v4l2_subscribed_event*, !dbg !4899
  store %struct.v4l2_subscribed_event* %7, %struct.v4l2_subscribed_event** %tmp, align 8, !dbg !4900
  %8 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %tmp, align 8, !dbg !4899
  store %struct.v4l2_subscribed_event* %8, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4902
  br label %for.cond, !dbg !4902

for.cond:                                         ; preds = %do.end12, %do.end2
  %9 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4903
  %list = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %9, i32 0, i32 0, !dbg !4903
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !4903
  %subscribed3 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %10, i32 0, i32 6, !dbg !4903
  %cmp = icmp eq %struct.list_head* %list, %subscribed3, !dbg !4903
  %lnot = xor i1 %cmp, true, !dbg !4903
  br i1 %lnot, label %for.body, label %for.end, !dbg !4902

for.body:                                         ; preds = %for.cond
  %11 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4905
  %type4 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %11, i32 0, i32 1, !dbg !4907
  %12 = load i32, i32* %type4, align 8, !dbg !4907
  %13 = load i32, i32* %type.addr, align 4, !dbg !4908
  %cmp5 = icmp eq i32 %12, %13, !dbg !4909
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !4910

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4911
  %id6 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %14, i32 0, i32 2, !dbg !4912
  %15 = load i32, i32* %id6, align 4, !dbg !4912
  %16 = load i32, i32* %id.addr, align 4, !dbg !4913
  %cmp7 = icmp eq i32 %15, %16, !dbg !4914
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4915

if.then:                                          ; preds = %land.lhs.true
  %17 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4916
  store %struct.v4l2_subscribed_event* %17, %struct.v4l2_subscribed_event** %retval, align 8, !dbg !4917
  br label %return, !dbg !4917

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4913

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !4918, metadata !DIExpression()), !dbg !4920
  %18 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4920
  %list9 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %18, i32 0, i32 0, !dbg !4920
  %next10 = getelementptr inbounds %struct.list_head, %struct.list_head* %list9, i32 0, i32 0, !dbg !4920
  %19 = load %struct.list_head*, %struct.list_head** %next10, align 8, !dbg !4920
  %20 = bitcast %struct.list_head* %19 to i8*, !dbg !4920
  store i8* %20, i8** %__mptr8, align 8, !dbg !4920
  br label %do.body11, !dbg !4920

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !4921

do.end12:                                         ; preds = %do.body11
  %21 = load i8*, i8** %__mptr8, align 8, !dbg !4920
  %add.ptr14 = getelementptr i8, i8* %21, i64 0, !dbg !4920
  %22 = bitcast i8* %add.ptr14 to %struct.v4l2_subscribed_event*, !dbg !4920
  store %struct.v4l2_subscribed_event* %22, %struct.v4l2_subscribed_event** %tmp13, align 8, !dbg !4921
  %23 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %tmp13, align 8, !dbg !4920
  store %struct.v4l2_subscribed_event* %23, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !4903
  br label %for.cond, !dbg !4903, !llvm.loop !4923

for.end:                                          ; preds = %for.cond
  store %struct.v4l2_subscribed_event* null, %struct.v4l2_subscribed_event** %retval, align 8, !dbg !4925
  br label %return, !dbg !4925

return:                                           ; preds = %for.end, %if.then
  %24 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %retval, align 8, !dbg !4926
  ret %struct.v4l2_subscribed_event* %24, !dbg !4926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4927 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4935
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4936
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4937
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4938
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4938
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #6, !dbg !4939
  ret void, !dbg !4940
}

; Function Attrs: noredzone
declare dso_local void @kvfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__v4l2_event_unsubscribe(%struct.v4l2_subscribed_event* %sev) #0 !dbg !4941 {
entry:
  %sev.addr = alloca %struct.v4l2_subscribed_event*, align 8
  %fh = alloca %struct.v4l2_fh*, align 8
  %i = alloca i32, align 4
  store %struct.v4l2_subscribed_event* %sev, %struct.v4l2_subscribed_event** %sev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %sev.addr, metadata !4942, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh, metadata !4944, metadata !DIExpression()), !dbg !4945
  %0 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !4946
  %fh1 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %0, i32 0, i32 4, !dbg !4947
  %1 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh1, align 8, !dbg !4947
  store %struct.v4l2_fh* %1, %struct.v4l2_fh** %fh, align 8, !dbg !4945
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4948, metadata !DIExpression()), !dbg !4949
  br label %do.body, !dbg !4950

do.body:                                          ; preds = %entry
  %2 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh, align 8, !dbg !4951
  %subscribe_lock = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %2, i32 0, i32 5, !dbg !4951
  br label %do.end, !dbg !4951

do.end:                                           ; preds = %do.body
  br label %do.body2, !dbg !4953

do.body2:                                         ; preds = %do.end
  %3 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh, align 8, !dbg !4954
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %3, i32 0, i32 1, !dbg !4954
  %4 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !4954
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %4, i32 0, i32 19, !dbg !4954
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %fh_lock, i32 0, i32 0, !dbg !4954
  %rlock = bitcast %union.anon.3* %5 to %struct.raw_spinlock*, !dbg !4954
  br label %do.end3, !dbg !4954

do.end3:                                          ; preds = %do.body2
  store i32 0, i32* %i, align 4, !dbg !4956
  br label %for.cond, !dbg !4958

for.cond:                                         ; preds = %for.inc, %do.end3
  %6 = load i32, i32* %i, align 4, !dbg !4959
  %7 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !4961
  %in_use = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %7, i32 0, i32 9, !dbg !4962
  %8 = load i32, i32* %in_use, align 8, !dbg !4962
  %cmp = icmp ult i32 %6, %8, !dbg !4963
  br i1 %cmp, label %for.body, label %for.end, !dbg !4964

for.body:                                         ; preds = %for.cond
  %9 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !4965
  %events = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %9, i32 0, i32 10, !dbg !4967
  %10 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !4968
  %11 = load i32, i32* %i, align 4, !dbg !4969
  %call = call i32 @sev_pos(%struct.v4l2_subscribed_event* %10, i32 %11) #6, !dbg !4970
  %idxprom = zext i32 %call to i64, !dbg !4965
  %arrayidx = getelementptr [0 x %struct.v4l2_kevent], [0 x %struct.v4l2_kevent]* %events, i64 0, i64 %idxprom, !dbg !4965
  %list = getelementptr inbounds %struct.v4l2_kevent, %struct.v4l2_kevent* %arrayidx, i32 0, i32 0, !dbg !4971
  call void @list_del(%struct.list_head* %list) #6, !dbg !4972
  %12 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh, align 8, !dbg !4973
  %navailable = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %12, i32 0, i32 8, !dbg !4974
  %13 = load i32, i32* %navailable, align 8, !dbg !4975
  %dec = add i32 %13, -1, !dbg !4975
  store i32 %dec, i32* %navailable, align 8, !dbg !4975
  br label %for.inc, !dbg !4976

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !4977
  %inc = add i32 %14, 1, !dbg !4977
  store i32 %inc, i32* %i, align 4, !dbg !4977
  br label %for.cond, !dbg !4978, !llvm.loop !4979

for.end:                                          ; preds = %for.cond
  %15 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !4981
  %list4 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %15, i32 0, i32 0, !dbg !4982
  call void @list_del(%struct.list_head* %list4) #6, !dbg !4983
  ret void, !dbg !4984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @v4l2_event_unsubscribe_all(%struct.v4l2_fh* %fh) #0 !dbg !4985 {
entry:
  %lock.addr.i35 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i35, metadata !4140, metadata !DIExpression()), !dbg !4988
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4126, metadata !DIExpression()), !dbg !4996
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4135, metadata !DIExpression()), !dbg !4998
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %sub = alloca %struct.v4l2_event_subscription, align 4
  %sev = alloca %struct.v4l2_subscribed_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp24 = alloca %struct.v4l2_subscribed_event*, align 8
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata %struct.v4l2_event_subscription* %sub, metadata !5001, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %sev, metadata !5003, metadata !DIExpression()), !dbg !5004
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5005, metadata !DIExpression()), !dbg !5006
  br label %do.body, !dbg !5007

do.body:                                          ; preds = %do.cond, %entry
  store %struct.v4l2_subscribed_event* null, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5008
  br label %do.body1, !dbg !5009

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !5010

do.body2:                                         ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5011, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5014, metadata !DIExpression()), !dbg !5013
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5013
  %conv = zext i1 %cmp to i32, !dbg !5013
  store i32 1, i32* %tmp, align 4, !dbg !5013
  %0 = load i32, i32* %tmp, align 4, !dbg !5013
  br label %do.body3, !dbg !5015

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5016

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5017

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5019, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5023, metadata !DIExpression()), !dbg !5022
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5022
  %conv9 = zext i1 %cmp8 to i32, !dbg !5022
  store i32 1, i32* %tmp10, align 4, !dbg !5022
  %1 = load i32, i32* %tmp10, align 4, !dbg !5022
  %call = call i64 @arch_local_irq_save() #6, !dbg !5024
  store i64 %call, i64* %flags, align 8, !dbg !5024
  br label %do.end, !dbg !5024

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5017

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5016

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5025, !srcloc !5026
  br label %do.body13, !dbg !5025

do.body13:                                        ; preds = %do.body12
  %2 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5027
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %2, i32 0, i32 1, !dbg !5027
  %3 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !5027
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %3, i32 0, i32 19, !dbg !5027
  store %struct.spinlock* %fh_lock, %struct.spinlock** %lock.addr.i35, align 8
  %4 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i35, align 8, !dbg !5028
  %5 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %4, i32 0, i32 0, !dbg !5029
  %rlock.i36 = bitcast %union.anon.3* %5 to %struct.raw_spinlock*, !dbg !5029
  br label %do.end15, !dbg !5027

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5025

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5016

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5015

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5010

do.end19:                                         ; preds = %do.end18
  %6 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5030
  %subscribed = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %6, i32 0, i32 6, !dbg !5032
  %call20 = call i32 @list_empty(%struct.list_head* %subscribed) #6, !dbg !5033
  %tobool = icmp ne i32 %call20, 0, !dbg !5033
  br i1 %tobool, label %if.end, label %if.then, !dbg !5034

if.then:                                          ; preds = %do.end19
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5035, metadata !DIExpression()), !dbg !5038
  %7 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5038
  %subscribed21 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %7, i32 0, i32 6, !dbg !5038
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %subscribed21, i32 0, i32 0, !dbg !5038
  %8 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5038
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !5038
  store i8* %9, i8** %__mptr, align 8, !dbg !5038
  br label %do.body22, !dbg !5038

do.body22:                                        ; preds = %if.then
  br label %do.end23, !dbg !5039

do.end23:                                         ; preds = %do.body22
  %10 = load i8*, i8** %__mptr, align 8, !dbg !5038
  %add.ptr = getelementptr i8, i8* %10, i64 0, !dbg !5038
  %11 = bitcast i8* %add.ptr to %struct.v4l2_subscribed_event*, !dbg !5038
  store %struct.v4l2_subscribed_event* %11, %struct.v4l2_subscribed_event** %tmp24, align 8, !dbg !5039
  %12 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %tmp24, align 8, !dbg !5038
  store %struct.v4l2_subscribed_event* %12, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5041
  %13 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5042
  %type = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %13, i32 0, i32 1, !dbg !5043
  %14 = load i32, i32* %type, align 8, !dbg !5043
  %type25 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %sub, i32 0, i32 0, !dbg !5044
  store i32 %14, i32* %type25, align 4, !dbg !5045
  %15 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5046
  %id = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %15, i32 0, i32 2, !dbg !5047
  %16 = load i32, i32* %id, align 4, !dbg !5047
  %id26 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %sub, i32 0, i32 1, !dbg !5048
  store i32 %16, i32* %id26, align 4, !dbg !5049
  br label %if.end, !dbg !5050

if.end:                                           ; preds = %do.end23, %do.end19
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5051
  %vdev27 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %17, i32 0, i32 1, !dbg !5052
  %18 = load %struct.video_device*, %struct.video_device** %vdev27, align 8, !dbg !5052
  %fh_lock28 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 19, !dbg !5053
  %19 = load i64, i64* %flags, align 8, !dbg !5054
  store %struct.spinlock* %fh_lock28, %struct.spinlock** %lock.addr.i, align 8
  store i64 %19, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !5055
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !5055
  store i32 1, i32* %tmp.i, align 4, !dbg !5055
  %20 = load i32, i32* %tmp.i, align 4, !dbg !5055
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !5056
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !5056
  store i32 1, i32* %tmp8.i, align 4, !dbg !5056
  %21 = load i32, i32* %tmp8.i, align 4, !dbg !5056
  %22 = load i64, i64* %flags.addr.i, align 8, !dbg !5057
  call void @arch_local_irq_restore(i64 %22) #7, !dbg !5057
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5058, !srcloc !4206
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5059
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5059
  %rlock.i = bitcast %union.anon.3* %24 to %struct.raw_spinlock*, !dbg !5059
  %25 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5060
  %tobool29 = icmp ne %struct.v4l2_subscribed_event* %25, null, !dbg !5060
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !5062

if.then30:                                        ; preds = %if.end
  %26 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5063
  %call31 = call i32 @v4l2_event_unsubscribe(%struct.v4l2_fh* %26, %struct.v4l2_event_subscription* %sub) #6, !dbg !5064
  br label %if.end32, !dbg !5064

if.end32:                                         ; preds = %if.then30, %if.end
  br label %do.cond, !dbg !5065

do.cond:                                          ; preds = %if.end32
  %27 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5066
  %tobool33 = icmp ne %struct.v4l2_subscribed_event* %27, null, !dbg !5065
  br i1 %tobool33, label %do.body, label %do.end34, !dbg !5065, !llvm.loop !5067

do.end34:                                         ; preds = %do.cond
  ret void, !dbg !5069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5070 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5075, metadata !DIExpression()), !dbg !5076
  br label %do.body, !dbg !5077

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5079

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5077
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5077
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5077
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5079
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5077
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5081
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5082
  %conv = zext i1 %cmp to i32, !dbg !5082
  ret i32 %conv, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_event_unsubscribe(%struct.v4l2_fh* %fh, %struct.v4l2_event_subscription* %sub) #0 !dbg !5084 {
entry:
  %lock.addr.i37 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i37, metadata !4126, metadata !DIExpression()), !dbg !5087
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4135, metadata !DIExpression()), !dbg !5089
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4140, metadata !DIExpression()), !dbg !5090
  %retval = alloca i32, align 4
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %sub.addr = alloca %struct.v4l2_event_subscription*, align 8
  %sev = alloca %struct.v4l2_subscribed_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  store %struct.v4l2_event_subscription* %sub, %struct.v4l2_event_subscription** %sub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event_subscription** %sub.addr, metadata !5099, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %sev, metadata !5101, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5103, metadata !DIExpression()), !dbg !5104
  %0 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !5105
  %type = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %0, i32 0, i32 0, !dbg !5107
  %1 = load i32, i32* %type, align 4, !dbg !5107
  %cmp = icmp eq i32 %1, 0, !dbg !5108
  br i1 %cmp, label %if.then, label %if.end, !dbg !5109

if.then:                                          ; preds = %entry
  %2 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5110
  call void @v4l2_event_unsubscribe_all(%struct.v4l2_fh* %2) #6, !dbg !5112
  store i32 0, i32* %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

if.end:                                           ; preds = %entry
  %3 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5114
  %subscribe_lock = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %3, i32 0, i32 5, !dbg !5115
  call void @mutex_lock(%struct.mutex* %subscribe_lock) #6, !dbg !5116
  br label %do.body, !dbg !5117

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5118

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5119, metadata !DIExpression()), !dbg !5121
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5122, metadata !DIExpression()), !dbg !5121
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !5121
  %conv = zext i1 %cmp2 to i32, !dbg !5121
  store i32 1, i32* %tmp, align 4, !dbg !5121
  %4 = load i32, i32* %tmp, align 4, !dbg !5121
  br label %do.body3, !dbg !5123

do.body3:                                         ; preds = %do.body1
  br label %do.body4, !dbg !5124

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5125

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5127, metadata !DIExpression()), !dbg !5130
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5131, metadata !DIExpression()), !dbg !5130
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5130
  %conv9 = zext i1 %cmp8 to i32, !dbg !5130
  store i32 1, i32* %tmp10, align 4, !dbg !5130
  %5 = load i32, i32* %tmp10, align 4, !dbg !5130
  %call = call i64 @arch_local_irq_save() #6, !dbg !5132
  store i64 %call, i64* %flags, align 8, !dbg !5132
  br label %do.end, !dbg !5132

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5125

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5124

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5133, !srcloc !5134
  br label %do.body13, !dbg !5133

do.body13:                                        ; preds = %do.body12
  %6 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5135
  %vdev = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %6, i32 0, i32 1, !dbg !5135
  %7 = load %struct.video_device*, %struct.video_device** %vdev, align 8, !dbg !5135
  %fh_lock = getelementptr inbounds %struct.video_device, %struct.video_device* %7, i32 0, i32 19, !dbg !5135
  store %struct.spinlock* %fh_lock, %struct.spinlock** %lock.addr.i, align 8
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5136
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !5137
  %rlock.i = bitcast %union.anon.3* %9 to %struct.raw_spinlock*, !dbg !5137
  br label %do.end15, !dbg !5135

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !5133

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5124

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5123

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5118

do.end19:                                         ; preds = %do.end18
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5138
  %11 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !5139
  %type20 = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %11, i32 0, i32 0, !dbg !5140
  %12 = load i32, i32* %type20, align 4, !dbg !5140
  %13 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !5141
  %id = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %13, i32 0, i32 1, !dbg !5142
  %14 = load i32, i32* %id, align 4, !dbg !5142
  %call21 = call %struct.v4l2_subscribed_event* @v4l2_event_subscribed(%struct.v4l2_fh* %10, i32 %12, i32 %14) #6, !dbg !5143
  store %struct.v4l2_subscribed_event* %call21, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5144
  %15 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5145
  %cmp22 = icmp ne %struct.v4l2_subscribed_event* %15, null, !dbg !5147
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5148

if.then24:                                        ; preds = %do.end19
  %16 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5149
  call void @__v4l2_event_unsubscribe(%struct.v4l2_subscribed_event* %16) #6, !dbg !5150
  br label %if.end25, !dbg !5150

if.end25:                                         ; preds = %if.then24, %do.end19
  %17 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5151
  %vdev26 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %17, i32 0, i32 1, !dbg !5152
  %18 = load %struct.video_device*, %struct.video_device** %vdev26, align 8, !dbg !5152
  %fh_lock27 = getelementptr inbounds %struct.video_device, %struct.video_device* %18, i32 0, i32 19, !dbg !5153
  %19 = load i64, i64* %flags, align 8, !dbg !5154
  store %struct.spinlock* %fh_lock27, %struct.spinlock** %lock.addr.i37, align 8
  store i64 %19, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !271, metadata !4191, metadata !DIExpression()) #5, !dbg !5155
  call void @llvm.dbg.declare(metadata !271, metadata !4195, metadata !DIExpression()) #5, !dbg !5155
  store i32 1, i32* %tmp.i, align 4, !dbg !5155
  %20 = load i32, i32* %tmp.i, align 4, !dbg !5155
  call void @llvm.dbg.declare(metadata !271, metadata !4196, metadata !DIExpression()) #5, !dbg !5156
  call void @llvm.dbg.declare(metadata !271, metadata !4202, metadata !DIExpression()) #5, !dbg !5156
  store i32 1, i32* %tmp8.i, align 4, !dbg !5156
  %21 = load i32, i32* %tmp8.i, align 4, !dbg !5156
  %22 = load i64, i64* %flags.addr.i, align 8, !dbg !5157
  call void @arch_local_irq_restore(i64 %22) #7, !dbg !5157
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5158, !srcloc !4206
  %23 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i37, align 8, !dbg !5159
  %24 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %23, i32 0, i32 0, !dbg !5159
  %rlock.i38 = bitcast %union.anon.3* %24 to %struct.raw_spinlock*, !dbg !5159
  %25 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5160
  %tobool = icmp ne %struct.v4l2_subscribed_event* %25, null, !dbg !5160
  br i1 %tobool, label %land.lhs.true, label %if.end35, !dbg !5162

land.lhs.true:                                    ; preds = %if.end25
  %26 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5163
  %ops = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %26, i32 0, i32 6, !dbg !5164
  %27 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops, align 8, !dbg !5164
  %tobool28 = icmp ne %struct.v4l2_subscribed_event_ops* %27, null, !dbg !5163
  br i1 %tobool28, label %land.lhs.true29, label %if.end35, !dbg !5165

land.lhs.true29:                                  ; preds = %land.lhs.true
  %28 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5166
  %ops30 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %28, i32 0, i32 6, !dbg !5167
  %29 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops30, align 8, !dbg !5167
  %del = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %29, i32 0, i32 1, !dbg !5168
  %30 = load void (%struct.v4l2_subscribed_event*)*, void (%struct.v4l2_subscribed_event*)** %del, align 8, !dbg !5168
  %tobool31 = icmp ne void (%struct.v4l2_subscribed_event*)* %30, null, !dbg !5166
  br i1 %tobool31, label %if.then32, label %if.end35, !dbg !5169

if.then32:                                        ; preds = %land.lhs.true29
  %31 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5170
  %ops33 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %31, i32 0, i32 6, !dbg !5171
  %32 = load %struct.v4l2_subscribed_event_ops*, %struct.v4l2_subscribed_event_ops** %ops33, align 8, !dbg !5171
  %del34 = getelementptr inbounds %struct.v4l2_subscribed_event_ops, %struct.v4l2_subscribed_event_ops* %32, i32 0, i32 1, !dbg !5172
  %33 = load void (%struct.v4l2_subscribed_event*)*, void (%struct.v4l2_subscribed_event*)** %del34, align 8, !dbg !5172
  %34 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5173
  call void %33(%struct.v4l2_subscribed_event* %34) #6, !dbg !5170
  br label %if.end35, !dbg !5170

if.end35:                                         ; preds = %if.then32, %land.lhs.true29, %land.lhs.true, %if.end25
  %35 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5174
  %subscribe_lock36 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %35, i32 0, i32 5, !dbg !5175
  call void @mutex_unlock(%struct.mutex* %subscribe_lock36) #6, !dbg !5176
  %36 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev, align 8, !dbg !5177
  %37 = bitcast %struct.v4l2_subscribed_event* %36 to i8*, !dbg !5177
  call void @kvfree(i8* %37) #6, !dbg !5178
  store i32 0, i32* %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

return:                                           ; preds = %if.end35, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !5180
  ret i32 %38, !dbg !5180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_event_subdev_unsubscribe(%struct.v4l2_subdev* %sd, %struct.v4l2_fh* %fh, %struct.v4l2_event_subscription* %sub) #0 !dbg !5181 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %sub.addr = alloca %struct.v4l2_event_subscription*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  store %struct.v4l2_event_subscription* %sub, %struct.v4l2_event_subscription** %sub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event_subscription** %sub.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  %0 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5193
  %1 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !5194
  %call = call i32 @v4l2_event_unsubscribe(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #6, !dbg !5195
  ret i32 %call, !dbg !5196
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_src_change_event_subscribe(%struct.v4l2_fh* %fh, %struct.v4l2_event_subscription* %sub) #0 !dbg !5197 {
entry:
  %retval = alloca i32, align 4
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %sub.addr = alloca %struct.v4l2_event_subscription*, align 8
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  store %struct.v4l2_event_subscription* %sub, %struct.v4l2_event_subscription** %sub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event_subscription** %sub.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  %0 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !5202
  %type = getelementptr inbounds %struct.v4l2_event_subscription, %struct.v4l2_event_subscription* %0, i32 0, i32 0, !dbg !5204
  %1 = load i32, i32* %type, align 4, !dbg !5204
  %cmp = icmp eq i32 %1, 5, !dbg !5205
  br i1 %cmp, label %if.then, label %if.end, !dbg !5206

if.then:                                          ; preds = %entry
  %2 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5207
  %3 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !5208
  %call = call i32 @v4l2_event_subscribe(%struct.v4l2_fh* %2, %struct.v4l2_event_subscription* %3, i32 0, %struct.v4l2_subscribed_event_ops* @v4l2_event_src_ch_ops) #6, !dbg !5209
  store i32 %call, i32* %retval, align 4, !dbg !5210
  br label %return, !dbg !5210

if.end:                                           ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5211
  br label %return, !dbg !5211

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5212
  ret i32 %4, !dbg !5212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @v4l2_src_change_event_subdev_subscribe(%struct.v4l2_subdev* %sd, %struct.v4l2_fh* %fh, %struct.v4l2_event_subscription* %sub) #0 !dbg !5213 {
entry:
  %sd.addr = alloca %struct.v4l2_subdev*, align 8
  %fh.addr = alloca %struct.v4l2_fh*, align 8
  %sub.addr = alloca %struct.v4l2_event_subscription*, align 8
  store %struct.v4l2_subdev* %sd, %struct.v4l2_subdev** %sd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subdev** %sd.addr, metadata !5214, metadata !DIExpression()), !dbg !5215
  store %struct.v4l2_fh* %fh, %struct.v4l2_fh** %fh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_fh** %fh.addr, metadata !5216, metadata !DIExpression()), !dbg !5217
  store %struct.v4l2_event_subscription* %sub, %struct.v4l2_event_subscription** %sub.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event_subscription** %sub.addr, metadata !5218, metadata !DIExpression()), !dbg !5219
  %0 = load %struct.v4l2_fh*, %struct.v4l2_fh** %fh.addr, align 8, !dbg !5220
  %1 = load %struct.v4l2_event_subscription*, %struct.v4l2_event_subscription** %sub.addr, align 8, !dbg !5221
  %call = call i32 @v4l2_src_change_event_subscribe(%struct.v4l2_fh* %0, %struct.v4l2_event_subscription* %1) #6, !dbg !5222
  ret i32 %call, !dbg !5223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5224 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5229
  call void @__list_del_entry(%struct.list_head* %0) #6, !dbg !5230
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5231
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5232
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5233
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5234
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5235
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5236
  ret void, !dbg !5237
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local { i64, i64 } @ns_to_timespec64(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sev_pos(%struct.v4l2_subscribed_event* %sev, i32 %idx) #0 !dbg !5238 {
entry:
  %sev.addr = alloca %struct.v4l2_subscribed_event*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.v4l2_subscribed_event* %sev, %struct.v4l2_subscribed_event** %sev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_subscribed_event** %sev.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  %0 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !5247
  %first = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %0, i32 0, i32 8, !dbg !5248
  %1 = load i32, i32* %first, align 4, !dbg !5248
  %2 = load i32, i32* %idx.addr, align 4, !dbg !5249
  %add = add i32 %2, %1, !dbg !5249
  store i32 %add, i32* %idx.addr, align 4, !dbg !5249
  %3 = load i32, i32* %idx.addr, align 4, !dbg !5250
  %4 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !5251
  %elems = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %4, i32 0, i32 7, !dbg !5252
  %5 = load i32, i32* %elems, align 8, !dbg !5252
  %cmp = icmp uge i32 %3, %5, !dbg !5253
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5250

cond.true:                                        ; preds = %entry
  %6 = load i32, i32* %idx.addr, align 4, !dbg !5254
  %7 = load %struct.v4l2_subscribed_event*, %struct.v4l2_subscribed_event** %sev.addr, align 8, !dbg !5255
  %elems1 = getelementptr inbounds %struct.v4l2_subscribed_event, %struct.v4l2_subscribed_event* %7, i32 0, i32 7, !dbg !5256
  %8 = load i32, i32* %elems1, align 8, !dbg !5256
  %sub = sub i32 %6, %8, !dbg !5257
  br label %cond.end, !dbg !5250

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %idx.addr, align 4, !dbg !5258
  br label %cond.end, !dbg !5250

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %9, %cond.false ], !dbg !5250
  ret i32 %cond, !dbg !5259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5260 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5263
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #6, !dbg !5265
  br i1 %call, label %if.end, label %if.then, !dbg !5266

if.then:                                          ; preds = %entry
  br label %return, !dbg !5267

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5268
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5269
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5269
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5270
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5271
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5271
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #6, !dbg !5272
  br label %return, !dbg !5273

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5273
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5274 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  ret i1 true, !dbg !5279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5280 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5285
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5286
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5287
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5288
  br label %do.body, !dbg !5289

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5290

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5292

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5290

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5294
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5294
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5294
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5294
  br label %do.end5, !dbg !5294

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5290

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5296
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ns(i64 %kt) #0 !dbg !5297 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !5301, metadata !DIExpression()), !dbg !5302
  %0 = load i64, i64* %kt.addr, align 8, !dbg !5303
  ret i64 %0, !dbg !5304
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5305 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5306, metadata !DIExpression()), !dbg !5308
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5309, metadata !DIExpression()), !dbg !5308
  %0 = load i64, i64* %__edi, align 8, !dbg !5308
  store i64 %0, i64* %__edi, align 8, !dbg !5308
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5310, metadata !DIExpression()), !dbg !5308
  %1 = load i64, i64* %__esi, align 8, !dbg !5308
  store i64 %1, i64* %__esi, align 8, !dbg !5308
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5311, metadata !DIExpression()), !dbg !5308
  %2 = load i64, i64* %__edx, align 8, !dbg !5308
  store i64 %2, i64* %__edx, align 8, !dbg !5308
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5312, metadata !DIExpression()), !dbg !5308
  %3 = load i64, i64* %__ecx, align 8, !dbg !5308
  store i64 %3, i64* %__ecx, align 8, !dbg !5308
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5313, metadata !DIExpression()), !dbg !5308
  %4 = load i64, i64* %__eax, align 8, !dbg !5308
  store i64 %4, i64* %__eax, align 8, !dbg !5308
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5308
  %6 = call i64 @llvm.read_register.i64(metadata !4022), !dbg !5314
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !5314, !srcloc !5317
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5314
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5314
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5314
  call void @llvm.write_register.i64(metadata !4022, i64 %asmresult1), !dbg !5314
  %8 = load i64, i64* %__eax, align 8, !dbg !5314
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5318, metadata !DIExpression()), !dbg !5320
  store i64 -1, i64* %__mask, align 8, !dbg !5320
  %9 = load i64, i64* %__mask, align 8, !dbg !5320
  store i64 %9, i64* %tmp, align 8, !dbg !5320
  %10 = load i64, i64* %tmp, align 8, !dbg !5320
  %and = and i64 %8, %10, !dbg !5314
  store i64 %and, i64* %__ret, align 8, !dbg !5314
  %11 = load i64, i64* %__ret, align 8, !dbg !5308
  store i64 %11, i64* %tmp2, align 8, !dbg !5321
  %12 = load i64, i64* %tmp2, align 8, !dbg !5308
  ret i64 %12, !dbg !5322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5323 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5324, metadata !DIExpression()), !dbg !5326
  %0 = load i64, i64* %__edi, align 8, !dbg !5326
  store i64 %0, i64* %__edi, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5327, metadata !DIExpression()), !dbg !5326
  %1 = load i64, i64* %__esi, align 8, !dbg !5326
  store i64 %1, i64* %__esi, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5328, metadata !DIExpression()), !dbg !5326
  %2 = load i64, i64* %__edx, align 8, !dbg !5326
  store i64 %2, i64* %__edx, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5329, metadata !DIExpression()), !dbg !5326
  %3 = load i64, i64* %__ecx, align 8, !dbg !5326
  store i64 %3, i64* %__ecx, align 8, !dbg !5326
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5330, metadata !DIExpression()), !dbg !5326
  %4 = load i64, i64* %__eax, align 8, !dbg !5326
  store i64 %4, i64* %__eax, align 8, !dbg !5326
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5326
  %6 = call i64 @llvm.read_register.i64(metadata !4022), !dbg !5326
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !5326, !srcloc !5331
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5326
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5326
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5326
  call void @llvm.write_register.i64(metadata !4022, i64 %asmresult1), !dbg !5326
  ret void, !dbg !5332
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5333 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5336, metadata !DIExpression()), !dbg !5337
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5338
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5339
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5340
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5340
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5341
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #6, !dbg !5342
  ret void, !dbg !5343
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5344 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5353
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5355
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5356
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #6, !dbg !5357
  br i1 %call, label %if.end, label %if.then, !dbg !5358

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5359

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5360
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5361
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5362
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5363
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5364
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5365
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5366
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5367
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5368
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5369
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5370
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5371
  br label %do.body, !dbg !5372

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5373

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5375

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5373

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5377
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5377
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5377
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5377
  br label %do.end7, !dbg !5377

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5373

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5380 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  ret i1 true, !dbg !5389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5390 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5395, metadata !DIExpression()), !dbg !5397
  %0 = load i64, i64* %__edi, align 8, !dbg !5397
  store i64 %0, i64* %__edi, align 8, !dbg !5397
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5398, metadata !DIExpression()), !dbg !5397
  %1 = load i64, i64* %__esi, align 8, !dbg !5397
  store i64 %1, i64* %__esi, align 8, !dbg !5397
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5399, metadata !DIExpression()), !dbg !5397
  %2 = load i64, i64* %__edx, align 8, !dbg !5397
  store i64 %2, i64* %__edx, align 8, !dbg !5397
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5400, metadata !DIExpression()), !dbg !5397
  %3 = load i64, i64* %__ecx, align 8, !dbg !5397
  store i64 %3, i64* %__ecx, align 8, !dbg !5397
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5401, metadata !DIExpression()), !dbg !5397
  %4 = load i64, i64* %__eax, align 8, !dbg !5397
  store i64 %4, i64* %__eax, align 8, !dbg !5397
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5397
  %6 = call i64 @llvm.read_register.i64(metadata !4022), !dbg !5397
  %7 = load i64, i64* %f.addr, align 8, !dbg !5397
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !5397, !srcloc !5402
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5397
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5397
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5397
  call void @llvm.write_register.i64(metadata !4022, i64 %asmresult1), !dbg !5397
  ret void, !dbg !5403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kvmalloc(i64 %size, i32 %flags) #0 !dbg !5404 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  %0 = load i64, i64* %size.addr, align 8, !dbg !5409
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5410
  %call = call i8* @kvmalloc_node(i64 %0, i32 %1, i32 -1) #6, !dbg !5411
  ret i8* %call, !dbg !5412
}

; Function Attrs: noredzone
declare dso_local i8* @kvmalloc_node(i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5413 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5418
  %tobool = trunc i8 %0 to i1, !dbg !5418
  %lnot = xor i1 %tobool, true, !dbg !5418
  %lnot1 = xor i1 %lnot, true, !dbg !5418
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5418
  %conv = sext i32 %lnot.ext to i64, !dbg !5418
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5418
  ret i1 %tobool2, !dbg !5419
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @v4l2_event_src_replace(%struct.v4l2_event* %old, %struct.v4l2_event* %new) #0 !dbg !5420 {
entry:
  %old.addr = alloca %struct.v4l2_event*, align 8
  %new.addr = alloca %struct.v4l2_event*, align 8
  %old_changes = alloca i32, align 4
  store %struct.v4l2_event* %old, %struct.v4l2_event** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %old.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  store %struct.v4l2_event* %new, %struct.v4l2_event** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %new.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  call void @llvm.dbg.declare(metadata i32* %old_changes, metadata !5425, metadata !DIExpression()), !dbg !5426
  %0 = load %struct.v4l2_event*, %struct.v4l2_event** %old.addr, align 8, !dbg !5427
  %u = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %0, i32 0, i32 1, !dbg !5428
  %src_change = bitcast %union.anon.70* %u to %struct.v4l2_event_src_change*, !dbg !5429
  %changes = getelementptr inbounds %struct.v4l2_event_src_change, %struct.v4l2_event_src_change* %src_change, i32 0, i32 0, !dbg !5430
  %1 = load i32, i32* %changes, align 8, !dbg !5430
  store i32 %1, i32* %old_changes, align 4, !dbg !5426
  %2 = load %struct.v4l2_event*, %struct.v4l2_event** %old.addr, align 8, !dbg !5431
  %u1 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %2, i32 0, i32 1, !dbg !5432
  %src_change2 = bitcast %union.anon.70* %u1 to %struct.v4l2_event_src_change*, !dbg !5433
  %3 = load %struct.v4l2_event*, %struct.v4l2_event** %new.addr, align 8, !dbg !5434
  %u3 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %3, i32 0, i32 1, !dbg !5435
  %src_change4 = bitcast %union.anon.70* %u3 to %struct.v4l2_event_src_change*, !dbg !5436
  %4 = bitcast %struct.v4l2_event_src_change* %src_change2 to i8*, !dbg !5436
  %5 = bitcast %struct.v4l2_event_src_change* %src_change4 to i8*, !dbg !5436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 4, i1 false), !dbg !5436
  %6 = load i32, i32* %old_changes, align 4, !dbg !5437
  %7 = load %struct.v4l2_event*, %struct.v4l2_event** %old.addr, align 8, !dbg !5438
  %u5 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %7, i32 0, i32 1, !dbg !5439
  %src_change6 = bitcast %union.anon.70* %u5 to %struct.v4l2_event_src_change*, !dbg !5440
  %changes7 = getelementptr inbounds %struct.v4l2_event_src_change, %struct.v4l2_event_src_change* %src_change6, i32 0, i32 0, !dbg !5441
  %8 = load i32, i32* %changes7, align 8, !dbg !5442
  %or = or i32 %8, %6, !dbg !5442
  store i32 %or, i32* %changes7, align 8, !dbg !5442
  ret void, !dbg !5443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @v4l2_event_src_merge(%struct.v4l2_event* %old, %struct.v4l2_event* %new) #0 !dbg !5444 {
entry:
  %old.addr = alloca %struct.v4l2_event*, align 8
  %new.addr = alloca %struct.v4l2_event*, align 8
  store %struct.v4l2_event* %old, %struct.v4l2_event** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %old.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  store %struct.v4l2_event* %new, %struct.v4l2_event** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.v4l2_event** %new.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  %0 = load %struct.v4l2_event*, %struct.v4l2_event** %old.addr, align 8, !dbg !5449
  %u = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %0, i32 0, i32 1, !dbg !5450
  %src_change = bitcast %union.anon.70* %u to %struct.v4l2_event_src_change*, !dbg !5451
  %changes = getelementptr inbounds %struct.v4l2_event_src_change, %struct.v4l2_event_src_change* %src_change, i32 0, i32 0, !dbg !5452
  %1 = load i32, i32* %changes, align 8, !dbg !5452
  %2 = load %struct.v4l2_event*, %struct.v4l2_event** %new.addr, align 8, !dbg !5453
  %u1 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %2, i32 0, i32 1, !dbg !5454
  %src_change2 = bitcast %union.anon.70* %u1 to %struct.v4l2_event_src_change*, !dbg !5455
  %changes3 = getelementptr inbounds %struct.v4l2_event_src_change, %struct.v4l2_event_src_change* %src_change2, i32 0, i32 0, !dbg !5456
  %3 = load i32, i32* %changes3, align 8, !dbg !5457
  %or = or i32 %3, %1, !dbg !5457
  store i32 %or, i32* %changes3, align 8, !dbg !5457
  ret void, !dbg !5458
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4022}
!llvm.module.flags = !{!4023, !4024, !4025, !4026}
!llvm.ident = !{!4027}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "v4l2_event_src_ch_ops", scope: !2, file: !3, line: 337, type: !3936, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !4021, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/v4l2-core/v4l2-event.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !18, !25, !31, !36, !42, !49, !55, !64, !72, !78, !84, !91, !99, !105, !115, !120, !128}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_entity_type", file: !6, line: 244, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/media/media-entity.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_BASE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_VIDEO_DEVICE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MEDIA_ENTITY_TYPE_V4L2_SUBDEV", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "media_pad_signal_type", file: !6, line: 171, baseType: !7, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "PAD_SIGNAL_DEFAULT", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PAD_SIGNAL_ANALOG", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PAD_SIGNAL_DV", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "PAD_SIGNAL_AUDIO", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !19, line: 15, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !26, line: 546, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !32, line: 65, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35}
!34 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !37, line: 16, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 59, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !50, line: 54, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !56, line: 296, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61, !62, !63}
!58 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!62 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!63 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !65, line: 9, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !73, line: 26, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !79, line: 44, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !85, line: 343, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !92, line: 524, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98}
!94 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !92, line: 502, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_type", file: !106, line: 35, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/media/v4l2-dev.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111, !112, !113, !114}
!108 = !DIEnumerator(name: "VFL_TYPE_VIDEO", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "VFL_TYPE_VBI", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "VFL_TYPE_RADIO", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "VFL_TYPE_SUBDEV", value: 3, isUnsigned: true)
!112 = !DIEnumerator(name: "VFL_TYPE_SDR", value: 4, isUnsigned: true)
!113 = !DIEnumerator(name: "VFL_TYPE_TOUCH", value: 5, isUnsigned: true)
!114 = !DIEnumerator(name: "VFL_TYPE_MAX", value: 6, isUnsigned: true)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vfl_devnode_direction", file: !106, line: 55, baseType: !7, size: 32, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "VFL_DIR_RX", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "VFL_DIR_TX", value: 1, isUnsigned: true)
!119 = !DIEnumerator(name: "VFL_DIR_M2M", value: 2, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_priority", file: !121, line: 406, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/uapi/linux/videodev2.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "V4L2_PRIORITY_UNSET", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "V4L2_PRIORITY_BACKGROUND", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "V4L2_PRIORITY_INTERACTIVE", value: 2, isUnsigned: true)
!126 = !DIEnumerator(name: "V4L2_PRIORITY_RECORD", value: 3, isUnsigned: true)
!127 = !DIEnumerator(name: "V4L2_PRIORITY_DEFAULT", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 10, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!133 = !{!134, !135, !180, !762, !3924, !4016, !4017, !172, !344, !4019}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_fh", file: !137, line: 42, size: 1024, elements: !138)
!137 = !DIFile(filename: "./include/media/v4l2-fh.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !146, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !136, file: !137, line: 43, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !141, line: 178, size: 128, elements: !142)
!141 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !141, line: 179, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !141, line: 179, baseType: !144, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !136, file: !137, line: 44, baseType: !147, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "video_device", file: !106, line: 263, size: 10624, elements: !149)
!149 = !{!150, !3845, !3852, !3853, !3870, !3871, !3872, !3873, !3876, !3877, !3880, !3883, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3901, !3905, !3909, !3911}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !148, file: !106, line: 266, baseType: !151, size: 1024)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity", file: !6, line: 290, size: 1024, elements: !152)
!152 = !{!153, !165, !169, !170, !171, !173, !177, !178, !179, !181, !191, !192, !3814, !3815, !3816, !3837}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !151, file: !6, line: 291, baseType: !154, size: 256)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_gobj", file: !6, line: 57, size: 256, elements: !155)
!155 = !{!156, !159, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "mdev", scope: !154, file: !6, line: 58, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DICompositeType(tag: DW_TAG_structure_type, name: "media_device", file: !6, line: 58, flags: DIFlagFwdDecl)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !154, file: !6, line: 59, baseType: !160, size: 32, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !161, line: 21, baseType: !162)
!161 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !163, line: 27, baseType: !7)
!163 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !154, file: !6, line: 60, baseType: !140, size: 128, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !6, line: 292, baseType: !166, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "obj_type", scope: !151, file: !6, line: 293, baseType: !5, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !151, file: !6, line: 294, baseType: !160, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !6, line: 295, baseType: !172, size: 64, offset: 384)
!172 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "num_pads", scope: !151, file: !6, line: 297, baseType: !174, size: 16, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !161, line: 19, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !163, line: 24, baseType: !176)
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_links", scope: !151, file: !6, line: 298, baseType: !174, size: 16, offset: 464)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "num_backlinks", scope: !151, file: !6, line: 299, baseType: !174, size: 16, offset: 480)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "internal_idx", scope: !151, file: !6, line: 300, baseType: !180, size: 32, offset: 512)
!180 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pads", scope: !151, file: !6, line: 302, baseType: !182, size: 64, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pad", file: !6, line: 189, size: 448, elements: !184)
!184 = !{!185, !186, !188, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !183, file: !6, line: 190, baseType: !154, size: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !183, file: !6, line: 191, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !183, file: !6, line: 192, baseType: !174, size: 16, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sig_type", scope: !183, file: !6, line: 193, baseType: !12, size: 32, offset: 352)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !6, line: 194, baseType: !172, size: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !151, file: !6, line: 303, baseType: !140, size: 128, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !151, file: !6, line: 305, baseType: !193, size: 64, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_operations", file: !6, line: 214, size: 192, elements: !196)
!196 = !{!197, !3776, !3782}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "get_fwnode_pad", scope: !195, file: !6, line: 215, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!180, !187, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !203, line: 29, size: 128, elements: !204)
!203 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !202, file: !203, line: 30, baseType: !7, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !202, file: !203, line: 31, baseType: !7, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !202, file: !203, line: 32, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !203, line: 17, size: 192, elements: !211)
!211 = !{!212, !214, !3775}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !210, file: !203, line: 18, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !210, file: !203, line: 19, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !203, line: 110, size: 1152, elements: !218)
!218 = !{!219, !223, !227, !233, !3723, !3727, !3731, !3736, !3740, !3741, !3745, !3749, !3753, !3764, !3765, !3766, !3767, !3771}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !217, file: !203, line: 111, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!213, !213}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !217, file: !203, line: 112, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !213}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !217, file: !203, line: 113, baseType: !228, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !208}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !141, line: 30, baseType: !232)
!232 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !217, file: !203, line: 114, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !208, !239}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !85, line: 461, size: 5568, elements: !242)
!242 = !{!243, !3383, !3385, !3388, !3389, !3440, !3513, !3514, !3515, !3516, !3517, !3526, !3631, !3644, !3647, !3648, !3652, !3654, !3655, !3656, !3660, !3666, !3667, !3670, !3674, !3675, !3676, !3677, !3678, !3679, !3711, !3712, !3713, !3716, !3719, !3720, !3721, !3722}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !241, file: !85, line: 462, baseType: !244, size: 512)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !245, line: 64, size: 512, elements: !246)
!245 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!246 = !{!247, !248, !249, !251, !311, !3233, !3373, !3378, !3379, !3380, !3381, !3382}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !245, line: 65, baseType: !166, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !244, file: !245, line: 66, baseType: !140, size: 128, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !244, file: !245, line: 67, baseType: !250, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !244, file: !245, line: 68, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !245, line: 192, size: 704, elements: !254)
!254 = !{!255, !256, !272, !273}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !253, file: !245, line: 193, baseType: !140, size: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !253, file: !245, line: 194, baseType: !257, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !258, line: 83, baseType: !259)
!258 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !258, line: 71, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !259, file: !258, line: 72, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !258, line: 72, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !262, file: !258, line: 73, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !258, line: 20, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !265, file: !258, line: 21, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !269, line: 25, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 25, elements: !271)
!271 = !{}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !253, file: !245, line: 195, baseType: !244, size: 512, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !253, file: !245, line: 196, baseType: !274, size: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !245, line: 156, size: 192, elements: !277)
!277 = !{!278, !283, !288}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !276, file: !245, line: 157, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!180, !252, !250}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !245, line: 158, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!166, !252, !250}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !276, file: !245, line: 159, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!180, !252, !250, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !245, line: 148, size: 20736, elements: !295)
!295 = !{!296, !301, !305, !306, !310}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !294, file: !245, line: 149, baseType: !297, size: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 192, elements: !299)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!299 = !{!300}
!300 = !DISubrange(count: 3)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !294, file: !245, line: 150, baseType: !302, size: 4096, offset: 192)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 4096, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !294, file: !245, line: 151, baseType: !180, size: 32, offset: 4288)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !294, file: !245, line: 152, baseType: !307, size: 16384, offset: 4320)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 16384, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !294, file: !245, line: 153, baseType: !180, size: 32, offset: 20704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !244, file: !245, line: 69, baseType: !312, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !245, line: 138, size: 448, elements: !314)
!314 = !{!315, !319, !347, !349, !3195, !3223, !3227}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !313, file: !245, line: 139, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !250}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !313, file: !245, line: 140, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !323, line: 230, size: 128, elements: !324)
!323 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !340}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !322, file: !323, line: 231, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !250, !334, !298}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !141, line: 60, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !331, line: 73, baseType: !332)
!331 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !331, line: 15, baseType: !333)
!333 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !323, line: 30, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !323, line: 31, baseType: !166, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !335, file: !323, line: 32, baseType: !339, size: 16, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !141, line: 19, baseType: !176)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !322, file: !323, line: 232, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!329, !250, !334, !166, !344}
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 55, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !331, line: 72, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !331, line: 16, baseType: !172)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !313, file: !245, line: 141, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !313, file: !245, line: 142, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !323, line: 84, size: 320, elements: !354)
!354 = !{!355, !356, !360, !3192, !3193}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !323, line: 85, baseType: !166, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !353, file: !323, line: 86, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!339, !250, !334, !180}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !353, file: !323, line: 88, baseType: !361, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!339, !250, !364, !180}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !323, line: 168, size: 448, elements: !366)
!366 = !{!367, !368, !369, !370, !3187, !3188}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !365, file: !323, line: 169, baseType: !335, size: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !365, file: !323, line: 170, baseType: !344, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !365, file: !323, line: 171, baseType: !134, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !365, file: !323, line: 172, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!329, !374, !250, !364, !298, !547, !344}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !56, line: 916, size: 1856, align: 32, elements: !376)
!376 = !{!377, !395, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3170, !3171, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !375, file: !56, line: 920, baseType: !378, size: 128)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !56, line: 917, size: 128, elements: !379)
!379 = !{!380, !386}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !378, file: !56, line: 918, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !382, line: 58, size: 64, elements: !383)
!382 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !382, line: 59, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !378, file: !56, line: 919, baseType: !387, size: 128, align: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !141, line: 216, size: 128, align: 64, elements: !388)
!388 = !{!389, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !387, file: !141, line: 217, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !387, file: !141, line: 218, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !390}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !375, file: !56, line: 921, baseType: !396, size: 128, offset: 128)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !397, line: 8, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !403}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !396, file: !397, line: 9, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !402, line: 18, flags: DIFlagFwdDecl)
!402 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !396, file: !397, line: 10, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !402, line: 89, size: 1536, elements: !406)
!406 = !{!407, !408, !418, !426, !427, !446, !3121, !3123, !3135, !3136, !3137, !3138, !3139, !3144, !3145, !3146}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !405, file: !402, line: 91, baseType: !7, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !405, file: !402, line: 92, baseType: !409, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !410, line: 277, baseType: !411)
!410 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !410, line: 277, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !411, file: !410, line: 277, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !410, line: 70, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !410, line: 65, size: 32, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !415, file: !410, line: 66, baseType: !7, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !405, file: !402, line: 93, baseType: !419, size: 128, offset: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !420, line: 38, size: 128, elements: !421)
!420 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !424}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !420, line: 39, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !419, file: !420, line: 39, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !405, file: !402, line: 94, baseType: !404, size: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !405, file: !402, line: 95, baseType: !428, size: 128, offset: 256)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !402, line: 47, size: 128, elements: !429)
!429 = !{!430, !442}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !402, line: 48, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !402, line: 48, size: 64, elements: !432)
!432 = !{!433, !438}
!433 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !402, line: 49, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !402, line: 49, size: 64, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !434, file: !402, line: 50, baseType: !160, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !434, file: !402, line: 50, baseType: !160, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !431, file: !402, line: 52, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !161, line: 23, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !163, line: 31, baseType: !441)
!441 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !428, file: !402, line: 54, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !445)
!445 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !405, file: !402, line: 96, baseType: !447, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !56, line: 610, size: 4224, elements: !449)
!449 = !{!450, !451, !452, !460, !467, !468, !614, !2815, !2816, !2817, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !3089, !3097, !3098, !3099, !3117, !3118, !3119, !3120}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !448, file: !56, line: 611, baseType: !339, size: 16)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !448, file: !56, line: 612, baseType: !176, size: 16, offset: 16)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !448, file: !56, line: 613, baseType: !453, size: 32, offset: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !454, line: 23, baseType: !455)
!454 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 21, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !455, file: !454, line: 22, baseType: !458, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !141, line: 32, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !331, line: 49, baseType: !7)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !448, file: !56, line: 614, baseType: !461, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !454, line: 28, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !454, line: 26, size: 32, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !462, file: !454, line: 27, baseType: !465, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !141, line: 33, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !331, line: 50, baseType: !7)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !448, file: !56, line: 615, baseType: !7, size: 32, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !448, file: !56, line: 622, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !56, line: 1864, size: 1536, align: 512, elements: !472)
!472 = !{!473, !477, !490, !494, !500, !504, !508, !512, !516, !520, !524, !525, !531, !535, !561, !590, !594, !600, !605, !609, !610}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !471, file: !56, line: 1865, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!404, !447, !404, !7}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !471, file: !56, line: 1866, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!166, !404, !447, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !483, line: 10, size: 128, elements: !484)
!483 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!484 = !{!485, !489}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !482, file: !483, line: 11, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !134}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !482, file: !483, line: 12, baseType: !134, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !471, file: !56, line: 1867, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!180, !447, !180}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !471, file: !56, line: 1868, baseType: !495, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !447, !180}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !56, line: 581, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !471, file: !56, line: 1870, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!180, !404, !298, !180}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !471, file: !56, line: 1872, baseType: !505, size: 64, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!180, !447, !404, !339, !231}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !471, file: !56, line: 1873, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!180, !404, !447, !404}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !471, file: !56, line: 1874, baseType: !513, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!180, !447, !404}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !471, file: !56, line: 1875, baseType: !517, size: 64, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!180, !447, !404, !166}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !471, file: !56, line: 1876, baseType: !521, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!180, !447, !404, !339}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !471, file: !56, line: 1877, baseType: !513, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !471, file: !56, line: 1878, baseType: !526, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!180, !447, !404, !339, !529}
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !141, line: 16, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !141, line: 13, baseType: !160)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !471, file: !56, line: 1879, baseType: !532, size: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!180, !447, !404, !447, !404, !7}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !471, file: !56, line: 1881, baseType: !536, size: 64, offset: 832)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!180, !404, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !56, line: 219, size: 640, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !550, !558, !559, !560}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !540, file: !56, line: 220, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !540, file: !56, line: 221, baseType: !339, size: 16, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !540, file: !56, line: 222, baseType: !453, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !540, file: !56, line: 223, baseType: !461, size: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !540, file: !56, line: 224, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !141, line: 46, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !331, line: 88, baseType: !549)
!549 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !540, file: !56, line: 225, baseType: !551, size: 128, offset: 192)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !552, line: 13, size: 128, elements: !553)
!552 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !557}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !551, file: !552, line: 14, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !552, line: 8, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !163, line: 30, baseType: !549)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !551, file: !552, line: 15, baseType: !333, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !540, file: !56, line: 226, baseType: !551, size: 128, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !540, file: !56, line: 227, baseType: !551, size: 128, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !540, file: !56, line: 234, baseType: !374, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !471, file: !56, line: 1882, baseType: !562, size: 64, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!180, !565, !567, !160, !7}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !569, line: 22, size: 1152, elements: !570)
!569 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!570 = !{!571, !572, !573, !574, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !568, file: !569, line: 23, baseType: !160, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !568, file: !569, line: 24, baseType: !339, size: 16, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !568, file: !569, line: 25, baseType: !7, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !568, file: !569, line: 26, baseType: !575, size: 32, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 104, baseType: !160)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !568, file: !569, line: 27, baseType: !439, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !568, file: !569, line: 28, baseType: !439, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !568, file: !569, line: 37, baseType: !439, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !568, file: !569, line: 38, baseType: !529, size: 32, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !568, file: !569, line: 39, baseType: !529, size: 32, offset: 352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !568, file: !569, line: 40, baseType: !453, size: 32, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !568, file: !569, line: 41, baseType: !461, size: 32, offset: 416)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !568, file: !569, line: 42, baseType: !547, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !568, file: !569, line: 43, baseType: !551, size: 128, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !568, file: !569, line: 44, baseType: !551, size: 128, offset: 640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !568, file: !569, line: 45, baseType: !551, size: 128, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !568, file: !569, line: 46, baseType: !551, size: 128, offset: 896)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !568, file: !569, line: 47, baseType: !439, size: 64, offset: 1024)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !568, file: !569, line: 48, baseType: !439, size: 64, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !471, file: !56, line: 1883, baseType: !591, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!329, !404, !298, !344}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !471, file: !56, line: 1884, baseType: !595, size: 64, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!180, !447, !598, !439, !439}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !56, line: 50, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !471, file: !56, line: 1886, baseType: !601, size: 64, offset: 1088)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!180, !447, !604, !180}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !471, file: !56, line: 1887, baseType: !606, size: 64, offset: 1152)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!180, !447, !404, !374, !7, !339}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !471, file: !56, line: 1890, baseType: !521, size: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !471, file: !56, line: 1891, baseType: !611, size: 64, offset: 1280)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!180, !447, !498, !180}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !448, file: !56, line: 623, baseType: !615, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !56, line: 1416, size: 9472, elements: !617)
!617 = !{!618, !619, !620, !621, !622, !623, !672, !2422, !2504, !2587, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2603, !2607, !2608, !2611, !2612, !2615, !2616, !2617, !2658, !2685, !2686, !2687, !2688, !2689, !2690, !2693, !2695, !2702, !2703, !2705, !2706, !2707, !2766, !2767, !2782, !2783, !2784, !2785, !2786, !2789, !2790, !2791, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !616, file: !56, line: 1417, baseType: !140, size: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !616, file: !56, line: 1418, baseType: !529, size: 32, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !616, file: !56, line: 1419, baseType: !445, size: 8, offset: 160)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !616, file: !56, line: 1420, baseType: !172, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !616, file: !56, line: 1421, baseType: !547, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !616, file: !56, line: 1422, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !56, line: 2228, size: 576, elements: !626)
!626 = !{!627, !628, !629, !635, !639, !643, !647, !651, !652, !662, !665, !666, !667, !669, !670, !671}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !625, file: !56, line: 2229, baseType: !166, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !625, file: !56, line: 2230, baseType: !180, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !625, file: !56, line: 2238, baseType: !630, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!180, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !56, line: 69, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !625, file: !56, line: 2239, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !56, line: 70, flags: DIFlagFwdDecl)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !625, file: !56, line: 2240, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!404, !624, !180, !166, !134}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !625, file: !56, line: 2242, baseType: !644, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !615}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !625, file: !56, line: 2243, baseType: !648, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !650, line: 76, flags: DIFlagFwdDecl)
!650 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !625, file: !56, line: 2244, baseType: !624, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !625, file: !56, line: 2245, baseType: !653, size: 64, offset: 512)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !141, line: 182, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !653, file: !141, line: 183, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !141, line: 186, size: 128, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !141, line: 187, baseType: !656, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !657, file: !141, line: 187, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !625, file: !56, line: 2247, baseType: !663, offset: 576)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !664, line: 187, elements: !271)
!664 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !625, file: !56, line: 2248, baseType: !663, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !625, file: !56, line: 2249, baseType: !663, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !625, file: !56, line: 2250, baseType: !668, offset: 576)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, elements: !299)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !625, file: !56, line: 2252, baseType: !663, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !625, file: !56, line: 2253, baseType: !663, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !625, file: !56, line: 2254, baseType: !663, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !616, file: !56, line: 1423, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !56, line: 1935, size: 1472, elements: !676)
!676 = !{!677, !681, !685, !686, !690, !696, !700, !701, !702, !706, !710, !711, !712, !713, !719, !724, !725, !732, !733, !734, !735, !2406, !2421}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !675, file: !56, line: 1936, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!447, !615}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !675, file: !56, line: 1937, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !447}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !675, file: !56, line: 1938, baseType: !682, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !675, file: !56, line: 1940, baseType: !687, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !447, !180}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !675, file: !56, line: 1941, baseType: !691, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!180, !447, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !56, line: 289, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !675, file: !56, line: 1942, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!180, !447}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !675, file: !56, line: 1943, baseType: !682, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !675, file: !56, line: 1944, baseType: !644, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !675, file: !56, line: 1945, baseType: !703, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!180, !615, !180}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !675, file: !56, line: 1946, baseType: !707, size: 64, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!180, !615}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !675, file: !56, line: 1947, baseType: !707, size: 64, offset: 640)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !675, file: !56, line: 1948, baseType: !707, size: 64, offset: 704)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !675, file: !56, line: 1949, baseType: !707, size: 64, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !675, file: !56, line: 1950, baseType: !714, size: 64, offset: 832)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!180, !404, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !56, line: 57, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !675, file: !56, line: 1951, baseType: !720, size: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!180, !615, !723, !298}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !675, file: !56, line: 1952, baseType: !644, size: 64, offset: 960)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !675, file: !56, line: 1954, baseType: !726, size: 64, offset: 1024)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!180, !729, !404}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !731, line: 539, flags: DIFlagFwdDecl)
!731 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!732 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !675, file: !56, line: 1955, baseType: !726, size: 64, offset: 1088)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !675, file: !56, line: 1956, baseType: !726, size: 64, offset: 1152)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !675, file: !56, line: 1957, baseType: !726, size: 64, offset: 1216)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !675, file: !56, line: 1963, baseType: !736, size: 64, offset: 1280)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!180, !615, !739, !762}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !741, line: 68, size: 512, align: 128, elements: !742)
!741 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744, !2398, !2405}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !741, line: 69, baseType: !172, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !741, line: 77, baseType: !745, size: 320, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !741, line: 77, size: 320, elements: !746)
!746 = !{!747, !933, !938, !966, !974, !980, !2329, !2397}
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 78, baseType: !748, size: 320)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 78, size: 320, elements: !749)
!749 = !{!750, !751, !931, !932}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !748, file: !741, line: 84, baseType: !140, size: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !748, file: !741, line: 86, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !56, line: 451, size: 1216, align: 64, elements: !754)
!754 = !{!755, !756, !764, !765, !770, !785, !801, !802, !803, !804, !924, !925, !928, !929, !930}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !753, file: !56, line: 452, baseType: !447, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !753, file: !56, line: 453, baseType: !757, size: 128, offset: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !758, line: 292, size: 128, elements: !759)
!758 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !761, !763}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !757, file: !758, line: 293, baseType: !257)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !757, file: !758, line: 295, baseType: !762, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !141, line: 148, baseType: !7)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !757, file: !758, line: 296, baseType: !134, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !753, file: !56, line: 454, baseType: !762, size: 32, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !753, file: !56, line: 455, baseType: !766, size: 32, offset: 224)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !141, line: 168, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 166, size: 32, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !767, file: !141, line: 167, baseType: !180, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !753, file: !56, line: 460, baseType: !771, size: 128, offset: 256)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !772, line: 125, size: 128, elements: !773)
!772 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!773 = !{!774, !784}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !771, file: !772, line: 126, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !772, line: 31, size: 64, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !775, file: !772, line: 32, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !772, line: 24, size: 192, align: 64, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !779, file: !772, line: 25, baseType: !172, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !779, file: !772, line: 26, baseType: !778, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !779, file: !772, line: 27, baseType: !778, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !771, file: !772, line: 127, baseType: !778, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !753, file: !56, line: 461, baseType: !786, size: 256, offset: 384)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !787, line: 35, size: 256, elements: !788)
!787 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!788 = !{!789, !797, !798, !800}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !786, file: !787, line: 36, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !791, line: 13, baseType: !792)
!791 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !141, line: 175, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 173, size: 64, elements: !794)
!794 = !{!795}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !793, file: !141, line: 174, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !161, line: 22, baseType: !556)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !786, file: !787, line: 42, baseType: !790, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !786, file: !787, line: 46, baseType: !799, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !258, line: 29, baseType: !265)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !786, file: !787, line: 47, baseType: !140, size: 128, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !753, file: !56, line: 462, baseType: !172, size: 64, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !753, file: !56, line: 463, baseType: !172, size: 64, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !753, file: !56, line: 464, baseType: !172, size: 64, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !753, file: !56, line: 465, baseType: !805, size: 64, offset: 832)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !56, line: 367, size: 1408, elements: !808)
!808 = !{!809, !813, !817, !821, !825, !829, !835, !841, !845, !850, !854, !858, !862, !888, !892, !898, !899, !900, !904, !909, !913, !920}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !807, file: !56, line: 368, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!180, !739, !694}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !807, file: !56, line: 369, baseType: !814, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!180, !374, !739}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !807, file: !56, line: 372, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!180, !752, !694}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !807, file: !56, line: 375, baseType: !822, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!180, !739}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !807, file: !56, line: 381, baseType: !826, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!180, !374, !752, !144, !7}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !807, file: !56, line: 383, baseType: !830, size: 64, offset: 320)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !56, line: 290, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !807, file: !56, line: 385, baseType: !836, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!180, !374, !752, !547, !7, !7, !839, !840}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !807, file: !56, line: 388, baseType: !842, size: 64, offset: 448)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!180, !374, !752, !547, !7, !7, !739, !134}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !807, file: !56, line: 393, baseType: !846, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!849, !752, !849}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !141, line: 125, baseType: !439)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !807, file: !56, line: 394, baseType: !851, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !739, !7, !7}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !807, file: !56, line: 395, baseType: !855, size: 64, offset: 640)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!180, !739, !762}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !807, file: !56, line: 396, baseType: !859, size: 64, offset: 704)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !739}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !807, file: !56, line: 397, baseType: !863, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!329, !866, !886}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !56, line: 320, size: 384, elements: !868)
!868 = !{!869, !870, !871, !875, !876, !877, !878, !879}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !867, file: !56, line: 321, baseType: !374, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !867, file: !56, line: 326, baseType: !547, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !867, file: !56, line: 327, baseType: !872, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !866, !333, !333}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !867, file: !56, line: 328, baseType: !134, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !867, file: !56, line: 329, baseType: !180, size: 32, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !867, file: !56, line: 330, baseType: !174, size: 16, offset: 288)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !867, file: !56, line: 331, baseType: !174, size: 16, offset: 304)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !56, line: 332, baseType: !880, size: 64, offset: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !56, line: 332, size: 64, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !880, file: !56, line: 333, baseType: !7, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !880, file: !56, line: 334, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !56, line: 334, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !56, line: 64, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !807, file: !56, line: 402, baseType: !889, size: 64, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!180, !752, !739, !739, !18}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !807, file: !56, line: 404, baseType: !893, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!231, !739, !896}
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !897, line: 305, baseType: !7)
!897 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!898 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !807, file: !56, line: 405, baseType: !859, size: 64, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !807, file: !56, line: 406, baseType: !822, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !807, file: !56, line: 407, baseType: !901, size: 64, offset: 1088)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!180, !739, !172, !172}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !807, file: !56, line: 409, baseType: !905, size: 64, offset: 1152)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !739, !908, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !807, file: !56, line: 410, baseType: !910, size: 64, offset: 1216)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!180, !752, !739}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !807, file: !56, line: 413, baseType: !914, size: 64, offset: 1280)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!180, !917, !374, !919}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !56, line: 61, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !807, file: !56, line: 415, baseType: !921, size: 64, offset: 1344)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !374}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !56, line: 466, baseType: !172, size: 64, offset: 896)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !753, file: !56, line: 467, baseType: !926, size: 32, offset: 960)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !927, line: 8, baseType: !160)
!927 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !753, file: !56, line: 468, baseType: !257, offset: 992)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !753, file: !56, line: 469, baseType: !140, size: 128, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !753, file: !56, line: 470, baseType: !134, size: 64, offset: 1152)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !748, file: !741, line: 87, baseType: !172, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !748, file: !741, line: 94, baseType: !172, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 96, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 96, size: 64, elements: !935)
!935 = !{!936}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !934, file: !741, line: 101, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !141, line: 143, baseType: !439)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 103, baseType: !939, size: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 103, size: 320, elements: !940)
!940 = !{!941, !951, !954, !955}
!941 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !741, line: 104, baseType: !942, size: 128)
!942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !741, line: 104, size: 128, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !942, file: !741, line: 105, baseType: !140, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !741, line: 106, baseType: !946, size: 128)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !741, line: 106, size: 128, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !946, file: !741, line: 107, baseType: !739, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !946, file: !741, line: 109, baseType: !180, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !946, file: !741, line: 110, baseType: !180, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !939, file: !741, line: 117, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !741, line: 117, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !939, file: !741, line: 119, baseType: !134, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !741, line: 120, baseType: !956, size: 64, offset: 256)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !741, line: 120, size: 64, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !956, file: !741, line: 121, baseType: !134, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !956, file: !741, line: 122, baseType: !172, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !956, file: !741, line: 123, baseType: !961, size: 32)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !956, file: !741, line: 123, size: 32, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !961, file: !741, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !961, file: !741, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !961, file: !741, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 130, baseType: !967, size: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 130, size: 192, elements: !968)
!968 = !{!969, !970, !971, !972, !973}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !967, file: !741, line: 131, baseType: !172, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !967, file: !741, line: 134, baseType: !445, size: 8, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !967, file: !741, line: 135, baseType: !445, size: 8, offset: 72)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !967, file: !741, line: 136, baseType: !766, size: 32, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !967, file: !741, line: 137, baseType: !7, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 139, baseType: !975, size: 256)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 139, size: 256, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !975, file: !741, line: 140, baseType: !172, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !975, file: !741, line: 141, baseType: !766, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !975, file: !741, line: 143, baseType: !140, size: 128, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 145, baseType: !981, size: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 145, size: 256, elements: !982)
!982 = !{!983, !984, !986, !987, !2328}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !981, file: !741, line: 146, baseType: !172, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !981, file: !741, line: 147, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !731, line: 509, baseType: !739)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !981, file: !741, line: 148, baseType: !172, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !741, line: 149, baseType: !988, size: 64, offset: 192)
!988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !741, line: 149, size: 64, elements: !989)
!989 = !{!990, !2327}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !988, file: !741, line: 150, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !741, line: 388, size: 7296, elements: !993)
!993 = !{!994, !2323}
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !741, line: 389, baseType: !995, size: 7296)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !741, line: 389, size: 7296, elements: !996)
!996 = !{!997, !1115, !1116, !1117, !1121, !1122, !1123, !1124, !1125, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1166, !1174, !1177, !1207, !1208, !2307, !2308, !2311, !2312, !2313, !2316, !2317, !2318, !2321, !2322}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !995, file: !741, line: 390, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !741, line: 305, size: 1472, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1015, !1016, !1021, !1022, !1025, !1109, !1110, !1111, !1112, !1113}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !999, file: !741, line: 308, baseType: !172, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !999, file: !741, line: 309, baseType: !172, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !999, file: !741, line: 313, baseType: !998, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !999, file: !741, line: 313, baseType: !998, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !999, file: !741, line: 315, baseType: !779, size: 192, align: 64, offset: 256)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !999, file: !741, line: 323, baseType: !172, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !999, file: !741, line: 327, baseType: !991, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !999, file: !741, line: 333, baseType: !1009, size: 64, offset: 576)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !731, line: 284, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !731, line: 284, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1010, file: !731, line: 284, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1014, line: 19, baseType: !172)
!1014 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !999, file: !741, line: 334, baseType: !172, size: 64, offset: 640)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !999, file: !741, line: 343, baseType: !1017, size: 256, offset: 704)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !741, line: 340, size: 256, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1017, file: !741, line: 341, baseType: !779, size: 192, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1017, file: !741, line: 342, baseType: !172, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !999, file: !741, line: 351, baseType: !140, size: 128, offset: 960)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !999, file: !741, line: 353, baseType: !1023, size: 64, offset: 1088)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !741, line: 353, flags: DIFlagFwdDecl)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !999, file: !741, line: 356, baseType: !1026, size: 64, offset: 1152)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !26, line: 557, size: 832, elements: !1029)
!1029 = !{!1030, !1034, !1035, !1039, !1043, !1083, !1087, !1091, !1095, !1096, !1097, !1101, !1105}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1028, file: !26, line: 558, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !998}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1028, file: !26, line: 559, baseType: !1031, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1028, file: !26, line: 560, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!180, !998, !172}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1028, file: !26, line: 561, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!180, !998}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1028, file: !26, line: 562, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !741, line: 682, baseType: !7)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !26, line: 508, size: 768, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1063, !1070, !1076, !1077, !1078, !1080, !1082}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1049, file: !26, line: 509, baseType: !998, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1049, file: !26, line: 510, baseType: !7, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1049, file: !26, line: 511, baseType: !762, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1049, file: !26, line: 512, baseType: !172, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1049, file: !26, line: 513, baseType: !172, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1049, file: !26, line: 514, baseType: !1057, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !731, line: 385, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 385, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1059, file: !731, line: 385, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1014, line: 15, baseType: !172)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1049, file: !26, line: 516, baseType: !1064, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !731, line: 359, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 359, size: 64, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1066, file: !731, line: 359, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1014, line: 16, baseType: !172)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1049, file: !26, line: 519, baseType: !1071, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1014, line: 21, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1014, line: 21, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1072, file: !1014, line: 21, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1014, line: 14, baseType: !172)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1049, file: !26, line: 521, baseType: !739, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1049, file: !26, line: 522, baseType: !739, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1049, file: !26, line: 528, baseType: !1079, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1049, file: !26, line: 532, baseType: !1081, size: 64, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1049, file: !26, line: 536, baseType: !985, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1028, file: !26, line: 563, baseType: !1084, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!1047, !1048, !25}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1028, file: !26, line: 565, baseType: !1088, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !1048, !172, !172}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1028, file: !26, line: 567, baseType: !1092, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!172, !998}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1028, file: !26, line: 571, baseType: !1044, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1028, file: !26, line: 574, baseType: !1044, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1028, file: !26, line: 579, baseType: !1098, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!180, !998, !172, !134, !180, !180}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1028, file: !26, line: 585, baseType: !1102, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!166, !998}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1028, file: !26, line: 615, baseType: !1106, size: 64, offset: 768)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!739, !998, !172}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !999, file: !741, line: 359, baseType: !172, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !999, file: !741, line: 361, baseType: !374, size: 64, offset: 1280)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !999, file: !741, line: 362, baseType: !134, size: 64, offset: 1344)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !999, file: !741, line: 365, baseType: !790, size: 64, offset: 1408)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !999, file: !741, line: 373, baseType: !1114, offset: 1472)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !741, line: 296, elements: !271)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !995, file: !741, line: 391, baseType: !775, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !995, file: !741, line: 392, baseType: !439, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !995, file: !741, line: 394, baseType: !1118, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!172, !374, !172, !172, !172, !172}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !995, file: !741, line: 398, baseType: !172, size: 64, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !995, file: !741, line: 399, baseType: !172, size: 64, offset: 320)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !995, file: !741, line: 405, baseType: !172, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !995, file: !741, line: 406, baseType: !172, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !995, file: !741, line: 407, baseType: !1126, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !731, line: 286, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !731, line: 286, size: 64, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1128, file: !731, line: 286, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1014, line: 18, baseType: !172)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !995, file: !741, line: 416, baseType: !766, size: 32, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !995, file: !741, line: 428, baseType: !766, size: 32, offset: 608)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !995, file: !741, line: 437, baseType: !766, size: 32, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !995, file: !741, line: 447, baseType: !766, size: 32, offset: 672)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !995, file: !741, line: 450, baseType: !790, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !995, file: !741, line: 452, baseType: !180, size: 32, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !995, file: !741, line: 454, baseType: !257, offset: 800)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !995, file: !741, line: 457, baseType: !786, size: 256, offset: 832)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !995, file: !741, line: 459, baseType: !140, size: 128, offset: 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !995, file: !741, line: 466, baseType: !172, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !995, file: !741, line: 467, baseType: !172, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !995, file: !741, line: 469, baseType: !172, size: 64, offset: 1344)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !995, file: !741, line: 470, baseType: !172, size: 64, offset: 1408)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !995, file: !741, line: 471, baseType: !792, size: 64, offset: 1472)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !995, file: !741, line: 472, baseType: !172, size: 64, offset: 1536)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !995, file: !741, line: 473, baseType: !172, size: 64, offset: 1600)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !995, file: !741, line: 474, baseType: !172, size: 64, offset: 1664)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !995, file: !741, line: 475, baseType: !172, size: 64, offset: 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !995, file: !741, line: 477, baseType: !257, offset: 1792)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !995, file: !741, line: 478, baseType: !172, size: 64, offset: 1792)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !995, file: !741, line: 478, baseType: !172, size: 64, offset: 1856)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !995, file: !741, line: 478, baseType: !172, size: 64, offset: 1920)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !995, file: !741, line: 478, baseType: !172, size: 64, offset: 1984)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !995, file: !741, line: 479, baseType: !172, size: 64, offset: 2048)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !995, file: !741, line: 479, baseType: !172, size: 64, offset: 2112)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !995, file: !741, line: 479, baseType: !172, size: 64, offset: 2176)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !995, file: !741, line: 480, baseType: !172, size: 64, offset: 2240)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !995, file: !741, line: 480, baseType: !172, size: 64, offset: 2304)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !995, file: !741, line: 480, baseType: !172, size: 64, offset: 2368)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !995, file: !741, line: 480, baseType: !172, size: 64, offset: 2432)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !995, file: !741, line: 482, baseType: !1163, size: 2816, offset: 2496)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 2816, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 44)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !995, file: !741, line: 488, baseType: !1167, size: 256, offset: 5312)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1168, line: 60, size: 256, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1167, file: !1168, line: 61, baseType: !1171, size: 256)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 256, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 4)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !995, file: !741, line: 490, baseType: !1175, size: 64, offset: 5568)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !741, line: 490, flags: DIFlagFwdDecl)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !995, file: !741, line: 493, baseType: !1178, size: 896, offset: 5632)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1179, line: 53, baseType: !1180)
!1179 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1179, line: 13, size: 896, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1188, !1189, !1196, !1197, !1201, !1202, !1203}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1180, file: !1179, line: 18, baseType: !439, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1180, file: !1179, line: 28, baseType: !792, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1180, file: !1179, line: 31, baseType: !786, size: 256, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1180, file: !1179, line: 32, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1179, line: 32, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1180, file: !1179, line: 37, baseType: !176, size: 16, offset: 448)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1180, file: !1179, line: 40, baseType: !1190, size: 192, offset: 512)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1191, line: 53, size: 192, elements: !1192)
!1191 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1190, file: !1191, line: 54, baseType: !790, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1190, file: !1191, line: 55, baseType: !257, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1190, file: !1191, line: 59, baseType: !140, size: 128, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1180, file: !1179, line: 41, baseType: !134, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1180, file: !1179, line: 42, baseType: !1198, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1179, line: 42, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1180, file: !1179, line: 44, baseType: !766, size: 32, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1180, file: !1179, line: 50, baseType: !174, size: 16, offset: 864)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1180, file: !1179, line: 51, baseType: !1204, size: 16, offset: 880)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !161, line: 18, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !163, line: 23, baseType: !1206)
!1206 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !741, line: 495, baseType: !172, size: 64, offset: 6528)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !995, file: !741, line: 497, baseType: !1209, size: 64, offset: 6592)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !741, line: 381, size: 384, elements: !1211)
!1211 = !{!1212, !1213, !2306}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1210, file: !741, line: 382, baseType: !766, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1210, file: !741, line: 383, baseType: !1214, size: 128, offset: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !741, line: 376, size: 128, elements: !1215)
!1215 = !{!1216, !2304}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1214, file: !741, line: 377, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1219, line: 640, size: 48640, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1227, !1229, !1230, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1247, !1265, !1276, !1361, !1362, !1363, !1374, !1375, !1377, !1378, !1379, !1380, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1464, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1502, !1504, !1505, !1506, !1518, !1519, !1520, !1521, !1522, !1523, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1547, !1552, !1736, !1737, !1738, !1739, !1743, !1746, !1749, !1752, !1755, !1758, !1859, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1905, !1906, !1907, !1908, !1909, !1914, !1915, !1916, !1919, !1920, !1923, !1926, !1929, !1932, !1975, !1978, !1979, !2058, !2059, !2062, !2063, !2066, !2067, !2068, !2072, !2073, !2074, !2087, !2088, !2089, !2099, !2104, !2107, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1218, file: !1219, line: 646, baseType: !1222, size: 128)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1223, line: 56, size: 128, elements: !1224)
!1223 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !{!1225, !1226}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1222, file: !1223, line: 57, baseType: !172, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1222, file: !1223, line: 58, baseType: !160, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1218, file: !1219, line: 649, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !333)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1218, file: !1219, line: 657, baseType: !134, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1218, file: !1219, line: 658, baseType: !1231, size: 32, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1232, line: 113, baseType: !1233)
!1232 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1232, line: 111, size: 32, elements: !1234)
!1234 = !{!1235}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1233, file: !1232, line: 112, baseType: !766, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 660, baseType: !7, size: 32, offset: 288)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1218, file: !1219, line: 661, baseType: !7, size: 32, offset: 320)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1218, file: !1219, line: 684, baseType: !180, size: 32, offset: 352)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1218, file: !1219, line: 686, baseType: !180, size: 32, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1218, file: !1219, line: 687, baseType: !180, size: 32, offset: 416)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1218, file: !1219, line: 688, baseType: !180, size: 32, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1218, file: !1219, line: 689, baseType: !7, size: 32, offset: 480)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1218, file: !1219, line: 691, baseType: !1244, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1219, line: 691, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1218, file: !1219, line: 692, baseType: !1248, size: 832, offset: 576)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1219, line: 451, size: 832, elements: !1249)
!1249 = !{!1250, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1248, file: !1219, line: 453, baseType: !1251, size: 128)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1219, line: 325, size: 128, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1251, file: !1219, line: 326, baseType: !172, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1251, file: !1219, line: 327, baseType: !160, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1248, file: !1219, line: 454, baseType: !779, size: 192, align: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1248, file: !1219, line: 455, baseType: !140, size: 128, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1248, file: !1219, line: 456, baseType: !7, size: 32, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1248, file: !1219, line: 458, baseType: !439, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1248, file: !1219, line: 459, baseType: !439, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1248, file: !1219, line: 460, baseType: !439, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1248, file: !1219, line: 461, baseType: !439, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1248, file: !1219, line: 463, baseType: !439, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1248, file: !1219, line: 465, baseType: !1264, offset: 832)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1219, line: 415, elements: !271)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1218, file: !1219, line: 693, baseType: !1266, size: 384, offset: 1408)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1219, line: 489, size: 384, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1266, file: !1219, line: 490, baseType: !140, size: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1266, file: !1219, line: 491, baseType: !172, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1266, file: !1219, line: 492, baseType: !172, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1266, file: !1219, line: 493, baseType: !7, size: 32, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1266, file: !1219, line: 494, baseType: !176, size: 16, offset: 288)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1266, file: !1219, line: 495, baseType: !176, size: 16, offset: 304)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1266, file: !1219, line: 497, baseType: !1275, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1218, file: !1219, line: 697, baseType: !1277, size: 1792, offset: 1792)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1219, line: 507, size: 1792, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1358, !1359}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1277, file: !1219, line: 508, baseType: !779, size: 192, align: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1277, file: !1219, line: 515, baseType: !439, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1277, file: !1219, line: 516, baseType: !439, size: 64, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1277, file: !1219, line: 517, baseType: !439, size: 64, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1277, file: !1219, line: 518, baseType: !439, size: 64, offset: 384)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1277, file: !1219, line: 519, baseType: !439, size: 64, offset: 448)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1277, file: !1219, line: 526, baseType: !796, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1277, file: !1219, line: 527, baseType: !439, size: 64, offset: 576)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1219, line: 528, baseType: !7, size: 32, offset: 640)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1277, file: !1219, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1277, file: !1219, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1277, file: !1219, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1277, file: !1219, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1277, file: !1219, line: 563, baseType: !1293, size: 512, offset: 704)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !32, line: 118, size: 512, elements: !1294)
!1294 = !{!1295, !1303, !1304, !1309, !1352, !1355, !1356, !1357}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1293, file: !32, line: 119, baseType: !1296, size: 256)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1297, line: 9, size: 256, elements: !1298)
!1297 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !{!1299, !1300}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1296, file: !1297, line: 10, baseType: !779, size: 192, align: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1296, file: !1297, line: 11, baseType: !1301, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1302, line: 29, baseType: !796)
!1302 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1293, file: !32, line: 120, baseType: !1301, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1293, file: !32, line: 121, baseType: !1305, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!31, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1293, file: !32, line: 122, baseType: !1310, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !32, line: 159, size: 512, align: 512, elements: !1312)
!1312 = !{!1313, !1333, !1334, !1337, !1342, !1343, !1347, !1351}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1311, file: !32, line: 160, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !32, line: 214, size: 4608, align: 512, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1315, file: !32, line: 215, baseType: !799)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1315, file: !32, line: 216, baseType: !7, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1315, file: !32, line: 217, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1315, file: !32, line: 218, baseType: !7, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1315, file: !32, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1315, file: !32, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1315, file: !32, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1315, file: !32, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1315, file: !32, line: 233, baseType: !1301, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1315, file: !32, line: 234, baseType: !1308, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1315, file: !32, line: 235, baseType: !1301, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1315, file: !32, line: 236, baseType: !1308, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1315, file: !32, line: 237, baseType: !1330, size: 4096, offset: 512)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 4096, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 8)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1311, file: !32, line: 161, baseType: !7, size: 32, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1311, file: !32, line: 162, baseType: !1335, size: 32, offset: 96)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !141, line: 27, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !331, line: 96, baseType: !180)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1311, file: !32, line: 163, baseType: !1338, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !410, line: 276, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !410, line: 276, size: 32, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1339, file: !410, line: 276, baseType: !414, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1311, file: !32, line: 164, baseType: !1308, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1311, file: !32, line: 165, baseType: !1344, size: 128, offset: 256)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1297, line: 14, size: 128, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1344, file: !1297, line: 15, baseType: !771, size: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1311, file: !32, line: 166, baseType: !1348, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!1301}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1311, file: !32, line: 167, baseType: !1301, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1293, file: !32, line: 123, baseType: !1353, size: 8, offset: 448)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !161, line: 17, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !163, line: 21, baseType: !445)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1293, file: !32, line: 124, baseType: !1353, size: 8, offset: 456)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1293, file: !32, line: 125, baseType: !1353, size: 8, offset: 464)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1293, file: !32, line: 126, baseType: !1353, size: 8, offset: 472)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1277, file: !1219, line: 572, baseType: !1293, size: 512, offset: 1216)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1277, file: !1219, line: 580, baseType: !1360, size: 64, offset: 1728)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1218, file: !1219, line: 721, baseType: !7, size: 32, offset: 3584)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1218, file: !1219, line: 722, baseType: !180, size: 32, offset: 3616)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1218, file: !1219, line: 723, baseType: !1364, size: 64, offset: 3648)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1367, line: 17, baseType: !1368)
!1367 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1367, line: 17, size: 64, elements: !1369)
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1368, file: !1367, line: 17, baseType: !1371, size: 64)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 1)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1218, file: !1219, line: 724, baseType: !1366, size: 64, offset: 3712)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1218, file: !1219, line: 749, baseType: !1376, offset: 3776)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1219, line: 290, elements: !271)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1218, file: !1219, line: 751, baseType: !140, size: 128, offset: 3776)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1218, file: !1219, line: 757, baseType: !991, size: 64, offset: 3904)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1218, file: !1219, line: 758, baseType: !991, size: 64, offset: 3968)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1218, file: !1219, line: 761, baseType: !1381, size: 320, offset: 4032)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1168, line: 34, size: 320, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1381, file: !1168, line: 35, baseType: !439, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1381, file: !1168, line: 36, baseType: !1385, size: 256, offset: 64)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !998, size: 256, elements: !1172)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1218, file: !1219, line: 766, baseType: !180, size: 32, offset: 4352)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1218, file: !1219, line: 767, baseType: !180, size: 32, offset: 4384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1218, file: !1219, line: 768, baseType: !180, size: 32, offset: 4416)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1218, file: !1219, line: 770, baseType: !180, size: 32, offset: 4448)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1218, file: !1219, line: 772, baseType: !172, size: 64, offset: 4480)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1218, file: !1219, line: 775, baseType: !7, size: 32, offset: 4544)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1218, file: !1219, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1218, file: !1219, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1218, file: !1219, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1218, file: !1219, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1218, file: !1219, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1218, file: !1219, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1218, file: !1219, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1218, file: !1219, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1218, file: !1219, line: 831, baseType: !172, size: 64, offset: 4672)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1218, file: !1219, line: 833, baseType: !1402, size: 384, offset: 4736)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !37, line: 25, size: 384, elements: !1403)
!1403 = !{!1404, !1409}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1402, file: !37, line: 26, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!333, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !37, line: 27, baseType: !1410, size: 320, offset: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !37, line: 27, size: 320, elements: !1411)
!1411 = !{!1412, !1422, !1449}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1410, file: !37, line: 36, baseType: !1413, size: 320)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !37, line: 29, size: 320, elements: !1414)
!1414 = !{!1415, !1417, !1418, !1419, !1420, !1421}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1413, file: !37, line: 30, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1413, file: !37, line: 31, baseType: !160, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1413, file: !37, line: 32, baseType: !160, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1413, file: !37, line: 33, baseType: !160, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1413, file: !37, line: 34, baseType: !439, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1413, file: !37, line: 35, baseType: !1416, size: 64, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1410, file: !37, line: 46, baseType: !1423, size: 192)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !37, line: 38, size: 192, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1448}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1423, file: !37, line: 39, baseType: !1335, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1423, file: !37, line: 40, baseType: !36, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !37, line: 41, baseType: !1428, size: 64, offset: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !37, line: 41, size: 64, elements: !1429)
!1429 = !{!1430, !1438}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1428, file: !37, line: 42, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1433, line: 7, size: 128, elements: !1434)
!1433 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !{!1435, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1432, file: !1433, line: 8, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !331, line: 93, baseType: !549)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1432, file: !1433, line: 9, baseType: !549, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1428, file: !37, line: 43, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1441, line: 7, size: 64, elements: !1442)
!1441 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1447}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1440, file: !1441, line: 8, baseType: !1444, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1441, line: 5, baseType: !1445)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !161, line: 20, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !163, line: 26, baseType: !180)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1440, file: !1441, line: 9, baseType: !1445, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1423, file: !37, line: 45, baseType: !439, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1410, file: !37, line: 54, baseType: !1450, size: 256)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !37, line: 48, size: 256, elements: !1451)
!1451 = !{!1452, !1460, !1461, !1462, !1463}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1450, file: !37, line: 49, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1455, line: 36, size: 64, elements: !1456)
!1455 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1456 = !{!1457, !1458, !1459}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1454, file: !1455, line: 37, baseType: !180, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1454, file: !1455, line: 38, baseType: !1206, size: 16, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1454, file: !1455, line: 39, baseType: !1206, size: 16, offset: 48)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1450, file: !37, line: 50, baseType: !180, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1450, file: !37, line: 51, baseType: !180, size: 32, offset: 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1450, file: !37, line: 52, baseType: !172, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1450, file: !37, line: 53, baseType: !172, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1218, file: !1219, line: 835, baseType: !1465, size: 32, offset: 5120)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !141, line: 22, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !331, line: 28, baseType: !180)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1218, file: !1219, line: 836, baseType: !1465, size: 32, offset: 5152)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1218, file: !1219, line: 840, baseType: !172, size: 64, offset: 5184)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1218, file: !1219, line: 849, baseType: !1217, size: 64, offset: 5248)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1218, file: !1219, line: 852, baseType: !1217, size: 64, offset: 5312)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1218, file: !1219, line: 857, baseType: !140, size: 128, offset: 5376)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1218, file: !1219, line: 858, baseType: !140, size: 128, offset: 5504)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1218, file: !1219, line: 859, baseType: !1217, size: 64, offset: 5632)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1218, file: !1219, line: 867, baseType: !140, size: 128, offset: 5696)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1218, file: !1219, line: 868, baseType: !140, size: 128, offset: 5824)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1218, file: !1219, line: 871, baseType: !1477, size: 64, offset: 5952)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !65, line: 59, size: 768, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1485, !1486, !1493, !1494}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1478, file: !65, line: 61, baseType: !1231, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1478, file: !65, line: 62, baseType: !7, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !65, line: 63, baseType: !257, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1478, file: !65, line: 65, baseType: !1484, size: 256, offset: 64)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 256, elements: !1172)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1478, file: !65, line: 66, baseType: !653, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1478, file: !65, line: 68, baseType: !1487, size: 128, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1488, line: 40, baseType: !1489)
!1488 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1488, line: 36, size: 128, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1489, file: !1488, line: 37, baseType: !257)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1489, file: !1488, line: 38, baseType: !140, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1478, file: !65, line: 69, baseType: !387, size: 128, align: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1478, file: !65, line: 70, baseType: !1495, size: 128, offset: 640)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 128, elements: !1372)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !65, line: 54, size: 128, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1496, file: !65, line: 55, baseType: !180, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1496, file: !65, line: 56, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !65, line: 56, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1218, file: !1219, line: 872, baseType: !1503, size: 512, offset: 6016)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 512, elements: !1172)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1218, file: !1219, line: 873, baseType: !140, size: 128, offset: 6528)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1218, file: !1219, line: 874, baseType: !140, size: 128, offset: 6656)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1218, file: !1219, line: 876, baseType: !1507, size: 64, offset: 6784)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1509, line: 26, size: 192, elements: !1510)
!1509 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1508, file: !1509, line: 27, baseType: !7, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1508, file: !1509, line: 28, baseType: !1513, size: 128, offset: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1514, line: 43, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1514, line: 44, baseType: !799)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1513, file: !1514, line: 45, baseType: !140, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1218, file: !1219, line: 879, baseType: !723, size: 64, offset: 6848)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1218, file: !1219, line: 882, baseType: !723, size: 64, offset: 6912)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1218, file: !1219, line: 884, baseType: !439, size: 64, offset: 6976)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1218, file: !1219, line: 885, baseType: !439, size: 64, offset: 7040)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1218, file: !1219, line: 890, baseType: !439, size: 64, offset: 7104)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1218, file: !1219, line: 891, baseType: !1524, size: 128, offset: 7168)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1219, line: 242, size: 128, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1524, file: !1219, line: 244, baseType: !439, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1524, file: !1219, line: 245, baseType: !439, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !1219, line: 246, baseType: !799, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1218, file: !1219, line: 900, baseType: !172, size: 64, offset: 7296)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1218, file: !1219, line: 901, baseType: !172, size: 64, offset: 7360)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1218, file: !1219, line: 904, baseType: !439, size: 64, offset: 7424)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1218, file: !1219, line: 907, baseType: !439, size: 64, offset: 7488)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1218, file: !1219, line: 910, baseType: !172, size: 64, offset: 7552)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1218, file: !1219, line: 911, baseType: !172, size: 64, offset: 7616)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1218, file: !1219, line: 914, baseType: !1536, size: 640, offset: 7680)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1537, line: 123, size: 640, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1545, !1546}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1536, file: !1537, line: 124, baseType: !1540, size: 576)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1541, size: 576, elements: !299)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1537, line: 108, size: 192, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1541, file: !1537, line: 109, baseType: !439, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1541, file: !1537, line: 110, baseType: !1344, size: 128, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1536, file: !1537, line: 125, baseType: !7, size: 32, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1536, file: !1537, line: 126, baseType: !7, size: 32, offset: 608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1218, file: !1219, line: 917, baseType: !1548, size: 192, offset: 8320)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1537, line: 134, size: 192, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1548, file: !1537, line: 135, baseType: !387, size: 128, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1548, file: !1537, line: 136, baseType: !7, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1218, file: !1219, line: 923, baseType: !1553, size: 64, offset: 8512)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1556, line: 111, size: 1280, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1577, !1578, !1579, !1580, !1581, !1582, !1689, !1690, !1691, !1692, !1718, !1721, !1731}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1555, file: !1556, line: 112, baseType: !766, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1555, file: !1556, line: 120, baseType: !453, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1555, file: !1556, line: 121, baseType: !461, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1555, file: !1556, line: 122, baseType: !453, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1555, file: !1556, line: 123, baseType: !461, size: 32, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1555, file: !1556, line: 124, baseType: !453, size: 32, offset: 160)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1555, file: !1556, line: 125, baseType: !461, size: 32, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1555, file: !1556, line: 126, baseType: !453, size: 32, offset: 224)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1555, file: !1556, line: 127, baseType: !461, size: 32, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1555, file: !1556, line: 128, baseType: !7, size: 32, offset: 288)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1555, file: !1556, line: 129, baseType: !1569, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1570, line: 26, baseType: !1571)
!1570 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1570, line: 24, size: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1571, file: !1570, line: 25, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !1575)
!1575 = !{!1576}
!1576 = !DISubrange(count: 2)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1555, file: !1556, line: 130, baseType: !1569, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1555, file: !1556, line: 131, baseType: !1569, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1555, file: !1556, line: 132, baseType: !1569, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1555, file: !1556, line: 133, baseType: !1569, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1555, file: !1556, line: 135, baseType: !445, size: 8, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1555, file: !1556, line: 137, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1585, line: 189, size: 1664, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !{!1587, !1588, !1591, !1596, !1597, !1600, !1601, !1606, !1607, !1608, !1609, !1611, !1612, !1613, !1614, !1615, !1653, !1674}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1584, file: !1585, line: 190, baseType: !1231, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1584, file: !1585, line: 191, baseType: !1589, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1585, line: 28, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !141, line: 98, baseType: !1445)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 192, baseType: !1592, size: 192, offset: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 192, size: 192, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1592, file: !1585, line: 193, baseType: !140, size: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1592, file: !1585, line: 194, baseType: !779, size: 192, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1584, file: !1585, line: 199, baseType: !786, size: 256, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1584, file: !1585, line: 200, baseType: !1598, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1585, line: 200, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1584, file: !1585, line: 201, baseType: !134, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 202, baseType: !1602, size: 64, offset: 640)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 202, size: 64, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1602, file: !1585, line: 203, baseType: !555, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1602, file: !1585, line: 204, baseType: !555, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1584, file: !1585, line: 206, baseType: !555, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1584, file: !1585, line: 207, baseType: !453, size: 32, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1584, file: !1585, line: 208, baseType: !461, size: 32, offset: 800)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1584, file: !1585, line: 209, baseType: !1610, size: 32, offset: 832)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1585, line: 31, baseType: !575)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1584, file: !1585, line: 210, baseType: !176, size: 16, offset: 864)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1584, file: !1585, line: 211, baseType: !176, size: 16, offset: 880)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1584, file: !1585, line: 215, baseType: !1206, size: 16, offset: 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1584, file: !1585, line: 222, baseType: !172, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 239, baseType: !1616, size: 320, offset: 1024)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 239, size: 320, elements: !1617)
!1617 = !{!1618, !1645}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1616, file: !1585, line: 240, baseType: !1619, size: 320)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1585, line: 108, size: 320, elements: !1620)
!1620 = !{!1621, !1622, !1634, !1637, !1644}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1619, file: !1585, line: 110, baseType: !172, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1585, line: 111, baseType: !1623, size: 64, offset: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1585, line: 111, size: 64, elements: !1624)
!1624 = !{!1625, !1633}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1585, line: 112, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1623, file: !1585, line: 112, size: 64, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1626, file: !1585, line: 114, baseType: !174, size: 16)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1626, file: !1585, line: 115, baseType: !1630, size: 48, offset: 16)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 6)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1623, file: !1585, line: 121, baseType: !172, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1619, file: !1585, line: 123, baseType: !1635, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1585, line: 96, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1619, file: !1585, line: 124, baseType: !1638, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1585, line: 102, size: 192, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1639, file: !1585, line: 103, baseType: !387, size: 128, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1639, file: !1585, line: 104, baseType: !1231, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1639, file: !1585, line: 105, baseType: !231, size: 8, offset: 160)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1619, file: !1585, line: 125, baseType: !166, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1585, line: 241, baseType: !1646, size: 320)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !1585, line: 241, size: 320, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1646, file: !1585, line: 242, baseType: !172, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1646, file: !1585, line: 243, baseType: !172, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1646, file: !1585, line: 244, baseType: !1635, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1646, file: !1585, line: 245, baseType: !1638, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1646, file: !1585, line: 246, baseType: !298, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 254, baseType: !1654, size: 256, offset: 1344)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 254, size: 256, elements: !1655)
!1655 = !{!1656, !1662}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1654, file: !1585, line: 255, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1585, line: 128, size: 256, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1657, file: !1585, line: 129, baseType: !134, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1657, file: !1585, line: 130, baseType: !1661, size: 256)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !1172)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1585, line: 256, baseType: !1663, size: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1585, line: 256, size: 256, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1663, file: !1585, line: 258, baseType: !140, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1663, file: !1585, line: 259, baseType: !1667, size: 128, offset: 128)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1668, line: 22, size: 128, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !{!1670, !1673}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1667, file: !1668, line: 23, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1668, line: 23, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1667, file: !1668, line: 24, baseType: !172, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1584, file: !1585, line: 274, baseType: !1675, size: 64, offset: 1600)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1585, line: 170, size: 192, elements: !1677)
!1677 = !{!1678, !1687, !1688}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1676, file: !1585, line: 171, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1585, line: 165, baseType: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!180, !1583, !1683, !1685, !1583}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1676, file: !1585, line: 172, baseType: !1583, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1676, file: !1585, line: 173, baseType: !1635, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1555, file: !1556, line: 138, baseType: !1583, size: 64, offset: 768)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1555, file: !1556, line: 139, baseType: !1583, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1555, file: !1556, line: 140, baseType: !1583, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1555, file: !1556, line: 145, baseType: !1693, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1695, line: 13, size: 896, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1694, file: !1695, line: 14, baseType: !1231, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1694, file: !1695, line: 15, baseType: !766, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1694, file: !1695, line: 16, baseType: !766, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1694, file: !1695, line: 21, baseType: !790, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1694, file: !1695, line: 27, baseType: !172, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1694, file: !1695, line: 28, baseType: !172, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1694, file: !1695, line: 29, baseType: !790, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1694, file: !1695, line: 32, baseType: !657, size: 128, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1694, file: !1695, line: 33, baseType: !453, size: 32, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1694, file: !1695, line: 37, baseType: !790, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1694, file: !1695, line: 44, baseType: !1708, size: 256, offset: 640)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1709, line: 15, size: 256, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !1709, line: 16, baseType: !799)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1708, file: !1709, line: 18, baseType: !180, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1708, file: !1709, line: 19, baseType: !180, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1708, file: !1709, line: 20, baseType: !180, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1708, file: !1709, line: 21, baseType: !180, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1708, file: !1709, line: 22, baseType: !172, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !1709, line: 23, baseType: !172, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1555, file: !1556, line: 146, baseType: !1719, size: 64, offset: 1024)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !454, line: 18, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1555, file: !1556, line: 147, baseType: !1722, size: 64, offset: 1088)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1556, line: 25, size: 64, elements: !1724)
!1724 = !{!1725, !1726, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1723, file: !1556, line: 26, baseType: !766, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1723, file: !1556, line: 27, baseType: !180, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1723, file: !1556, line: 28, baseType: !1728, offset: 64)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1556, line: 149, baseType: !1732, size: 128, offset: 1152)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !1556, line: 149, size: 128, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1732, file: !1556, line: 150, baseType: !180, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1732, file: !1556, line: 151, baseType: !387, size: 128, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1218, file: !1219, line: 926, baseType: !1553, size: 64, offset: 8576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1218, file: !1219, line: 929, baseType: !1553, size: 64, offset: 8640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1218, file: !1219, line: 933, baseType: !1583, size: 64, offset: 8704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1218, file: !1219, line: 943, baseType: !1740, size: 128, offset: 8768)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 128, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 16)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1218, file: !1219, line: 945, baseType: !1744, size: 64, offset: 8896)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1219, line: 49, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1218, file: !1219, line: 956, baseType: !1747, size: 64, offset: 8960)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1219, line: 45, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1218, file: !1219, line: 959, baseType: !1750, size: 64, offset: 9024)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1219, line: 959, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1218, file: !1219, line: 962, baseType: !1753, size: 64, offset: 9088)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1219, line: 66, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1218, file: !1219, line: 966, baseType: !1756, size: 64, offset: 9152)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1219, line: 50, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1218, file: !1219, line: 969, baseType: !1759, size: 64, offset: 9216)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1761, line: 82, size: 7296, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1798, !1807, !1808, !1810, !1811, !1812, !1815, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1845, !1846, !1853, !1854, !1855, !1856, !1857, !1858}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1760, file: !1761, line: 83, baseType: !1231, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1760, file: !1761, line: 84, baseType: !766, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1760, file: !1761, line: 85, baseType: !180, size: 32, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1760, file: !1761, line: 86, baseType: !140, size: 128, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1760, file: !1761, line: 88, baseType: !1487, size: 128, offset: 256)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1760, file: !1761, line: 91, baseType: !1217, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1760, file: !1761, line: 94, baseType: !1770, size: 192, offset: 448)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1771, line: 30, size: 192, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1770, file: !1771, line: 31, baseType: !140, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1770, file: !1771, line: 32, baseType: !1775, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1776, line: 25, baseType: !1777)
!1776 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1776, line: 23, size: 64, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1777, file: !1776, line: 24, baseType: !1371, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1760, file: !1761, line: 97, baseType: !653, size: 64, offset: 640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1760, file: !1761, line: 100, baseType: !180, size: 32, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1760, file: !1761, line: 106, baseType: !180, size: 32, offset: 736)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1760, file: !1761, line: 107, baseType: !1217, size: 64, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1760, file: !1761, line: 110, baseType: !180, size: 32, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1760, file: !1761, line: 111, baseType: !7, size: 32, offset: 864)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1760, file: !1761, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1760, file: !1761, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1760, file: !1761, line: 128, baseType: !180, size: 32, offset: 928)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1760, file: !1761, line: 129, baseType: !140, size: 128, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1760, file: !1761, line: 132, baseType: !1293, size: 512, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1760, file: !1761, line: 133, baseType: !1301, size: 64, offset: 1600)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1760, file: !1761, line: 140, baseType: !1793, size: 256, offset: 1664)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 256, elements: !1575)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1761, line: 38, size: 128, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1794, file: !1761, line: 39, baseType: !439, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1794, file: !1761, line: 40, baseType: !439, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1760, file: !1761, line: 146, baseType: !1799, size: 192, offset: 1920)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1761, line: 66, size: 192, elements: !1800)
!1800 = !{!1801}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1799, file: !1761, line: 67, baseType: !1802, size: 192)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1761, line: 47, size: 192, elements: !1803)
!1803 = !{!1804, !1805, !1806}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1802, file: !1761, line: 48, baseType: !792, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1802, file: !1761, line: 49, baseType: !792, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1802, file: !1761, line: 50, baseType: !792, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1760, file: !1761, line: 150, baseType: !1536, size: 640, offset: 2112)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1760, file: !1761, line: 153, baseType: !1809, size: 256, offset: 2752)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 256, elements: !1172)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1760, file: !1761, line: 159, baseType: !1477, size: 64, offset: 3008)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1760, file: !1761, line: 162, baseType: !180, size: 32, offset: 3072)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1760, file: !1761, line: 164, baseType: !1813, size: 64, offset: 3136)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1761, line: 164, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1760, file: !1761, line: 175, baseType: !1816, size: 32, offset: 3200)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !410, line: 805, baseType: !1817)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 798, size: 32, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1817, file: !410, line: 803, baseType: !409, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1817, file: !410, line: 804, baseType: !257, offset: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1760, file: !1761, line: 176, baseType: !439, size: 64, offset: 3264)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1760, file: !1761, line: 176, baseType: !439, size: 64, offset: 3328)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1760, file: !1761, line: 176, baseType: !439, size: 64, offset: 3392)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1760, file: !1761, line: 176, baseType: !439, size: 64, offset: 3456)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1760, file: !1761, line: 177, baseType: !439, size: 64, offset: 3520)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1760, file: !1761, line: 178, baseType: !439, size: 64, offset: 3584)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1760, file: !1761, line: 179, baseType: !1524, size: 128, offset: 3648)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1760, file: !1761, line: 180, baseType: !172, size: 64, offset: 3776)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1760, file: !1761, line: 180, baseType: !172, size: 64, offset: 3840)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1760, file: !1761, line: 180, baseType: !172, size: 64, offset: 3904)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1760, file: !1761, line: 180, baseType: !172, size: 64, offset: 3968)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1760, file: !1761, line: 181, baseType: !172, size: 64, offset: 4032)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1760, file: !1761, line: 181, baseType: !172, size: 64, offset: 4096)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1760, file: !1761, line: 181, baseType: !172, size: 64, offset: 4160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1760, file: !1761, line: 181, baseType: !172, size: 64, offset: 4224)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1760, file: !1761, line: 182, baseType: !172, size: 64, offset: 4288)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1760, file: !1761, line: 182, baseType: !172, size: 64, offset: 4352)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1760, file: !1761, line: 182, baseType: !172, size: 64, offset: 4416)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1760, file: !1761, line: 182, baseType: !172, size: 64, offset: 4480)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1760, file: !1761, line: 183, baseType: !172, size: 64, offset: 4544)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1760, file: !1761, line: 183, baseType: !172, size: 64, offset: 4608)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1760, file: !1761, line: 184, baseType: !1843, offset: 4672)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1844, line: 12, elements: !271)
!1844 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1760, file: !1761, line: 192, baseType: !441, size: 64, offset: 4672)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1760, file: !1761, line: 203, baseType: !1847, size: 2048, offset: 4736)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1848, size: 2048, elements: !1741)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1849, line: 43, size: 128, elements: !1850)
!1849 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1848, file: !1849, line: 44, baseType: !346, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1848, file: !1849, line: 45, baseType: !346, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1760, file: !1761, line: 220, baseType: !231, size: 8, offset: 6784)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1760, file: !1761, line: 221, baseType: !1206, size: 16, offset: 6800)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1760, file: !1761, line: 222, baseType: !1206, size: 16, offset: 6816)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1760, file: !1761, line: 224, baseType: !991, size: 64, offset: 6848)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1760, file: !1761, line: 227, baseType: !1190, size: 192, offset: 6912)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1760, file: !1761, line: 233, baseType: !1190, size: 192, offset: 7104)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1218, file: !1219, line: 970, baseType: !1860, size: 64, offset: 9280)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1761, line: 20, size: 16576, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1866}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1861, file: !1761, line: 21, baseType: !257)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1861, file: !1761, line: 22, baseType: !1231, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1861, file: !1761, line: 23, baseType: !1487, size: 128, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1861, file: !1761, line: 24, baseType: !1867, size: 16384, offset: 192)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1868, size: 16384, elements: !303)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1771, line: 49, size: 256, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1868, file: !1771, line: 50, baseType: !1871, size: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1771, line: 35, size: 256, elements: !1872)
!1872 = !{!1873, !1880, !1881, !1887}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1871, file: !1771, line: 37, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1875, line: 19, baseType: !1876)
!1875 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1875, line: 18, baseType: !1878)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !180}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1871, file: !1771, line: 38, baseType: !172, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1871, file: !1771, line: 44, baseType: !1882, size: 64, offset: 128)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1875, line: 22, baseType: !1883)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1875, line: 21, baseType: !1885)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1871, file: !1771, line: 46, baseType: !1775, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1218, file: !1219, line: 971, baseType: !1775, size: 64, offset: 9344)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1218, file: !1219, line: 972, baseType: !1775, size: 64, offset: 9408)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1218, file: !1219, line: 974, baseType: !1775, size: 64, offset: 9472)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1218, file: !1219, line: 975, baseType: !1770, size: 192, offset: 9536)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1218, file: !1219, line: 976, baseType: !172, size: 64, offset: 9728)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1218, file: !1219, line: 977, baseType: !344, size: 64, offset: 9792)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1218, file: !1219, line: 978, baseType: !7, size: 32, offset: 9856)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1218, file: !1219, line: 980, baseType: !390, size: 64, offset: 9920)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1218, file: !1219, line: 989, baseType: !1897, size: 128, offset: 9984)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1898, line: 35, size: 128, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1897, file: !1898, line: 36, baseType: !180, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1897, file: !1898, line: 37, baseType: !766, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1897, file: !1898, line: 38, baseType: !1903, size: 64, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1898, line: 23, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1218, file: !1219, line: 992, baseType: !439, size: 64, offset: 10112)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1218, file: !1219, line: 993, baseType: !439, size: 64, offset: 10176)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1218, file: !1219, line: 996, baseType: !257, offset: 10240)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1218, file: !1219, line: 999, baseType: !799, offset: 10240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1218, file: !1219, line: 1001, baseType: !1910, size: 64, offset: 10240)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1219, line: 636, size: 64, elements: !1911)
!1911 = !{!1912}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1910, file: !1219, line: 637, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1218, file: !1219, line: 1005, baseType: !771, size: 128, offset: 10304)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1218, file: !1219, line: 1007, baseType: !1217, size: 64, offset: 10432)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1218, file: !1219, line: 1009, baseType: !1917, size: 64, offset: 10496)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1219, line: 1009, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1218, file: !1219, line: 1043, baseType: !134, size: 64, offset: 10560)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1218, file: !1219, line: 1046, baseType: !1921, size: 64, offset: 10624)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1219, line: 41, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1218, file: !1219, line: 1050, baseType: !1924, size: 64, offset: 10688)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1219, line: 42, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1218, file: !1219, line: 1054, baseType: !1927, size: 64, offset: 10752)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1219, line: 55, flags: DIFlagFwdDecl)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1218, file: !1219, line: 1056, baseType: !1930, size: 64, offset: 10816)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1219, line: 40, flags: DIFlagFwdDecl)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1218, file: !1219, line: 1058, baseType: !1933, size: 64, offset: 10880)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1935, line: 99, size: 704, elements: !1936)
!1935 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942, !1943, !1962, !1963}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1934, file: !1935, line: 100, baseType: !790, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1934, file: !1935, line: 101, baseType: !766, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1934, file: !1935, line: 102, baseType: !766, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1934, file: !1935, line: 105, baseType: !257, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1934, file: !1935, line: 107, baseType: !176, size: 16, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1934, file: !1935, line: 109, baseType: !757, size: 128, offset: 192)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1934, file: !1935, line: 110, baseType: !1944, size: 64, offset: 320)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1935, line: 73, size: 448, elements: !1946)
!1946 = !{!1947, !1950, !1951, !1956, !1961}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1945, file: !1935, line: 74, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1935, line: 74, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1945, file: !1935, line: 75, baseType: !1933, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1935, line: 83, baseType: !1952, size: 128, offset: 128)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1945, file: !1935, line: 83, size: 128, elements: !1953)
!1953 = !{!1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1952, file: !1935, line: 84, baseType: !140, size: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1952, file: !1935, line: 85, baseType: !952, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1935, line: 87, baseType: !1957, size: 128, offset: 256)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1945, file: !1935, line: 87, size: 128, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1957, file: !1935, line: 88, baseType: !657, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1957, file: !1935, line: 89, baseType: !387, size: 128, align: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1945, file: !1935, line: 92, baseType: !7, size: 32, offset: 384)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1934, file: !1935, line: 111, baseType: !653, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1934, file: !1935, line: 113, baseType: !1964, size: 256, offset: 448)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1965, line: 102, size: 256, elements: !1966)
!1965 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1966 = !{!1967, !1968, !1969}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1964, file: !1965, line: 103, baseType: !790, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1964, file: !1965, line: 104, baseType: !140, size: 128, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1964, file: !1965, line: 105, baseType: !1970, size: 64, offset: 192)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1965, line: 21, baseType: !1971)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{null, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1218, file: !1219, line: 1061, baseType: !1976, size: 64, offset: 10944)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1219, line: 43, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1218, file: !1219, line: 1064, baseType: !172, size: 64, offset: 11008)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1218, file: !1219, line: 1065, baseType: !1980, size: 64, offset: 11072)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1771, line: 14, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1771, line: 12, size: 384, elements: !1983)
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1771, line: 13, baseType: !1985, size: 384)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1771, line: 13, size: 384, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1990}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1985, file: !1771, line: 13, baseType: !180, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1985, file: !1771, line: 13, baseType: !180, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1985, file: !1771, line: 13, baseType: !180, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1985, file: !1771, line: 13, baseType: !1991, size: 256, offset: 128)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1992, line: 32, size: 256, elements: !1993)
!1992 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1993 = !{!1994, !1999, !2012, !2018, !2027, !2047, !2052}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1991, file: !1992, line: 37, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1992, line: 34, size: 64, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1995, file: !1992, line: 35, baseType: !1466, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1995, file: !1992, line: 36, baseType: !459, size: 32, offset: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1991, file: !1992, line: 45, baseType: !2000, size: 192)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1992, line: 40, size: 192, elements: !2001)
!2001 = !{!2002, !2004, !2005, !2011}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2000, file: !1992, line: 41, baseType: !2003, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !331, line: 95, baseType: !180)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2000, file: !1992, line: 42, baseType: !180, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2000, file: !1992, line: 43, baseType: !2006, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1992, line: 11, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1992, line: 8, size: 64, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2007, file: !1992, line: 9, baseType: !180, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2007, file: !1992, line: 10, baseType: !134, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2000, file: !1992, line: 44, baseType: !180, size: 32, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1991, file: !1992, line: 52, baseType: !2013, size: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1992, line: 48, size: 128, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2013, file: !1992, line: 49, baseType: !1466, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2013, file: !1992, line: 50, baseType: !459, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2013, file: !1992, line: 51, baseType: !2006, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1991, file: !1992, line: 61, baseType: !2019, size: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1992, line: 55, size: 256, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2026}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2019, file: !1992, line: 56, baseType: !1466, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2019, file: !1992, line: 57, baseType: !459, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2019, file: !1992, line: 58, baseType: !180, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2019, file: !1992, line: 59, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !331, line: 94, baseType: !332)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2019, file: !1992, line: 60, baseType: !2025, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1991, file: !1992, line: 95, baseType: !2028, size: 256)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1992, line: 64, size: 256, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2028, file: !1992, line: 65, baseType: !134, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !1992, line: 77, baseType: !2032, size: 192, offset: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !1992, line: 77, size: 192, elements: !2033)
!2033 = !{!2034, !2035, !2042}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2032, file: !1992, line: 82, baseType: !1206, size: 16)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2032, file: !1992, line: 88, baseType: !2036, size: 192)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !1992, line: 84, size: 192, elements: !2037)
!2037 = !{!2038, !2040, !2041}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2036, file: !1992, line: 85, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !1331)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2036, file: !1992, line: 86, baseType: !134, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2036, file: !1992, line: 87, baseType: !134, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2032, file: !1992, line: 93, baseType: !2043, size: 96)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2032, file: !1992, line: 90, size: 96, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2043, file: !1992, line: 91, baseType: !2039, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2043, file: !1992, line: 92, baseType: !162, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1991, file: !1992, line: 101, baseType: !2048, size: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1992, line: 98, size: 128, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2048, file: !1992, line: 99, baseType: !333, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2048, file: !1992, line: 100, baseType: !180, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1991, file: !1992, line: 108, baseType: !2053, size: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1992, line: 104, size: 128, elements: !2054)
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2053, file: !1992, line: 105, baseType: !134, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2053, file: !1992, line: 106, baseType: !180, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2053, file: !1992, line: 107, baseType: !7, size: 32, offset: 96)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1218, file: !1219, line: 1067, baseType: !1843, offset: 11136)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1218, file: !1219, line: 1099, baseType: !2060, size: 64, offset: 11136)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1219, line: 56, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1218, file: !1219, line: 1103, baseType: !140, size: 128, offset: 11200)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1218, file: !1219, line: 1104, baseType: !2064, size: 64, offset: 11328)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1219, line: 46, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1218, file: !1219, line: 1105, baseType: !1190, size: 192, offset: 11392)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1218, file: !1219, line: 1106, baseType: !7, size: 32, offset: 11584)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1218, file: !1219, line: 1109, baseType: !2069, size: 128, offset: 11648)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2070, size: 128, elements: !1575)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1219, line: 51, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1218, file: !1219, line: 1110, baseType: !1190, size: 192, offset: 11776)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1218, file: !1219, line: 1111, baseType: !140, size: 128, offset: 11968)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1218, file: !1219, line: 1173, baseType: !2075, size: 64, offset: 12096)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2077, line: 62, size: 256, align: 256, elements: !2078)
!2077 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !{!2079, !2080, !2081, !2086}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2076, file: !2077, line: 75, baseType: !162, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2076, file: !2077, line: 90, baseType: !162, size: 32, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2076, file: !2077, line: 124, baseType: !2082, size: 64, offset: 64)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !2077, line: 109, size: 64, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2082, file: !2077, line: 110, baseType: !440, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2082, file: !2077, line: 112, baseType: !440, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2076, file: !2077, line: 144, baseType: !162, size: 32, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1218, file: !1219, line: 1174, baseType: !160, size: 32, offset: 12160)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1218, file: !1219, line: 1179, baseType: !172, size: 64, offset: 12224)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1218, file: !1219, line: 1182, baseType: !2090, size: 128, offset: 12288)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1168, line: 76, size: 128, elements: !2091)
!2091 = !{!2092, !2097, !2098}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2090, file: !1168, line: 85, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2094, line: 7, size: 64, elements: !2095)
!2094 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2093, file: !2094, line: 12, baseType: !1368, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2090, file: !1168, line: 88, baseType: !231, size: 8, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2090, file: !1168, line: 95, baseType: !231, size: 8, offset: 72)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1219, line: 1184, baseType: !2100, size: 128, offset: 12416)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1219, line: 1184, size: 128, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2100, file: !1219, line: 1185, baseType: !1231, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2100, file: !1219, line: 1186, baseType: !387, size: 128, align: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1218, file: !1219, line: 1190, baseType: !2105, size: 64, offset: 12544)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1219, line: 53, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1218, file: !1219, line: 1192, baseType: !2108, size: 128, offset: 12608)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1168, line: 64, size: 128, elements: !2109)
!2109 = !{!2110, !2111, !2112}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2108, file: !1168, line: 65, baseType: !739, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2108, file: !1168, line: 67, baseType: !162, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2108, file: !1168, line: 68, baseType: !162, size: 32, offset: 96)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1218, file: !1219, line: 1206, baseType: !180, size: 32, offset: 12736)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1218, file: !1219, line: 1207, baseType: !180, size: 32, offset: 12768)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1218, file: !1219, line: 1209, baseType: !172, size: 64, offset: 12800)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1218, file: !1219, line: 1219, baseType: !439, size: 64, offset: 12864)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1218, file: !1219, line: 1220, baseType: !439, size: 64, offset: 12928)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1218, file: !1219, line: 1317, baseType: !180, size: 32, offset: 12992)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1218, file: !1219, line: 1319, baseType: !1217, size: 64, offset: 13056)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1218, file: !1219, line: 1322, baseType: !2121, size: 64, offset: 13120)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1219, line: 1322, flags: DIFlagFwdDecl)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1218, file: !1219, line: 1326, baseType: !1231, size: 32, offset: 13184)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1218, file: !1219, line: 1342, baseType: !134, size: 64, offset: 13248)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1218, file: !1219, line: 1343, baseType: !440, size: 64, offset: 13312)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1218, file: !1219, line: 1344, baseType: !439, size: 64, offset: 13376)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1218, file: !1219, line: 1345, baseType: !440, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1218, file: !1219, line: 1346, baseType: !440, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1218, file: !1219, line: 1347, baseType: !440, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1218, file: !1219, line: 1348, baseType: !387, size: 128, align: 64, offset: 13504)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1218, file: !1219, line: 1358, baseType: !2132, size: 34816, offset: 13824)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2133, line: 485, size: 34816, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2164, !2165, !2166, !2167, !2168, !2169, !2172, !2173, !2174}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2132, file: !2133, line: 487, baseType: !2136, size: 192)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 192, elements: !299)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2138, line: 16, size: 64, elements: !2139)
!2138 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2137, file: !2138, line: 17, baseType: !174, size: 16)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2137, file: !2138, line: 18, baseType: !174, size: 16, offset: 16)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2137, file: !2138, line: 19, baseType: !174, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2137, file: !2138, line: 19, baseType: !174, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2137, file: !2138, line: 19, baseType: !174, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2137, file: !2138, line: 19, baseType: !174, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2137, file: !2138, line: 19, baseType: !174, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2137, file: !2138, line: 20, baseType: !174, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2137, file: !2138, line: 20, baseType: !174, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2137, file: !2138, line: 20, baseType: !174, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2137, file: !2138, line: 20, baseType: !174, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2137, file: !2138, line: 20, baseType: !174, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2137, file: !2138, line: 20, baseType: !174, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2132, file: !2133, line: 491, baseType: !172, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2132, file: !2133, line: 495, baseType: !176, size: 16, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2132, file: !2133, line: 496, baseType: !176, size: 16, offset: 272)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2132, file: !2133, line: 497, baseType: !176, size: 16, offset: 288)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2132, file: !2133, line: 498, baseType: !176, size: 16, offset: 304)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2132, file: !2133, line: 502, baseType: !172, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2132, file: !2133, line: 503, baseType: !172, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2132, file: !2133, line: 514, baseType: !2161, size: 256, offset: 448)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2162, size: 256, elements: !1172)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2133, line: 483, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2132, file: !2133, line: 516, baseType: !172, size: 64, offset: 704)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2132, file: !2133, line: 518, baseType: !172, size: 64, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2132, file: !2133, line: 520, baseType: !172, size: 64, offset: 832)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2132, file: !2133, line: 521, baseType: !172, size: 64, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2132, file: !2133, line: 522, baseType: !172, size: 64, offset: 960)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2132, file: !2133, line: 528, baseType: !2170, size: 64, offset: 1024)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2133, line: 10, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2132, file: !2133, line: 535, baseType: !172, size: 64, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2132, file: !2133, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2132, file: !2133, line: 540, baseType: !2175, size: 33280, offset: 1536)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2176, line: 317, size: 33280, elements: !2177)
!2176 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2177 = !{!2178, !2179, !2180}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2175, file: !2176, line: 330, baseType: !7, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2175, file: !2176, line: 337, baseType: !172, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2175, file: !2176, line: 348, baseType: !2181, size: 32768, offset: 512)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2176, line: 304, size: 32768, elements: !2182)
!2182 = !{!2183, !2198, !2237, !2287, !2300}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2181, file: !2176, line: 305, baseType: !2184, size: 896)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2176, line: 12, size: 896, elements: !2185)
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2197}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2184, file: !2176, line: 13, baseType: !160, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2184, file: !2176, line: 14, baseType: !160, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2184, file: !2176, line: 15, baseType: !160, size: 32, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2184, file: !2176, line: 16, baseType: !160, size: 32, offset: 96)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2184, file: !2176, line: 17, baseType: !160, size: 32, offset: 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2184, file: !2176, line: 18, baseType: !160, size: 32, offset: 160)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2184, file: !2176, line: 19, baseType: !160, size: 32, offset: 192)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2184, file: !2176, line: 22, baseType: !2194, size: 640, offset: 224)
!2194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 640, elements: !2195)
!2195 = !{!2196}
!2196 = !DISubrange(count: 20)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2184, file: !2176, line: 25, baseType: !160, size: 32, offset: 864)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2181, file: !2176, line: 306, baseType: !2199, size: 4096, align: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2176, line: 34, size: 4096, align: 128, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2220, !2221, !2222, !2226, !2228, !2232}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2199, file: !2176, line: 35, baseType: !174, size: 16)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2199, file: !2176, line: 36, baseType: !174, size: 16, offset: 16)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2199, file: !2176, line: 37, baseType: !174, size: 16, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2199, file: !2176, line: 38, baseType: !174, size: 16, offset: 48)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !2176, line: 39, baseType: !2206, size: 128, offset: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !2176, line: 39, size: 128, elements: !2207)
!2207 = !{!2208, !2213}
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !2176, line: 40, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2176, line: 40, size: 128, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2209, file: !2176, line: 41, baseType: !439, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2209, file: !2176, line: 42, baseType: !439, size: 64, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !2176, line: 44, baseType: !2214, size: 128)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !2176, line: 44, size: 128, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2214, file: !2176, line: 45, baseType: !160, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2214, file: !2176, line: 46, baseType: !160, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2214, file: !2176, line: 47, baseType: !160, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2214, file: !2176, line: 48, baseType: !160, size: 32, offset: 96)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2199, file: !2176, line: 51, baseType: !160, size: 32, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2199, file: !2176, line: 52, baseType: !160, size: 32, offset: 224)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2199, file: !2176, line: 55, baseType: !2223, size: 1024, offset: 256)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 1024, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2199, file: !2176, line: 58, baseType: !2227, size: 2048, offset: 1280)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 2048, elements: !303)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2199, file: !2176, line: 60, baseType: !2229, size: 384, offset: 3328)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 384, elements: !2230)
!2230 = !{!2231}
!2231 = !DISubrange(count: 12)
!2232 = !DIDerivedType(tag: DW_TAG_member, scope: !2199, file: !2176, line: 62, baseType: !2233, size: 384, offset: 3712)
!2233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2199, file: !2176, line: 62, size: 384, elements: !2234)
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2233, file: !2176, line: 63, baseType: !2229, size: 384)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2233, file: !2176, line: 64, baseType: !2229, size: 384)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2181, file: !2176, line: 307, baseType: !2238, size: 1088)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2176, line: 79, size: 1088, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2286}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2238, file: !2176, line: 80, baseType: !160, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2238, file: !2176, line: 81, baseType: !160, size: 32, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2238, file: !2176, line: 82, baseType: !160, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2238, file: !2176, line: 83, baseType: !160, size: 32, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2238, file: !2176, line: 84, baseType: !160, size: 32, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2238, file: !2176, line: 85, baseType: !160, size: 32, offset: 160)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2238, file: !2176, line: 86, baseType: !160, size: 32, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2238, file: !2176, line: 88, baseType: !2194, size: 640, offset: 224)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2238, file: !2176, line: 89, baseType: !1353, size: 8, offset: 864)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2238, file: !2176, line: 90, baseType: !1353, size: 8, offset: 872)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2238, file: !2176, line: 91, baseType: !1353, size: 8, offset: 880)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2238, file: !2176, line: 92, baseType: !1353, size: 8, offset: 888)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2238, file: !2176, line: 93, baseType: !1353, size: 8, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2238, file: !2176, line: 94, baseType: !1353, size: 8, offset: 904)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2238, file: !2176, line: 95, baseType: !2255, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2257, line: 11, size: 128, elements: !2258)
!2257 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2256, file: !2257, line: 12, baseType: !333, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2256, file: !2257, line: 13, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2263, line: 56, size: 1344, elements: !2264)
!2263 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2262, file: !2263, line: 61, baseType: !172, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2262, file: !2263, line: 62, baseType: !172, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2262, file: !2263, line: 63, baseType: !172, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2262, file: !2263, line: 64, baseType: !172, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2262, file: !2263, line: 65, baseType: !172, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2262, file: !2263, line: 66, baseType: !172, size: 64, offset: 320)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2262, file: !2263, line: 68, baseType: !172, size: 64, offset: 384)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2262, file: !2263, line: 69, baseType: !172, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2262, file: !2263, line: 70, baseType: !172, size: 64, offset: 512)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2262, file: !2263, line: 71, baseType: !172, size: 64, offset: 576)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2262, file: !2263, line: 72, baseType: !172, size: 64, offset: 640)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2262, file: !2263, line: 73, baseType: !172, size: 64, offset: 704)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2262, file: !2263, line: 74, baseType: !172, size: 64, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2262, file: !2263, line: 75, baseType: !172, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2262, file: !2263, line: 76, baseType: !172, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2262, file: !2263, line: 81, baseType: !172, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2262, file: !2263, line: 83, baseType: !172, size: 64, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2262, file: !2263, line: 84, baseType: !172, size: 64, offset: 1088)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2262, file: !2263, line: 85, baseType: !172, size: 64, offset: 1152)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2262, file: !2263, line: 86, baseType: !172, size: 64, offset: 1216)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2262, file: !2263, line: 87, baseType: !172, size: 64, offset: 1280)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2238, file: !2176, line: 96, baseType: !160, size: 32, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2181, file: !2176, line: 308, baseType: !2288, size: 4608, align: 512)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2176, line: 289, size: 4608, align: 512, elements: !2289)
!2289 = !{!2290, !2291, !2298}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2288, file: !2176, line: 290, baseType: !2199, size: 4096, align: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2288, file: !2176, line: 291, baseType: !2292, size: 512, offset: 4096)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2176, line: 268, size: 512, elements: !2293)
!2293 = !{!2294, !2295, !2296}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2292, file: !2176, line: 269, baseType: !439, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2292, file: !2176, line: 270, baseType: !439, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2292, file: !2176, line: 271, baseType: !2297, size: 384, offset: 128)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 384, elements: !1631)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2288, file: !2176, line: 292, baseType: !2299, offset: 4608)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, elements: !1729)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2181, file: !2176, line: 309, baseType: !2301, size: 32768)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 32768, elements: !2302)
!2302 = !{!2303}
!2303 = !DISubrange(count: 4096)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1214, file: !741, line: 378, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1210, file: !741, line: 384, baseType: !1508, size: 192, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !995, file: !741, line: 500, baseType: !257, offset: 6656)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !995, file: !741, line: 501, baseType: !2309, size: 64, offset: 6656)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !741, line: 387, flags: DIFlagFwdDecl)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !995, file: !741, line: 516, baseType: !1719, size: 64, offset: 6720)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !995, file: !741, line: 519, baseType: !374, size: 64, offset: 6784)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !995, file: !741, line: 521, baseType: !2314, size: 64, offset: 6848)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !741, line: 521, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !995, file: !741, line: 545, baseType: !766, size: 32, offset: 6912)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !995, file: !741, line: 548, baseType: !231, size: 8, offset: 6944)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !995, file: !741, line: 550, baseType: !2319, offset: 6952)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2320, line: 142, elements: !271)
!2320 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !995, file: !741, line: 554, baseType: !1964, size: 256, offset: 6976)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !995, file: !741, line: 557, baseType: !160, size: 32, offset: 7232)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !992, file: !741, line: 565, baseType: !2324, offset: 7296)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, elements: !2325)
!2325 = !{!2326}
!2326 = !DISubrange(count: -1)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !988, file: !741, line: 151, baseType: !766, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !981, file: !741, line: 156, baseType: !257, offset: 256)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !741, line: 159, baseType: !2330, size: 128)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !741, line: 159, size: 128, elements: !2331)
!2331 = !{!2332, !2396}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2330, file: !741, line: 161, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 110, size: 1152, elements: !2335)
!2335 = !{!2336, !2346, !2367, !2368, !2369, !2370, !2371, !2383, !2384, !2385}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2334, file: !43, line: 111, baseType: !2337, size: 384)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 19, size: 384, elements: !2338)
!2338 = !{!2339, !2341, !2342, !2343, !2344, !2345}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2337, file: !43, line: 20, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2337, file: !43, line: 21, baseType: !2340, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2337, file: !43, line: 22, baseType: !2340, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2337, file: !43, line: 23, baseType: !172, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2337, file: !43, line: 24, baseType: !172, size: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2337, file: !43, line: 25, baseType: !172, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2334, file: !43, line: 112, baseType: !2347, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2349, line: 105, size: 128, elements: !2350)
!2349 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2348, file: !2349, line: 110, baseType: !172, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2348, file: !2349, line: 118, baseType: !2353, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2349, line: 95, size: 448, elements: !2355)
!2355 = !{!2356, !2357, !2362, !2363, !2364, !2365, !2366}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2354, file: !2349, line: 96, baseType: !790, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2354, file: !2349, line: 97, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2349, line: 60, baseType: !2360)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2347}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2354, file: !2349, line: 98, baseType: !2358, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2354, file: !2349, line: 99, baseType: !231, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2354, file: !2349, line: 100, baseType: !231, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2354, file: !2349, line: 101, baseType: !387, size: 128, align: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2354, file: !2349, line: 102, baseType: !2347, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2334, file: !43, line: 113, baseType: !2348, size: 128, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2334, file: !43, line: 114, baseType: !1508, size: 192, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2334, file: !43, line: 115, baseType: !42, size: 32, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !43, line: 116, baseType: !7, size: 32, offset: 800)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2334, file: !43, line: 117, baseType: !2372, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 67, size: 256, elements: !2375)
!2375 = !{!2376, !2377, !2381, !2382}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2374, file: !43, line: 73, baseType: !859, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2374, file: !43, line: 78, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !2333}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2374, file: !43, line: 83, baseType: !2378, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2374, file: !43, line: 89, baseType: !1044, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2334, file: !43, line: 118, baseType: !134, size: 64, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2334, file: !43, line: 119, baseType: !180, size: 32, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !2334, file: !43, line: 120, baseType: !2386, size: 128, offset: 1024)
!2386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2334, file: !43, line: 120, size: 128, elements: !2387)
!2387 = !{!2388, !2394}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2386, file: !43, line: 121, baseType: !2389, size: 128)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2390, line: 6, size: 128, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2389, file: !2390, line: 7, baseType: !439, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2389, file: !2390, line: 8, baseType: !439, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2386, file: !43, line: 122, baseType: !2395)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, elements: !1729)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2330, file: !741, line: 162, baseType: !134, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !745, file: !741, line: 176, baseType: !387, size: 128, align: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !741, line: 179, baseType: !2399, size: 32, offset: 384)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !741, line: 179, size: 32, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2399, file: !741, line: 184, baseType: !766, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2399, file: !741, line: 192, baseType: !7, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2399, file: !741, line: 194, baseType: !7, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2399, file: !741, line: 195, baseType: !180, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !740, file: !741, line: 199, baseType: !766, size: 32, offset: 416)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !675, file: !56, line: 1964, baseType: !2407, size: 64, offset: 1344)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!333, !615, !2410}
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2412, line: 12, size: 256, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2413 = !{!2414, !2415, !2416, !2417, !2418}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2411, file: !2412, line: 13, baseType: !762, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2411, file: !2412, line: 16, baseType: !180, size: 32, offset: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2411, file: !2412, line: 23, baseType: !172, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2411, file: !2412, line: 30, baseType: !172, size: 64, offset: 128)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2411, file: !2412, line: 33, baseType: !2419, size: 64, offset: 192)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2412, line: 33, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !675, file: !56, line: 1966, baseType: !2407, size: 64, offset: 1408)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !616, file: !56, line: 1424, baseType: !2423, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !50, line: 322, size: 704, elements: !2426)
!2426 = !{!2427, !2473, !2477, !2481, !2482, !2483, !2484, !2485, !2490, !2495, !2499}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2425, file: !50, line: 323, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!180, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !50, line: 294, size: 1600, elements: !2433)
!2433 = !{!2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2458, !2459, !2460}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2432, file: !50, line: 295, baseType: !657, size: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2432, file: !50, line: 296, baseType: !140, size: 128, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2432, file: !50, line: 297, baseType: !140, size: 128, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2432, file: !50, line: 298, baseType: !140, size: 128, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2432, file: !50, line: 299, baseType: !1190, size: 192, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2432, file: !50, line: 300, baseType: !257, offset: 704)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2432, file: !50, line: 301, baseType: !766, size: 32, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2432, file: !50, line: 302, baseType: !615, size: 64, offset: 768)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2432, file: !50, line: 303, baseType: !2443, size: 64, offset: 832)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !50, line: 68, size: 64, elements: !2444)
!2444 = !{!2445, !2457}
!2445 = !DIDerivedType(tag: DW_TAG_member, scope: !2443, file: !50, line: 69, baseType: !2446, size: 32)
!2446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2443, file: !50, line: 69, size: 32, elements: !2447)
!2447 = !{!2448, !2449, !2450}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2446, file: !50, line: 70, baseType: !453, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2446, file: !50, line: 71, baseType: !461, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2446, file: !50, line: 72, baseType: !2451, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2452, line: 24, baseType: !2453)
!2452 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2452, line: 22, size: 32, elements: !2454)
!2454 = !{!2455}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2453, file: !2452, line: 23, baseType: !2456, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2452, line: 20, baseType: !459)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !50, line: 74, baseType: !49, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2432, file: !50, line: 304, baseType: !547, size: 64, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2432, file: !50, line: 305, baseType: !172, size: 64, offset: 960)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2432, file: !50, line: 306, baseType: !2461, size: 576, offset: 1024)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !50, line: 205, size: 576, elements: !2462)
!2462 = !{!2463, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2461, file: !50, line: 206, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !50, line: 66, baseType: !549)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2461, file: !50, line: 207, baseType: !2464, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2461, file: !50, line: 208, baseType: !2464, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2461, file: !50, line: 209, baseType: !2464, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2461, file: !50, line: 210, baseType: !2464, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2461, file: !50, line: 211, baseType: !2464, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2461, file: !50, line: 212, baseType: !2464, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2461, file: !50, line: 213, baseType: !555, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2461, file: !50, line: 214, baseType: !555, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2425, file: !50, line: 324, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!2431, !615, !180}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2425, file: !50, line: 325, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2431}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2425, file: !50, line: 326, baseType: !2428, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2425, file: !50, line: 327, baseType: !2428, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2425, file: !50, line: 328, baseType: !2428, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2425, file: !50, line: 329, baseType: !703, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2425, file: !50, line: 332, baseType: !2486, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!2489, !447}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2425, file: !50, line: 333, baseType: !2491, size: 64, offset: 512)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!180, !447, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2425, file: !50, line: 335, baseType: !2496, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!180, !447, !2489}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2425, file: !50, line: 337, baseType: !2500, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!180, !615, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !616, file: !56, line: 1425, baseType: !2505, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !50, line: 428, size: 704, elements: !2508)
!2508 = !{!2509, !2513, !2514, !2518, !2519, !2520, !2535, !2558, !2562, !2563, !2586}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2507, file: !50, line: 429, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!180, !615, !180, !180, !565}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2507, file: !50, line: 430, baseType: !703, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2507, file: !50, line: 431, baseType: !2515, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!180, !615, !7}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2507, file: !50, line: 432, baseType: !2515, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2507, file: !50, line: 433, baseType: !703, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2507, file: !50, line: 434, baseType: !2521, size: 64, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!180, !615, !180, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !50, line: 415, size: 256, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2525, file: !50, line: 416, baseType: !180, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2525, file: !50, line: 417, baseType: !7, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2525, file: !50, line: 418, baseType: !7, size: 32, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2525, file: !50, line: 420, baseType: !7, size: 32, offset: 96)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2525, file: !50, line: 421, baseType: !7, size: 32, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2525, file: !50, line: 422, baseType: !7, size: 32, offset: 160)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2525, file: !50, line: 423, baseType: !7, size: 32, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2525, file: !50, line: 424, baseType: !7, size: 32, offset: 224)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2507, file: !50, line: 435, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!180, !615, !2443, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !50, line: 343, size: 960, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2540, file: !50, line: 344, baseType: !180, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2540, file: !50, line: 345, baseType: !439, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2540, file: !50, line: 346, baseType: !439, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2540, file: !50, line: 347, baseType: !439, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2540, file: !50, line: 348, baseType: !439, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2540, file: !50, line: 349, baseType: !439, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2540, file: !50, line: 350, baseType: !439, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2540, file: !50, line: 351, baseType: !796, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2540, file: !50, line: 353, baseType: !796, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2540, file: !50, line: 354, baseType: !180, size: 32, offset: 576)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2540, file: !50, line: 355, baseType: !180, size: 32, offset: 608)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2540, file: !50, line: 356, baseType: !439, size: 64, offset: 640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2540, file: !50, line: 357, baseType: !439, size: 64, offset: 704)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2540, file: !50, line: 358, baseType: !439, size: 64, offset: 768)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2540, file: !50, line: 359, baseType: !796, size: 64, offset: 832)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2540, file: !50, line: 360, baseType: !180, size: 32, offset: 896)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2507, file: !50, line: 436, baseType: !2559, size: 64, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!180, !615, !2503, !2539}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2507, file: !50, line: 438, baseType: !2536, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2507, file: !50, line: 439, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!180, !615, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !50, line: 409, size: 1408, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2568, file: !50, line: 410, baseType: !7, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2568, file: !50, line: 411, baseType: !2572, size: 1344, offset: 64)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2573, size: 1344, elements: !299)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !50, line: 395, size: 448, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2585}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2573, file: !50, line: 396, baseType: !7, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2573, file: !50, line: 397, baseType: !7, size: 32, offset: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2573, file: !50, line: 399, baseType: !7, size: 32, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2573, file: !50, line: 400, baseType: !7, size: 32, offset: 96)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2573, file: !50, line: 401, baseType: !7, size: 32, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2573, file: !50, line: 402, baseType: !7, size: 32, offset: 160)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2573, file: !50, line: 403, baseType: !7, size: 32, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2573, file: !50, line: 404, baseType: !441, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2573, file: !50, line: 405, baseType: !2584, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !141, line: 126, baseType: !439)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2573, file: !50, line: 406, baseType: !2584, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2507, file: !50, line: 440, baseType: !2515, size: 64, offset: 640)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !616, file: !56, line: 1426, baseType: !2588, size: 64, offset: 576)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2590)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !56, line: 49, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !616, file: !56, line: 1427, baseType: !172, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !616, file: !56, line: 1428, baseType: !172, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !616, file: !56, line: 1429, baseType: !172, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !616, file: !56, line: 1430, baseType: !404, size: 64, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !616, file: !56, line: 1431, baseType: !786, size: 256, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !616, file: !56, line: 1432, baseType: !180, size: 32, offset: 1152)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !616, file: !56, line: 1433, baseType: !766, size: 32, offset: 1184)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !616, file: !56, line: 1437, baseType: !2599, size: 64, offset: 1216)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !56, line: 1437, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !616, file: !56, line: 1449, baseType: !2604, size: 64, offset: 1280)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !420, line: 34, size: 64, elements: !2605)
!2605 = !{!2606}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2604, file: !420, line: 35, baseType: !423, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !616, file: !56, line: 1450, baseType: !140, size: 128, offset: 1344)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !616, file: !56, line: 1451, baseType: !2609, size: 64, offset: 1472)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !56, line: 699, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !616, file: !56, line: 1452, baseType: !1930, size: 64, offset: 1536)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !616, file: !56, line: 1453, baseType: !2613, size: 64, offset: 1600)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !56, line: 1453, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !616, file: !56, line: 1454, baseType: !657, size: 128, offset: 1664)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !616, file: !56, line: 1455, baseType: !7, size: 32, offset: 1792)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !616, file: !56, line: 1456, baseType: !2618, size: 2432, offset: 1856)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !50, line: 518, size: 2432, elements: !2619)
!2619 = !{!2620, !2621, !2622, !2624, !2656}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2618, file: !50, line: 519, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2618, file: !50, line: 520, baseType: !786, size: 256, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2618, file: !50, line: 521, baseType: !2623, size: 192, offset: 320)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 192, elements: !299)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2618, file: !50, line: 522, baseType: !2625, size: 1728, offset: 512)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2626, size: 1728, elements: !299)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !50, line: 222, size: 576, elements: !2627)
!2627 = !{!2628, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2626, file: !50, line: 223, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !50, line: 443, size: 256, elements: !2631)
!2631 = !{!2632, !2633, !2646, !2647}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2630, file: !50, line: 444, baseType: !180, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2630, file: !50, line: 445, baseType: !2634, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2636)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !50, line: 310, size: 512, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2636, file: !50, line: 311, baseType: !703, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2636, file: !50, line: 312, baseType: !703, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2636, file: !50, line: 313, baseType: !703, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2636, file: !50, line: 314, baseType: !703, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2636, file: !50, line: 315, baseType: !2428, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2636, file: !50, line: 316, baseType: !2428, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2636, file: !50, line: 317, baseType: !2428, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2636, file: !50, line: 318, baseType: !2500, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2630, file: !50, line: 446, baseType: !648, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2630, file: !50, line: 447, baseType: !2629, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2626, file: !50, line: 224, baseType: !180, size: 32, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2626, file: !50, line: 226, baseType: !140, size: 128, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2626, file: !50, line: 227, baseType: !172, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2626, file: !50, line: 228, baseType: !7, size: 32, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2626, file: !50, line: 229, baseType: !7, size: 32, offset: 352)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2626, file: !50, line: 230, baseType: !2464, size: 64, offset: 384)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2626, file: !50, line: 231, baseType: !2464, size: 64, offset: 448)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2626, file: !50, line: 232, baseType: !134, size: 64, offset: 512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2618, file: !50, line: 523, baseType: !2657, size: 192, offset: 2240)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2634, size: 192, elements: !299)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !616, file: !56, line: 1458, baseType: !2659, size: 2112, offset: 4288)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !56, line: 1410, size: 2112, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2659, file: !56, line: 1411, baseType: !180, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2659, file: !56, line: 1412, baseType: !1487, size: 128, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2659, file: !56, line: 1413, baseType: !2664, size: 1920, offset: 192)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2665, size: 1920, elements: !299)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2666, line: 12, size: 640, elements: !2667)
!2666 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2667 = !{!2668, !2676, !2678, !2683, !2684}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2665, file: !2666, line: 13, baseType: !2669, size: 320)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2670, line: 17, size: 320, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2671 = !{!2672, !2673, !2674, !2675}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2669, file: !2670, line: 18, baseType: !180, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2669, file: !2670, line: 19, baseType: !180, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2669, file: !2670, line: 20, baseType: !1487, size: 128, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2669, file: !2670, line: 22, baseType: !387, size: 128, align: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2665, file: !2666, line: 14, baseType: !2677, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2665, file: !2666, line: 15, baseType: !2679, size: 64, offset: 384)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2680, line: 16, size: 64, elements: !2681)
!2680 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2679, file: !2680, line: 17, baseType: !1217, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2665, file: !2666, line: 16, baseType: !1487, size: 128, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2665, file: !2666, line: 17, baseType: !766, size: 32, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !616, file: !56, line: 1465, baseType: !134, size: 64, offset: 6400)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !616, file: !56, line: 1468, baseType: !160, size: 32, offset: 6464)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !616, file: !56, line: 1470, baseType: !555, size: 64, offset: 6528)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !616, file: !56, line: 1471, baseType: !555, size: 64, offset: 6592)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !616, file: !56, line: 1473, baseType: !162, size: 32, offset: 6656)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !616, file: !56, line: 1474, baseType: !2691, size: 64, offset: 6720)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !56, line: 603, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !616, file: !56, line: 1477, baseType: !2694, size: 256, offset: 6784)
!2694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !2224)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !616, file: !56, line: 1478, baseType: !2696, size: 128, offset: 7040)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2697, line: 18, baseType: !2698)
!2697 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2697, line: 16, size: 128, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2698, file: !2697, line: 17, baseType: !2701, size: 128)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 128, elements: !1741)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !616, file: !56, line: 1480, baseType: !7, size: 32, offset: 7168)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !616, file: !56, line: 1481, baseType: !2704, size: 32, offset: 7200)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !141, line: 150, baseType: !7)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !616, file: !56, line: 1487, baseType: !1190, size: 192, offset: 7232)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !616, file: !56, line: 1493, baseType: !166, size: 64, offset: 7424)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !616, file: !56, line: 1495, baseType: !2708, size: 64, offset: 7488)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2710)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !402, line: 135, size: 1024, align: 512, elements: !2711)
!2711 = !{!2712, !2716, !2717, !2724, !2730, !2734, !2738, !2742, !2743, !2747, !2751, !2756, !2760}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2710, file: !402, line: 136, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!180, !404, !7}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2710, file: !402, line: 137, baseType: !2713, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2710, file: !402, line: 138, baseType: !2718, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!180, !2721, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2710, file: !402, line: 139, baseType: !2725, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!180, !2721, !7, !166, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2710, file: !402, line: 141, baseType: !2731, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!180, !2721}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2710, file: !402, line: 142, baseType: !2735, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!180, !404}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2710, file: !402, line: 143, baseType: !2739, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !404}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2710, file: !402, line: 144, baseType: !2739, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2710, file: !402, line: 145, baseType: !2744, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !404, !447}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2710, file: !402, line: 146, baseType: !2748, size: 64, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!298, !404, !298, !180}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2710, file: !402, line: 147, baseType: !2752, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!400, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2710, file: !402, line: 148, baseType: !2757, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!180, !565, !231}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2710, file: !402, line: 149, baseType: !2761, size: 64, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!404, !404, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !616, file: !56, line: 1500, baseType: !180, size: 32, offset: 7552)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !616, file: !56, line: 1502, baseType: !2768, size: 448, offset: 7616)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2412, line: 60, size: 448, elements: !2769)
!2769 = !{!2770, !2775, !2776, !2777, !2778, !2779, !2780}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2768, file: !2412, line: 61, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!172, !2774, !2410}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2768, file: !2412, line: 63, baseType: !2771, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2768, file: !2412, line: 66, baseType: !333, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2768, file: !2412, line: 67, baseType: !180, size: 32, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2768, file: !2412, line: 68, baseType: !7, size: 32, offset: 224)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2768, file: !2412, line: 71, baseType: !140, size: 128, offset: 256)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2768, file: !2412, line: 77, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !616, file: !56, line: 1505, baseType: !790, size: 64, offset: 8064)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !616, file: !56, line: 1508, baseType: !790, size: 64, offset: 8128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !616, file: !56, line: 1511, baseType: !180, size: 32, offset: 8192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !616, file: !56, line: 1514, baseType: !926, size: 32, offset: 8224)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !616, file: !56, line: 1517, baseType: !2787, size: 64, offset: 8256)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1965, line: 18, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !616, file: !56, line: 1518, baseType: !653, size: 64, offset: 8320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !616, file: !56, line: 1525, baseType: !1719, size: 64, offset: 8384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !616, file: !56, line: 1532, baseType: !2792, size: 64, offset: 8448)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2793, line: 52, size: 64, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2794 = !{!2795}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2792, file: !2793, line: 53, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2793, line: 40, size: 256, elements: !2798)
!2798 = !{!2799, !2800, !2805}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2797, file: !2793, line: 42, baseType: !257)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2797, file: !2793, line: 44, baseType: !2801, size: 192)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2793, line: 28, size: 192, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2801, file: !2793, line: 29, baseType: !140, size: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2801, file: !2793, line: 31, baseType: !333, size: 64, offset: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2797, file: !2793, line: 49, baseType: !333, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !616, file: !56, line: 1533, baseType: !2792, size: 64, offset: 8512)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !616, file: !56, line: 1534, baseType: !387, size: 128, align: 64, offset: 8576)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !616, file: !56, line: 1535, baseType: !1964, size: 256, offset: 8704)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !616, file: !56, line: 1537, baseType: !1190, size: 192, offset: 8960)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !616, file: !56, line: 1542, baseType: !180, size: 32, offset: 9152)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !616, file: !56, line: 1545, baseType: !257, offset: 9184)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !616, file: !56, line: 1546, baseType: !140, size: 128, offset: 9216)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !616, file: !56, line: 1548, baseType: !257, offset: 9344)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !616, file: !56, line: 1549, baseType: !140, size: 128, offset: 9344)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !448, file: !56, line: 624, baseType: !752, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !448, file: !56, line: 631, baseType: !172, size: 64, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !56, line: 639, baseType: !2818, size: 32, offset: 384)
!2818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !56, line: 639, size: 32, elements: !2819)
!2819 = !{!2820, !2822}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2818, file: !56, line: 640, baseType: !2821, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2818, file: !56, line: 641, baseType: !7, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !448, file: !56, line: 643, baseType: !529, size: 32, offset: 416)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !448, file: !56, line: 644, baseType: !547, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !448, file: !56, line: 645, baseType: !551, size: 128, offset: 512)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !448, file: !56, line: 646, baseType: !551, size: 128, offset: 640)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !448, file: !56, line: 647, baseType: !551, size: 128, offset: 768)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !448, file: !56, line: 648, baseType: !257, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !448, file: !56, line: 649, baseType: !176, size: 16, offset: 896)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !448, file: !56, line: 650, baseType: !1353, size: 8, offset: 912)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !448, file: !56, line: 651, baseType: !1353, size: 8, offset: 920)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !448, file: !56, line: 652, baseType: !2584, size: 64, offset: 960)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !448, file: !56, line: 659, baseType: !172, size: 64, offset: 1024)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !448, file: !56, line: 660, baseType: !786, size: 256, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !448, file: !56, line: 662, baseType: !172, size: 64, offset: 1344)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !448, file: !56, line: 663, baseType: !172, size: 64, offset: 1408)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !448, file: !56, line: 665, baseType: !657, size: 128, offset: 1472)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !448, file: !56, line: 666, baseType: !140, size: 128, offset: 1600)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !448, file: !56, line: 675, baseType: !140, size: 128, offset: 1728)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !448, file: !56, line: 676, baseType: !140, size: 128, offset: 1856)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !448, file: !56, line: 677, baseType: !140, size: 128, offset: 1984)
!2842 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !56, line: 678, baseType: !2843, size: 128, offset: 2112)
!2843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !56, line: 678, size: 128, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2843, file: !56, line: 679, baseType: !653, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2843, file: !56, line: 680, baseType: !387, size: 128, align: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !448, file: !56, line: 682, baseType: !792, size: 64, offset: 2240)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !448, file: !56, line: 683, baseType: !792, size: 64, offset: 2304)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !448, file: !56, line: 684, baseType: !766, size: 32, offset: 2368)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !448, file: !56, line: 685, baseType: !766, size: 32, offset: 2400)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !448, file: !56, line: 686, baseType: !766, size: 32, offset: 2432)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !448, file: !56, line: 688, baseType: !766, size: 32, offset: 2464)
!2853 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !56, line: 690, baseType: !2854, size: 64, offset: 2496)
!2854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !56, line: 690, size: 64, elements: !2855)
!2855 = !{!2856, !3088}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2854, file: !56, line: 691, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2859)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !56, line: 1822, size: 2048, elements: !2860)
!2860 = !{!2861, !2862, !2866, !2871, !2875, !2876, !2877, !2881, !2894, !2895, !2912, !2916, !2917, !2921, !2922, !2926, !2931, !2932, !2936, !2940, !3048, !3052, !3053, !3057, !3058, !3062, !3066, !3071, !3075, !3079, !3083, !3087}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2859, file: !56, line: 1823, baseType: !648, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2859, file: !56, line: 1824, baseType: !2863, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!547, !374, !547, !180}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2859, file: !56, line: 1825, baseType: !2867, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!329, !374, !298, !344, !2870}
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2859, file: !56, line: 1826, baseType: !2872, size: 64, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!329, !374, !166, !344, !2870}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2859, file: !56, line: 1827, baseType: !863, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2859, file: !56, line: 1828, baseType: !863, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2859, file: !56, line: 1829, baseType: !2878, size: 64, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!180, !866, !231}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2859, file: !56, line: 1830, baseType: !2882, size: 64, offset: 448)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!180, !374, !2885}
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !56, line: 1776, size: 128, elements: !2887)
!2887 = !{!2888, !2893}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2886, file: !56, line: 1777, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !56, line: 1773, baseType: !2890)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!180, !2885, !166, !180, !547, !439, !7}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2886, file: !56, line: 1778, baseType: !547, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2859, file: !56, line: 1831, baseType: !2882, size: 64, offset: 512)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2859, file: !56, line: 1832, baseType: !2896, size: 64, offset: 576)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!2899, !374, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2900, line: 52, baseType: !7)
!2900 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2903, line: 43, size: 128, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2904 = !{!2905, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2902, file: !2903, line: 44, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2903, line: 37, baseType: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !374, !2910, !2901}
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2902, file: !2903, line: 45, baseType: !2899, size: 32, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2859, file: !56, line: 1833, baseType: !2913, size: 64, offset: 640)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!333, !374, !7, !172}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2859, file: !56, line: 1834, baseType: !2913, size: 64, offset: 704)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2859, file: !56, line: 1835, baseType: !2918, size: 64, offset: 768)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!180, !374, !998}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2859, file: !56, line: 1836, baseType: !172, size: 64, offset: 832)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2859, file: !56, line: 1837, baseType: !2923, size: 64, offset: 896)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!180, !447, !374}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2859, file: !56, line: 1838, baseType: !2927, size: 64, offset: 960)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!180, !374, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !56, line: 1007, baseType: !134)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2859, file: !56, line: 1839, baseType: !2923, size: 64, offset: 1024)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2859, file: !56, line: 1840, baseType: !2933, size: 64, offset: 1088)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!180, !374, !547, !547, !180}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2859, file: !56, line: 1841, baseType: !2937, size: 64, offset: 1152)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!180, !180, !374, !180}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2859, file: !56, line: 1842, baseType: !2941, size: 64, offset: 1216)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!180, !374, !180, !2944}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !56, line: 1062, size: 1664, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2978, !2979, !2980, !2993, !3024}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2945, file: !56, line: 1063, baseType: !2944, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2945, file: !56, line: 1064, baseType: !140, size: 128, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2945, file: !56, line: 1065, baseType: !657, size: 128, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2945, file: !56, line: 1066, baseType: !140, size: 128, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2945, file: !56, line: 1069, baseType: !140, size: 128, offset: 448)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2945, file: !56, line: 1072, baseType: !2930, size: 64, offset: 576)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2945, file: !56, line: 1073, baseType: !7, size: 32, offset: 640)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2945, file: !56, line: 1074, baseType: !445, size: 8, offset: 672)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2945, file: !56, line: 1075, baseType: !7, size: 32, offset: 704)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2945, file: !56, line: 1076, baseType: !180, size: 32, offset: 736)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2945, file: !56, line: 1077, baseType: !1487, size: 128, offset: 768)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2945, file: !56, line: 1078, baseType: !374, size: 64, offset: 896)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2945, file: !56, line: 1079, baseType: !547, size: 64, offset: 960)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2945, file: !56, line: 1080, baseType: !547, size: 64, offset: 1024)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2945, file: !56, line: 1082, baseType: !2962, size: 64, offset: 1088)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !56, line: 1314, size: 320, elements: !2964)
!2964 = !{!2965, !2973, !2974, !2975, !2976, !2977}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2963, file: !56, line: 1315, baseType: !2966)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2967, line: 20, baseType: !2968)
!2967 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2967, line: 11, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2968, file: !2967, line: 12, baseType: !2971)
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !269, line: 33, baseType: !2972)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !269, line: 31, elements: !271)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2963, file: !56, line: 1316, baseType: !180, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2963, file: !56, line: 1317, baseType: !180, size: 32, offset: 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2963, file: !56, line: 1318, baseType: !2962, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2963, file: !56, line: 1319, baseType: !374, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2963, file: !56, line: 1320, baseType: !387, size: 128, align: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2945, file: !56, line: 1084, baseType: !172, size: 64, offset: 1152)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2945, file: !56, line: 1085, baseType: !172, size: 64, offset: 1216)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2945, file: !56, line: 1087, baseType: !2981, size: 64, offset: 1280)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2983)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !56, line: 1011, size: 128, elements: !2984)
!2984 = !{!2985, !2989}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2983, file: !56, line: 1012, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2944, !2944}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2983, file: !56, line: 1013, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{null, !2944}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2945, file: !56, line: 1088, baseType: !2994, size: 64, offset: 1344)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2996)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !56, line: 1016, size: 512, elements: !2997)
!2997 = !{!2998, !3002, !3006, !3007, !3011, !3015, !3019, !3023}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2996, file: !56, line: 1017, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!2930, !2930}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2996, file: !56, line: 1018, baseType: !3003, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !2930}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2996, file: !56, line: 1019, baseType: !2990, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2996, file: !56, line: 1020, baseType: !3008, size: 64, offset: 192)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!180, !2944, !180}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2996, file: !56, line: 1021, baseType: !3012, size: 64, offset: 256)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!231, !2944}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2996, file: !56, line: 1022, baseType: !3016, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!180, !2944, !180, !144}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2996, file: !56, line: 1023, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2944, !840}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2996, file: !56, line: 1024, baseType: !3012, size: 64, offset: 448)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2945, file: !56, line: 1097, baseType: !3025, size: 256, offset: 1408)
!3025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2945, file: !56, line: 1089, size: 256, elements: !3026)
!3026 = !{!3027, !3036, !3042}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3025, file: !56, line: 1090, baseType: !3028, size: 256)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3029, line: 10, size: 256, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3030 = !{!3031, !3032, !3035}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3028, file: !3029, line: 11, baseType: !160, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3028, file: !3029, line: 12, baseType: !3033, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3029, line: 5, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3028, file: !3029, line: 13, baseType: !140, size: 128, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3025, file: !56, line: 1091, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3029, line: 17, size: 64, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3037, file: !3029, line: 18, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3029, line: 16, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3025, file: !56, line: 1096, baseType: !3043, size: 192)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3025, file: !56, line: 1092, size: 192, elements: !3044)
!3044 = !{!3045, !3046, !3047}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3043, file: !56, line: 1093, baseType: !140, size: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3043, file: !56, line: 1094, baseType: !180, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3043, file: !56, line: 1095, baseType: !7, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2859, file: !56, line: 1843, baseType: !3049, size: 64, offset: 1280)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!329, !374, !739, !180, !344, !2870, !180}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2859, file: !56, line: 1844, baseType: !1118, size: 64, offset: 1344)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2859, file: !56, line: 1845, baseType: !3054, size: 64, offset: 1408)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!180, !180}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2859, file: !56, line: 1846, baseType: !2941, size: 64, offset: 1472)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2859, file: !56, line: 1847, baseType: !3059, size: 64, offset: 1536)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!329, !2105, !374, !2870, !344, !7}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2859, file: !56, line: 1848, baseType: !3063, size: 64, offset: 1600)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!329, !374, !2870, !2105, !344, !7}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2859, file: !56, line: 1849, baseType: !3067, size: 64, offset: 1664)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!180, !374, !333, !3070, !840}
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2859, file: !56, line: 1850, baseType: !3072, size: 64, offset: 1728)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!333, !374, !180, !547, !547}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2859, file: !56, line: 1852, baseType: !3076, size: 64, offset: 1792)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !729, !374}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2859, file: !56, line: 1856, baseType: !3080, size: 64, offset: 1856)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!329, !374, !547, !374, !547, !344, !7}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2859, file: !56, line: 1858, baseType: !3084, size: 64, offset: 1920)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!547, !374, !547, !374, !547, !547, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2859, file: !56, line: 1861, baseType: !2933, size: 64, offset: 1984)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2854, file: !56, line: 692, baseType: !682, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !448, file: !56, line: 694, baseType: !3090, size: 64, offset: 2560)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !56, line: 1100, size: 384, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3091, file: !56, line: 1101, baseType: !257)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3091, file: !56, line: 1102, baseType: !140, size: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3091, file: !56, line: 1103, baseType: !140, size: 128, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3091, file: !56, line: 1104, baseType: !140, size: 128, offset: 256)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !448, file: !56, line: 695, baseType: !753, size: 1216, align: 64, offset: 2624)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !448, file: !56, line: 696, baseType: !140, size: 128, offset: 3840)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !448, file: !56, line: 697, baseType: !3100, size: 64, offset: 3968)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !448, file: !56, line: 697, size: 64, elements: !3101)
!3101 = !{!3102, !3103, !3104, !3115, !3116}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3100, file: !56, line: 698, baseType: !2105, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3100, file: !56, line: 699, baseType: !2609, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3100, file: !56, line: 700, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3107, line: 14, size: 832, elements: !3108)
!3107 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3108 = !{!3109, !3110, !3111, !3112, !3113, !3114}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3106, file: !3107, line: 15, baseType: !244, size: 512)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3106, file: !3107, line: 16, baseType: !648, size: 64, offset: 512)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3106, file: !3107, line: 17, baseType: !2857, size: 64, offset: 576)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3106, file: !3107, line: 18, baseType: !140, size: 128, offset: 640)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3106, file: !3107, line: 19, baseType: !529, size: 32, offset: 768)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3106, file: !3107, line: 20, baseType: !7, size: 32, offset: 800)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3100, file: !56, line: 701, baseType: !298, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3100, file: !56, line: 702, baseType: !7, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !448, file: !56, line: 705, baseType: !162, size: 32, offset: 4032)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !448, file: !56, line: 708, baseType: !162, size: 32, offset: 4064)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !448, file: !56, line: 709, baseType: !2691, size: 64, offset: 4096)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !448, file: !56, line: 720, baseType: !134, size: 64, offset: 4160)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !405, file: !402, line: 98, baseType: !3122, size: 256, offset: 448)
!3122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !2224)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !405, file: !402, line: 101, baseType: !3124, size: 32, offset: 704)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3125, line: 25, size: 32, elements: !3126)
!3125 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3126 = !{!3127}
!3127 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3125, line: 26, baseType: !3128, size: 32)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3124, file: !3125, line: 26, size: 32, elements: !3129)
!3129 = !{!3130}
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !3128, file: !3125, line: 30, baseType: !3131, size: 32)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3128, file: !3125, line: 30, size: 32, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3131, file: !3125, line: 31, baseType: !257)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3131, file: !3125, line: 32, baseType: !180, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !405, file: !402, line: 102, baseType: !2708, size: 64, offset: 768)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !405, file: !402, line: 103, baseType: !615, size: 64, offset: 832)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !405, file: !402, line: 104, baseType: !172, size: 64, offset: 896)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !405, file: !402, line: 105, baseType: !134, size: 64, offset: 960)
!3139 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !402, line: 107, baseType: !3140, size: 128, offset: 1024)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !402, line: 107, size: 128, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3140, file: !402, line: 108, baseType: !140, size: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3140, file: !402, line: 109, baseType: !2910, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !405, file: !402, line: 111, baseType: !140, size: 128, offset: 1152)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !405, file: !402, line: 112, baseType: !140, size: 128, offset: 1280)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !405, file: !402, line: 120, baseType: !3147, size: 128, offset: 1408)
!3147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !402, line: 116, size: 128, elements: !3148)
!3148 = !{!3149, !3150, !3151}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3147, file: !402, line: 117, baseType: !657, size: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3147, file: !402, line: 118, baseType: !419, size: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3147, file: !402, line: 119, baseType: !387, size: 128, align: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !375, file: !56, line: 922, baseType: !447, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !375, file: !56, line: 923, baseType: !2857, size: 64, offset: 320)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !375, file: !56, line: 929, baseType: !257, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !375, file: !56, line: 930, baseType: !55, size: 32, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !375, file: !56, line: 931, baseType: !790, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !375, file: !56, line: 932, baseType: !7, size: 32, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !375, file: !56, line: 933, baseType: !2704, size: 32, offset: 544)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !375, file: !56, line: 934, baseType: !1190, size: 192, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !375, file: !56, line: 935, baseType: !547, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !375, file: !56, line: 936, baseType: !3162, size: 192, offset: 832)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !56, line: 885, size: 192, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3162, file: !56, line: 886, baseType: !2966)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3162, file: !56, line: 887, baseType: !1477, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3162, file: !56, line: 888, baseType: !64, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3162, file: !56, line: 889, baseType: !453, size: 32, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3162, file: !56, line: 889, baseType: !453, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3162, file: !56, line: 890, baseType: !180, size: 32, offset: 160)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !375, file: !56, line: 937, baseType: !1553, size: 64, offset: 1024)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !375, file: !56, line: 938, baseType: !3172, size: 256, offset: 1088)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !56, line: 896, size: 256, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3177, !3178, !3179}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3172, file: !56, line: 897, baseType: !172, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3172, file: !56, line: 898, baseType: !7, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3172, file: !56, line: 899, baseType: !7, size: 32, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3172, file: !56, line: 902, baseType: !7, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3172, file: !56, line: 903, baseType: !7, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3172, file: !56, line: 904, baseType: !547, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !375, file: !56, line: 940, baseType: !439, size: 64, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !375, file: !56, line: 945, baseType: !134, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !375, file: !56, line: 949, baseType: !140, size: 128, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !375, file: !56, line: 950, baseType: !140, size: 128, offset: 1600)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !375, file: !56, line: 952, baseType: !752, size: 64, offset: 1728)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !375, file: !56, line: 953, baseType: !926, size: 32, offset: 1792)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !375, file: !56, line: 954, baseType: !926, size: 32, offset: 1824)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !365, file: !323, line: 174, baseType: !371, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !365, file: !323, line: 176, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!180, !374, !250, !364, !998}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !353, file: !323, line: 90, baseType: !348, size: 64, offset: 192)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !353, file: !323, line: 91, baseType: !3194, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !313, file: !245, line: 143, baseType: !3196, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!3199, !250}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !3202)
!3202 = !{!3203, !3204, !3208, !3212, !3218, !3222}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3201, file: !73, line: 40, baseType: !72, size: 32)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3201, file: !73, line: 41, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!231}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3201, file: !73, line: 42, baseType: !3209, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!134}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3201, file: !73, line: 43, baseType: !3213, size: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!237, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3201, file: !73, line: 44, baseType: !3219, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!237}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3201, file: !73, line: 45, baseType: !486, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !313, file: !245, line: 144, baseType: !3224, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!237, !250}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !313, file: !245, line: 145, baseType: !3228, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !250, !3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !244, file: !245, line: 70, baseType: !3234, size: 64, offset: 384)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3236, line: 123, size: 1024, elements: !3237)
!3236 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3366, !3367, !3368, !3369, !3370}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3235, file: !3236, line: 124, baseType: !766, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3235, file: !3236, line: 125, baseType: !766, size: 32, offset: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3235, file: !3236, line: 135, baseType: !3234, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3235, file: !3236, line: 136, baseType: !166, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3235, file: !3236, line: 138, baseType: !779, size: 192, align: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3235, file: !3236, line: 140, baseType: !237, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3235, file: !3236, line: 141, baseType: !7, size: 32, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !3236, line: 142, baseType: !3246, size: 256, offset: 512)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !3236, line: 142, size: 256, elements: !3247)
!3247 = !{!3248, !3294, !3298}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3246, file: !3236, line: 143, baseType: !3249, size: 192)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3236, line: 91, size: 192, elements: !3250)
!3250 = !{!3251, !3252, !3253}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3249, file: !3236, line: 92, baseType: !172, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3249, file: !3236, line: 94, baseType: !775, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3249, file: !3236, line: 100, baseType: !3254, size: 64, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3236, line: 180, size: 704, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3266, !3267, !3268, !3292, !3293}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3255, file: !3236, line: 182, baseType: !3234, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3255, file: !3236, line: 183, baseType: !7, size: 32, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3255, file: !3236, line: 186, baseType: !3260, size: 192, offset: 128)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3261, line: 19, size: 192, elements: !3262)
!3261 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3262 = !{!3263, !3264, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3260, file: !3261, line: 20, baseType: !757, size: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3260, file: !3261, line: 21, baseType: !7, size: 32, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3260, file: !3261, line: 22, baseType: !7, size: 32, offset: 160)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3255, file: !3236, line: 187, baseType: !160, size: 32, offset: 320)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3255, file: !3236, line: 188, baseType: !160, size: 32, offset: 352)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3255, file: !3236, line: 189, baseType: !3269, size: 64, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3236, line: 168, size: 320, elements: !3271)
!3271 = !{!3272, !3276, !3280, !3284, !3288}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3270, file: !3236, line: 169, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!180, !729, !3254}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3270, file: !3236, line: 171, baseType: !3277, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!180, !3234, !166, !339}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3270, file: !3236, line: 173, baseType: !3281, size: 64, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!180, !3234}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3270, file: !3236, line: 174, baseType: !3285, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!180, !3234, !3234, !166}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3270, file: !3236, line: 176, baseType: !3289, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!180, !729, !3234, !3254}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3255, file: !3236, line: 192, baseType: !140, size: 128, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3255, file: !3236, line: 194, baseType: !1487, size: 128, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3246, file: !3236, line: 144, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3236, line: 103, size: 64, elements: !3296)
!3296 = !{!3297}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3295, file: !3236, line: 104, baseType: !3234, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3246, file: !3236, line: 145, baseType: !3299, size: 256)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3236, line: 107, size: 256, elements: !3300)
!3300 = !{!3301, !3361, !3364, !3365}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3299, file: !3236, line: 108, baseType: !3302, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3236, line: 217, size: 768, elements: !3305)
!3305 = !{!3306, !3326, !3330, !3334, !3338, !3342, !3346, !3350, !3351, !3352, !3353, !3357}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3304, file: !3236, line: 222, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!180, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3236, line: 197, size: 1088, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3311, file: !3236, line: 199, baseType: !3234, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3311, file: !3236, line: 200, baseType: !374, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3311, file: !3236, line: 201, baseType: !729, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3311, file: !3236, line: 202, baseType: !134, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3311, file: !3236, line: 205, baseType: !1190, size: 192, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3311, file: !3236, line: 206, baseType: !1190, size: 192, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3311, file: !3236, line: 207, baseType: !180, size: 32, offset: 640)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3311, file: !3236, line: 208, baseType: !140, size: 128, offset: 704)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3311, file: !3236, line: 209, baseType: !298, size: 64, offset: 832)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3311, file: !3236, line: 211, baseType: !344, size: 64, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3311, file: !3236, line: 212, baseType: !231, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3311, file: !3236, line: 213, baseType: !231, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3311, file: !3236, line: 214, baseType: !1026, size: 64, offset: 1024)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3304, file: !3236, line: 223, baseType: !3327, size: 64, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !3310}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3304, file: !3236, line: 236, baseType: !3331, size: 64, offset: 128)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!180, !729, !134}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3304, file: !3236, line: 238, baseType: !3335, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!134, !729, !2870}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3304, file: !3236, line: 239, baseType: !3339, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!134, !729, !134, !2870}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3304, file: !3236, line: 240, baseType: !3343, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !729, !134}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3304, file: !3236, line: 242, baseType: !3347, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!329, !3310, !298, !344, !547}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3304, file: !3236, line: 252, baseType: !344, size: 64, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3304, file: !3236, line: 259, baseType: !231, size: 8, offset: 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3304, file: !3236, line: 260, baseType: !3347, size: 64, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3304, file: !3236, line: 263, baseType: !3354, size: 64, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!2899, !3310, !2901}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3304, file: !3236, line: 266, baseType: !3358, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!180, !3310, !998}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3299, file: !3236, line: 109, baseType: !3362, size: 64, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3236, line: 31, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3299, file: !3236, line: 110, baseType: !547, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3299, file: !3236, line: 111, baseType: !3234, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3235, file: !3236, line: 148, baseType: !134, size: 64, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3235, file: !3236, line: 154, baseType: !439, size: 64, offset: 832)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3235, file: !3236, line: 156, baseType: !176, size: 16, offset: 896)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3235, file: !3236, line: 157, baseType: !339, size: 16, offset: 912)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3235, file: !3236, line: 158, baseType: !3371, size: 64, offset: 960)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3236, line: 32, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !244, file: !245, line: 71, baseType: !3374, size: 32, offset: 448)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3375, line: 19, size: 32, elements: !3376)
!3375 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3374, file: !3375, line: 20, baseType: !1231, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !244, file: !245, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !244, file: !245, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !244, file: !245, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !244, file: !245, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !244, file: !245, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !85, line: 463, baseType: !3384, size: 64, offset: 512)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !241, file: !85, line: 465, baseType: !3386, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !85, line: 36, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !241, file: !85, line: 467, baseType: !166, size: 64, offset: 640)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !85, line: 468, baseType: !3390, size: 64, offset: 704)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !85, line: 87, size: 384, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3400, !3405, !3409}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3392, file: !85, line: 88, baseType: !166, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3392, file: !85, line: 89, baseType: !350, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3392, file: !85, line: 90, baseType: !3397, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!180, !3384, !293}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3392, file: !85, line: 91, baseType: !3401, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!298, !3384, !3404, !3231, !3232}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3392, file: !85, line: 93, baseType: !3406, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !3384}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3392, file: !85, line: 95, baseType: !3410, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !92, line: 278, size: 1472, elements: !3413)
!3413 = !{!3414, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3412, file: !92, line: 279, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!180, !3384}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3412, file: !92, line: 280, baseType: !3406, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3412, file: !92, line: 281, baseType: !3415, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3412, file: !92, line: 282, baseType: !3415, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3412, file: !92, line: 283, baseType: !3415, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3412, file: !92, line: 284, baseType: !3415, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3412, file: !92, line: 285, baseType: !3415, size: 64, offset: 384)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3412, file: !92, line: 286, baseType: !3415, size: 64, offset: 448)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3412, file: !92, line: 287, baseType: !3415, size: 64, offset: 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3412, file: !92, line: 288, baseType: !3415, size: 64, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3412, file: !92, line: 289, baseType: !3415, size: 64, offset: 640)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3412, file: !92, line: 290, baseType: !3415, size: 64, offset: 704)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3412, file: !92, line: 291, baseType: !3415, size: 64, offset: 768)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3412, file: !92, line: 292, baseType: !3415, size: 64, offset: 832)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3412, file: !92, line: 293, baseType: !3415, size: 64, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3412, file: !92, line: 294, baseType: !3415, size: 64, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3412, file: !92, line: 295, baseType: !3415, size: 64, offset: 1024)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3412, file: !92, line: 296, baseType: !3415, size: 64, offset: 1088)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3412, file: !92, line: 297, baseType: !3415, size: 64, offset: 1152)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3412, file: !92, line: 298, baseType: !3415, size: 64, offset: 1216)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3412, file: !92, line: 299, baseType: !3415, size: 64, offset: 1280)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3412, file: !92, line: 300, baseType: !3415, size: 64, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3412, file: !92, line: 301, baseType: !3415, size: 64, offset: 1408)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !241, file: !85, line: 470, baseType: !3441, size: 64, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3443, line: 82, size: 1408, elements: !3444)
!3443 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450, !3451, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3508, !3511, !3512}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3442, file: !3443, line: 83, baseType: !166, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3442, file: !3443, line: 84, baseType: !166, size: 64, offset: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3442, file: !3443, line: 85, baseType: !3384, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3442, file: !3443, line: 86, baseType: !350, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3442, file: !3443, line: 87, baseType: !350, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3442, file: !3443, line: 88, baseType: !350, size: 64, offset: 320)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3442, file: !3443, line: 90, baseType: !3452, size: 64, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!180, !3384, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !79, line: 95, size: 1152, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3461, !3462, !3463, !3464, !3468, !3472, !3473, !3474, !3475, !3476, !3484, !3485, !3486, !3487, !3488, !3489}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3456, file: !79, line: 96, baseType: !166, size: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3456, file: !79, line: 97, baseType: !3441, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3456, file: !79, line: 99, baseType: !648, size: 64, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3456, file: !79, line: 100, baseType: !166, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3456, file: !79, line: 102, baseType: !231, size: 8, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3456, file: !79, line: 103, baseType: !78, size: 32, offset: 288)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3456, file: !79, line: 105, baseType: !3465, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3467)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !79, line: 105, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3456, file: !79, line: 106, baseType: !3469, size: 64, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !79, line: 106, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3456, file: !79, line: 108, baseType: !3415, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3456, file: !79, line: 109, baseType: !3406, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3456, file: !79, line: 110, baseType: !3415, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3456, file: !79, line: 111, baseType: !3406, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3456, file: !79, line: 112, baseType: !3477, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!180, !3384, !3480}
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !92, line: 52, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !92, line: 50, size: 32, elements: !3482)
!3482 = !{!3483}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3481, file: !92, line: 51, baseType: !180, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3456, file: !79, line: 113, baseType: !3415, size: 64, offset: 768)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3456, file: !79, line: 114, baseType: !350, size: 64, offset: 832)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3456, file: !79, line: 115, baseType: !350, size: 64, offset: 896)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3456, file: !79, line: 117, baseType: !3410, size: 64, offset: 960)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3456, file: !79, line: 118, baseType: !3406, size: 64, offset: 1024)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3456, file: !79, line: 120, baseType: !3490, size: 64, offset: 1088)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !79, line: 120, flags: DIFlagFwdDecl)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3442, file: !3443, line: 91, baseType: !3397, size: 64, offset: 448)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3442, file: !3443, line: 92, baseType: !3415, size: 64, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3442, file: !3443, line: 93, baseType: !3406, size: 64, offset: 576)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3442, file: !3443, line: 94, baseType: !3415, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3442, file: !3443, line: 95, baseType: !3406, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3442, file: !3443, line: 97, baseType: !3415, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3442, file: !3443, line: 98, baseType: !3415, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3442, file: !3443, line: 100, baseType: !3477, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3442, file: !3443, line: 101, baseType: !3415, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3442, file: !3443, line: 103, baseType: !3415, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3442, file: !3443, line: 105, baseType: !3415, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3442, file: !3443, line: 107, baseType: !3410, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3442, file: !3443, line: 109, baseType: !3505, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3507)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3443, line: 109, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3442, file: !3443, line: 111, baseType: !3509, size: 64, offset: 1280)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3443, line: 111, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3442, file: !3443, line: 112, baseType: !663, offset: 1344)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3442, file: !3443, line: 114, baseType: !231, size: 8, offset: 1344)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !241, file: !85, line: 471, baseType: !3455, size: 64, offset: 832)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !241, file: !85, line: 473, baseType: !134, size: 64, offset: 896)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !241, file: !85, line: 475, baseType: !134, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !241, file: !85, line: 480, baseType: !1190, size: 192, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !241, file: !85, line: 484, baseType: !3518, size: 576, offset: 1216)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !85, line: 361, size: 576, elements: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3518, file: !85, line: 362, baseType: !140, size: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3518, file: !85, line: 363, baseType: !140, size: 128, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3518, file: !85, line: 364, baseType: !140, size: 128, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3518, file: !85, line: 365, baseType: !140, size: 128, offset: 384)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3518, file: !85, line: 366, baseType: !231, size: 8, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3518, file: !85, line: 367, baseType: !84, size: 32, offset: 544)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !241, file: !85, line: 485, baseType: !3527, size: 2304, offset: 1792)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !92, line: 565, size: 2304, elements: !3528)
!3528 = !{!3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3624, !3628}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3527, file: !92, line: 566, baseType: !3480, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3527, file: !92, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3527, file: !92, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3527, file: !92, line: 569, baseType: !231, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3527, file: !92, line: 570, baseType: !231, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3527, file: !92, line: 571, baseType: !231, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3527, file: !92, line: 572, baseType: !231, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3527, file: !92, line: 573, baseType: !231, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3527, file: !92, line: 574, baseType: !231, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3527, file: !92, line: 575, baseType: !231, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3527, file: !92, line: 576, baseType: !231, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3527, file: !92, line: 577, baseType: !160, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3527, file: !92, line: 578, baseType: !257, offset: 96)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3527, file: !92, line: 580, baseType: !140, size: 128, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3527, file: !92, line: 581, baseType: !1508, size: 192, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3527, file: !92, line: 582, baseType: !3545, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3547, line: 43, size: 1472, elements: !3548)
!3547 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3556, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3546, file: !3547, line: 44, baseType: !166, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3546, file: !3547, line: 45, baseType: !180, size: 32, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3546, file: !3547, line: 46, baseType: !140, size: 128, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3546, file: !3547, line: 47, baseType: !257, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3546, file: !3547, line: 48, baseType: !3554, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !92, line: 533, flags: DIFlagFwdDecl)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3546, file: !3547, line: 49, baseType: !3557, size: 320, offset: 320)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3558, line: 11, size: 320, elements: !3559)
!3558 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3559 = !{!3560, !3561, !3562, !3567}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3557, file: !3558, line: 16, baseType: !657, size: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3557, file: !3558, line: 17, baseType: !172, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3557, file: !3558, line: 18, baseType: !3563, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3557, file: !3558, line: 19, baseType: !160, size: 32, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3546, file: !3547, line: 50, baseType: !172, size: 64, offset: 640)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3546, file: !3547, line: 51, baseType: !1301, size: 64, offset: 704)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3546, file: !3547, line: 52, baseType: !1301, size: 64, offset: 768)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3546, file: !3547, line: 53, baseType: !1301, size: 64, offset: 832)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3546, file: !3547, line: 54, baseType: !1301, size: 64, offset: 896)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3546, file: !3547, line: 55, baseType: !1301, size: 64, offset: 960)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3546, file: !3547, line: 56, baseType: !172, size: 64, offset: 1024)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3546, file: !3547, line: 57, baseType: !172, size: 64, offset: 1088)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3546, file: !3547, line: 58, baseType: !172, size: 64, offset: 1152)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3546, file: !3547, line: 59, baseType: !172, size: 64, offset: 1216)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3546, file: !3547, line: 60, baseType: !172, size: 64, offset: 1280)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3546, file: !3547, line: 61, baseType: !3384, size: 64, offset: 1344)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3546, file: !3547, line: 62, baseType: !231, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3546, file: !3547, line: 63, baseType: !231, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3527, file: !92, line: 583, baseType: !231, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3527, file: !92, line: 584, baseType: !231, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3527, file: !92, line: 585, baseType: !231, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3527, file: !92, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3527, file: !92, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3527, file: !92, line: 592, baseType: !1293, size: 512, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3527, file: !92, line: 593, baseType: !439, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3527, file: !92, line: 594, baseType: !1964, size: 256, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3527, file: !92, line: 595, baseType: !1487, size: 128, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3527, file: !92, line: 596, baseType: !3554, size: 64, offset: 1536)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3527, file: !92, line: 597, baseType: !766, size: 32, offset: 1600)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3527, file: !92, line: 598, baseType: !766, size: 32, offset: 1632)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3527, file: !92, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3527, file: !92, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3527, file: !92, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3527, file: !92, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3527, file: !92, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3527, file: !92, line: 604, baseType: !231, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3527, file: !92, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3527, file: !92, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3527, file: !92, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3527, file: !92, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3527, file: !92, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3527, file: !92, line: 610, baseType: !7, size: 32, offset: 1696)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3527, file: !92, line: 611, baseType: !91, size: 32, offset: 1728)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3527, file: !92, line: 612, baseType: !99, size: 32, offset: 1760)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3527, file: !92, line: 613, baseType: !180, size: 32, offset: 1792)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3527, file: !92, line: 614, baseType: !180, size: 32, offset: 1824)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3527, file: !92, line: 615, baseType: !439, size: 64, offset: 1856)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3527, file: !92, line: 616, baseType: !439, size: 64, offset: 1920)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3527, file: !92, line: 617, baseType: !439, size: 64, offset: 1984)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3527, file: !92, line: 618, baseType: !439, size: 64, offset: 2048)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3527, file: !92, line: 620, baseType: !3615, size: 64, offset: 2112)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !92, line: 536, size: 256, elements: !3617)
!3617 = !{!3618, !3619, !3620, !3621}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3616, file: !92, line: 537, baseType: !257)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3616, file: !92, line: 538, baseType: !7, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3616, file: !92, line: 540, baseType: !140, size: 128, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3616, file: !92, line: 543, baseType: !3622, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !92, line: 534, flags: DIFlagFwdDecl)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3527, file: !92, line: 621, baseType: !3625, size: 64, offset: 2176)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{null, !3384, !1445}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3527, file: !92, line: 622, baseType: !3629, size: 64, offset: 2240)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !92, line: 622, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !241, file: !85, line: 486, baseType: !3632, size: 64, offset: 4096)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !92, line: 642, size: 1792, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3641, !3642, !3643}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3633, file: !92, line: 643, baseType: !3412, size: 1472)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3633, file: !92, line: 644, baseType: !3415, size: 64, offset: 1472)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3633, file: !92, line: 645, baseType: !3638, size: 64, offset: 1536)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !3384, !231}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3633, file: !92, line: 646, baseType: !3415, size: 64, offset: 1600)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3633, file: !92, line: 647, baseType: !3406, size: 64, offset: 1664)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3633, file: !92, line: 648, baseType: !3406, size: 64, offset: 1728)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !241, file: !85, line: 493, baseType: !3645, size: 64, offset: 4160)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !85, line: 493, flags: DIFlagFwdDecl)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !241, file: !85, line: 499, baseType: !140, size: 128, offset: 4224)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !241, file: !85, line: 502, baseType: !3649, size: 64, offset: 4352)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3651)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !85, line: 502, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !241, file: !85, line: 504, baseType: !3653, size: 64, offset: 4416)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !241, file: !85, line: 505, baseType: !439, size: 64, offset: 4480)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !241, file: !85, line: 510, baseType: !439, size: 64, offset: 4544)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !241, file: !85, line: 511, baseType: !3657, size: 64, offset: 4608)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3659)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !85, line: 511, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !241, file: !85, line: 513, baseType: !3661, size: 64, offset: 4672)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !85, line: 288, size: 128, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3662, file: !85, line: 293, baseType: !7, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3662, file: !85, line: 294, baseType: !172, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !241, file: !85, line: 515, baseType: !140, size: 128, offset: 4736)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !241, file: !85, line: 526, baseType: !3668, offset: 4864)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3669, line: 5, elements: !271)
!3669 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !241, file: !85, line: 528, baseType: !3671, size: 64, offset: 4864)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3673, line: 14, flags: DIFlagFwdDecl)
!3673 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !241, file: !85, line: 529, baseType: !213, size: 64, offset: 4928)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !241, file: !85, line: 534, baseType: !529, size: 32, offset: 4992)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !241, file: !85, line: 535, baseType: !160, size: 32, offset: 5024)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !241, file: !85, line: 537, baseType: !257, offset: 5056)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !241, file: !85, line: 538, baseType: !140, size: 128, offset: 5056)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !241, file: !85, line: 540, baseType: !3680, size: 64, offset: 5184)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3682, line: 54, size: 960, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !{!3684, !3685, !3686, !3687, !3688, !3689, !3690, !3694, !3698, !3699, !3700, !3701, !3705, !3709, !3710}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3681, file: !3682, line: 55, baseType: !166, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3681, file: !3682, line: 56, baseType: !648, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3681, file: !3682, line: 58, baseType: !350, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3681, file: !3682, line: 59, baseType: !350, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3681, file: !3682, line: 60, baseType: !250, size: 64, offset: 256)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3681, file: !3682, line: 62, baseType: !3397, size: 64, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3681, file: !3682, line: 63, baseType: !3691, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!298, !3384, !3404}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3681, file: !3682, line: 65, baseType: !3695, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !3680}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3681, file: !3682, line: 66, baseType: !3406, size: 64, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3681, file: !3682, line: 68, baseType: !3415, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3681, file: !3682, line: 70, baseType: !3199, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3681, file: !3682, line: 71, baseType: !3702, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!237, !3384}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3681, file: !3682, line: 73, baseType: !3706, size: 64, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !3384, !3231, !3232}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3681, file: !3682, line: 75, baseType: !3410, size: 64, offset: 832)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3681, file: !3682, line: 77, baseType: !3509, size: 64, offset: 896)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !241, file: !85, line: 541, baseType: !350, size: 64, offset: 5248)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !241, file: !85, line: 543, baseType: !3406, size: 64, offset: 5312)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !241, file: !85, line: 544, baseType: !3714, size: 64, offset: 5376)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !85, line: 45, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !241, file: !85, line: 545, baseType: !3717, size: 64, offset: 5440)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !85, line: 47, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !241, file: !85, line: 547, baseType: !231, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !241, file: !85, line: 548, baseType: !231, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !241, file: !85, line: 549, baseType: !231, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !241, file: !85, line: 550, baseType: !231, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !217, file: !203, line: 116, baseType: !3724, size: 64, offset: 256)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!231, !208, !166}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !217, file: !203, line: 118, baseType: !3728, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!180, !208, !166, !7, !134, !344}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !217, file: !203, line: 123, baseType: !3732, size: 64, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!180, !208, !166, !3735, !344}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !217, file: !203, line: 126, baseType: !3737, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!166, !208}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !217, file: !203, line: 127, baseType: !3737, size: 64, offset: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !217, file: !203, line: 128, baseType: !3742, size: 64, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!213, !208}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !217, file: !203, line: 130, baseType: !3746, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!213, !208, !213}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !217, file: !203, line: 133, baseType: !3750, size: 64, offset: 704)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{!213, !208, !166}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !217, file: !203, line: 135, baseType: !3754, size: 64, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!180, !208, !166, !166, !7, !7, !3757}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !203, line: 43, size: 640, elements: !3759)
!3759 = !{!3760, !3761, !3762}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3758, file: !203, line: 44, baseType: !213, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3758, file: !203, line: 45, baseType: !7, size: 32, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3758, file: !203, line: 46, baseType: !3763, size: 512, offset: 128)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 512, elements: !1331)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !217, file: !203, line: 140, baseType: !3746, size: 64, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !217, file: !203, line: 143, baseType: !3742, size: 64, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !217, file: !203, line: 145, baseType: !220, size: 64, offset: 960)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !217, file: !203, line: 146, baseType: !3768, size: 64, offset: 1024)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!180, !208, !201}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !217, file: !203, line: 148, baseType: !3772, size: 64, offset: 1088)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!180, !208, !3384}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !210, file: !203, line: 20, baseType: !3384, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "link_setup", scope: !195, file: !6, line: 217, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!180, !187, !3780, !3780, !160}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "link_validate", scope: !195, file: !6, line: 220, baseType: !3783, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!180, !3786}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_link", file: !6, line: 132, size: 704, elements: !3788)
!3788 = !{!3789, !3790, !3791, !3805, !3811, !3812, !3813}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !3787, file: !6, line: 133, baseType: !154, size: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3787, file: !6, line: 134, baseType: !140, size: 128, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, scope: !3787, file: !6, line: 135, baseType: !3792, size: 64, offset: 384)
!3792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3787, file: !6, line: 135, size: 64, elements: !3793)
!3793 = !{!3794, !3796, !3797}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "gobj0", scope: !3792, file: !6, line: 136, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !3792, file: !6, line: 137, baseType: !182, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3792, file: !6, line: 138, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_interface", file: !6, line: 336, size: 448, elements: !3800)
!3800 = !{!3801, !3802, !3803, !3804}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "graph_obj", scope: !3799, file: !6, line: 337, baseType: !154, size: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3799, file: !6, line: 338, baseType: !140, size: 128, offset: 256)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3799, file: !6, line: 339, baseType: !160, size: 32, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3799, file: !6, line: 340, baseType: !160, size: 32, offset: 416)
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !3787, file: !6, line: 140, baseType: !3806, size: 64, offset: 448)
!3806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3787, file: !6, line: 140, size: 64, elements: !3807)
!3807 = !{!3808, !3809, !3810}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "gobj1", scope: !3806, file: !6, line: 141, baseType: !3795, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "sink", scope: !3806, file: !6, line: 142, baseType: !182, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !3806, file: !6, line: 143, baseType: !187, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !3787, file: !6, line: 145, baseType: !3786, size: 64, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3787, file: !6, line: 146, baseType: !172, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "is_backlink", scope: !3787, file: !6, line: 147, baseType: !231, size: 8, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "stream_count", scope: !151, file: !6, line: 307, baseType: !180, size: 32, offset: 832)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !151, file: !6, line: 308, baseType: !180, size: 32, offset: 864)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !151, file: !6, line: 310, baseType: !3817, size: 64, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_pipeline", file: !6, line: 104, size: 2304, elements: !3819)
!3819 = !{!3820, !3821}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "streaming_count", scope: !3818, file: !6, line: 105, baseType: !180, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "graph", scope: !3818, file: !6, line: 106, baseType: !3822, size: 2240, offset: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_graph", file: !6, line: 88, size: 2240, elements: !3823)
!3823 = !{!3824, !3830, !3836}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3822, file: !6, line: 92, baseType: !3825, size: 2048)
!3825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3826, size: 2048, elements: !1741)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3822, file: !6, line: 89, size: 128, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "entity", scope: !3826, file: !6, line: 90, baseType: !187, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3826, file: !6, line: 91, baseType: !144, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "ent_enum", scope: !3822, file: !6, line: 94, baseType: !3831, size: 128, offset: 2048)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_entity_enum", file: !6, line: 72, size: 128, elements: !3832)
!3832 = !{!3833, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3831, file: !6, line: 73, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "idx_max", scope: !3831, file: !6, line: 74, baseType: !180, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !3822, file: !6, line: 95, baseType: !180, size: 32, offset: 2176)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !151, file: !6, line: 317, baseType: !3838, size: 64, offset: 960)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !6, line: 312, size: 64, elements: !3839)
!3839 = !{!3840}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3838, file: !6, line: 316, baseType: !3841, size: 64)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3838, file: !6, line: 313, size: 64, elements: !3842)
!3842 = !{!3843, !3844}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3841, file: !6, line: 314, baseType: !160, size: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3841, file: !6, line: 315, baseType: !160, size: 32, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "intf_devnode", scope: !148, file: !106, line: 267, baseType: !3846, size: 64, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "media_intf_devnode", file: !6, line: 350, size: 512, elements: !3848)
!3848 = !{!3849, !3850, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3847, file: !6, line: 351, baseType: !3799, size: 448)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3847, file: !6, line: 354, baseType: !160, size: 32, offset: 448)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3847, file: !6, line: 355, baseType: !160, size: 32, offset: 480)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !148, file: !106, line: 268, baseType: !3818, size: 2304, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !148, file: !106, line: 270, baseType: !3854, size: 64, offset: 3392)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3856)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_file_operations", file: !106, line: 200, size: 576, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3869}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3856, file: !106, line: 201, baseType: !648, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3856, file: !106, line: 202, baseType: !2867, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3856, file: !106, line: 203, baseType: !2872, size: 64, offset: 128)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3856, file: !106, line: 204, baseType: !2896, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3856, file: !106, line: 205, baseType: !2913, size: 64, offset: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3856, file: !106, line: 209, baseType: !1118, size: 64, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3856, file: !106, line: 211, baseType: !2918, size: 64, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3856, file: !106, line: 212, baseType: !3866, size: 64, offset: 448)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!180, !374}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3856, file: !106, line: 213, baseType: !3866, size: 64, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "device_caps", scope: !148, file: !106, line: 272, baseType: !160, size: 32, offset: 3456)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !148, file: !106, line: 275, baseType: !241, size: 5568, offset: 3520)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !148, file: !106, line: 276, baseType: !3105, size: 64, offset: 9088)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "v4l2_dev", scope: !148, file: !106, line: 278, baseType: !3874, size: 64, offset: 9152)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_device", file: !106, line: 63, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dev_parent", scope: !148, file: !106, line: 279, baseType: !3384, size: 64, offset: 9216)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !148, file: !106, line: 281, baseType: !3878, size: 64, offset: 9280)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ctrl_handler", file: !106, line: 64, flags: DIFlagFwdDecl)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !148, file: !106, line: 283, baseType: !3881, size: 64, offset: 9344)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "vb2_queue", file: !106, line: 283, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !148, file: !106, line: 285, baseType: !3884, size: 64, offset: 9408)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_prio_state", file: !106, line: 111, size: 128, elements: !3886)
!3886 = !{!3887}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "prios", scope: !3885, file: !106, line: 112, baseType: !3888, size: 128)
!3888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 128, elements: !1172)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !106, line: 288, baseType: !2694, size: 256, offset: 9472)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_type", scope: !148, file: !106, line: 289, baseType: !105, size: 32, offset: 9728)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "vfl_dir", scope: !148, file: !106, line: 290, baseType: !115, size: 32, offset: 9760)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !148, file: !106, line: 291, baseType: !180, size: 32, offset: 9792)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !148, file: !106, line: 292, baseType: !174, size: 16, offset: 9824)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !148, file: !106, line: 293, baseType: !172, size: 64, offset: 9856)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !148, file: !106, line: 294, baseType: !180, size: 32, offset: 9920)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fh_lock", scope: !148, file: !106, line: 297, baseType: !257, offset: 9952)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "fh_list", scope: !148, file: !106, line: 298, baseType: !140, size: 128, offset: 9984)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_debug", scope: !148, file: !106, line: 300, baseType: !180, size: 32, offset: 10112)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "tvnorms", scope: !148, file: !106, line: 302, baseType: !3900, size: 64, offset: 10176)
!3900 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_std_id", file: !121, line: 1260, baseType: !440)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !148, file: !106, line: 305, baseType: !3902, size: 64, offset: 10240)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{null, !147}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_ops", scope: !148, file: !106, line: 306, baseType: !3906, size: 64, offset: 10304)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3908)
!3908 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_ioctl_ops", file: !106, line: 306, flags: DIFlagFwdDecl)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "valid_ioctls", scope: !148, file: !106, line: 307, baseType: !3910, size: 192, offset: 10368)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 192, elements: !299)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !148, file: !106, line: 309, baseType: !3912, size: 64, offset: 10560)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_handler", scope: !136, file: !137, line: 45, baseType: !3878, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !136, file: !137, line: 46, baseType: !120, size: 32, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !136, file: !137, line: 49, baseType: !1487, size: 128, offset: 320)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "subscribe_lock", scope: !136, file: !137, line: 50, baseType: !1190, size: 192, offset: 448)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "subscribed", scope: !136, file: !137, line: 51, baseType: !140, size: 128, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !136, file: !137, line: 52, baseType: !140, size: 128, offset: 768)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "navailable", scope: !136, file: !137, line: 53, baseType: !7, size: 32, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !136, file: !137, line: 54, baseType: !160, size: 32, offset: 928)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "m2m_ctx", scope: !136, file: !137, line: 56, baseType: !3922, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_m2m_ctx", file: !137, line: 56, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subscribed_event", file: !3926, line: 70, size: 640, elements: !3927)
!3926 = !DIFile(filename: "./include/media/v4l2-event.h", directory: "/home/lizy2001/genbc/linux")
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !4005, !4006, !4007, !4008}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3925, file: !3926, line: 71, baseType: !140, size: 128)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3925, file: !3926, line: 72, baseType: !160, size: 32, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3925, file: !3926, line: 73, baseType: !160, size: 32, offset: 160)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3925, file: !3926, line: 74, baseType: !160, size: 32, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fh", scope: !3925, file: !3926, line: 75, baseType: !135, size: 64, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3925, file: !3926, line: 76, baseType: !140, size: 128, offset: 320)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3925, file: !3926, line: 77, baseType: !3935, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3937)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subscribed_event_ops", file: !3926, line: 46, size: 256, elements: !3938)
!3938 = !{!3939, !3943, !3947, !4001}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3937, file: !3926, line: 47, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!180, !3924, !7}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3937, file: !3926, line: 48, baseType: !3944, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !3924}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "replace", scope: !3937, file: !3926, line: 49, baseType: !3948, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{null, !3951, !3999}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event", file: !121, line: 2376, size: 1088, elements: !3953)
!3953 = !{!3954, !3955, !3993, !3994, !3995, !3996, !3997}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3952, file: !121, line: 2377, baseType: !162, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3952, file: !121, line: 2385, baseType: !3956, size: 512, offset: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3952, file: !121, line: 2378, size: 512, elements: !3957)
!3957 = !{!3958, !3962, !3977, !3981, !3985, !3991}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "vsync", scope: !3956, file: !121, line: 2379, baseType: !3959, size: 8)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_vsync", file: !121, line: 2327, size: 8, elements: !3960)
!3960 = !{!3961}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !3959, file: !121, line: 2329, baseType: !1354, size: 8)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3956, file: !121, line: 2380, baseType: !3963, size: 320)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_ctrl", file: !121, line: 2337, size: 320, elements: !3964)
!3964 = !{!3965, !3966, !3967, !3972, !3973, !3974, !3975, !3976}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !3963, file: !121, line: 2338, baseType: !162, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3963, file: !121, line: 2339, baseType: !162, size: 32, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !121, line: 2340, baseType: !3968, size: 64, offset: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3963, file: !121, line: 2340, size: 64, elements: !3969)
!3969 = !{!3970, !3971}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3968, file: !121, line: 2341, baseType: !1446, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "value64", scope: !3968, file: !121, line: 2342, baseType: !556, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3963, file: !121, line: 2344, baseType: !162, size: 32, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3963, file: !121, line: 2345, baseType: !1446, size: 32, offset: 160)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3963, file: !121, line: 2346, baseType: !1446, size: 32, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !3963, file: !121, line: 2347, baseType: !1446, size: 32, offset: 224)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !3963, file: !121, line: 2348, baseType: !1446, size: 32, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "frame_sync", scope: !3956, file: !121, line: 2381, baseType: !3978, size: 32)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_frame_sync", file: !121, line: 2351, size: 32, elements: !3979)
!3979 = !{!3980}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "frame_sequence", scope: !3978, file: !121, line: 2352, baseType: !162, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "src_change", scope: !3956, file: !121, line: 2382, baseType: !3982, size: 32)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_src_change", file: !121, line: 2357, size: 32, elements: !3983)
!3983 = !{!3984}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !3982, file: !121, line: 2358, baseType: !162, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "motion_det", scope: !3956, file: !121, line: 2383, baseType: !3986, size: 96)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_motion_det", file: !121, line: 2370, size: 96, elements: !3987)
!3987 = !{!3988, !3989, !3990}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3986, file: !121, line: 2371, baseType: !162, size: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "frame_sequence", scope: !3986, file: !121, line: 2372, baseType: !162, size: 32, offset: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "region_mask", scope: !3986, file: !121, line: 2373, baseType: !162, size: 32, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3956, file: !121, line: 2384, baseType: !3992, size: 512)
!3992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1354, size: 512, elements: !303)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3952, file: !121, line: 2386, baseType: !162, size: 32, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !3952, file: !121, line: 2387, baseType: !162, size: 32, offset: 608)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3952, file: !121, line: 2389, baseType: !1432, size: 128, offset: 640)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3952, file: !121, line: 2393, baseType: !162, size: 32, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3952, file: !121, line: 2394, baseType: !3998, size: 256, offset: 800)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !1331)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3952)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "merge", scope: !3937, file: !3926, line: 50, baseType: !4002, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !3999, !3951}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !3925, file: !3926, line: 78, baseType: !7, size: 32, offset: 512)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3925, file: !3926, line: 79, baseType: !7, size: 32, offset: 544)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3925, file: !3926, line: 80, baseType: !7, size: 32, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3925, file: !3926, line: 81, baseType: !4009, offset: 640)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4010, elements: !2325)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_kevent", file: !3926, line: 31, size: 1344, elements: !4011)
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4010, file: !3926, line: 32, baseType: !140, size: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "sev", scope: !4010, file: !3926, line: 33, baseType: !3924, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4010, file: !3926, line: 34, baseType: !3952, size: 1088, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4010, file: !3926, line: 35, baseType: !439, size: 64, offset: 1280)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4018)
!4021 = !{!0}
!4022 = !{!"rsp"}
!4023 = !{i32 7, !"Dwarf Version", i32 4}
!4024 = !{i32 2, !"Debug Info Version", i32 3}
!4025 = !{i32 1, !"wchar_size", i32 2}
!4026 = !{i32 1, !"Code Model", i32 2}
!4027 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4028 = distinct !DISubprogram(name: "v4l2_event_dequeue", scope: !3, file: !3, line: 59, type: !4029, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!180, !135, !3951, !180}
!4031 = !DILocalVariable(name: "fh", arg: 1, scope: !4028, file: !3, line: 59, type: !135)
!4032 = !DILocation(line: 59, column: 40, scope: !4028)
!4033 = !DILocalVariable(name: "event", arg: 2, scope: !4028, file: !3, line: 59, type: !3951)
!4034 = !DILocation(line: 59, column: 63, scope: !4028)
!4035 = !DILocalVariable(name: "nonblocking", arg: 3, scope: !4028, file: !3, line: 60, type: !180)
!4036 = !DILocation(line: 60, column: 14, scope: !4028)
!4037 = !DILocalVariable(name: "ret", scope: !4028, file: !3, line: 62, type: !180)
!4038 = !DILocation(line: 62, column: 6, scope: !4028)
!4039 = !DILocation(line: 64, column: 6, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 64, column: 6)
!4041 = !DILocation(line: 64, column: 6, scope: !4028)
!4042 = !DILocation(line: 65, column: 31, scope: !4040)
!4043 = !DILocation(line: 65, column: 35, scope: !4040)
!4044 = !DILocation(line: 65, column: 10, scope: !4040)
!4045 = !DILocation(line: 65, column: 3, scope: !4040)
!4046 = !DILocation(line: 68, column: 6, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 68, column: 6)
!4048 = !DILocation(line: 68, column: 10, scope: !4047)
!4049 = !DILocation(line: 68, column: 16, scope: !4047)
!4050 = !DILocation(line: 68, column: 6, scope: !4028)
!4051 = !DILocation(line: 69, column: 16, scope: !4047)
!4052 = !DILocation(line: 69, column: 20, scope: !4047)
!4053 = !DILocation(line: 69, column: 26, scope: !4047)
!4054 = !DILocation(line: 69, column: 3, scope: !4047)
!4055 = !DILocation(line: 71, column: 2, scope: !4028)
!4056 = !DILocalVariable(name: "__ret", scope: !4057, file: !3, line: 72, type: !180)
!4057 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 72, column: 9)
!4058 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 71, column: 5)
!4059 = !DILocation(line: 72, column: 9, scope: !4057)
!4060 = !DILocation(line: 72, column: 9, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 72, column: 9)
!4062 = !DILocation(line: 72, column: 9, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4061, file: !3, line: 72, column: 9)
!4064 = !DILocation(line: 72, column: 9, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 72, column: 9)
!4066 = !DILocalVariable(name: "__wq_entry", scope: !4067, file: !3, line: 72, type: !4068)
!4067 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 72, column: 9)
!4068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1488, line: 29, size: 320, elements: !4069)
!4069 = !{!4070, !4071, !4072, !4078}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4068, file: !1488, line: 30, baseType: !7, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4068, file: !1488, line: 31, baseType: !134, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4068, file: !1488, line: 32, baseType: !4073, size: 64, offset: 128)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1488, line: 16, baseType: !4074)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!180, !4077, !7, !180, !134}
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4068, file: !1488, line: 33, baseType: !140, size: 128, offset: 192)
!4079 = !DILocation(line: 72, column: 9, scope: !4067)
!4080 = !DILocalVariable(name: "__ret", scope: !4067, file: !3, line: 72, type: !333)
!4081 = !DILocalVariable(name: "__int", scope: !4082, file: !3, line: 72, type: !333)
!4082 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 72, column: 9)
!4083 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 72, column: 9)
!4084 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 72, column: 9)
!4085 = !DILocation(line: 72, column: 9, scope: !4082)
!4086 = !DILocation(line: 72, column: 9, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 72, column: 9)
!4088 = !DILocation(line: 72, column: 9, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 72, column: 9)
!4090 = !DILocation(line: 72, column: 9, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 72, column: 9)
!4092 = !DILocation(line: 72, column: 9, scope: !4083)
!4093 = distinct !{!4093, !4094, !4094}
!4094 = !DILocation(line: 72, column: 9, scope: !4084)
!4095 = !DILabel(scope: !4067, name: "__out", file: !3, line: 72)
!4096 = !DILocation(line: 72, column: 7, scope: !4058)
!4097 = !DILocation(line: 74, column: 7, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 74, column: 7)
!4099 = !DILocation(line: 74, column: 11, scope: !4098)
!4100 = !DILocation(line: 74, column: 7, scope: !4058)
!4101 = !DILocation(line: 75, column: 4, scope: !4098)
!4102 = !DILocation(line: 77, column: 30, scope: !4058)
!4103 = !DILocation(line: 77, column: 34, scope: !4058)
!4104 = !DILocation(line: 77, column: 9, scope: !4058)
!4105 = !DILocation(line: 77, column: 7, scope: !4058)
!4106 = !DILocation(line: 78, column: 2, scope: !4058)
!4107 = !DILocation(line: 78, column: 11, scope: !4028)
!4108 = !DILocation(line: 78, column: 15, scope: !4028)
!4109 = distinct !{!4109, !4055, !4110}
!4110 = !DILocation(line: 78, column: 25, scope: !4028)
!4111 = !DILocation(line: 80, column: 6, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 80, column: 6)
!4113 = !DILocation(line: 80, column: 10, scope: !4112)
!4114 = !DILocation(line: 80, column: 16, scope: !4112)
!4115 = !DILocation(line: 80, column: 6, scope: !4028)
!4116 = !DILocation(line: 81, column: 14, scope: !4112)
!4117 = !DILocation(line: 81, column: 18, scope: !4112)
!4118 = !DILocation(line: 81, column: 24, scope: !4112)
!4119 = !DILocation(line: 81, column: 3, scope: !4112)
!4120 = !DILocation(line: 83, column: 9, scope: !4028)
!4121 = !DILocation(line: 83, column: 2, scope: !4028)
!4122 = !DILocation(line: 84, column: 1, scope: !4028)
!4123 = distinct !DISubprogram(name: "__v4l2_event_dequeue", scope: !3, file: !3, line: 27, type: !4124, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!180, !135, !3951}
!4126 = !DILocalVariable(name: "lock", arg: 1, scope: !4127, file: !4128, line: 407, type: !1081)
!4127 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4128, file: !4128, line: 407, type: !4129, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4128 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4129 = !DISubroutineType(types: !4130)
!4130 = !{null, !1081, !172}
!4131 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 36, column: 3, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 35, column: 34)
!4134 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 35, column: 6)
!4135 = !DILocalVariable(name: "flags", arg: 2, scope: !4127, file: !4128, line: 407, type: !172)
!4136 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !4132)
!4137 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 54, column: 2, scope: !4123)
!4139 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !4138)
!4140 = !DILocalVariable(name: "lock", arg: 1, scope: !4141, file: !4128, line: 327, type: !1081)
!4141 = distinct !DISubprogram(name: "spinlock_check", scope: !4128, file: !4128, line: 327, type: !4142, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!4144, !1081}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!4145 = !DILocation(line: 327, column: 67, scope: !4141, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 33, column: 2, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 33, column: 2)
!4148 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 33, column: 2)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 33, column: 2)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 33, column: 2)
!4151 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 33, column: 2)
!4152 = !DILocalVariable(name: "fh", arg: 1, scope: !4123, file: !3, line: 27, type: !135)
!4153 = !DILocation(line: 27, column: 49, scope: !4123)
!4154 = !DILocalVariable(name: "event", arg: 2, scope: !4123, file: !3, line: 27, type: !3951)
!4155 = !DILocation(line: 27, column: 72, scope: !4123)
!4156 = !DILocalVariable(name: "kev", scope: !4123, file: !3, line: 29, type: !4016)
!4157 = !DILocation(line: 29, column: 22, scope: !4123)
!4158 = !DILocalVariable(name: "ts", scope: !4123, file: !3, line: 30, type: !551)
!4159 = !DILocation(line: 30, column: 20, scope: !4123)
!4160 = !DILocalVariable(name: "flags", scope: !4123, file: !3, line: 31, type: !172)
!4161 = !DILocation(line: 31, column: 16, scope: !4123)
!4162 = !DILocation(line: 33, column: 2, scope: !4123)
!4163 = !DILocation(line: 33, column: 2, scope: !4151)
!4164 = !DILocalVariable(name: "__dummy", scope: !4165, file: !3, line: 33, type: !172)
!4165 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 33, column: 2)
!4166 = !DILocation(line: 33, column: 2, scope: !4165)
!4167 = !DILocalVariable(name: "__dummy2", scope: !4165, file: !3, line: 33, type: !172)
!4168 = !DILocation(line: 33, column: 2, scope: !4150)
!4169 = !DILocation(line: 33, column: 2, scope: !4149)
!4170 = !DILocation(line: 33, column: 2, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 33, column: 2)
!4172 = !DILocalVariable(name: "__dummy", scope: !4173, file: !3, line: 33, type: !172)
!4173 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 33, column: 2)
!4174 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 33, column: 2)
!4175 = !DILocation(line: 33, column: 2, scope: !4173)
!4176 = !DILocalVariable(name: "__dummy2", scope: !4173, file: !3, line: 33, type: !172)
!4177 = !DILocation(line: 33, column: 2, scope: !4174)
!4178 = !DILocation(line: 33, column: 2, scope: !4148)
!4179 = !{i32 -2142133351}
!4180 = !DILocation(line: 33, column: 2, scope: !4147)
!4181 = !DILocation(line: 329, column: 10, scope: !4141, inlinedAt: !4146)
!4182 = !DILocation(line: 329, column: 16, scope: !4141, inlinedAt: !4146)
!4183 = !DILocation(line: 35, column: 18, scope: !4134)
!4184 = !DILocation(line: 35, column: 22, scope: !4134)
!4185 = !DILocation(line: 35, column: 6, scope: !4134)
!4186 = !DILocation(line: 35, column: 6, scope: !4123)
!4187 = !DILocation(line: 36, column: 27, scope: !4133)
!4188 = !DILocation(line: 36, column: 31, scope: !4133)
!4189 = !DILocation(line: 36, column: 37, scope: !4133)
!4190 = !DILocation(line: 36, column: 46, scope: !4133)
!4191 = !DILocalVariable(name: "__dummy", scope: !4192, file: !4128, line: 409, type: !172)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !4128, line: 409, column: 2)
!4193 = distinct !DILexicalBlock(scope: !4127, file: !4128, line: 409, column: 2)
!4194 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !4132)
!4195 = !DILocalVariable(name: "__dummy2", scope: !4192, file: !4128, line: 409, type: !172)
!4196 = !DILocalVariable(name: "__dummy", scope: !4197, file: !4128, line: 409, type: !172)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !4128, line: 409, column: 2)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !4128, line: 409, column: 2)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !4128, line: 409, column: 2)
!4200 = distinct !DILexicalBlock(scope: !4193, file: !4128, line: 409, column: 2)
!4201 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !4132)
!4202 = !DILocalVariable(name: "__dummy2", scope: !4197, file: !4128, line: 409, type: !172)
!4203 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !4132)
!4204 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !4132)
!4205 = distinct !DILexicalBlock(scope: !4200, file: !4128, line: 409, column: 2)
!4206 = !{i32 -2145485346}
!4207 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !4132)
!4208 = distinct !DILexicalBlock(scope: !4205, file: !4128, line: 409, column: 2)
!4209 = !DILocation(line: 37, column: 3, scope: !4133)
!4210 = !DILocalVariable(name: "__ret_warn_on", scope: !4211, file: !3, line: 40, type: !180)
!4211 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 40, column: 2)
!4212 = !DILocation(line: 40, column: 2, scope: !4211)
!4213 = !DILocation(line: 40, column: 2, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 40, column: 2)
!4215 = !DILocation(line: 40, column: 2, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 40, column: 2)
!4217 = !DILocation(line: 40, column: 2, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 40, column: 2)
!4219 = !DILocation(line: 40, column: 2, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 40, column: 2)
!4221 = !{i32 -2142132706, i32 -2142132677, i32 -2142132631, i32 -2142132573, i32 -2142132519, i32 -2142132465, i32 -2142132410, i32 -2142132379}
!4222 = !DILocation(line: 40, column: 2, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 40, column: 2)
!4224 = !{i32 -2142131962, i32 -2142131955, i32 -2142131903, i32 -2142131872, i32 -2142131842}
!4225 = !DILocation(line: 40, column: 2, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 40, column: 2)
!4227 = !DILocalVariable(name: "__mptr", scope: !4228, file: !3, line: 42, type: !134)
!4228 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 42, column: 8)
!4229 = !DILocation(line: 42, column: 8, scope: !4228)
!4230 = !DILocation(line: 42, column: 8, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 42, column: 8)
!4232 = !DILocation(line: 42, column: 6, scope: !4123)
!4233 = !DILocation(line: 43, column: 12, scope: !4123)
!4234 = !DILocation(line: 43, column: 17, scope: !4123)
!4235 = !DILocation(line: 43, column: 2, scope: !4123)
!4236 = !DILocation(line: 44, column: 2, scope: !4123)
!4237 = !DILocation(line: 44, column: 6, scope: !4123)
!4238 = !DILocation(line: 44, column: 16, scope: !4123)
!4239 = !DILocation(line: 46, column: 23, scope: !4123)
!4240 = !DILocation(line: 46, column: 27, scope: !4123)
!4241 = !DILocation(line: 46, column: 2, scope: !4123)
!4242 = !DILocation(line: 46, column: 7, scope: !4123)
!4243 = !DILocation(line: 46, column: 13, scope: !4123)
!4244 = !DILocation(line: 46, column: 21, scope: !4123)
!4245 = !DILocation(line: 47, column: 3, scope: !4123)
!4246 = !DILocation(line: 47, column: 11, scope: !4123)
!4247 = !DILocation(line: 47, column: 16, scope: !4123)
!4248 = !DILocation(line: 48, column: 24, scope: !4123)
!4249 = !DILocation(line: 48, column: 29, scope: !4123)
!4250 = !DILocation(line: 48, column: 7, scope: !4123)
!4251 = !DILocation(line: 49, column: 31, scope: !4123)
!4252 = !DILocation(line: 49, column: 2, scope: !4123)
!4253 = !DILocation(line: 49, column: 9, scope: !4123)
!4254 = !DILocation(line: 49, column: 19, scope: !4123)
!4255 = !DILocation(line: 49, column: 26, scope: !4123)
!4256 = !DILocation(line: 50, column: 32, scope: !4123)
!4257 = !DILocation(line: 50, column: 2, scope: !4123)
!4258 = !DILocation(line: 50, column: 9, scope: !4123)
!4259 = !DILocation(line: 50, column: 19, scope: !4123)
!4260 = !DILocation(line: 50, column: 27, scope: !4123)
!4261 = !DILocation(line: 51, column: 28, scope: !4123)
!4262 = !DILocation(line: 51, column: 33, scope: !4123)
!4263 = !DILocation(line: 51, column: 20, scope: !4123)
!4264 = !DILocation(line: 51, column: 2, scope: !4123)
!4265 = !DILocation(line: 51, column: 7, scope: !4123)
!4266 = !DILocation(line: 51, column: 12, scope: !4123)
!4267 = !DILocation(line: 51, column: 18, scope: !4123)
!4268 = !DILocation(line: 52, column: 2, scope: !4123)
!4269 = !DILocation(line: 52, column: 7, scope: !4123)
!4270 = !DILocation(line: 52, column: 12, scope: !4123)
!4271 = !DILocation(line: 52, column: 18, scope: !4123)
!4272 = !DILocation(line: 54, column: 26, scope: !4123)
!4273 = !DILocation(line: 54, column: 30, scope: !4123)
!4274 = !DILocation(line: 54, column: 36, scope: !4123)
!4275 = !DILocation(line: 54, column: 45, scope: !4123)
!4276 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !4138)
!4277 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !4138)
!4278 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !4138)
!4279 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !4138)
!4280 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !4138)
!4281 = !DILocation(line: 56, column: 2, scope: !4123)
!4282 = !DILocation(line: 57, column: 1, scope: !4123)
!4283 = distinct !DISubprogram(name: "v4l2_event_queue", scope: !3, file: !3, line: 153, type: !4284, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !147, !3999}
!4286 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 169, column: 2, scope: !4283)
!4288 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !4287)
!4289 = !DILocation(line: 327, column: 67, scope: !4141, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 164, column: 2, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 164, column: 2)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 164, column: 2)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 164, column: 2)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 164, column: 2)
!4295 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 164, column: 2)
!4296 = !DILocalVariable(name: "vdev", arg: 1, scope: !4283, file: !3, line: 153, type: !147)
!4297 = !DILocation(line: 153, column: 44, scope: !4283)
!4298 = !DILocalVariable(name: "ev", arg: 2, scope: !4283, file: !3, line: 153, type: !3999)
!4299 = !DILocation(line: 153, column: 75, scope: !4283)
!4300 = !DILocalVariable(name: "fh", scope: !4283, file: !3, line: 155, type: !135)
!4301 = !DILocation(line: 155, column: 18, scope: !4283)
!4302 = !DILocalVariable(name: "flags", scope: !4283, file: !3, line: 156, type: !172)
!4303 = !DILocation(line: 156, column: 16, scope: !4283)
!4304 = !DILocalVariable(name: "ts", scope: !4283, file: !3, line: 157, type: !439)
!4305 = !DILocation(line: 157, column: 6, scope: !4283)
!4306 = !DILocation(line: 159, column: 6, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 159, column: 6)
!4308 = !DILocation(line: 159, column: 11, scope: !4307)
!4309 = !DILocation(line: 159, column: 6, scope: !4283)
!4310 = !DILocation(line: 160, column: 3, scope: !4307)
!4311 = !DILocation(line: 162, column: 7, scope: !4283)
!4312 = !DILocation(line: 162, column: 5, scope: !4283)
!4313 = !DILocation(line: 164, column: 2, scope: !4283)
!4314 = !DILocation(line: 164, column: 2, scope: !4295)
!4315 = !DILocalVariable(name: "__dummy", scope: !4316, file: !3, line: 164, type: !172)
!4316 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 164, column: 2)
!4317 = !DILocation(line: 164, column: 2, scope: !4316)
!4318 = !DILocalVariable(name: "__dummy2", scope: !4316, file: !3, line: 164, type: !172)
!4319 = !DILocation(line: 164, column: 2, scope: !4294)
!4320 = !DILocation(line: 164, column: 2, scope: !4293)
!4321 = !DILocation(line: 164, column: 2, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 164, column: 2)
!4323 = !DILocalVariable(name: "__dummy", scope: !4324, file: !3, line: 164, type: !172)
!4324 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 164, column: 2)
!4325 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 164, column: 2)
!4326 = !DILocation(line: 164, column: 2, scope: !4324)
!4327 = !DILocalVariable(name: "__dummy2", scope: !4324, file: !3, line: 164, type: !172)
!4328 = !DILocation(line: 164, column: 2, scope: !4325)
!4329 = !DILocation(line: 164, column: 2, scope: !4292)
!4330 = !{i32 -2142123561}
!4331 = !DILocation(line: 164, column: 2, scope: !4291)
!4332 = !DILocation(line: 329, column: 10, scope: !4141, inlinedAt: !4290)
!4333 = !DILocation(line: 329, column: 16, scope: !4141, inlinedAt: !4290)
!4334 = !DILocalVariable(name: "__mptr", scope: !4335, file: !3, line: 166, type: !134)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 166, column: 2)
!4336 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 166, column: 2)
!4337 = !DILocation(line: 166, column: 2, scope: !4335)
!4338 = !DILocation(line: 166, column: 2, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 166, column: 2)
!4340 = !DILocation(line: 166, column: 2, scope: !4336)
!4341 = !DILocation(line: 166, column: 2, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4336, file: !3, line: 166, column: 2)
!4343 = !DILocation(line: 167, column: 25, scope: !4342)
!4344 = !DILocation(line: 167, column: 29, scope: !4342)
!4345 = !DILocation(line: 167, column: 33, scope: !4342)
!4346 = !DILocation(line: 167, column: 3, scope: !4342)
!4347 = !DILocalVariable(name: "__mptr", scope: !4348, file: !3, line: 166, type: !134)
!4348 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 166, column: 2)
!4349 = !DILocation(line: 166, column: 2, scope: !4348)
!4350 = !DILocation(line: 166, column: 2, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 166, column: 2)
!4352 = distinct !{!4352, !4340, !4353}
!4353 = !DILocation(line: 167, column: 35, scope: !4336)
!4354 = !DILocation(line: 169, column: 26, scope: !4283)
!4355 = !DILocation(line: 169, column: 32, scope: !4283)
!4356 = !DILocation(line: 169, column: 41, scope: !4283)
!4357 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !4287)
!4358 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !4287)
!4359 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !4287)
!4360 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !4287)
!4361 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !4287)
!4362 = !DILocation(line: 170, column: 1, scope: !4283)
!4363 = distinct !DISubprogram(name: "ktime_get_ns", scope: !4364, file: !4364, line: 152, type: !4365, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4364 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!439}
!4367 = !DILocation(line: 154, column: 21, scope: !4363)
!4368 = !DILocation(line: 154, column: 9, scope: !4363)
!4369 = !DILocation(line: 154, column: 2, scope: !4363)
!4370 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4371, file: !4371, line: 666, type: !4372, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4371 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!172}
!4374 = !DILocalVariable(name: "f", scope: !4370, file: !4371, line: 668, type: !172)
!4375 = !DILocation(line: 668, column: 16, scope: !4370)
!4376 = !DILocation(line: 670, column: 6, scope: !4370)
!4377 = !DILocation(line: 670, column: 4, scope: !4370)
!4378 = !DILocation(line: 671, column: 2, scope: !4370)
!4379 = !DILocation(line: 672, column: 9, scope: !4370)
!4380 = !DILocation(line: 672, column: 2, scope: !4370)
!4381 = distinct !DISubprogram(name: "__v4l2_event_queue_fh", scope: !3, file: !3, line: 102, type: !4382, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !135, !3999, !439}
!4384 = !DILocalVariable(name: "fh", arg: 1, scope: !4381, file: !3, line: 102, type: !135)
!4385 = !DILocation(line: 102, column: 51, scope: !4381)
!4386 = !DILocalVariable(name: "ev", arg: 2, scope: !4381, file: !3, line: 103, type: !3999)
!4387 = !DILocation(line: 103, column: 32, scope: !4381)
!4388 = !DILocalVariable(name: "ts", arg: 3, scope: !4381, file: !3, line: 103, type: !439)
!4389 = !DILocation(line: 103, column: 40, scope: !4381)
!4390 = !DILocalVariable(name: "sev", scope: !4381, file: !3, line: 105, type: !3924)
!4391 = !DILocation(line: 105, column: 32, scope: !4381)
!4392 = !DILocalVariable(name: "kev", scope: !4381, file: !3, line: 106, type: !4016)
!4393 = !DILocation(line: 106, column: 22, scope: !4381)
!4394 = !DILocalVariable(name: "copy_payload", scope: !4381, file: !3, line: 107, type: !231)
!4395 = !DILocation(line: 107, column: 7, scope: !4381)
!4396 = !DILocation(line: 110, column: 30, scope: !4381)
!4397 = !DILocation(line: 110, column: 34, scope: !4381)
!4398 = !DILocation(line: 110, column: 38, scope: !4381)
!4399 = !DILocation(line: 110, column: 44, scope: !4381)
!4400 = !DILocation(line: 110, column: 48, scope: !4381)
!4401 = !DILocation(line: 110, column: 8, scope: !4381)
!4402 = !DILocation(line: 110, column: 6, scope: !4381)
!4403 = !DILocation(line: 111, column: 6, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 111, column: 6)
!4405 = !DILocation(line: 111, column: 10, scope: !4404)
!4406 = !DILocation(line: 111, column: 6, scope: !4381)
!4407 = !DILocation(line: 112, column: 3, scope: !4404)
!4408 = !DILocation(line: 115, column: 2, scope: !4381)
!4409 = !DILocation(line: 115, column: 6, scope: !4381)
!4410 = !DILocation(line: 115, column: 14, scope: !4381)
!4411 = !DILocation(line: 118, column: 6, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 118, column: 6)
!4413 = !DILocation(line: 118, column: 11, scope: !4412)
!4414 = !DILocation(line: 118, column: 21, scope: !4412)
!4415 = !DILocation(line: 118, column: 26, scope: !4412)
!4416 = !DILocation(line: 118, column: 18, scope: !4412)
!4417 = !DILocation(line: 118, column: 6, scope: !4381)
!4418 = !DILocation(line: 120, column: 9, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4412, file: !3, line: 118, column: 33)
!4420 = !DILocation(line: 120, column: 14, scope: !4419)
!4421 = !DILocation(line: 120, column: 31, scope: !4419)
!4422 = !DILocation(line: 120, column: 23, scope: !4419)
!4423 = !DILocation(line: 120, column: 21, scope: !4419)
!4424 = !DILocation(line: 120, column: 7, scope: !4419)
!4425 = !DILocation(line: 121, column: 13, scope: !4419)
!4426 = !DILocation(line: 121, column: 18, scope: !4419)
!4427 = !DILocation(line: 121, column: 3, scope: !4419)
!4428 = !DILocation(line: 122, column: 3, scope: !4419)
!4429 = !DILocation(line: 122, column: 8, scope: !4419)
!4430 = !DILocation(line: 122, column: 14, scope: !4419)
!4431 = !DILocation(line: 123, column: 24, scope: !4419)
!4432 = !DILocation(line: 123, column: 16, scope: !4419)
!4433 = !DILocation(line: 123, column: 3, scope: !4419)
!4434 = !DILocation(line: 123, column: 8, scope: !4419)
!4435 = !DILocation(line: 123, column: 14, scope: !4419)
!4436 = !DILocation(line: 124, column: 3, scope: !4419)
!4437 = !DILocation(line: 124, column: 7, scope: !4419)
!4438 = !DILocation(line: 124, column: 17, scope: !4419)
!4439 = !DILocation(line: 125, column: 7, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 125, column: 7)
!4441 = !DILocation(line: 125, column: 12, scope: !4440)
!4442 = !DILocation(line: 125, column: 18, scope: !4440)
!4443 = !DILocation(line: 125, column: 7, scope: !4419)
!4444 = !DILocation(line: 126, column: 8, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 126, column: 8)
!4446 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 125, column: 24)
!4447 = !DILocation(line: 126, column: 13, scope: !4445)
!4448 = !DILocation(line: 126, column: 17, scope: !4445)
!4449 = !DILocation(line: 126, column: 20, scope: !4445)
!4450 = !DILocation(line: 126, column: 25, scope: !4445)
!4451 = !DILocation(line: 126, column: 30, scope: !4445)
!4452 = !DILocation(line: 126, column: 8, scope: !4446)
!4453 = !DILocation(line: 127, column: 5, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4445, file: !3, line: 126, column: 39)
!4455 = !DILocation(line: 127, column: 10, scope: !4454)
!4456 = !DILocation(line: 127, column: 15, scope: !4454)
!4457 = !DILocation(line: 127, column: 24, scope: !4454)
!4458 = !DILocation(line: 127, column: 29, scope: !4454)
!4459 = !DILocation(line: 127, column: 36, scope: !4454)
!4460 = !DILocation(line: 128, column: 18, scope: !4454)
!4461 = !DILocation(line: 129, column: 4, scope: !4454)
!4462 = !DILocation(line: 130, column: 3, scope: !4446)
!4463 = !DILocation(line: 130, column: 14, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 130, column: 14)
!4465 = !DILocation(line: 130, column: 19, scope: !4464)
!4466 = !DILocation(line: 130, column: 23, scope: !4464)
!4467 = !DILocation(line: 130, column: 26, scope: !4464)
!4468 = !DILocation(line: 130, column: 31, scope: !4464)
!4469 = !DILocation(line: 130, column: 36, scope: !4464)
!4470 = !DILocation(line: 130, column: 14, scope: !4440)
!4471 = !DILocalVariable(name: "second_oldest", scope: !4472, file: !3, line: 131, type: !4016)
!4472 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 130, column: 43)
!4473 = !DILocation(line: 131, column: 24, scope: !4472)
!4474 = !DILocation(line: 132, column: 5, scope: !4472)
!4475 = !DILocation(line: 132, column: 10, scope: !4472)
!4476 = !DILocation(line: 132, column: 27, scope: !4472)
!4477 = !DILocation(line: 132, column: 19, scope: !4472)
!4478 = !DILocation(line: 132, column: 17, scope: !4472)
!4479 = !DILocation(line: 133, column: 4, scope: !4472)
!4480 = !DILocation(line: 133, column: 9, scope: !4472)
!4481 = !DILocation(line: 133, column: 14, scope: !4472)
!4482 = !DILocation(line: 133, column: 21, scope: !4472)
!4483 = !DILocation(line: 133, column: 26, scope: !4472)
!4484 = !DILocation(line: 133, column: 34, scope: !4472)
!4485 = !DILocation(line: 133, column: 49, scope: !4472)
!4486 = !DILocation(line: 134, column: 3, scope: !4472)
!4487 = !DILocation(line: 135, column: 2, scope: !4419)
!4488 = !DILocation(line: 138, column: 8, scope: !4381)
!4489 = !DILocation(line: 138, column: 13, scope: !4381)
!4490 = !DILocation(line: 138, column: 30, scope: !4381)
!4491 = !DILocation(line: 138, column: 35, scope: !4381)
!4492 = !DILocation(line: 138, column: 40, scope: !4381)
!4493 = !DILocation(line: 138, column: 22, scope: !4381)
!4494 = !DILocation(line: 138, column: 20, scope: !4381)
!4495 = !DILocation(line: 138, column: 6, scope: !4381)
!4496 = !DILocation(line: 139, column: 20, scope: !4381)
!4497 = !DILocation(line: 139, column: 24, scope: !4381)
!4498 = !DILocation(line: 139, column: 2, scope: !4381)
!4499 = !DILocation(line: 139, column: 7, scope: !4381)
!4500 = !DILocation(line: 139, column: 13, scope: !4381)
!4501 = !DILocation(line: 139, column: 18, scope: !4381)
!4502 = !DILocation(line: 140, column: 6, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 140, column: 6)
!4504 = !DILocation(line: 140, column: 6, scope: !4381)
!4505 = !DILocation(line: 141, column: 3, scope: !4503)
!4506 = !DILocation(line: 141, column: 8, scope: !4503)
!4507 = !DILocation(line: 141, column: 14, scope: !4503)
!4508 = !DILocation(line: 141, column: 18, scope: !4503)
!4509 = !DILocation(line: 141, column: 22, scope: !4503)
!4510 = !DILocation(line: 142, column: 18, scope: !4381)
!4511 = !DILocation(line: 142, column: 22, scope: !4381)
!4512 = !DILocation(line: 142, column: 2, scope: !4381)
!4513 = !DILocation(line: 142, column: 7, scope: !4381)
!4514 = !DILocation(line: 142, column: 13, scope: !4381)
!4515 = !DILocation(line: 142, column: 16, scope: !4381)
!4516 = !DILocation(line: 143, column: 12, scope: !4381)
!4517 = !DILocation(line: 143, column: 2, scope: !4381)
!4518 = !DILocation(line: 143, column: 7, scope: !4381)
!4519 = !DILocation(line: 143, column: 10, scope: !4381)
!4520 = !DILocation(line: 144, column: 24, scope: !4381)
!4521 = !DILocation(line: 144, column: 28, scope: !4381)
!4522 = !DILocation(line: 144, column: 2, scope: !4381)
!4523 = !DILocation(line: 144, column: 7, scope: !4381)
!4524 = !DILocation(line: 144, column: 13, scope: !4381)
!4525 = !DILocation(line: 144, column: 22, scope: !4381)
!4526 = !DILocation(line: 145, column: 2, scope: !4381)
!4527 = !DILocation(line: 145, column: 7, scope: !4381)
!4528 = !DILocation(line: 145, column: 13, scope: !4381)
!4529 = !DILocation(line: 146, column: 17, scope: !4381)
!4530 = !DILocation(line: 146, column: 22, scope: !4381)
!4531 = !DILocation(line: 146, column: 29, scope: !4381)
!4532 = !DILocation(line: 146, column: 33, scope: !4381)
!4533 = !DILocation(line: 146, column: 2, scope: !4381)
!4534 = !DILocation(line: 148, column: 2, scope: !4381)
!4535 = !DILocation(line: 148, column: 6, scope: !4381)
!4536 = !DILocation(line: 148, column: 16, scope: !4381)
!4537 = !DILocation(line: 150, column: 2, scope: !4381)
!4538 = !DILocation(line: 151, column: 1, scope: !4381)
!4539 = distinct !DISubprogram(name: "v4l2_event_queue_fh", scope: !3, file: !3, line: 173, type: !4540, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !135, !3999}
!4542 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !4543)
!4543 = distinct !DILocation(line: 180, column: 2, scope: !4539)
!4544 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !4543)
!4545 = !DILocation(line: 327, column: 67, scope: !4141, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 178, column: 2, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 178, column: 2)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 178, column: 2)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 178, column: 2)
!4550 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 178, column: 2)
!4551 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 178, column: 2)
!4552 = !DILocalVariable(name: "fh", arg: 1, scope: !4539, file: !3, line: 173, type: !135)
!4553 = !DILocation(line: 173, column: 42, scope: !4539)
!4554 = !DILocalVariable(name: "ev", arg: 2, scope: !4539, file: !3, line: 173, type: !3999)
!4555 = !DILocation(line: 173, column: 71, scope: !4539)
!4556 = !DILocalVariable(name: "flags", scope: !4539, file: !3, line: 175, type: !172)
!4557 = !DILocation(line: 175, column: 16, scope: !4539)
!4558 = !DILocalVariable(name: "ts", scope: !4539, file: !3, line: 176, type: !439)
!4559 = !DILocation(line: 176, column: 6, scope: !4539)
!4560 = !DILocation(line: 176, column: 11, scope: !4539)
!4561 = !DILocation(line: 178, column: 2, scope: !4539)
!4562 = !DILocation(line: 178, column: 2, scope: !4551)
!4563 = !DILocalVariable(name: "__dummy", scope: !4564, file: !3, line: 178, type: !172)
!4564 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 178, column: 2)
!4565 = !DILocation(line: 178, column: 2, scope: !4564)
!4566 = !DILocalVariable(name: "__dummy2", scope: !4564, file: !3, line: 178, type: !172)
!4567 = !DILocation(line: 178, column: 2, scope: !4550)
!4568 = !DILocation(line: 178, column: 2, scope: !4549)
!4569 = !DILocation(line: 178, column: 2, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 178, column: 2)
!4571 = !DILocalVariable(name: "__dummy", scope: !4572, file: !3, line: 178, type: !172)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 178, column: 2)
!4573 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 178, column: 2)
!4574 = !DILocation(line: 178, column: 2, scope: !4572)
!4575 = !DILocalVariable(name: "__dummy2", scope: !4572, file: !3, line: 178, type: !172)
!4576 = !DILocation(line: 178, column: 2, scope: !4573)
!4577 = !DILocation(line: 178, column: 2, scope: !4548)
!4578 = !{i32 -2142118622}
!4579 = !DILocation(line: 178, column: 2, scope: !4547)
!4580 = !DILocation(line: 329, column: 10, scope: !4141, inlinedAt: !4546)
!4581 = !DILocation(line: 329, column: 16, scope: !4141, inlinedAt: !4546)
!4582 = !DILocation(line: 179, column: 24, scope: !4539)
!4583 = !DILocation(line: 179, column: 28, scope: !4539)
!4584 = !DILocation(line: 179, column: 32, scope: !4539)
!4585 = !DILocation(line: 179, column: 2, scope: !4539)
!4586 = !DILocation(line: 180, column: 26, scope: !4539)
!4587 = !DILocation(line: 180, column: 30, scope: !4539)
!4588 = !DILocation(line: 180, column: 36, scope: !4539)
!4589 = !DILocation(line: 180, column: 45, scope: !4539)
!4590 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !4543)
!4591 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !4543)
!4592 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !4543)
!4593 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !4543)
!4594 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !4543)
!4595 = !DILocation(line: 181, column: 1, scope: !4539)
!4596 = distinct !DISubprogram(name: "v4l2_event_pending", scope: !3, file: !3, line: 184, type: !4597, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!180, !135}
!4599 = !DILocalVariable(name: "fh", arg: 1, scope: !4596, file: !3, line: 184, type: !135)
!4600 = !DILocation(line: 184, column: 40, scope: !4596)
!4601 = !DILocation(line: 186, column: 9, scope: !4596)
!4602 = !DILocation(line: 186, column: 13, scope: !4596)
!4603 = !DILocation(line: 186, column: 2, scope: !4596)
!4604 = distinct !DISubprogram(name: "v4l2_event_subscribe", scope: !3, file: !3, line: 206, type: !4605, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!180, !135, !4607, !7, !3935}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4609)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_event_subscription", file: !121, line: 2400, size: 256, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4609, file: !121, line: 2401, baseType: !162, size: 32)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4609, file: !121, line: 2402, baseType: !162, size: 32, offset: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4609, file: !121, line: 2403, baseType: !162, size: 32, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4609, file: !121, line: 2404, baseType: !4615, size: 160, offset: 96)
!4615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 160, elements: !4616)
!4616 = !{!4617}
!4617 = !DISubrange(count: 5)
!4618 = !DILocation(line: 327, column: 67, scope: !4141, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 247, column: 4, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 247, column: 4)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 247, column: 4)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 247, column: 4)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 247, column: 4)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 247, column: 4)
!4625 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 246, column: 12)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 246, column: 7)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !3, line: 244, column: 40)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 244, column: 13)
!4629 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 241, column: 6)
!4630 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 239, column: 2, scope: !4604)
!4632 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !4631)
!4633 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !4634)
!4634 = distinct !DILocation(line: 249, column: 4, scope: !4625)
!4635 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !4634)
!4636 = !DILocation(line: 327, column: 67, scope: !4141, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 235, column: 2, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !3, line: 235, column: 2)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 235, column: 2)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 235, column: 2)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 235, column: 2)
!4642 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 235, column: 2)
!4643 = !DILocalVariable(name: "fh", arg: 1, scope: !4604, file: !3, line: 206, type: !135)
!4644 = !DILocation(line: 206, column: 42, scope: !4604)
!4645 = !DILocalVariable(name: "sub", arg: 2, scope: !4604, file: !3, line: 207, type: !4607)
!4646 = !DILocation(line: 207, column: 43, scope: !4604)
!4647 = !DILocalVariable(name: "elems", arg: 3, scope: !4604, file: !3, line: 207, type: !7)
!4648 = !DILocation(line: 207, column: 57, scope: !4604)
!4649 = !DILocalVariable(name: "ops", arg: 4, scope: !4604, file: !3, line: 208, type: !3935)
!4650 = !DILocation(line: 208, column: 45, scope: !4604)
!4651 = !DILocalVariable(name: "sev", scope: !4604, file: !3, line: 210, type: !3924)
!4652 = !DILocation(line: 210, column: 32, scope: !4604)
!4653 = !DILocalVariable(name: "found_ev", scope: !4604, file: !3, line: 210, type: !3924)
!4654 = !DILocation(line: 210, column: 38, scope: !4604)
!4655 = !DILocalVariable(name: "flags", scope: !4604, file: !3, line: 211, type: !172)
!4656 = !DILocation(line: 211, column: 16, scope: !4604)
!4657 = !DILocalVariable(name: "i", scope: !4604, file: !3, line: 212, type: !7)
!4658 = !DILocation(line: 212, column: 11, scope: !4604)
!4659 = !DILocalVariable(name: "ret", scope: !4604, file: !3, line: 213, type: !180)
!4660 = !DILocation(line: 213, column: 6, scope: !4604)
!4661 = !DILocation(line: 215, column: 6, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 215, column: 6)
!4663 = !DILocation(line: 215, column: 11, scope: !4662)
!4664 = !DILocation(line: 215, column: 16, scope: !4662)
!4665 = !DILocation(line: 215, column: 6, scope: !4604)
!4666 = !DILocation(line: 216, column: 3, scope: !4662)
!4667 = !DILocation(line: 218, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 218, column: 6)
!4669 = !DILocation(line: 218, column: 12, scope: !4668)
!4670 = !DILocation(line: 218, column: 6, scope: !4604)
!4671 = !DILocation(line: 219, column: 9, scope: !4668)
!4672 = !DILocation(line: 219, column: 3, scope: !4668)
!4673 = !DILocation(line: 221, column: 17, scope: !4604)
!4674 = !DILocation(line: 221, column: 8, scope: !4604)
!4675 = !DILocation(line: 221, column: 6, scope: !4604)
!4676 = !DILocation(line: 222, column: 7, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 222, column: 6)
!4678 = !DILocation(line: 222, column: 6, scope: !4604)
!4679 = !DILocation(line: 223, column: 3, scope: !4677)
!4680 = !DILocation(line: 224, column: 9, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 224, column: 2)
!4682 = !DILocation(line: 224, column: 7, scope: !4681)
!4683 = !DILocation(line: 224, column: 14, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 224, column: 2)
!4685 = !DILocation(line: 224, column: 18, scope: !4684)
!4686 = !DILocation(line: 224, column: 16, scope: !4684)
!4687 = !DILocation(line: 224, column: 2, scope: !4681)
!4688 = !DILocation(line: 225, column: 24, scope: !4684)
!4689 = !DILocation(line: 225, column: 3, scope: !4684)
!4690 = !DILocation(line: 225, column: 8, scope: !4684)
!4691 = !DILocation(line: 225, column: 15, scope: !4684)
!4692 = !DILocation(line: 225, column: 18, scope: !4684)
!4693 = !DILocation(line: 225, column: 22, scope: !4684)
!4694 = !DILocation(line: 224, column: 26, scope: !4684)
!4695 = !DILocation(line: 224, column: 2, scope: !4684)
!4696 = distinct !{!4696, !4687, !4697}
!4697 = !DILocation(line: 225, column: 24, scope: !4681)
!4698 = !DILocation(line: 226, column: 14, scope: !4604)
!4699 = !DILocation(line: 226, column: 19, scope: !4604)
!4700 = !DILocation(line: 226, column: 2, scope: !4604)
!4701 = !DILocation(line: 226, column: 7, scope: !4604)
!4702 = !DILocation(line: 226, column: 12, scope: !4604)
!4703 = !DILocation(line: 227, column: 12, scope: !4604)
!4704 = !DILocation(line: 227, column: 17, scope: !4604)
!4705 = !DILocation(line: 227, column: 2, scope: !4604)
!4706 = !DILocation(line: 227, column: 7, scope: !4604)
!4707 = !DILocation(line: 227, column: 10, scope: !4604)
!4708 = !DILocation(line: 228, column: 15, scope: !4604)
!4709 = !DILocation(line: 228, column: 20, scope: !4604)
!4710 = !DILocation(line: 228, column: 2, scope: !4604)
!4711 = !DILocation(line: 228, column: 7, scope: !4604)
!4712 = !DILocation(line: 228, column: 13, scope: !4604)
!4713 = !DILocation(line: 229, column: 12, scope: !4604)
!4714 = !DILocation(line: 229, column: 2, scope: !4604)
!4715 = !DILocation(line: 229, column: 7, scope: !4604)
!4716 = !DILocation(line: 229, column: 10, scope: !4604)
!4717 = !DILocation(line: 230, column: 13, scope: !4604)
!4718 = !DILocation(line: 230, column: 2, scope: !4604)
!4719 = !DILocation(line: 230, column: 7, scope: !4604)
!4720 = !DILocation(line: 230, column: 11, scope: !4604)
!4721 = !DILocation(line: 231, column: 15, scope: !4604)
!4722 = !DILocation(line: 231, column: 2, scope: !4604)
!4723 = !DILocation(line: 231, column: 7, scope: !4604)
!4724 = !DILocation(line: 231, column: 13, scope: !4604)
!4725 = !DILocation(line: 233, column: 14, scope: !4604)
!4726 = !DILocation(line: 233, column: 18, scope: !4604)
!4727 = !DILocation(line: 233, column: 2, scope: !4604)
!4728 = !DILocation(line: 235, column: 2, scope: !4604)
!4729 = !DILocation(line: 235, column: 2, scope: !4642)
!4730 = !DILocalVariable(name: "__dummy", scope: !4731, file: !3, line: 235, type: !172)
!4731 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 235, column: 2)
!4732 = !DILocation(line: 235, column: 2, scope: !4731)
!4733 = !DILocalVariable(name: "__dummy2", scope: !4731, file: !3, line: 235, type: !172)
!4734 = !DILocation(line: 235, column: 2, scope: !4641)
!4735 = !DILocation(line: 235, column: 2, scope: !4640)
!4736 = !DILocation(line: 235, column: 2, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 235, column: 2)
!4738 = !DILocalVariable(name: "__dummy", scope: !4739, file: !3, line: 235, type: !172)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 235, column: 2)
!4740 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 235, column: 2)
!4741 = !DILocation(line: 235, column: 2, scope: !4739)
!4742 = !DILocalVariable(name: "__dummy2", scope: !4739, file: !3, line: 235, type: !172)
!4743 = !DILocation(line: 235, column: 2, scope: !4740)
!4744 = !DILocation(line: 235, column: 2, scope: !4639)
!4745 = !{i32 -2142116536}
!4746 = !DILocation(line: 235, column: 2, scope: !4638)
!4747 = !DILocation(line: 329, column: 10, scope: !4141, inlinedAt: !4637)
!4748 = !DILocation(line: 329, column: 16, scope: !4141, inlinedAt: !4637)
!4749 = !DILocation(line: 236, column: 35, scope: !4604)
!4750 = !DILocation(line: 236, column: 39, scope: !4604)
!4751 = !DILocation(line: 236, column: 44, scope: !4604)
!4752 = !DILocation(line: 236, column: 50, scope: !4604)
!4753 = !DILocation(line: 236, column: 55, scope: !4604)
!4754 = !DILocation(line: 236, column: 13, scope: !4604)
!4755 = !DILocation(line: 236, column: 11, scope: !4604)
!4756 = !DILocation(line: 237, column: 7, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 237, column: 6)
!4758 = !DILocation(line: 237, column: 6, scope: !4604)
!4759 = !DILocation(line: 238, column: 13, scope: !4757)
!4760 = !DILocation(line: 238, column: 18, scope: !4757)
!4761 = !DILocation(line: 238, column: 25, scope: !4757)
!4762 = !DILocation(line: 238, column: 29, scope: !4757)
!4763 = !DILocation(line: 238, column: 3, scope: !4757)
!4764 = !DILocation(line: 239, column: 26, scope: !4604)
!4765 = !DILocation(line: 239, column: 30, scope: !4604)
!4766 = !DILocation(line: 239, column: 36, scope: !4604)
!4767 = !DILocation(line: 239, column: 45, scope: !4604)
!4768 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !4631)
!4769 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !4631)
!4770 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !4631)
!4771 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !4631)
!4772 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !4631)
!4773 = !DILocation(line: 241, column: 6, scope: !4629)
!4774 = !DILocation(line: 241, column: 6, scope: !4604)
!4775 = !DILocation(line: 243, column: 10, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 241, column: 16)
!4777 = !DILocation(line: 243, column: 3, scope: !4776)
!4778 = !DILocation(line: 244, column: 2, scope: !4776)
!4779 = !DILocation(line: 244, column: 13, scope: !4628)
!4780 = !DILocation(line: 244, column: 18, scope: !4628)
!4781 = !DILocation(line: 244, column: 22, scope: !4628)
!4782 = !DILocation(line: 244, column: 25, scope: !4628)
!4783 = !DILocation(line: 244, column: 30, scope: !4628)
!4784 = !DILocation(line: 244, column: 35, scope: !4628)
!4785 = !DILocation(line: 244, column: 13, scope: !4629)
!4786 = !DILocation(line: 245, column: 9, scope: !4627)
!4787 = !DILocation(line: 245, column: 14, scope: !4627)
!4788 = !DILocation(line: 245, column: 19, scope: !4627)
!4789 = !DILocation(line: 245, column: 23, scope: !4627)
!4790 = !DILocation(line: 245, column: 28, scope: !4627)
!4791 = !DILocation(line: 245, column: 7, scope: !4627)
!4792 = !DILocation(line: 246, column: 7, scope: !4626)
!4793 = !DILocation(line: 246, column: 7, scope: !4627)
!4794 = !DILocation(line: 247, column: 4, scope: !4625)
!4795 = !DILocation(line: 247, column: 4, scope: !4624)
!4796 = !DILocalVariable(name: "__dummy", scope: !4797, file: !3, line: 247, type: !172)
!4797 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 247, column: 4)
!4798 = !DILocation(line: 247, column: 4, scope: !4797)
!4799 = !DILocalVariable(name: "__dummy2", scope: !4797, file: !3, line: 247, type: !172)
!4800 = !DILocation(line: 247, column: 4, scope: !4623)
!4801 = !DILocation(line: 247, column: 4, scope: !4622)
!4802 = !DILocation(line: 247, column: 4, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 247, column: 4)
!4804 = !DILocalVariable(name: "__dummy", scope: !4805, file: !3, line: 247, type: !172)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 247, column: 4)
!4806 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 247, column: 4)
!4807 = !DILocation(line: 247, column: 4, scope: !4805)
!4808 = !DILocalVariable(name: "__dummy2", scope: !4805, file: !3, line: 247, type: !172)
!4809 = !DILocation(line: 247, column: 4, scope: !4806)
!4810 = !DILocation(line: 247, column: 4, scope: !4621)
!4811 = !{i32 -2142115468}
!4812 = !DILocation(line: 247, column: 4, scope: !4620)
!4813 = !DILocation(line: 329, column: 10, scope: !4141, inlinedAt: !4619)
!4814 = !DILocation(line: 329, column: 16, scope: !4141, inlinedAt: !4619)
!4815 = !DILocation(line: 248, column: 29, scope: !4625)
!4816 = !DILocation(line: 248, column: 4, scope: !4625)
!4817 = !DILocation(line: 249, column: 28, scope: !4625)
!4818 = !DILocation(line: 249, column: 32, scope: !4625)
!4819 = !DILocation(line: 249, column: 38, scope: !4625)
!4820 = !DILocation(line: 249, column: 47, scope: !4625)
!4821 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !4634)
!4822 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !4634)
!4823 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !4634)
!4824 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !4634)
!4825 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !4634)
!4826 = !DILocation(line: 250, column: 11, scope: !4625)
!4827 = !DILocation(line: 250, column: 4, scope: !4625)
!4828 = !DILocation(line: 251, column: 3, scope: !4625)
!4829 = !DILocation(line: 252, column: 2, scope: !4627)
!4830 = !DILocation(line: 254, column: 16, scope: !4604)
!4831 = !DILocation(line: 254, column: 20, scope: !4604)
!4832 = !DILocation(line: 254, column: 2, scope: !4604)
!4833 = !DILocation(line: 256, column: 9, scope: !4604)
!4834 = !DILocation(line: 256, column: 2, scope: !4604)
!4835 = !DILocation(line: 257, column: 1, scope: !4604)
!4836 = distinct !DISubprogram(name: "kvzalloc", scope: !26, file: !26, line: 771, type: !4837, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!134, !344, !762}
!4839 = !DILocalVariable(name: "size", arg: 1, scope: !4836, file: !26, line: 771, type: !344)
!4840 = !DILocation(line: 771, column: 37, scope: !4836)
!4841 = !DILocalVariable(name: "flags", arg: 2, scope: !4836, file: !26, line: 771, type: !762)
!4842 = !DILocation(line: 771, column: 49, scope: !4836)
!4843 = !DILocation(line: 773, column: 18, scope: !4836)
!4844 = !DILocation(line: 773, column: 24, scope: !4836)
!4845 = !DILocation(line: 773, column: 30, scope: !4836)
!4846 = !DILocation(line: 773, column: 9, scope: !4836)
!4847 = !DILocation(line: 773, column: 2, scope: !4836)
!4848 = distinct !DISubprogram(name: "__ab_c_size", scope: !4849, file: !4849, line: 301, type: !4850, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4849 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!344, !344, !344, !344}
!4852 = !DILocalVariable(name: "a", arg: 1, scope: !4848, file: !4849, line: 301, type: !344)
!4853 = !DILocation(line: 301, column: 54, scope: !4848)
!4854 = !DILocalVariable(name: "b", arg: 2, scope: !4848, file: !4849, line: 301, type: !344)
!4855 = !DILocation(line: 301, column: 64, scope: !4848)
!4856 = !DILocalVariable(name: "c", arg: 3, scope: !4848, file: !4849, line: 301, type: !344)
!4857 = !DILocation(line: 301, column: 74, scope: !4848)
!4858 = !DILocalVariable(name: "bytes", scope: !4848, file: !4849, line: 303, type: !344)
!4859 = !DILocation(line: 303, column: 9, scope: !4848)
!4860 = !DILocalVariable(name: "__a", scope: !4861, file: !4849, line: 305, type: !344)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !4849, line: 305, column: 6)
!4862 = distinct !DILexicalBlock(scope: !4848, file: !4849, line: 305, column: 6)
!4863 = !DILocation(line: 305, column: 6, scope: !4861)
!4864 = !DILocalVariable(name: "__b", scope: !4861, file: !4849, line: 305, type: !344)
!4865 = !DILocalVariable(name: "__d", scope: !4861, file: !4849, line: 305, type: !4866)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!4867 = !DILocation(line: 305, column: 6, scope: !4862)
!4868 = !DILocation(line: 305, column: 6, scope: !4848)
!4869 = !DILocation(line: 306, column: 3, scope: !4862)
!4870 = !DILocalVariable(name: "__a", scope: !4871, file: !4849, line: 307, type: !344)
!4871 = distinct !DILexicalBlock(scope: !4872, file: !4849, line: 307, column: 6)
!4872 = distinct !DILexicalBlock(scope: !4848, file: !4849, line: 307, column: 6)
!4873 = !DILocation(line: 307, column: 6, scope: !4871)
!4874 = !DILocalVariable(name: "__b", scope: !4871, file: !4849, line: 307, type: !344)
!4875 = !DILocalVariable(name: "__d", scope: !4871, file: !4849, line: 307, type: !4866)
!4876 = !DILocation(line: 307, column: 6, scope: !4872)
!4877 = !DILocation(line: 307, column: 6, scope: !4848)
!4878 = !DILocation(line: 308, column: 3, scope: !4872)
!4879 = !DILocation(line: 310, column: 9, scope: !4848)
!4880 = !DILocation(line: 310, column: 2, scope: !4848)
!4881 = !DILocation(line: 311, column: 1, scope: !4848)
!4882 = distinct !DISubprogram(name: "v4l2_event_subscribed", scope: !3, file: !3, line: 88, type: !4883, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!3924, !135, !160, !160}
!4885 = !DILocalVariable(name: "fh", arg: 1, scope: !4882, file: !3, line: 89, type: !135)
!4886 = !DILocation(line: 89, column: 19, scope: !4882)
!4887 = !DILocalVariable(name: "type", arg: 2, scope: !4882, file: !3, line: 89, type: !160)
!4888 = !DILocation(line: 89, column: 27, scope: !4882)
!4889 = !DILocalVariable(name: "id", arg: 3, scope: !4882, file: !3, line: 89, type: !160)
!4890 = !DILocation(line: 89, column: 37, scope: !4882)
!4891 = !DILocalVariable(name: "sev", scope: !4882, file: !3, line: 91, type: !3924)
!4892 = !DILocation(line: 91, column: 32, scope: !4882)
!4893 = !DILocation(line: 93, column: 2, scope: !4882)
!4894 = !DILocation(line: 93, column: 2, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 93, column: 2)
!4896 = !DILocalVariable(name: "__mptr", scope: !4897, file: !3, line: 95, type: !134)
!4897 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 95, column: 2)
!4898 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 95, column: 2)
!4899 = !DILocation(line: 95, column: 2, scope: !4897)
!4900 = !DILocation(line: 95, column: 2, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 95, column: 2)
!4902 = !DILocation(line: 95, column: 2, scope: !4898)
!4903 = !DILocation(line: 95, column: 2, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 95, column: 2)
!4905 = !DILocation(line: 96, column: 7, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 96, column: 7)
!4907 = !DILocation(line: 96, column: 12, scope: !4906)
!4908 = !DILocation(line: 96, column: 20, scope: !4906)
!4909 = !DILocation(line: 96, column: 17, scope: !4906)
!4910 = !DILocation(line: 96, column: 25, scope: !4906)
!4911 = !DILocation(line: 96, column: 28, scope: !4906)
!4912 = !DILocation(line: 96, column: 33, scope: !4906)
!4913 = !DILocation(line: 96, column: 39, scope: !4906)
!4914 = !DILocation(line: 96, column: 36, scope: !4906)
!4915 = !DILocation(line: 96, column: 7, scope: !4904)
!4916 = !DILocation(line: 97, column: 11, scope: !4906)
!4917 = !DILocation(line: 97, column: 4, scope: !4906)
!4918 = !DILocalVariable(name: "__mptr", scope: !4919, file: !3, line: 95, type: !134)
!4919 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 95, column: 2)
!4920 = !DILocation(line: 95, column: 2, scope: !4919)
!4921 = !DILocation(line: 95, column: 2, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 95, column: 2)
!4923 = distinct !{!4923, !4902, !4924}
!4924 = !DILocation(line: 97, column: 11, scope: !4898)
!4925 = !DILocation(line: 99, column: 2, scope: !4882)
!4926 = !DILocation(line: 100, column: 1, scope: !4882)
!4927 = distinct !DISubprogram(name: "list_add", scope: !4928, file: !4928, line: 84, type: !4929, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4928 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !144, !144}
!4931 = !DILocalVariable(name: "new", arg: 1, scope: !4927, file: !4928, line: 84, type: !144)
!4932 = !DILocation(line: 84, column: 47, scope: !4927)
!4933 = !DILocalVariable(name: "head", arg: 2, scope: !4927, file: !4928, line: 84, type: !144)
!4934 = !DILocation(line: 84, column: 70, scope: !4927)
!4935 = !DILocation(line: 86, column: 13, scope: !4927)
!4936 = !DILocation(line: 86, column: 18, scope: !4927)
!4937 = !DILocation(line: 86, column: 24, scope: !4927)
!4938 = !DILocation(line: 86, column: 30, scope: !4927)
!4939 = !DILocation(line: 86, column: 2, scope: !4927)
!4940 = !DILocation(line: 87, column: 1, scope: !4927)
!4941 = distinct !DISubprogram(name: "__v4l2_event_unsubscribe", scope: !3, file: !3, line: 190, type: !3945, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4942 = !DILocalVariable(name: "sev", arg: 1, scope: !4941, file: !3, line: 190, type: !3924)
!4943 = !DILocation(line: 190, column: 68, scope: !4941)
!4944 = !DILocalVariable(name: "fh", scope: !4941, file: !3, line: 192, type: !135)
!4945 = !DILocation(line: 192, column: 18, scope: !4941)
!4946 = !DILocation(line: 192, column: 23, scope: !4941)
!4947 = !DILocation(line: 192, column: 28, scope: !4941)
!4948 = !DILocalVariable(name: "i", scope: !4941, file: !3, line: 193, type: !7)
!4949 = !DILocation(line: 193, column: 15, scope: !4941)
!4950 = !DILocation(line: 195, column: 2, scope: !4941)
!4951 = !DILocation(line: 195, column: 2, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 195, column: 2)
!4953 = !DILocation(line: 196, column: 2, scope: !4941)
!4954 = !DILocation(line: 196, column: 2, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 196, column: 2)
!4956 = !DILocation(line: 199, column: 9, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 199, column: 2)
!4958 = !DILocation(line: 199, column: 7, scope: !4957)
!4959 = !DILocation(line: 199, column: 14, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 199, column: 2)
!4961 = !DILocation(line: 199, column: 18, scope: !4960)
!4962 = !DILocation(line: 199, column: 23, scope: !4960)
!4963 = !DILocation(line: 199, column: 16, scope: !4960)
!4964 = !DILocation(line: 199, column: 2, scope: !4957)
!4965 = !DILocation(line: 200, column: 13, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 199, column: 36)
!4967 = !DILocation(line: 200, column: 18, scope: !4966)
!4968 = !DILocation(line: 200, column: 33, scope: !4966)
!4969 = !DILocation(line: 200, column: 38, scope: !4966)
!4970 = !DILocation(line: 200, column: 25, scope: !4966)
!4971 = !DILocation(line: 200, column: 42, scope: !4966)
!4972 = !DILocation(line: 200, column: 3, scope: !4966)
!4973 = !DILocation(line: 201, column: 3, scope: !4966)
!4974 = !DILocation(line: 201, column: 7, scope: !4966)
!4975 = !DILocation(line: 201, column: 17, scope: !4966)
!4976 = !DILocation(line: 202, column: 2, scope: !4966)
!4977 = !DILocation(line: 199, column: 32, scope: !4960)
!4978 = !DILocation(line: 199, column: 2, scope: !4960)
!4979 = distinct !{!4979, !4964, !4980}
!4980 = !DILocation(line: 202, column: 2, scope: !4957)
!4981 = !DILocation(line: 203, column: 12, scope: !4941)
!4982 = !DILocation(line: 203, column: 17, scope: !4941)
!4983 = !DILocation(line: 203, column: 2, scope: !4941)
!4984 = !DILocation(line: 204, column: 1, scope: !4941)
!4985 = distinct !DISubprogram(name: "v4l2_event_unsubscribe_all", scope: !3, file: !3, line: 260, type: !4986, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{null, !135}
!4988 = !DILocation(line: 327, column: 67, scope: !4141, inlinedAt: !4989)
!4989 = distinct !DILocation(line: 269, column: 3, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 269, column: 3)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 269, column: 3)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 269, column: 3)
!4993 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 269, column: 3)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 269, column: 3)
!4995 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 266, column: 5)
!4996 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !4997)
!4997 = distinct !DILocation(line: 276, column: 3, scope: !4995)
!4998 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !4997)
!4999 = !DILocalVariable(name: "fh", arg: 1, scope: !4985, file: !3, line: 260, type: !135)
!5000 = !DILocation(line: 260, column: 49, scope: !4985)
!5001 = !DILocalVariable(name: "sub", scope: !4985, file: !3, line: 262, type: !4609)
!5002 = !DILocation(line: 262, column: 33, scope: !4985)
!5003 = !DILocalVariable(name: "sev", scope: !4985, file: !3, line: 263, type: !3924)
!5004 = !DILocation(line: 263, column: 32, scope: !4985)
!5005 = !DILocalVariable(name: "flags", scope: !4985, file: !3, line: 264, type: !172)
!5006 = !DILocation(line: 264, column: 16, scope: !4985)
!5007 = !DILocation(line: 266, column: 2, scope: !4985)
!5008 = !DILocation(line: 267, column: 7, scope: !4995)
!5009 = !DILocation(line: 269, column: 3, scope: !4995)
!5010 = !DILocation(line: 269, column: 3, scope: !4994)
!5011 = !DILocalVariable(name: "__dummy", scope: !5012, file: !3, line: 269, type: !172)
!5012 = distinct !DILexicalBlock(scope: !4993, file: !3, line: 269, column: 3)
!5013 = !DILocation(line: 269, column: 3, scope: !5012)
!5014 = !DILocalVariable(name: "__dummy2", scope: !5012, file: !3, line: 269, type: !172)
!5015 = !DILocation(line: 269, column: 3, scope: !4993)
!5016 = !DILocation(line: 269, column: 3, scope: !4992)
!5017 = !DILocation(line: 269, column: 3, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 269, column: 3)
!5019 = !DILocalVariable(name: "__dummy", scope: !5020, file: !3, line: 269, type: !172)
!5020 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 269, column: 3)
!5021 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 269, column: 3)
!5022 = !DILocation(line: 269, column: 3, scope: !5020)
!5023 = !DILocalVariable(name: "__dummy2", scope: !5020, file: !3, line: 269, type: !172)
!5024 = !DILocation(line: 269, column: 3, scope: !5021)
!5025 = !DILocation(line: 269, column: 3, scope: !4991)
!5026 = !{i32 -2142114281}
!5027 = !DILocation(line: 269, column: 3, scope: !4990)
!5028 = !DILocation(line: 329, column: 10, scope: !4141, inlinedAt: !4989)
!5029 = !DILocation(line: 329, column: 16, scope: !4141, inlinedAt: !4989)
!5030 = !DILocation(line: 270, column: 20, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 270, column: 7)
!5032 = !DILocation(line: 270, column: 24, scope: !5031)
!5033 = !DILocation(line: 270, column: 8, scope: !5031)
!5034 = !DILocation(line: 270, column: 7, scope: !4995)
!5035 = !DILocalVariable(name: "__mptr", scope: !5036, file: !3, line: 271, type: !134)
!5036 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 271, column: 10)
!5037 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 270, column: 37)
!5038 = !DILocation(line: 271, column: 10, scope: !5036)
!5039 = !DILocation(line: 271, column: 10, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 271, column: 10)
!5041 = !DILocation(line: 271, column: 8, scope: !5037)
!5042 = !DILocation(line: 273, column: 15, scope: !5037)
!5043 = !DILocation(line: 273, column: 20, scope: !5037)
!5044 = !DILocation(line: 273, column: 8, scope: !5037)
!5045 = !DILocation(line: 273, column: 13, scope: !5037)
!5046 = !DILocation(line: 274, column: 13, scope: !5037)
!5047 = !DILocation(line: 274, column: 18, scope: !5037)
!5048 = !DILocation(line: 274, column: 8, scope: !5037)
!5049 = !DILocation(line: 274, column: 11, scope: !5037)
!5050 = !DILocation(line: 275, column: 3, scope: !5037)
!5051 = !DILocation(line: 276, column: 27, scope: !4995)
!5052 = !DILocation(line: 276, column: 31, scope: !4995)
!5053 = !DILocation(line: 276, column: 37, scope: !4995)
!5054 = !DILocation(line: 276, column: 46, scope: !4995)
!5055 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !4997)
!5056 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !4997)
!5057 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !4997)
!5058 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !4997)
!5059 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !4997)
!5060 = !DILocation(line: 277, column: 7, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 277, column: 7)
!5062 = !DILocation(line: 277, column: 7, scope: !4995)
!5063 = !DILocation(line: 278, column: 27, scope: !5061)
!5064 = !DILocation(line: 278, column: 4, scope: !5061)
!5065 = !DILocation(line: 279, column: 2, scope: !4995)
!5066 = !DILocation(line: 279, column: 11, scope: !4985)
!5067 = distinct !{!5067, !5007, !5068}
!5068 = !DILocation(line: 279, column: 14, scope: !4985)
!5069 = !DILocation(line: 280, column: 1, scope: !4985)
!5070 = distinct !DISubprogram(name: "list_empty", scope: !4928, file: !4928, line: 280, type: !5071, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!180, !5073}
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!5075 = !DILocalVariable(name: "head", arg: 1, scope: !5070, file: !4928, line: 280, type: !5073)
!5076 = !DILocation(line: 280, column: 54, scope: !5070)
!5077 = !DILocation(line: 282, column: 9, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5070, file: !4928, line: 282, column: 9)
!5079 = !DILocation(line: 282, column: 9, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5078, file: !4928, line: 282, column: 9)
!5081 = !DILocation(line: 282, column: 34, scope: !5070)
!5082 = !DILocation(line: 282, column: 31, scope: !5070)
!5083 = !DILocation(line: 282, column: 2, scope: !5070)
!5084 = distinct !DISubprogram(name: "v4l2_event_unsubscribe", scope: !3, file: !3, line: 283, type: !5085, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!180, !135, !4607}
!5087 = !DILocation(line: 407, column: 64, scope: !4127, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 302, column: 2, scope: !5084)
!5089 = !DILocation(line: 407, column: 84, scope: !4127, inlinedAt: !5088)
!5090 = !DILocation(line: 327, column: 67, scope: !4141, inlinedAt: !5091)
!5091 = distinct !DILocation(line: 296, column: 2, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 296, column: 2)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 296, column: 2)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 296, column: 2)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 296, column: 2)
!5096 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 296, column: 2)
!5097 = !DILocalVariable(name: "fh", arg: 1, scope: !5084, file: !3, line: 283, type: !135)
!5098 = !DILocation(line: 283, column: 44, scope: !5084)
!5099 = !DILocalVariable(name: "sub", arg: 2, scope: !5084, file: !3, line: 284, type: !4607)
!5100 = !DILocation(line: 284, column: 45, scope: !5084)
!5101 = !DILocalVariable(name: "sev", scope: !5084, file: !3, line: 286, type: !3924)
!5102 = !DILocation(line: 286, column: 32, scope: !5084)
!5103 = !DILocalVariable(name: "flags", scope: !5084, file: !3, line: 287, type: !172)
!5104 = !DILocation(line: 287, column: 16, scope: !5084)
!5105 = !DILocation(line: 289, column: 6, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 289, column: 6)
!5107 = !DILocation(line: 289, column: 11, scope: !5106)
!5108 = !DILocation(line: 289, column: 16, scope: !5106)
!5109 = !DILocation(line: 289, column: 6, scope: !5084)
!5110 = !DILocation(line: 290, column: 30, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 289, column: 35)
!5112 = !DILocation(line: 290, column: 3, scope: !5111)
!5113 = !DILocation(line: 291, column: 3, scope: !5111)
!5114 = !DILocation(line: 294, column: 14, scope: !5084)
!5115 = !DILocation(line: 294, column: 18, scope: !5084)
!5116 = !DILocation(line: 294, column: 2, scope: !5084)
!5117 = !DILocation(line: 296, column: 2, scope: !5084)
!5118 = !DILocation(line: 296, column: 2, scope: !5096)
!5119 = !DILocalVariable(name: "__dummy", scope: !5120, file: !3, line: 296, type: !172)
!5120 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 296, column: 2)
!5121 = !DILocation(line: 296, column: 2, scope: !5120)
!5122 = !DILocalVariable(name: "__dummy2", scope: !5120, file: !3, line: 296, type: !172)
!5123 = !DILocation(line: 296, column: 2, scope: !5095)
!5124 = !DILocation(line: 296, column: 2, scope: !5094)
!5125 = !DILocation(line: 296, column: 2, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 296, column: 2)
!5127 = !DILocalVariable(name: "__dummy", scope: !5128, file: !3, line: 296, type: !172)
!5128 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 296, column: 2)
!5129 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 296, column: 2)
!5130 = !DILocation(line: 296, column: 2, scope: !5128)
!5131 = !DILocalVariable(name: "__dummy2", scope: !5128, file: !3, line: 296, type: !172)
!5132 = !DILocation(line: 296, column: 2, scope: !5129)
!5133 = !DILocation(line: 296, column: 2, scope: !5093)
!5134 = !{i32 -2142111133}
!5135 = !DILocation(line: 296, column: 2, scope: !5092)
!5136 = !DILocation(line: 329, column: 10, scope: !4141, inlinedAt: !5091)
!5137 = !DILocation(line: 329, column: 16, scope: !4141, inlinedAt: !5091)
!5138 = !DILocation(line: 298, column: 30, scope: !5084)
!5139 = !DILocation(line: 298, column: 34, scope: !5084)
!5140 = !DILocation(line: 298, column: 39, scope: !5084)
!5141 = !DILocation(line: 298, column: 45, scope: !5084)
!5142 = !DILocation(line: 298, column: 50, scope: !5084)
!5143 = !DILocation(line: 298, column: 8, scope: !5084)
!5144 = !DILocation(line: 298, column: 6, scope: !5084)
!5145 = !DILocation(line: 299, column: 6, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 299, column: 6)
!5147 = !DILocation(line: 299, column: 10, scope: !5146)
!5148 = !DILocation(line: 299, column: 6, scope: !5084)
!5149 = !DILocation(line: 300, column: 28, scope: !5146)
!5150 = !DILocation(line: 300, column: 3, scope: !5146)
!5151 = !DILocation(line: 302, column: 26, scope: !5084)
!5152 = !DILocation(line: 302, column: 30, scope: !5084)
!5153 = !DILocation(line: 302, column: 36, scope: !5084)
!5154 = !DILocation(line: 302, column: 45, scope: !5084)
!5155 = !DILocation(line: 409, column: 2, scope: !4192, inlinedAt: !5088)
!5156 = !DILocation(line: 409, column: 2, scope: !4197, inlinedAt: !5088)
!5157 = !DILocation(line: 409, column: 2, scope: !4198, inlinedAt: !5088)
!5158 = !DILocation(line: 409, column: 2, scope: !4205, inlinedAt: !5088)
!5159 = !DILocation(line: 409, column: 2, scope: !4208, inlinedAt: !5088)
!5160 = !DILocation(line: 304, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 304, column: 6)
!5162 = !DILocation(line: 304, column: 10, scope: !5161)
!5163 = !DILocation(line: 304, column: 13, scope: !5161)
!5164 = !DILocation(line: 304, column: 18, scope: !5161)
!5165 = !DILocation(line: 304, column: 22, scope: !5161)
!5166 = !DILocation(line: 304, column: 25, scope: !5161)
!5167 = !DILocation(line: 304, column: 30, scope: !5161)
!5168 = !DILocation(line: 304, column: 35, scope: !5161)
!5169 = !DILocation(line: 304, column: 6, scope: !5084)
!5170 = !DILocation(line: 305, column: 3, scope: !5161)
!5171 = !DILocation(line: 305, column: 8, scope: !5161)
!5172 = !DILocation(line: 305, column: 13, scope: !5161)
!5173 = !DILocation(line: 305, column: 17, scope: !5161)
!5174 = !DILocation(line: 307, column: 16, scope: !5084)
!5175 = !DILocation(line: 307, column: 20, scope: !5084)
!5176 = !DILocation(line: 307, column: 2, scope: !5084)
!5177 = !DILocation(line: 309, column: 9, scope: !5084)
!5178 = !DILocation(line: 309, column: 2, scope: !5084)
!5179 = !DILocation(line: 311, column: 2, scope: !5084)
!5180 = !DILocation(line: 312, column: 1, scope: !5084)
!5181 = distinct !DISubprogram(name: "v4l2_event_subdev_unsubscribe", scope: !3, file: !3, line: 315, type: !5182, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!180, !5184, !135, !5186}
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = !DICompositeType(tag: DW_TAG_structure_type, name: "v4l2_subdev", file: !3926, line: 20, flags: DIFlagFwdDecl)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!5187 = !DILocalVariable(name: "sd", arg: 1, scope: !5181, file: !3, line: 315, type: !5184)
!5188 = !DILocation(line: 315, column: 55, scope: !5181)
!5189 = !DILocalVariable(name: "fh", arg: 2, scope: !5181, file: !3, line: 315, type: !135)
!5190 = !DILocation(line: 315, column: 75, scope: !5181)
!5191 = !DILocalVariable(name: "sub", arg: 3, scope: !5181, file: !3, line: 316, type: !5186)
!5192 = !DILocation(line: 316, column: 39, scope: !5181)
!5193 = !DILocation(line: 318, column: 32, scope: !5181)
!5194 = !DILocation(line: 318, column: 36, scope: !5181)
!5195 = !DILocation(line: 318, column: 9, scope: !5181)
!5196 = !DILocation(line: 318, column: 2, scope: !5181)
!5197 = distinct !DISubprogram(name: "v4l2_src_change_event_subscribe", scope: !3, file: !3, line: 342, type: !5085, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5198 = !DILocalVariable(name: "fh", arg: 1, scope: !5197, file: !3, line: 342, type: !135)
!5199 = !DILocation(line: 342, column: 53, scope: !5197)
!5200 = !DILocalVariable(name: "sub", arg: 2, scope: !5197, file: !3, line: 343, type: !4607)
!5201 = !DILocation(line: 343, column: 43, scope: !5197)
!5202 = !DILocation(line: 345, column: 6, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 345, column: 6)
!5204 = !DILocation(line: 345, column: 11, scope: !5203)
!5205 = !DILocation(line: 345, column: 16, scope: !5203)
!5206 = !DILocation(line: 345, column: 6, scope: !5197)
!5207 = !DILocation(line: 346, column: 31, scope: !5203)
!5208 = !DILocation(line: 346, column: 35, scope: !5203)
!5209 = !DILocation(line: 346, column: 10, scope: !5203)
!5210 = !DILocation(line: 346, column: 3, scope: !5203)
!5211 = !DILocation(line: 347, column: 2, scope: !5197)
!5212 = !DILocation(line: 348, column: 1, scope: !5197)
!5213 = distinct !DISubprogram(name: "v4l2_src_change_event_subdev_subscribe", scope: !3, file: !3, line: 351, type: !5182, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5214 = !DILocalVariable(name: "sd", arg: 1, scope: !5213, file: !3, line: 351, type: !5184)
!5215 = !DILocation(line: 351, column: 64, scope: !5213)
!5216 = !DILocalVariable(name: "fh", arg: 2, scope: !5213, file: !3, line: 352, type: !135)
!5217 = !DILocation(line: 352, column: 19, scope: !5213)
!5218 = !DILocalVariable(name: "sub", arg: 3, scope: !5213, file: !3, line: 352, type: !5186)
!5219 = !DILocation(line: 352, column: 55, scope: !5213)
!5220 = !DILocation(line: 354, column: 41, scope: !5213)
!5221 = !DILocation(line: 354, column: 45, scope: !5213)
!5222 = !DILocation(line: 354, column: 9, scope: !5213)
!5223 = !DILocation(line: 354, column: 2, scope: !5213)
!5224 = distinct !DISubprogram(name: "list_del", scope: !4928, file: !4928, line: 144, type: !5225, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{null, !144}
!5227 = !DILocalVariable(name: "entry", arg: 1, scope: !5224, file: !4928, line: 144, type: !144)
!5228 = !DILocation(line: 144, column: 47, scope: !5224)
!5229 = !DILocation(line: 146, column: 19, scope: !5224)
!5230 = !DILocation(line: 146, column: 2, scope: !5224)
!5231 = !DILocation(line: 147, column: 2, scope: !5224)
!5232 = !DILocation(line: 147, column: 9, scope: !5224)
!5233 = !DILocation(line: 147, column: 14, scope: !5224)
!5234 = !DILocation(line: 148, column: 2, scope: !5224)
!5235 = !DILocation(line: 148, column: 9, scope: !5224)
!5236 = !DILocation(line: 148, column: 14, scope: !5224)
!5237 = !DILocation(line: 149, column: 1, scope: !5224)
!5238 = distinct !DISubprogram(name: "sev_pos", scope: !3, file: !3, line: 21, type: !5239, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!7, !5241, !7}
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3925)
!5243 = !DILocalVariable(name: "sev", arg: 1, scope: !5238, file: !3, line: 21, type: !5241)
!5244 = !DILocation(line: 21, column: 61, scope: !5238)
!5245 = !DILocalVariable(name: "idx", arg: 2, scope: !5238, file: !3, line: 21, type: !7)
!5246 = !DILocation(line: 21, column: 75, scope: !5238)
!5247 = !DILocation(line: 23, column: 9, scope: !5238)
!5248 = !DILocation(line: 23, column: 14, scope: !5238)
!5249 = !DILocation(line: 23, column: 6, scope: !5238)
!5250 = !DILocation(line: 24, column: 9, scope: !5238)
!5251 = !DILocation(line: 24, column: 16, scope: !5238)
!5252 = !DILocation(line: 24, column: 21, scope: !5238)
!5253 = !DILocation(line: 24, column: 13, scope: !5238)
!5254 = !DILocation(line: 24, column: 29, scope: !5238)
!5255 = !DILocation(line: 24, column: 35, scope: !5238)
!5256 = !DILocation(line: 24, column: 40, scope: !5238)
!5257 = !DILocation(line: 24, column: 33, scope: !5238)
!5258 = !DILocation(line: 24, column: 48, scope: !5238)
!5259 = !DILocation(line: 24, column: 2, scope: !5238)
!5260 = distinct !DISubprogram(name: "__list_del_entry", scope: !4928, file: !4928, line: 130, type: !5225, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5261 = !DILocalVariable(name: "entry", arg: 1, scope: !5260, file: !4928, line: 130, type: !144)
!5262 = !DILocation(line: 130, column: 55, scope: !5260)
!5263 = !DILocation(line: 132, column: 30, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5260, file: !4928, line: 132, column: 6)
!5265 = !DILocation(line: 132, column: 7, scope: !5264)
!5266 = !DILocation(line: 132, column: 6, scope: !5260)
!5267 = !DILocation(line: 133, column: 3, scope: !5264)
!5268 = !DILocation(line: 135, column: 13, scope: !5260)
!5269 = !DILocation(line: 135, column: 20, scope: !5260)
!5270 = !DILocation(line: 135, column: 26, scope: !5260)
!5271 = !DILocation(line: 135, column: 33, scope: !5260)
!5272 = !DILocation(line: 135, column: 2, scope: !5260)
!5273 = !DILocation(line: 136, column: 1, scope: !5260)
!5274 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4928, file: !4928, line: 51, type: !5275, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!231, !144}
!5277 = !DILocalVariable(name: "entry", arg: 1, scope: !5274, file: !4928, line: 51, type: !144)
!5278 = !DILocation(line: 51, column: 61, scope: !5274)
!5279 = !DILocation(line: 53, column: 2, scope: !5274)
!5280 = distinct !DISubprogram(name: "__list_del", scope: !4928, file: !4928, line: 110, type: !4929, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5281 = !DILocalVariable(name: "prev", arg: 1, scope: !5280, file: !4928, line: 110, type: !144)
!5282 = !DILocation(line: 110, column: 50, scope: !5280)
!5283 = !DILocalVariable(name: "next", arg: 2, scope: !5280, file: !4928, line: 110, type: !144)
!5284 = !DILocation(line: 110, column: 75, scope: !5280)
!5285 = !DILocation(line: 112, column: 15, scope: !5280)
!5286 = !DILocation(line: 112, column: 2, scope: !5280)
!5287 = !DILocation(line: 112, column: 8, scope: !5280)
!5288 = !DILocation(line: 112, column: 13, scope: !5280)
!5289 = !DILocation(line: 113, column: 2, scope: !5280)
!5290 = !DILocation(line: 113, column: 2, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5280, file: !4928, line: 113, column: 2)
!5292 = !DILocation(line: 113, column: 2, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5291, file: !4928, line: 113, column: 2)
!5294 = !DILocation(line: 113, column: 2, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5291, file: !4928, line: 113, column: 2)
!5296 = !DILocation(line: 114, column: 1, scope: !5280)
!5297 = distinct !DISubprogram(name: "ktime_to_ns", scope: !1302, file: !1302, line: 80, type: !5298, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5298 = !DISubroutineType(types: !5299)
!5299 = !{!796, !5300}
!5300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!5301 = !DILocalVariable(name: "kt", arg: 1, scope: !5297, file: !1302, line: 80, type: !5300)
!5302 = !DILocation(line: 80, column: 45, scope: !5297)
!5303 = !DILocation(line: 82, column: 9, scope: !5297)
!5304 = !DILocation(line: 82, column: 2, scope: !5297)
!5305 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4371, file: !4371, line: 646, type: !4372, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5306 = !DILocalVariable(name: "__ret", scope: !5307, file: !4371, line: 648, type: !172)
!5307 = distinct !DILexicalBlock(scope: !5305, file: !4371, line: 648, column: 9)
!5308 = !DILocation(line: 648, column: 9, scope: !5307)
!5309 = !DILocalVariable(name: "__edi", scope: !5307, file: !4371, line: 648, type: !172)
!5310 = !DILocalVariable(name: "__esi", scope: !5307, file: !4371, line: 648, type: !172)
!5311 = !DILocalVariable(name: "__edx", scope: !5307, file: !4371, line: 648, type: !172)
!5312 = !DILocalVariable(name: "__ecx", scope: !5307, file: !4371, line: 648, type: !172)
!5313 = !DILocalVariable(name: "__eax", scope: !5307, file: !4371, line: 648, type: !172)
!5314 = !DILocation(line: 648, column: 9, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !4371, line: 648, column: 9)
!5316 = distinct !DILexicalBlock(scope: !5307, file: !4371, line: 648, column: 9)
!5317 = !{i32 -2145866466, i32 -2145864151, i32 -2145863917, i32 -2145863866, i32 -2145863838, i32 -2145863813, i32 -2145864129, i32 -2145864116, i32 -2145863678, i32 -2145863559, i32 -2145864024, i32 -2145863997, i32 -2145863969, i32 -2145863939}
!5318 = !DILocalVariable(name: "__mask", scope: !5319, file: !4371, line: 648, type: !172)
!5319 = distinct !DILexicalBlock(scope: !5315, file: !4371, line: 648, column: 9)
!5320 = !DILocation(line: 648, column: 9, scope: !5319)
!5321 = !DILocation(line: 648, column: 9, scope: !5316)
!5322 = !DILocation(line: 648, column: 2, scope: !5305)
!5323 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4371, file: !4371, line: 656, type: !1885, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5324 = !DILocalVariable(name: "__edi", scope: !5325, file: !4371, line: 658, type: !172)
!5325 = distinct !DILexicalBlock(scope: !5323, file: !4371, line: 658, column: 2)
!5326 = !DILocation(line: 658, column: 2, scope: !5325)
!5327 = !DILocalVariable(name: "__esi", scope: !5325, file: !4371, line: 658, type: !172)
!5328 = !DILocalVariable(name: "__edx", scope: !5325, file: !4371, line: 658, type: !172)
!5329 = !DILocalVariable(name: "__ecx", scope: !5325, file: !4371, line: 658, type: !172)
!5330 = !DILocalVariable(name: "__eax", scope: !5325, file: !4371, line: 658, type: !172)
!5331 = !{i32 -2145859372, i32 -2145858640, i32 -2145858406, i32 -2145858355, i32 -2145858327, i32 -2145858302, i32 -2145858618, i32 -2145858605, i32 -2145858167, i32 -2145858048, i32 -2145858513, i32 -2145858486, i32 -2145858458, i32 -2145858428}
!5332 = !DILocation(line: 659, column: 1, scope: !5323)
!5333 = distinct !DISubprogram(name: "list_add_tail", scope: !4928, file: !4928, line: 98, type: !4929, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5334 = !DILocalVariable(name: "new", arg: 1, scope: !5333, file: !4928, line: 98, type: !144)
!5335 = !DILocation(line: 98, column: 52, scope: !5333)
!5336 = !DILocalVariable(name: "head", arg: 2, scope: !5333, file: !4928, line: 98, type: !144)
!5337 = !DILocation(line: 98, column: 75, scope: !5333)
!5338 = !DILocation(line: 100, column: 13, scope: !5333)
!5339 = !DILocation(line: 100, column: 18, scope: !5333)
!5340 = !DILocation(line: 100, column: 24, scope: !5333)
!5341 = !DILocation(line: 100, column: 30, scope: !5333)
!5342 = !DILocation(line: 100, column: 2, scope: !5333)
!5343 = !DILocation(line: 101, column: 1, scope: !5333)
!5344 = distinct !DISubprogram(name: "__list_add", scope: !4928, file: !4928, line: 63, type: !5345, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !144, !144, !144}
!5347 = !DILocalVariable(name: "new", arg: 1, scope: !5344, file: !4928, line: 63, type: !144)
!5348 = !DILocation(line: 63, column: 49, scope: !5344)
!5349 = !DILocalVariable(name: "prev", arg: 2, scope: !5344, file: !4928, line: 64, type: !144)
!5350 = !DILocation(line: 64, column: 28, scope: !5344)
!5351 = !DILocalVariable(name: "next", arg: 3, scope: !5344, file: !4928, line: 65, type: !144)
!5352 = !DILocation(line: 65, column: 28, scope: !5344)
!5353 = !DILocation(line: 67, column: 24, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5344, file: !4928, line: 67, column: 6)
!5355 = !DILocation(line: 67, column: 29, scope: !5354)
!5356 = !DILocation(line: 67, column: 35, scope: !5354)
!5357 = !DILocation(line: 67, column: 7, scope: !5354)
!5358 = !DILocation(line: 67, column: 6, scope: !5344)
!5359 = !DILocation(line: 68, column: 3, scope: !5354)
!5360 = !DILocation(line: 70, column: 15, scope: !5344)
!5361 = !DILocation(line: 70, column: 2, scope: !5344)
!5362 = !DILocation(line: 70, column: 8, scope: !5344)
!5363 = !DILocation(line: 70, column: 13, scope: !5344)
!5364 = !DILocation(line: 71, column: 14, scope: !5344)
!5365 = !DILocation(line: 71, column: 2, scope: !5344)
!5366 = !DILocation(line: 71, column: 7, scope: !5344)
!5367 = !DILocation(line: 71, column: 12, scope: !5344)
!5368 = !DILocation(line: 72, column: 14, scope: !5344)
!5369 = !DILocation(line: 72, column: 2, scope: !5344)
!5370 = !DILocation(line: 72, column: 7, scope: !5344)
!5371 = !DILocation(line: 72, column: 12, scope: !5344)
!5372 = !DILocation(line: 73, column: 2, scope: !5344)
!5373 = !DILocation(line: 73, column: 2, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5344, file: !4928, line: 73, column: 2)
!5375 = !DILocation(line: 73, column: 2, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5374, file: !4928, line: 73, column: 2)
!5377 = !DILocation(line: 73, column: 2, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5374, file: !4928, line: 73, column: 2)
!5379 = !DILocation(line: 74, column: 1, scope: !5344)
!5380 = distinct !DISubprogram(name: "__list_add_valid", scope: !4928, file: !4928, line: 45, type: !5381, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!231, !144, !144, !144}
!5383 = !DILocalVariable(name: "new", arg: 1, scope: !5380, file: !4928, line: 45, type: !144)
!5384 = !DILocation(line: 45, column: 55, scope: !5380)
!5385 = !DILocalVariable(name: "prev", arg: 2, scope: !5380, file: !4928, line: 46, type: !144)
!5386 = !DILocation(line: 46, column: 23, scope: !5380)
!5387 = !DILocalVariable(name: "next", arg: 3, scope: !5380, file: !4928, line: 47, type: !144)
!5388 = !DILocation(line: 47, column: 23, scope: !5380)
!5389 = !DILocation(line: 49, column: 2, scope: !5380)
!5390 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4371, file: !4371, line: 651, type: !5391, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{null, !172}
!5393 = !DILocalVariable(name: "f", arg: 1, scope: !5390, file: !4371, line: 651, type: !172)
!5394 = !DILocation(line: 651, column: 65, scope: !5390)
!5395 = !DILocalVariable(name: "__edi", scope: !5396, file: !4371, line: 653, type: !172)
!5396 = distinct !DILexicalBlock(scope: !5390, file: !4371, line: 653, column: 2)
!5397 = !DILocation(line: 653, column: 2, scope: !5396)
!5398 = !DILocalVariable(name: "__esi", scope: !5396, file: !4371, line: 653, type: !172)
!5399 = !DILocalVariable(name: "__edx", scope: !5396, file: !4371, line: 653, type: !172)
!5400 = !DILocalVariable(name: "__ecx", scope: !5396, file: !4371, line: 653, type: !172)
!5401 = !DILocalVariable(name: "__eax", scope: !5396, file: !4371, line: 653, type: !172)
!5402 = !{i32 -2145861999, i32 -2145861249, i32 -2145861015, i32 -2145860964, i32 -2145860936, i32 -2145860911, i32 -2145861227, i32 -2145861214, i32 -2145860776, i32 -2145860657, i32 -2145861122, i32 -2145861095, i32 -2145861067, i32 -2145861037}
!5403 = !DILocation(line: 654, column: 1, scope: !5390)
!5404 = distinct !DISubprogram(name: "kvmalloc", scope: !26, file: !26, line: 763, type: !4837, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5405 = !DILocalVariable(name: "size", arg: 1, scope: !5404, file: !26, line: 763, type: !344)
!5406 = !DILocation(line: 763, column: 37, scope: !5404)
!5407 = !DILocalVariable(name: "flags", arg: 2, scope: !5404, file: !26, line: 763, type: !762)
!5408 = !DILocation(line: 763, column: 49, scope: !5404)
!5409 = !DILocation(line: 765, column: 23, scope: !5404)
!5410 = !DILocation(line: 765, column: 29, scope: !5404)
!5411 = !DILocation(line: 765, column: 9, scope: !5404)
!5412 = !DILocation(line: 765, column: 2, scope: !5404)
!5413 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4849, file: !4849, line: 52, type: !5414, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!231, !231}
!5416 = !DILocalVariable(name: "overflow", arg: 1, scope: !5413, file: !4849, line: 52, type: !231)
!5417 = !DILocation(line: 52, column: 60, scope: !5413)
!5418 = !DILocation(line: 54, column: 9, scope: !5413)
!5419 = !DILocation(line: 54, column: 2, scope: !5413)
!5420 = distinct !DISubprogram(name: "v4l2_event_src_replace", scope: !3, file: !3, line: 322, type: !3949, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5421 = !DILocalVariable(name: "old", arg: 1, scope: !5420, file: !3, line: 322, type: !3951)
!5422 = !DILocation(line: 322, column: 55, scope: !5420)
!5423 = !DILocalVariable(name: "new", arg: 2, scope: !5420, file: !3, line: 323, type: !3999)
!5424 = !DILocation(line: 323, column: 30, scope: !5420)
!5425 = !DILocalVariable(name: "old_changes", scope: !5420, file: !3, line: 325, type: !160)
!5426 = !DILocation(line: 325, column: 6, scope: !5420)
!5427 = !DILocation(line: 325, column: 20, scope: !5420)
!5428 = !DILocation(line: 325, column: 25, scope: !5420)
!5429 = !DILocation(line: 325, column: 27, scope: !5420)
!5430 = !DILocation(line: 325, column: 38, scope: !5420)
!5431 = !DILocation(line: 327, column: 2, scope: !5420)
!5432 = !DILocation(line: 327, column: 7, scope: !5420)
!5433 = !DILocation(line: 327, column: 9, scope: !5420)
!5434 = !DILocation(line: 327, column: 22, scope: !5420)
!5435 = !DILocation(line: 327, column: 27, scope: !5420)
!5436 = !DILocation(line: 327, column: 29, scope: !5420)
!5437 = !DILocation(line: 328, column: 31, scope: !5420)
!5438 = !DILocation(line: 328, column: 2, scope: !5420)
!5439 = !DILocation(line: 328, column: 7, scope: !5420)
!5440 = !DILocation(line: 328, column: 9, scope: !5420)
!5441 = !DILocation(line: 328, column: 20, scope: !5420)
!5442 = !DILocation(line: 328, column: 28, scope: !5420)
!5443 = !DILocation(line: 329, column: 1, scope: !5420)
!5444 = distinct !DISubprogram(name: "v4l2_event_src_merge", scope: !3, file: !3, line: 331, type: !4003, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !271)
!5445 = !DILocalVariable(name: "old", arg: 1, scope: !5444, file: !3, line: 331, type: !3999)
!5446 = !DILocation(line: 331, column: 59, scope: !5444)
!5447 = !DILocalVariable(name: "new", arg: 2, scope: !5444, file: !3, line: 332, type: !3951)
!5448 = !DILocation(line: 332, column: 24, scope: !5444)
!5449 = !DILocation(line: 334, column: 31, scope: !5444)
!5450 = !DILocation(line: 334, column: 36, scope: !5444)
!5451 = !DILocation(line: 334, column: 38, scope: !5444)
!5452 = !DILocation(line: 334, column: 49, scope: !5444)
!5453 = !DILocation(line: 334, column: 2, scope: !5444)
!5454 = !DILocation(line: 334, column: 7, scope: !5444)
!5455 = !DILocation(line: 334, column: 9, scope: !5444)
!5456 = !DILocation(line: 334, column: 20, scope: !5444)
!5457 = !DILocation(line: 334, column: 28, scope: !5444)
!5458 = !DILocation(line: 335, column: 1, scope: !5444)
