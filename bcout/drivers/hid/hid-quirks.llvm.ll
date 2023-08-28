; ModuleID = '../bcout/drivers/hid/hid-quirks.llvm.bc'
source_filename = "drivers/hid/hid-quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.hid_device_id = type { i16, i16, i32, i32, i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.hid_device = type { i8*, i32, i8*, i32, %struct.hid_collection*, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, %struct.hid_driver*, %struct.hid_ll_driver*, %struct.mutex, i32, i64, i32, i32, i8, %struct.list_head, i8*, i8*, [128 x i8], [64 x i8], [64 x i8], i8*, i32 (%struct.hid_device*)*, i32 (%struct.hid_device*, i32)*, void (%struct.hid_device*)*, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, void (%struct.hid_device*, %struct.hid_report*)*, i16, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_collection = type { i32, i32, i32, i32 }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x %struct.hid_report*] }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x %struct.hid_field*], i32, i32, %struct.hid_device* }
%struct.hid_field = type { i32, i32, i32, %struct.hid_usage*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.hid_report*, i32, %struct.hid_input*, i16 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_input = type { %struct.list_head, %struct.hid_report*, %struct.input_dev*, i8*, i8, %struct.list_head, i32 }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
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
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
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
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.block_device = type opaque
%struct.backing_dev_info = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
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
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
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
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.55 = type { %struct.callback_head }
%struct.atomic_t = type { i32 }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
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
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.hid_driver = type { i8*, %struct.hid_device_id*, %struct.list_head, %struct.spinlock, i1 (%struct.hid_device*, i1)*, i32 (%struct.hid_device*, %struct.hid_device_id*)*, void (%struct.hid_device*)*, %struct.hid_report_id*, i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)*, %struct.hid_usage_id*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, void (%struct.hid_device*, %struct.hid_report*)*, i8* (%struct.hid_device*, i8*, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*)*, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)*, i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)*, %struct.device_driver }
%struct.hid_report_id = type { i32 }
%struct.hid_usage_id = type { i32, i32, i32 }
%struct.hid_ll_driver = type { i32 (%struct.hid_device*)*, void (%struct.hid_device*)*, i32 (%struct.hid_device*)*, void (%struct.hid_device*)*, i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*)*, void (%struct.hid_device*, %struct.hid_report*, i32)*, i32 (%struct.hid_device*)*, i32 (%struct.hid_device*, i8, i8*, i64, i8, i32)*, i32 (%struct.hid_device*, i8*, i64)*, i32 (%struct.hid_device*, i32, i32, i32)* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.quirks_list_struct = type { %struct.hid_device_id, %struct.list_head }

@.str = private unnamed_addr constant [27 x i8] c"HOLTEK  B-LINK USB Audio  \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"www.masterkit.ru MA901\00", align 1
@elan_acpi_id = internal constant [53 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"ELAN0000\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0100\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0600\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0601\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0602\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0603\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0604\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0605\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0606\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0607\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0608\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0609\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060B\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060C\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN060F\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0610\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0611\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0612\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0615\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0616\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0617\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0618\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0619\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061A\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061C\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061D\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061E\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN061F\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0620\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0621\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0622\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0623\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0624\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0625\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0626\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0627\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0628\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0629\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062A\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062B\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062C\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062D\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062E\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN062F\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0631\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0632\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0633\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0634\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0635\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0636\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN0637\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"ELAN1000\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !0
@hid_mouse_ignore_list = internal constant [56 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i64 0 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !129
@hid_ignore_list = internal constant [162 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1120, i32 4, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1120, i32 8, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1761, i32 41301, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 16, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 32, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 33, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 34, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 35, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2250, i32 36, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5834, i32 5378, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1423, i32 38688, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5926, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2821, i32 5979, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1994, i32 47104, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4815, i32 28945, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3224, i32 4416, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 5751, i32 259, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33162, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4292, i32 33348, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3468, i32 14, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 21760, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 29719, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4293, i32 33178, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4451, i32 512, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3455, i32 256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 777, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1636, i32 774, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3580, i32 4, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 127, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 206, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2290, i32 244, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2417, i32 8197, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1040, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 1194, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1917, i32 25210, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 144, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 257, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 259, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 260, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 261, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 262, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 263, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 264, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 512, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 513, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 514, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 515, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 516, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 517, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 518, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 519, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 768, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 769, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 770, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 771, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 772, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 773, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 774, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 775, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 776, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 777, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1024, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1025, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1026, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1027, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1028, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1029, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1280, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1281, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1282, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1283, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 1284, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4096, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4097, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4098, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4099, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4100, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4101, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4102, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1932, i32 4103, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1816, i32 53248, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2830, i32 37712, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2126, i32 4097, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 7040, i32 55040, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20483, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1112, i32 88, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4096, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4097, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4112, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4113, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4128, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4129, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4145, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4146, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4147, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4149, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4152, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4160, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4162, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4163, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4224, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4225, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4240, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4272, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4352, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4353, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4608, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 4624, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8192, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8208, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8224, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8240, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8256, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8272, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8273, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8288, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8304, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8320, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8336, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3857, i32 8352, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1848, i32 17728, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 118, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2523, i32 122, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 50, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 51, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 66, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1240, i32 62199, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1024, i32 50009, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 100, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 120, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 130, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 200, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 208, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 218, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 300, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 400, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 500, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2567, i32 600, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 3, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4940, i32 4, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 8482, i32 4660, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1137, i32 1559, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 3487, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 6109, i32 21760, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 3, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 7, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 8, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 9, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 16, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 19, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 27027, i32 45057, i64 0 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !135
@.str.2 = private unnamed_addr constant [17 x i8] c"0x%hx:0x%hx:0x%x\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\014Could not parse HID quirk module param %s\0A\00", align 1
@dquirks_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @dquirks_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @dquirks_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !142
@dquirks_list = internal global %struct.list_head { %struct.list_head* @dquirks_list, %struct.list_head* @dquirks_list }, align 8, !dbg !140
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@hid_debug = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"\017%s: Found dynamic quirk 0x%lx for HID device 0x%04x:0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"drivers/hid/hid-quirks.c\00", align 1
@hid_have_special_driver = internal constant [142 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 2522, i32 6, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 10, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 2522, i32 26, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 772, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 541, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 542, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 543, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 544, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 545, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 546, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 556, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 557, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 558, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 591, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 592, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 593, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 569, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 570, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 571, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 597, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 598, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 599, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 615, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1293, i32 12801, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 4128, i32 6, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1130, i32 35, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1130, i32 39, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1048, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4387, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4389, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 5153, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56929, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 56932, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 48289, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 60801, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1204, i32 1, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1304, i32 2, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1149, i32 8257, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50451, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50444, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49409, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50948, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50964, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50975, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49930, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50450, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49685, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49686, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49812, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49674, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49681, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49689, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49743, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49795, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49678, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49811, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49798, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49799, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49813, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51715, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51716, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49816, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49818, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49817, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49819, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49820, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49688, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50723, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50726, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1900, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 227, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 59, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 219, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 220, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1821, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 249, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1811, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1840, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 157, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 72, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 180, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1872, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1842, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i64 0 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 1793, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1382, i32 12292, i64 0 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !175
@hid_quirks = internal constant [164 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1750, i32 37, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1750, i32 38, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 5540, i32 36886, i64 268435456 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 2, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 2536, i32 49, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 8209, i32 1813, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1075, i32 4353, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1131, i32 65296, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8708, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8712, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8709, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8706, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8736, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8723, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 32801, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1367, i32 8196, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 45469, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 4179, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 2361, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1266, i32 1560, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1534, i32 20, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 211, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 28, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 244, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 243, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 81, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 255, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 242, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1678, i32 241, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6935, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6969, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6931, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6968, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6921, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6929, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6930, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6964, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6974, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 6940, i32 6933, i64 536871936 }, %struct.hid_device_id { i16 3, i16 0, i32 1054, i32 12844, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 16700, i32 12314, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 3083, i32 24491, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 2, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 10395, i32 3, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6147, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6211, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6145, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 121, i32 6144, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3823, i32 1, i64 72 }, %struct.hid_device_id { i16 3, i16 0, i32 1267, i32 -1, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1255, i32 32, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 8198, i32 280, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 10600, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 8889, i32 6, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5242, i32 57406, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5538, i32 79, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1351, i32 28672, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12304, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 3727, i32 12307, i64 64 }, %struct.hid_device_id { i16 5, i16 0, i32 10232, i32 3006, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 10232, i32 3007, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 16, i64 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 48, i64 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1931, i32 32, i64 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41110, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1241, i32 41619, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2634, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2890, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 4938, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2378, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 2369, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 1601, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1008, i32 8010, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 7350, i32 26240, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 4754, i32 18245, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20499, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20497, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20506, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20501, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20505, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 311, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24717, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24601, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24622, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24723, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49159, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49271, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49741, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49178, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49242, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49258, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 5840, i32 3020, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 203, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1945, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1959, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1961, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 33410, i32 12801, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 6000, i32 65280, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6017, i32 2717, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 2231, i32 1, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1854, i32 769, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 6256, i32 272, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6438, i32 3, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1539, i32 5634, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 7062, i32 5376, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2064, i32 1, i64 65600 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5648, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 5345, i32 5696, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1523, i32 255, i64 128 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32770, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32771, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 32769, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 2362, i32 9488, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19746, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19727, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 19813, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 20002, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1455, i32 12386, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12289, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12291, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1032, i32 12296, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 3034, i32 338, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 3, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 61440, i32 241, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 65303, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1884, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 597, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 1699, i32 1890, i64 1048576 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 39, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 6700, i32 35, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 5013, i32 44, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 7247, i32 2, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1647, i32 14208, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4144, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 2071, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 37376, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1111, i32 4115, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1072, i32 52651, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 2048, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1504, i32 4864, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2755, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 2808, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 7440, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 6851, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 22288, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 10265, i64 536870912 }, %struct.hid_device_id { i16 3, i16 0, i32 1635, i32 259, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 7165, i32 5768, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34946, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 9642, i32 34947, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 5215, i32 530, i64 192 }, %struct.hid_device_id { i16 3, i16 0, i32 1578, i32 513, i64 8 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 24577, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 21827, i32 100, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1281, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1280, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 5935, i32 1282, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 26231, i32 34818, i64 72 }, %struct.hid_device_id { i16 3, i16 0, i32 2341, i32 34816, i64 72 }, %struct.hid_device_id { i16 3, i16 0, i32 5824, i32 1505, i64 64 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 2178, i64 8 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !180
@.str.7 = private unnamed_addr constant [55 x i8] c"\017%s: Found squirk 0x%lx for HID device 0x%04x:0x%04x\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @hid_ignore(%struct.hid_device* %hdev) #0 !dbg !206 {
entry:
  %retval = alloca i1, align 1
  %hdev.addr = alloca %struct.hid_device*, align 8
  %i = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4038, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4040, metadata !DIExpression()), !dbg !4041
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4042
  %quirks = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 25, !dbg !4044
  %1 = load i32, i32* %quirks, align 4, !dbg !4044
  %conv = zext i32 %1 to i64, !dbg !4042
  %and = and i64 %conv, 1073741824, !dbg !4045
  %tobool = icmp ne i64 %and, 0, !dbg !4045
  br i1 %tobool, label %if.then, label %if.end, !dbg !4046

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4047
  br label %return, !dbg !4047

if.end:                                           ; preds = %entry
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4048
  %quirks1 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %2, i32 0, i32 25, !dbg !4050
  %3 = load i32, i32* %quirks1, align 4, !dbg !4050
  %conv2 = zext i32 %3 to i64, !dbg !4048
  %and3 = and i64 %conv2, 4, !dbg !4051
  %tobool4 = icmp ne i64 %and3, 0, !dbg !4051
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4052

if.then5:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !4053
  br label %return, !dbg !4053

if.end6:                                          ; preds = %if.end
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4054
  %vendor = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 10, !dbg !4055
  %5 = load i32, i32* %vendor, align 8, !dbg !4055
  switch i32 %5, label %sw.epilog [
    i32 1984, label %sw.bb
    i32 1133, label %sw.bb13
    i32 5570, label %sw.bb30
    i32 2903, label %sw.bb40
    i32 3141, label %sw.bb50
    i32 4303, label %sw.bb59
    i32 5824, label %sw.bb76
    i32 1267, label %sw.bb92
  ], !dbg !4056

sw.bb:                                            ; preds = %if.end6
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4057
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 11, !dbg !4060
  %7 = load i32, i32* %product, align 4, !dbg !4060
  %cmp = icmp uge i32 %7, 5376, !dbg !4061
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !4062

land.lhs.true:                                    ; preds = %sw.bb
  %8 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4063
  %product8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 11, !dbg !4064
  %9 = load i32, i32* %product8, align 4, !dbg !4064
  %cmp9 = icmp ule i32 %9, 5631, !dbg !4065
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !4066

if.then11:                                        ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !4067
  br label %return, !dbg !4067

if.end12:                                         ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !4068

sw.bb13:                                          ; preds = %if.end6
  %10 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4069
  %product14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 11, !dbg !4071
  %11 = load i32, i32* %product14, align 4, !dbg !4071
  %cmp15 = icmp uge i32 %11, 49424, !dbg !4072
  br i1 %cmp15, label %land.lhs.true17, label %if.end22, !dbg !4073

land.lhs.true17:                                  ; preds = %sw.bb13
  %12 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4074
  %product18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 11, !dbg !4075
  %13 = load i32, i32* %product18, align 4, !dbg !4075
  %cmp19 = icmp ule i32 %13, 49487, !dbg !4076
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4077

if.then21:                                        ; preds = %land.lhs.true17
  store i1 true, i1* %retval, align 1, !dbg !4078
  br label %return, !dbg !4078

if.end22:                                         ; preds = %land.lhs.true17, %sw.bb13
  %14 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4079
  %product23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 11, !dbg !4081
  %15 = load i32, i32* %product23, align 4, !dbg !4081
  %cmp24 = icmp eq i32 %15, 2574, !dbg !4082
  br i1 %cmp24, label %land.lhs.true26, label %if.end29, !dbg !4083

land.lhs.true26:                                  ; preds = %if.end22
  %16 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4084
  %name = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 30, !dbg !4085
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4084
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0)) #8, !dbg !4086
  %tobool27 = icmp ne i32 %call, 0, !dbg !4086
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4087

if.then28:                                        ; preds = %land.lhs.true26
  store i1 true, i1* %retval, align 1, !dbg !4088
  br label %return, !dbg !4088

if.end29:                                         ; preds = %land.lhs.true26, %if.end22
  br label %sw.epilog, !dbg !4089

sw.bb30:                                          ; preds = %if.end6
  %17 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4090
  %product31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 11, !dbg !4092
  %18 = load i32, i32* %product31, align 4, !dbg !4092
  %cmp32 = icmp uge i32 %18, 52, !dbg !4093
  br i1 %cmp32, label %land.lhs.true34, label %if.end39, !dbg !4094

land.lhs.true34:                                  ; preds = %sw.bb30
  %19 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4095
  %product35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 11, !dbg !4096
  %20 = load i32, i32* %product35, align 4, !dbg !4096
  %cmp36 = icmp ule i32 %20, 70, !dbg !4097
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !4098

if.then38:                                        ; preds = %land.lhs.true34
  store i1 true, i1* %retval, align 1, !dbg !4099
  br label %return, !dbg !4099

if.end39:                                         ; preds = %land.lhs.true34, %sw.bb30
  br label %sw.epilog, !dbg !4100

sw.bb40:                                          ; preds = %if.end6
  %21 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4101
  %product41 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 11, !dbg !4103
  %22 = load i32, i32* %product41, align 4, !dbg !4103
  %cmp42 = icmp uge i32 %22, 20480, !dbg !4104
  br i1 %cmp42, label %land.lhs.true44, label %if.end49, !dbg !4105

land.lhs.true44:                                  ; preds = %sw.bb40
  %23 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4106
  %product45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 11, !dbg !4107
  %24 = load i32, i32* %product45, align 4, !dbg !4107
  %cmp46 = icmp ule i32 %24, 36863, !dbg !4108
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !4109

if.then48:                                        ; preds = %land.lhs.true44
  store i1 true, i1* %retval, align 1, !dbg !4110
  br label %return, !dbg !4110

if.end49:                                         ; preds = %land.lhs.true44, %sw.bb40
  br label %sw.epilog, !dbg !4111

sw.bb50:                                          ; preds = %if.end6
  %25 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4112
  %product51 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 11, !dbg !4114
  %26 = load i32, i32* %product51, align 4, !dbg !4114
  %cmp52 = icmp eq i32 %26, 4112, !dbg !4115
  br i1 %cmp52, label %land.lhs.true54, label %if.end58, !dbg !4116

land.lhs.true54:                                  ; preds = %sw.bb50
  %27 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4117
  %type = getelementptr inbounds %struct.hid_device, %struct.hid_device* %27, i32 0, i32 13, !dbg !4118
  %28 = load i32, i32* %type, align 4, !dbg !4118
  %cmp55 = icmp eq i32 %28, 2, !dbg !4119
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !4120

if.then57:                                        ; preds = %land.lhs.true54
  store i1 true, i1* %retval, align 1, !dbg !4121
  br label %return, !dbg !4121

if.end58:                                         ; preds = %land.lhs.true54, %sw.bb50
  br label %sw.epilog, !dbg !4122

sw.bb59:                                          ; preds = %if.end6
  %29 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4123
  %product60 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 11, !dbg !4125
  %30 = load i32, i32* %product60, align 4, !dbg !4125
  %cmp61 = icmp uge i32 %30, 21760, !dbg !4126
  br i1 %cmp61, label %land.lhs.true63, label %lor.lhs.false, !dbg !4127

land.lhs.true63:                                  ; preds = %sw.bb59
  %31 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4128
  %product64 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %31, i32 0, i32 11, !dbg !4129
  %32 = load i32, i32* %product64, align 4, !dbg !4129
  %cmp65 = icmp ule i32 %32, 21763, !dbg !4130
  br i1 %cmp65, label %if.then74, label %lor.lhs.false, !dbg !4131

lor.lhs.false:                                    ; preds = %land.lhs.true63, %sw.bb59
  %33 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4132
  %product67 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %33, i32 0, i32 11, !dbg !4133
  %34 = load i32, i32* %product67, align 4, !dbg !4133
  %cmp68 = icmp uge i32 %34, 32865, !dbg !4134
  br i1 %cmp68, label %land.lhs.true70, label %if.end75, !dbg !4135

land.lhs.true70:                                  ; preds = %lor.lhs.false
  %35 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4136
  %product71 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %35, i32 0, i32 11, !dbg !4137
  %36 = load i32, i32* %product71, align 4, !dbg !4137
  %cmp72 = icmp ule i32 %36, 32872, !dbg !4138
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !4139

if.then74:                                        ; preds = %land.lhs.true70, %land.lhs.true63
  store i1 true, i1* %retval, align 1, !dbg !4140
  br label %return, !dbg !4140

if.end75:                                         ; preds = %land.lhs.true70, %lor.lhs.false
  br label %sw.epilog, !dbg !4141

sw.bb76:                                          ; preds = %if.end6
  %37 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4142
  %product77 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 11, !dbg !4144
  %38 = load i32, i32* %product77, align 4, !dbg !4144
  %cmp78 = icmp eq i32 %38, 1503, !dbg !4145
  br i1 %cmp78, label %land.lhs.true80, label %if.end91, !dbg !4146

land.lhs.true80:                                  ; preds = %sw.bb76
  %39 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4147
  %bus = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 8, !dbg !4148
  %40 = load i16, i16* %bus, align 4, !dbg !4148
  %conv81 = zext i16 %40 to i32, !dbg !4147
  %cmp82 = icmp eq i32 %conv81, 3, !dbg !4149
  br i1 %cmp82, label %land.lhs.true84, label %if.end91, !dbg !4150

land.lhs.true84:                                  ; preds = %land.lhs.true80
  %41 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4151
  %name85 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 30, !dbg !4152
  %arraydecay86 = getelementptr inbounds [128 x i8], [128 x i8]* %name85, i64 0, i64 0, !dbg !4151
  %call87 = call i32 @strncmp(i8* %arraydecay86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22) #8, !dbg !4153
  %cmp88 = icmp eq i32 %call87, 0, !dbg !4154
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !4155

if.then90:                                        ; preds = %land.lhs.true84
  store i1 true, i1* %retval, align 1, !dbg !4156
  br label %return, !dbg !4156

if.end91:                                         ; preds = %land.lhs.true84, %land.lhs.true80, %sw.bb76
  br label %sw.epilog, !dbg !4157

sw.bb92:                                          ; preds = %if.end6
  %42 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4158
  %product93 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %42, i32 0, i32 11, !dbg !4160
  %43 = load i32, i32* %product93, align 4, !dbg !4160
  %cmp94 = icmp eq i32 %43, 1025, !dbg !4161
  br i1 %cmp94, label %if.then100, label %lor.lhs.false96, !dbg !4162

lor.lhs.false96:                                  ; preds = %sw.bb92
  %44 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4163
  %product97 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 11, !dbg !4164
  %45 = load i32, i32* %product97, align 4, !dbg !4164
  %cmp98 = icmp eq i32 %45, 1024, !dbg !4165
  br i1 %cmp98, label %if.then100, label %if.end119, !dbg !4166

if.then100:                                       ; preds = %lor.lhs.false96, %sw.bb92
  store i32 0, i32* %i, align 4, !dbg !4167
  br label %for.cond, !dbg !4169

for.cond:                                         ; preds = %for.inc, %if.then100
  %46 = load i32, i32* %i, align 4, !dbg !4170
  %idxprom = sext i32 %46 to i64, !dbg !4172
  %arrayidx = getelementptr [53 x %struct.acpi_device_id], [53 x %struct.acpi_device_id]* @elan_acpi_id, i64 0, i64 %idxprom, !dbg !4172
  %id = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %arrayidx, i32 0, i32 0, !dbg !4173
  %arraydecay101 = getelementptr inbounds [9 x i8], [9 x i8]* %id, i64 0, i64 0, !dbg !4172
  %call102 = call i64 @strlen(i8* %arraydecay101) #8, !dbg !4174
  %tobool103 = icmp ne i64 %call102, 0, !dbg !4175
  br i1 %tobool103, label %for.body, label %for.end, !dbg !4175

for.body:                                         ; preds = %for.cond
  %47 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4176
  %name104 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %47, i32 0, i32 30, !dbg !4178
  %arraydecay105 = getelementptr inbounds [128 x i8], [128 x i8]* %name104, i64 0, i64 0, !dbg !4176
  %48 = load i32, i32* %i, align 4, !dbg !4179
  %idxprom106 = sext i32 %48 to i64, !dbg !4180
  %arrayidx107 = getelementptr [53 x %struct.acpi_device_id], [53 x %struct.acpi_device_id]* @elan_acpi_id, i64 0, i64 %idxprom106, !dbg !4180
  %id108 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %arrayidx107, i32 0, i32 0, !dbg !4181
  %arraydecay109 = getelementptr inbounds [9 x i8], [9 x i8]* %id108, i64 0, i64 0, !dbg !4180
  %49 = load i32, i32* %i, align 4, !dbg !4182
  %idxprom110 = sext i32 %49 to i64, !dbg !4183
  %arrayidx111 = getelementptr [53 x %struct.acpi_device_id], [53 x %struct.acpi_device_id]* @elan_acpi_id, i64 0, i64 %idxprom110, !dbg !4183
  %id112 = getelementptr inbounds %struct.acpi_device_id, %struct.acpi_device_id* %arrayidx111, i32 0, i32 0, !dbg !4184
  %arraydecay113 = getelementptr inbounds [9 x i8], [9 x i8]* %id112, i64 0, i64 0, !dbg !4183
  %call114 = call i64 @strlen(i8* %arraydecay113) #8, !dbg !4185
  %call115 = call i32 @strncmp(i8* %arraydecay105, i8* %arraydecay109, i64 %call114) #8, !dbg !4186
  %tobool116 = icmp ne i32 %call115, 0, !dbg !4186
  br i1 %tobool116, label %if.end118, label %if.then117, !dbg !4187

if.then117:                                       ; preds = %for.body
  store i1 true, i1* %retval, align 1, !dbg !4188
  br label %return, !dbg !4188

if.end118:                                        ; preds = %for.body
  br label %for.inc, !dbg !4189

for.inc:                                          ; preds = %if.end118
  %50 = load i32, i32* %i, align 4, !dbg !4190
  %inc = add i32 %50, 1, !dbg !4190
  store i32 %inc, i32* %i, align 4, !dbg !4190
  br label %for.cond, !dbg !4191, !llvm.loop !4192

for.end:                                          ; preds = %for.cond
  br label %if.end119, !dbg !4193

if.end119:                                        ; preds = %for.end, %lor.lhs.false96
  br label %sw.epilog, !dbg !4194

sw.epilog:                                        ; preds = %if.end6, %if.end119, %if.end91, %if.end75, %if.end58, %if.end49, %if.end39, %if.end29, %if.end12
  %51 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4195
  %type120 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %51, i32 0, i32 13, !dbg !4197
  %52 = load i32, i32* %type120, align 4, !dbg !4197
  %cmp121 = icmp eq i32 %52, 1, !dbg !4198
  br i1 %cmp121, label %land.lhs.true123, label %if.end127, !dbg !4199

land.lhs.true123:                                 ; preds = %sw.epilog
  %53 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4200
  %call124 = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %53, %struct.hid_device_id* getelementptr inbounds ([56 x %struct.hid_device_id], [56 x %struct.hid_device_id]* @hid_mouse_ignore_list, i64 0, i64 0)) #8, !dbg !4201
  %tobool125 = icmp ne %struct.hid_device_id* %call124, null, !dbg !4201
  br i1 %tobool125, label %if.then126, label %if.end127, !dbg !4202

if.then126:                                       ; preds = %land.lhs.true123
  store i1 true, i1* %retval, align 1, !dbg !4203
  br label %return, !dbg !4203

if.end127:                                        ; preds = %land.lhs.true123, %sw.epilog
  %54 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4204
  %call128 = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %54, %struct.hid_device_id* getelementptr inbounds ([162 x %struct.hid_device_id], [162 x %struct.hid_device_id]* @hid_ignore_list, i64 0, i64 0)) #8, !dbg !4205
  %tobool129 = icmp ne %struct.hid_device_id* %call128, null, !dbg !4206
  %lnot = xor i1 %tobool129, true, !dbg !4206
  %lnot130 = xor i1 %lnot, true, !dbg !4207
  store i1 %lnot130, i1* %retval, align 1, !dbg !4208
  br label %return, !dbg !4208

return:                                           ; preds = %if.end127, %if.then126, %if.then117, %if.then90, %if.then74, %if.then57, %if.then48, %if.then38, %if.then28, %if.then21, %if.then11, %if.then5, %if.then
  %55 = load i1, i1* %retval, align 1, !dbg !4209
  ret i1 %55, !dbg !4209
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.hid_device_id* @hid_match_id(%struct.hid_device*, %struct.hid_device_id*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hid_quirks_init(i8** %quirks_param, i16 zeroext %bus, i32 %count) #0 !dbg !4210 {
entry:
  %quirks_param.addr = alloca i8**, align 8
  %bus.addr = alloca i16, align 2
  %count.addr = alloca i32, align 4
  %id = alloca %struct.hid_device_id, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %vendor = alloca i16, align 2
  %product = alloca i16, align 2
  %quirks = alloca i32, align 4
  store i8** %quirks_param, i8*** %quirks_param.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %quirks_param.addr, metadata !4214, metadata !DIExpression()), !dbg !4215
  store i16 %bus, i16* %bus.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %bus.addr, metadata !4216, metadata !DIExpression()), !dbg !4217
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !4218, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.declare(metadata %struct.hid_device_id* %id, metadata !4220, metadata !DIExpression()), !dbg !4221
  %0 = bitcast %struct.hid_device_id* %id to i8*, !dbg !4221
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false), !dbg !4221
  call void @llvm.dbg.declare(metadata i32* %n, metadata !4222, metadata !DIExpression()), !dbg !4223
  store i32 0, i32* %n, align 4, !dbg !4223
  call void @llvm.dbg.declare(metadata i32* %m, metadata !4224, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.declare(metadata i16* %vendor, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata i16* %product, metadata !4228, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.declare(metadata i32* %quirks, metadata !4230, metadata !DIExpression()), !dbg !4231
  %1 = load i16, i16* %bus.addr, align 2, !dbg !4232
  %bus1 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %id, i32 0, i32 0, !dbg !4233
  store i16 %1, i16* %bus1, align 8, !dbg !4234
  br label %for.cond, !dbg !4235

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %n, align 4, !dbg !4236
  %3 = load i32, i32* %count.addr, align 4, !dbg !4239
  %cmp = icmp slt i32 %2, %3, !dbg !4240
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4241

land.rhs:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %quirks_param.addr, align 8, !dbg !4242
  %5 = load i32, i32* %n, align 4, !dbg !4243
  %idxprom = sext i32 %5 to i64, !dbg !4242
  %arrayidx = getelementptr i8*, i8** %4, i64 %idxprom, !dbg !4242
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !4242
  %tobool = icmp ne i8* %6, null, !dbg !4241
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !4244
  br i1 %7, label %for.body, label %for.end, !dbg !4245

for.body:                                         ; preds = %land.end
  %8 = load i8**, i8*** %quirks_param.addr, align 8, !dbg !4246
  %9 = load i32, i32* %n, align 4, !dbg !4248
  %idxprom2 = sext i32 %9 to i64, !dbg !4246
  %arrayidx3 = getelementptr i8*, i8** %8, i64 %idxprom2, !dbg !4246
  %10 = load i8*, i8** %arrayidx3, align 8, !dbg !4246
  %call = call i32 (i8*, i8*, ...) @sscanf(i8* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i16* %vendor, i16* %product, i32* %quirks) #8, !dbg !4249
  store i32 %call, i32* %m, align 4, !dbg !4250
  %11 = load i16, i16* %vendor, align 2, !dbg !4251
  %conv = zext i16 %11 to i32, !dbg !4252
  %vendor4 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %id, i32 0, i32 2, !dbg !4253
  store i32 %conv, i32* %vendor4, align 4, !dbg !4254
  %12 = load i16, i16* %product, align 2, !dbg !4255
  %conv5 = zext i16 %12 to i32, !dbg !4256
  %product6 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %id, i32 0, i32 3, !dbg !4257
  store i32 %conv5, i32* %product6, align 8, !dbg !4258
  %13 = load i32, i32* %m, align 4, !dbg !4259
  %cmp7 = icmp ne i32 %13, 3, !dbg !4261
  br i1 %cmp7, label %if.then, label %lor.lhs.false, !dbg !4262

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i32, i32* %quirks, align 4, !dbg !4263
  %conv9 = zext i32 %14 to i64, !dbg !4263
  %call10 = call i32 @hid_modify_dquirk(%struct.hid_device_id* %id, i64 %conv9) #8, !dbg !4264
  %cmp11 = icmp ne i32 %call10, 0, !dbg !4265
  br i1 %cmp11, label %if.then, label %if.end, !dbg !4266

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %15 = load i8**, i8*** %quirks_param.addr, align 8, !dbg !4267
  %16 = load i32, i32* %n, align 4, !dbg !4267
  %idxprom13 = sext i32 %16 to i64, !dbg !4267
  %arrayidx14 = getelementptr i8*, i8** %15, i64 %idxprom13, !dbg !4267
  %17 = load i8*, i8** %arrayidx14, align 8, !dbg !4267
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %17) #9, !dbg !4267
  br label %if.end, !dbg !4269

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !4270

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %n, align 4, !dbg !4271
  %inc = add i32 %18, 1, !dbg !4271
  store i32 %inc, i32* %n, align 4, !dbg !4271
  br label %for.cond, !dbg !4272, !llvm.loop !4273

for.end:                                          ; preds = %land.end
  ret i32 0, !dbg !4275
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @sscanf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_modify_dquirk(%struct.hid_device_id* %id, i64 %quirks) #0 !dbg !4276 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4280, metadata !DIExpression()), !dbg !4284
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4292, metadata !DIExpression()), !dbg !4293
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4294, metadata !DIExpression()), !dbg !4295
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4296, metadata !DIExpression()), !dbg !4297
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4298, metadata !DIExpression()), !dbg !4302
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4304, metadata !DIExpression()), !dbg !4308
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4310, metadata !DIExpression()), !dbg !4314
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4319, metadata !DIExpression()), !dbg !4320
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4321, metadata !DIExpression()), !dbg !4322
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4323, metadata !DIExpression()), !dbg !4324
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4325, metadata !DIExpression()), !dbg !4326
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4327, metadata !DIExpression()), !dbg !4328
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4329, metadata !DIExpression()), !dbg !4330
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4331, metadata !DIExpression()), !dbg !4332
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4333, metadata !DIExpression()), !dbg !4334
  %retval = alloca i32, align 4
  %id.addr = alloca %struct.hid_device_id*, align 8
  %quirks.addr = alloca i64, align 8
  %hdev = alloca %struct.hid_device*, align 8
  %q_new = alloca %struct.quirks_list_struct*, align 8
  %q = alloca %struct.quirks_list_struct*, align 8
  %list_edited = alloca i32, align 4
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.quirks_list_struct*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp27 = alloca %struct.quirks_list_struct*, align 8
  store %struct.hid_device_id* %id, %struct.hid_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %id.addr, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i64 %quirks, i64* %quirks.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %quirks.addr, metadata !4337, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev, metadata !4339, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.declare(metadata %struct.quirks_list_struct** %q_new, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.declare(metadata %struct.quirks_list_struct** %q, metadata !4343, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.declare(metadata i32* %list_edited, metadata !4345, metadata !DIExpression()), !dbg !4346
  store i32 0, i32* %list_edited, align 4, !dbg !4346
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4347, metadata !DIExpression()), !dbg !4348
  store i32 0, i32* %ret, align 4, !dbg !4348
  %call = call i8* @kzalloc(i64 7520, i32 3264) #8, !dbg !4349
  %0 = bitcast i8* %call to %struct.hid_device*, !dbg !4349
  store %struct.hid_device* %0, %struct.hid_device** %hdev, align 8, !dbg !4350
  %1 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4351
  %tobool = icmp ne %struct.hid_device* %1, null, !dbg !4351
  br i1 %tobool, label %if.end, label %if.then, !dbg !4353

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4354
  br label %return, !dbg !4354

if.end:                                           ; preds = %entry
  store i64 40, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4355
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4356
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4357

if.then.i:                                        ; preds = %if.end
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4358
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4359
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4360

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4361
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4362
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4363
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4364
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4328
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4365
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4366
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4367
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4368
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4369
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4370
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4371
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4371
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4371
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4371
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4371
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4372
  br label %kmalloc.exit, !dbg !4372

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4373
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4374
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4374
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4376

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4377
  br label %kmalloc_index.exit.i, !dbg !4377

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4378
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4380
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4381

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4382
  br label %kmalloc_index.exit.i, !dbg !4382

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4383
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4385
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4386

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4387
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4388
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4389

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4390
  br label %kmalloc_index.exit.i, !dbg !4390

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4391
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4393
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4394

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4395
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4396
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4397

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4398
  br label %kmalloc_index.exit.i, !dbg !4398

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4399
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4401
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4402

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4403
  br label %kmalloc_index.exit.i, !dbg !4403

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4404
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4406
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4407

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4408
  br label %kmalloc_index.exit.i, !dbg !4408

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4409
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4411
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4412

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4413
  br label %kmalloc_index.exit.i, !dbg !4413

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4414
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4416
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4417

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4418
  br label %kmalloc_index.exit.i, !dbg !4418

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4419
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4421
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4422

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4423
  br label %kmalloc_index.exit.i, !dbg !4423

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4424
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4426
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4427

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4428
  br label %kmalloc_index.exit.i, !dbg !4428

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4429
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4431
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4432

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4433
  br label %kmalloc_index.exit.i, !dbg !4433

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4434
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4436
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4437

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4438
  br label %kmalloc_index.exit.i, !dbg !4438

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4439
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4441
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4442

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4443
  br label %kmalloc_index.exit.i, !dbg !4443

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4444
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4446
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4447

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4448
  br label %kmalloc_index.exit.i, !dbg !4448

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4449
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4451
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4452

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4453
  br label %kmalloc_index.exit.i, !dbg !4453

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4454
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4456
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4457

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4458
  br label %kmalloc_index.exit.i, !dbg !4458

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4459
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4461
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4462

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4463
  br label %kmalloc_index.exit.i, !dbg !4463

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4464
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4466
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4467

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4468
  br label %kmalloc_index.exit.i, !dbg !4468

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4469
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4471
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4472

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4473
  br label %kmalloc_index.exit.i, !dbg !4473

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4474
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4476
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4477

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4478
  br label %kmalloc_index.exit.i, !dbg !4478

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4479
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4481
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4482

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4483
  br label %kmalloc_index.exit.i, !dbg !4483

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4484
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4486
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4487

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4488
  br label %kmalloc_index.exit.i, !dbg !4488

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4489
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4491
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4492

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4493
  br label %kmalloc_index.exit.i, !dbg !4493

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4494
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4496
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4497

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4498
  br label %kmalloc_index.exit.i, !dbg !4498

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4499
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4501
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4502

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4503
  br label %kmalloc_index.exit.i, !dbg !4503

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4504
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4506
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4507

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4508
  br label %kmalloc_index.exit.i, !dbg !4508

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4509
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4511
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4512

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4513
  br label %kmalloc_index.exit.i, !dbg !4513

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4514
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4516
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4517

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4518
  br label %kmalloc_index.exit.i, !dbg !4518

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4519, !srcloc !4522
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4523, !srcloc !4526
  unreachable, !dbg !4527

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4528
  store i32 %45, i32* %index.i, align 4, !dbg !4529
  %46 = load i32, i32* %index.i, align 4, !dbg !4530
  %tobool.i = icmp ne i32 %46, 0, !dbg !4530
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4532

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4533
  br label %kmalloc.exit, !dbg !4533

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4534
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4535
  %and.i.i = and i32 %48, 17, !dbg !4535
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4535
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4535
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4535
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4535
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4537

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4538
  br label %kmalloc_type.exit.i, !dbg !4538

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4539
  %and2.i.i = and i32 %49, 1, !dbg !4540
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4539
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4539
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4539
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4541
  br label %kmalloc_type.exit.i, !dbg !4541

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4542
  %idxprom.i = zext i32 %51 to i64, !dbg !4543
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4543
  %52 = load i32, i32* %index.i, align 4, !dbg !4544
  %idxprom6.i = zext i32 %52 to i64, !dbg !4543
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4543
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4543
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4545
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4546
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4547
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4548
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4549
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4549
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4549
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4549
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4549
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4297
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4550
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4551
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4552
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4553
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4554
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4555
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4556
  store i8* %62, i8** %retval.i, align 8, !dbg !4557
  br label %kmalloc.exit, !dbg !4557

if.end9.i:                                        ; preds = %if.end
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4558
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4559
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4560
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4560
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4560
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4560
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4560
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4561
  br label %kmalloc.exit, !dbg !4561

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4562
  %66 = bitcast i8* %65 to %struct.quirks_list_struct*, !dbg !4563
  store %struct.quirks_list_struct* %66, %struct.quirks_list_struct** %q_new, align 8, !dbg !4564
  %67 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4565
  %tobool2 = icmp ne %struct.quirks_list_struct* %67, null, !dbg !4565
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4567

if.then3:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %ret, align 4, !dbg !4568
  br label %out, !dbg !4570

if.end4:                                          ; preds = %kmalloc.exit
  %68 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4571
  %bus = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %68, i32 0, i32 0, !dbg !4572
  %69 = load i16, i16* %bus, align 8, !dbg !4572
  %70 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4573
  %hid_bl_item = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %70, i32 0, i32 0, !dbg !4574
  %bus5 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %hid_bl_item, i32 0, i32 0, !dbg !4575
  store i16 %69, i16* %bus5, align 8, !dbg !4576
  %71 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4577
  %bus6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %71, i32 0, i32 8, !dbg !4578
  store i16 %69, i16* %bus6, align 4, !dbg !4579
  %72 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4580
  %group = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %72, i32 0, i32 1, !dbg !4581
  %73 = load i16, i16* %group, align 2, !dbg !4581
  %74 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4582
  %hid_bl_item7 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %74, i32 0, i32 0, !dbg !4583
  %group8 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %hid_bl_item7, i32 0, i32 1, !dbg !4584
  store i16 %73, i16* %group8, align 2, !dbg !4585
  %75 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4586
  %group9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %75, i32 0, i32 9, !dbg !4587
  store i16 %73, i16* %group9, align 2, !dbg !4588
  %76 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4589
  %vendor = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %76, i32 0, i32 2, !dbg !4590
  %77 = load i32, i32* %vendor, align 4, !dbg !4590
  %78 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4591
  %hid_bl_item10 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %78, i32 0, i32 0, !dbg !4592
  %vendor11 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %hid_bl_item10, i32 0, i32 2, !dbg !4593
  store i32 %77, i32* %vendor11, align 4, !dbg !4594
  %79 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4595
  %vendor12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 10, !dbg !4596
  store i32 %77, i32* %vendor12, align 8, !dbg !4597
  %80 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4598
  %product = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %80, i32 0, i32 3, !dbg !4599
  %81 = load i32, i32* %product, align 8, !dbg !4599
  %82 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4600
  %hid_bl_item13 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %82, i32 0, i32 0, !dbg !4601
  %product14 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %hid_bl_item13, i32 0, i32 3, !dbg !4602
  store i32 %81, i32* %product14, align 8, !dbg !4603
  %83 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4604
  %product15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %83, i32 0, i32 11, !dbg !4605
  store i32 %81, i32* %product15, align 4, !dbg !4606
  %84 = load i64, i64* %quirks.addr, align 8, !dbg !4607
  %85 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4608
  %hid_bl_item16 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %85, i32 0, i32 0, !dbg !4609
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %hid_bl_item16, i32 0, i32 4, !dbg !4610
  store i64 %84, i64* %driver_data, align 8, !dbg !4611
  call void @mutex_lock(%struct.mutex* @dquirks_lock) #8, !dbg !4612
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4613, metadata !DIExpression()), !dbg !4616
  %86 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dquirks_list, i32 0, i32 0), align 8, !dbg !4616
  %87 = bitcast %struct.list_head* %86 to i8*, !dbg !4616
  store i8* %87, i8** %__mptr, align 8, !dbg !4616
  br label %do.body, !dbg !4616

do.body:                                          ; preds = %if.end4
  br label %do.end, !dbg !4617

do.end:                                           ; preds = %do.body
  %88 = load i8*, i8** %__mptr, align 8, !dbg !4616
  %add.ptr = getelementptr i8, i8* %88, i64 -24, !dbg !4616
  %89 = bitcast i8* %add.ptr to %struct.quirks_list_struct*, !dbg !4616
  store %struct.quirks_list_struct* %89, %struct.quirks_list_struct** %tmp, align 8, !dbg !4617
  %90 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %tmp, align 8, !dbg !4616
  store %struct.quirks_list_struct* %90, %struct.quirks_list_struct** %q, align 8, !dbg !4619
  br label %for.cond, !dbg !4619

for.cond:                                         ; preds = %do.end26, %do.end
  %91 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4620
  %node = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %91, i32 0, i32 1, !dbg !4620
  %cmp = icmp eq %struct.list_head* %node, @dquirks_list, !dbg !4620
  %lnot = xor i1 %cmp, true, !dbg !4620
  br i1 %lnot, label %for.body, label %for.end, !dbg !4619

for.body:                                         ; preds = %for.cond
  %92 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4622
  %93 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4625
  %hid_bl_item17 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %93, i32 0, i32 0, !dbg !4626
  %call18 = call zeroext i1 @hid_match_one_id(%struct.hid_device* %92, %struct.hid_device_id* %hid_bl_item17) #8, !dbg !4627
  br i1 %call18, label %if.then19, label %if.end22, !dbg !4628

if.then19:                                        ; preds = %for.body
  %94 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4629
  %node20 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %94, i32 0, i32 1, !dbg !4631
  %95 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4632
  %node21 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %95, i32 0, i32 1, !dbg !4633
  call void @list_replace(%struct.list_head* %node20, %struct.list_head* %node21) #8, !dbg !4634
  %96 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4635
  %97 = bitcast %struct.quirks_list_struct* %96 to i8*, !dbg !4635
  call void @kfree(i8* %97) #8, !dbg !4636
  store i32 1, i32* %list_edited, align 4, !dbg !4637
  br label %for.end, !dbg !4638

if.end22:                                         ; preds = %for.body
  br label %for.inc, !dbg !4639

for.inc:                                          ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !4640, metadata !DIExpression()), !dbg !4642
  %98 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4642
  %node24 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %98, i32 0, i32 1, !dbg !4642
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node24, i32 0, i32 0, !dbg !4642
  %99 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4642
  %100 = bitcast %struct.list_head* %99 to i8*, !dbg !4642
  store i8* %100, i8** %__mptr23, align 8, !dbg !4642
  br label %do.body25, !dbg !4642

do.body25:                                        ; preds = %for.inc
  br label %do.end26, !dbg !4643

do.end26:                                         ; preds = %do.body25
  %101 = load i8*, i8** %__mptr23, align 8, !dbg !4642
  %add.ptr28 = getelementptr i8, i8* %101, i64 -24, !dbg !4642
  %102 = bitcast i8* %add.ptr28 to %struct.quirks_list_struct*, !dbg !4642
  store %struct.quirks_list_struct* %102, %struct.quirks_list_struct** %tmp27, align 8, !dbg !4643
  %103 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %tmp27, align 8, !dbg !4642
  store %struct.quirks_list_struct* %103, %struct.quirks_list_struct** %q, align 8, !dbg !4620
  br label %for.cond, !dbg !4620, !llvm.loop !4645

for.end:                                          ; preds = %if.then19, %for.cond
  %104 = load i32, i32* %list_edited, align 4, !dbg !4647
  %tobool29 = icmp ne i32 %104, 0, !dbg !4647
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !4649

if.then30:                                        ; preds = %for.end
  %105 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q_new, align 8, !dbg !4650
  %node31 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %105, i32 0, i32 1, !dbg !4651
  call void @list_add_tail(%struct.list_head* %node31, %struct.list_head* @dquirks_list) #8, !dbg !4652
  br label %if.end32, !dbg !4652

if.end32:                                         ; preds = %if.then30, %for.end
  call void @mutex_unlock(%struct.mutex* @dquirks_lock) #8, !dbg !4653
  br label %out, !dbg !4653

out:                                              ; preds = %if.end32, %if.then3
  call void @llvm.dbg.label(metadata !4654), !dbg !4655
  %106 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4656
  %107 = bitcast %struct.hid_device* %106 to i8*, !dbg !4656
  call void @kfree(i8* %107) #8, !dbg !4657
  %108 = load i32, i32* %ret, align 4, !dbg !4658
  store i32 %108, i32* %retval, align 4, !dbg !4659
  br label %return, !dbg !4659

return:                                           ; preds = %out, %if.then
  %109 = load i32, i32* %retval, align 4, !dbg !4660
  ret i32 %109, !dbg !4660
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hid_quirks_exit(i16 zeroext %bus) #0 !dbg !4661 {
entry:
  %bus.addr = alloca i16, align 2
  store i16 %bus, i16* %bus.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %bus.addr, metadata !4664, metadata !DIExpression()), !dbg !4665
  %0 = load i16, i16* %bus.addr, align 2, !dbg !4666
  call void @hid_remove_all_dquirks(i16 zeroext %0) #8, !dbg !4667
  ret void, !dbg !4668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_remove_all_dquirks(i16 zeroext %bus) #0 !dbg !4669 {
entry:
  %bus.addr = alloca i16, align 2
  %q = alloca %struct.quirks_list_struct*, align 8
  %temp = alloca %struct.quirks_list_struct*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.quirks_list_struct*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.quirks_list_struct*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp20 = alloca %struct.quirks_list_struct*, align 8
  store i16 %bus, i16* %bus.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %bus.addr, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.declare(metadata %struct.quirks_list_struct** %q, metadata !4672, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.declare(metadata %struct.quirks_list_struct** %temp, metadata !4674, metadata !DIExpression()), !dbg !4675
  call void @mutex_lock(%struct.mutex* @dquirks_lock) #8, !dbg !4676
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4677, metadata !DIExpression()), !dbg !4680
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dquirks_list, i32 0, i32 0), align 8, !dbg !4680
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4680
  store i8* %1, i8** %__mptr, align 8, !dbg !4680
  br label %do.body, !dbg !4680

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4681

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4680
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4680
  %3 = bitcast i8* %add.ptr to %struct.quirks_list_struct*, !dbg !4680
  store %struct.quirks_list_struct* %3, %struct.quirks_list_struct** %tmp, align 8, !dbg !4681
  %4 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %tmp, align 8, !dbg !4680
  store %struct.quirks_list_struct* %4, %struct.quirks_list_struct** %q, align 8, !dbg !4683
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4684, metadata !DIExpression()), !dbg !4686
  %5 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4686
  %node = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %5, i32 0, i32 1, !dbg !4686
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !4686
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4686
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4686
  store i8* %7, i8** %__mptr1, align 8, !dbg !4686
  br label %do.body2, !dbg !4686

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4687

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !4686
  %add.ptr5 = getelementptr i8, i8* %8, i64 -24, !dbg !4686
  %9 = bitcast i8* %add.ptr5 to %struct.quirks_list_struct*, !dbg !4686
  store %struct.quirks_list_struct* %9, %struct.quirks_list_struct** %tmp4, align 8, !dbg !4687
  %10 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %tmp4, align 8, !dbg !4686
  store %struct.quirks_list_struct* %10, %struct.quirks_list_struct** %temp, align 8, !dbg !4683
  br label %for.cond, !dbg !4683

for.cond:                                         ; preds = %do.end19, %do.end3
  %11 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4689
  %node6 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %11, i32 0, i32 1, !dbg !4689
  %cmp = icmp eq %struct.list_head* %node6, @dquirks_list, !dbg !4689
  %lnot = xor i1 %cmp, true, !dbg !4689
  br i1 %lnot, label %for.body, label %for.end, !dbg !4683

for.body:                                         ; preds = %for.cond
  %12 = load i16, i16* %bus.addr, align 2, !dbg !4691
  %conv = zext i16 %12 to i32, !dbg !4691
  %cmp7 = icmp eq i32 %conv, 65535, !dbg !4694
  br i1 %cmp7, label %if.then, label %lor.lhs.false, !dbg !4695

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i16, i16* %bus.addr, align 2, !dbg !4696
  %conv9 = zext i16 %13 to i32, !dbg !4696
  %14 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4697
  %hid_bl_item = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %14, i32 0, i32 0, !dbg !4698
  %bus10 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %hid_bl_item, i32 0, i32 0, !dbg !4699
  %15 = load i16, i16* %bus10, align 8, !dbg !4699
  %conv11 = zext i16 %15 to i32, !dbg !4697
  %cmp12 = icmp eq i32 %conv9, %conv11, !dbg !4700
  br i1 %cmp12, label %if.then, label %if.end, !dbg !4701

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %16 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4702
  %node14 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %16, i32 0, i32 1, !dbg !4704
  call void @list_del(%struct.list_head* %node14) #8, !dbg !4705
  %17 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4706
  %18 = bitcast %struct.quirks_list_struct* %17 to i8*, !dbg !4706
  call void @kfree(i8* %18) #8, !dbg !4707
  br label %if.end, !dbg !4708

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc, !dbg !4709

for.inc:                                          ; preds = %if.end
  %19 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %temp, align 8, !dbg !4689
  store %struct.quirks_list_struct* %19, %struct.quirks_list_struct** %q, align 8, !dbg !4689
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !4710, metadata !DIExpression()), !dbg !4712
  %20 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %temp, align 8, !dbg !4712
  %node16 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %20, i32 0, i32 1, !dbg !4712
  %next17 = getelementptr inbounds %struct.list_head, %struct.list_head* %node16, i32 0, i32 0, !dbg !4712
  %21 = load %struct.list_head*, %struct.list_head** %next17, align 8, !dbg !4712
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !4712
  store i8* %22, i8** %__mptr15, align 8, !dbg !4712
  br label %do.body18, !dbg !4712

do.body18:                                        ; preds = %for.inc
  br label %do.end19, !dbg !4713

do.end19:                                         ; preds = %do.body18
  %23 = load i8*, i8** %__mptr15, align 8, !dbg !4712
  %add.ptr21 = getelementptr i8, i8* %23, i64 -24, !dbg !4712
  %24 = bitcast i8* %add.ptr21 to %struct.quirks_list_struct*, !dbg !4712
  store %struct.quirks_list_struct* %24, %struct.quirks_list_struct** %tmp20, align 8, !dbg !4713
  %25 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %tmp20, align 8, !dbg !4712
  store %struct.quirks_list_struct* %25, %struct.quirks_list_struct** %temp, align 8, !dbg !4689
  br label %for.cond, !dbg !4689, !llvm.loop !4715

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @dquirks_lock) #8, !dbg !4717
  ret void, !dbg !4718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @hid_lookup_quirk(%struct.hid_device* %hdev) #0 !dbg !4719 {
entry:
  %retval = alloca i64, align 8
  %hdev.addr = alloca %struct.hid_device*, align 8
  %quirks = alloca i64, align 8
  %quirk_entry = alloca %struct.hid_device_id*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4726, metadata !DIExpression()), !dbg !4727
  store i64 0, i64* %quirks, align 8, !dbg !4727
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %quirk_entry, metadata !4728, metadata !DIExpression()), !dbg !4729
  store %struct.hid_device_id* null, %struct.hid_device_id** %quirk_entry, align 8, !dbg !4729
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4730
  %bus = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 8, !dbg !4732
  %1 = load i16, i16* %bus, align 4, !dbg !4732
  %conv = zext i16 %1 to i32, !dbg !4730
  %cmp = icmp eq i32 %conv, 3, !dbg !4733
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4734

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4735
  %vendor = getelementptr inbounds %struct.hid_device, %struct.hid_device* %2, i32 0, i32 10, !dbg !4736
  %3 = load i32, i32* %vendor, align 8, !dbg !4736
  %cmp2 = icmp eq i32 %3, 1028, !dbg !4737
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !4738

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4739
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 11, !dbg !4740
  %5 = load i32, i32* %product, align 4, !dbg !4740
  %cmp5 = icmp uge i32 %5, 768, !dbg !4741
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !4742

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4743
  %product8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 11, !dbg !4744
  %7 = load i32, i32* %product8, align 4, !dbg !4744
  %cmp9 = icmp ule i32 %7, 1023, !dbg !4745
  br i1 %cmp9, label %if.then, label %if.end, !dbg !4746

if.then:                                          ; preds = %land.lhs.true7
  store i64 536870912, i64* %retval, align 8, !dbg !4747
  br label %return, !dbg !4747

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %entry
  %8 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4748
  %bus11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 8, !dbg !4750
  %9 = load i16, i16* %bus11, align 4, !dbg !4750
  %conv12 = zext i16 %9 to i32, !dbg !4748
  %cmp13 = icmp eq i32 %conv12, 3, !dbg !4751
  br i1 %cmp13, label %land.lhs.true15, label %if.end31, !dbg !4752

land.lhs.true15:                                  ; preds = %if.end
  %10 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4753
  %vendor16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 10, !dbg !4754
  %11 = load i32, i32* %vendor16, align 8, !dbg !4754
  %cmp17 = icmp eq i32 %11, 2830, !dbg !4755
  br i1 %cmp17, label %if.then19, label %if.end31, !dbg !4756

if.then19:                                        ; preds = %land.lhs.true15
  %12 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4757
  %product20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 11, !dbg !4759
  %13 = load i32, i32* %product20, align 4, !dbg !4759
  switch i32 %13, label %sw.epilog [
    i32 1042, label %sw.bb
    i32 1056, label %sw.bb25
  ], !dbg !4760

sw.bb:                                            ; preds = %if.then19
  %14 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4761
  %version = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 12, !dbg !4764
  %15 = load i32, i32* %version, align 8, !dbg !4764
  %cmp21 = icmp ult i32 %15, 273, !dbg !4765
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !4766

if.then23:                                        ; preds = %sw.bb
  store i64 4, i64* %retval, align 8, !dbg !4767
  br label %return, !dbg !4767

if.end24:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !4768

sw.bb25:                                          ; preds = %if.then19
  %16 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4769
  %version26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 12, !dbg !4771
  %17 = load i32, i32* %version26, align 8, !dbg !4771
  %cmp27 = icmp ult i32 %17, 532, !dbg !4772
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !4773

if.then29:                                        ; preds = %sw.bb25
  store i64 4, i64* %retval, align 8, !dbg !4774
  br label %return, !dbg !4774

if.end30:                                         ; preds = %sw.bb25
  br label %sw.epilog, !dbg !4775

sw.epilog:                                        ; preds = %if.then19, %if.end30, %if.end24
  br label %if.end31, !dbg !4776

if.end31:                                         ; preds = %sw.epilog, %land.lhs.true15, %if.end
  call void @mutex_lock(%struct.mutex* @dquirks_lock) #8, !dbg !4777
  %18 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4778
  %call = call %struct.hid_device_id* @hid_exists_dquirk(%struct.hid_device* %18) #8, !dbg !4779
  store %struct.hid_device_id* %call, %struct.hid_device_id** %quirk_entry, align 8, !dbg !4780
  %19 = load %struct.hid_device_id*, %struct.hid_device_id** %quirk_entry, align 8, !dbg !4781
  %tobool = icmp ne %struct.hid_device_id* %19, null, !dbg !4781
  br i1 %tobool, label %if.then32, label %if.else, !dbg !4783

if.then32:                                        ; preds = %if.end31
  %20 = load %struct.hid_device_id*, %struct.hid_device_id** %quirk_entry, align 8, !dbg !4784
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %20, i32 0, i32 4, !dbg !4785
  %21 = load i64, i64* %driver_data, align 8, !dbg !4785
  store i64 %21, i64* %quirks, align 8, !dbg !4786
  br label %if.end34, !dbg !4787

if.else:                                          ; preds = %if.end31
  %22 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4788
  %call33 = call i64 @hid_gets_squirk(%struct.hid_device* %22) #8, !dbg !4789
  store i64 %call33, i64* %quirks, align 8, !dbg !4790
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  call void @mutex_unlock(%struct.mutex* @dquirks_lock) #8, !dbg !4791
  %23 = load i64, i64* %quirks, align 8, !dbg !4792
  store i64 %23, i64* %retval, align 8, !dbg !4793
  br label %return, !dbg !4793

return:                                           ; preds = %if.end34, %if.then29, %if.then23, %if.then
  %24 = load i64, i64* %retval, align 8, !dbg !4794
  ret i64 %24, !dbg !4794
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.hid_device_id* @hid_exists_dquirk(%struct.hid_device* %hdev) #0 !dbg !4795 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %q = alloca %struct.quirks_list_struct*, align 8
  %bl_entry = alloca %struct.hid_device_id*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.quirks_list_struct*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.quirks_list_struct*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.declare(metadata %struct.quirks_list_struct** %q, metadata !4801, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %bl_entry, metadata !4803, metadata !DIExpression()), !dbg !4804
  store %struct.hid_device_id* null, %struct.hid_device_id** %bl_entry, align 8, !dbg !4804
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4805, metadata !DIExpression()), !dbg !4808
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dquirks_list, i32 0, i32 0), align 8, !dbg !4808
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4808
  store i8* %1, i8** %__mptr, align 8, !dbg !4808
  br label %do.body, !dbg !4808

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4809

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4808
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !4808
  %3 = bitcast i8* %add.ptr to %struct.quirks_list_struct*, !dbg !4808
  store %struct.quirks_list_struct* %3, %struct.quirks_list_struct** %tmp, align 8, !dbg !4809
  %4 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %tmp, align 8, !dbg !4808
  store %struct.quirks_list_struct* %4, %struct.quirks_list_struct** %q, align 8, !dbg !4811
  br label %for.cond, !dbg !4811

for.cond:                                         ; preds = %do.end5, %do.end
  %5 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4812
  %node = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %5, i32 0, i32 1, !dbg !4812
  %cmp = icmp eq %struct.list_head* %node, @dquirks_list, !dbg !4812
  %lnot = xor i1 %cmp, true, !dbg !4812
  br i1 %lnot, label %for.body, label %for.end, !dbg !4811

for.body:                                         ; preds = %for.cond
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4814
  %7 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4817
  %hid_bl_item = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %7, i32 0, i32 0, !dbg !4818
  %call = call zeroext i1 @hid_match_one_id(%struct.hid_device* %6, %struct.hid_device_id* %hid_bl_item) #8, !dbg !4819
  br i1 %call, label %if.then, label %if.end, !dbg !4820

if.then:                                          ; preds = %for.body
  %8 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4821
  %hid_bl_item1 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %8, i32 0, i32 0, !dbg !4823
  store %struct.hid_device_id* %hid_bl_item1, %struct.hid_device_id** %bl_entry, align 8, !dbg !4824
  br label %for.end, !dbg !4825

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4826

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4827, metadata !DIExpression()), !dbg !4829
  %9 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %q, align 8, !dbg !4829
  %node3 = getelementptr inbounds %struct.quirks_list_struct, %struct.quirks_list_struct* %9, i32 0, i32 1, !dbg !4829
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node3, i32 0, i32 0, !dbg !4829
  %10 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4829
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !4829
  store i8* %11, i8** %__mptr2, align 8, !dbg !4829
  br label %do.body4, !dbg !4829

do.body4:                                         ; preds = %for.inc
  br label %do.end5, !dbg !4830

do.end5:                                          ; preds = %do.body4
  %12 = load i8*, i8** %__mptr2, align 8, !dbg !4829
  %add.ptr7 = getelementptr i8, i8* %12, i64 -24, !dbg !4829
  %13 = bitcast i8* %add.ptr7 to %struct.quirks_list_struct*, !dbg !4829
  store %struct.quirks_list_struct* %13, %struct.quirks_list_struct** %tmp6, align 8, !dbg !4830
  %14 = load %struct.quirks_list_struct*, %struct.quirks_list_struct** %tmp6, align 8, !dbg !4829
  store %struct.quirks_list_struct* %14, %struct.quirks_list_struct** %q, align 8, !dbg !4812
  br label %for.cond, !dbg !4812, !llvm.loop !4832

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load %struct.hid_device_id*, %struct.hid_device_id** %bl_entry, align 8, !dbg !4834
  %cmp8 = icmp ne %struct.hid_device_id* %15, null, !dbg !4836
  br i1 %cmp8, label %if.then9, label %if.end15, !dbg !4837

if.then9:                                         ; preds = %for.end
  br label %do.body10, !dbg !4838

do.body10:                                        ; preds = %if.then9
  %16 = load i32, i32* @hid_debug, align 4, !dbg !4839
  %tobool = icmp ne i32 %16, 0, !dbg !4839
  br i1 %tobool, label %if.then11, label %if.end13, !dbg !4842

if.then11:                                        ; preds = %do.body10
  %17 = load %struct.hid_device_id*, %struct.hid_device_id** %bl_entry, align 8, !dbg !4839
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %17, i32 0, i32 4, !dbg !4839
  %18 = load i64, i64* %driver_data, align 8, !dbg !4839
  %19 = load %struct.hid_device_id*, %struct.hid_device_id** %bl_entry, align 8, !dbg !4839
  %vendor = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %19, i32 0, i32 2, !dbg !4839
  %20 = load i32, i32* %vendor, align 4, !dbg !4839
  %21 = load %struct.hid_device_id*, %struct.hid_device_id** %bl_entry, align 8, !dbg !4839
  %product = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %21, i32 0, i32 3, !dbg !4839
  %22 = load i32, i32* %product, align 8, !dbg !4839
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %18, i32 %20, i32 %22) #9, !dbg !4839
  br label %if.end13, !dbg !4839

if.end13:                                         ; preds = %if.then11, %do.body10
  br label %do.end14, !dbg !4842

do.end14:                                         ; preds = %if.end13
  br label %if.end15, !dbg !4842

if.end15:                                         ; preds = %do.end14, %for.end
  %23 = load %struct.hid_device_id*, %struct.hid_device_id** %bl_entry, align 8, !dbg !4843
  ret %struct.hid_device_id* %23, !dbg !4844
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hid_gets_squirk(%struct.hid_device* %hdev) #0 !dbg !4845 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %bl_entry = alloca %struct.hid_device_id*, align 8
  %quirks = alloca i64, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %bl_entry, metadata !4848, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4850, metadata !DIExpression()), !dbg !4851
  store i64 0, i64* %quirks, align 8, !dbg !4851
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4852
  %call = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %0, %struct.hid_device_id* getelementptr inbounds ([162 x %struct.hid_device_id], [162 x %struct.hid_device_id]* @hid_ignore_list, i64 0, i64 0)) #8, !dbg !4854
  %tobool = icmp ne %struct.hid_device_id* %call, null, !dbg !4854
  br i1 %tobool, label %if.then, label %if.end, !dbg !4855

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %quirks, align 8, !dbg !4856
  %or = or i64 %1, 4, !dbg !4856
  store i64 %or, i64* %quirks, align 8, !dbg !4856
  br label %if.end, !dbg !4857

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4858
  %call1 = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %2, %struct.hid_device_id* getelementptr inbounds ([142 x %struct.hid_device_id], [142 x %struct.hid_device_id]* @hid_have_special_driver, i64 0, i64 0)) #8, !dbg !4860
  %tobool2 = icmp ne %struct.hid_device_id* %call1, null, !dbg !4860
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4861

if.then3:                                         ; preds = %if.end
  %3 = load i64, i64* %quirks, align 8, !dbg !4862
  %or4 = or i64 %3, 524288, !dbg !4862
  store i64 %or4, i64* %quirks, align 8, !dbg !4862
  br label %if.end5, !dbg !4863

if.end5:                                          ; preds = %if.then3, %if.end
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4864
  %call6 = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %4, %struct.hid_device_id* getelementptr inbounds ([164 x %struct.hid_device_id], [164 x %struct.hid_device_id]* @hid_quirks, i64 0, i64 0)) #8, !dbg !4865
  store %struct.hid_device_id* %call6, %struct.hid_device_id** %bl_entry, align 8, !dbg !4866
  %5 = load %struct.hid_device_id*, %struct.hid_device_id** %bl_entry, align 8, !dbg !4867
  %cmp = icmp ne %struct.hid_device_id* %5, null, !dbg !4869
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !4870

if.then7:                                         ; preds = %if.end5
  %6 = load %struct.hid_device_id*, %struct.hid_device_id** %bl_entry, align 8, !dbg !4871
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %6, i32 0, i32 4, !dbg !4872
  %7 = load i64, i64* %driver_data, align 8, !dbg !4872
  %8 = load i64, i64* %quirks, align 8, !dbg !4873
  %or8 = or i64 %8, %7, !dbg !4873
  store i64 %or8, i64* %quirks, align 8, !dbg !4873
  br label %if.end9, !dbg !4874

if.end9:                                          ; preds = %if.then7, %if.end5
  %9 = load i64, i64* %quirks, align 8, !dbg !4875
  %tobool10 = icmp ne i64 %9, 0, !dbg !4875
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !4877

if.then11:                                        ; preds = %if.end9
  br label %do.body, !dbg !4878

do.body:                                          ; preds = %if.then11
  %10 = load i32, i32* @hid_debug, align 4, !dbg !4879
  %tobool12 = icmp ne i32 %10, 0, !dbg !4879
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !4882

if.then13:                                        ; preds = %do.body
  %11 = load i64, i64* %quirks, align 8, !dbg !4879
  %12 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4879
  %vendor = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 10, !dbg !4879
  %13 = load i32, i32* %vendor, align 8, !dbg !4879
  %14 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4879
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 11, !dbg !4879
  %15 = load i32, i32* %product, align 4, !dbg !4879
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %11, i32 %13, i32 %15) #9, !dbg !4879
  br label %if.end15, !dbg !4879

if.end15:                                         ; preds = %if.then13, %do.body
  br label %do.end, !dbg !4882

do.end:                                           ; preds = %if.end15
  br label %if.end16, !dbg !4882

if.end16:                                         ; preds = %do.end, %if.end9
  %16 = load i64, i64* %quirks, align 8, !dbg !4883
  ret i64 %16, !dbg !4884
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4885 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4280, metadata !DIExpression()), !dbg !4886
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4292, metadata !DIExpression()), !dbg !4889
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4294, metadata !DIExpression()), !dbg !4890
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4296, metadata !DIExpression()), !dbg !4891
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4298, metadata !DIExpression()), !dbg !4892
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4304, metadata !DIExpression()), !dbg !4894
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4310, metadata !DIExpression()), !dbg !4896
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4319, metadata !DIExpression()), !dbg !4899
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4321, metadata !DIExpression()), !dbg !4900
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4323, metadata !DIExpression()), !dbg !4901
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4325, metadata !DIExpression()), !dbg !4902
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4327, metadata !DIExpression()), !dbg !4903
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4329, metadata !DIExpression()), !dbg !4904
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4331, metadata !DIExpression()), !dbg !4905
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4333, metadata !DIExpression()), !dbg !4906
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4909, metadata !DIExpression()), !dbg !4910
  %0 = load i64, i64* %size.addr, align 8, !dbg !4911
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4912
  %or = or i32 %1, 256, !dbg !4913
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4914
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4915
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4916

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4917
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4918
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4919

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4920
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4921
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4922
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4923
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4903
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4924
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4925
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4926
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4927
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4928
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4929
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4930
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4930
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4930
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4930
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4930
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4931
  br label %kmalloc.exit, !dbg !4931

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4932
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4933
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4933
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4934

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4935
  br label %kmalloc_index.exit.i, !dbg !4935

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4936
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4937
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4938

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4939
  br label %kmalloc_index.exit.i, !dbg !4939

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4940
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4941
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4942

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4943
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4944
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4945

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4946
  br label %kmalloc_index.exit.i, !dbg !4946

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4948
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4949

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4950
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4951
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4952

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4953
  br label %kmalloc_index.exit.i, !dbg !4953

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4954
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4955
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4956

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4957
  br label %kmalloc_index.exit.i, !dbg !4957

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4958
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4959
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4960

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4961
  br label %kmalloc_index.exit.i, !dbg !4961

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4962
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4963
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4964

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4965
  br label %kmalloc_index.exit.i, !dbg !4965

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4966
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4967
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4968

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4969
  br label %kmalloc_index.exit.i, !dbg !4969

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4970
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4971
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4972

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4973
  br label %kmalloc_index.exit.i, !dbg !4973

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4974
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4975
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4976

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4977
  br label %kmalloc_index.exit.i, !dbg !4977

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4978
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4979
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4980

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4981
  br label %kmalloc_index.exit.i, !dbg !4981

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4982
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4983
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4984

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4985
  br label %kmalloc_index.exit.i, !dbg !4985

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4986
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4987
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4988

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4989
  br label %kmalloc_index.exit.i, !dbg !4989

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4990
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4991
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4992

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4993
  br label %kmalloc_index.exit.i, !dbg !4993

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4994
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4995
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4996

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4997
  br label %kmalloc_index.exit.i, !dbg !4997

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4998
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4999
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5000

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5001
  br label %kmalloc_index.exit.i, !dbg !5001

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5002
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5003
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5004

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5005
  br label %kmalloc_index.exit.i, !dbg !5005

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5006
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5007
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5008

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5009
  br label %kmalloc_index.exit.i, !dbg !5009

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5010
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5011
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5012

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5013
  br label %kmalloc_index.exit.i, !dbg !5013

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5014
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5015
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5016

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5017
  br label %kmalloc_index.exit.i, !dbg !5017

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5018
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5019
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5020

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5021
  br label %kmalloc_index.exit.i, !dbg !5021

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5022
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5023
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5024

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5025
  br label %kmalloc_index.exit.i, !dbg !5025

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5026
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5027
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5028

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5029
  br label %kmalloc_index.exit.i, !dbg !5029

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5030
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5031
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5032

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5033
  br label %kmalloc_index.exit.i, !dbg !5033

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5034
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5035
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5036

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5037
  br label %kmalloc_index.exit.i, !dbg !5037

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5038
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5039
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5040

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5043
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5044

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5045
  br label %kmalloc_index.exit.i, !dbg !5045

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5046
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5047
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5048

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5049
  br label %kmalloc_index.exit.i, !dbg !5049

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5050, !srcloc !4522
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !5051, !srcloc !4526
  unreachable, !dbg !5052

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5053
  store i32 %45, i32* %index.i, align 4, !dbg !5054
  %46 = load i32, i32* %index.i, align 4, !dbg !5055
  %tobool.i = icmp ne i32 %46, 0, !dbg !5055
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5056

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5057
  br label %kmalloc.exit, !dbg !5057

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5058
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5059
  %and.i.i = and i32 %48, 17, !dbg !5059
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5059
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5059
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5059
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5059
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5060

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5061
  br label %kmalloc_type.exit.i, !dbg !5061

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5062
  %and2.i.i = and i32 %49, 1, !dbg !5063
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5062
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5062
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5062
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5064
  br label %kmalloc_type.exit.i, !dbg !5064

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5065
  %idxprom.i = zext i32 %51 to i64, !dbg !5066
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5066
  %52 = load i32, i32* %index.i, align 4, !dbg !5067
  %idxprom6.i = zext i32 %52 to i64, !dbg !5066
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5066
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5066
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5068
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5069
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5070
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5071
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5072
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5072
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5072
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5072
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5072
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4891
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5073
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5074
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5075
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5076
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5077
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5078
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5079
  store i8* %62, i8** %retval.i, align 8, !dbg !5080
  br label %kmalloc.exit, !dbg !5080

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5081
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5082
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5083
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5083
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5083
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5083
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5083
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5084
  br label %kmalloc.exit, !dbg !5084

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5085
  ret i8* %65, !dbg !5086
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @hid_match_one_id(%struct.hid_device*, %struct.hid_device_id*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_replace(%struct.list_head* %old, %struct.list_head* %new) #0 !dbg !5087 {
entry:
  %old.addr = alloca %struct.list_head*, align 8
  %new.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %old, %struct.list_head** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %old.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  %0 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !5095
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5096
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5096
  %2 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5097
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !5098
  store %struct.list_head* %1, %struct.list_head** %next1, align 8, !dbg !5099
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5100
  %4 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5101
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 0, !dbg !5102
  %5 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !5102
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !5103
  store %struct.list_head* %3, %struct.list_head** %prev, align 8, !dbg !5104
  %6 = load %struct.list_head*, %struct.list_head** %old.addr, align 8, !dbg !5105
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 1, !dbg !5106
  %7 = load %struct.list_head*, %struct.list_head** %prev3, align 8, !dbg !5106
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5107
  %prev4 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5108
  store %struct.list_head* %7, %struct.list_head** %prev4, align 8, !dbg !5109
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5110
  %10 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5111
  %prev5 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 1, !dbg !5112
  %11 = load %struct.list_head*, %struct.list_head** %prev5, align 8, !dbg !5112
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 0, !dbg !5113
  store %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5114
  ret void, !dbg !5115
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5116 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5117, metadata !DIExpression()), !dbg !5118
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5119, metadata !DIExpression()), !dbg !5120
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5121
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5122
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5123
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5123
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5124
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !5125
  ret void, !dbg !5126
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5127 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5131, metadata !DIExpression()), !dbg !5136
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5138, metadata !DIExpression()), !dbg !5139
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load i64, i64* %size.addr, align 8, !dbg !5142
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5144
  br i1 %1, label %if.then, label %if.end447, !dbg !5145

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5146
  %tobool = icmp ne i64 %2, 0, !dbg !5146
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5149

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5150
  br label %return, !dbg !5150

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5151
  %cmp = icmp ult i64 %3, 4096, !dbg !5153
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5154

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub = sub i64 %4, 1, !dbg !5156
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5156
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5156

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub4 = sub i64 %6, 1, !dbg !5156
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5156
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5156

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub6 = sub i64 %8, 1, !dbg !5156
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5156
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5156

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5156

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub9 = sub i64 %9, 1, !dbg !5156
  %and = and i64 %sub9, -9223372036854775808, !dbg !5156
  %tobool10 = icmp ne i64 %and, 0, !dbg !5156
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5156

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5156

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub13 = sub i64 %10, 1, !dbg !5156
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5156
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5156
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5156

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5156

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub18 = sub i64 %11, 1, !dbg !5156
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5156
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5156
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5156

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5156

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub23 = sub i64 %12, 1, !dbg !5156
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5156
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5156
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5156

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5156

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub28 = sub i64 %13, 1, !dbg !5156
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5156
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5156
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5156

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5156

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub33 = sub i64 %14, 1, !dbg !5156
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5156
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5156
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5156

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5156

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub38 = sub i64 %15, 1, !dbg !5156
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5156
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5156
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5156

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5156

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub43 = sub i64 %16, 1, !dbg !5156
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5156
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5156
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5156

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5156

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub48 = sub i64 %17, 1, !dbg !5156
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5156
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5156
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5156

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5156

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub53 = sub i64 %18, 1, !dbg !5156
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5156
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5156
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5156

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5156

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub58 = sub i64 %19, 1, !dbg !5156
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5156
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5156
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5156

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5156

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub63 = sub i64 %20, 1, !dbg !5156
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5156
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5156
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5156

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5156

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub68 = sub i64 %21, 1, !dbg !5156
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5156
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5156
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5156

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5156

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub73 = sub i64 %22, 1, !dbg !5156
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5156
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5156
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5156

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5156

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub78 = sub i64 %23, 1, !dbg !5156
  %and79 = and i64 %sub78, 562949953421312, !dbg !5156
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5156
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5156

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5156

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub83 = sub i64 %24, 1, !dbg !5156
  %and84 = and i64 %sub83, 281474976710656, !dbg !5156
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5156
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5156

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5156

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub88 = sub i64 %25, 1, !dbg !5156
  %and89 = and i64 %sub88, 140737488355328, !dbg !5156
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5156
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5156

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5156

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub93 = sub i64 %26, 1, !dbg !5156
  %and94 = and i64 %sub93, 70368744177664, !dbg !5156
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5156
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5156

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5156

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub98 = sub i64 %27, 1, !dbg !5156
  %and99 = and i64 %sub98, 35184372088832, !dbg !5156
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5156
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5156

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5156

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub103 = sub i64 %28, 1, !dbg !5156
  %and104 = and i64 %sub103, 17592186044416, !dbg !5156
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5156
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5156

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5156

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub108 = sub i64 %29, 1, !dbg !5156
  %and109 = and i64 %sub108, 8796093022208, !dbg !5156
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5156
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5156

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5156

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub113 = sub i64 %30, 1, !dbg !5156
  %and114 = and i64 %sub113, 4398046511104, !dbg !5156
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5156
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5156

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5156

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub118 = sub i64 %31, 1, !dbg !5156
  %and119 = and i64 %sub118, 2199023255552, !dbg !5156
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5156
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5156

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5156

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub123 = sub i64 %32, 1, !dbg !5156
  %and124 = and i64 %sub123, 1099511627776, !dbg !5156
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5156
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5156

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5156

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub128 = sub i64 %33, 1, !dbg !5156
  %and129 = and i64 %sub128, 549755813888, !dbg !5156
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5156
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5156

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5156

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub133 = sub i64 %34, 1, !dbg !5156
  %and134 = and i64 %sub133, 274877906944, !dbg !5156
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5156
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5156

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5156

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub138 = sub i64 %35, 1, !dbg !5156
  %and139 = and i64 %sub138, 137438953472, !dbg !5156
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5156
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5156

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5156

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub143 = sub i64 %36, 1, !dbg !5156
  %and144 = and i64 %sub143, 68719476736, !dbg !5156
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5156
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5156

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5156

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub148 = sub i64 %37, 1, !dbg !5156
  %and149 = and i64 %sub148, 34359738368, !dbg !5156
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5156
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5156

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5156

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub153 = sub i64 %38, 1, !dbg !5156
  %and154 = and i64 %sub153, 17179869184, !dbg !5156
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5156
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5156

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5156

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub158 = sub i64 %39, 1, !dbg !5156
  %and159 = and i64 %sub158, 8589934592, !dbg !5156
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5156
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5156

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5156

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub163 = sub i64 %40, 1, !dbg !5156
  %and164 = and i64 %sub163, 4294967296, !dbg !5156
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5156
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5156

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5156

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub168 = sub i64 %41, 1, !dbg !5156
  %and169 = and i64 %sub168, 2147483648, !dbg !5156
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5156
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5156

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5156

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub173 = sub i64 %42, 1, !dbg !5156
  %and174 = and i64 %sub173, 1073741824, !dbg !5156
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5156
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5156

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5156

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub178 = sub i64 %43, 1, !dbg !5156
  %and179 = and i64 %sub178, 536870912, !dbg !5156
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5156
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5156

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5156

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub183 = sub i64 %44, 1, !dbg !5156
  %and184 = and i64 %sub183, 268435456, !dbg !5156
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5156
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5156

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5156

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub188 = sub i64 %45, 1, !dbg !5156
  %and189 = and i64 %sub188, 134217728, !dbg !5156
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5156
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5156

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5156

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub193 = sub i64 %46, 1, !dbg !5156
  %and194 = and i64 %sub193, 67108864, !dbg !5156
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5156
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5156

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5156

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub198 = sub i64 %47, 1, !dbg !5156
  %and199 = and i64 %sub198, 33554432, !dbg !5156
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5156
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5156

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5156

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub203 = sub i64 %48, 1, !dbg !5156
  %and204 = and i64 %sub203, 16777216, !dbg !5156
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5156
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5156

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5156

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub208 = sub i64 %49, 1, !dbg !5156
  %and209 = and i64 %sub208, 8388608, !dbg !5156
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5156
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5156

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5156

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub213 = sub i64 %50, 1, !dbg !5156
  %and214 = and i64 %sub213, 4194304, !dbg !5156
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5156
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5156

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5156

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub218 = sub i64 %51, 1, !dbg !5156
  %and219 = and i64 %sub218, 2097152, !dbg !5156
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5156
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5156

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5156

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub223 = sub i64 %52, 1, !dbg !5156
  %and224 = and i64 %sub223, 1048576, !dbg !5156
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5156
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5156

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5156

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub228 = sub i64 %53, 1, !dbg !5156
  %and229 = and i64 %sub228, 524288, !dbg !5156
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5156
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5156

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5156

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub233 = sub i64 %54, 1, !dbg !5156
  %and234 = and i64 %sub233, 262144, !dbg !5156
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5156
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5156

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5156

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub238 = sub i64 %55, 1, !dbg !5156
  %and239 = and i64 %sub238, 131072, !dbg !5156
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5156
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5156

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5156

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub243 = sub i64 %56, 1, !dbg !5156
  %and244 = and i64 %sub243, 65536, !dbg !5156
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5156
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5156

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5156

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub248 = sub i64 %57, 1, !dbg !5156
  %and249 = and i64 %sub248, 32768, !dbg !5156
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5156
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5156

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5156

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub253 = sub i64 %58, 1, !dbg !5156
  %and254 = and i64 %sub253, 16384, !dbg !5156
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5156
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5156

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5156

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub258 = sub i64 %59, 1, !dbg !5156
  %and259 = and i64 %sub258, 8192, !dbg !5156
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5156
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5156

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5156

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub263 = sub i64 %60, 1, !dbg !5156
  %and264 = and i64 %sub263, 4096, !dbg !5156
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5156
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5156

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5156

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub268 = sub i64 %61, 1, !dbg !5156
  %and269 = and i64 %sub268, 2048, !dbg !5156
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5156
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5156

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5156

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub273 = sub i64 %62, 1, !dbg !5156
  %and274 = and i64 %sub273, 1024, !dbg !5156
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5156
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5156

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5156

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub278 = sub i64 %63, 1, !dbg !5156
  %and279 = and i64 %sub278, 512, !dbg !5156
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5156
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5156

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5156

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub283 = sub i64 %64, 1, !dbg !5156
  %and284 = and i64 %sub283, 256, !dbg !5156
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5156
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5156

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5156

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub288 = sub i64 %65, 1, !dbg !5156
  %and289 = and i64 %sub288, 128, !dbg !5156
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5156
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5156

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5156

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub293 = sub i64 %66, 1, !dbg !5156
  %and294 = and i64 %sub293, 64, !dbg !5156
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5156
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5156

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5156

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub298 = sub i64 %67, 1, !dbg !5156
  %and299 = and i64 %sub298, 32, !dbg !5156
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5156
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5156

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5156

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub303 = sub i64 %68, 1, !dbg !5156
  %and304 = and i64 %sub303, 16, !dbg !5156
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5156
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5156

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5156

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub308 = sub i64 %69, 1, !dbg !5156
  %and309 = and i64 %sub308, 8, !dbg !5156
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5156
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5156

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5156

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub313 = sub i64 %70, 1, !dbg !5156
  %and314 = and i64 %sub313, 4, !dbg !5156
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5156
  %71 = zext i1 %tobool315 to i64, !dbg !5156
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5156
  br label %cond.end, !dbg !5156

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5156
  br label %cond.end317, !dbg !5156

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5156
  br label %cond.end319, !dbg !5156

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5156
  br label %cond.end321, !dbg !5156

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5156
  br label %cond.end323, !dbg !5156

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5156
  br label %cond.end325, !dbg !5156

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5156
  br label %cond.end327, !dbg !5156

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5156
  br label %cond.end329, !dbg !5156

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5156
  br label %cond.end331, !dbg !5156

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5156
  br label %cond.end333, !dbg !5156

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5156
  br label %cond.end335, !dbg !5156

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5156
  br label %cond.end337, !dbg !5156

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5156
  br label %cond.end339, !dbg !5156

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5156
  br label %cond.end341, !dbg !5156

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5156
  br label %cond.end343, !dbg !5156

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5156
  br label %cond.end345, !dbg !5156

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5156
  br label %cond.end347, !dbg !5156

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5156
  br label %cond.end349, !dbg !5156

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5156
  br label %cond.end351, !dbg !5156

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5156
  br label %cond.end353, !dbg !5156

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5156
  br label %cond.end355, !dbg !5156

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5156
  br label %cond.end357, !dbg !5156

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5156
  br label %cond.end359, !dbg !5156

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5156
  br label %cond.end361, !dbg !5156

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5156
  br label %cond.end363, !dbg !5156

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5156
  br label %cond.end365, !dbg !5156

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5156
  br label %cond.end367, !dbg !5156

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5156
  br label %cond.end369, !dbg !5156

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5156
  br label %cond.end371, !dbg !5156

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5156
  br label %cond.end373, !dbg !5156

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5156
  br label %cond.end375, !dbg !5156

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5156
  br label %cond.end377, !dbg !5156

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5156
  br label %cond.end379, !dbg !5156

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5156
  br label %cond.end381, !dbg !5156

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5156
  br label %cond.end383, !dbg !5156

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5156
  br label %cond.end385, !dbg !5156

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5156
  br label %cond.end387, !dbg !5156

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5156
  br label %cond.end389, !dbg !5156

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5156
  br label %cond.end391, !dbg !5156

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5156
  br label %cond.end393, !dbg !5156

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5156
  br label %cond.end395, !dbg !5156

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5156
  br label %cond.end397, !dbg !5156

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5156
  br label %cond.end399, !dbg !5156

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5156
  br label %cond.end401, !dbg !5156

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5156
  br label %cond.end403, !dbg !5156

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5156
  br label %cond.end405, !dbg !5156

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5156
  br label %cond.end407, !dbg !5156

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5156
  br label %cond.end409, !dbg !5156

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5156
  br label %cond.end411, !dbg !5156

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5156
  br label %cond.end413, !dbg !5156

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5156
  br label %cond.end415, !dbg !5156

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5156
  br label %cond.end417, !dbg !5156

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5156
  br label %cond.end419, !dbg !5156

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5156
  br label %cond.end421, !dbg !5156

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5156
  br label %cond.end423, !dbg !5156

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5156
  br label %cond.end425, !dbg !5156

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5156
  br label %cond.end427, !dbg !5156

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5156
  br label %cond.end429, !dbg !5156

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5156
  br label %cond.end431, !dbg !5156

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5156
  br label %cond.end433, !dbg !5156

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5156
  br label %cond.end435, !dbg !5156

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5156
  br label %cond.end437, !dbg !5156

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5156
  br label %cond.end440, !dbg !5156

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5156

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5156
  br label %cond.end444, !dbg !5156

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5156
  %sub443 = sub i64 %72, 1, !dbg !5156
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5156
  br label %cond.end444, !dbg !5156

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5156
  %sub446 = sub i32 %cond445, 12, !dbg !5157
  %add = add i32 %sub446, 1, !dbg !5158
  store i32 %add, i32* %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5160
  %dec = add i64 %73, -1, !dbg !5160
  store i64 %dec, i64* %size.addr, align 8, !dbg !5160
  %74 = load i64, i64* %size.addr, align 8, !dbg !5161
  %shr = lshr i64 %74, 12, !dbg !5161
  store i64 %shr, i64* %size.addr, align 8, !dbg !5161
  %75 = load i64, i64* %size.addr, align 8, !dbg !5162
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5139
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5163
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5164
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5163, !srcloc !5165
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5163
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5166
  %add.i = add i32 %79, 1, !dbg !5167
  store i32 %add.i, i32* %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5169
  ret i32 %80, !dbg !5169
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5170 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5131, metadata !DIExpression()), !dbg !5174
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5138, metadata !DIExpression()), !dbg !5176
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  %0 = load i64, i64* %n.addr, align 8, !dbg !5179
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5176
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5180
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5181
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5180, !srcloc !5165
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5180
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5182
  %add.i = add i32 %4, 1, !dbg !5183
  %sub = sub i32 %add.i, 1, !dbg !5184
  ret i32 %sub, !dbg !5185
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5186 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5197
  ret i8* %0, !dbg !5198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5199 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5208
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5210
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5211
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5212
  br i1 %call, label %if.end, label %if.then, !dbg !5213

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5214

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5215
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5216
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5217
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5218
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5219
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5220
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5221
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5222
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5223
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5224
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5225
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5226
  br label %do.body, !dbg !5227

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5228

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5230

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5228

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5232
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5232
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5232
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5232
  br label %do.end7, !dbg !5232

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5228

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5235 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5240, metadata !DIExpression()), !dbg !5241
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  ret i1 true, !dbg !5244
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5245 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5250
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !5251
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5252
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5253
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5254
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5255
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5256
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5257
  ret void, !dbg !5258
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5259 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5262
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !5264
  br i1 %call, label %if.end, label %if.then, !dbg !5265

if.then:                                          ; preds = %entry
  br label %return, !dbg !5266

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5267
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5268
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5268
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5269
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5270
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5270
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !5271
  br label %return, !dbg !5272

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5273 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5276, metadata !DIExpression()), !dbg !5277
  ret i1 true, !dbg !5278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5279 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5284
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5285
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5286
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5287
  br label %do.body, !dbg !5288

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5289

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5291

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5289

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5293
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5293
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5293
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5293
  br label %do.end5, !dbg !5293

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5289

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5295
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "elan_acpi_id", scope: !2, file: !185, line: 26, type: !186, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, globals: !128, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hid/hid-quirks.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !65, !72, !80, !86, !91}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hid_type", file: !6, line: 532, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hid.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "HID_TYPE_OTHER", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HID_TYPE_USBMOUSE", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "HID_TYPE_USBNONE", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
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
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !31, line: 54, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !37, line: 296, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43, !44}
!39 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !54, line: 26, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !60, line: 44, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !66, line: 343, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!69 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !73, line: 524, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !73, line: 502, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84, !85}
!82 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 10, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !92, line: 305, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!98 = !{!99, !102, !104, !105, !126}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !100, line: 24, baseType: !101)
!100 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 148, baseType: !7)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quirks_list_struct", file: !3, line: 1018, size: 320, elements: !107)
!107 = !{!108, !120}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "hid_bl_item", scope: !106, file: !3, line: 1019, baseType: !109, size: 192)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device_id", file: !110, line: 166, size: 192, elements: !111)
!110 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !113, !114, !116, !117}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !109, file: !110, line: 167, baseType: !99, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !109, file: !110, line: 168, baseType: !99, size: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !109, file: !110, line: 169, baseType: !115, size: 32, offset: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !100, line: 27, baseType: !7)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !109, file: !110, line: 170, baseType: !115, size: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !109, file: !110, line: 171, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !110, line: 14, baseType: !119)
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !3, line: 1020, baseType: !121, size: 128, offset: 192)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 178, size: 128, elements: !122)
!122 = !{!123, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !103, line: 179, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !121, file: !103, line: 179, baseType: !124, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !124)
!128 = !{!0, !129, !135, !140, !142, !175, !180}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "hid_mouse_ignore_list", scope: !2, file: !3, line: 869, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 10752, elements: !133)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!133 = !{!134}
!134 = !DISubrange(count: 56)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "hid_ignore_list", scope: !2, file: !3, line: 695, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 31104, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 162)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "dquirks_list", scope: !2, file: !3, line: 1023, type: !121, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "dquirks_lock", scope: !2, file: !3, line: 1024, type: !144, isLocal: true, isDefinition: true)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !145, line: 53, size: 192, elements: !146)
!145 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!146 = !{!147, !158, !174}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !144, file: !145, line: 54, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !149, line: 13, baseType: !150)
!149 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 175, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 173, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !151, file: !103, line: 174, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !155, line: 22, baseType: !156)
!155 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !100, line: 30, baseType: !157)
!157 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !144, file: !145, line: 55, baseType: !159, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !160, line: 83, baseType: !161)
!160 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !160, line: 71, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !160, line: 72, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !160, line: 72, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !164, file: !160, line: 73, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !160, line: 20, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !167, file: !160, line: 21, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !171, line: 25, baseType: !172)
!171 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 25, elements: !173)
!173 = !{}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !144, file: !145, line: 59, baseType: !121, size: 128, offset: 64)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "hid_have_special_driver", scope: !2, file: !3, line: 209, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 27264, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 142)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "hid_quirks", scope: !2, file: !3, line: 27, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 31488, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 164)
!185 = !DIFile(filename: "./include/linux/input/elan-i2c-ids.h", directory: "/home/lizy2001/genbc/linux")
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 13568, elements: !199)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !110, line: 210, size: 256, elements: !189)
!189 = !{!190, !196, !197, !198}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !188, file: !110, line: 211, baseType: !191, size: 72)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 72, elements: !194)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !100, line: 21, baseType: !193)
!193 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!194 = !{!195}
!195 = !DISubrange(count: 9)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !188, file: !110, line: 212, baseType: !118, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !188, file: !110, line: 213, baseType: !115, size: 32, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !188, file: !110, line: 214, baseType: !115, size: 32, offset: 224)
!199 = !{!200}
!200 = !DISubrange(count: 53)
!201 = !{i32 7, !"Dwarf Version", i32 4}
!202 = !{i32 2, !"Debug Info Version", i32 3}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"Code Model", i32 2}
!205 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!206 = distinct !DISubprogram(name: "hid_ignore", scope: !3, file: !3, line: 929, type: !207, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !211}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 30, baseType: !210)
!210 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device", file: !6, line: 547, size: 60160, elements: !213)
!213 = !{!214, !216, !217, !218, !219, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !3890, !3891, !3898, !3899, !3976, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4018, !4019, !4020, !4021, !4025, !4026, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rdesc", scope: !212, file: !6, line: 548, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rsize", scope: !212, file: !6, line: 549, baseType: !7, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !212, file: !6, line: 550, baseType: !215, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !212, file: !6, line: 551, baseType: !7, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !212, file: !6, line: 552, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_collection", file: !6, line: 424, size: 128, elements: !222)
!222 = !{!223, !225, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent_idx", scope: !221, file: !6, line: 425, baseType: !224, size: 32)
!224 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !221, file: !6, line: 426, baseType: !7, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !221, file: !6, line: 427, baseType: !7, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !221, file: !6, line: 428, baseType: !7, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "collection_size", scope: !212, file: !6, line: 553, baseType: !7, size: 32, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "maxcollection", scope: !212, file: !6, line: 554, baseType: !7, size: 32, offset: 352)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "maxapplication", scope: !212, file: !6, line: 555, baseType: !7, size: 32, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !212, file: !6, line: 556, baseType: !99, size: 16, offset: 416)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !212, file: !6, line: 557, baseType: !99, size: 16, offset: 432)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !212, file: !6, line: 558, baseType: !115, size: 32, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !212, file: !6, line: 559, baseType: !115, size: 32, offset: 480)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !212, file: !6, line: 560, baseType: !115, size: 32, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !6, line: 561, baseType: !5, size: 32, offset: 544)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !212, file: !6, line: 562, baseType: !7, size: 32, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "report_enum", scope: !212, file: !6, line: 563, baseType: !239, size: 49728, offset: 640)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 49728, elements: !768)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_enum", file: !6, line: 490, size: 16576, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "numbered", scope: !240, file: !6, line: 491, baseType: !7, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "report_list", scope: !240, file: !6, line: 492, baseType: !121, size: 128, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "report_id_hash", scope: !240, file: !6, line: 493, baseType: !245, size: 16384, offset: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 16384, elements: !3885)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report", file: !6, line: 476, size: 16896, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !3887, !3888, !3889}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !247, file: !6, line: 477, baseType: !121, size: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput_list", scope: !247, file: !6, line: 478, baseType: !121, size: 128, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !247, file: !6, line: 479, baseType: !7, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !6, line: 480, baseType: !7, size: 32, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !247, file: !6, line: 481, baseType: !7, size: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !247, file: !6, line: 482, baseType: !255, size: 16384, offset: 384)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 16384, elements: !3885)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field", file: !6, line: 449, size: 896, elements: !258)
!258 = !{!259, !260, !261, !262, !281, !282, !283, !284, !285, !286, !287, !290, !291, !292, !293, !294, !295, !296, !297, !298, !3884}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !257, file: !6, line: 450, baseType: !7, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "logical", scope: !257, file: !6, line: 451, baseType: !7, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !257, file: !6, line: 452, baseType: !7, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !257, file: !6, line: 453, baseType: !263, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage", file: !6, line: 431, size: 192, elements: !265)
!265 = !{!266, !267, !268, !269, !272, !273, !274, !275, !276, !277, !278}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !264, file: !6, line: 432, baseType: !7, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "collection_index", scope: !264, file: !6, line: 433, baseType: !7, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "usage_index", scope: !264, file: !6, line: 434, baseType: !7, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_multiplier", scope: !264, file: !6, line: 435, baseType: !270, size: 8, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !100, line: 20, baseType: !271)
!271 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_factor", scope: !264, file: !6, line: 438, baseType: !270, size: 8, offset: 104)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !264, file: !6, line: 439, baseType: !99, size: 16, offset: 112)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !264, file: !6, line: 440, baseType: !192, size: 8, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "hat_min", scope: !264, file: !6, line: 441, baseType: !270, size: 8, offset: 136)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hat_max", scope: !264, file: !6, line: 442, baseType: !270, size: 8, offset: 144)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "hat_dir", scope: !264, file: !6, line: 443, baseType: !270, size: 8, offset: 152)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_accumulated", scope: !264, file: !6, line: 444, baseType: !279, size: 16, offset: 160)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !100, line: 23, baseType: !280)
!280 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "maxusage", scope: !257, file: !6, line: 454, baseType: !7, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !6, line: 455, baseType: !7, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "report_offset", scope: !257, file: !6, line: 456, baseType: !7, size: 32, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "report_size", scope: !257, file: !6, line: 457, baseType: !7, size: 32, offset: 288)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "report_count", scope: !257, file: !6, line: 458, baseType: !7, size: 32, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !257, file: !6, line: 459, baseType: !7, size: 32, offset: 352)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !6, line: 460, baseType: !288, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !100, line: 26, baseType: !224)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "logical_minimum", scope: !257, file: !6, line: 461, baseType: !289, size: 32, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "logical_maximum", scope: !257, file: !6, line: 462, baseType: !289, size: 32, offset: 480)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "physical_minimum", scope: !257, file: !6, line: 463, baseType: !289, size: 32, offset: 512)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "physical_maximum", scope: !257, file: !6, line: 464, baseType: !289, size: 32, offset: 544)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "unit_exponent", scope: !257, file: !6, line: 465, baseType: !289, size: 32, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !257, file: !6, line: 466, baseType: !7, size: 32, offset: 608)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !257, file: !6, line: 467, baseType: !246, size: 64, offset: 640)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !257, file: !6, line: 468, baseType: !7, size: 32, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput", scope: !257, file: !6, line: 470, baseType: !299, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_input", file: !6, line: 522, size: 576, elements: !301)
!301 = !{!302, !303, !304, !3880, !3881, !3882, !3883}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !300, file: !6, line: 523, baseType: !121, size: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !300, file: !6, line: 524, baseType: !246, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !300, file: !6, line: 525, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !307, line: 131, size: 10432, elements: !308)
!307 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !313, !314, !315, !323, !327, !328, !332, !333, !334, !335, !336, !337, !341, !342, !343, !344, !345, !346, !363, !368, !3101, !3104, !3105, !3117, !3119, !3122, !3132, !3133, !3134, !3135, !3136, !3140, !3144, !3148, !3152, !3228, !3229, !3230, !3231, !3232, !3871, !3872, !3873, !3874, !3875, !3877, !3878}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 132, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !306, file: !307, line: 133, baseType: !310, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !306, file: !307, line: 134, baseType: !310, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !306, file: !307, line: 135, baseType: !316, size: 64, offset: 192)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !317, line: 59, size: 64, elements: !318)
!317 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !320, !321, !322}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !316, file: !317, line: 60, baseType: !99, size: 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !316, file: !317, line: 61, baseType: !99, size: 16, offset: 16)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !316, file: !317, line: 62, baseType: !99, size: 16, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !316, file: !317, line: 63, baseType: !99, size: 16, offset: 48)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !306, file: !307, line: 137, baseType: !324, size: 64, offset: 256)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 1)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !306, file: !307, line: 139, baseType: !324, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !306, file: !307, line: 140, baseType: !329, size: 768, offset: 384)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 768, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 12)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !306, file: !307, line: 141, baseType: !324, size: 64, offset: 1152)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !306, file: !307, line: 142, baseType: !324, size: 64, offset: 1216)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !306, file: !307, line: 143, baseType: !324, size: 64, offset: 1280)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !306, file: !307, line: 144, baseType: !324, size: 64, offset: 1344)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !306, file: !307, line: 145, baseType: !324, size: 64, offset: 1408)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !306, file: !307, line: 146, baseType: !338, size: 128, offset: 1472)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 128, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 2)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !306, file: !307, line: 147, baseType: !324, size: 64, offset: 1600)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !306, file: !307, line: 149, baseType: !7, size: 32, offset: 1664)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !306, file: !307, line: 151, baseType: !7, size: 32, offset: 1696)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !306, file: !307, line: 152, baseType: !7, size: 32, offset: 1728)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !306, file: !307, line: 153, baseType: !104, size: 64, offset: 1792)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !306, file: !307, line: 155, baseType: !347, size: 64, offset: 1856)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!224, !305, !350, !362}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !317, line: 114, size: 320, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !317, line: 116, baseType: !192, size: 8)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !352, file: !317, line: 117, baseType: !192, size: 8, offset: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !352, file: !317, line: 118, baseType: !99, size: 16, offset: 16)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !352, file: !317, line: 119, baseType: !115, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !352, file: !317, line: 120, baseType: !359, size: 256, offset: 64)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 32)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !306, file: !307, line: 158, baseType: !364, size: 64, offset: 1920)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!224, !305, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !306, file: !307, line: 161, baseType: !369, size: 64, offset: 1984)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !307, line: 534, size: 896, elements: !371)
!371 = !{!372, !439, !443, !447, !452, !453, !457, !458, !459, !460, !461, !462}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !370, file: !307, line: 535, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!224, !305, !376, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !317, line: 450, size: 384, elements: !378)
!378 = !{!379, !380, !381, !382, !387, !392}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !377, file: !317, line: 451, baseType: !99, size: 16)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !377, file: !317, line: 452, baseType: !279, size: 16, offset: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !377, file: !317, line: 453, baseType: !99, size: 16, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !377, file: !317, line: 454, baseType: !383, size: 32, offset: 48)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !317, line: 316, size: 32, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !383, file: !317, line: 317, baseType: !99, size: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !383, file: !317, line: 318, baseType: !99, size: 16, offset: 16)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !377, file: !317, line: 455, baseType: !388, size: 32, offset: 80)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !317, line: 306, size: 32, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !388, file: !317, line: 307, baseType: !99, size: 16)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !388, file: !317, line: 308, baseType: !99, size: 16, offset: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !377, file: !317, line: 463, baseType: !393, size: 256, offset: 128)
!393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !317, line: 457, size: 256, elements: !394)
!394 = !{!395, !406, !412, !424, !434}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !393, file: !317, line: 458, baseType: !396, size: 80)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !317, line: 345, size: 80, elements: !397)
!397 = !{!398, !399}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !396, file: !317, line: 346, baseType: !279, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !396, file: !317, line: 347, baseType: !400, size: 64, offset: 16)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !317, line: 333, size: 64, elements: !401)
!401 = !{!402, !403, !404, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !400, file: !317, line: 334, baseType: !99, size: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !400, file: !317, line: 335, baseType: !99, size: 16, offset: 16)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !400, file: !317, line: 336, baseType: !99, size: 16, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !400, file: !317, line: 337, baseType: !99, size: 16, offset: 48)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !393, file: !317, line: 459, baseType: !407, size: 96)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !317, line: 356, size: 96, elements: !408)
!408 = !{!409, !410, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !407, file: !317, line: 357, baseType: !279, size: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !407, file: !317, line: 358, baseType: !279, size: 16, offset: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !407, file: !317, line: 359, baseType: !400, size: 64, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !393, file: !317, line: 460, baseType: !413, size: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !317, line: 401, size: 256, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !413, file: !317, line: 402, baseType: !99, size: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !413, file: !317, line: 403, baseType: !99, size: 16, offset: 16)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !413, file: !317, line: 404, baseType: !279, size: 16, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !413, file: !317, line: 405, baseType: !279, size: 16, offset: 48)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !413, file: !317, line: 406, baseType: !99, size: 16, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !413, file: !317, line: 408, baseType: !400, size: 64, offset: 80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !413, file: !317, line: 410, baseType: !115, size: 32, offset: 160)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !413, file: !317, line: 411, baseType: !423, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !393, file: !317, line: 461, baseType: !425, size: 192)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 192, elements: !339)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !317, line: 372, size: 96, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !426, file: !317, line: 373, baseType: !99, size: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !426, file: !317, line: 374, baseType: !99, size: 16, offset: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !426, file: !317, line: 376, baseType: !279, size: 16, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !426, file: !317, line: 377, baseType: !279, size: 16, offset: 48)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !426, file: !317, line: 379, baseType: !99, size: 16, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !426, file: !317, line: 380, baseType: !279, size: 16, offset: 80)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !393, file: !317, line: 462, baseType: !435, size: 32)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !317, line: 422, size: 32, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !435, file: !317, line: 423, baseType: !99, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !435, file: !317, line: 424, baseType: !99, size: 16, offset: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !370, file: !307, line: 537, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!224, !305, !224}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !370, file: !307, line: 539, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!224, !305, !224, !224}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !370, file: !307, line: 540, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !305, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !155, line: 19, baseType: !99)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !370, file: !307, line: 541, baseType: !448, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !370, file: !307, line: 543, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !369}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !370, file: !307, line: 545, baseType: !104, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !370, file: !307, line: 547, baseType: !338, size: 128, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !370, file: !307, line: 549, baseType: !144, size: 192, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !370, file: !307, line: 551, baseType: !224, size: 32, offset: 768)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !370, file: !307, line: 552, baseType: !376, size: 64, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !370, file: !307, line: 553, baseType: !463, offset: 896)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, elements: !2317)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !466)
!466 = !{!467, !485, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3084, !3085, !3094, !3095, !3096, !3097, !3098, !3099, !3100}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !465, file: !37, line: 920, baseType: !468, size: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !37, line: 917, size: 128, elements: !469)
!469 = !{!470, !476}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !468, file: !37, line: 918, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !472, line: 58, size: 64, elements: !473)
!472 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !472, line: 59, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !468, file: !37, line: 919, baseType: !477, size: 128, align: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 216, size: 128, align: 64, elements: !478)
!478 = !{!479, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !103, line: 217, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !477, file: !103, line: 218, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !480}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !465, file: !37, line: 921, baseType: !486, size: 128, offset: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !487, line: 8, size: 128, elements: !488)
!487 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !493}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !486, file: !487, line: 9, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !492, line: 18, flags: DIFlagFwdDecl)
!492 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !486, file: !487, line: 10, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !492, line: 89, size: 1536, elements: !496)
!496 = !{!497, !498, !508, !516, !517, !536, !3034, !3036, !3048, !3049, !3050, !3051, !3052, !3058, !3059, !3060}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !495, file: !492, line: 91, baseType: !7, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !495, file: !492, line: 92, baseType: !499, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !500, line: 277, baseType: !501)
!500 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !500, line: 277, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !501, file: !500, line: 277, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !500, line: 70, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !500, line: 65, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !505, file: !500, line: 66, baseType: !7, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !495, file: !492, line: 93, baseType: !509, size: 128, offset: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !510, line: 38, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!511 = !{!512, !514}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !510, line: 39, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !509, file: !510, line: 39, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !495, file: !492, line: 94, baseType: !494, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !495, file: !492, line: 95, baseType: !518, size: 128, offset: 256)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !492, line: 47, size: 128, elements: !519)
!519 = !{!520, !533}
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !492, line: 48, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !492, line: 48, size: 64, elements: !522)
!522 = !{!523, !529}
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !521, file: !492, line: 49, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !521, file: !492, line: 49, size: 64, elements: !525)
!525 = !{!526, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !524, file: !492, line: 50, baseType: !527, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !155, line: 21, baseType: !115)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !524, file: !492, line: 50, baseType: !527, size: 32, offset: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !521, file: !492, line: 52, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !155, line: 23, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !100, line: 31, baseType: !532)
!532 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !518, file: !492, line: 54, baseType: !534, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !495, file: !492, line: 96, baseType: !537, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !539)
!539 = !{!540, !542, !543, !552, !559, !560, !712, !2745, !2746, !2747, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !3010, !3018, !3019, !3020, !3030, !3031, !3032, !3033}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !538, file: !37, line: 611, baseType: !541, size: 16)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 19, baseType: !101)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !538, file: !37, line: 612, baseType: !101, size: 16, offset: 16)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !538, file: !37, line: 613, baseType: !544, size: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !545, line: 23, baseType: !546)
!545 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 21, size: 32, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !545, line: 22, baseType: !549, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 32, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !551, line: 49, baseType: !7)
!551 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !538, file: !37, line: 614, baseType: !553, size: 32, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !545, line: 28, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 26, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !554, file: !545, line: 27, baseType: !557, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 33, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !551, line: 50, baseType: !7)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !538, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !538, file: !37, line: 622, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !564)
!564 = !{!565, !569, !582, !586, !592, !597, !601, !605, !609, !613, !617, !618, !624, !628, !653, !682, !692, !698, !703, !707, !708}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !563, file: !37, line: 1865, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!494, !537, !494, !7}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !563, file: !37, line: 1866, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!310, !494, !537, !573}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !575, line: 10, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !581}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !574, file: !575, line: 11, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !104}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !574, file: !575, line: 12, baseType: !104, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !563, file: !37, line: 1867, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!224, !537, !224}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !563, file: !37, line: 1868, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!590, !537, !224}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !563, file: !37, line: 1870, baseType: !593, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!224, !494, !596, !224}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !563, file: !37, line: 1872, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!224, !537, !494, !541, !209}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !563, file: !37, line: 1873, baseType: !602, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!224, !494, !537, !494}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !563, file: !37, line: 1874, baseType: !606, size: 64, offset: 448)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!224, !537, !494}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !563, file: !37, line: 1875, baseType: !610, size: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!224, !537, !494, !310}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !563, file: !37, line: 1876, baseType: !614, size: 64, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!224, !537, !494, !541}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !563, file: !37, line: 1877, baseType: !606, size: 64, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !563, file: !37, line: 1878, baseType: !619, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!224, !537, !494, !541, !622}
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 16, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 13, baseType: !527)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !563, file: !37, line: 1879, baseType: !625, size: 64, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!224, !537, !494, !537, !494, !7}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !563, file: !37, line: 1881, baseType: !629, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!224, !494, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !642, !650, !651, !652}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !633, file: !37, line: 220, baseType: !7, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !633, file: !37, line: 221, baseType: !541, size: 16, offset: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !633, file: !37, line: 222, baseType: !544, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !633, file: !37, line: 223, baseType: !553, size: 32, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !633, file: !37, line: 224, baseType: !640, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 46, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !551, line: 88, baseType: !157)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !633, file: !37, line: 225, baseType: !643, size: 128, offset: 192)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !644, line: 13, size: 128, elements: !645)
!644 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!645 = !{!646, !648}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !643, file: !644, line: 14, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !644, line: 8, baseType: !156)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !643, file: !644, line: 15, baseType: !649, size: 64, offset: 64)
!649 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !633, file: !37, line: 226, baseType: !643, size: 128, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !633, file: !37, line: 227, baseType: !643, size: 128, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !633, file: !37, line: 234, baseType: !464, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !563, file: !37, line: 1882, baseType: !654, size: 64, offset: 896)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!224, !657, !659, !527, !7}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !661, line: 22, size: 1152, elements: !662)
!661 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!662 = !{!663, !664, !665, !666, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !660, file: !661, line: 23, baseType: !527, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !660, file: !661, line: 24, baseType: !541, size: 16, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !660, file: !661, line: 25, baseType: !7, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !660, file: !661, line: 26, baseType: !667, size: 32, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !103, line: 104, baseType: !527)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !660, file: !661, line: 27, baseType: !530, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !660, file: !661, line: 28, baseType: !530, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !660, file: !661, line: 37, baseType: !530, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !660, file: !661, line: 38, baseType: !622, size: 32, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !660, file: !661, line: 39, baseType: !622, size: 32, offset: 352)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !660, file: !661, line: 40, baseType: !544, size: 32, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !660, file: !661, line: 41, baseType: !553, size: 32, offset: 416)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !660, file: !661, line: 42, baseType: !640, size: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !660, file: !661, line: 43, baseType: !643, size: 128, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !660, file: !661, line: 44, baseType: !643, size: 128, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !660, file: !661, line: 45, baseType: !643, size: 128, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !660, file: !661, line: 46, baseType: !643, size: 128, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !660, file: !661, line: 47, baseType: !530, size: 64, offset: 1024)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !660, file: !661, line: 48, baseType: !530, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !563, file: !37, line: 1883, baseType: !683, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!686, !494, !596, !689}
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 60, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !551, line: 73, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !551, line: 15, baseType: !649)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 55, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !551, line: 72, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !551, line: 16, baseType: !119)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !563, file: !37, line: 1884, baseType: !693, size: 64, offset: 1024)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!224, !537, !696, !530, !530}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !563, file: !37, line: 1886, baseType: !699, size: 64, offset: 1088)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!224, !537, !702, !224}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !563, file: !37, line: 1887, baseType: !704, size: 64, offset: 1152)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!224, !537, !494, !464, !7, !541}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !563, file: !37, line: 1890, baseType: !614, size: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !563, file: !37, line: 1891, baseType: !709, size: 64, offset: 1280)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!224, !537, !590, !224}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !538, file: !37, line: 623, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !773, !2353, !2435, !2518, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2534, !2538, !2539, !2542, !2543, !2546, !2547, !2548, !2589, !2615, !2616, !2617, !2618, !2619, !2620, !2623, !2625, !2632, !2633, !2635, !2636, !2637, !2696, !2697, !2712, !2713, !2714, !2715, !2716, !2719, !2720, !2721, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !714, file: !37, line: 1417, baseType: !121, size: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !714, file: !37, line: 1418, baseType: !622, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !714, file: !37, line: 1419, baseType: !193, size: 8, offset: 160)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !714, file: !37, line: 1420, baseType: !119, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !714, file: !37, line: 1421, baseType: !640, size: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !714, file: !37, line: 1422, baseType: !722, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !724)
!724 = !{!725, !726, !727, !734, !738, !742, !746, !750, !751, !761, !764, !765, !766, !770, !771, !772}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !723, file: !37, line: 2229, baseType: !310, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !723, file: !37, line: 2230, baseType: !224, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !723, file: !37, line: 2238, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!224, !731}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !733, line: 28, flags: DIFlagFwdDecl)
!733 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!734 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !723, file: !37, line: 2239, baseType: !735, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !737)
!737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !723, file: !37, line: 2240, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!494, !722, !224, !310, !104}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !723, file: !37, line: 2242, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !713}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !723, file: !37, line: 2243, baseType: !747, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !749, line: 76, flags: DIFlagFwdDecl)
!749 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !37, line: 2244, baseType: !722, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !723, file: !37, line: 2245, baseType: !752, size: 64, offset: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !103, line: 182, size: 64, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !752, file: !103, line: 183, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 186, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !103, line: 187, baseType: !755, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !756, file: !103, line: 187, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !723, file: !37, line: 2247, baseType: !762, offset: 576)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !763, line: 187, elements: !173)
!763 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!764 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !723, file: !37, line: 2248, baseType: !762, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !723, file: !37, line: 2249, baseType: !762, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !723, file: !37, line: 2250, baseType: !767, offset: 576)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 3)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !723, file: !37, line: 2252, baseType: !762, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !723, file: !37, line: 2253, baseType: !762, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !723, file: !37, line: 2254, baseType: !762, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !714, file: !37, line: 1423, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !777)
!777 = !{!778, !782, !786, !787, !791, !797, !801, !802, !803, !807, !811, !812, !813, !814, !820, !825, !826, !833, !834, !835, !836, !2337, !2352}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !776, file: !37, line: 1936, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!537, !713}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !776, file: !37, line: 1937, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !537}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !776, file: !37, line: 1938, baseType: !783, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !776, file: !37, line: 1940, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !537, !224}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !776, file: !37, line: 1941, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!224, !537, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !776, file: !37, line: 1942, baseType: !798, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!224, !537}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !776, file: !37, line: 1943, baseType: !783, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !776, file: !37, line: 1944, baseType: !743, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !776, file: !37, line: 1945, baseType: !804, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!224, !713, !224}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !776, file: !37, line: 1946, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!224, !713}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !776, file: !37, line: 1947, baseType: !808, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !776, file: !37, line: 1948, baseType: !808, size: 64, offset: 704)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !776, file: !37, line: 1949, baseType: !808, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !776, file: !37, line: 1950, baseType: !815, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!224, !494, !818}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !776, file: !37, line: 1951, baseType: !821, size: 64, offset: 896)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!224, !713, !824, !596}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !776, file: !37, line: 1952, baseType: !743, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !776, file: !37, line: 1954, baseType: !827, size: 64, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!224, !830, !494}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !832, line: 539, flags: DIFlagFwdDecl)
!832 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!833 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !776, file: !37, line: 1955, baseType: !827, size: 64, offset: 1088)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !776, file: !37, line: 1956, baseType: !827, size: 64, offset: 1152)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !776, file: !37, line: 1957, baseType: !827, size: 64, offset: 1216)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !776, file: !37, line: 1963, baseType: !837, size: 64, offset: 1280)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!224, !713, !840, !102}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !842, line: 68, size: 512, align: 128, elements: !843)
!842 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!843 = !{!844, !845, !2329, !2336}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !841, file: !842, line: 69, baseType: !119, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !842, line: 77, baseType: !846, size: 320, offset: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !842, line: 77, size: 320, elements: !847)
!847 = !{!848, !1026, !1031, !1059, !1067, !1073, !2321, !2328}
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 78, baseType: !849, size: 320)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 78, size: 320, elements: !850)
!850 = !{!851, !852, !1024, !1025}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !849, file: !842, line: 84, baseType: !121, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !849, file: !842, line: 86, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !855)
!855 = !{!856, !857, !864, !865, !870, !885, !894, !895, !896, !897, !1017, !1018, !1021, !1022, !1023}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !854, file: !37, line: 452, baseType: !537, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !854, file: !37, line: 453, baseType: !858, size: 128, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !859, line: 292, size: 128, elements: !860)
!859 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !858, file: !859, line: 293, baseType: !159)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !858, file: !859, line: 295, baseType: !102, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !858, file: !859, line: 296, baseType: !104, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !854, file: !37, line: 454, baseType: !102, size: 32, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !854, file: !37, line: 455, baseType: !866, size: 32, offset: 224)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 168, baseType: !867)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 166, size: 32, elements: !868)
!868 = !{!869}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !867, file: !103, line: 167, baseType: !224, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !854, file: !37, line: 460, baseType: !871, size: 128, offset: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !872, line: 125, size: 128, elements: !873)
!872 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!873 = !{!874, !884}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !871, file: !872, line: 126, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !872, line: 31, size: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !875, file: !872, line: 32, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !872, line: 24, size: 192, align: 64, elements: !880)
!880 = !{!881, !882, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !879, file: !872, line: 25, baseType: !119, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !879, file: !872, line: 26, baseType: !878, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !879, file: !872, line: 27, baseType: !878, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !871, file: !872, line: 127, baseType: !878, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !854, file: !37, line: 461, baseType: !886, size: 256, offset: 384)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !887, line: 35, size: 256, elements: !888)
!887 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!888 = !{!889, !890, !891, !893}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 36, baseType: !148, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !886, file: !887, line: 42, baseType: !148, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !886, file: !887, line: 46, baseType: !892, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !160, line: 29, baseType: !167)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !886, file: !887, line: 47, baseType: !121, size: 128, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !854, file: !37, line: 462, baseType: !119, size: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !854, file: !37, line: 463, baseType: !119, size: 64, offset: 704)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !854, file: !37, line: 464, baseType: !119, size: 64, offset: 768)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !854, file: !37, line: 465, baseType: !898, size: 64, offset: 832)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !901)
!901 = !{!902, !906, !910, !914, !918, !922, !928, !934, !938, !943, !947, !951, !955, !981, !985, !991, !992, !993, !997, !1002, !1006, !1013}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !900, file: !37, line: 368, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!224, !840, !795}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !900, file: !37, line: 369, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!224, !464, !840}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !900, file: !37, line: 372, baseType: !911, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!224, !853, !795}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !900, file: !37, line: 375, baseType: !915, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!224, !840}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !900, file: !37, line: 381, baseType: !919, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!224, !464, !853, !124, !7}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !900, file: !37, line: 383, baseType: !923, size: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !900, file: !37, line: 385, baseType: !929, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!224, !464, !853, !640, !7, !7, !932, !933}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !900, file: !37, line: 388, baseType: !935, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!224, !464, !853, !640, !7, !7, !840, !104}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !900, file: !37, line: 393, baseType: !939, size: 64, offset: 512)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!942, !853, !942}
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !103, line: 125, baseType: !530)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !900, file: !37, line: 394, baseType: !944, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !840, !7, !7}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !900, file: !37, line: 395, baseType: !948, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!224, !840, !102}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !900, file: !37, line: 396, baseType: !952, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !840}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !900, file: !37, line: 397, baseType: !956, size: 64, offset: 768)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!686, !959, !979}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !961)
!961 = !{!962, !963, !964, !968, !969, !970, !971, !972}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !960, file: !37, line: 321, baseType: !464, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !960, file: !37, line: 326, baseType: !640, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !960, file: !37, line: 327, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !959, !649, !649}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !960, file: !37, line: 328, baseType: !104, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !960, file: !37, line: 329, baseType: !224, size: 32, offset: 256)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !960, file: !37, line: 330, baseType: !451, size: 16, offset: 288)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !960, file: !37, line: 331, baseType: !451, size: 16, offset: 304)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !37, line: 332, baseType: !973, size: 64, offset: 320)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !37, line: 332, size: 64, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !973, file: !37, line: 333, baseType: !7, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !973, file: !37, line: 334, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !900, file: !37, line: 402, baseType: !982, size: 64, offset: 832)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!224, !853, !840, !840, !12}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !900, file: !37, line: 404, baseType: !986, size: 64, offset: 896)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!209, !840, !989}
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !990, line: 305, baseType: !7)
!990 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!991 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !900, file: !37, line: 405, baseType: !952, size: 64, offset: 960)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !900, file: !37, line: 406, baseType: !915, size: 64, offset: 1024)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !900, file: !37, line: 407, baseType: !994, size: 64, offset: 1088)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!224, !840, !119, !119}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !900, file: !37, line: 409, baseType: !998, size: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !840, !1001, !1001}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !900, file: !37, line: 410, baseType: !1003, size: 64, offset: 1216)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!224, !853, !840}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !900, file: !37, line: 413, baseType: !1007, size: 64, offset: 1280)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!224, !1010, !464, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !900, file: !37, line: 415, baseType: !1014, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !464}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !37, line: 466, baseType: !119, size: 64, offset: 896)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !854, file: !37, line: 467, baseType: !1019, size: 32, offset: 960)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1020, line: 8, baseType: !527)
!1020 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !854, file: !37, line: 468, baseType: !159, offset: 992)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !854, file: !37, line: 469, baseType: !121, size: 128, offset: 1024)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !854, file: !37, line: 470, baseType: !104, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !849, file: !842, line: 87, baseType: !119, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !849, file: !842, line: 94, baseType: !119, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 96, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 96, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1027, file: !842, line: 101, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !103, line: 143, baseType: !530)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 103, baseType: !1032, size: 320)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 103, size: 320, elements: !1033)
!1033 = !{!1034, !1044, !1047, !1048}
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !842, line: 104, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !842, line: 104, size: 128, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1035, file: !842, line: 105, baseType: !121, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !842, line: 106, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !842, line: 106, size: 128, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1039, file: !842, line: 107, baseType: !840, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1039, file: !842, line: 109, baseType: !224, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1039, file: !842, line: 110, baseType: !224, size: 32, offset: 96)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1032, file: !842, line: 117, baseType: !1045, size: 64, offset: 128)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !842, line: 117, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1032, file: !842, line: 119, baseType: !104, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1032, file: !842, line: 120, baseType: !1049, size: 64, offset: 256)
!1049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1032, file: !842, line: 120, size: 64, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1049, file: !842, line: 121, baseType: !104, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1049, file: !842, line: 122, baseType: !119, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !842, line: 123, baseType: !1054, size: 32)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1049, file: !842, line: 123, size: 32, elements: !1055)
!1055 = !{!1056, !1057, !1058}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1054, file: !842, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1054, file: !842, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1054, file: !842, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 130, baseType: !1060, size: 192)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 130, size: 192, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1060, file: !842, line: 131, baseType: !119, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1060, file: !842, line: 134, baseType: !193, size: 8, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1060, file: !842, line: 135, baseType: !193, size: 8, offset: 72)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1060, file: !842, line: 136, baseType: !866, size: 32, offset: 96)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1060, file: !842, line: 137, baseType: !7, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 139, baseType: !1068, size: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 139, size: 256, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1068, file: !842, line: 140, baseType: !119, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1068, file: !842, line: 141, baseType: !866, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1068, file: !842, line: 143, baseType: !121, size: 128, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 145, baseType: !1074, size: 256)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 145, size: 256, elements: !1075)
!1075 = !{!1076, !1077, !1079, !1080, !2320}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1074, file: !842, line: 146, baseType: !119, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1074, file: !842, line: 147, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !832, line: 509, baseType: !840)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1074, file: !842, line: 148, baseType: !119, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !842, line: 149, baseType: !1081, size: 64, offset: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !842, line: 149, size: 64, elements: !1082)
!1082 = !{!1083, !2319}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1081, file: !842, line: 150, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !842, line: 388, size: 7296, elements: !1086)
!1086 = !{!1087, !2315}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !842, line: 389, baseType: !1088, size: 7296)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !842, line: 389, size: 7296, elements: !1089)
!1089 = !{!1090, !1128, !1129, !1130, !1134, !1135, !1136, !1137, !1138, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1179, !1187, !1190, !1212, !1213, !2299, !2300, !2303, !2304, !2305, !2308, !2309, !2310, !2313, !2314}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1088, file: !842, line: 390, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !842, line: 305, size: 1472, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1108, !1109, !1114, !1115, !1118, !1122, !1123, !1124, !1125, !1126}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1092, file: !842, line: 308, baseType: !119, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1092, file: !842, line: 309, baseType: !119, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1092, file: !842, line: 313, baseType: !1091, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1092, file: !842, line: 313, baseType: !1091, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1092, file: !842, line: 315, baseType: !879, size: 192, align: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1092, file: !842, line: 323, baseType: !119, size: 64, offset: 448)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1092, file: !842, line: 327, baseType: !1084, size: 64, offset: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1092, file: !842, line: 333, baseType: !1102, size: 64, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !832, line: 284, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !832, line: 284, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1103, file: !832, line: 284, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1107, line: 19, baseType: !119)
!1107 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1092, file: !842, line: 334, baseType: !119, size: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1092, file: !842, line: 343, baseType: !1110, size: 256, offset: 704)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !842, line: 340, size: 256, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1110, file: !842, line: 341, baseType: !879, size: 192, align: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1110, file: !842, line: 342, baseType: !119, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1092, file: !842, line: 351, baseType: !121, size: 128, offset: 960)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1092, file: !842, line: 353, baseType: !1116, size: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !842, line: 353, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1092, file: !842, line: 356, baseType: !1119, size: 64, offset: 1152)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1121)
!1121 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !842, line: 356, flags: DIFlagFwdDecl)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1092, file: !842, line: 359, baseType: !119, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1092, file: !842, line: 361, baseType: !464, size: 64, offset: 1280)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1092, file: !842, line: 362, baseType: !104, size: 64, offset: 1344)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1092, file: !842, line: 365, baseType: !148, size: 64, offset: 1408)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1092, file: !842, line: 373, baseType: !1127, offset: 1472)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !842, line: 296, elements: !173)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1088, file: !842, line: 391, baseType: !875, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1088, file: !842, line: 392, baseType: !530, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1088, file: !842, line: 394, baseType: !1131, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!119, !464, !119, !119, !119, !119}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1088, file: !842, line: 398, baseType: !119, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1088, file: !842, line: 399, baseType: !119, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1088, file: !842, line: 405, baseType: !119, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1088, file: !842, line: 406, baseType: !119, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1088, file: !842, line: 407, baseType: !1139, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !832, line: 286, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !832, line: 286, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1141, file: !832, line: 286, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1107, line: 18, baseType: !119)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1088, file: !842, line: 416, baseType: !866, size: 32, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1088, file: !842, line: 428, baseType: !866, size: 32, offset: 608)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1088, file: !842, line: 437, baseType: !866, size: 32, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1088, file: !842, line: 447, baseType: !866, size: 32, offset: 672)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1088, file: !842, line: 450, baseType: !148, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1088, file: !842, line: 452, baseType: !224, size: 32, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1088, file: !842, line: 454, baseType: !159, offset: 800)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1088, file: !842, line: 457, baseType: !886, size: 256, offset: 832)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1088, file: !842, line: 459, baseType: !121, size: 128, offset: 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1088, file: !842, line: 466, baseType: !119, size: 64, offset: 1216)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1088, file: !842, line: 467, baseType: !119, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1088, file: !842, line: 469, baseType: !119, size: 64, offset: 1344)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1088, file: !842, line: 470, baseType: !119, size: 64, offset: 1408)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1088, file: !842, line: 471, baseType: !150, size: 64, offset: 1472)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1088, file: !842, line: 472, baseType: !119, size: 64, offset: 1536)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1088, file: !842, line: 473, baseType: !119, size: 64, offset: 1600)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1088, file: !842, line: 474, baseType: !119, size: 64, offset: 1664)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1088, file: !842, line: 475, baseType: !119, size: 64, offset: 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1088, file: !842, line: 477, baseType: !159, offset: 1792)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1088, file: !842, line: 478, baseType: !119, size: 64, offset: 1792)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1088, file: !842, line: 478, baseType: !119, size: 64, offset: 1856)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1088, file: !842, line: 478, baseType: !119, size: 64, offset: 1920)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1088, file: !842, line: 478, baseType: !119, size: 64, offset: 1984)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1088, file: !842, line: 479, baseType: !119, size: 64, offset: 2048)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1088, file: !842, line: 479, baseType: !119, size: 64, offset: 2112)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1088, file: !842, line: 479, baseType: !119, size: 64, offset: 2176)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1088, file: !842, line: 480, baseType: !119, size: 64, offset: 2240)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1088, file: !842, line: 480, baseType: !119, size: 64, offset: 2304)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1088, file: !842, line: 480, baseType: !119, size: 64, offset: 2368)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1088, file: !842, line: 480, baseType: !119, size: 64, offset: 2432)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1088, file: !842, line: 482, baseType: !1176, size: 2816, offset: 2496)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 2816, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 44)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1088, file: !842, line: 488, baseType: !1180, size: 256, offset: 5312)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1181, line: 60, size: 256, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1180, file: !1181, line: 61, baseType: !1184, size: 256)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 4)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1088, file: !842, line: 490, baseType: !1188, size: 64, offset: 5568)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !842, line: 490, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1088, file: !842, line: 493, baseType: !1191, size: 896, offset: 5632)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1192, line: 53, baseType: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1192, line: 13, size: 896, elements: !1194)
!1194 = !{!1195, !1196, !1197, !1198, !1201, !1202, !1203, !1204, !1208, !1209, !1210}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1193, file: !1192, line: 18, baseType: !530, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1193, file: !1192, line: 28, baseType: !150, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1193, file: !1192, line: 31, baseType: !886, size: 256, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1193, file: !1192, line: 32, baseType: !1199, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1192, line: 32, flags: DIFlagFwdDecl)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1193, file: !1192, line: 37, baseType: !101, size: 16, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1193, file: !1192, line: 40, baseType: !144, size: 192, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1193, file: !1192, line: 41, baseType: !104, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1193, file: !1192, line: 42, baseType: !1205, size: 64, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1192, line: 42, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1193, file: !1192, line: 44, baseType: !866, size: 32, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1193, file: !1192, line: 50, baseType: !451, size: 16, offset: 864)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1193, file: !1192, line: 51, baseType: !1211, size: 16, offset: 880)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !155, line: 18, baseType: !279)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1088, file: !842, line: 495, baseType: !119, size: 64, offset: 6528)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1088, file: !842, line: 497, baseType: !1214, size: 64, offset: 6592)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !842, line: 381, size: 384, elements: !1216)
!1216 = !{!1217, !1218, !2298}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1215, file: !842, line: 382, baseType: !866, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1215, file: !842, line: 383, baseType: !1219, size: 128, offset: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !842, line: 376, size: 128, elements: !1220)
!1220 = !{!1221, !2296}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1219, file: !842, line: 377, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1224, line: 640, size: 48640, elements: !1225)
!1224 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1225 = !{!1226, !1232, !1234, !1235, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1252, !1270, !1281, !1365, !1366, !1367, !1375, !1376, !1378, !1379, !1380, !1381, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1459, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1497, !1499, !1500, !1501, !1513, !1514, !1515, !1516, !1517, !1518, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1542, !1547, !1729, !1730, !1731, !1732, !1736, !1739, !1742, !1745, !1748, !1751, !1852, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1900, !1901, !1902, !1903, !1904, !1909, !1910, !1911, !1914, !1915, !1918, !1921, !1924, !1927, !1970, !1973, !1974, !2053, !2054, !2057, !2058, !2061, !2062, !2063, !2067, !2068, !2069, !2082, !2083, !2084, !2094, !2099, !2102, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1223, file: !1224, line: 646, baseType: !1227, size: 128)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1228, line: 56, size: 128, elements: !1229)
!1228 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1229 = !{!1230, !1231}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1227, file: !1228, line: 57, baseType: !119, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1227, file: !1228, line: 58, baseType: !527, size: 32, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1223, file: !1224, line: 649, baseType: !1233, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !649)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1223, file: !1224, line: 657, baseType: !104, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1223, file: !1224, line: 658, baseType: !1236, size: 32, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1237, line: 113, baseType: !1238)
!1237 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1237, line: 111, size: 32, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1238, file: !1237, line: 112, baseType: !866, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !1224, line: 660, baseType: !7, size: 32, offset: 288)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1223, file: !1224, line: 661, baseType: !7, size: 32, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1223, file: !1224, line: 684, baseType: !224, size: 32, offset: 352)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1223, file: !1224, line: 686, baseType: !224, size: 32, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1223, file: !1224, line: 687, baseType: !224, size: 32, offset: 416)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1223, file: !1224, line: 688, baseType: !224, size: 32, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1223, file: !1224, line: 689, baseType: !7, size: 32, offset: 480)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1223, file: !1224, line: 691, baseType: !1249, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1224, line: 691, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1223, file: !1224, line: 692, baseType: !1253, size: 832, offset: 576)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1224, line: 451, size: 832, elements: !1254)
!1254 = !{!1255, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1253, file: !1224, line: 453, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1224, line: 325, size: 128, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1256, file: !1224, line: 326, baseType: !119, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1256, file: !1224, line: 327, baseType: !527, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1253, file: !1224, line: 454, baseType: !879, size: 192, align: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1253, file: !1224, line: 455, baseType: !121, size: 128, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1253, file: !1224, line: 456, baseType: !7, size: 32, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1253, file: !1224, line: 458, baseType: !530, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1253, file: !1224, line: 459, baseType: !530, size: 64, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1253, file: !1224, line: 460, baseType: !530, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1253, file: !1224, line: 461, baseType: !530, size: 64, offset: 704)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1253, file: !1224, line: 463, baseType: !530, size: 64, offset: 768)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1253, file: !1224, line: 465, baseType: !1269, offset: 832)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1224, line: 415, elements: !173)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1223, file: !1224, line: 693, baseType: !1271, size: 384, offset: 1408)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1224, line: 489, size: 384, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1271, file: !1224, line: 490, baseType: !121, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1271, file: !1224, line: 491, baseType: !119, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1271, file: !1224, line: 492, baseType: !119, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1271, file: !1224, line: 493, baseType: !7, size: 32, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1271, file: !1224, line: 494, baseType: !101, size: 16, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1271, file: !1224, line: 495, baseType: !101, size: 16, offset: 304)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1271, file: !1224, line: 497, baseType: !1280, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1223, file: !1224, line: 697, baseType: !1282, size: 1792, offset: 1792)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1224, line: 507, size: 1792, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1362, !1363}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1282, file: !1224, line: 508, baseType: !879, size: 192, align: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1282, file: !1224, line: 515, baseType: !530, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1282, file: !1224, line: 516, baseType: !530, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1282, file: !1224, line: 517, baseType: !530, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1282, file: !1224, line: 518, baseType: !530, size: 64, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1282, file: !1224, line: 519, baseType: !530, size: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1282, file: !1224, line: 526, baseType: !154, size: 64, offset: 512)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1282, file: !1224, line: 527, baseType: !530, size: 64, offset: 576)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1282, file: !1224, line: 528, baseType: !7, size: 32, offset: 640)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1282, file: !1224, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1282, file: !1224, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1282, file: !1224, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1282, file: !1224, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1282, file: !1224, line: 563, baseType: !1298, size: 512, offset: 704)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1299)
!1299 = !{!1300, !1308, !1309, !1314, !1357, !1359, !1360, !1361}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1298, file: !20, line: 119, baseType: !1301, size: 256)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1302, line: 9, size: 256, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1301, file: !1302, line: 10, baseType: !879, size: 192, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1301, file: !1302, line: 11, baseType: !1306, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1307, line: 29, baseType: !154)
!1307 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1298, file: !20, line: 120, baseType: !1306, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1298, file: !20, line: 121, baseType: !1310, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!19, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1298, file: !20, line: 122, baseType: !1315, size: 64, offset: 384)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1317)
!1317 = !{!1318, !1338, !1339, !1342, !1347, !1348, !1352, !1356}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1316, file: !20, line: 160, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1320, file: !20, line: 215, baseType: !892)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1320, file: !20, line: 216, baseType: !7, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1320, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1320, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1320, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1320, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1320, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1320, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1320, file: !20, line: 233, baseType: !1306, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1320, file: !20, line: 234, baseType: !1313, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1320, file: !20, line: 235, baseType: !1306, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1320, file: !20, line: 236, baseType: !1313, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1320, file: !20, line: 237, baseType: !1335, size: 4096, offset: 512)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 4096, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 8)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1316, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1316, file: !20, line: 162, baseType: !1340, size: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 27, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !551, line: 96, baseType: !224)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1316, file: !20, line: 163, baseType: !1343, size: 32, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !500, line: 276, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !500, line: 276, size: 32, elements: !1345)
!1345 = !{!1346}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1344, file: !500, line: 276, baseType: !504, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1316, file: !20, line: 164, baseType: !1313, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1316, file: !20, line: 165, baseType: !1349, size: 128, offset: 256)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1302, line: 14, size: 128, elements: !1350)
!1350 = !{!1351}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1349, file: !1302, line: 15, baseType: !871, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1316, file: !20, line: 166, baseType: !1353, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!1306}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1316, file: !20, line: 167, baseType: !1306, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1298, file: !20, line: 123, baseType: !1358, size: 8, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !155, line: 17, baseType: !192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1298, file: !20, line: 124, baseType: !1358, size: 8, offset: 456)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1298, file: !20, line: 125, baseType: !1358, size: 8, offset: 464)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1298, file: !20, line: 126, baseType: !1358, size: 8, offset: 472)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1282, file: !1224, line: 572, baseType: !1298, size: 512, offset: 1216)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1282, file: !1224, line: 580, baseType: !1364, size: 64, offset: 1728)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1223, file: !1224, line: 721, baseType: !7, size: 32, offset: 3584)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1223, file: !1224, line: 722, baseType: !224, size: 32, offset: 3616)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1223, file: !1224, line: 723, baseType: !1368, size: 64, offset: 3648)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1371, line: 17, baseType: !1372)
!1371 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1371, line: 17, size: 64, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1372, file: !1371, line: 17, baseType: !324, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1223, file: !1224, line: 724, baseType: !1370, size: 64, offset: 3712)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1223, file: !1224, line: 749, baseType: !1377, offset: 3776)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1224, line: 290, elements: !173)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1223, file: !1224, line: 751, baseType: !121, size: 128, offset: 3776)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1223, file: !1224, line: 757, baseType: !1084, size: 64, offset: 3904)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1223, file: !1224, line: 758, baseType: !1084, size: 64, offset: 3968)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1223, file: !1224, line: 761, baseType: !1382, size: 320, offset: 4032)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1181, line: 34, size: 320, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1382, file: !1181, line: 35, baseType: !530, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1382, file: !1181, line: 36, baseType: !1386, size: 256, offset: 64)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1091, size: 256, elements: !1185)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1223, file: !1224, line: 766, baseType: !224, size: 32, offset: 4352)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1223, file: !1224, line: 767, baseType: !224, size: 32, offset: 4384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1223, file: !1224, line: 768, baseType: !224, size: 32, offset: 4416)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1223, file: !1224, line: 770, baseType: !224, size: 32, offset: 4448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1223, file: !1224, line: 772, baseType: !119, size: 64, offset: 4480)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1223, file: !1224, line: 775, baseType: !7, size: 32, offset: 4544)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1223, file: !1224, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1223, file: !1224, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1223, file: !1224, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1223, file: !1224, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1223, file: !1224, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1223, file: !1224, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1223, file: !1224, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1223, file: !1224, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1223, file: !1224, line: 831, baseType: !119, size: 64, offset: 4672)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1223, file: !1224, line: 833, baseType: !1403, size: 384, offset: 4736)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1404)
!1404 = !{!1405, !1410}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1403, file: !25, line: 26, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!649, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !25, line: 27, baseType: !1411, size: 320, offset: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1403, file: !25, line: 27, size: 320, elements: !1412)
!1412 = !{!1413, !1423, !1449}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1411, file: !25, line: 36, baseType: !1414, size: 320)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !25, line: 29, size: 320, elements: !1415)
!1415 = !{!1416, !1418, !1419, !1420, !1421, !1422}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1414, file: !25, line: 30, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1414, file: !25, line: 31, baseType: !527, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !25, line: 32, baseType: !527, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1414, file: !25, line: 33, baseType: !527, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1414, file: !25, line: 34, baseType: !530, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1414, file: !25, line: 35, baseType: !1417, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1411, file: !25, line: 46, baseType: !1424, size: 192)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !25, line: 38, size: 192, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1448}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1424, file: !25, line: 39, baseType: !1340, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1424, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !25, line: 41, baseType: !1429, size: 64, offset: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1424, file: !25, line: 41, size: 64, elements: !1430)
!1430 = !{!1431, !1439}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1429, file: !25, line: 42, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1434, line: 7, size: 128, elements: !1435)
!1434 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1435 = !{!1436, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1433, file: !1434, line: 8, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !551, line: 93, baseType: !157)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1433, file: !1434, line: 9, baseType: !157, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1429, file: !25, line: 43, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1442, line: 7, size: 64, elements: !1443)
!1442 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1447}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1441, file: !1442, line: 8, baseType: !1445, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1442, line: 5, baseType: !1446)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !155, line: 20, baseType: !289)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1441, file: !1442, line: 9, baseType: !1446, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1424, file: !25, line: 45, baseType: !530, size: 64, offset: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1411, file: !25, line: 54, baseType: !1450, size: 256)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !25, line: 48, size: 256, elements: !1451)
!1451 = !{!1452, !1455, !1456, !1457, !1458}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1450, file: !25, line: 49, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1450, file: !25, line: 50, baseType: !224, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1450, file: !25, line: 51, baseType: !224, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1450, file: !25, line: 52, baseType: !119, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1450, file: !25, line: 53, baseType: !119, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1223, file: !1224, line: 835, baseType: !1460, size: 32, offset: 5120)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 22, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !551, line: 28, baseType: !224)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1223, file: !1224, line: 836, baseType: !1460, size: 32, offset: 5152)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1223, file: !1224, line: 840, baseType: !119, size: 64, offset: 5184)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1223, file: !1224, line: 849, baseType: !1222, size: 64, offset: 5248)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1223, file: !1224, line: 852, baseType: !1222, size: 64, offset: 5312)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1223, file: !1224, line: 857, baseType: !121, size: 128, offset: 5376)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1223, file: !1224, line: 858, baseType: !121, size: 128, offset: 5504)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1223, file: !1224, line: 859, baseType: !1222, size: 64, offset: 5632)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1223, file: !1224, line: 867, baseType: !121, size: 128, offset: 5696)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1223, file: !1224, line: 868, baseType: !121, size: 128, offset: 5824)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1223, file: !1224, line: 871, baseType: !1472, size: 64, offset: 5952)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1480, !1481, !1488, !1489}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1473, file: !46, line: 61, baseType: !1236, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1473, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1473, file: !46, line: 63, baseType: !159, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1473, file: !46, line: 65, baseType: !1479, size: 256, offset: 64)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 256, elements: !1185)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1473, file: !46, line: 66, baseType: !752, size: 64, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1473, file: !46, line: 68, baseType: !1482, size: 128, offset: 384)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1483, line: 40, baseType: !1484)
!1483 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1483, line: 36, size: 128, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1484, file: !1483, line: 37, baseType: !159)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1484, file: !1483, line: 38, baseType: !121, size: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1473, file: !46, line: 69, baseType: !477, size: 128, align: 64, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1473, file: !46, line: 70, baseType: !1490, size: 128, offset: 640)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1491, size: 128, elements: !325)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1491, file: !46, line: 55, baseType: !224, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1491, file: !46, line: 56, baseType: !1495, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1223, file: !1224, line: 872, baseType: !1498, size: 512, offset: 6016)
!1498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 512, elements: !1185)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1223, file: !1224, line: 873, baseType: !121, size: 128, offset: 6528)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1223, file: !1224, line: 874, baseType: !121, size: 128, offset: 6656)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1223, file: !1224, line: 876, baseType: !1502, size: 64, offset: 6784)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1504, line: 26, size: 192, elements: !1505)
!1504 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1503, file: !1504, line: 27, baseType: !7, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1503, file: !1504, line: 28, baseType: !1508, size: 128, offset: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1509, line: 43, size: 128, elements: !1510)
!1509 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1508, file: !1509, line: 44, baseType: !892)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1508, file: !1509, line: 45, baseType: !121, size: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1223, file: !1224, line: 879, baseType: !824, size: 64, offset: 6848)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1223, file: !1224, line: 882, baseType: !824, size: 64, offset: 6912)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1223, file: !1224, line: 884, baseType: !530, size: 64, offset: 6976)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1223, file: !1224, line: 885, baseType: !530, size: 64, offset: 7040)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1223, file: !1224, line: 890, baseType: !530, size: 64, offset: 7104)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1223, file: !1224, line: 891, baseType: !1519, size: 128, offset: 7168)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1224, line: 242, size: 128, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1519, file: !1224, line: 244, baseType: !530, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1519, file: !1224, line: 245, baseType: !530, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1224, line: 246, baseType: !892, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1223, file: !1224, line: 900, baseType: !119, size: 64, offset: 7296)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1223, file: !1224, line: 901, baseType: !119, size: 64, offset: 7360)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1223, file: !1224, line: 904, baseType: !530, size: 64, offset: 7424)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1223, file: !1224, line: 907, baseType: !530, size: 64, offset: 7488)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1223, file: !1224, line: 910, baseType: !119, size: 64, offset: 7552)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1223, file: !1224, line: 911, baseType: !119, size: 64, offset: 7616)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1223, file: !1224, line: 914, baseType: !1531, size: 640, offset: 7680)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1532, line: 123, size: 640, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534, !1540, !1541}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1531, file: !1532, line: 124, baseType: !1535, size: 576)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 576, elements: !768)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1532, line: 108, size: 192, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1536, file: !1532, line: 109, baseType: !530, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1536, file: !1532, line: 110, baseType: !1349, size: 128, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1531, file: !1532, line: 125, baseType: !7, size: 32, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1531, file: !1532, line: 126, baseType: !7, size: 32, offset: 608)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1223, file: !1224, line: 917, baseType: !1543, size: 192, offset: 8320)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1532, line: 134, size: 192, elements: !1544)
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1543, file: !1532, line: 135, baseType: !477, size: 128, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1543, file: !1532, line: 136, baseType: !7, size: 32, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1223, file: !1224, line: 923, baseType: !1548, size: 64, offset: 8512)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1551, line: 111, size: 1280, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1570, !1571, !1572, !1573, !1574, !1575, !1682, !1683, !1684, !1685, !1711, !1714, !1724}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1550, file: !1551, line: 112, baseType: !866, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1550, file: !1551, line: 120, baseType: !544, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1550, file: !1551, line: 121, baseType: !553, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1550, file: !1551, line: 122, baseType: !544, size: 32, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1550, file: !1551, line: 123, baseType: !553, size: 32, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1550, file: !1551, line: 124, baseType: !544, size: 32, offset: 160)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1550, file: !1551, line: 125, baseType: !553, size: 32, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1550, file: !1551, line: 126, baseType: !544, size: 32, offset: 224)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1550, file: !1551, line: 127, baseType: !553, size: 32, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1550, file: !1551, line: 128, baseType: !7, size: 32, offset: 288)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1550, file: !1551, line: 129, baseType: !1564, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1565, line: 26, baseType: !1566)
!1565 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1565, line: 24, size: 64, elements: !1567)
!1567 = !{!1568}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1566, file: !1565, line: 25, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !339)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1550, file: !1551, line: 130, baseType: !1564, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1550, file: !1551, line: 131, baseType: !1564, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1550, file: !1551, line: 132, baseType: !1564, size: 64, offset: 512)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1550, file: !1551, line: 133, baseType: !1564, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1550, file: !1551, line: 135, baseType: !193, size: 8, offset: 640)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1550, file: !1551, line: 137, baseType: !1576, size: 64, offset: 704)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1578, line: 189, size: 1664, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581, !1584, !1589, !1590, !1593, !1594, !1599, !1600, !1601, !1602, !1604, !1605, !1606, !1607, !1608, !1646, !1667}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1577, file: !1578, line: 190, baseType: !1236, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1577, file: !1578, line: 191, baseType: !1582, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1578, line: 28, baseType: !1583)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !103, line: 98, baseType: !1446)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1578, line: 192, baseType: !1585, size: 192, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !1578, line: 192, size: 192, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1585, file: !1578, line: 193, baseType: !121, size: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1585, file: !1578, line: 194, baseType: !879, size: 192, align: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1577, file: !1578, line: 199, baseType: !886, size: 256, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1577, file: !1578, line: 200, baseType: !1591, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1578, line: 200, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1577, file: !1578, line: 201, baseType: !104, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1578, line: 202, baseType: !1595, size: 64, offset: 640)
!1595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !1578, line: 202, size: 64, elements: !1596)
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1595, file: !1578, line: 203, baseType: !647, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1595, file: !1578, line: 204, baseType: !647, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1577, file: !1578, line: 206, baseType: !647, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1577, file: !1578, line: 207, baseType: !544, size: 32, offset: 768)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1577, file: !1578, line: 208, baseType: !553, size: 32, offset: 800)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1577, file: !1578, line: 209, baseType: !1603, size: 32, offset: 832)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1578, line: 31, baseType: !667)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1577, file: !1578, line: 210, baseType: !101, size: 16, offset: 864)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1577, file: !1578, line: 211, baseType: !101, size: 16, offset: 880)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1577, file: !1578, line: 215, baseType: !280, size: 16, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1577, file: !1578, line: 222, baseType: !119, size: 64, offset: 960)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1578, line: 239, baseType: !1609, size: 320, offset: 1024)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !1578, line: 239, size: 320, elements: !1610)
!1610 = !{!1611, !1638}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1609, file: !1578, line: 240, baseType: !1612, size: 320)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1578, line: 108, size: 320, elements: !1613)
!1613 = !{!1614, !1615, !1627, !1630, !1637}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1612, file: !1578, line: 110, baseType: !119, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1578, line: 111, baseType: !1616, size: 64, offset: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1612, file: !1578, line: 111, size: 64, elements: !1617)
!1617 = !{!1618, !1626}
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1578, line: 112, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !1578, line: 112, size: 64, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1619, file: !1578, line: 114, baseType: !451, size: 16)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1619, file: !1578, line: 115, baseType: !1623, size: 48, offset: 16)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 48, elements: !1624)
!1624 = !{!1625}
!1625 = !DISubrange(count: 6)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1616, file: !1578, line: 121, baseType: !119, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1612, file: !1578, line: 123, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1578, line: 96, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1612, file: !1578, line: 124, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1578, line: 102, size: 192, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1632, file: !1578, line: 103, baseType: !477, size: 128, align: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1632, file: !1578, line: 104, baseType: !1236, size: 32, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1632, file: !1578, line: 105, baseType: !209, size: 8, offset: 160)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1612, file: !1578, line: 125, baseType: !310, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !1578, line: 241, baseType: !1639, size: 320)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !1578, line: 241, size: 320, elements: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1639, file: !1578, line: 242, baseType: !119, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1639, file: !1578, line: 243, baseType: !119, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1639, file: !1578, line: 244, baseType: !1628, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1639, file: !1578, line: 245, baseType: !1631, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1639, file: !1578, line: 246, baseType: !596, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1577, file: !1578, line: 254, baseType: !1647, size: 256, offset: 1344)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1577, file: !1578, line: 254, size: 256, elements: !1648)
!1648 = !{!1649, !1655}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1647, file: !1578, line: 255, baseType: !1650, size: 256)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1578, line: 128, size: 256, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1650, file: !1578, line: 129, baseType: !104, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1650, file: !1578, line: 130, baseType: !1654, size: 256)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !1185)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !1578, line: 256, baseType: !1656, size: 256)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1647, file: !1578, line: 256, size: 256, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1656, file: !1578, line: 258, baseType: !121, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1656, file: !1578, line: 259, baseType: !1660, size: 128, offset: 128)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1661, line: 22, size: 128, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663, !1666}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1660, file: !1661, line: 23, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1661, line: 23, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1660, file: !1661, line: 24, baseType: !119, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1577, file: !1578, line: 274, baseType: !1668, size: 64, offset: 1600)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1578, line: 170, size: 192, elements: !1670)
!1670 = !{!1671, !1680, !1681}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1669, file: !1578, line: 171, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1578, line: 165, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!224, !1576, !1676, !1678, !1576}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1669, file: !1578, line: 172, baseType: !1576, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1669, file: !1578, line: 173, baseType: !1628, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1550, file: !1551, line: 138, baseType: !1576, size: 64, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1550, file: !1551, line: 139, baseType: !1576, size: 64, offset: 832)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1550, file: !1551, line: 140, baseType: !1576, size: 64, offset: 896)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1550, file: !1551, line: 145, baseType: !1686, size: 64, offset: 960)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1688, line: 13, size: 896, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1687, file: !1688, line: 14, baseType: !1236, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1687, file: !1688, line: 15, baseType: !866, size: 32, offset: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1687, file: !1688, line: 16, baseType: !866, size: 32, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1687, file: !1688, line: 21, baseType: !148, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1687, file: !1688, line: 27, baseType: !119, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1687, file: !1688, line: 28, baseType: !119, size: 64, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1687, file: !1688, line: 29, baseType: !148, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1687, file: !1688, line: 32, baseType: !756, size: 128, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1687, file: !1688, line: 33, baseType: !544, size: 32, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1687, file: !1688, line: 37, baseType: !148, size: 64, offset: 576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1687, file: !1688, line: 44, baseType: !1701, size: 256, offset: 640)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1702, line: 15, size: 256, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1701, file: !1702, line: 16, baseType: !892)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1701, file: !1702, line: 18, baseType: !224, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1701, file: !1702, line: 19, baseType: !224, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1701, file: !1702, line: 20, baseType: !224, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1701, file: !1702, line: 21, baseType: !224, size: 32, offset: 96)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1701, file: !1702, line: 22, baseType: !119, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1701, file: !1702, line: 23, baseType: !119, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1550, file: !1551, line: 146, baseType: !1712, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !842, line: 516, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1550, file: !1551, line: 147, baseType: !1715, size: 64, offset: 1088)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1551, line: 25, size: 64, elements: !1717)
!1717 = !{!1718, !1719, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1716, file: !1551, line: 26, baseType: !866, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1716, file: !1551, line: 27, baseType: !224, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1716, file: !1551, line: 28, baseType: !1721, offset: 64)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1550, file: !1551, line: 149, baseType: !1725, size: 128, offset: 1152)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1550, file: !1551, line: 149, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1725, file: !1551, line: 150, baseType: !224, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1725, file: !1551, line: 151, baseType: !477, size: 128, align: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1223, file: !1224, line: 926, baseType: !1548, size: 64, offset: 8576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1223, file: !1224, line: 929, baseType: !1548, size: 64, offset: 8640)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1223, file: !1224, line: 933, baseType: !1576, size: 64, offset: 8704)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1223, file: !1224, line: 943, baseType: !1733, size: 128, offset: 8768)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 128, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 16)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1223, file: !1224, line: 945, baseType: !1737, size: 64, offset: 8896)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1224, line: 49, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1223, file: !1224, line: 956, baseType: !1740, size: 64, offset: 8960)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1224, line: 45, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1223, file: !1224, line: 959, baseType: !1743, size: 64, offset: 9024)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1224, line: 959, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1223, file: !1224, line: 962, baseType: !1746, size: 64, offset: 9088)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1224, line: 66, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1223, file: !1224, line: 966, baseType: !1749, size: 64, offset: 9152)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1224, line: 50, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1223, file: !1224, line: 969, baseType: !1752, size: 64, offset: 9216)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1754, line: 82, size: 7296, elements: !1755)
!1754 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1755 = !{!1756, !1757, !1758, !1759, !1760, !1761, !1762, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1791, !1800, !1801, !1803, !1804, !1805, !1808, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1838, !1839, !1846, !1847, !1848, !1849, !1850, !1851}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1753, file: !1754, line: 83, baseType: !1236, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1753, file: !1754, line: 84, baseType: !866, size: 32, offset: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1753, file: !1754, line: 85, baseType: !224, size: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1753, file: !1754, line: 86, baseType: !121, size: 128, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1753, file: !1754, line: 88, baseType: !1482, size: 128, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1753, file: !1754, line: 91, baseType: !1222, size: 64, offset: 384)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1753, file: !1754, line: 94, baseType: !1763, size: 192, offset: 448)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1764, line: 30, size: 192, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1763, file: !1764, line: 31, baseType: !121, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1763, file: !1764, line: 32, baseType: !1768, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1769, line: 25, baseType: !1770)
!1769 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1769, line: 23, size: 64, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1770, file: !1769, line: 24, baseType: !324, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1753, file: !1754, line: 97, baseType: !752, size: 64, offset: 640)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1753, file: !1754, line: 100, baseType: !224, size: 32, offset: 704)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1753, file: !1754, line: 106, baseType: !224, size: 32, offset: 736)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1753, file: !1754, line: 107, baseType: !1222, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1753, file: !1754, line: 110, baseType: !224, size: 32, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1753, file: !1754, line: 111, baseType: !7, size: 32, offset: 864)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1753, file: !1754, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1753, file: !1754, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1753, file: !1754, line: 128, baseType: !224, size: 32, offset: 928)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1753, file: !1754, line: 129, baseType: !121, size: 128, offset: 960)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1753, file: !1754, line: 132, baseType: !1298, size: 512, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1753, file: !1754, line: 133, baseType: !1306, size: 64, offset: 1600)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1753, file: !1754, line: 140, baseType: !1786, size: 256, offset: 1664)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1787, size: 256, elements: !339)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1754, line: 38, size: 128, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1787, file: !1754, line: 39, baseType: !530, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1787, file: !1754, line: 40, baseType: !530, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1753, file: !1754, line: 146, baseType: !1792, size: 192, offset: 1920)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1754, line: 66, size: 192, elements: !1793)
!1793 = !{!1794}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1792, file: !1754, line: 67, baseType: !1795, size: 192)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1754, line: 47, size: 192, elements: !1796)
!1796 = !{!1797, !1798, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1795, file: !1754, line: 48, baseType: !150, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1795, file: !1754, line: 49, baseType: !150, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1795, file: !1754, line: 50, baseType: !150, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1753, file: !1754, line: 150, baseType: !1531, size: 640, offset: 2112)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1753, file: !1754, line: 153, baseType: !1802, size: 256, offset: 2752)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 256, elements: !1185)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1753, file: !1754, line: 159, baseType: !1472, size: 64, offset: 3008)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1753, file: !1754, line: 162, baseType: !224, size: 32, offset: 3072)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1753, file: !1754, line: 164, baseType: !1806, size: 64, offset: 3136)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1754, line: 164, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1753, file: !1754, line: 175, baseType: !1809, size: 32, offset: 3200)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !500, line: 805, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !500, line: 798, size: 32, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1810, file: !500, line: 803, baseType: !499, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1810, file: !500, line: 804, baseType: !159, offset: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1753, file: !1754, line: 176, baseType: !530, size: 64, offset: 3264)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1753, file: !1754, line: 176, baseType: !530, size: 64, offset: 3328)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1753, file: !1754, line: 176, baseType: !530, size: 64, offset: 3392)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1753, file: !1754, line: 176, baseType: !530, size: 64, offset: 3456)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1753, file: !1754, line: 177, baseType: !530, size: 64, offset: 3520)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1753, file: !1754, line: 178, baseType: !530, size: 64, offset: 3584)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1753, file: !1754, line: 179, baseType: !1519, size: 128, offset: 3648)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1753, file: !1754, line: 180, baseType: !119, size: 64, offset: 3776)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1753, file: !1754, line: 180, baseType: !119, size: 64, offset: 3840)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1753, file: !1754, line: 180, baseType: !119, size: 64, offset: 3904)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1753, file: !1754, line: 180, baseType: !119, size: 64, offset: 3968)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1753, file: !1754, line: 181, baseType: !119, size: 64, offset: 4032)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1753, file: !1754, line: 181, baseType: !119, size: 64, offset: 4096)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1753, file: !1754, line: 181, baseType: !119, size: 64, offset: 4160)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1753, file: !1754, line: 181, baseType: !119, size: 64, offset: 4224)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1753, file: !1754, line: 182, baseType: !119, size: 64, offset: 4288)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1753, file: !1754, line: 182, baseType: !119, size: 64, offset: 4352)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1753, file: !1754, line: 182, baseType: !119, size: 64, offset: 4416)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1753, file: !1754, line: 182, baseType: !119, size: 64, offset: 4480)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1753, file: !1754, line: 183, baseType: !119, size: 64, offset: 4544)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1753, file: !1754, line: 183, baseType: !119, size: 64, offset: 4608)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1753, file: !1754, line: 184, baseType: !1836, offset: 4672)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1837, line: 12, elements: !173)
!1837 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1753, file: !1754, line: 192, baseType: !532, size: 64, offset: 4672)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1753, file: !1754, line: 203, baseType: !1840, size: 2048, offset: 4736)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1841, size: 2048, elements: !1734)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1842, line: 43, size: 128, elements: !1843)
!1842 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1841, file: !1842, line: 44, baseType: !691, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1841, file: !1842, line: 45, baseType: !691, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1753, file: !1754, line: 220, baseType: !209, size: 8, offset: 6784)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1753, file: !1754, line: 221, baseType: !280, size: 16, offset: 6800)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1753, file: !1754, line: 222, baseType: !280, size: 16, offset: 6816)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1753, file: !1754, line: 224, baseType: !1084, size: 64, offset: 6848)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1753, file: !1754, line: 227, baseType: !144, size: 192, offset: 6912)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1753, file: !1754, line: 233, baseType: !144, size: 192, offset: 7104)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1223, file: !1224, line: 970, baseType: !1853, size: 64, offset: 9280)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1754, line: 20, size: 16576, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1854, file: !1754, line: 21, baseType: !159)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1854, file: !1754, line: 22, baseType: !1236, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1854, file: !1754, line: 23, baseType: !1482, size: 128, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1854, file: !1754, line: 24, baseType: !1860, size: 16384, offset: 192)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1861, size: 16384, elements: !1881)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1764, line: 49, size: 256, elements: !1862)
!1862 = !{!1863}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1861, file: !1764, line: 50, baseType: !1864, size: 256)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1764, line: 35, size: 256, elements: !1865)
!1865 = !{!1866, !1873, !1874, !1880}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1864, file: !1764, line: 37, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1868, line: 19, baseType: !1869)
!1868 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1868, line: 18, baseType: !1871)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{null, !224}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1864, file: !1764, line: 38, baseType: !119, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1864, file: !1764, line: 44, baseType: !1875, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1868, line: 22, baseType: !1876)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1868, line: 21, baseType: !1878)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1864, file: !1764, line: 46, baseType: !1768, size: 64, offset: 192)
!1881 = !{!1882}
!1882 = !DISubrange(count: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1223, file: !1224, line: 971, baseType: !1768, size: 64, offset: 9344)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1223, file: !1224, line: 972, baseType: !1768, size: 64, offset: 9408)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1223, file: !1224, line: 974, baseType: !1768, size: 64, offset: 9472)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1223, file: !1224, line: 975, baseType: !1763, size: 192, offset: 9536)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1223, file: !1224, line: 976, baseType: !119, size: 64, offset: 9728)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1223, file: !1224, line: 977, baseType: !689, size: 64, offset: 9792)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1223, file: !1224, line: 978, baseType: !7, size: 32, offset: 9856)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1223, file: !1224, line: 980, baseType: !480, size: 64, offset: 9920)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1223, file: !1224, line: 989, baseType: !1892, size: 128, offset: 9984)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1893, line: 35, size: 128, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1894 = !{!1895, !1896, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1892, file: !1893, line: 36, baseType: !224, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1892, file: !1893, line: 37, baseType: !866, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1892, file: !1893, line: 38, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1893, line: 23, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1223, file: !1224, line: 992, baseType: !530, size: 64, offset: 10112)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1223, file: !1224, line: 993, baseType: !530, size: 64, offset: 10176)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1223, file: !1224, line: 996, baseType: !159, offset: 10240)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1223, file: !1224, line: 999, baseType: !892, offset: 10240)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1223, file: !1224, line: 1001, baseType: !1905, size: 64, offset: 10240)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1224, line: 636, size: 64, elements: !1906)
!1906 = !{!1907}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1905, file: !1224, line: 637, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1223, file: !1224, line: 1005, baseType: !871, size: 128, offset: 10304)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1223, file: !1224, line: 1007, baseType: !1222, size: 64, offset: 10432)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1223, file: !1224, line: 1009, baseType: !1912, size: 64, offset: 10496)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1224, line: 1009, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1223, file: !1224, line: 1043, baseType: !104, size: 64, offset: 10560)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1223, file: !1224, line: 1046, baseType: !1916, size: 64, offset: 10624)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1224, line: 41, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1223, file: !1224, line: 1050, baseType: !1919, size: 64, offset: 10688)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1224, line: 42, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1223, file: !1224, line: 1054, baseType: !1922, size: 64, offset: 10752)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1224, line: 55, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1223, file: !1224, line: 1056, baseType: !1925, size: 64, offset: 10816)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1224, line: 40, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1223, file: !1224, line: 1058, baseType: !1928, size: 64, offset: 10880)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1930, line: 99, size: 704, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938, !1957, !1958}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1929, file: !1930, line: 100, baseType: !148, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1929, file: !1930, line: 101, baseType: !866, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1929, file: !1930, line: 102, baseType: !866, size: 32, offset: 96)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1929, file: !1930, line: 105, baseType: !159, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1929, file: !1930, line: 107, baseType: !101, size: 16, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1929, file: !1930, line: 109, baseType: !858, size: 128, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1929, file: !1930, line: 110, baseType: !1939, size: 64, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1930, line: 73, size: 448, elements: !1941)
!1941 = !{!1942, !1945, !1946, !1951, !1956}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1940, file: !1930, line: 74, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1930, line: 74, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1940, file: !1930, line: 75, baseType: !1928, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1930, line: 83, baseType: !1947, size: 128, offset: 128)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !1930, line: 83, size: 128, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1947, file: !1930, line: 84, baseType: !121, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1947, file: !1930, line: 85, baseType: !1045, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1940, file: !1930, line: 87, baseType: !1952, size: 128, offset: 256)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1940, file: !1930, line: 87, size: 128, elements: !1953)
!1953 = !{!1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1952, file: !1930, line: 88, baseType: !756, size: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1952, file: !1930, line: 89, baseType: !477, size: 128, align: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !1930, line: 92, baseType: !7, size: 32, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1929, file: !1930, line: 111, baseType: !752, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1929, file: !1930, line: 113, baseType: !1959, size: 256, offset: 448)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1960, line: 102, size: 256, elements: !1961)
!1960 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1961 = !{!1962, !1963, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1959, file: !1960, line: 103, baseType: !148, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1959, file: !1960, line: 104, baseType: !121, size: 128, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1959, file: !1960, line: 105, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1960, line: 21, baseType: !1966)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{null, !1969}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1223, file: !1224, line: 1061, baseType: !1971, size: 64, offset: 10944)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1224, line: 43, flags: DIFlagFwdDecl)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1223, file: !1224, line: 1064, baseType: !119, size: 64, offset: 11008)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1223, file: !1224, line: 1065, baseType: !1975, size: 64, offset: 11072)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1764, line: 14, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1764, line: 12, size: 384, elements: !1978)
!1978 = !{!1979}
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1977, file: !1764, line: 13, baseType: !1980, size: 384)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1977, file: !1764, line: 13, size: 384, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1980, file: !1764, line: 13, baseType: !224, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1980, file: !1764, line: 13, baseType: !224, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1980, file: !1764, line: 13, baseType: !224, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1980, file: !1764, line: 13, baseType: !1986, size: 256, offset: 128)
!1986 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1987, line: 32, size: 256, elements: !1988)
!1987 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1994, !2007, !2013, !2022, !2042, !2047}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1986, file: !1987, line: 37, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1987, line: 34, size: 64, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1990, file: !1987, line: 35, baseType: !1461, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1990, file: !1987, line: 36, baseType: !550, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1986, file: !1987, line: 45, baseType: !1995, size: 192)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1987, line: 40, size: 192, elements: !1996)
!1996 = !{!1997, !1999, !2000, !2006}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1995, file: !1987, line: 41, baseType: !1998, size: 32)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !551, line: 95, baseType: !224)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1995, file: !1987, line: 42, baseType: !224, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1995, file: !1987, line: 43, baseType: !2001, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1987, line: 11, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1987, line: 8, size: 64, elements: !2003)
!2003 = !{!2004, !2005}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2002, file: !1987, line: 9, baseType: !224, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2002, file: !1987, line: 10, baseType: !104, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1995, file: !1987, line: 44, baseType: !224, size: 32, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1986, file: !1987, line: 52, baseType: !2008, size: 128)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1987, line: 48, size: 128, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2008, file: !1987, line: 49, baseType: !1461, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2008, file: !1987, line: 50, baseType: !550, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2008, file: !1987, line: 51, baseType: !2001, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1986, file: !1987, line: 61, baseType: !2014, size: 256)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1987, line: 55, size: 256, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2019, !2021}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2014, file: !1987, line: 56, baseType: !1461, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2014, file: !1987, line: 57, baseType: !550, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2014, file: !1987, line: 58, baseType: !224, size: 32, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2014, file: !1987, line: 59, baseType: !2020, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !551, line: 94, baseType: !688)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2014, file: !1987, line: 60, baseType: !2020, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1986, file: !1987, line: 95, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1987, line: 64, size: 256, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2023, file: !1987, line: 65, baseType: !104, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, scope: !2023, file: !1987, line: 77, baseType: !2027, size: 192, offset: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2023, file: !1987, line: 77, size: 192, elements: !2028)
!2028 = !{!2029, !2030, !2037}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2027, file: !1987, line: 82, baseType: !280, size: 16)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2027, file: !1987, line: 88, baseType: !2031, size: 192)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2027, file: !1987, line: 84, size: 192, elements: !2032)
!2032 = !{!2033, !2035, !2036}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2031, file: !1987, line: 85, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 64, elements: !1336)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2031, file: !1987, line: 86, baseType: !104, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2031, file: !1987, line: 87, baseType: !104, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2027, file: !1987, line: 93, baseType: !2038, size: 96)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2027, file: !1987, line: 90, size: 96, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2038, file: !1987, line: 91, baseType: !2034, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2038, file: !1987, line: 92, baseType: !115, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1986, file: !1987, line: 101, baseType: !2043, size: 128)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1987, line: 98, size: 128, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2043, file: !1987, line: 99, baseType: !649, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2043, file: !1987, line: 100, baseType: !224, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1986, file: !1987, line: 108, baseType: !2048, size: 128)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1986, file: !1987, line: 104, size: 128, elements: !2049)
!2049 = !{!2050, !2051, !2052}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2048, file: !1987, line: 105, baseType: !104, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2048, file: !1987, line: 106, baseType: !224, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2048, file: !1987, line: 107, baseType: !7, size: 32, offset: 96)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1223, file: !1224, line: 1067, baseType: !1836, offset: 11136)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1223, file: !1224, line: 1099, baseType: !2055, size: 64, offset: 11136)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1224, line: 56, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1223, file: !1224, line: 1103, baseType: !121, size: 128, offset: 11200)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1223, file: !1224, line: 1104, baseType: !2059, size: 64, offset: 11328)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1224, line: 46, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1223, file: !1224, line: 1105, baseType: !144, size: 192, offset: 11392)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1223, file: !1224, line: 1106, baseType: !7, size: 32, offset: 11584)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1223, file: !1224, line: 1109, baseType: !2064, size: 128, offset: 11648)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2065, size: 128, elements: !339)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1224, line: 51, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1223, file: !1224, line: 1110, baseType: !144, size: 192, offset: 11776)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1223, file: !1224, line: 1111, baseType: !121, size: 128, offset: 11968)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1223, file: !1224, line: 1173, baseType: !2070, size: 64, offset: 12096)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2072, line: 62, size: 256, align: 256, elements: !2073)
!2072 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2073 = !{!2074, !2075, !2076, !2081}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2071, file: !2072, line: 75, baseType: !115, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2071, file: !2072, line: 90, baseType: !115, size: 32, offset: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2071, file: !2072, line: 124, baseType: !2077, size: 64, offset: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2071, file: !2072, line: 109, size: 64, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2077, file: !2072, line: 110, baseType: !531, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2077, file: !2072, line: 112, baseType: !531, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2071, file: !2072, line: 144, baseType: !115, size: 32, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1223, file: !1224, line: 1174, baseType: !527, size: 32, offset: 12160)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1223, file: !1224, line: 1179, baseType: !119, size: 64, offset: 12224)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1223, file: !1224, line: 1182, baseType: !2085, size: 128, offset: 12288)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1181, line: 76, size: 128, elements: !2086)
!2086 = !{!2087, !2092, !2093}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2085, file: !1181, line: 85, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2089, line: 7, size: 64, elements: !2090)
!2089 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2090 = !{!2091}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2088, file: !2089, line: 12, baseType: !1372, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2085, file: !1181, line: 88, baseType: !209, size: 8, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2085, file: !1181, line: 95, baseType: !209, size: 8, offset: 72)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1224, line: 1184, baseType: !2095, size: 128, offset: 12416)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1224, line: 1184, size: 128, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2095, file: !1224, line: 1185, baseType: !1236, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2095, file: !1224, line: 1186, baseType: !477, size: 128, align: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1223, file: !1224, line: 1190, baseType: !2100, size: 64, offset: 12544)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1224, line: 53, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1223, file: !1224, line: 1192, baseType: !2103, size: 128, offset: 12608)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1181, line: 64, size: 128, elements: !2104)
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2103, file: !1181, line: 65, baseType: !840, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2103, file: !1181, line: 67, baseType: !115, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2103, file: !1181, line: 68, baseType: !115, size: 32, offset: 96)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1223, file: !1224, line: 1206, baseType: !224, size: 32, offset: 12736)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1223, file: !1224, line: 1207, baseType: !224, size: 32, offset: 12768)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1223, file: !1224, line: 1209, baseType: !119, size: 64, offset: 12800)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1223, file: !1224, line: 1219, baseType: !530, size: 64, offset: 12864)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1223, file: !1224, line: 1220, baseType: !530, size: 64, offset: 12928)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1223, file: !1224, line: 1317, baseType: !224, size: 32, offset: 12992)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1223, file: !1224, line: 1319, baseType: !1222, size: 64, offset: 13056)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1223, file: !1224, line: 1322, baseType: !2116, size: 64, offset: 13120)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2118, line: 9, flags: DIFlagFwdDecl)
!2118 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1223, file: !1224, line: 1326, baseType: !1236, size: 32, offset: 13184)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1223, file: !1224, line: 1342, baseType: !104, size: 64, offset: 13248)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1223, file: !1224, line: 1343, baseType: !531, size: 64, offset: 13312)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1223, file: !1224, line: 1344, baseType: !530, size: 64, offset: 13376)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1223, file: !1224, line: 1345, baseType: !531, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1223, file: !1224, line: 1346, baseType: !531, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1223, file: !1224, line: 1347, baseType: !531, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1223, file: !1224, line: 1348, baseType: !477, size: 128, align: 64, offset: 13504)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1223, file: !1224, line: 1358, baseType: !2128, size: 34816, offset: 13824)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2129, line: 485, size: 34816, elements: !2130)
!2129 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2130 = !{!2131, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2160, !2161, !2162, !2163, !2164, !2165, !2168, !2169, !2170}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2128, file: !2129, line: 487, baseType: !2132, size: 192)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2133, size: 192, elements: !768)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2134, line: 16, size: 64, elements: !2135)
!2134 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2133, file: !2134, line: 17, baseType: !451, size: 16)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2133, file: !2134, line: 18, baseType: !451, size: 16, offset: 16)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2133, file: !2134, line: 19, baseType: !451, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2133, file: !2134, line: 19, baseType: !451, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2133, file: !2134, line: 19, baseType: !451, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2133, file: !2134, line: 19, baseType: !451, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2133, file: !2134, line: 19, baseType: !451, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2133, file: !2134, line: 20, baseType: !451, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2133, file: !2134, line: 20, baseType: !451, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2133, file: !2134, line: 20, baseType: !451, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2133, file: !2134, line: 20, baseType: !451, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2133, file: !2134, line: 20, baseType: !451, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2133, file: !2134, line: 20, baseType: !451, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2128, file: !2129, line: 491, baseType: !119, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2128, file: !2129, line: 495, baseType: !101, size: 16, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2128, file: !2129, line: 496, baseType: !101, size: 16, offset: 272)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2128, file: !2129, line: 497, baseType: !101, size: 16, offset: 288)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2128, file: !2129, line: 498, baseType: !101, size: 16, offset: 304)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2128, file: !2129, line: 502, baseType: !119, size: 64, offset: 320)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2128, file: !2129, line: 503, baseType: !119, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2128, file: !2129, line: 514, baseType: !2157, size: 256, offset: 448)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2158, size: 256, elements: !1185)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2129, line: 483, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2128, file: !2129, line: 516, baseType: !119, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2128, file: !2129, line: 518, baseType: !119, size: 64, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2128, file: !2129, line: 520, baseType: !119, size: 64, offset: 832)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2128, file: !2129, line: 521, baseType: !119, size: 64, offset: 896)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2128, file: !2129, line: 522, baseType: !119, size: 64, offset: 960)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2128, file: !2129, line: 528, baseType: !2166, size: 64, offset: 1024)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2129, line: 10, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2128, file: !2129, line: 535, baseType: !119, size: 64, offset: 1088)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2128, file: !2129, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2128, file: !2129, line: 540, baseType: !2171, size: 33280, offset: 1536)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2172, line: 317, size: 33280, elements: !2173)
!2172 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2171, file: !2172, line: 330, baseType: !7, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2171, file: !2172, line: 337, baseType: !119, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2171, file: !2172, line: 348, baseType: !2177, size: 32768, offset: 512)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2172, line: 304, size: 32768, elements: !2178)
!2178 = !{!2179, !2194, !2229, !2279, !2292}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2177, file: !2172, line: 305, baseType: !2180, size: 896)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2172, line: 12, size: 896, elements: !2181)
!2181 = !{!2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2193}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2180, file: !2172, line: 13, baseType: !527, size: 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2180, file: !2172, line: 14, baseType: !527, size: 32, offset: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2180, file: !2172, line: 15, baseType: !527, size: 32, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2180, file: !2172, line: 16, baseType: !527, size: 32, offset: 96)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2180, file: !2172, line: 17, baseType: !527, size: 32, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2180, file: !2172, line: 18, baseType: !527, size: 32, offset: 160)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2180, file: !2172, line: 19, baseType: !527, size: 32, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2180, file: !2172, line: 22, baseType: !2190, size: 640, offset: 224)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 640, elements: !2191)
!2191 = !{!2192}
!2192 = !DISubrange(count: 20)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2180, file: !2172, line: 25, baseType: !527, size: 32, offset: 864)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2177, file: !2172, line: 306, baseType: !2195, size: 4096, align: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2172, line: 34, size: 4096, align: 128, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2216, !2217, !2218, !2220, !2222, !2224}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2195, file: !2172, line: 35, baseType: !451, size: 16)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2195, file: !2172, line: 36, baseType: !451, size: 16, offset: 16)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2195, file: !2172, line: 37, baseType: !451, size: 16, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2195, file: !2172, line: 38, baseType: !451, size: 16, offset: 48)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !2172, line: 39, baseType: !2202, size: 128, offset: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2195, file: !2172, line: 39, size: 128, elements: !2203)
!2203 = !{!2204, !2209}
!2204 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2172, line: 40, baseType: !2205, size: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !2172, line: 40, size: 128, elements: !2206)
!2206 = !{!2207, !2208}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2205, file: !2172, line: 41, baseType: !530, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2205, file: !2172, line: 42, baseType: !530, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2172, line: 44, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2202, file: !2172, line: 44, size: 128, elements: !2211)
!2211 = !{!2212, !2213, !2214, !2215}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2210, file: !2172, line: 45, baseType: !527, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2210, file: !2172, line: 46, baseType: !527, size: 32, offset: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2210, file: !2172, line: 47, baseType: !527, size: 32, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2210, file: !2172, line: 48, baseType: !527, size: 32, offset: 96)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2195, file: !2172, line: 51, baseType: !527, size: 32, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2195, file: !2172, line: 52, baseType: !527, size: 32, offset: 224)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2195, file: !2172, line: 55, baseType: !2219, size: 1024, offset: 256)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 1024, elements: !360)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2195, file: !2172, line: 58, baseType: !2221, size: 2048, offset: 1280)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 2048, elements: !1881)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2195, file: !2172, line: 60, baseType: !2223, size: 384, offset: 3328)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 384, elements: !330)
!2224 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !2172, line: 62, baseType: !2225, size: 384, offset: 3712)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2195, file: !2172, line: 62, size: 384, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2225, file: !2172, line: 63, baseType: !2223, size: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2225, file: !2172, line: 64, baseType: !2223, size: 384)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2177, file: !2172, line: 307, baseType: !2230, size: 1088)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2172, line: 79, size: 1088, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2278}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2230, file: !2172, line: 80, baseType: !527, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2230, file: !2172, line: 81, baseType: !527, size: 32, offset: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2230, file: !2172, line: 82, baseType: !527, size: 32, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2230, file: !2172, line: 83, baseType: !527, size: 32, offset: 96)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2230, file: !2172, line: 84, baseType: !527, size: 32, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2230, file: !2172, line: 85, baseType: !527, size: 32, offset: 160)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2230, file: !2172, line: 86, baseType: !527, size: 32, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2230, file: !2172, line: 88, baseType: !2190, size: 640, offset: 224)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2230, file: !2172, line: 89, baseType: !1358, size: 8, offset: 864)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2230, file: !2172, line: 90, baseType: !1358, size: 8, offset: 872)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2230, file: !2172, line: 91, baseType: !1358, size: 8, offset: 880)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2230, file: !2172, line: 92, baseType: !1358, size: 8, offset: 888)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2230, file: !2172, line: 93, baseType: !1358, size: 8, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2230, file: !2172, line: 94, baseType: !1358, size: 8, offset: 904)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2230, file: !2172, line: 95, baseType: !2247, size: 64, offset: 960)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2249, line: 11, size: 128, elements: !2250)
!2249 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2248, file: !2249, line: 12, baseType: !649, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2248, file: !2249, line: 13, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2255, line: 56, size: 1344, elements: !2256)
!2255 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2256 = !{!2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2254, file: !2255, line: 61, baseType: !119, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2254, file: !2255, line: 62, baseType: !119, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2254, file: !2255, line: 63, baseType: !119, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2254, file: !2255, line: 64, baseType: !119, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2254, file: !2255, line: 65, baseType: !119, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2254, file: !2255, line: 66, baseType: !119, size: 64, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2254, file: !2255, line: 68, baseType: !119, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2254, file: !2255, line: 69, baseType: !119, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2254, file: !2255, line: 70, baseType: !119, size: 64, offset: 512)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2254, file: !2255, line: 71, baseType: !119, size: 64, offset: 576)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2254, file: !2255, line: 72, baseType: !119, size: 64, offset: 640)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2254, file: !2255, line: 73, baseType: !119, size: 64, offset: 704)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2254, file: !2255, line: 74, baseType: !119, size: 64, offset: 768)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2254, file: !2255, line: 75, baseType: !119, size: 64, offset: 832)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2254, file: !2255, line: 76, baseType: !119, size: 64, offset: 896)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2254, file: !2255, line: 81, baseType: !119, size: 64, offset: 960)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2254, file: !2255, line: 83, baseType: !119, size: 64, offset: 1024)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2254, file: !2255, line: 84, baseType: !119, size: 64, offset: 1088)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2254, file: !2255, line: 85, baseType: !119, size: 64, offset: 1152)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2254, file: !2255, line: 86, baseType: !119, size: 64, offset: 1216)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2254, file: !2255, line: 87, baseType: !119, size: 64, offset: 1280)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2230, file: !2172, line: 96, baseType: !527, size: 32, offset: 1024)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2177, file: !2172, line: 308, baseType: !2280, size: 4608, align: 512)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2172, line: 289, size: 4608, align: 512, elements: !2281)
!2281 = !{!2282, !2283, !2290}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2280, file: !2172, line: 290, baseType: !2195, size: 4096, align: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2280, file: !2172, line: 291, baseType: !2284, size: 512, offset: 4096)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2172, line: 268, size: 512, elements: !2285)
!2285 = !{!2286, !2287, !2288}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2284, file: !2172, line: 269, baseType: !530, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2284, file: !2172, line: 270, baseType: !530, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2284, file: !2172, line: 271, baseType: !2289, size: 384, offset: 128)
!2289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 384, elements: !1624)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2280, file: !2172, line: 292, baseType: !2291, offset: 4608)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, elements: !1722)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2177, file: !2172, line: 309, baseType: !2293, size: 32768)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 32768, elements: !2294)
!2294 = !{!2295}
!2295 = !DISubrange(count: 4096)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1219, file: !842, line: 378, baseType: !2297, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1215, file: !842, line: 384, baseType: !1503, size: 192, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1088, file: !842, line: 500, baseType: !159, offset: 6656)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1088, file: !842, line: 501, baseType: !2301, size: 64, offset: 6656)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !842, line: 387, flags: DIFlagFwdDecl)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1088, file: !842, line: 516, baseType: !1712, size: 64, offset: 6720)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1088, file: !842, line: 519, baseType: !464, size: 64, offset: 6784)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1088, file: !842, line: 521, baseType: !2306, size: 64, offset: 6848)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !842, line: 521, flags: DIFlagFwdDecl)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1088, file: !842, line: 545, baseType: !866, size: 32, offset: 6912)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1088, file: !842, line: 548, baseType: !209, size: 8, offset: 6944)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1088, file: !842, line: 550, baseType: !2311, offset: 6952)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2312, line: 142, elements: !173)
!2312 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1088, file: !842, line: 554, baseType: !1959, size: 256, offset: 6976)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1088, file: !842, line: 557, baseType: !527, size: 32, offset: 7232)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1085, file: !842, line: 565, baseType: !2316, offset: 7296)
!2316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !2317)
!2317 = !{!2318}
!2318 = !DISubrange(count: -1)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1081, file: !842, line: 151, baseType: !866, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1074, file: !842, line: 156, baseType: !159, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 159, baseType: !2322, size: 128)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 159, size: 128, elements: !2323)
!2323 = !{!2324, !2327}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2322, file: !842, line: 161, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !842, line: 161, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2322, file: !842, line: 162, baseType: !104, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !846, file: !842, line: 176, baseType: !477, size: 128, align: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !842, line: 179, baseType: !2330, size: 32, offset: 384)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !842, line: 179, size: 32, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2335}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2330, file: !842, line: 184, baseType: !866, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2330, file: !842, line: 192, baseType: !7, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2330, file: !842, line: 194, baseType: !7, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2330, file: !842, line: 195, baseType: !224, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !841, file: !842, line: 199, baseType: !866, size: 32, offset: 416)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !776, file: !37, line: 1964, baseType: !2338, size: 64, offset: 1344)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!649, !713, !2341}
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2343, line: 12, size: 256, elements: !2344)
!2343 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2344 = !{!2345, !2346, !2347, !2348, !2349}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2342, file: !2343, line: 13, baseType: !102, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2342, file: !2343, line: 16, baseType: !224, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2342, file: !2343, line: 23, baseType: !119, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2342, file: !2343, line: 30, baseType: !119, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2342, file: !2343, line: 33, baseType: !2350, size: 64, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !842, line: 27, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !776, file: !37, line: 1966, baseType: !2338, size: 64, offset: 1408)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !714, file: !37, line: 1424, baseType: !2354, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2357)
!2357 = !{!2358, !2404, !2408, !2412, !2413, !2414, !2415, !2416, !2421, !2426, !2430}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2356, file: !31, line: 323, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!224, !2362}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2364)
!2364 = !{!2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2389, !2390, !2391}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2363, file: !31, line: 295, baseType: !756, size: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2363, file: !31, line: 296, baseType: !121, size: 128, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2363, file: !31, line: 297, baseType: !121, size: 128, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2363, file: !31, line: 298, baseType: !121, size: 128, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2363, file: !31, line: 299, baseType: !144, size: 192, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2363, file: !31, line: 300, baseType: !159, offset: 704)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2363, file: !31, line: 301, baseType: !866, size: 32, offset: 704)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2363, file: !31, line: 302, baseType: !713, size: 64, offset: 768)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2363, file: !31, line: 303, baseType: !2374, size: 64, offset: 832)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2375)
!2375 = !{!2376, !2388}
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !2374, file: !31, line: 69, baseType: !2377, size: 32)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2374, file: !31, line: 69, size: 32, elements: !2378)
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2377, file: !31, line: 70, baseType: !544, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2377, file: !31, line: 71, baseType: !553, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2377, file: !31, line: 72, baseType: !2382, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2383, line: 24, baseType: !2384)
!2383 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2383, line: 22, size: 32, elements: !2385)
!2385 = !{!2386}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2384, file: !2383, line: 23, baseType: !2387, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2383, line: 20, baseType: !550)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2374, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2363, file: !31, line: 304, baseType: !640, size: 64, offset: 896)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2363, file: !31, line: 305, baseType: !119, size: 64, offset: 960)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2363, file: !31, line: 306, baseType: !2392, size: 576, offset: 1024)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2393)
!2393 = !{!2394, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2392, file: !31, line: 206, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !157)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2392, file: !31, line: 207, baseType: !2395, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2392, file: !31, line: 208, baseType: !2395, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2392, file: !31, line: 209, baseType: !2395, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2392, file: !31, line: 210, baseType: !2395, size: 64, offset: 256)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2392, file: !31, line: 211, baseType: !2395, size: 64, offset: 320)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2392, file: !31, line: 212, baseType: !2395, size: 64, offset: 384)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2392, file: !31, line: 213, baseType: !647, size: 64, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2392, file: !31, line: 214, baseType: !647, size: 64, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2356, file: !31, line: 324, baseType: !2405, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!2362, !713, !224}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2356, file: !31, line: 325, baseType: !2409, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2362}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2356, file: !31, line: 326, baseType: !2359, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2356, file: !31, line: 327, baseType: !2359, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2356, file: !31, line: 328, baseType: !2359, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2356, file: !31, line: 329, baseType: !804, size: 64, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2356, file: !31, line: 332, baseType: !2417, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!2420, !537}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2356, file: !31, line: 333, baseType: !2422, size: 64, offset: 512)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!224, !537, !2425}
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2356, file: !31, line: 335, baseType: !2427, size: 64, offset: 576)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!224, !537, !2420}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2356, file: !31, line: 337, baseType: !2431, size: 64, offset: 640)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!224, !713, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !714, file: !37, line: 1425, baseType: !2436, size: 64, offset: 512)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2439)
!2439 = !{!2440, !2444, !2445, !2449, !2450, !2451, !2466, !2489, !2493, !2494, !2517}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2438, file: !31, line: 429, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!224, !713, !224, !224, !657}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2438, file: !31, line: 430, baseType: !804, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2438, file: !31, line: 431, baseType: !2446, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!224, !713, !7}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2438, file: !31, line: 432, baseType: !2446, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2438, file: !31, line: 433, baseType: !804, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2438, file: !31, line: 434, baseType: !2452, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!224, !713, !224, !2455}
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2456, file: !31, line: 416, baseType: !224, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2456, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2456, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2456, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2456, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2456, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2456, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2456, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2438, file: !31, line: 435, baseType: !2467, size: 64, offset: 384)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!224, !713, !2374, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2472)
!2472 = !{!2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2471, file: !31, line: 344, baseType: !224, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2471, file: !31, line: 345, baseType: !530, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2471, file: !31, line: 346, baseType: !530, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2471, file: !31, line: 347, baseType: !530, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2471, file: !31, line: 348, baseType: !530, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2471, file: !31, line: 349, baseType: !530, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2471, file: !31, line: 350, baseType: !530, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2471, file: !31, line: 351, baseType: !154, size: 64, offset: 448)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2471, file: !31, line: 353, baseType: !154, size: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2471, file: !31, line: 354, baseType: !224, size: 32, offset: 576)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2471, file: !31, line: 355, baseType: !224, size: 32, offset: 608)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2471, file: !31, line: 356, baseType: !530, size: 64, offset: 640)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2471, file: !31, line: 357, baseType: !530, size: 64, offset: 704)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2471, file: !31, line: 358, baseType: !530, size: 64, offset: 768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2471, file: !31, line: 359, baseType: !154, size: 64, offset: 832)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2471, file: !31, line: 360, baseType: !224, size: 32, offset: 896)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2438, file: !31, line: 436, baseType: !2490, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!224, !713, !2434, !2470}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2438, file: !31, line: 438, baseType: !2467, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2438, file: !31, line: 439, baseType: !2495, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!224, !713, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2499, file: !31, line: 410, baseType: !7, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2499, file: !31, line: 411, baseType: !2503, size: 1344, offset: 64)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2504, size: 1344, elements: !768)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2516}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2504, file: !31, line: 396, baseType: !7, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2504, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2504, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2504, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2504, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2504, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2504, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2504, file: !31, line: 404, baseType: !532, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2504, file: !31, line: 405, baseType: !2515, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !103, line: 126, baseType: !530)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2504, file: !31, line: 406, baseType: !2515, size: 64, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2438, file: !31, line: 440, baseType: !2446, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !714, file: !37, line: 1426, baseType: !2519, size: 64, offset: 576)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2521)
!2521 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !714, file: !37, line: 1427, baseType: !119, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !714, file: !37, line: 1428, baseType: !119, size: 64, offset: 704)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !714, file: !37, line: 1429, baseType: !119, size: 64, offset: 768)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !714, file: !37, line: 1430, baseType: !494, size: 64, offset: 832)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !714, file: !37, line: 1431, baseType: !886, size: 256, offset: 896)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !714, file: !37, line: 1432, baseType: !224, size: 32, offset: 1152)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !714, file: !37, line: 1433, baseType: !866, size: 32, offset: 1184)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !714, file: !37, line: 1437, baseType: !2530, size: 64, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !714, file: !37, line: 1449, baseType: !2535, size: 64, offset: 1280)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !510, line: 34, size: 64, elements: !2536)
!2536 = !{!2537}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2535, file: !510, line: 35, baseType: !513, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !714, file: !37, line: 1450, baseType: !121, size: 128, offset: 1344)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !714, file: !37, line: 1451, baseType: !2540, size: 64, offset: 1472)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !714, file: !37, line: 1452, baseType: !1925, size: 64, offset: 1536)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !714, file: !37, line: 1453, baseType: !2544, size: 64, offset: 1600)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !714, file: !37, line: 1454, baseType: !756, size: 128, offset: 1664)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !714, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !714, file: !37, line: 1456, baseType: !2549, size: 2432, offset: 1856)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2555, !2587}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !31, line: 519, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2549, file: !31, line: 520, baseType: !886, size: 256, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2549, file: !31, line: 521, baseType: !2554, size: 192, offset: 320)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 192, elements: !768)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2549, file: !31, line: 522, baseType: !2556, size: 1728, offset: 512)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2557, size: 1728, elements: !768)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2558)
!2558 = !{!2559, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2557, file: !31, line: 223, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2562)
!2562 = !{!2563, !2564, !2577, !2578}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2561, file: !31, line: 444, baseType: !224, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2561, file: !31, line: 445, baseType: !2565, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2567)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2567, file: !31, line: 311, baseType: !804, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2567, file: !31, line: 312, baseType: !804, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2567, file: !31, line: 313, baseType: !804, size: 64, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2567, file: !31, line: 314, baseType: !804, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2567, file: !31, line: 315, baseType: !2359, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2567, file: !31, line: 316, baseType: !2359, size: 64, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2567, file: !31, line: 317, baseType: !2359, size: 64, offset: 384)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2567, file: !31, line: 318, baseType: !2431, size: 64, offset: 448)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2561, file: !31, line: 446, baseType: !747, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2561, file: !31, line: 447, baseType: !2560, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2557, file: !31, line: 224, baseType: !224, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2557, file: !31, line: 226, baseType: !121, size: 128, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2557, file: !31, line: 227, baseType: !119, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2557, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2557, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2557, file: !31, line: 230, baseType: !2395, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2557, file: !31, line: 231, baseType: !2395, size: 64, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2557, file: !31, line: 232, baseType: !104, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2549, file: !31, line: 523, baseType: !2588, size: 192, offset: 2240)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2565, size: 192, elements: !768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !714, file: !37, line: 1458, baseType: !2590, size: 2112, offset: 4288)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2591)
!2591 = !{!2592, !2593, !2594}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2590, file: !37, line: 1411, baseType: !224, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2590, file: !37, line: 1412, baseType: !1482, size: 128, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2590, file: !37, line: 1413, baseType: !2595, size: 1920, offset: 192)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2596, size: 1920, elements: !768)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2597, line: 12, size: 640, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2607, !2608, !2613, !2614}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2596, file: !2597, line: 13, baseType: !2600, size: 320)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2601, line: 17, size: 320, elements: !2602)
!2601 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2600, file: !2601, line: 18, baseType: !224, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2600, file: !2601, line: 19, baseType: !224, size: 32, offset: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2600, file: !2601, line: 20, baseType: !1482, size: 128, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2600, file: !2601, line: 22, baseType: !477, size: 128, align: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2596, file: !2597, line: 14, baseType: !362, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2596, file: !2597, line: 15, baseType: !2609, size: 64, offset: 384)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2610, line: 16, size: 64, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2611 = !{!2612}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2609, file: !2610, line: 17, baseType: !1222, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2596, file: !2597, line: 16, baseType: !1482, size: 128, offset: 448)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2596, file: !2597, line: 17, baseType: !866, size: 32, offset: 576)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !714, file: !37, line: 1465, baseType: !104, size: 64, offset: 6400)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !714, file: !37, line: 1468, baseType: !527, size: 32, offset: 6464)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !714, file: !37, line: 1470, baseType: !647, size: 64, offset: 6528)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !714, file: !37, line: 1471, baseType: !647, size: 64, offset: 6592)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !714, file: !37, line: 1473, baseType: !115, size: 32, offset: 6656)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !714, file: !37, line: 1474, baseType: !2621, size: 64, offset: 6720)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !714, file: !37, line: 1477, baseType: !2624, size: 256, offset: 6784)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 256, elements: !360)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !714, file: !37, line: 1478, baseType: !2626, size: 128, offset: 7040)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2627, line: 18, baseType: !2628)
!2627 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2627, line: 16, size: 128, elements: !2629)
!2629 = !{!2630}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2628, file: !2627, line: 17, baseType: !2631, size: 128)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 128, elements: !1734)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !714, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !714, file: !37, line: 1481, baseType: !2634, size: 32, offset: 7200)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !103, line: 150, baseType: !7)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !714, file: !37, line: 1487, baseType: !144, size: 192, offset: 7232)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !714, file: !37, line: 1493, baseType: !310, size: 64, offset: 7424)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !714, file: !37, line: 1495, baseType: !2638, size: 64, offset: 7488)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !492, line: 135, size: 1024, align: 512, elements: !2641)
!2641 = !{!2642, !2646, !2647, !2654, !2660, !2664, !2668, !2672, !2673, !2677, !2681, !2686, !2690}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2640, file: !492, line: 136, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!224, !494, !7}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2640, file: !492, line: 137, baseType: !2643, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2640, file: !492, line: 138, baseType: !2648, size: 64, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!224, !2651, !2653}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2640, file: !492, line: 139, baseType: !2655, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!224, !2651, !7, !310, !2658}
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2640, file: !492, line: 141, baseType: !2661, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!224, !2651}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2640, file: !492, line: 142, baseType: !2665, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!224, !494}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2640, file: !492, line: 143, baseType: !2669, size: 64, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !494}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2640, file: !492, line: 144, baseType: !2669, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2640, file: !492, line: 145, baseType: !2674, size: 64, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !494, !537}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2640, file: !492, line: 146, baseType: !2678, size: 64, offset: 576)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!596, !494, !596, !224}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2640, file: !492, line: 147, baseType: !2682, size: 64, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!490, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2640, file: !492, line: 148, baseType: !2687, size: 64, offset: 704)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!224, !657, !209}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2640, file: !492, line: 149, baseType: !2691, size: 64, offset: 768)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!494, !494, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !714, file: !37, line: 1500, baseType: !224, size: 32, offset: 7552)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !714, file: !37, line: 1502, baseType: !2698, size: 448, offset: 7616)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2343, line: 60, size: 448, elements: !2699)
!2699 = !{!2700, !2705, !2706, !2707, !2708, !2709, !2710}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2698, file: !2343, line: 61, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!119, !2704, !2341}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2698, file: !2343, line: 63, baseType: !2701, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2698, file: !2343, line: 66, baseType: !649, size: 64, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2698, file: !2343, line: 67, baseType: !224, size: 32, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2698, file: !2343, line: 68, baseType: !7, size: 32, offset: 224)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2698, file: !2343, line: 71, baseType: !121, size: 128, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2698, file: !2343, line: 77, baseType: !2711, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !714, file: !37, line: 1505, baseType: !148, size: 64, offset: 8064)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !714, file: !37, line: 1508, baseType: !148, size: 64, offset: 8128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !714, file: !37, line: 1511, baseType: !224, size: 32, offset: 8192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !714, file: !37, line: 1514, baseType: !1019, size: 32, offset: 8224)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !714, file: !37, line: 1517, baseType: !2717, size: 64, offset: 8256)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1960, line: 18, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !714, file: !37, line: 1518, baseType: !752, size: 64, offset: 8320)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !714, file: !37, line: 1525, baseType: !1712, size: 64, offset: 8384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !714, file: !37, line: 1532, baseType: !2722, size: 64, offset: 8448)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2723, line: 52, size: 64, elements: !2724)
!2723 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2724 = !{!2725}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2722, file: !2723, line: 53, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2723, line: 40, size: 256, elements: !2728)
!2728 = !{!2729, !2730, !2735}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2727, file: !2723, line: 42, baseType: !159)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2727, file: !2723, line: 44, baseType: !2731, size: 192)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2723, line: 28, size: 192, elements: !2732)
!2732 = !{!2733, !2734}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2731, file: !2723, line: 29, baseType: !121, size: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2731, file: !2723, line: 31, baseType: !649, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2727, file: !2723, line: 49, baseType: !649, size: 64, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !714, file: !37, line: 1533, baseType: !2722, size: 64, offset: 8512)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !714, file: !37, line: 1534, baseType: !477, size: 128, align: 64, offset: 8576)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !714, file: !37, line: 1535, baseType: !1959, size: 256, offset: 8704)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !714, file: !37, line: 1537, baseType: !144, size: 192, offset: 8960)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !714, file: !37, line: 1542, baseType: !224, size: 32, offset: 9152)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !714, file: !37, line: 1545, baseType: !159, offset: 9184)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !714, file: !37, line: 1546, baseType: !121, size: 128, offset: 9216)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !714, file: !37, line: 1548, baseType: !159, offset: 9344)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !714, file: !37, line: 1549, baseType: !121, size: 128, offset: 9344)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !538, file: !37, line: 624, baseType: !853, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !538, file: !37, line: 631, baseType: !119, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !37, line: 639, baseType: !2748, size: 32, offset: 384)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !37, line: 639, size: 32, elements: !2749)
!2749 = !{!2750, !2752}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2748, file: !37, line: 640, baseType: !2751, size: 32)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2748, file: !37, line: 641, baseType: !7, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !538, file: !37, line: 643, baseType: !622, size: 32, offset: 416)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !538, file: !37, line: 644, baseType: !640, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !538, file: !37, line: 645, baseType: !643, size: 128, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !538, file: !37, line: 646, baseType: !643, size: 128, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !538, file: !37, line: 647, baseType: !643, size: 128, offset: 768)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !538, file: !37, line: 648, baseType: !159, offset: 896)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !538, file: !37, line: 649, baseType: !101, size: 16, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !538, file: !37, line: 650, baseType: !1358, size: 8, offset: 912)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !538, file: !37, line: 651, baseType: !1358, size: 8, offset: 920)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !538, file: !37, line: 652, baseType: !2515, size: 64, offset: 960)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !538, file: !37, line: 659, baseType: !119, size: 64, offset: 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !538, file: !37, line: 660, baseType: !886, size: 256, offset: 1088)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !538, file: !37, line: 662, baseType: !119, size: 64, offset: 1344)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !538, file: !37, line: 663, baseType: !119, size: 64, offset: 1408)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !538, file: !37, line: 665, baseType: !756, size: 128, offset: 1472)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !538, file: !37, line: 666, baseType: !121, size: 128, offset: 1600)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !538, file: !37, line: 675, baseType: !121, size: 128, offset: 1728)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !538, file: !37, line: 676, baseType: !121, size: 128, offset: 1856)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !538, file: !37, line: 677, baseType: !121, size: 128, offset: 1984)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !37, line: 678, baseType: !2773, size: 128, offset: 2112)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !37, line: 678, size: 128, elements: !2774)
!2774 = !{!2775, !2776}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2773, file: !37, line: 679, baseType: !752, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2773, file: !37, line: 680, baseType: !477, size: 128, align: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !538, file: !37, line: 682, baseType: !150, size: 64, offset: 2240)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !538, file: !37, line: 683, baseType: !150, size: 64, offset: 2304)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !538, file: !37, line: 684, baseType: !866, size: 32, offset: 2368)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !538, file: !37, line: 685, baseType: !866, size: 32, offset: 2400)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !538, file: !37, line: 686, baseType: !866, size: 32, offset: 2432)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !538, file: !37, line: 688, baseType: !866, size: 32, offset: 2464)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !37, line: 690, baseType: !2784, size: 64, offset: 2496)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !37, line: 690, size: 64, elements: !2785)
!2785 = !{!2786, !3009}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2784, file: !37, line: 691, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2790)
!2790 = !{!2791, !2792, !2796, !2801, !2805, !2806, !2807, !2811, !2824, !2825, !2833, !2837, !2838, !2842, !2843, !2847, !2852, !2853, !2857, !2861, !2969, !2973, !2974, !2978, !2979, !2983, !2987, !2992, !2996, !3000, !3004, !3008}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2789, file: !37, line: 1823, baseType: !747, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2789, file: !37, line: 1824, baseType: !2793, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!640, !464, !640, !224}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2789, file: !37, line: 1825, baseType: !2797, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!686, !464, !596, !689, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2789, file: !37, line: 1826, baseType: !2802, size: 64, offset: 192)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!686, !464, !310, !689, !2800}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2789, file: !37, line: 1827, baseType: !956, size: 64, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2789, file: !37, line: 1828, baseType: !956, size: 64, offset: 320)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2789, file: !37, line: 1829, baseType: !2808, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!224, !959, !209}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2789, file: !37, line: 1830, baseType: !2812, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!224, !464, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2817)
!2817 = !{!2818, !2823}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2816, file: !37, line: 1777, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2820)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!224, !2815, !310, !224, !640, !530, !7}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2816, file: !37, line: 1778, baseType: !640, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2789, file: !37, line: 1831, baseType: !2812, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2789, file: !37, line: 1832, baseType: !2826, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!2829, !464, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2830, line: 52, baseType: !7)
!2830 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !733, line: 27, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2789, file: !37, line: 1833, baseType: !2834, size: 64, offset: 640)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!649, !464, !7, !119}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2789, file: !37, line: 1834, baseType: !2834, size: 64, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2789, file: !37, line: 1835, baseType: !2839, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!224, !464, !1091}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2789, file: !37, line: 1836, baseType: !119, size: 64, offset: 832)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2789, file: !37, line: 1837, baseType: !2844, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!224, !537, !464}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2789, file: !37, line: 1838, baseType: !2848, size: 64, offset: 960)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!224, !464, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !104)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2789, file: !37, line: 1839, baseType: !2844, size: 64, offset: 1024)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2789, file: !37, line: 1840, baseType: !2854, size: 64, offset: 1088)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!224, !464, !640, !640, !224}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2789, file: !37, line: 1841, baseType: !2858, size: 64, offset: 1152)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!224, !224, !464, !224}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2789, file: !37, line: 1842, baseType: !2862, size: 64, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!224, !464, !224, !2865}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2899, !2900, !2901, !2914, !2945}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2866, file: !37, line: 1063, baseType: !2865, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2866, file: !37, line: 1064, baseType: !121, size: 128, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2866, file: !37, line: 1065, baseType: !756, size: 128, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2866, file: !37, line: 1066, baseType: !121, size: 128, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2866, file: !37, line: 1069, baseType: !121, size: 128, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2866, file: !37, line: 1072, baseType: !2851, size: 64, offset: 576)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2866, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2866, file: !37, line: 1074, baseType: !193, size: 8, offset: 672)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2866, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2866, file: !37, line: 1076, baseType: !224, size: 32, offset: 736)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2866, file: !37, line: 1077, baseType: !1482, size: 128, offset: 768)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2866, file: !37, line: 1078, baseType: !464, size: 64, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2866, file: !37, line: 1079, baseType: !640, size: 64, offset: 960)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2866, file: !37, line: 1080, baseType: !640, size: 64, offset: 1024)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2866, file: !37, line: 1082, baseType: !2883, size: 64, offset: 1088)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2885)
!2885 = !{!2886, !2894, !2895, !2896, !2897, !2898}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2884, file: !37, line: 1315, baseType: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2888, line: 20, baseType: !2889)
!2888 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2888, line: 11, elements: !2890)
!2890 = !{!2891}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2889, file: !2888, line: 12, baseType: !2892)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !171, line: 33, baseType: !2893)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 31, elements: !173)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2884, file: !37, line: 1316, baseType: !224, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2884, file: !37, line: 1317, baseType: !224, size: 32, offset: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2884, file: !37, line: 1318, baseType: !2883, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2884, file: !37, line: 1319, baseType: !464, size: 64, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2884, file: !37, line: 1320, baseType: !477, size: 128, align: 64, offset: 192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2866, file: !37, line: 1084, baseType: !119, size: 64, offset: 1152)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2866, file: !37, line: 1085, baseType: !119, size: 64, offset: 1216)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2866, file: !37, line: 1087, baseType: !2902, size: 64, offset: 1280)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2905)
!2905 = !{!2906, !2910}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2904, file: !37, line: 1012, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2865, !2865}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2904, file: !37, line: 1013, baseType: !2911, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !2865}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2866, file: !37, line: 1088, baseType: !2915, size: 64, offset: 1344)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2917)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2918)
!2918 = !{!2919, !2923, !2927, !2928, !2932, !2936, !2940, !2944}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2917, file: !37, line: 1017, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!2851, !2851}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2917, file: !37, line: 1018, baseType: !2924, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !2851}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2917, file: !37, line: 1019, baseType: !2911, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2917, file: !37, line: 1020, baseType: !2929, size: 64, offset: 192)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!224, !2865, !224}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2917, file: !37, line: 1021, baseType: !2933, size: 64, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!209, !2865}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2917, file: !37, line: 1022, baseType: !2937, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!224, !2865, !224, !124}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2917, file: !37, line: 1023, baseType: !2941, size: 64, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !2865, !933}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2917, file: !37, line: 1024, baseType: !2933, size: 64, offset: 448)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2866, file: !37, line: 1097, baseType: !2946, size: 256, offset: 1408)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2866, file: !37, line: 1089, size: 256, elements: !2947)
!2947 = !{!2948, !2957, !2963}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2946, file: !37, line: 1090, baseType: !2949, size: 256)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2950, line: 10, size: 256, elements: !2951)
!2950 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2951 = !{!2952, !2953, !2956}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2949, file: !2950, line: 11, baseType: !527, size: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2949, file: !2950, line: 12, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2950, line: 5, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2949, file: !2950, line: 13, baseType: !121, size: 128, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2946, file: !37, line: 1091, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2950, line: 17, size: 64, elements: !2959)
!2959 = !{!2960}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2958, file: !2950, line: 18, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2950, line: 16, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2946, file: !37, line: 1096, baseType: !2964, size: 192)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !37, line: 1092, size: 192, elements: !2965)
!2965 = !{!2966, !2967, !2968}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2964, file: !37, line: 1093, baseType: !121, size: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2964, file: !37, line: 1094, baseType: !224, size: 32, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2964, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2789, file: !37, line: 1843, baseType: !2970, size: 64, offset: 1280)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!686, !464, !840, !224, !689, !2800, !224}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2789, file: !37, line: 1844, baseType: !1131, size: 64, offset: 1344)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2789, file: !37, line: 1845, baseType: !2975, size: 64, offset: 1408)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!224, !224}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2789, file: !37, line: 1846, baseType: !2862, size: 64, offset: 1472)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2789, file: !37, line: 1847, baseType: !2980, size: 64, offset: 1536)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!686, !2100, !464, !2800, !689, !7}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2789, file: !37, line: 1848, baseType: !2984, size: 64, offset: 1600)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!686, !464, !2800, !2100, !689, !7}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2789, file: !37, line: 1849, baseType: !2988, size: 64, offset: 1664)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!224, !464, !649, !2991, !933}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2789, file: !37, line: 1850, baseType: !2993, size: 64, offset: 1728)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!649, !464, !224, !640, !640}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2789, file: !37, line: 1852, baseType: !2997, size: 64, offset: 1792)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !830, !464}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2789, file: !37, line: 1856, baseType: !3001, size: 64, offset: 1856)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!686, !464, !640, !464, !640, !689, !7}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2789, file: !37, line: 1858, baseType: !3005, size: 64, offset: 1920)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!640, !464, !640, !464, !640, !640, !7}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2789, file: !37, line: 1861, baseType: !2854, size: 64, offset: 1984)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2784, file: !37, line: 692, baseType: !783, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !538, file: !37, line: 694, baseType: !3011, size: 64, offset: 2560)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !3013)
!3013 = !{!3014, !3015, !3016, !3017}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3012, file: !37, line: 1101, baseType: !159)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3012, file: !37, line: 1102, baseType: !121, size: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3012, file: !37, line: 1103, baseType: !121, size: 128, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3012, file: !37, line: 1104, baseType: !121, size: 128, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !538, file: !37, line: 695, baseType: !854, size: 1216, align: 64, offset: 2624)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !538, file: !37, line: 696, baseType: !121, size: 128, offset: 3840)
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !538, file: !37, line: 697, baseType: !3021, size: 64, offset: 3968)
!3021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !538, file: !37, line: 697, size: 64, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3028, !3029}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3021, file: !37, line: 698, baseType: !2100, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3021, file: !37, line: 699, baseType: !2540, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3021, file: !37, line: 700, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3021, file: !37, line: 701, baseType: !596, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3021, file: !37, line: 702, baseType: !7, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !538, file: !37, line: 705, baseType: !115, size: 32, offset: 4032)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !538, file: !37, line: 708, baseType: !115, size: 32, offset: 4064)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !538, file: !37, line: 709, baseType: !2621, size: 64, offset: 4096)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !538, file: !37, line: 720, baseType: !104, size: 64, offset: 4160)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !495, file: !492, line: 98, baseType: !3035, size: 256, offset: 448)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !360)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !495, file: !492, line: 101, baseType: !3037, size: 32, offset: 704)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3038, line: 25, size: 32, elements: !3039)
!3038 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3039 = !{!3040}
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3037, file: !3038, line: 26, baseType: !3041, size: 32)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3037, file: !3038, line: 26, size: 32, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !3041, file: !3038, line: 30, baseType: !3044, size: 32)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3041, file: !3038, line: 30, size: 32, elements: !3045)
!3045 = !{!3046, !3047}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3044, file: !3038, line: 31, baseType: !159)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3044, file: !3038, line: 32, baseType: !224, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !495, file: !492, line: 102, baseType: !2638, size: 64, offset: 768)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !495, file: !492, line: 103, baseType: !713, size: 64, offset: 832)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !495, file: !492, line: 104, baseType: !119, size: 64, offset: 896)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !495, file: !492, line: 105, baseType: !104, size: 64, offset: 960)
!3052 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !492, line: 107, baseType: !3053, size: 128, offset: 1024)
!3053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !492, line: 107, size: 128, elements: !3054)
!3054 = !{!3055, !3056}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3053, file: !492, line: 108, baseType: !121, size: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3053, file: !492, line: 109, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !495, file: !492, line: 111, baseType: !121, size: 128, offset: 1152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !495, file: !492, line: 112, baseType: !121, size: 128, offset: 1280)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !495, file: !492, line: 120, baseType: !3061, size: 128, offset: 1408)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !495, file: !492, line: 116, size: 128, elements: !3062)
!3062 = !{!3063, !3064, !3065}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3061, file: !492, line: 117, baseType: !756, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3061, file: !492, line: 118, baseType: !509, size: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3061, file: !492, line: 119, baseType: !477, size: 128, align: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !465, file: !37, line: 922, baseType: !537, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !465, file: !37, line: 923, baseType: !2787, size: 64, offset: 320)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !465, file: !37, line: 929, baseType: !159, offset: 384)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !465, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !465, file: !37, line: 931, baseType: !148, size: 64, offset: 448)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !465, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !465, file: !37, line: 933, baseType: !2634, size: 32, offset: 544)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !465, file: !37, line: 934, baseType: !144, size: 192, offset: 576)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !465, file: !37, line: 935, baseType: !640, size: 64, offset: 768)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !465, file: !37, line: 936, baseType: !3076, size: 192, offset: 832)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3083}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3076, file: !37, line: 886, baseType: !2887)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3076, file: !37, line: 887, baseType: !1472, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3076, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3076, file: !37, line: 889, baseType: !544, size: 32, offset: 96)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3076, file: !37, line: 889, baseType: !544, size: 32, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3076, file: !37, line: 890, baseType: !224, size: 32, offset: 160)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !465, file: !37, line: 937, baseType: !1548, size: 64, offset: 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !465, file: !37, line: 938, baseType: !3086, size: 256, offset: 1088)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091, !3092, !3093}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3086, file: !37, line: 897, baseType: !119, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3086, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3086, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3086, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3086, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3086, file: !37, line: 904, baseType: !640, size: 64, offset: 192)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !465, file: !37, line: 940, baseType: !530, size: 64, offset: 1344)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !465, file: !37, line: 945, baseType: !104, size: 64, offset: 1408)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !465, file: !37, line: 949, baseType: !121, size: 128, offset: 1472)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !465, file: !37, line: 950, baseType: !121, size: 128, offset: 1600)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !465, file: !37, line: 952, baseType: !853, size: 64, offset: 1728)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !465, file: !37, line: 953, baseType: !1019, size: 32, offset: 1792)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !465, file: !37, line: 954, baseType: !1019, size: 32, offset: 1824)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !306, file: !307, line: 163, baseType: !3102, size: 64, offset: 2048)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !307, line: 24, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !306, file: !307, line: 165, baseType: !7, size: 32, offset: 2112)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !306, file: !307, line: 166, baseType: !3106, size: 320, offset: 2176)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3107, line: 11, size: 320, elements: !3108)
!3107 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3108 = !{!3109, !3110, !3111, !3116}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3106, file: !3107, line: 16, baseType: !756, size: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3106, file: !3107, line: 17, baseType: !119, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3106, file: !3107, line: 18, baseType: !3112, size: 64, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{null, !3115}
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3106, file: !3107, line: 19, baseType: !527, size: 32, offset: 256)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !306, file: !307, line: 168, baseType: !3118, size: 64, offset: 2496)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 64, elements: !339)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !306, file: !307, line: 170, baseType: !3120, size: 64, offset: 2560)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !307, line: 170, flags: DIFlagFwdDecl)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !306, file: !307, line: 172, baseType: !3123, size: 64, offset: 2624)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !317, line: 90, size: 192, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3124, file: !317, line: 91, baseType: !289, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3124, file: !317, line: 92, baseType: !289, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3124, file: !317, line: 93, baseType: !289, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3124, file: !317, line: 94, baseType: !289, size: 32, offset: 96)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3124, file: !317, line: 95, baseType: !289, size: 32, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3124, file: !317, line: 96, baseType: !289, size: 32, offset: 160)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !306, file: !307, line: 174, baseType: !329, size: 768, offset: 2688)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !306, file: !307, line: 175, baseType: !324, size: 64, offset: 3456)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !306, file: !307, line: 176, baseType: !324, size: 64, offset: 3520)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !306, file: !307, line: 177, baseType: !324, size: 64, offset: 3584)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !306, file: !307, line: 179, baseType: !3137, size: 64, offset: 3648)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!224, !305}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !306, file: !307, line: 180, baseType: !3141, size: 64, offset: 3712)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{null, !305}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !306, file: !307, line: 181, baseType: !3145, size: 64, offset: 3776)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!224, !305, !464}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !306, file: !307, line: 182, baseType: !3149, size: 64, offset: 3840)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!224, !305, !7, !7, !224}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !306, file: !307, line: 184, baseType: !3153, size: 64, offset: 3904)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !307, line: 337, size: 576, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3226, !3227}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3154, file: !307, line: 339, baseType: !104, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3154, file: !307, line: 341, baseType: !224, size: 32, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3154, file: !307, line: 342, baseType: !310, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3154, file: !307, line: 344, baseType: !305, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3154, file: !307, line: 345, baseType: !3161, size: 64, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !307, line: 302, size: 960, elements: !3163)
!3163 = !{!3164, !3165, !3169, !3180, !3184, !3188, !3215, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3162, file: !307, line: 304, baseType: !104, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3162, file: !307, line: 306, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !3153, !7, !7, !224}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3162, file: !307, line: 307, baseType: !3170, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !3153, !3173, !7}
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !307, line: 32, size: 64, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3175, file: !307, line: 33, baseType: !99, size: 16)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3175, file: !307, line: 34, baseType: !99, size: 16, offset: 16)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3175, file: !307, line: 35, baseType: !289, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3162, file: !307, line: 309, baseType: !3181, size: 64, offset: 192)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!209, !3153, !7, !7, !224}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3162, file: !307, line: 310, baseType: !3185, size: 64, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!209, !3161, !305}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3162, file: !307, line: 311, baseType: !3189, size: 64, offset: 320)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!224, !3161, !305, !3192}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3194)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !110, line: 342, size: 1600, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3200, !3201, !3203, !3205, !3206, !3207, !3208, !3209, !3210, !3212, !3213, !3214}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3194, file: !110, line: 344, baseType: !118, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3194, file: !110, line: 346, baseType: !99, size: 16, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3194, file: !110, line: 347, baseType: !99, size: 16, offset: 80)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3194, file: !110, line: 348, baseType: !99, size: 16, offset: 96)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3194, file: !110, line: 349, baseType: !99, size: 16, offset: 112)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3194, file: !110, line: 351, baseType: !3202, size: 64, offset: 128)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !325)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3194, file: !110, line: 352, baseType: !3204, size: 768, offset: 192)
!3204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 768, elements: !330)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3194, file: !110, line: 353, baseType: !3202, size: 64, offset: 960)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3194, file: !110, line: 354, baseType: !3202, size: 64, offset: 1024)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3194, file: !110, line: 355, baseType: !3202, size: 64, offset: 1088)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3194, file: !110, line: 356, baseType: !3202, size: 64, offset: 1152)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3194, file: !110, line: 357, baseType: !3202, size: 64, offset: 1216)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3194, file: !110, line: 358, baseType: !3211, size: 128, offset: 1280)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !339)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3194, file: !110, line: 359, baseType: !3202, size: 64, offset: 1408)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3194, file: !110, line: 360, baseType: !3202, size: 64, offset: 1472)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3194, file: !110, line: 362, baseType: !118, size: 64, offset: 1536)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3162, file: !307, line: 312, baseType: !3216, size: 64, offset: 384)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !3153}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3162, file: !307, line: 313, baseType: !3216, size: 64, offset: 448)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3162, file: !307, line: 315, baseType: !209, size: 8, offset: 512)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3162, file: !307, line: 316, baseType: !224, size: 32, offset: 544)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3162, file: !307, line: 317, baseType: !310, size: 64, offset: 576)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3162, file: !307, line: 319, baseType: !3192, size: 64, offset: 640)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3162, file: !307, line: 321, baseType: !121, size: 128, offset: 704)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3162, file: !307, line: 322, baseType: !121, size: 128, offset: 832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3154, file: !307, line: 347, baseType: !121, size: 128, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3154, file: !307, line: 348, baseType: !121, size: 128, offset: 448)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !306, file: !307, line: 186, baseType: !159, offset: 3968)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !306, file: !307, line: 187, baseType: !144, size: 192, offset: 3968)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !306, file: !307, line: 189, baseType: !7, size: 32, offset: 4160)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !306, file: !307, line: 190, baseType: !209, size: 8, offset: 4192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !306, file: !307, line: 192, baseType: !3233, size: 5568, offset: 4224)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !66, line: 461, size: 5568, elements: !3234)
!3234 = !{!3235, !3534, !3536, !3539, !3540, !3591, !3670, !3671, !3672, !3673, !3674, !3683, !3777, !3790, !3793, !3794, !3798, !3800, !3801, !3802, !3806, !3812, !3813, !3816, !3820, !3823, !3824, !3825, !3826, !3827, !3859, !3860, !3861, !3864, !3867, !3868, !3869, !3870}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3233, file: !66, line: 462, baseType: !3236, size: 512)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3237, line: 64, size: 512, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3238 = !{!3239, !3240, !3241, !3243, !3283, !3385, !3524, !3529, !3530, !3531, !3532, !3533}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3236, file: !3237, line: 65, baseType: !310, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3236, file: !3237, line: 66, baseType: !121, size: 128, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3236, file: !3237, line: 67, baseType: !3242, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3236, file: !3237, line: 68, baseType: !3244, size: 64, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3237, line: 192, size: 704, elements: !3246)
!3246 = !{!3247, !3248, !3249, !3250}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3245, file: !3237, line: 193, baseType: !121, size: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3245, file: !3237, line: 194, baseType: !159, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3245, file: !3237, line: 195, baseType: !3236, size: 512, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3245, file: !3237, line: 196, baseType: !3251, size: 64, offset: 640)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3237, line: 156, size: 192, elements: !3254)
!3254 = !{!3255, !3260, !3265}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3253, file: !3237, line: 157, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3257)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!224, !3244, !3242}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3253, file: !3237, line: 158, baseType: !3261, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!310, !3244, !3242}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3253, file: !3237, line: 159, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3267)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!224, !3244, !3242, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3237, line: 148, size: 20736, elements: !3272)
!3272 = !{!3273, !3275, !3277, !3278, !3282}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3271, file: !3237, line: 149, baseType: !3274, size: 192)
!3274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 192, elements: !768)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3271, file: !3237, line: 150, baseType: !3276, size: 4096, offset: 192)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 4096, elements: !1881)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3271, file: !3237, line: 151, baseType: !224, size: 32, offset: 4288)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3271, file: !3237, line: 152, baseType: !3279, size: 16384, offset: 4320)
!3279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 16384, elements: !3280)
!3280 = !{!3281}
!3281 = !DISubrange(count: 2048)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3271, file: !3237, line: 153, baseType: !224, size: 32, offset: 20704)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3236, file: !3237, line: 69, baseType: !3284, size: 64, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3237, line: 138, size: 448, elements: !3286)
!3286 = !{!3287, !3291, !3310, !3312, !3345, !3375, !3379}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3285, file: !3237, line: 139, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !3242}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3285, file: !3237, line: 140, baseType: !3292, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3295, line: 230, size: 128, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3296 = !{!3297, !3306}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3294, file: !3295, line: 231, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!686, !3242, !3301, !596}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3295, line: 30, size: 128, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3302, file: !3295, line: 31, baseType: !310, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3302, file: !3295, line: 32, baseType: !541, size: 16, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3294, file: !3295, line: 232, baseType: !3307, size: 64, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!686, !3242, !3301, !310, !689}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3285, file: !3237, line: 141, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3285, file: !3237, line: 142, baseType: !3313, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3295, line: 84, size: 320, elements: !3317)
!3317 = !{!3318, !3319, !3323, !3342, !3343}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !3295, line: 85, baseType: !310, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3316, file: !3295, line: 86, baseType: !3320, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!541, !3242, !3301, !224}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3316, file: !3295, line: 88, baseType: !3324, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!541, !3242, !3327, !224}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3295, line: 168, size: 448, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3337, !3338}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3328, file: !3295, line: 169, baseType: !3302, size: 128)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3328, file: !3295, line: 170, baseType: !689, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3328, file: !3295, line: 171, baseType: !104, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3328, file: !3295, line: 172, baseType: !3334, size: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!686, !464, !3242, !3327, !596, !640, !689}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3328, file: !3295, line: 174, baseType: !3334, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3328, file: !3295, line: 176, baseType: !3339, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!224, !464, !3242, !3327, !1091}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3316, file: !3295, line: 90, baseType: !3311, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3316, file: !3295, line: 91, baseType: !3344, size: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3285, file: !3237, line: 143, baseType: !3346, size: 64, offset: 256)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!3349, !3242}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !54, line: 39, size: 384, elements: !3352)
!3352 = !{!3353, !3354, !3358, !3362, !3370, !3374}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3351, file: !54, line: 40, baseType: !53, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3351, file: !54, line: 41, baseType: !3355, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!209}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3351, file: !54, line: 42, baseType: !3359, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!104}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3351, file: !54, line: 43, baseType: !3363, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!3366, !3368}
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !54, line: 19, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3351, file: !54, line: 44, baseType: !3371, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!3366}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3351, file: !54, line: 45, baseType: !578, size: 64, offset: 320)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3285, file: !3237, line: 144, baseType: !3376, size: 64, offset: 320)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!3366, !3242}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3285, file: !3237, line: 145, baseType: !3380, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !3242, !3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3236, file: !3237, line: 70, baseType: !3386, size: 64, offset: 384)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !733, line: 123, size: 1024, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3517, !3518, !3519, !3520, !3521}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3387, file: !733, line: 124, baseType: !866, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3387, file: !733, line: 125, baseType: !866, size: 32, offset: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3387, file: !733, line: 135, baseType: !3386, size: 64, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3387, file: !733, line: 136, baseType: !310, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3387, file: !733, line: 138, baseType: !879, size: 192, align: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3387, file: !733, line: 140, baseType: !3366, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3387, file: !733, line: 141, baseType: !7, size: 32, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3387, file: !733, line: 142, baseType: !3397, size: 256, offset: 512)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3387, file: !733, line: 142, size: 256, elements: !3398)
!3398 = !{!3399, !3445, !3449}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3397, file: !733, line: 143, baseType: !3400, size: 192)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !733, line: 91, size: 192, elements: !3401)
!3401 = !{!3402, !3403, !3404}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3400, file: !733, line: 92, baseType: !119, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3400, file: !733, line: 94, baseType: !875, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3400, file: !733, line: 100, baseType: !3405, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !733, line: 180, size: 704, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3417, !3418, !3419, !3443, !3444}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3406, file: !733, line: 182, baseType: !3386, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3406, file: !733, line: 183, baseType: !7, size: 32, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3406, file: !733, line: 186, baseType: !3411, size: 192, offset: 128)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3412, line: 19, size: 192, elements: !3413)
!3412 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3413 = !{!3414, !3415, !3416}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3411, file: !3412, line: 20, baseType: !858, size: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3411, file: !3412, line: 21, baseType: !7, size: 32, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3411, file: !3412, line: 22, baseType: !7, size: 32, offset: 160)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3406, file: !733, line: 187, baseType: !527, size: 32, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3406, file: !733, line: 188, baseType: !527, size: 32, offset: 352)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3406, file: !733, line: 189, baseType: !3420, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !733, line: 168, size: 320, elements: !3422)
!3422 = !{!3423, !3427, !3431, !3435, !3439}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3421, file: !733, line: 169, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!224, !830, !3405}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3421, file: !733, line: 171, baseType: !3428, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!224, !3386, !310, !541}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3421, file: !733, line: 173, baseType: !3432, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!224, !3386}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3421, file: !733, line: 174, baseType: !3436, size: 64, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!224, !3386, !3386, !310}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3421, file: !733, line: 176, baseType: !3440, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!224, !830, !3386, !3405}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3406, file: !733, line: 192, baseType: !121, size: 128, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3406, file: !733, line: 194, baseType: !1482, size: 128, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3397, file: !733, line: 144, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !733, line: 103, size: 64, elements: !3447)
!3447 = !{!3448}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3446, file: !733, line: 104, baseType: !3386, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3397, file: !733, line: 145, baseType: !3450, size: 256)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !733, line: 107, size: 256, elements: !3451)
!3451 = !{!3452, !3512, !3515, !3516}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3450, file: !733, line: 108, baseType: !3453, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !733, line: 217, size: 768, elements: !3456)
!3456 = !{!3457, !3477, !3481, !3485, !3489, !3493, !3497, !3501, !3502, !3503, !3504, !3508}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3455, file: !733, line: 222, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!224, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !733, line: 197, size: 1088, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3462, file: !733, line: 199, baseType: !3386, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3462, file: !733, line: 200, baseType: !464, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3462, file: !733, line: 201, baseType: !830, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3462, file: !733, line: 202, baseType: !104, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3462, file: !733, line: 205, baseType: !144, size: 192, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3462, file: !733, line: 206, baseType: !144, size: 192, offset: 448)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3462, file: !733, line: 207, baseType: !224, size: 32, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3462, file: !733, line: 208, baseType: !121, size: 128, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3462, file: !733, line: 209, baseType: !596, size: 64, offset: 832)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3462, file: !733, line: 211, baseType: !689, size: 64, offset: 896)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3462, file: !733, line: 212, baseType: !209, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3462, file: !733, line: 213, baseType: !209, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3462, file: !733, line: 214, baseType: !1119, size: 64, offset: 1024)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3455, file: !733, line: 223, baseType: !3478, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{null, !3461}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3455, file: !733, line: 236, baseType: !3482, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!224, !830, !104}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3455, file: !733, line: 238, baseType: !3486, size: 64, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!104, !830, !2800}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3455, file: !733, line: 239, baseType: !3490, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!104, !830, !104, !2800}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3455, file: !733, line: 240, baseType: !3494, size: 64, offset: 320)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !830, !104}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3455, file: !733, line: 242, baseType: !3498, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!686, !3461, !596, !689, !640}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3455, file: !733, line: 252, baseType: !689, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3455, file: !733, line: 259, baseType: !209, size: 8, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3455, file: !733, line: 260, baseType: !3498, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3455, file: !733, line: 263, baseType: !3505, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!2829, !3461, !2831}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3455, file: !733, line: 266, baseType: !3509, size: 64, offset: 704)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!224, !3461, !1091}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3450, file: !733, line: 109, baseType: !3513, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !733, line: 31, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3450, file: !733, line: 110, baseType: !640, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3450, file: !733, line: 111, baseType: !3386, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3387, file: !733, line: 148, baseType: !104, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3387, file: !733, line: 154, baseType: !530, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3387, file: !733, line: 156, baseType: !101, size: 16, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3387, file: !733, line: 157, baseType: !541, size: 16, offset: 912)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3387, file: !733, line: 158, baseType: !3522, size: 64, offset: 960)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !733, line: 32, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3236, file: !3237, line: 71, baseType: !3525, size: 32, offset: 448)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3526, line: 19, size: 32, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3525, file: !3526, line: 20, baseType: !1236, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3236, file: !3237, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3236, file: !3237, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3236, file: !3237, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3236, file: !3237, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3236, file: !3237, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3233, file: !66, line: 463, baseType: !3535, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3233, file: !66, line: 465, baseType: !3537, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !66, line: 36, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3233, file: !66, line: 467, baseType: !310, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3233, file: !66, line: 468, baseType: !3541, size: 64, offset: 704)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !66, line: 87, size: 384, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3551, !3556, !3560}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3543, file: !66, line: 88, baseType: !310, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3543, file: !66, line: 89, baseType: !3313, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3543, file: !66, line: 90, baseType: !3548, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!224, !3535, !3270}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3543, file: !66, line: 91, baseType: !3552, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!596, !3535, !3555, !3383, !3384}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3543, file: !66, line: 93, baseType: !3557, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !3535}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3543, file: !66, line: 95, baseType: !3561, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3563)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !73, line: 278, size: 1472, elements: !3564)
!3564 = !{!3565, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3563, file: !73, line: 279, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!224, !3535}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3563, file: !73, line: 280, baseType: !3557, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3563, file: !73, line: 281, baseType: !3566, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3563, file: !73, line: 282, baseType: !3566, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3563, file: !73, line: 283, baseType: !3566, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3563, file: !73, line: 284, baseType: !3566, size: 64, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3563, file: !73, line: 285, baseType: !3566, size: 64, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3563, file: !73, line: 286, baseType: !3566, size: 64, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3563, file: !73, line: 287, baseType: !3566, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3563, file: !73, line: 288, baseType: !3566, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3563, file: !73, line: 289, baseType: !3566, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3563, file: !73, line: 290, baseType: !3566, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3563, file: !73, line: 291, baseType: !3566, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3563, file: !73, line: 292, baseType: !3566, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3563, file: !73, line: 293, baseType: !3566, size: 64, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3563, file: !73, line: 294, baseType: !3566, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3563, file: !73, line: 295, baseType: !3566, size: 64, offset: 1024)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3563, file: !73, line: 296, baseType: !3566, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3563, file: !73, line: 297, baseType: !3566, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3563, file: !73, line: 298, baseType: !3566, size: 64, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3563, file: !73, line: 299, baseType: !3566, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3563, file: !73, line: 300, baseType: !3566, size: 64, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3563, file: !73, line: 301, baseType: !3566, size: 64, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3233, file: !66, line: 470, baseType: !3592, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3594, line: 82, size: 1408, elements: !3595)
!3594 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3665, !3668, !3669}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3593, file: !3594, line: 83, baseType: !310, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3593, file: !3594, line: 84, baseType: !310, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3593, file: !3594, line: 85, baseType: !3535, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3593, file: !3594, line: 86, baseType: !3313, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3593, file: !3594, line: 87, baseType: !3313, size: 64, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3593, file: !3594, line: 88, baseType: !3313, size: 64, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3593, file: !3594, line: 90, baseType: !3603, size: 64, offset: 384)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!224, !3535, !3606}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !60, line: 95, size: 1152, elements: !3608)
!3608 = !{!3609, !3610, !3611, !3612, !3613, !3614, !3615, !3627, !3629, !3630, !3631, !3632, !3633, !3641, !3642, !3643, !3644, !3645, !3646}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3607, file: !60, line: 96, baseType: !310, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3607, file: !60, line: 97, baseType: !3592, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3607, file: !60, line: 99, baseType: !747, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3607, file: !60, line: 100, baseType: !310, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3607, file: !60, line: 102, baseType: !209, size: 8, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3607, file: !60, line: 103, baseType: !59, size: 32, offset: 288)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3607, file: !60, line: 105, baseType: !3616, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !110, line: 262, size: 1600, elements: !3619)
!3619 = !{!3620, !3621, !3622, !3626}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3618, file: !110, line: 263, baseType: !2624, size: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3618, file: !110, line: 264, baseType: !2624, size: 256, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3618, file: !110, line: 265, baseType: !3623, size: 1024, offset: 512)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 1024, elements: !3624)
!3624 = !{!3625}
!3625 = !DISubrange(count: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3618, file: !110, line: 266, baseType: !3366, size: 64, offset: 1536)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3607, file: !60, line: 106, baseType: !3628, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3607, file: !60, line: 108, baseType: !3566, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3607, file: !60, line: 109, baseType: !3557, size: 64, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3607, file: !60, line: 110, baseType: !3566, size: 64, offset: 576)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3607, file: !60, line: 111, baseType: !3557, size: 64, offset: 640)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3607, file: !60, line: 112, baseType: !3634, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!224, !3535, !3637}
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !73, line: 52, baseType: !3638)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !73, line: 50, size: 32, elements: !3639)
!3639 = !{!3640}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3638, file: !73, line: 51, baseType: !224, size: 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3607, file: !60, line: 113, baseType: !3566, size: 64, offset: 768)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3607, file: !60, line: 114, baseType: !3313, size: 64, offset: 832)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3607, file: !60, line: 115, baseType: !3313, size: 64, offset: 896)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3607, file: !60, line: 117, baseType: !3561, size: 64, offset: 960)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3607, file: !60, line: 118, baseType: !3557, size: 64, offset: 1024)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3607, file: !60, line: 120, baseType: !3647, size: 64, offset: 1088)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !60, line: 120, flags: DIFlagFwdDecl)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3593, file: !3594, line: 91, baseType: !3548, size: 64, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3593, file: !3594, line: 92, baseType: !3566, size: 64, offset: 512)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3593, file: !3594, line: 93, baseType: !3557, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3593, file: !3594, line: 94, baseType: !3566, size: 64, offset: 640)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3593, file: !3594, line: 95, baseType: !3557, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3593, file: !3594, line: 97, baseType: !3566, size: 64, offset: 768)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3593, file: !3594, line: 98, baseType: !3566, size: 64, offset: 832)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3593, file: !3594, line: 100, baseType: !3634, size: 64, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3593, file: !3594, line: 101, baseType: !3566, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3593, file: !3594, line: 103, baseType: !3566, size: 64, offset: 1024)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3593, file: !3594, line: 105, baseType: !3566, size: 64, offset: 1088)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3593, file: !3594, line: 107, baseType: !3561, size: 64, offset: 1152)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3593, file: !3594, line: 109, baseType: !3662, size: 64, offset: 1216)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3594, line: 109, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3593, file: !3594, line: 111, baseType: !3666, size: 64, offset: 1280)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3594, line: 111, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3593, file: !3594, line: 112, baseType: !762, offset: 1344)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3593, file: !3594, line: 114, baseType: !209, size: 8, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3233, file: !66, line: 471, baseType: !3606, size: 64, offset: 832)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3233, file: !66, line: 473, baseType: !104, size: 64, offset: 896)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3233, file: !66, line: 475, baseType: !104, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3233, file: !66, line: 480, baseType: !144, size: 192, offset: 1024)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3233, file: !66, line: 484, baseType: !3675, size: 576, offset: 1216)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !66, line: 361, size: 576, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3675, file: !66, line: 362, baseType: !121, size: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3675, file: !66, line: 363, baseType: !121, size: 128, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3675, file: !66, line: 364, baseType: !121, size: 128, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3675, file: !66, line: 365, baseType: !121, size: 128, offset: 384)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3675, file: !66, line: 366, baseType: !209, size: 8, offset: 512)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3675, file: !66, line: 367, baseType: !65, size: 32, offset: 544)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3233, file: !66, line: 485, baseType: !3684, size: 2304, offset: 1792)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !73, line: 565, size: 2304, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3770, !3774}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3684, file: !73, line: 566, baseType: !3637, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3684, file: !73, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3684, file: !73, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3684, file: !73, line: 569, baseType: !209, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3684, file: !73, line: 570, baseType: !209, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3684, file: !73, line: 571, baseType: !209, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3684, file: !73, line: 572, baseType: !209, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3684, file: !73, line: 573, baseType: !209, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3684, file: !73, line: 574, baseType: !209, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3684, file: !73, line: 575, baseType: !209, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3684, file: !73, line: 576, baseType: !209, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3684, file: !73, line: 577, baseType: !527, size: 32, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3684, file: !73, line: 578, baseType: !159, offset: 96)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3684, file: !73, line: 580, baseType: !121, size: 128, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3684, file: !73, line: 581, baseType: !1503, size: 192, offset: 256)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3684, file: !73, line: 582, baseType: !3702, size: 64, offset: 448)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3704, line: 43, size: 1472, elements: !3705)
!3704 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !{!3706, !3707, !3708, !3709, !3710, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3703, file: !3704, line: 44, baseType: !310, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3703, file: !3704, line: 45, baseType: !224, size: 32, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3703, file: !3704, line: 46, baseType: !121, size: 128, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3703, file: !3704, line: 47, baseType: !159, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3703, file: !3704, line: 48, baseType: !3711, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !73, line: 533, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3703, file: !3704, line: 49, baseType: !3106, size: 320, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3703, file: !3704, line: 50, baseType: !119, size: 64, offset: 640)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3703, file: !3704, line: 51, baseType: !1306, size: 64, offset: 704)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3703, file: !3704, line: 52, baseType: !1306, size: 64, offset: 768)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3703, file: !3704, line: 53, baseType: !1306, size: 64, offset: 832)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3703, file: !3704, line: 54, baseType: !1306, size: 64, offset: 896)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3703, file: !3704, line: 55, baseType: !1306, size: 64, offset: 960)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3703, file: !3704, line: 56, baseType: !119, size: 64, offset: 1024)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3703, file: !3704, line: 57, baseType: !119, size: 64, offset: 1088)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3703, file: !3704, line: 58, baseType: !119, size: 64, offset: 1152)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3703, file: !3704, line: 59, baseType: !119, size: 64, offset: 1216)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3703, file: !3704, line: 60, baseType: !119, size: 64, offset: 1280)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3703, file: !3704, line: 61, baseType: !3535, size: 64, offset: 1344)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3703, file: !3704, line: 62, baseType: !209, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3703, file: !3704, line: 63, baseType: !209, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3684, file: !73, line: 583, baseType: !209, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3684, file: !73, line: 584, baseType: !209, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3684, file: !73, line: 585, baseType: !209, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3684, file: !73, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3684, file: !73, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3684, file: !73, line: 592, baseType: !1298, size: 512, offset: 576)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3684, file: !73, line: 593, baseType: !530, size: 64, offset: 1088)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3684, file: !73, line: 594, baseType: !1959, size: 256, offset: 1152)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3684, file: !73, line: 595, baseType: !1482, size: 128, offset: 1408)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3684, file: !73, line: 596, baseType: !3711, size: 64, offset: 1536)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3684, file: !73, line: 597, baseType: !866, size: 32, offset: 1600)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3684, file: !73, line: 598, baseType: !866, size: 32, offset: 1632)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3684, file: !73, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3684, file: !73, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3684, file: !73, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3684, file: !73, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3684, file: !73, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3684, file: !73, line: 604, baseType: !209, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3684, file: !73, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3684, file: !73, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3684, file: !73, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3684, file: !73, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3684, file: !73, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3684, file: !73, line: 610, baseType: !7, size: 32, offset: 1696)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3684, file: !73, line: 611, baseType: !72, size: 32, offset: 1728)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3684, file: !73, line: 612, baseType: !80, size: 32, offset: 1760)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3684, file: !73, line: 613, baseType: !224, size: 32, offset: 1792)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3684, file: !73, line: 614, baseType: !224, size: 32, offset: 1824)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3684, file: !73, line: 615, baseType: !530, size: 64, offset: 1856)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3684, file: !73, line: 616, baseType: !530, size: 64, offset: 1920)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3684, file: !73, line: 617, baseType: !530, size: 64, offset: 1984)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3684, file: !73, line: 618, baseType: !530, size: 64, offset: 2048)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3684, file: !73, line: 620, baseType: !3761, size: 64, offset: 2112)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !73, line: 536, size: 256, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3767}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3762, file: !73, line: 537, baseType: !159)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3762, file: !73, line: 538, baseType: !7, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3762, file: !73, line: 540, baseType: !121, size: 128, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3762, file: !73, line: 543, baseType: !3768, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !73, line: 534, flags: DIFlagFwdDecl)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3684, file: !73, line: 621, baseType: !3771, size: 64, offset: 2176)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3535, !1446}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3684, file: !73, line: 622, baseType: !3775, size: 64, offset: 2240)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !73, line: 622, flags: DIFlagFwdDecl)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3233, file: !66, line: 486, baseType: !3778, size: 64, offset: 4096)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !73, line: 642, size: 1792, elements: !3780)
!3780 = !{!3781, !3782, !3783, !3787, !3788, !3789}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3779, file: !73, line: 643, baseType: !3563, size: 1472)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3779, file: !73, line: 644, baseType: !3566, size: 64, offset: 1472)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3779, file: !73, line: 645, baseType: !3784, size: 64, offset: 1536)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !3535, !209}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3779, file: !73, line: 646, baseType: !3566, size: 64, offset: 1600)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3779, file: !73, line: 647, baseType: !3557, size: 64, offset: 1664)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3779, file: !73, line: 648, baseType: !3557, size: 64, offset: 1728)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3233, file: !66, line: 493, baseType: !3791, size: 64, offset: 4160)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !66, line: 493, flags: DIFlagFwdDecl)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3233, file: !66, line: 499, baseType: !121, size: 128, offset: 4224)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3233, file: !66, line: 502, baseType: !3795, size: 64, offset: 4352)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3797)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !66, line: 502, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3233, file: !66, line: 504, baseType: !3799, size: 64, offset: 4416)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3233, file: !66, line: 505, baseType: !530, size: 64, offset: 4480)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3233, file: !66, line: 510, baseType: !530, size: 64, offset: 4544)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3233, file: !66, line: 511, baseType: !3803, size: 64, offset: 4608)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3805)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !66, line: 511, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3233, file: !66, line: 513, baseType: !3807, size: 64, offset: 4672)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !66, line: 288, size: 128, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3808, file: !66, line: 293, baseType: !7, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3808, file: !66, line: 294, baseType: !119, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3233, file: !66, line: 515, baseType: !121, size: 128, offset: 4736)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3233, file: !66, line: 526, baseType: !3814, offset: 4864)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3815, line: 5, elements: !173)
!3815 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3233, file: !66, line: 528, baseType: !3817, size: 64, offset: 4864)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3819, line: 14, flags: DIFlagFwdDecl)
!3819 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3233, file: !66, line: 529, baseType: !3821, size: 64, offset: 4928)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3594, line: 22, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3233, file: !66, line: 534, baseType: !622, size: 32, offset: 4992)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3233, file: !66, line: 535, baseType: !527, size: 32, offset: 5024)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3233, file: !66, line: 537, baseType: !159, offset: 5056)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3233, file: !66, line: 538, baseType: !121, size: 128, offset: 5056)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3233, file: !66, line: 540, baseType: !3828, size: 64, offset: 5184)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3830, line: 54, size: 960, elements: !3831)
!3830 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3831 = !{!3832, !3833, !3834, !3835, !3836, !3837, !3838, !3842, !3846, !3847, !3848, !3849, !3853, !3857, !3858}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3829, file: !3830, line: 55, baseType: !310, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3829, file: !3830, line: 56, baseType: !747, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3829, file: !3830, line: 58, baseType: !3313, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3829, file: !3830, line: 59, baseType: !3313, size: 64, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3829, file: !3830, line: 60, baseType: !3242, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3829, file: !3830, line: 62, baseType: !3548, size: 64, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3829, file: !3830, line: 63, baseType: !3839, size: 64, offset: 384)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!596, !3535, !3555}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3829, file: !3830, line: 65, baseType: !3843, size: 64, offset: 448)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !3828}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3829, file: !3830, line: 66, baseType: !3557, size: 64, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3829, file: !3830, line: 68, baseType: !3566, size: 64, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3829, file: !3830, line: 70, baseType: !3349, size: 64, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3829, file: !3830, line: 71, baseType: !3850, size: 64, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!3366, !3535}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3829, file: !3830, line: 73, baseType: !3854, size: 64, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3535, !3383, !3384}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3829, file: !3830, line: 75, baseType: !3561, size: 64, offset: 832)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3829, file: !3830, line: 77, baseType: !3666, size: 64, offset: 896)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3233, file: !66, line: 541, baseType: !3313, size: 64, offset: 5248)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3233, file: !66, line: 543, baseType: !3557, size: 64, offset: 5312)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3233, file: !66, line: 544, baseType: !3862, size: 64, offset: 5376)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !66, line: 45, flags: DIFlagFwdDecl)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3233, file: !66, line: 545, baseType: !3865, size: 64, offset: 5440)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !66, line: 47, flags: DIFlagFwdDecl)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3233, file: !66, line: 547, baseType: !209, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3233, file: !66, line: 548, baseType: !209, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3233, file: !66, line: 549, baseType: !209, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3233, file: !66, line: 550, baseType: !209, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !306, file: !307, line: 194, baseType: !121, size: 128, offset: 9792)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !306, file: !307, line: 195, baseType: !121, size: 128, offset: 9920)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !306, file: !307, line: 197, baseType: !7, size: 32, offset: 10048)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !306, file: !307, line: 198, baseType: !7, size: 32, offset: 10080)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !306, file: !307, line: 199, baseType: !3876, size: 64, offset: 10112)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !306, file: !307, line: 201, baseType: !209, size: 8, offset: 10176)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !306, file: !307, line: 203, baseType: !3879, size: 192, offset: 10240)
!3879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1306, size: 192, elements: !768)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !6, line: 526, baseType: !310, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !300, file: !6, line: 527, baseType: !209, size: 8, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "reports", scope: !300, file: !6, line: 528, baseType: !121, size: 128, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !300, file: !6, line: 529, baseType: !7, size: 32, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dpad", scope: !257, file: !6, line: 471, baseType: !99, size: 16, offset: 832)
!3885 = !{!3886}
!3886 = !DISubrange(count: 256)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "maxfield", scope: !247, file: !6, line: 483, baseType: !7, size: 32, offset: 16768)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !247, file: !6, line: 484, baseType: !7, size: 32, offset: 16800)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !247, file: !6, line: 485, baseType: !211, size: 64, offset: 16832)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "led_work", scope: !212, file: !6, line: 564, baseType: !1959, size: 256, offset: 50368)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "driver_input_lock", scope: !212, file: !6, line: 566, baseType: !3892, size: 192, offset: 50624)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !3893, line: 15, size: 192, elements: !3894)
!3893 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!3894 = !{!3895, !3896, !3897}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3892, file: !3893, line: 16, baseType: !892)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3892, file: !3893, line: 17, baseType: !7, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !3892, file: !3893, line: 18, baseType: !121, size: 128, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !212, file: !6, line: 567, baseType: !3233, size: 5568, offset: 50816)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !212, file: !6, line: 568, baseType: !3900, size: 64, offset: 56384)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_driver", file: !6, line: 738, size: 2432, elements: !3902)
!3902 = !{!3903, !3904, !3906, !3907, !3908, !3912, !3916, !3920, !3926, !3931, !3939, !3943, !3947, !3951, !3957, !3958, !3962, !3966, !3970, !3974, !3975}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3901, file: !6, line: 739, baseType: !596, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3901, file: !6, line: 740, baseType: !3905, size: 64, offset: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_list", scope: !3901, file: !6, line: 742, baseType: !121, size: 128, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_lock", scope: !3901, file: !6, line: 743, baseType: !159, offset: 256)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3901, file: !6, line: 745, baseType: !3909, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!209, !211, !209}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3901, file: !6, line: 746, baseType: !3913, size: 64, offset: 320)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!224, !211, !3905}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3901, file: !6, line: 747, baseType: !3917, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !211}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "report_table", scope: !3901, file: !6, line: 749, baseType: !3921, size: 64, offset: 448)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3923)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_id", file: !6, line: 688, size: 32, elements: !3924)
!3924 = !{!3925}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !3923, file: !6, line: 689, baseType: !115, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "raw_event", scope: !3901, file: !6, line: 750, baseType: !3927, size: 64, offset: 512)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!224, !211, !246, !3930, !224}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "usage_table", scope: !3901, file: !6, line: 752, baseType: !3932, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage_id", file: !6, line: 691, size: 96, elements: !3935)
!3935 = !{!3936, !3937, !3938}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "usage_hid", scope: !3934, file: !6, line: 692, baseType: !115, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "usage_type", scope: !3934, file: !6, line: 693, baseType: !115, size: 32, offset: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "usage_code", scope: !3934, file: !6, line: 694, baseType: !115, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3901, file: !6, line: 753, baseType: !3940, size: 64, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!224, !211, !256, !263, !289}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !3901, file: !6, line: 755, baseType: !3944, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{null, !211, !246}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "report_fixup", scope: !3901, file: !6, line: 757, baseType: !3948, size: 64, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!215, !211, !215, !362}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapping", scope: !3901, file: !6, line: 760, baseType: !3952, size: 64, offset: 832)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!224, !211, !299, !256, !263, !3955, !824}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapped", scope: !3901, file: !6, line: 763, baseType: !3952, size: 64, offset: 896)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "input_configured", scope: !3901, file: !6, line: 766, baseType: !3959, size: 64, offset: 960)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!224, !211, !299}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "feature_mapping", scope: !3901, file: !6, line: 768, baseType: !3963, size: 64, offset: 1024)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !211, !256, !263}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3901, file: !6, line: 772, baseType: !3967, size: 64, offset: 1088)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!224, !211, !3637}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3901, file: !6, line: 773, baseType: !3971, size: 64, offset: 1152)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!224, !211}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3901, file: !6, line: 774, baseType: !3971, size: 64, offset: 1216)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3901, file: !6, line: 777, baseType: !3607, size: 1152, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ll_driver", scope: !212, file: !6, line: 570, baseType: !3977, size: 64, offset: 56448)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_ll_driver", file: !6, line: 798, size: 704, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3988, !3989, !3993, !3994, !3998, !4002}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3978, file: !6, line: 799, baseType: !3971, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3978, file: !6, line: 800, baseType: !3917, size: 64, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3978, file: !6, line: 802, baseType: !3971, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3978, file: !6, line: 803, baseType: !3917, size: 64, offset: 192)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3978, file: !6, line: 805, baseType: !3985, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!224, !211, !224}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !3978, file: !6, line: 807, baseType: !3971, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3978, file: !6, line: 809, baseType: !3990, size: 64, offset: 384)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{null, !211, !246, !224}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3978, file: !6, line: 812, baseType: !3971, size: 64, offset: 448)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "raw_request", scope: !3978, file: !6, line: 814, baseType: !3995, size: 64, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!224, !211, !193, !215, !689, !193, !224}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "output_report", scope: !3978, file: !6, line: 818, baseType: !3999, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!224, !211, !215, !689}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !3978, file: !6, line: 820, baseType: !4003, size: 64, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!224, !211, !224, !224, !224}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_lock", scope: !212, file: !6, line: 571, baseType: !144, size: 192, offset: 56512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_count", scope: !212, file: !6, line: 572, baseType: !7, size: 32, offset: 56704)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !212, file: !6, line: 590, baseType: !119, size: 64, offset: 56768)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !212, file: !6, line: 591, baseType: !7, size: 32, offset: 56832)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !212, file: !6, line: 592, baseType: !7, size: 32, offset: 56864)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "io_started", scope: !212, file: !6, line: 593, baseType: !209, size: 8, offset: 56896)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !212, file: !6, line: 595, baseType: !121, size: 128, offset: 56960)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev", scope: !212, file: !6, line: 596, baseType: !104, size: 64, offset: 57088)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "hidraw", scope: !212, file: !6, line: 597, baseType: !104, size: 64, offset: 57152)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !6, line: 599, baseType: !3623, size: 1024, offset: 57216)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !212, file: !6, line: 600, baseType: !4017, size: 512, offset: 58240)
!4017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 512, elements: !1881)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !212, file: !6, line: 601, baseType: !4017, size: 512, offset: 58752)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !212, file: !6, line: 603, baseType: !104, size: 64, offset: 59264)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ff_init", scope: !212, file: !6, line: 606, baseType: !3971, size: 64, offset: 59328)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_connect", scope: !212, file: !6, line: 609, baseType: !4022, size: 64, offset: 59392)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!224, !211, !7}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_disconnect", scope: !212, file: !6, line: 610, baseType: !3917, size: 64, offset: 59456)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_hid_event", scope: !212, file: !6, line: 611, baseType: !4027, size: 64, offset: 59520)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{null, !211, !256, !263, !289}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_report_event", scope: !212, file: !6, line: 613, baseType: !3944, size: 64, offset: 59584)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !212, file: !6, line: 616, baseType: !101, size: 16, offset: 59648)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !212, file: !6, line: 617, baseType: !494, size: 64, offset: 59712)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "debug_rdesc", scope: !212, file: !6, line: 618, baseType: !494, size: 64, offset: 59776)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "debug_events", scope: !212, file: !6, line: 619, baseType: !494, size: 64, offset: 59840)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list", scope: !212, file: !6, line: 620, baseType: !121, size: 128, offset: 59904)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list_lock", scope: !212, file: !6, line: 621, baseType: !159, offset: 60032)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "debug_wait", scope: !212, file: !6, line: 622, baseType: !1482, size: 128, offset: 60032)
!4038 = !DILocalVariable(name: "hdev", arg: 1, scope: !206, file: !3, line: 929, type: !211)
!4039 = !DILocation(line: 929, column: 36, scope: !206)
!4040 = !DILocalVariable(name: "i", scope: !206, file: !3, line: 931, type: !224)
!4041 = !DILocation(line: 931, column: 6, scope: !206)
!4042 = !DILocation(line: 933, column: 6, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !206, file: !3, line: 933, column: 6)
!4044 = !DILocation(line: 933, column: 12, scope: !4043)
!4045 = !DILocation(line: 933, column: 19, scope: !4043)
!4046 = !DILocation(line: 933, column: 6, scope: !206)
!4047 = !DILocation(line: 934, column: 3, scope: !4043)
!4048 = !DILocation(line: 935, column: 6, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !206, file: !3, line: 935, column: 6)
!4050 = !DILocation(line: 935, column: 12, scope: !4049)
!4051 = !DILocation(line: 935, column: 19, scope: !4049)
!4052 = !DILocation(line: 935, column: 6, scope: !206)
!4053 = !DILocation(line: 936, column: 3, scope: !4049)
!4054 = !DILocation(line: 938, column: 10, scope: !206)
!4055 = !DILocation(line: 938, column: 16, scope: !206)
!4056 = !DILocation(line: 938, column: 2, scope: !206)
!4057 = !DILocation(line: 941, column: 7, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 941, column: 7)
!4059 = distinct !DILexicalBlock(scope: !206, file: !3, line: 938, column: 24)
!4060 = !DILocation(line: 941, column: 13, scope: !4058)
!4061 = !DILocation(line: 941, column: 21, scope: !4058)
!4062 = !DILocation(line: 941, column: 58, scope: !4058)
!4063 = !DILocation(line: 942, column: 7, scope: !4058)
!4064 = !DILocation(line: 942, column: 13, scope: !4058)
!4065 = !DILocation(line: 942, column: 21, scope: !4058)
!4066 = !DILocation(line: 941, column: 7, scope: !4059)
!4067 = !DILocation(line: 943, column: 4, scope: !4058)
!4068 = !DILocation(line: 944, column: 3, scope: !4059)
!4069 = !DILocation(line: 946, column: 7, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 946, column: 7)
!4071 = !DILocation(line: 946, column: 13, scope: !4070)
!4072 = !DILocation(line: 946, column: 21, scope: !4070)
!4073 = !DILocation(line: 946, column: 61, scope: !4070)
!4074 = !DILocation(line: 947, column: 7, scope: !4070)
!4075 = !DILocation(line: 947, column: 13, scope: !4070)
!4076 = !DILocation(line: 947, column: 21, scope: !4070)
!4077 = !DILocation(line: 946, column: 7, scope: !4059)
!4078 = !DILocation(line: 948, column: 4, scope: !4070)
!4079 = !DILocation(line: 956, column: 7, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 956, column: 7)
!4081 = !DILocation(line: 956, column: 13, scope: !4080)
!4082 = !DILocation(line: 956, column: 21, scope: !4080)
!4083 = !DILocation(line: 956, column: 56, scope: !4080)
!4084 = !DILocation(line: 957, column: 15, scope: !4080)
!4085 = !DILocation(line: 957, column: 21, scope: !4080)
!4086 = !DILocation(line: 957, column: 8, scope: !4080)
!4087 = !DILocation(line: 956, column: 7, scope: !4059)
!4088 = !DILocation(line: 958, column: 4, scope: !4080)
!4089 = !DILocation(line: 959, column: 3, scope: !4059)
!4090 = !DILocation(line: 961, column: 7, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 961, column: 7)
!4092 = !DILocation(line: 961, column: 13, scope: !4091)
!4093 = !DILocation(line: 961, column: 21, scope: !4091)
!4094 = !DILocation(line: 961, column: 60, scope: !4091)
!4095 = !DILocation(line: 962, column: 7, scope: !4091)
!4096 = !DILocation(line: 962, column: 13, scope: !4091)
!4097 = !DILocation(line: 962, column: 21, scope: !4091)
!4098 = !DILocation(line: 961, column: 7, scope: !4059)
!4099 = !DILocation(line: 963, column: 4, scope: !4091)
!4100 = !DILocation(line: 964, column: 3, scope: !4059)
!4101 = !DILocation(line: 966, column: 7, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 966, column: 7)
!4103 = !DILocation(line: 966, column: 13, scope: !4102)
!4104 = !DILocation(line: 966, column: 21, scope: !4102)
!4105 = !DILocation(line: 966, column: 59, scope: !4102)
!4106 = !DILocation(line: 967, column: 7, scope: !4102)
!4107 = !DILocation(line: 967, column: 13, scope: !4102)
!4108 = !DILocation(line: 967, column: 21, scope: !4102)
!4109 = !DILocation(line: 966, column: 7, scope: !4059)
!4110 = !DILocation(line: 968, column: 4, scope: !4102)
!4111 = !DILocation(line: 969, column: 3, scope: !4059)
!4112 = !DILocation(line: 971, column: 7, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 971, column: 7)
!4114 = !DILocation(line: 971, column: 13, scope: !4113)
!4115 = !DILocation(line: 971, column: 21, scope: !4113)
!4116 = !DILocation(line: 971, column: 49, scope: !4113)
!4117 = !DILocation(line: 972, column: 7, scope: !4113)
!4118 = !DILocation(line: 972, column: 13, scope: !4113)
!4119 = !DILocation(line: 972, column: 18, scope: !4113)
!4120 = !DILocation(line: 971, column: 7, scope: !4059)
!4121 = !DILocation(line: 973, column: 4, scope: !4113)
!4122 = !DILocation(line: 974, column: 3, scope: !4059)
!4123 = !DILocation(line: 977, column: 8, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 977, column: 7)
!4125 = !DILocation(line: 977, column: 14, scope: !4124)
!4126 = !DILocation(line: 977, column: 22, scope: !4124)
!4127 = !DILocation(line: 977, column: 60, scope: !4124)
!4128 = !DILocation(line: 978, column: 8, scope: !4124)
!4129 = !DILocation(line: 978, column: 14, scope: !4124)
!4130 = !DILocation(line: 978, column: 22, scope: !4124)
!4131 = !DILocation(line: 978, column: 60, scope: !4124)
!4132 = !DILocation(line: 979, column: 8, scope: !4124)
!4133 = !DILocation(line: 979, column: 14, scope: !4124)
!4134 = !DILocation(line: 979, column: 22, scope: !4124)
!4135 = !DILocation(line: 979, column: 60, scope: !4124)
!4136 = !DILocation(line: 980, column: 8, scope: !4124)
!4137 = !DILocation(line: 980, column: 14, scope: !4124)
!4138 = !DILocation(line: 980, column: 22, scope: !4124)
!4139 = !DILocation(line: 977, column: 7, scope: !4059)
!4140 = !DILocation(line: 981, column: 4, scope: !4124)
!4141 = !DILocation(line: 982, column: 3, scope: !4059)
!4142 = !DILocation(line: 990, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 990, column: 7)
!4144 = !DILocation(line: 990, column: 13, scope: !4143)
!4145 = !DILocation(line: 990, column: 21, scope: !4143)
!4146 = !DILocation(line: 990, column: 50, scope: !4143)
!4147 = !DILocation(line: 991, column: 7, scope: !4143)
!4148 = !DILocation(line: 991, column: 13, scope: !4143)
!4149 = !DILocation(line: 991, column: 17, scope: !4143)
!4150 = !DILocation(line: 991, column: 28, scope: !4143)
!4151 = !DILocation(line: 992, column: 15, scope: !4143)
!4152 = !DILocation(line: 992, column: 21, scope: !4143)
!4153 = !DILocation(line: 992, column: 7, scope: !4143)
!4154 = !DILocation(line: 992, column: 57, scope: !4143)
!4155 = !DILocation(line: 990, column: 7, scope: !4059)
!4156 = !DILocation(line: 993, column: 4, scope: !4143)
!4157 = !DILocation(line: 994, column: 3, scope: !4059)
!4158 = !DILocation(line: 1001, column: 8, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 1001, column: 7)
!4160 = !DILocation(line: 1001, column: 14, scope: !4159)
!4161 = !DILocation(line: 1001, column: 22, scope: !4159)
!4162 = !DILocation(line: 1001, column: 32, scope: !4159)
!4163 = !DILocation(line: 1001, column: 35, scope: !4159)
!4164 = !DILocation(line: 1001, column: 41, scope: !4159)
!4165 = !DILocation(line: 1001, column: 49, scope: !4159)
!4166 = !DILocation(line: 1001, column: 7, scope: !4059)
!4167 = !DILocation(line: 1002, column: 11, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 1002, column: 4)
!4169 = !DILocation(line: 1002, column: 9, scope: !4168)
!4170 = !DILocation(line: 1002, column: 36, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 1002, column: 4)
!4172 = !DILocation(line: 1002, column: 23, scope: !4171)
!4173 = !DILocation(line: 1002, column: 39, scope: !4171)
!4174 = !DILocation(line: 1002, column: 16, scope: !4171)
!4175 = !DILocation(line: 1002, column: 4, scope: !4168)
!4176 = !DILocation(line: 1003, column: 18, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 1003, column: 9)
!4178 = !DILocation(line: 1003, column: 24, scope: !4177)
!4179 = !DILocation(line: 1003, column: 43, scope: !4177)
!4180 = !DILocation(line: 1003, column: 30, scope: !4177)
!4181 = !DILocation(line: 1003, column: 46, scope: !4177)
!4182 = !DILocation(line: 1004, column: 31, scope: !4177)
!4183 = !DILocation(line: 1004, column: 18, scope: !4177)
!4184 = !DILocation(line: 1004, column: 34, scope: !4177)
!4185 = !DILocation(line: 1004, column: 11, scope: !4177)
!4186 = !DILocation(line: 1003, column: 10, scope: !4177)
!4187 = !DILocation(line: 1003, column: 9, scope: !4171)
!4188 = !DILocation(line: 1005, column: 6, scope: !4177)
!4189 = !DILocation(line: 1004, column: 37, scope: !4177)
!4190 = !DILocation(line: 1002, column: 44, scope: !4171)
!4191 = !DILocation(line: 1002, column: 4, scope: !4171)
!4192 = distinct !{!4192, !4175, !4193}
!4193 = !DILocation(line: 1005, column: 13, scope: !4168)
!4194 = !DILocation(line: 1006, column: 3, scope: !4059)
!4195 = !DILocation(line: 1009, column: 6, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !206, file: !3, line: 1009, column: 6)
!4197 = !DILocation(line: 1009, column: 12, scope: !4196)
!4198 = !DILocation(line: 1009, column: 17, scope: !4196)
!4199 = !DILocation(line: 1009, column: 38, scope: !4196)
!4200 = !DILocation(line: 1010, column: 19, scope: !4196)
!4201 = !DILocation(line: 1010, column: 6, scope: !4196)
!4202 = !DILocation(line: 1009, column: 6, scope: !206)
!4203 = !DILocation(line: 1011, column: 3, scope: !4196)
!4204 = !DILocation(line: 1013, column: 24, scope: !206)
!4205 = !DILocation(line: 1013, column: 11, scope: !206)
!4206 = !DILocation(line: 1013, column: 10, scope: !206)
!4207 = !DILocation(line: 1013, column: 9, scope: !206)
!4208 = !DILocation(line: 1013, column: 2, scope: !206)
!4209 = !DILocation(line: 1014, column: 1, scope: !206)
!4210 = distinct !DISubprogram(name: "hid_quirks_init", scope: !3, file: !3, line: 1148, type: !4211, scopeLine: 1149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!224, !4213, !99, !224}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!4214 = !DILocalVariable(name: "quirks_param", arg: 1, scope: !4210, file: !3, line: 1148, type: !4213)
!4215 = !DILocation(line: 1148, column: 28, scope: !4210)
!4216 = !DILocalVariable(name: "bus", arg: 2, scope: !4210, file: !3, line: 1148, type: !99)
!4217 = !DILocation(line: 1148, column: 48, scope: !4210)
!4218 = !DILocalVariable(name: "count", arg: 3, scope: !4210, file: !3, line: 1148, type: !224)
!4219 = !DILocation(line: 1148, column: 57, scope: !4210)
!4220 = !DILocalVariable(name: "id", scope: !4210, file: !3, line: 1150, type: !109)
!4221 = !DILocation(line: 1150, column: 23, scope: !4210)
!4222 = !DILocalVariable(name: "n", scope: !4210, file: !3, line: 1151, type: !224)
!4223 = !DILocation(line: 1151, column: 6, scope: !4210)
!4224 = !DILocalVariable(name: "m", scope: !4210, file: !3, line: 1151, type: !224)
!4225 = !DILocation(line: 1151, column: 13, scope: !4210)
!4226 = !DILocalVariable(name: "vendor", scope: !4210, file: !3, line: 1152, type: !101)
!4227 = !DILocation(line: 1152, column: 21, scope: !4210)
!4228 = !DILocalVariable(name: "product", scope: !4210, file: !3, line: 1152, type: !101)
!4229 = !DILocation(line: 1152, column: 29, scope: !4210)
!4230 = !DILocalVariable(name: "quirks", scope: !4210, file: !3, line: 1153, type: !527)
!4231 = !DILocation(line: 1153, column: 6, scope: !4210)
!4232 = !DILocation(line: 1155, column: 11, scope: !4210)
!4233 = !DILocation(line: 1155, column: 5, scope: !4210)
!4234 = !DILocation(line: 1155, column: 9, scope: !4210)
!4235 = !DILocation(line: 1157, column: 2, scope: !4210)
!4236 = !DILocation(line: 1157, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 1157, column: 2)
!4238 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 1157, column: 2)
!4239 = !DILocation(line: 1157, column: 13, scope: !4237)
!4240 = !DILocation(line: 1157, column: 11, scope: !4237)
!4241 = !DILocation(line: 1157, column: 19, scope: !4237)
!4242 = !DILocation(line: 1157, column: 22, scope: !4237)
!4243 = !DILocation(line: 1157, column: 35, scope: !4237)
!4244 = !DILocation(line: 0, scope: !4237)
!4245 = !DILocation(line: 1157, column: 2, scope: !4238)
!4246 = !DILocation(line: 1159, column: 14, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 1157, column: 44)
!4248 = !DILocation(line: 1159, column: 27, scope: !4247)
!4249 = !DILocation(line: 1159, column: 7, scope: !4247)
!4250 = !DILocation(line: 1159, column: 5, scope: !4247)
!4251 = !DILocation(line: 1162, column: 22, scope: !4247)
!4252 = !DILocation(line: 1162, column: 15, scope: !4247)
!4253 = !DILocation(line: 1162, column: 6, scope: !4247)
!4254 = !DILocation(line: 1162, column: 13, scope: !4247)
!4255 = !DILocation(line: 1163, column: 23, scope: !4247)
!4256 = !DILocation(line: 1163, column: 16, scope: !4247)
!4257 = !DILocation(line: 1163, column: 6, scope: !4247)
!4258 = !DILocation(line: 1163, column: 14, scope: !4247)
!4259 = !DILocation(line: 1165, column: 7, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 1165, column: 7)
!4261 = !DILocation(line: 1165, column: 9, scope: !4260)
!4262 = !DILocation(line: 1165, column: 14, scope: !4260)
!4263 = !DILocation(line: 1166, column: 30, scope: !4260)
!4264 = !DILocation(line: 1166, column: 7, scope: !4260)
!4265 = !DILocation(line: 1166, column: 38, scope: !4260)
!4266 = !DILocation(line: 1165, column: 7, scope: !4247)
!4267 = !DILocation(line: 1167, column: 4, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 1166, column: 44)
!4269 = !DILocation(line: 1169, column: 3, scope: !4268)
!4270 = !DILocation(line: 1170, column: 2, scope: !4247)
!4271 = !DILocation(line: 1157, column: 40, scope: !4237)
!4272 = !DILocation(line: 1157, column: 2, scope: !4237)
!4273 = distinct !{!4273, !4245, !4274}
!4274 = !DILocation(line: 1170, column: 2, scope: !4238)
!4275 = !DILocation(line: 1172, column: 2, scope: !4210)
!4276 = distinct !DISubprogram(name: "hid_modify_dquirk", scope: !3, file: !3, line: 1072, type: !4277, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!224, !3905, !4279}
!4279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!4280 = !DILocalVariable(name: "s", arg: 1, scope: !4281, file: !92, line: 445, type: !1045)
!4281 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !92, file: !92, line: 445, type: !4282, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!104, !1045, !102, !689}
!4284 = !DILocation(line: 445, column: 72, scope: !4281, inlinedAt: !4285)
!4285 = distinct !DILocation(line: 552, column: 10, scope: !4286, inlinedAt: !4291)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !92, line: 540, column: 34)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !92, line: 540, column: 6)
!4288 = distinct !DISubprogram(name: "kmalloc", scope: !92, file: !92, line: 538, type: !4289, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!104, !689, !102}
!4291 = distinct !DILocation(line: 1084, column: 10, scope: !4276)
!4292 = !DILocalVariable(name: "flags", arg: 2, scope: !4281, file: !92, line: 446, type: !102)
!4293 = !DILocation(line: 446, column: 9, scope: !4281, inlinedAt: !4285)
!4294 = !DILocalVariable(name: "size", arg: 3, scope: !4281, file: !92, line: 446, type: !689)
!4295 = !DILocation(line: 446, column: 23, scope: !4281, inlinedAt: !4285)
!4296 = !DILocalVariable(name: "ret", scope: !4281, file: !92, line: 448, type: !104)
!4297 = !DILocation(line: 448, column: 8, scope: !4281, inlinedAt: !4285)
!4298 = !DILocalVariable(name: "flags", arg: 1, scope: !4299, file: !92, line: 318, type: !102)
!4299 = distinct !DISubprogram(name: "kmalloc_type", scope: !92, file: !92, line: 318, type: !4300, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!91, !102}
!4302 = !DILocation(line: 318, column: 67, scope: !4299, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 553, column: 20, scope: !4286, inlinedAt: !4291)
!4304 = !DILocalVariable(name: "size", arg: 1, scope: !4305, file: !92, line: 346, type: !689)
!4305 = distinct !DISubprogram(name: "kmalloc_index", scope: !92, file: !92, line: 346, type: !4306, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!7, !689}
!4308 = !DILocation(line: 346, column: 58, scope: !4305, inlinedAt: !4309)
!4309 = distinct !DILocation(line: 547, column: 11, scope: !4286, inlinedAt: !4291)
!4310 = !DILocalVariable(name: "size", arg: 1, scope: !4311, file: !92, line: 472, type: !689)
!4311 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !92, file: !92, line: 472, type: !4312, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!104, !689, !102, !7}
!4314 = !DILocation(line: 472, column: 28, scope: !4311, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 481, column: 9, scope: !4316, inlinedAt: !4317)
!4316 = distinct !DISubprogram(name: "kmalloc_large", scope: !92, file: !92, line: 478, type: !4289, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4317 = distinct !DILocation(line: 545, column: 11, scope: !4318, inlinedAt: !4291)
!4318 = distinct !DILexicalBlock(scope: !4286, file: !92, line: 544, column: 7)
!4319 = !DILocalVariable(name: "flags", arg: 2, scope: !4311, file: !92, line: 472, type: !102)
!4320 = !DILocation(line: 472, column: 40, scope: !4311, inlinedAt: !4315)
!4321 = !DILocalVariable(name: "order", arg: 3, scope: !4311, file: !92, line: 472, type: !7)
!4322 = !DILocation(line: 472, column: 60, scope: !4311, inlinedAt: !4315)
!4323 = !DILocalVariable(name: "size", arg: 1, scope: !4316, file: !92, line: 478, type: !689)
!4324 = !DILocation(line: 478, column: 51, scope: !4316, inlinedAt: !4317)
!4325 = !DILocalVariable(name: "flags", arg: 2, scope: !4316, file: !92, line: 478, type: !102)
!4326 = !DILocation(line: 478, column: 63, scope: !4316, inlinedAt: !4317)
!4327 = !DILocalVariable(name: "order", scope: !4316, file: !92, line: 480, type: !7)
!4328 = !DILocation(line: 480, column: 15, scope: !4316, inlinedAt: !4317)
!4329 = !DILocalVariable(name: "size", arg: 1, scope: !4288, file: !92, line: 538, type: !689)
!4330 = !DILocation(line: 538, column: 45, scope: !4288, inlinedAt: !4291)
!4331 = !DILocalVariable(name: "flags", arg: 2, scope: !4288, file: !92, line: 538, type: !102)
!4332 = !DILocation(line: 538, column: 57, scope: !4288, inlinedAt: !4291)
!4333 = !DILocalVariable(name: "index", scope: !4286, file: !92, line: 542, type: !7)
!4334 = !DILocation(line: 542, column: 16, scope: !4286, inlinedAt: !4291)
!4335 = !DILocalVariable(name: "id", arg: 1, scope: !4276, file: !3, line: 1072, type: !3905)
!4336 = !DILocation(line: 1072, column: 58, scope: !4276)
!4337 = !DILocalVariable(name: "quirks", arg: 2, scope: !4276, file: !3, line: 1073, type: !4279)
!4338 = !DILocation(line: 1073, column: 29, scope: !4276)
!4339 = !DILocalVariable(name: "hdev", scope: !4276, file: !3, line: 1075, type: !211)
!4340 = !DILocation(line: 1075, column: 21, scope: !4276)
!4341 = !DILocalVariable(name: "q_new", scope: !4276, file: !3, line: 1076, type: !105)
!4342 = !DILocation(line: 1076, column: 29, scope: !4276)
!4343 = !DILocalVariable(name: "q", scope: !4276, file: !3, line: 1076, type: !105)
!4344 = !DILocation(line: 1076, column: 37, scope: !4276)
!4345 = !DILocalVariable(name: "list_edited", scope: !4276, file: !3, line: 1077, type: !224)
!4346 = !DILocation(line: 1077, column: 6, scope: !4276)
!4347 = !DILocalVariable(name: "ret", scope: !4276, file: !3, line: 1078, type: !224)
!4348 = !DILocation(line: 1078, column: 6, scope: !4276)
!4349 = !DILocation(line: 1080, column: 9, scope: !4276)
!4350 = !DILocation(line: 1080, column: 7, scope: !4276)
!4351 = !DILocation(line: 1081, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1081, column: 6)
!4353 = !DILocation(line: 1081, column: 6, scope: !4276)
!4354 = !DILocation(line: 1082, column: 3, scope: !4352)
!4355 = !DILocation(line: 540, column: 27, scope: !4287, inlinedAt: !4291)
!4356 = !DILocation(line: 540, column: 6, scope: !4287, inlinedAt: !4291)
!4357 = !DILocation(line: 540, column: 6, scope: !4288, inlinedAt: !4291)
!4358 = !DILocation(line: 544, column: 7, scope: !4318, inlinedAt: !4291)
!4359 = !DILocation(line: 544, column: 12, scope: !4318, inlinedAt: !4291)
!4360 = !DILocation(line: 544, column: 7, scope: !4286, inlinedAt: !4291)
!4361 = !DILocation(line: 545, column: 25, scope: !4318, inlinedAt: !4291)
!4362 = !DILocation(line: 545, column: 31, scope: !4318, inlinedAt: !4291)
!4363 = !DILocation(line: 480, column: 33, scope: !4316, inlinedAt: !4317)
!4364 = !DILocation(line: 480, column: 23, scope: !4316, inlinedAt: !4317)
!4365 = !DILocation(line: 481, column: 29, scope: !4316, inlinedAt: !4317)
!4366 = !DILocation(line: 481, column: 35, scope: !4316, inlinedAt: !4317)
!4367 = !DILocation(line: 481, column: 42, scope: !4316, inlinedAt: !4317)
!4368 = !DILocation(line: 474, column: 23, scope: !4311, inlinedAt: !4315)
!4369 = !DILocation(line: 474, column: 29, scope: !4311, inlinedAt: !4315)
!4370 = !DILocation(line: 474, column: 36, scope: !4311, inlinedAt: !4315)
!4371 = !DILocation(line: 474, column: 9, scope: !4311, inlinedAt: !4315)
!4372 = !DILocation(line: 545, column: 4, scope: !4318, inlinedAt: !4291)
!4373 = !DILocation(line: 547, column: 25, scope: !4286, inlinedAt: !4291)
!4374 = !DILocation(line: 348, column: 7, scope: !4375, inlinedAt: !4309)
!4375 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 348, column: 6)
!4376 = !DILocation(line: 348, column: 6, scope: !4305, inlinedAt: !4309)
!4377 = !DILocation(line: 349, column: 3, scope: !4375, inlinedAt: !4309)
!4378 = !DILocation(line: 351, column: 6, scope: !4379, inlinedAt: !4309)
!4379 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 351, column: 6)
!4380 = !DILocation(line: 351, column: 11, scope: !4379, inlinedAt: !4309)
!4381 = !DILocation(line: 351, column: 6, scope: !4305, inlinedAt: !4309)
!4382 = !DILocation(line: 352, column: 3, scope: !4379, inlinedAt: !4309)
!4383 = !DILocation(line: 354, column: 32, scope: !4384, inlinedAt: !4309)
!4384 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 354, column: 6)
!4385 = !DILocation(line: 354, column: 37, scope: !4384, inlinedAt: !4309)
!4386 = !DILocation(line: 354, column: 42, scope: !4384, inlinedAt: !4309)
!4387 = !DILocation(line: 354, column: 45, scope: !4384, inlinedAt: !4309)
!4388 = !DILocation(line: 354, column: 50, scope: !4384, inlinedAt: !4309)
!4389 = !DILocation(line: 354, column: 6, scope: !4305, inlinedAt: !4309)
!4390 = !DILocation(line: 355, column: 3, scope: !4384, inlinedAt: !4309)
!4391 = !DILocation(line: 356, column: 32, scope: !4392, inlinedAt: !4309)
!4392 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 356, column: 6)
!4393 = !DILocation(line: 356, column: 37, scope: !4392, inlinedAt: !4309)
!4394 = !DILocation(line: 356, column: 43, scope: !4392, inlinedAt: !4309)
!4395 = !DILocation(line: 356, column: 46, scope: !4392, inlinedAt: !4309)
!4396 = !DILocation(line: 356, column: 51, scope: !4392, inlinedAt: !4309)
!4397 = !DILocation(line: 356, column: 6, scope: !4305, inlinedAt: !4309)
!4398 = !DILocation(line: 357, column: 3, scope: !4392, inlinedAt: !4309)
!4399 = !DILocation(line: 358, column: 6, scope: !4400, inlinedAt: !4309)
!4400 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 358, column: 6)
!4401 = !DILocation(line: 358, column: 11, scope: !4400, inlinedAt: !4309)
!4402 = !DILocation(line: 358, column: 6, scope: !4305, inlinedAt: !4309)
!4403 = !DILocation(line: 358, column: 26, scope: !4400, inlinedAt: !4309)
!4404 = !DILocation(line: 359, column: 6, scope: !4405, inlinedAt: !4309)
!4405 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 359, column: 6)
!4406 = !DILocation(line: 359, column: 11, scope: !4405, inlinedAt: !4309)
!4407 = !DILocation(line: 359, column: 6, scope: !4305, inlinedAt: !4309)
!4408 = !DILocation(line: 359, column: 26, scope: !4405, inlinedAt: !4309)
!4409 = !DILocation(line: 360, column: 6, scope: !4410, inlinedAt: !4309)
!4410 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 360, column: 6)
!4411 = !DILocation(line: 360, column: 11, scope: !4410, inlinedAt: !4309)
!4412 = !DILocation(line: 360, column: 6, scope: !4305, inlinedAt: !4309)
!4413 = !DILocation(line: 360, column: 26, scope: !4410, inlinedAt: !4309)
!4414 = !DILocation(line: 361, column: 6, scope: !4415, inlinedAt: !4309)
!4415 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 361, column: 6)
!4416 = !DILocation(line: 361, column: 11, scope: !4415, inlinedAt: !4309)
!4417 = !DILocation(line: 361, column: 6, scope: !4305, inlinedAt: !4309)
!4418 = !DILocation(line: 361, column: 26, scope: !4415, inlinedAt: !4309)
!4419 = !DILocation(line: 362, column: 6, scope: !4420, inlinedAt: !4309)
!4420 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 362, column: 6)
!4421 = !DILocation(line: 362, column: 11, scope: !4420, inlinedAt: !4309)
!4422 = !DILocation(line: 362, column: 6, scope: !4305, inlinedAt: !4309)
!4423 = !DILocation(line: 362, column: 26, scope: !4420, inlinedAt: !4309)
!4424 = !DILocation(line: 363, column: 6, scope: !4425, inlinedAt: !4309)
!4425 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 363, column: 6)
!4426 = !DILocation(line: 363, column: 11, scope: !4425, inlinedAt: !4309)
!4427 = !DILocation(line: 363, column: 6, scope: !4305, inlinedAt: !4309)
!4428 = !DILocation(line: 363, column: 26, scope: !4425, inlinedAt: !4309)
!4429 = !DILocation(line: 364, column: 6, scope: !4430, inlinedAt: !4309)
!4430 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 364, column: 6)
!4431 = !DILocation(line: 364, column: 11, scope: !4430, inlinedAt: !4309)
!4432 = !DILocation(line: 364, column: 6, scope: !4305, inlinedAt: !4309)
!4433 = !DILocation(line: 364, column: 26, scope: !4430, inlinedAt: !4309)
!4434 = !DILocation(line: 365, column: 6, scope: !4435, inlinedAt: !4309)
!4435 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 365, column: 6)
!4436 = !DILocation(line: 365, column: 11, scope: !4435, inlinedAt: !4309)
!4437 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !4309)
!4438 = !DILocation(line: 365, column: 26, scope: !4435, inlinedAt: !4309)
!4439 = !DILocation(line: 366, column: 6, scope: !4440, inlinedAt: !4309)
!4440 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 366, column: 6)
!4441 = !DILocation(line: 366, column: 11, scope: !4440, inlinedAt: !4309)
!4442 = !DILocation(line: 366, column: 6, scope: !4305, inlinedAt: !4309)
!4443 = !DILocation(line: 366, column: 26, scope: !4440, inlinedAt: !4309)
!4444 = !DILocation(line: 367, column: 6, scope: !4445, inlinedAt: !4309)
!4445 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 367, column: 6)
!4446 = !DILocation(line: 367, column: 11, scope: !4445, inlinedAt: !4309)
!4447 = !DILocation(line: 367, column: 6, scope: !4305, inlinedAt: !4309)
!4448 = !DILocation(line: 367, column: 26, scope: !4445, inlinedAt: !4309)
!4449 = !DILocation(line: 368, column: 6, scope: !4450, inlinedAt: !4309)
!4450 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 368, column: 6)
!4451 = !DILocation(line: 368, column: 11, scope: !4450, inlinedAt: !4309)
!4452 = !DILocation(line: 368, column: 6, scope: !4305, inlinedAt: !4309)
!4453 = !DILocation(line: 368, column: 26, scope: !4450, inlinedAt: !4309)
!4454 = !DILocation(line: 369, column: 6, scope: !4455, inlinedAt: !4309)
!4455 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 369, column: 6)
!4456 = !DILocation(line: 369, column: 11, scope: !4455, inlinedAt: !4309)
!4457 = !DILocation(line: 369, column: 6, scope: !4305, inlinedAt: !4309)
!4458 = !DILocation(line: 369, column: 26, scope: !4455, inlinedAt: !4309)
!4459 = !DILocation(line: 370, column: 6, scope: !4460, inlinedAt: !4309)
!4460 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 370, column: 6)
!4461 = !DILocation(line: 370, column: 11, scope: !4460, inlinedAt: !4309)
!4462 = !DILocation(line: 370, column: 6, scope: !4305, inlinedAt: !4309)
!4463 = !DILocation(line: 370, column: 26, scope: !4460, inlinedAt: !4309)
!4464 = !DILocation(line: 371, column: 6, scope: !4465, inlinedAt: !4309)
!4465 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 371, column: 6)
!4466 = !DILocation(line: 371, column: 11, scope: !4465, inlinedAt: !4309)
!4467 = !DILocation(line: 371, column: 6, scope: !4305, inlinedAt: !4309)
!4468 = !DILocation(line: 371, column: 26, scope: !4465, inlinedAt: !4309)
!4469 = !DILocation(line: 372, column: 6, scope: !4470, inlinedAt: !4309)
!4470 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 372, column: 6)
!4471 = !DILocation(line: 372, column: 11, scope: !4470, inlinedAt: !4309)
!4472 = !DILocation(line: 372, column: 6, scope: !4305, inlinedAt: !4309)
!4473 = !DILocation(line: 372, column: 26, scope: !4470, inlinedAt: !4309)
!4474 = !DILocation(line: 373, column: 6, scope: !4475, inlinedAt: !4309)
!4475 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 373, column: 6)
!4476 = !DILocation(line: 373, column: 11, scope: !4475, inlinedAt: !4309)
!4477 = !DILocation(line: 373, column: 6, scope: !4305, inlinedAt: !4309)
!4478 = !DILocation(line: 373, column: 26, scope: !4475, inlinedAt: !4309)
!4479 = !DILocation(line: 374, column: 6, scope: !4480, inlinedAt: !4309)
!4480 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 374, column: 6)
!4481 = !DILocation(line: 374, column: 11, scope: !4480, inlinedAt: !4309)
!4482 = !DILocation(line: 374, column: 6, scope: !4305, inlinedAt: !4309)
!4483 = !DILocation(line: 374, column: 26, scope: !4480, inlinedAt: !4309)
!4484 = !DILocation(line: 375, column: 6, scope: !4485, inlinedAt: !4309)
!4485 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 375, column: 6)
!4486 = !DILocation(line: 375, column: 11, scope: !4485, inlinedAt: !4309)
!4487 = !DILocation(line: 375, column: 6, scope: !4305, inlinedAt: !4309)
!4488 = !DILocation(line: 375, column: 27, scope: !4485, inlinedAt: !4309)
!4489 = !DILocation(line: 376, column: 6, scope: !4490, inlinedAt: !4309)
!4490 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 376, column: 6)
!4491 = !DILocation(line: 376, column: 11, scope: !4490, inlinedAt: !4309)
!4492 = !DILocation(line: 376, column: 6, scope: !4305, inlinedAt: !4309)
!4493 = !DILocation(line: 376, column: 32, scope: !4490, inlinedAt: !4309)
!4494 = !DILocation(line: 377, column: 6, scope: !4495, inlinedAt: !4309)
!4495 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 377, column: 6)
!4496 = !DILocation(line: 377, column: 11, scope: !4495, inlinedAt: !4309)
!4497 = !DILocation(line: 377, column: 6, scope: !4305, inlinedAt: !4309)
!4498 = !DILocation(line: 377, column: 32, scope: !4495, inlinedAt: !4309)
!4499 = !DILocation(line: 378, column: 6, scope: !4500, inlinedAt: !4309)
!4500 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 378, column: 6)
!4501 = !DILocation(line: 378, column: 11, scope: !4500, inlinedAt: !4309)
!4502 = !DILocation(line: 378, column: 6, scope: !4305, inlinedAt: !4309)
!4503 = !DILocation(line: 378, column: 32, scope: !4500, inlinedAt: !4309)
!4504 = !DILocation(line: 379, column: 6, scope: !4505, inlinedAt: !4309)
!4505 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 379, column: 6)
!4506 = !DILocation(line: 379, column: 11, scope: !4505, inlinedAt: !4309)
!4507 = !DILocation(line: 379, column: 6, scope: !4305, inlinedAt: !4309)
!4508 = !DILocation(line: 379, column: 33, scope: !4505, inlinedAt: !4309)
!4509 = !DILocation(line: 380, column: 6, scope: !4510, inlinedAt: !4309)
!4510 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 380, column: 6)
!4511 = !DILocation(line: 380, column: 11, scope: !4510, inlinedAt: !4309)
!4512 = !DILocation(line: 380, column: 6, scope: !4305, inlinedAt: !4309)
!4513 = !DILocation(line: 380, column: 33, scope: !4510, inlinedAt: !4309)
!4514 = !DILocation(line: 381, column: 6, scope: !4515, inlinedAt: !4309)
!4515 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 381, column: 6)
!4516 = !DILocation(line: 381, column: 11, scope: !4515, inlinedAt: !4309)
!4517 = !DILocation(line: 381, column: 6, scope: !4305, inlinedAt: !4309)
!4518 = !DILocation(line: 381, column: 33, scope: !4515, inlinedAt: !4309)
!4519 = !DILocation(line: 382, column: 2, scope: !4520, inlinedAt: !4309)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !92, line: 382, column: 2)
!4521 = distinct !DILexicalBlock(scope: !4305, file: !92, line: 382, column: 2)
!4522 = !{i32 -2144545170, i32 -2144545141, i32 -2144545095, i32 -2144545037, i32 -2144544983, i32 -2144544929, i32 -2144544874, i32 -2144544843}
!4523 = !DILocation(line: 382, column: 2, scope: !4524, inlinedAt: !4309)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !92, line: 382, column: 2)
!4525 = distinct !DILexicalBlock(scope: !4521, file: !92, line: 382, column: 2)
!4526 = !{i32 -2144544400, i32 -2144544393, i32 -2144544339, i32 -2144544308, i32 -2144544278}
!4527 = !DILocation(line: 382, column: 2, scope: !4525, inlinedAt: !4309)
!4528 = !DILocation(line: 386, column: 1, scope: !4305, inlinedAt: !4309)
!4529 = !DILocation(line: 547, column: 9, scope: !4286, inlinedAt: !4291)
!4530 = !DILocation(line: 549, column: 8, scope: !4531, inlinedAt: !4291)
!4531 = distinct !DILexicalBlock(scope: !4286, file: !92, line: 549, column: 7)
!4532 = !DILocation(line: 549, column: 7, scope: !4286, inlinedAt: !4291)
!4533 = !DILocation(line: 550, column: 4, scope: !4531, inlinedAt: !4291)
!4534 = !DILocation(line: 553, column: 33, scope: !4286, inlinedAt: !4291)
!4535 = !DILocation(line: 325, column: 6, scope: !4536, inlinedAt: !4303)
!4536 = distinct !DILexicalBlock(scope: !4299, file: !92, line: 325, column: 6)
!4537 = !DILocation(line: 325, column: 6, scope: !4299, inlinedAt: !4303)
!4538 = !DILocation(line: 326, column: 3, scope: !4536, inlinedAt: !4303)
!4539 = !DILocation(line: 332, column: 9, scope: !4299, inlinedAt: !4303)
!4540 = !DILocation(line: 332, column: 15, scope: !4299, inlinedAt: !4303)
!4541 = !DILocation(line: 332, column: 2, scope: !4299, inlinedAt: !4303)
!4542 = !DILocation(line: 336, column: 1, scope: !4299, inlinedAt: !4303)
!4543 = !DILocation(line: 553, column: 5, scope: !4286, inlinedAt: !4291)
!4544 = !DILocation(line: 553, column: 41, scope: !4286, inlinedAt: !4291)
!4545 = !DILocation(line: 554, column: 5, scope: !4286, inlinedAt: !4291)
!4546 = !DILocation(line: 554, column: 12, scope: !4286, inlinedAt: !4291)
!4547 = !DILocation(line: 448, column: 31, scope: !4281, inlinedAt: !4285)
!4548 = !DILocation(line: 448, column: 34, scope: !4281, inlinedAt: !4285)
!4549 = !DILocation(line: 448, column: 14, scope: !4281, inlinedAt: !4285)
!4550 = !DILocation(line: 450, column: 22, scope: !4281, inlinedAt: !4285)
!4551 = !DILocation(line: 450, column: 25, scope: !4281, inlinedAt: !4285)
!4552 = !DILocation(line: 450, column: 30, scope: !4281, inlinedAt: !4285)
!4553 = !DILocation(line: 450, column: 36, scope: !4281, inlinedAt: !4285)
!4554 = !DILocation(line: 450, column: 8, scope: !4281, inlinedAt: !4285)
!4555 = !DILocation(line: 450, column: 6, scope: !4281, inlinedAt: !4285)
!4556 = !DILocation(line: 451, column: 9, scope: !4281, inlinedAt: !4285)
!4557 = !DILocation(line: 552, column: 3, scope: !4286, inlinedAt: !4291)
!4558 = !DILocation(line: 557, column: 19, scope: !4288, inlinedAt: !4291)
!4559 = !DILocation(line: 557, column: 25, scope: !4288, inlinedAt: !4291)
!4560 = !DILocation(line: 557, column: 9, scope: !4288, inlinedAt: !4291)
!4561 = !DILocation(line: 557, column: 2, scope: !4288, inlinedAt: !4291)
!4562 = !DILocation(line: 558, column: 1, scope: !4288, inlinedAt: !4291)
!4563 = !DILocation(line: 1084, column: 10, scope: !4276)
!4564 = !DILocation(line: 1084, column: 8, scope: !4276)
!4565 = !DILocation(line: 1085, column: 7, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1085, column: 6)
!4567 = !DILocation(line: 1085, column: 6, scope: !4276)
!4568 = !DILocation(line: 1086, column: 7, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 1085, column: 14)
!4570 = !DILocation(line: 1087, column: 3, scope: !4569)
!4571 = !DILocation(line: 1090, column: 39, scope: !4276)
!4572 = !DILocation(line: 1090, column: 43, scope: !4276)
!4573 = !DILocation(line: 1090, column: 14, scope: !4276)
!4574 = !DILocation(line: 1090, column: 21, scope: !4276)
!4575 = !DILocation(line: 1090, column: 33, scope: !4276)
!4576 = !DILocation(line: 1090, column: 37, scope: !4276)
!4577 = !DILocation(line: 1090, column: 2, scope: !4276)
!4578 = !DILocation(line: 1090, column: 8, scope: !4276)
!4579 = !DILocation(line: 1090, column: 12, scope: !4276)
!4580 = !DILocation(line: 1091, column: 43, scope: !4276)
!4581 = !DILocation(line: 1091, column: 47, scope: !4276)
!4582 = !DILocation(line: 1091, column: 16, scope: !4276)
!4583 = !DILocation(line: 1091, column: 23, scope: !4276)
!4584 = !DILocation(line: 1091, column: 35, scope: !4276)
!4585 = !DILocation(line: 1091, column: 41, scope: !4276)
!4586 = !DILocation(line: 1091, column: 2, scope: !4276)
!4587 = !DILocation(line: 1091, column: 8, scope: !4276)
!4588 = !DILocation(line: 1091, column: 14, scope: !4276)
!4589 = !DILocation(line: 1092, column: 45, scope: !4276)
!4590 = !DILocation(line: 1092, column: 49, scope: !4276)
!4591 = !DILocation(line: 1092, column: 17, scope: !4276)
!4592 = !DILocation(line: 1092, column: 24, scope: !4276)
!4593 = !DILocation(line: 1092, column: 36, scope: !4276)
!4594 = !DILocation(line: 1092, column: 43, scope: !4276)
!4595 = !DILocation(line: 1092, column: 2, scope: !4276)
!4596 = !DILocation(line: 1092, column: 8, scope: !4276)
!4597 = !DILocation(line: 1092, column: 15, scope: !4276)
!4598 = !DILocation(line: 1093, column: 47, scope: !4276)
!4599 = !DILocation(line: 1093, column: 51, scope: !4276)
!4600 = !DILocation(line: 1093, column: 18, scope: !4276)
!4601 = !DILocation(line: 1093, column: 25, scope: !4276)
!4602 = !DILocation(line: 1093, column: 37, scope: !4276)
!4603 = !DILocation(line: 1093, column: 45, scope: !4276)
!4604 = !DILocation(line: 1093, column: 2, scope: !4276)
!4605 = !DILocation(line: 1093, column: 8, scope: !4276)
!4606 = !DILocation(line: 1093, column: 16, scope: !4276)
!4607 = !DILocation(line: 1094, column: 35, scope: !4276)
!4608 = !DILocation(line: 1094, column: 2, scope: !4276)
!4609 = !DILocation(line: 1094, column: 9, scope: !4276)
!4610 = !DILocation(line: 1094, column: 21, scope: !4276)
!4611 = !DILocation(line: 1094, column: 33, scope: !4276)
!4612 = !DILocation(line: 1096, column: 2, scope: !4276)
!4613 = !DILocalVariable(name: "__mptr", scope: !4614, file: !3, line: 1098, type: !104)
!4614 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1098, column: 2)
!4615 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1098, column: 2)
!4616 = !DILocation(line: 1098, column: 2, scope: !4614)
!4617 = !DILocation(line: 1098, column: 2, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 1098, column: 2)
!4619 = !DILocation(line: 1098, column: 2, scope: !4615)
!4620 = !DILocation(line: 1098, column: 2, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4615, file: !3, line: 1098, column: 2)
!4622 = !DILocation(line: 1100, column: 24, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 1100, column: 7)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 1098, column: 46)
!4625 = !DILocation(line: 1100, column: 31, scope: !4623)
!4626 = !DILocation(line: 1100, column: 34, scope: !4623)
!4627 = !DILocation(line: 1100, column: 7, scope: !4623)
!4628 = !DILocation(line: 1100, column: 7, scope: !4624)
!4629 = !DILocation(line: 1102, column: 18, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 1100, column: 48)
!4631 = !DILocation(line: 1102, column: 21, scope: !4630)
!4632 = !DILocation(line: 1102, column: 28, scope: !4630)
!4633 = !DILocation(line: 1102, column: 35, scope: !4630)
!4634 = !DILocation(line: 1102, column: 4, scope: !4630)
!4635 = !DILocation(line: 1103, column: 10, scope: !4630)
!4636 = !DILocation(line: 1103, column: 4, scope: !4630)
!4637 = !DILocation(line: 1104, column: 16, scope: !4630)
!4638 = !DILocation(line: 1105, column: 4, scope: !4630)
!4639 = !DILocation(line: 1109, column: 2, scope: !4624)
!4640 = !DILocalVariable(name: "__mptr", scope: !4641, file: !3, line: 1098, type: !104)
!4641 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 1098, column: 2)
!4642 = !DILocation(line: 1098, column: 2, scope: !4641)
!4643 = !DILocation(line: 1098, column: 2, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1098, column: 2)
!4645 = distinct !{!4645, !4619, !4646}
!4646 = !DILocation(line: 1109, column: 2, scope: !4615)
!4647 = !DILocation(line: 1111, column: 7, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 1111, column: 6)
!4649 = !DILocation(line: 1111, column: 6, scope: !4276)
!4650 = !DILocation(line: 1112, column: 18, scope: !4648)
!4651 = !DILocation(line: 1112, column: 25, scope: !4648)
!4652 = !DILocation(line: 1112, column: 3, scope: !4648)
!4653 = !DILocation(line: 1114, column: 2, scope: !4276)
!4654 = !DILabel(scope: !4276, name: "out", file: !3, line: 1116)
!4655 = !DILocation(line: 1116, column: 2, scope: !4276)
!4656 = !DILocation(line: 1117, column: 8, scope: !4276)
!4657 = !DILocation(line: 1117, column: 2, scope: !4276)
!4658 = !DILocation(line: 1118, column: 9, scope: !4276)
!4659 = !DILocation(line: 1118, column: 2, scope: !4276)
!4660 = !DILocation(line: 1119, column: 1, scope: !4276)
!4661 = distinct !DISubprogram(name: "hid_quirks_exit", scope: !3, file: !3, line: 1187, type: !4662, scopeLine: 1188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !99}
!4664 = !DILocalVariable(name: "bus", arg: 1, scope: !4661, file: !3, line: 1187, type: !99)
!4665 = !DILocation(line: 1187, column: 28, scope: !4661)
!4666 = !DILocation(line: 1189, column: 25, scope: !4661)
!4667 = !DILocation(line: 1189, column: 2, scope: !4661)
!4668 = !DILocation(line: 1190, column: 1, scope: !4661)
!4669 = distinct !DISubprogram(name: "hid_remove_all_dquirks", scope: !3, file: !3, line: 1130, type: !4662, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4670 = !DILocalVariable(name: "bus", arg: 1, scope: !4669, file: !3, line: 1130, type: !99)
!4671 = !DILocation(line: 1130, column: 42, scope: !4669)
!4672 = !DILocalVariable(name: "q", scope: !4669, file: !3, line: 1132, type: !105)
!4673 = !DILocation(line: 1132, column: 29, scope: !4669)
!4674 = !DILocalVariable(name: "temp", scope: !4669, file: !3, line: 1132, type: !105)
!4675 = !DILocation(line: 1132, column: 33, scope: !4669)
!4676 = !DILocation(line: 1134, column: 2, scope: !4669)
!4677 = !DILocalVariable(name: "__mptr", scope: !4678, file: !3, line: 1135, type: !104)
!4678 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 1135, column: 2)
!4679 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1135, column: 2)
!4680 = !DILocation(line: 1135, column: 2, scope: !4678)
!4681 = !DILocation(line: 1135, column: 2, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 1135, column: 2)
!4683 = !DILocation(line: 1135, column: 2, scope: !4679)
!4684 = !DILocalVariable(name: "__mptr", scope: !4685, file: !3, line: 1135, type: !104)
!4685 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 1135, column: 2)
!4686 = !DILocation(line: 1135, column: 2, scope: !4685)
!4687 = !DILocation(line: 1135, column: 2, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 1135, column: 2)
!4689 = !DILocation(line: 1135, column: 2, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 1135, column: 2)
!4691 = !DILocation(line: 1136, column: 7, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 1136, column: 7)
!4693 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 1135, column: 57)
!4694 = !DILocation(line: 1136, column: 11, scope: !4692)
!4695 = !DILocation(line: 1136, column: 26, scope: !4692)
!4696 = !DILocation(line: 1136, column: 29, scope: !4692)
!4697 = !DILocation(line: 1136, column: 36, scope: !4692)
!4698 = !DILocation(line: 1136, column: 39, scope: !4692)
!4699 = !DILocation(line: 1136, column: 51, scope: !4692)
!4700 = !DILocation(line: 1136, column: 33, scope: !4692)
!4701 = !DILocation(line: 1136, column: 7, scope: !4693)
!4702 = !DILocation(line: 1137, column: 14, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 1136, column: 56)
!4704 = !DILocation(line: 1137, column: 17, scope: !4703)
!4705 = !DILocation(line: 1137, column: 4, scope: !4703)
!4706 = !DILocation(line: 1138, column: 10, scope: !4703)
!4707 = !DILocation(line: 1138, column: 4, scope: !4703)
!4708 = !DILocation(line: 1139, column: 3, scope: !4703)
!4709 = !DILocation(line: 1140, column: 2, scope: !4693)
!4710 = !DILocalVariable(name: "__mptr", scope: !4711, file: !3, line: 1135, type: !104)
!4711 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 1135, column: 2)
!4712 = !DILocation(line: 1135, column: 2, scope: !4711)
!4713 = !DILocation(line: 1135, column: 2, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 1135, column: 2)
!4715 = distinct !{!4715, !4683, !4716}
!4716 = !DILocation(line: 1140, column: 2, scope: !4679)
!4717 = !DILocation(line: 1141, column: 2, scope: !4669)
!4718 = !DILocation(line: 1143, column: 1, scope: !4669)
!4719 = distinct !DISubprogram(name: "hid_lookup_quirk", scope: !3, file: !3, line: 1233, type: !4720, scopeLine: 1234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!119, !4722}
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!4724 = !DILocalVariable(name: "hdev", arg: 1, scope: !4719, file: !3, line: 1233, type: !4722)
!4725 = !DILocation(line: 1233, column: 57, scope: !4719)
!4726 = !DILocalVariable(name: "quirks", scope: !4719, file: !3, line: 1235, type: !119)
!4727 = !DILocation(line: 1235, column: 16, scope: !4719)
!4728 = !DILocalVariable(name: "quirk_entry", scope: !4719, file: !3, line: 1236, type: !3905)
!4729 = !DILocation(line: 1236, column: 30, scope: !4719)
!4730 = !DILocation(line: 1239, column: 6, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1239, column: 6)
!4732 = !DILocation(line: 1239, column: 12, scope: !4731)
!4733 = !DILocation(line: 1239, column: 16, scope: !4731)
!4734 = !DILocation(line: 1239, column: 27, scope: !4731)
!4735 = !DILocation(line: 1240, column: 6, scope: !4731)
!4736 = !DILocation(line: 1240, column: 12, scope: !4731)
!4737 = !DILocation(line: 1240, column: 19, scope: !4731)
!4738 = !DILocation(line: 1240, column: 40, scope: !4731)
!4739 = !DILocation(line: 1241, column: 6, scope: !4731)
!4740 = !DILocation(line: 1241, column: 12, scope: !4731)
!4741 = !DILocation(line: 1241, column: 20, scope: !4731)
!4742 = !DILocation(line: 1241, column: 47, scope: !4731)
!4743 = !DILocation(line: 1242, column: 6, scope: !4731)
!4744 = !DILocation(line: 1242, column: 12, scope: !4731)
!4745 = !DILocation(line: 1242, column: 20, scope: !4731)
!4746 = !DILocation(line: 1239, column: 6, scope: !4719)
!4747 = !DILocation(line: 1243, column: 3, scope: !4731)
!4748 = !DILocation(line: 1246, column: 6, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1246, column: 6)
!4750 = !DILocation(line: 1246, column: 12, scope: !4749)
!4751 = !DILocation(line: 1246, column: 16, scope: !4749)
!4752 = !DILocation(line: 1246, column: 27, scope: !4749)
!4753 = !DILocation(line: 1246, column: 30, scope: !4749)
!4754 = !DILocation(line: 1246, column: 36, scope: !4749)
!4755 = !DILocation(line: 1246, column: 43, scope: !4749)
!4756 = !DILocation(line: 1246, column: 6, scope: !4719)
!4757 = !DILocation(line: 1247, column: 11, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1246, column: 67)
!4759 = !DILocation(line: 1247, column: 17, scope: !4758)
!4760 = !DILocation(line: 1247, column: 3, scope: !4758)
!4761 = !DILocation(line: 1249, column: 8, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 1249, column: 8)
!4763 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 1247, column: 26)
!4764 = !DILocation(line: 1249, column: 14, scope: !4762)
!4765 = !DILocation(line: 1249, column: 22, scope: !4762)
!4766 = !DILocation(line: 1249, column: 8, scope: !4763)
!4767 = !DILocation(line: 1250, column: 5, scope: !4762)
!4768 = !DILocation(line: 1251, column: 4, scope: !4763)
!4769 = !DILocation(line: 1253, column: 8, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 1253, column: 8)
!4771 = !DILocation(line: 1253, column: 14, scope: !4770)
!4772 = !DILocation(line: 1253, column: 22, scope: !4770)
!4773 = !DILocation(line: 1253, column: 8, scope: !4763)
!4774 = !DILocation(line: 1254, column: 5, scope: !4770)
!4775 = !DILocation(line: 1255, column: 4, scope: !4763)
!4776 = !DILocation(line: 1257, column: 2, scope: !4758)
!4777 = !DILocation(line: 1259, column: 2, scope: !4719)
!4778 = !DILocation(line: 1260, column: 34, scope: !4719)
!4779 = !DILocation(line: 1260, column: 16, scope: !4719)
!4780 = !DILocation(line: 1260, column: 14, scope: !4719)
!4781 = !DILocation(line: 1261, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 1261, column: 6)
!4783 = !DILocation(line: 1261, column: 6, scope: !4719)
!4784 = !DILocation(line: 1262, column: 12, scope: !4782)
!4785 = !DILocation(line: 1262, column: 25, scope: !4782)
!4786 = !DILocation(line: 1262, column: 10, scope: !4782)
!4787 = !DILocation(line: 1262, column: 3, scope: !4782)
!4788 = !DILocation(line: 1264, column: 28, scope: !4782)
!4789 = !DILocation(line: 1264, column: 12, scope: !4782)
!4790 = !DILocation(line: 1264, column: 10, scope: !4782)
!4791 = !DILocation(line: 1265, column: 2, scope: !4719)
!4792 = !DILocation(line: 1267, column: 9, scope: !4719)
!4793 = !DILocation(line: 1267, column: 2, scope: !4719)
!4794 = !DILocation(line: 1268, column: 1, scope: !4719)
!4795 = distinct !DISubprogram(name: "hid_exists_dquirk", scope: !3, file: !3, line: 1039, type: !4796, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!4798, !4722}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!4799 = !DILocalVariable(name: "hdev", arg: 1, scope: !4795, file: !3, line: 1039, type: !4722)
!4800 = !DILocation(line: 1039, column: 73, scope: !4795)
!4801 = !DILocalVariable(name: "q", scope: !4795, file: !3, line: 1041, type: !105)
!4802 = !DILocation(line: 1041, column: 29, scope: !4795)
!4803 = !DILocalVariable(name: "bl_entry", scope: !4795, file: !3, line: 1042, type: !4798)
!4804 = !DILocation(line: 1042, column: 24, scope: !4795)
!4805 = !DILocalVariable(name: "__mptr", scope: !4806, file: !3, line: 1044, type: !104)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 1044, column: 2)
!4807 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 1044, column: 2)
!4808 = !DILocation(line: 1044, column: 2, scope: !4806)
!4809 = !DILocation(line: 1044, column: 2, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 1044, column: 2)
!4811 = !DILocation(line: 1044, column: 2, scope: !4807)
!4812 = !DILocation(line: 1044, column: 2, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 1044, column: 2)
!4814 = !DILocation(line: 1045, column: 24, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 1045, column: 7)
!4816 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1044, column: 46)
!4817 = !DILocation(line: 1045, column: 31, scope: !4815)
!4818 = !DILocation(line: 1045, column: 34, scope: !4815)
!4819 = !DILocation(line: 1045, column: 7, scope: !4815)
!4820 = !DILocation(line: 1045, column: 7, scope: !4816)
!4821 = !DILocation(line: 1046, column: 16, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 1045, column: 48)
!4823 = !DILocation(line: 1046, column: 19, scope: !4822)
!4824 = !DILocation(line: 1046, column: 13, scope: !4822)
!4825 = !DILocation(line: 1047, column: 4, scope: !4822)
!4826 = !DILocation(line: 1049, column: 2, scope: !4816)
!4827 = !DILocalVariable(name: "__mptr", scope: !4828, file: !3, line: 1044, type: !104)
!4828 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1044, column: 2)
!4829 = !DILocation(line: 1044, column: 2, scope: !4828)
!4830 = !DILocation(line: 1044, column: 2, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 1044, column: 2)
!4832 = distinct !{!4832, !4811, !4833}
!4833 = !DILocation(line: 1049, column: 2, scope: !4807)
!4834 = !DILocation(line: 1051, column: 6, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 1051, column: 6)
!4836 = !DILocation(line: 1051, column: 15, scope: !4835)
!4837 = !DILocation(line: 1051, column: 6, scope: !4795)
!4838 = !DILocation(line: 1052, column: 3, scope: !4835)
!4839 = !DILocation(line: 1052, column: 3, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 1052, column: 3)
!4841 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 1052, column: 3)
!4842 = !DILocation(line: 1052, column: 3, scope: !4841)
!4843 = !DILocation(line: 1056, column: 9, scope: !4795)
!4844 = !DILocation(line: 1056, column: 2, scope: !4795)
!4845 = distinct !DISubprogram(name: "hid_gets_squirk", scope: !3, file: !3, line: 1203, type: !4720, scopeLine: 1204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4846 = !DILocalVariable(name: "hdev", arg: 1, scope: !4845, file: !3, line: 1203, type: !4722)
!4847 = !DILocation(line: 1203, column: 63, scope: !4845)
!4848 = !DILocalVariable(name: "bl_entry", scope: !4845, file: !3, line: 1205, type: !3905)
!4849 = !DILocation(line: 1205, column: 30, scope: !4845)
!4850 = !DILocalVariable(name: "quirks", scope: !4845, file: !3, line: 1206, type: !119)
!4851 = !DILocation(line: 1206, column: 16, scope: !4845)
!4852 = !DILocation(line: 1208, column: 19, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 1208, column: 6)
!4854 = !DILocation(line: 1208, column: 6, scope: !4853)
!4855 = !DILocation(line: 1208, column: 6, scope: !4845)
!4856 = !DILocation(line: 1209, column: 10, scope: !4853)
!4857 = !DILocation(line: 1209, column: 3, scope: !4853)
!4858 = !DILocation(line: 1211, column: 19, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 1211, column: 6)
!4860 = !DILocation(line: 1211, column: 6, scope: !4859)
!4861 = !DILocation(line: 1211, column: 6, scope: !4845)
!4862 = !DILocation(line: 1212, column: 10, scope: !4859)
!4863 = !DILocation(line: 1212, column: 3, scope: !4859)
!4864 = !DILocation(line: 1214, column: 26, scope: !4845)
!4865 = !DILocation(line: 1214, column: 13, scope: !4845)
!4866 = !DILocation(line: 1214, column: 11, scope: !4845)
!4867 = !DILocation(line: 1215, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 1215, column: 6)
!4869 = !DILocation(line: 1215, column: 15, scope: !4868)
!4870 = !DILocation(line: 1215, column: 6, scope: !4845)
!4871 = !DILocation(line: 1216, column: 13, scope: !4868)
!4872 = !DILocation(line: 1216, column: 23, scope: !4868)
!4873 = !DILocation(line: 1216, column: 10, scope: !4868)
!4874 = !DILocation(line: 1216, column: 3, scope: !4868)
!4875 = !DILocation(line: 1218, column: 6, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 1218, column: 6)
!4877 = !DILocation(line: 1218, column: 6, scope: !4845)
!4878 = !DILocation(line: 1219, column: 3, scope: !4876)
!4879 = !DILocation(line: 1219, column: 3, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 1219, column: 3)
!4881 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 1219, column: 3)
!4882 = !DILocation(line: 1219, column: 3, scope: !4881)
!4883 = !DILocation(line: 1221, column: 9, scope: !4845)
!4884 = !DILocation(line: 1221, column: 2, scope: !4845)
!4885 = distinct !DISubprogram(name: "kzalloc", scope: !92, file: !92, line: 662, type: !4289, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!4886 = !DILocation(line: 445, column: 72, scope: !4281, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 552, column: 10, scope: !4286, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 664, column: 9, scope: !4885)
!4889 = !DILocation(line: 446, column: 9, scope: !4281, inlinedAt: !4887)
!4890 = !DILocation(line: 446, column: 23, scope: !4281, inlinedAt: !4887)
!4891 = !DILocation(line: 448, column: 8, scope: !4281, inlinedAt: !4887)
!4892 = !DILocation(line: 318, column: 67, scope: !4299, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 553, column: 20, scope: !4286, inlinedAt: !4888)
!4894 = !DILocation(line: 346, column: 58, scope: !4305, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 547, column: 11, scope: !4286, inlinedAt: !4888)
!4896 = !DILocation(line: 472, column: 28, scope: !4311, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 481, column: 9, scope: !4316, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 545, column: 11, scope: !4318, inlinedAt: !4888)
!4899 = !DILocation(line: 472, column: 40, scope: !4311, inlinedAt: !4897)
!4900 = !DILocation(line: 472, column: 60, scope: !4311, inlinedAt: !4897)
!4901 = !DILocation(line: 478, column: 51, scope: !4316, inlinedAt: !4898)
!4902 = !DILocation(line: 478, column: 63, scope: !4316, inlinedAt: !4898)
!4903 = !DILocation(line: 480, column: 15, scope: !4316, inlinedAt: !4898)
!4904 = !DILocation(line: 538, column: 45, scope: !4288, inlinedAt: !4888)
!4905 = !DILocation(line: 538, column: 57, scope: !4288, inlinedAt: !4888)
!4906 = !DILocation(line: 542, column: 16, scope: !4286, inlinedAt: !4888)
!4907 = !DILocalVariable(name: "size", arg: 1, scope: !4885, file: !92, line: 662, type: !689)
!4908 = !DILocation(line: 662, column: 36, scope: !4885)
!4909 = !DILocalVariable(name: "flags", arg: 2, scope: !4885, file: !92, line: 662, type: !102)
!4910 = !DILocation(line: 662, column: 48, scope: !4885)
!4911 = !DILocation(line: 664, column: 17, scope: !4885)
!4912 = !DILocation(line: 664, column: 23, scope: !4885)
!4913 = !DILocation(line: 664, column: 29, scope: !4885)
!4914 = !DILocation(line: 540, column: 27, scope: !4287, inlinedAt: !4888)
!4915 = !DILocation(line: 540, column: 6, scope: !4287, inlinedAt: !4888)
!4916 = !DILocation(line: 540, column: 6, scope: !4288, inlinedAt: !4888)
!4917 = !DILocation(line: 544, column: 7, scope: !4318, inlinedAt: !4888)
!4918 = !DILocation(line: 544, column: 12, scope: !4318, inlinedAt: !4888)
!4919 = !DILocation(line: 544, column: 7, scope: !4286, inlinedAt: !4888)
!4920 = !DILocation(line: 545, column: 25, scope: !4318, inlinedAt: !4888)
!4921 = !DILocation(line: 545, column: 31, scope: !4318, inlinedAt: !4888)
!4922 = !DILocation(line: 480, column: 33, scope: !4316, inlinedAt: !4898)
!4923 = !DILocation(line: 480, column: 23, scope: !4316, inlinedAt: !4898)
!4924 = !DILocation(line: 481, column: 29, scope: !4316, inlinedAt: !4898)
!4925 = !DILocation(line: 481, column: 35, scope: !4316, inlinedAt: !4898)
!4926 = !DILocation(line: 481, column: 42, scope: !4316, inlinedAt: !4898)
!4927 = !DILocation(line: 474, column: 23, scope: !4311, inlinedAt: !4897)
!4928 = !DILocation(line: 474, column: 29, scope: !4311, inlinedAt: !4897)
!4929 = !DILocation(line: 474, column: 36, scope: !4311, inlinedAt: !4897)
!4930 = !DILocation(line: 474, column: 9, scope: !4311, inlinedAt: !4897)
!4931 = !DILocation(line: 545, column: 4, scope: !4318, inlinedAt: !4888)
!4932 = !DILocation(line: 547, column: 25, scope: !4286, inlinedAt: !4888)
!4933 = !DILocation(line: 348, column: 7, scope: !4375, inlinedAt: !4895)
!4934 = !DILocation(line: 348, column: 6, scope: !4305, inlinedAt: !4895)
!4935 = !DILocation(line: 349, column: 3, scope: !4375, inlinedAt: !4895)
!4936 = !DILocation(line: 351, column: 6, scope: !4379, inlinedAt: !4895)
!4937 = !DILocation(line: 351, column: 11, scope: !4379, inlinedAt: !4895)
!4938 = !DILocation(line: 351, column: 6, scope: !4305, inlinedAt: !4895)
!4939 = !DILocation(line: 352, column: 3, scope: !4379, inlinedAt: !4895)
!4940 = !DILocation(line: 354, column: 32, scope: !4384, inlinedAt: !4895)
!4941 = !DILocation(line: 354, column: 37, scope: !4384, inlinedAt: !4895)
!4942 = !DILocation(line: 354, column: 42, scope: !4384, inlinedAt: !4895)
!4943 = !DILocation(line: 354, column: 45, scope: !4384, inlinedAt: !4895)
!4944 = !DILocation(line: 354, column: 50, scope: !4384, inlinedAt: !4895)
!4945 = !DILocation(line: 354, column: 6, scope: !4305, inlinedAt: !4895)
!4946 = !DILocation(line: 355, column: 3, scope: !4384, inlinedAt: !4895)
!4947 = !DILocation(line: 356, column: 32, scope: !4392, inlinedAt: !4895)
!4948 = !DILocation(line: 356, column: 37, scope: !4392, inlinedAt: !4895)
!4949 = !DILocation(line: 356, column: 43, scope: !4392, inlinedAt: !4895)
!4950 = !DILocation(line: 356, column: 46, scope: !4392, inlinedAt: !4895)
!4951 = !DILocation(line: 356, column: 51, scope: !4392, inlinedAt: !4895)
!4952 = !DILocation(line: 356, column: 6, scope: !4305, inlinedAt: !4895)
!4953 = !DILocation(line: 357, column: 3, scope: !4392, inlinedAt: !4895)
!4954 = !DILocation(line: 358, column: 6, scope: !4400, inlinedAt: !4895)
!4955 = !DILocation(line: 358, column: 11, scope: !4400, inlinedAt: !4895)
!4956 = !DILocation(line: 358, column: 6, scope: !4305, inlinedAt: !4895)
!4957 = !DILocation(line: 358, column: 26, scope: !4400, inlinedAt: !4895)
!4958 = !DILocation(line: 359, column: 6, scope: !4405, inlinedAt: !4895)
!4959 = !DILocation(line: 359, column: 11, scope: !4405, inlinedAt: !4895)
!4960 = !DILocation(line: 359, column: 6, scope: !4305, inlinedAt: !4895)
!4961 = !DILocation(line: 359, column: 26, scope: !4405, inlinedAt: !4895)
!4962 = !DILocation(line: 360, column: 6, scope: !4410, inlinedAt: !4895)
!4963 = !DILocation(line: 360, column: 11, scope: !4410, inlinedAt: !4895)
!4964 = !DILocation(line: 360, column: 6, scope: !4305, inlinedAt: !4895)
!4965 = !DILocation(line: 360, column: 26, scope: !4410, inlinedAt: !4895)
!4966 = !DILocation(line: 361, column: 6, scope: !4415, inlinedAt: !4895)
!4967 = !DILocation(line: 361, column: 11, scope: !4415, inlinedAt: !4895)
!4968 = !DILocation(line: 361, column: 6, scope: !4305, inlinedAt: !4895)
!4969 = !DILocation(line: 361, column: 26, scope: !4415, inlinedAt: !4895)
!4970 = !DILocation(line: 362, column: 6, scope: !4420, inlinedAt: !4895)
!4971 = !DILocation(line: 362, column: 11, scope: !4420, inlinedAt: !4895)
!4972 = !DILocation(line: 362, column: 6, scope: !4305, inlinedAt: !4895)
!4973 = !DILocation(line: 362, column: 26, scope: !4420, inlinedAt: !4895)
!4974 = !DILocation(line: 363, column: 6, scope: !4425, inlinedAt: !4895)
!4975 = !DILocation(line: 363, column: 11, scope: !4425, inlinedAt: !4895)
!4976 = !DILocation(line: 363, column: 6, scope: !4305, inlinedAt: !4895)
!4977 = !DILocation(line: 363, column: 26, scope: !4425, inlinedAt: !4895)
!4978 = !DILocation(line: 364, column: 6, scope: !4430, inlinedAt: !4895)
!4979 = !DILocation(line: 364, column: 11, scope: !4430, inlinedAt: !4895)
!4980 = !DILocation(line: 364, column: 6, scope: !4305, inlinedAt: !4895)
!4981 = !DILocation(line: 364, column: 26, scope: !4430, inlinedAt: !4895)
!4982 = !DILocation(line: 365, column: 6, scope: !4435, inlinedAt: !4895)
!4983 = !DILocation(line: 365, column: 11, scope: !4435, inlinedAt: !4895)
!4984 = !DILocation(line: 365, column: 6, scope: !4305, inlinedAt: !4895)
!4985 = !DILocation(line: 365, column: 26, scope: !4435, inlinedAt: !4895)
!4986 = !DILocation(line: 366, column: 6, scope: !4440, inlinedAt: !4895)
!4987 = !DILocation(line: 366, column: 11, scope: !4440, inlinedAt: !4895)
!4988 = !DILocation(line: 366, column: 6, scope: !4305, inlinedAt: !4895)
!4989 = !DILocation(line: 366, column: 26, scope: !4440, inlinedAt: !4895)
!4990 = !DILocation(line: 367, column: 6, scope: !4445, inlinedAt: !4895)
!4991 = !DILocation(line: 367, column: 11, scope: !4445, inlinedAt: !4895)
!4992 = !DILocation(line: 367, column: 6, scope: !4305, inlinedAt: !4895)
!4993 = !DILocation(line: 367, column: 26, scope: !4445, inlinedAt: !4895)
!4994 = !DILocation(line: 368, column: 6, scope: !4450, inlinedAt: !4895)
!4995 = !DILocation(line: 368, column: 11, scope: !4450, inlinedAt: !4895)
!4996 = !DILocation(line: 368, column: 6, scope: !4305, inlinedAt: !4895)
!4997 = !DILocation(line: 368, column: 26, scope: !4450, inlinedAt: !4895)
!4998 = !DILocation(line: 369, column: 6, scope: !4455, inlinedAt: !4895)
!4999 = !DILocation(line: 369, column: 11, scope: !4455, inlinedAt: !4895)
!5000 = !DILocation(line: 369, column: 6, scope: !4305, inlinedAt: !4895)
!5001 = !DILocation(line: 369, column: 26, scope: !4455, inlinedAt: !4895)
!5002 = !DILocation(line: 370, column: 6, scope: !4460, inlinedAt: !4895)
!5003 = !DILocation(line: 370, column: 11, scope: !4460, inlinedAt: !4895)
!5004 = !DILocation(line: 370, column: 6, scope: !4305, inlinedAt: !4895)
!5005 = !DILocation(line: 370, column: 26, scope: !4460, inlinedAt: !4895)
!5006 = !DILocation(line: 371, column: 6, scope: !4465, inlinedAt: !4895)
!5007 = !DILocation(line: 371, column: 11, scope: !4465, inlinedAt: !4895)
!5008 = !DILocation(line: 371, column: 6, scope: !4305, inlinedAt: !4895)
!5009 = !DILocation(line: 371, column: 26, scope: !4465, inlinedAt: !4895)
!5010 = !DILocation(line: 372, column: 6, scope: !4470, inlinedAt: !4895)
!5011 = !DILocation(line: 372, column: 11, scope: !4470, inlinedAt: !4895)
!5012 = !DILocation(line: 372, column: 6, scope: !4305, inlinedAt: !4895)
!5013 = !DILocation(line: 372, column: 26, scope: !4470, inlinedAt: !4895)
!5014 = !DILocation(line: 373, column: 6, scope: !4475, inlinedAt: !4895)
!5015 = !DILocation(line: 373, column: 11, scope: !4475, inlinedAt: !4895)
!5016 = !DILocation(line: 373, column: 6, scope: !4305, inlinedAt: !4895)
!5017 = !DILocation(line: 373, column: 26, scope: !4475, inlinedAt: !4895)
!5018 = !DILocation(line: 374, column: 6, scope: !4480, inlinedAt: !4895)
!5019 = !DILocation(line: 374, column: 11, scope: !4480, inlinedAt: !4895)
!5020 = !DILocation(line: 374, column: 6, scope: !4305, inlinedAt: !4895)
!5021 = !DILocation(line: 374, column: 26, scope: !4480, inlinedAt: !4895)
!5022 = !DILocation(line: 375, column: 6, scope: !4485, inlinedAt: !4895)
!5023 = !DILocation(line: 375, column: 11, scope: !4485, inlinedAt: !4895)
!5024 = !DILocation(line: 375, column: 6, scope: !4305, inlinedAt: !4895)
!5025 = !DILocation(line: 375, column: 27, scope: !4485, inlinedAt: !4895)
!5026 = !DILocation(line: 376, column: 6, scope: !4490, inlinedAt: !4895)
!5027 = !DILocation(line: 376, column: 11, scope: !4490, inlinedAt: !4895)
!5028 = !DILocation(line: 376, column: 6, scope: !4305, inlinedAt: !4895)
!5029 = !DILocation(line: 376, column: 32, scope: !4490, inlinedAt: !4895)
!5030 = !DILocation(line: 377, column: 6, scope: !4495, inlinedAt: !4895)
!5031 = !DILocation(line: 377, column: 11, scope: !4495, inlinedAt: !4895)
!5032 = !DILocation(line: 377, column: 6, scope: !4305, inlinedAt: !4895)
!5033 = !DILocation(line: 377, column: 32, scope: !4495, inlinedAt: !4895)
!5034 = !DILocation(line: 378, column: 6, scope: !4500, inlinedAt: !4895)
!5035 = !DILocation(line: 378, column: 11, scope: !4500, inlinedAt: !4895)
!5036 = !DILocation(line: 378, column: 6, scope: !4305, inlinedAt: !4895)
!5037 = !DILocation(line: 378, column: 32, scope: !4500, inlinedAt: !4895)
!5038 = !DILocation(line: 379, column: 6, scope: !4505, inlinedAt: !4895)
!5039 = !DILocation(line: 379, column: 11, scope: !4505, inlinedAt: !4895)
!5040 = !DILocation(line: 379, column: 6, scope: !4305, inlinedAt: !4895)
!5041 = !DILocation(line: 379, column: 33, scope: !4505, inlinedAt: !4895)
!5042 = !DILocation(line: 380, column: 6, scope: !4510, inlinedAt: !4895)
!5043 = !DILocation(line: 380, column: 11, scope: !4510, inlinedAt: !4895)
!5044 = !DILocation(line: 380, column: 6, scope: !4305, inlinedAt: !4895)
!5045 = !DILocation(line: 380, column: 33, scope: !4510, inlinedAt: !4895)
!5046 = !DILocation(line: 381, column: 6, scope: !4515, inlinedAt: !4895)
!5047 = !DILocation(line: 381, column: 11, scope: !4515, inlinedAt: !4895)
!5048 = !DILocation(line: 381, column: 6, scope: !4305, inlinedAt: !4895)
!5049 = !DILocation(line: 381, column: 33, scope: !4515, inlinedAt: !4895)
!5050 = !DILocation(line: 382, column: 2, scope: !4520, inlinedAt: !4895)
!5051 = !DILocation(line: 382, column: 2, scope: !4524, inlinedAt: !4895)
!5052 = !DILocation(line: 382, column: 2, scope: !4525, inlinedAt: !4895)
!5053 = !DILocation(line: 386, column: 1, scope: !4305, inlinedAt: !4895)
!5054 = !DILocation(line: 547, column: 9, scope: !4286, inlinedAt: !4888)
!5055 = !DILocation(line: 549, column: 8, scope: !4531, inlinedAt: !4888)
!5056 = !DILocation(line: 549, column: 7, scope: !4286, inlinedAt: !4888)
!5057 = !DILocation(line: 550, column: 4, scope: !4531, inlinedAt: !4888)
!5058 = !DILocation(line: 553, column: 33, scope: !4286, inlinedAt: !4888)
!5059 = !DILocation(line: 325, column: 6, scope: !4536, inlinedAt: !4893)
!5060 = !DILocation(line: 325, column: 6, scope: !4299, inlinedAt: !4893)
!5061 = !DILocation(line: 326, column: 3, scope: !4536, inlinedAt: !4893)
!5062 = !DILocation(line: 332, column: 9, scope: !4299, inlinedAt: !4893)
!5063 = !DILocation(line: 332, column: 15, scope: !4299, inlinedAt: !4893)
!5064 = !DILocation(line: 332, column: 2, scope: !4299, inlinedAt: !4893)
!5065 = !DILocation(line: 336, column: 1, scope: !4299, inlinedAt: !4893)
!5066 = !DILocation(line: 553, column: 5, scope: !4286, inlinedAt: !4888)
!5067 = !DILocation(line: 553, column: 41, scope: !4286, inlinedAt: !4888)
!5068 = !DILocation(line: 554, column: 5, scope: !4286, inlinedAt: !4888)
!5069 = !DILocation(line: 554, column: 12, scope: !4286, inlinedAt: !4888)
!5070 = !DILocation(line: 448, column: 31, scope: !4281, inlinedAt: !4887)
!5071 = !DILocation(line: 448, column: 34, scope: !4281, inlinedAt: !4887)
!5072 = !DILocation(line: 448, column: 14, scope: !4281, inlinedAt: !4887)
!5073 = !DILocation(line: 450, column: 22, scope: !4281, inlinedAt: !4887)
!5074 = !DILocation(line: 450, column: 25, scope: !4281, inlinedAt: !4887)
!5075 = !DILocation(line: 450, column: 30, scope: !4281, inlinedAt: !4887)
!5076 = !DILocation(line: 450, column: 36, scope: !4281, inlinedAt: !4887)
!5077 = !DILocation(line: 450, column: 8, scope: !4281, inlinedAt: !4887)
!5078 = !DILocation(line: 450, column: 6, scope: !4281, inlinedAt: !4887)
!5079 = !DILocation(line: 451, column: 9, scope: !4281, inlinedAt: !4887)
!5080 = !DILocation(line: 552, column: 3, scope: !4286, inlinedAt: !4888)
!5081 = !DILocation(line: 557, column: 19, scope: !4288, inlinedAt: !4888)
!5082 = !DILocation(line: 557, column: 25, scope: !4288, inlinedAt: !4888)
!5083 = !DILocation(line: 557, column: 9, scope: !4288, inlinedAt: !4888)
!5084 = !DILocation(line: 557, column: 2, scope: !4288, inlinedAt: !4888)
!5085 = !DILocation(line: 558, column: 1, scope: !4288, inlinedAt: !4888)
!5086 = !DILocation(line: 664, column: 2, scope: !4885)
!5087 = distinct !DISubprogram(name: "list_replace", scope: !5088, file: !5088, line: 158, type: !5089, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5088 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !124, !124}
!5091 = !DILocalVariable(name: "old", arg: 1, scope: !5087, file: !5088, line: 158, type: !124)
!5092 = !DILocation(line: 158, column: 51, scope: !5087)
!5093 = !DILocalVariable(name: "new", arg: 2, scope: !5087, file: !5088, line: 159, type: !124)
!5094 = !DILocation(line: 159, column: 23, scope: !5087)
!5095 = !DILocation(line: 161, column: 14, scope: !5087)
!5096 = !DILocation(line: 161, column: 19, scope: !5087)
!5097 = !DILocation(line: 161, column: 2, scope: !5087)
!5098 = !DILocation(line: 161, column: 7, scope: !5087)
!5099 = !DILocation(line: 161, column: 12, scope: !5087)
!5100 = !DILocation(line: 162, column: 20, scope: !5087)
!5101 = !DILocation(line: 162, column: 2, scope: !5087)
!5102 = !DILocation(line: 162, column: 7, scope: !5087)
!5103 = !DILocation(line: 162, column: 13, scope: !5087)
!5104 = !DILocation(line: 162, column: 18, scope: !5087)
!5105 = !DILocation(line: 163, column: 14, scope: !5087)
!5106 = !DILocation(line: 163, column: 19, scope: !5087)
!5107 = !DILocation(line: 163, column: 2, scope: !5087)
!5108 = !DILocation(line: 163, column: 7, scope: !5087)
!5109 = !DILocation(line: 163, column: 12, scope: !5087)
!5110 = !DILocation(line: 164, column: 20, scope: !5087)
!5111 = !DILocation(line: 164, column: 2, scope: !5087)
!5112 = !DILocation(line: 164, column: 7, scope: !5087)
!5113 = !DILocation(line: 164, column: 13, scope: !5087)
!5114 = !DILocation(line: 164, column: 18, scope: !5087)
!5115 = !DILocation(line: 165, column: 1, scope: !5087)
!5116 = distinct !DISubprogram(name: "list_add_tail", scope: !5088, file: !5088, line: 98, type: !5089, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5117 = !DILocalVariable(name: "new", arg: 1, scope: !5116, file: !5088, line: 98, type: !124)
!5118 = !DILocation(line: 98, column: 52, scope: !5116)
!5119 = !DILocalVariable(name: "head", arg: 2, scope: !5116, file: !5088, line: 98, type: !124)
!5120 = !DILocation(line: 98, column: 75, scope: !5116)
!5121 = !DILocation(line: 100, column: 13, scope: !5116)
!5122 = !DILocation(line: 100, column: 18, scope: !5116)
!5123 = !DILocation(line: 100, column: 24, scope: !5116)
!5124 = !DILocation(line: 100, column: 30, scope: !5116)
!5125 = !DILocation(line: 100, column: 2, scope: !5116)
!5126 = !DILocation(line: 101, column: 1, scope: !5116)
!5127 = distinct !DISubprogram(name: "get_order", scope: !5128, file: !5128, line: 29, type: !5129, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5128 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!224, !119}
!5131 = !DILocalVariable(name: "x", arg: 1, scope: !5132, file: !5133, line: 366, type: !531)
!5132 = distinct !DISubprogram(name: "fls64", scope: !5133, file: !5133, line: 366, type: !5134, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5133 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!224, !531}
!5136 = !DILocation(line: 366, column: 40, scope: !5132, inlinedAt: !5137)
!5137 = distinct !DILocation(line: 46, column: 9, scope: !5127)
!5138 = !DILocalVariable(name: "bitpos", scope: !5132, file: !5133, line: 368, type: !224)
!5139 = !DILocation(line: 368, column: 6, scope: !5132, inlinedAt: !5137)
!5140 = !DILocalVariable(name: "size", arg: 1, scope: !5127, file: !5128, line: 29, type: !119)
!5141 = !DILocation(line: 29, column: 63, scope: !5127)
!5142 = !DILocation(line: 31, column: 27, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5127, file: !5128, line: 31, column: 6)
!5144 = !DILocation(line: 31, column: 6, scope: !5143)
!5145 = !DILocation(line: 31, column: 6, scope: !5127)
!5146 = !DILocation(line: 32, column: 8, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !5128, line: 32, column: 7)
!5148 = distinct !DILexicalBlock(scope: !5143, file: !5128, line: 31, column: 34)
!5149 = !DILocation(line: 32, column: 7, scope: !5148)
!5150 = !DILocation(line: 33, column: 4, scope: !5147)
!5151 = !DILocation(line: 35, column: 7, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5148, file: !5128, line: 35, column: 7)
!5153 = !DILocation(line: 35, column: 12, scope: !5152)
!5154 = !DILocation(line: 35, column: 7, scope: !5148)
!5155 = !DILocation(line: 36, column: 4, scope: !5152)
!5156 = !DILocation(line: 38, column: 10, scope: !5148)
!5157 = !DILocation(line: 38, column: 28, scope: !5148)
!5158 = !DILocation(line: 38, column: 41, scope: !5148)
!5159 = !DILocation(line: 38, column: 3, scope: !5148)
!5160 = !DILocation(line: 41, column: 6, scope: !5127)
!5161 = !DILocation(line: 42, column: 7, scope: !5127)
!5162 = !DILocation(line: 46, column: 15, scope: !5127)
!5163 = !DILocation(line: 374, column: 2, scope: !5132, inlinedAt: !5137)
!5164 = !DILocation(line: 376, column: 14, scope: !5132, inlinedAt: !5137)
!5165 = !{i32 295212}
!5166 = !DILocation(line: 377, column: 9, scope: !5132, inlinedAt: !5137)
!5167 = !DILocation(line: 377, column: 16, scope: !5132, inlinedAt: !5137)
!5168 = !DILocation(line: 46, column: 2, scope: !5127)
!5169 = !DILocation(line: 48, column: 1, scope: !5127)
!5170 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5171, file: !5171, line: 30, type: !5172, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5171 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5172 = !DISubroutineType(types: !5173)
!5173 = !{!224, !530}
!5174 = !DILocation(line: 366, column: 40, scope: !5132, inlinedAt: !5175)
!5175 = distinct !DILocation(line: 32, column: 9, scope: !5170)
!5176 = !DILocation(line: 368, column: 6, scope: !5132, inlinedAt: !5175)
!5177 = !DILocalVariable(name: "n", arg: 1, scope: !5170, file: !5171, line: 30, type: !530)
!5178 = !DILocation(line: 30, column: 21, scope: !5170)
!5179 = !DILocation(line: 32, column: 15, scope: !5170)
!5180 = !DILocation(line: 374, column: 2, scope: !5132, inlinedAt: !5175)
!5181 = !DILocation(line: 376, column: 14, scope: !5132, inlinedAt: !5175)
!5182 = !DILocation(line: 377, column: 9, scope: !5132, inlinedAt: !5175)
!5183 = !DILocation(line: 377, column: 16, scope: !5132, inlinedAt: !5175)
!5184 = !DILocation(line: 32, column: 18, scope: !5170)
!5185 = !DILocation(line: 32, column: 2, scope: !5170)
!5186 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2118, file: !2118, line: 137, type: !5187, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!104, !1045, !3366, !689, !102}
!5189 = !DILocalVariable(name: "s", arg: 1, scope: !5186, file: !2118, line: 137, type: !1045)
!5190 = !DILocation(line: 137, column: 54, scope: !5186)
!5191 = !DILocalVariable(name: "object", arg: 2, scope: !5186, file: !2118, line: 137, type: !3366)
!5192 = !DILocation(line: 137, column: 69, scope: !5186)
!5193 = !DILocalVariable(name: "size", arg: 3, scope: !5186, file: !2118, line: 138, type: !689)
!5194 = !DILocation(line: 138, column: 12, scope: !5186)
!5195 = !DILocalVariable(name: "flags", arg: 4, scope: !5186, file: !2118, line: 138, type: !102)
!5196 = !DILocation(line: 138, column: 24, scope: !5186)
!5197 = !DILocation(line: 140, column: 17, scope: !5186)
!5198 = !DILocation(line: 140, column: 2, scope: !5186)
!5199 = distinct !DISubprogram(name: "__list_add", scope: !5088, file: !5088, line: 63, type: !5200, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{null, !124, !124, !124}
!5202 = !DILocalVariable(name: "new", arg: 1, scope: !5199, file: !5088, line: 63, type: !124)
!5203 = !DILocation(line: 63, column: 49, scope: !5199)
!5204 = !DILocalVariable(name: "prev", arg: 2, scope: !5199, file: !5088, line: 64, type: !124)
!5205 = !DILocation(line: 64, column: 28, scope: !5199)
!5206 = !DILocalVariable(name: "next", arg: 3, scope: !5199, file: !5088, line: 65, type: !124)
!5207 = !DILocation(line: 65, column: 28, scope: !5199)
!5208 = !DILocation(line: 67, column: 24, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5199, file: !5088, line: 67, column: 6)
!5210 = !DILocation(line: 67, column: 29, scope: !5209)
!5211 = !DILocation(line: 67, column: 35, scope: !5209)
!5212 = !DILocation(line: 67, column: 7, scope: !5209)
!5213 = !DILocation(line: 67, column: 6, scope: !5199)
!5214 = !DILocation(line: 68, column: 3, scope: !5209)
!5215 = !DILocation(line: 70, column: 15, scope: !5199)
!5216 = !DILocation(line: 70, column: 2, scope: !5199)
!5217 = !DILocation(line: 70, column: 8, scope: !5199)
!5218 = !DILocation(line: 70, column: 13, scope: !5199)
!5219 = !DILocation(line: 71, column: 14, scope: !5199)
!5220 = !DILocation(line: 71, column: 2, scope: !5199)
!5221 = !DILocation(line: 71, column: 7, scope: !5199)
!5222 = !DILocation(line: 71, column: 12, scope: !5199)
!5223 = !DILocation(line: 72, column: 14, scope: !5199)
!5224 = !DILocation(line: 72, column: 2, scope: !5199)
!5225 = !DILocation(line: 72, column: 7, scope: !5199)
!5226 = !DILocation(line: 72, column: 12, scope: !5199)
!5227 = !DILocation(line: 73, column: 2, scope: !5199)
!5228 = !DILocation(line: 73, column: 2, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5199, file: !5088, line: 73, column: 2)
!5230 = !DILocation(line: 73, column: 2, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5229, file: !5088, line: 73, column: 2)
!5232 = !DILocation(line: 73, column: 2, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5229, file: !5088, line: 73, column: 2)
!5234 = !DILocation(line: 74, column: 1, scope: !5199)
!5235 = distinct !DISubprogram(name: "__list_add_valid", scope: !5088, file: !5088, line: 45, type: !5236, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!209, !124, !124, !124}
!5238 = !DILocalVariable(name: "new", arg: 1, scope: !5235, file: !5088, line: 45, type: !124)
!5239 = !DILocation(line: 45, column: 55, scope: !5235)
!5240 = !DILocalVariable(name: "prev", arg: 2, scope: !5235, file: !5088, line: 46, type: !124)
!5241 = !DILocation(line: 46, column: 23, scope: !5235)
!5242 = !DILocalVariable(name: "next", arg: 3, scope: !5235, file: !5088, line: 47, type: !124)
!5243 = !DILocation(line: 47, column: 23, scope: !5235)
!5244 = !DILocation(line: 49, column: 2, scope: !5235)
!5245 = distinct !DISubprogram(name: "list_del", scope: !5088, file: !5088, line: 144, type: !5246, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !124}
!5248 = !DILocalVariable(name: "entry", arg: 1, scope: !5245, file: !5088, line: 144, type: !124)
!5249 = !DILocation(line: 144, column: 47, scope: !5245)
!5250 = !DILocation(line: 146, column: 19, scope: !5245)
!5251 = !DILocation(line: 146, column: 2, scope: !5245)
!5252 = !DILocation(line: 147, column: 2, scope: !5245)
!5253 = !DILocation(line: 147, column: 9, scope: !5245)
!5254 = !DILocation(line: 147, column: 14, scope: !5245)
!5255 = !DILocation(line: 148, column: 2, scope: !5245)
!5256 = !DILocation(line: 148, column: 9, scope: !5245)
!5257 = !DILocation(line: 148, column: 14, scope: !5245)
!5258 = !DILocation(line: 149, column: 1, scope: !5245)
!5259 = distinct !DISubprogram(name: "__list_del_entry", scope: !5088, file: !5088, line: 130, type: !5246, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5260 = !DILocalVariable(name: "entry", arg: 1, scope: !5259, file: !5088, line: 130, type: !124)
!5261 = !DILocation(line: 130, column: 55, scope: !5259)
!5262 = !DILocation(line: 132, column: 30, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5259, file: !5088, line: 132, column: 6)
!5264 = !DILocation(line: 132, column: 7, scope: !5263)
!5265 = !DILocation(line: 132, column: 6, scope: !5259)
!5266 = !DILocation(line: 133, column: 3, scope: !5263)
!5267 = !DILocation(line: 135, column: 13, scope: !5259)
!5268 = !DILocation(line: 135, column: 20, scope: !5259)
!5269 = !DILocation(line: 135, column: 26, scope: !5259)
!5270 = !DILocation(line: 135, column: 33, scope: !5259)
!5271 = !DILocation(line: 135, column: 2, scope: !5259)
!5272 = !DILocation(line: 136, column: 1, scope: !5259)
!5273 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5088, file: !5088, line: 51, type: !5274, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!209, !124}
!5276 = !DILocalVariable(name: "entry", arg: 1, scope: !5273, file: !5088, line: 51, type: !124)
!5277 = !DILocation(line: 51, column: 61, scope: !5273)
!5278 = !DILocation(line: 53, column: 2, scope: !5273)
!5279 = distinct !DISubprogram(name: "__list_del", scope: !5088, file: !5088, line: 110, type: !5089, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !173)
!5280 = !DILocalVariable(name: "prev", arg: 1, scope: !5279, file: !5088, line: 110, type: !124)
!5281 = !DILocation(line: 110, column: 50, scope: !5279)
!5282 = !DILocalVariable(name: "next", arg: 2, scope: !5279, file: !5088, line: 110, type: !124)
!5283 = !DILocation(line: 110, column: 75, scope: !5279)
!5284 = !DILocation(line: 112, column: 15, scope: !5279)
!5285 = !DILocation(line: 112, column: 2, scope: !5279)
!5286 = !DILocation(line: 112, column: 8, scope: !5279)
!5287 = !DILocation(line: 112, column: 13, scope: !5279)
!5288 = !DILocation(line: 113, column: 2, scope: !5279)
!5289 = !DILocation(line: 113, column: 2, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5279, file: !5088, line: 113, column: 2)
!5291 = !DILocation(line: 113, column: 2, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5290, file: !5088, line: 113, column: 2)
!5293 = !DILocation(line: 113, column: 2, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5290, file: !5088, line: 113, column: 2)
!5295 = !DILocation(line: 114, column: 1, scope: !5279)
