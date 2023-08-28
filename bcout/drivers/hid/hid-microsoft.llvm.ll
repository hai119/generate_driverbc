; ModuleID = '../bcout/drivers/hid/hid-microsoft.llvm.bc'
source_filename = "drivers/hid/hid-microsoft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ms_driver_init6:\09\09\09"
module asm ".long\09ms_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.hid_driver = type { i8*, %struct.hid_device_id*, %struct.list_head, %struct.spinlock, i1 (%struct.hid_device*, i1)*, i32 (%struct.hid_device*, %struct.hid_device_id*)*, void (%struct.hid_device*)*, %struct.hid_report_id*, i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)*, %struct.hid_usage_id*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, void (%struct.hid_device*, %struct.hid_report*)*, i8* (%struct.hid_device*, i8*, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*)*, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)*, i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)*, %struct.device_driver }
%struct.hid_device_id = type { i16, i16, i32, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.0 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.0 = type { %struct.ff_periodic_effect }
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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.atomic64_t = type { i64 }
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
%struct.hid_ll_driver = type { i32 (%struct.hid_device*)*, void (%struct.hid_device*)*, i32 (%struct.hid_device*)*, void (%struct.hid_device*)*, i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*)*, void (%struct.hid_device*, %struct.hid_report*, i32)*, i32 (%struct.hid_device*)*, i32 (%struct.hid_device*, i8, i8*, i64, i8, i32)*, i32 (%struct.hid_device*, i8*, i64)*, i32 (%struct.hid_device*, i32, i32, i32)* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_report_id = type { i32 }
%struct.hid_usage_id = type { i32, i32, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.ms_data = type { i64, %struct.hid_device*, %struct.work_struct, i8, i8, i8* }
%struct.xb1s_ff_report = type { i8, i8, [4 x i8], i8, i8, i8 }
%struct.ff_rumble_effect = type { i16, i16 }

@__UNIQUE_ID___addressable_ms_driver_init206 = internal global i8* bitcast (i32 ()* @ms_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@ms_driver = internal global %struct.hid_driver { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.hid_device_id* getelementptr inbounds ([20 x %struct.hid_device_id], [20 x %struct.hid_device_id]* @ms_devices, i32 0, i32 0), %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i1 (%struct.hid_device*, i1)* null, i32 (%struct.hid_device*, %struct.hid_device_id*)* @ms_probe, void (%struct.hid_device*)* @ms_remove, %struct.hid_report_id* null, i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)* null, %struct.hid_usage_id* null, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @ms_event, void (%struct.hid_device*, %struct.hid_report*)* null, i8* (%struct.hid_device*, i8*, i32*)* @ms_report_fixup, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ms_input_mapping, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ms_input_mapped, i32 (%struct.hid_device*, %struct.hid_input*)* null, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* null, i32 (%struct.hid_device*, i32)* null, i32 (%struct.hid_device*)* null, i32 (%struct.hid_device*)* null, %struct.device_driver zeroinitializer }, align 8, !dbg !4070
@__exitcall_ms_driver_exit = internal global void ()* @ms_driver_exit, section ".exitcall.exit", align 8, !dbg !4055
@__UNIQUE_ID_file207 = internal constant [45 x i8] c"hid_microsoft.file=drivers/hid/hid-microsoft\00", section ".modinfo", align 1, !dbg !4060
@__UNIQUE_ID_license208 = internal constant [26 x i8] c"hid_microsoft.license=GPL\00", section ".modinfo", align 1, !dbg !4065
@.str = private unnamed_addr constant [14 x i8] c"hid_microsoft\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"microsoft\00", align 1
@ms_devices = internal constant [20 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1118, i32 59, i64 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 72, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 219, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 220, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1821, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 249, i64 10 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1811, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1840, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 180, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1872, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1842, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 157, i64 16 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 1900, i64 32 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 2010, i64 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1118, i32 227, i64 2 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 1793, i64 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 2331, i64 64 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 765, i64 128 }, %struct.hid_device_id { i16 5, i16 0, i32 1118, i32 736, i64 128 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !4072
@.str.2 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"could not initialize ff, continuing anyway\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no inputs found\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to send FF report\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@ms_event.last_key = internal global i32 0, align 4, !dbg !4075
@.str.7 = private unnamed_addr constant [68 x i8] c"fixing up Microsoft Wireless Receiver Model 1028 report descriptor\0A\00", align 1
@hid_map_usage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4078
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", align 1
@llvm.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ms_driver_init206 to i8*), i8* bitcast (void ()* @ms_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_ms_driver_exit to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file207, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__UNIQUE_ID_license208, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_driver_init() #0 section ".init.text" !dbg !4088 {
entry:
  %call = call i32 @__hid_register_driver(%struct.hid_driver* @ms_driver, %struct.module* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #7, !dbg !4091
  ret i32 %call, !dbg !4091
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ms_driver_exit() #0 section ".exit.text" !dbg !4092 {
entry:
  call void @hid_unregister_driver(%struct.hid_driver* @ms_driver) #7, !dbg !4093
  ret void, !dbg !4093
}

; Function Attrs: noredzone
declare dso_local void @hid_unregister_driver(%struct.hid_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__hid_register_driver(%struct.hid_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_probe(%struct.hid_device* %hdev, %struct.hid_device_id* %id) #2 !dbg !4094 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %id.addr = alloca %struct.hid_device_id*, align 8
  %quirks = alloca i64, align 8
  %ms = alloca %struct.ms_data*, align 8
  %ret = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4095, metadata !DIExpression()), !dbg !4096
  store %struct.hid_device_id* %id, %struct.hid_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %id.addr, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4099, metadata !DIExpression()), !dbg !4100
  %0 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4101
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %0, i32 0, i32 4, !dbg !4102
  %1 = load i64, i64* %driver_data, align 8, !dbg !4102
  store i64 %1, i64* %quirks, align 8, !dbg !4100
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4103, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4105, metadata !DIExpression()), !dbg !4106
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4107
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %2, i32 0, i32 18, !dbg !4108
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 64, i32 3264) #7, !dbg !4109
  %3 = bitcast i8* %call to %struct.ms_data*, !dbg !4109
  store %struct.ms_data* %3, %struct.ms_data** %ms, align 8, !dbg !4110
  %4 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4111
  %cmp = icmp eq %struct.ms_data* %4, null, !dbg !4113
  br i1 %cmp, label %if.then, label %if.end, !dbg !4114

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4115
  br label %return, !dbg !4115

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %quirks, align 8, !dbg !4116
  %6 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4117
  %quirks1 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %6, i32 0, i32 0, !dbg !4118
  store i64 %5, i64* %quirks1, align 8, !dbg !4119
  %7 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4120
  %8 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4121
  %9 = bitcast %struct.ms_data* %8 to i8*, !dbg !4121
  call void @hid_set_drvdata(%struct.hid_device* %7, i8* %9) #7, !dbg !4122
  %10 = load i64, i64* %quirks, align 8, !dbg !4123
  %and = and i64 %10, 16, !dbg !4125
  %tobool = icmp ne i64 %and, 0, !dbg !4125
  br i1 %tobool, label %if.then2, label %if.end5, !dbg !4126

if.then2:                                         ; preds = %if.end
  %11 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4127
  %quirks3 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 25, !dbg !4128
  %12 = load i32, i32* %quirks3, align 4, !dbg !4129
  %conv = zext i32 %12 to i64, !dbg !4129
  %or = or i64 %conv, 8, !dbg !4129
  %conv4 = trunc i64 %or to i32, !dbg !4129
  store i32 %conv4, i32* %quirks3, align 4, !dbg !4129
  br label %if.end5, !dbg !4127

if.end5:                                          ; preds = %if.then2, %if.end
  %13 = load i64, i64* %quirks, align 8, !dbg !4130
  %and6 = and i64 %13, 64, !dbg !4132
  %tobool7 = icmp ne i64 %and6, 0, !dbg !4132
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !4133

if.then8:                                         ; preds = %if.end5
  %14 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4134
  %quirks9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 25, !dbg !4135
  %15 = load i32, i32* %quirks9, align 4, !dbg !4136
  %conv10 = zext i32 %15 to i64, !dbg !4136
  %or11 = or i64 %conv10, 2048, !dbg !4136
  %conv12 = trunc i64 %or11 to i32, !dbg !4136
  store i32 %conv12, i32* %quirks9, align 4, !dbg !4136
  br label %if.end13, !dbg !4134

if.end13:                                         ; preds = %if.then8, %if.end5
  %16 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4137
  %call14 = call i32 @hid_parse(%struct.hid_device* %16) #7, !dbg !4138
  store i32 %call14, i32* %ret, align 4, !dbg !4139
  %17 = load i32, i32* %ret, align 4, !dbg !4140
  %tobool15 = icmp ne i32 %17, 0, !dbg !4140
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4142

if.then16:                                        ; preds = %if.end13
  %18 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4143
  %dev17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 18, !dbg !4143
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4143
  br label %err_free, !dbg !4145

if.end18:                                         ; preds = %if.end13
  %19 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4146
  %20 = load i64, i64* %quirks, align 8, !dbg !4147
  %and19 = and i64 %20, 1, !dbg !4148
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4149
  %21 = zext i1 %tobool20 to i64, !dbg !4149
  %cond = select i1 %tobool20, i64 2, i64 0, !dbg !4149
  %or21 = or i64 45, %cond, !dbg !4150
  %conv22 = trunc i64 %or21 to i32, !dbg !4151
  %call23 = call i32 @hid_hw_start(%struct.hid_device* %19, i32 %conv22) #7, !dbg !4152
  store i32 %call23, i32* %ret, align 4, !dbg !4153
  %22 = load i32, i32* %ret, align 4, !dbg !4154
  %tobool24 = icmp ne i32 %22, 0, !dbg !4154
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !4156

if.then25:                                        ; preds = %if.end18
  %23 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4157
  %dev26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 18, !dbg !4157
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4157
  br label %err_free, !dbg !4159

if.end27:                                         ; preds = %if.end18
  %24 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4160
  %call28 = call i32 @ms_init_ff(%struct.hid_device* %24) #7, !dbg !4161
  store i32 %call28, i32* %ret, align 4, !dbg !4162
  %25 = load i32, i32* %ret, align 4, !dbg !4163
  %tobool29 = icmp ne i32 %25, 0, !dbg !4163
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !4165

if.then30:                                        ; preds = %if.end27
  %26 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4166
  %dev31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %26, i32 0, i32 18, !dbg !4166
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !4166
  br label %if.end32, !dbg !4166

if.end32:                                         ; preds = %if.then30, %if.end27
  store i32 0, i32* %retval, align 4, !dbg !4167
  br label %return, !dbg !4167

err_free:                                         ; preds = %if.then25, %if.then16
  call void @llvm.dbg.label(metadata !4168), !dbg !4169
  %27 = load i32, i32* %ret, align 4, !dbg !4170
  store i32 %27, i32* %retval, align 4, !dbg !4171
  br label %return, !dbg !4171

return:                                           ; preds = %err_free, %if.end32, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !4172
  ret i32 %28, !dbg !4172
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ms_remove(%struct.hid_device* %hdev) #2 !dbg !4173 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4174, metadata !DIExpression()), !dbg !4175
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4176
  call void @hid_hw_stop(%struct.hid_device* %0) #7, !dbg !4177
  %1 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4178
  call void @ms_remove_ff(%struct.hid_device* %1) #7, !dbg !4179
  ret void, !dbg !4180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_event(%struct.hid_device* %hdev, %struct.hid_field* %field, %struct.hid_usage* %usage, i32 %value) #2 !dbg !4077 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %value.addr = alloca i32, align 4
  %ms = alloca %struct.ms_data*, align 8
  %quirks = alloca i64, align 8
  %input = alloca %struct.input_dev*, align 8
  %step = alloca i32, align 4
  %key = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4181, metadata !DIExpression()), !dbg !4182
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4187, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4189, metadata !DIExpression()), !dbg !4190
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4191
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #7, !dbg !4192
  %1 = bitcast i8* %call to %struct.ms_data*, !dbg !4192
  store %struct.ms_data* %1, %struct.ms_data** %ms, align 8, !dbg !4190
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4193, metadata !DIExpression()), !dbg !4194
  %2 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4195
  %quirks1 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %2, i32 0, i32 0, !dbg !4196
  %3 = load i64, i64* %quirks1, align 8, !dbg !4196
  store i64 %3, i64* %quirks, align 8, !dbg !4194
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !4197, metadata !DIExpression()), !dbg !4198
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4199
  %claimed = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 24, !dbg !4201
  %5 = load i32, i32* %claimed, align 8, !dbg !4201
  %conv = zext i32 %5 to i64, !dbg !4199
  %and = and i64 %conv, 1, !dbg !4202
  %tobool = icmp ne i64 %and, 0, !dbg !4202
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4203

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4204
  %hidinput = getelementptr inbounds %struct.hid_field, %struct.hid_field* %6, i32 0, i32 19, !dbg !4205
  %7 = load %struct.hid_input*, %struct.hid_input** %hidinput, align 8, !dbg !4205
  %tobool2 = icmp ne %struct.hid_input* %7, null, !dbg !4204
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !4206

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %8 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4207
  %type = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %8, i32 0, i32 6, !dbg !4208
  %9 = load i8, i8* %type, align 4, !dbg !4208
  %tobool4 = icmp ne i8 %9, 0, !dbg !4207
  br i1 %tobool4, label %if.end, label %if.then, !dbg !4209

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !4210
  br label %return, !dbg !4210

if.end:                                           ; preds = %lor.lhs.false3
  %10 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4211
  %hidinput5 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %10, i32 0, i32 19, !dbg !4212
  %11 = load %struct.hid_input*, %struct.hid_input** %hidinput5, align 8, !dbg !4212
  %input6 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %11, i32 0, i32 2, !dbg !4213
  %12 = load %struct.input_dev*, %struct.input_dev** %input6, align 8, !dbg !4213
  store %struct.input_dev* %12, %struct.input_dev** %input, align 8, !dbg !4214
  %13 = load i64, i64* %quirks, align 8, !dbg !4215
  %and7 = and i64 %13, 2, !dbg !4217
  %tobool8 = icmp ne i64 %and7, 0, !dbg !4217
  br i1 %tobool8, label %land.lhs.true, label %if.end14, !dbg !4218

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4219
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0, !dbg !4220
  %15 = load i32, i32* %hid, align 4, !dbg !4220
  %cmp = icmp eq i32 %15, -16711936, !dbg !4221
  br i1 %cmp, label %if.then10, label %if.end14, !dbg !4222

if.then10:                                        ; preds = %land.lhs.true
  %16 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4223
  %17 = load i32, i32* %value.addr, align 4, !dbg !4225
  %and11 = and i32 %17, 1, !dbg !4226
  call void @input_report_key(%struct.input_dev* %16, i32 117, i32 %and11) #7, !dbg !4227
  %18 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4228
  %19 = load i32, i32* %value.addr, align 4, !dbg !4229
  %and12 = and i32 %19, 2, !dbg !4230
  call void @input_report_key(%struct.input_dev* %18, i32 179, i32 %and12) #7, !dbg !4231
  %20 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4232
  %21 = load i32, i32* %value.addr, align 4, !dbg !4233
  %and13 = and i32 %21, 4, !dbg !4234
  call void @input_report_key(%struct.input_dev* %20, i32 180, i32 %and13) #7, !dbg !4235
  store i32 1, i32* %retval, align 4, !dbg !4236
  br label %return, !dbg !4236

if.end14:                                         ; preds = %land.lhs.true, %if.end
  %22 = load i64, i64* %quirks, align 8, !dbg !4237
  %and15 = and i64 %22, 2, !dbg !4239
  %tobool16 = icmp ne i64 %and15, 0, !dbg !4239
  br i1 %tobool16, label %land.lhs.true17, label %if.end25, !dbg !4240

land.lhs.true17:                                  ; preds = %if.end14
  %23 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4241
  %hid18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0, !dbg !4242
  %24 = load i32, i32* %hid18, align 4, !dbg !4242
  %cmp19 = icmp eq i32 %24, -16711935, !dbg !4243
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !4244

if.then21:                                        ; preds = %land.lhs.true17
  call void @llvm.dbg.declare(metadata i32* %step, metadata !4245, metadata !DIExpression()), !dbg !4247
  %25 = load i32, i32* %value.addr, align 4, !dbg !4248
  %and22 = and i32 %25, 96, !dbg !4249
  %shr = ashr i32 %and22, 5, !dbg !4250
  %add = add i32 %shr, 1, !dbg !4251
  store i32 %add, i32* %step, align 4, !dbg !4247
  %26 = load i32, i32* %value.addr, align 4, !dbg !4252
  %and23 = and i32 %26, 31, !dbg !4253
  switch i32 %and23, label %sw.epilog [
    i32 1, label %sw.bb
    i32 31, label %sw.bb24
  ], !dbg !4254

sw.bb:                                            ; preds = %if.then21
  %27 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4255
  %28 = load i32, i32* %step, align 4, !dbg !4257
  call void @input_report_rel(%struct.input_dev* %27, i32 8, i32 %28) #7, !dbg !4258
  br label %sw.epilog, !dbg !4259

sw.bb24:                                          ; preds = %if.then21
  %29 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4260
  %30 = load i32, i32* %step, align 4, !dbg !4261
  %sub = sub i32 0, %30, !dbg !4262
  call void @input_report_rel(%struct.input_dev* %29, i32 8, i32 %sub) #7, !dbg !4263
  br label %sw.epilog, !dbg !4264

sw.epilog:                                        ; preds = %if.then21, %sw.bb24, %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !4265
  br label %return, !dbg !4265

if.end25:                                         ; preds = %land.lhs.true17, %if.end14
  %31 = load i64, i64* %quirks, align 8, !dbg !4266
  %and26 = and i64 %31, 2, !dbg !4268
  %tobool27 = icmp ne i64 %and26, 0, !dbg !4268
  br i1 %tobool27, label %land.lhs.true28, label %if.end46, !dbg !4269

land.lhs.true28:                                  ; preds = %if.end25
  %32 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4270
  %hid29 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 0, !dbg !4271
  %33 = load i32, i32* %hid29, align 4, !dbg !4271
  %cmp30 = icmp eq i32 %33, -16711931, !dbg !4272
  br i1 %cmp30, label %if.then32, label %if.end46, !dbg !4273

if.then32:                                        ; preds = %land.lhs.true28
  call void @llvm.dbg.declare(metadata i32* %key, metadata !4274, metadata !DIExpression()), !dbg !4276
  store i32 0, i32* %key, align 4, !dbg !4276
  %34 = load i32, i32* %value.addr, align 4, !dbg !4277
  switch i32 %34, label %sw.epilog38 [
    i32 1, label %sw.bb33
    i32 2, label %sw.bb34
    i32 4, label %sw.bb35
    i32 8, label %sw.bb36
    i32 16, label %sw.bb37
  ], !dbg !4278

sw.bb33:                                          ; preds = %if.then32
  store i32 184, i32* %key, align 4, !dbg !4279
  br label %sw.epilog38, !dbg !4281

sw.bb34:                                          ; preds = %if.then32
  store i32 185, i32* %key, align 4, !dbg !4282
  br label %sw.epilog38, !dbg !4283

sw.bb35:                                          ; preds = %if.then32
  store i32 186, i32* %key, align 4, !dbg !4284
  br label %sw.epilog38, !dbg !4285

sw.bb36:                                          ; preds = %if.then32
  store i32 187, i32* %key, align 4, !dbg !4286
  br label %sw.epilog38, !dbg !4287

sw.bb37:                                          ; preds = %if.then32
  store i32 188, i32* %key, align 4, !dbg !4288
  br label %sw.epilog38, !dbg !4289

sw.epilog38:                                      ; preds = %if.then32, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33
  %35 = load i32, i32* %key, align 4, !dbg !4290
  %tobool39 = icmp ne i32 %35, 0, !dbg !4290
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !4292

if.then40:                                        ; preds = %sw.epilog38
  %36 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4293
  %37 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4295
  %type41 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %37, i32 0, i32 6, !dbg !4296
  %38 = load i8, i8* %type41, align 4, !dbg !4296
  %conv42 = zext i8 %38 to i32, !dbg !4295
  %39 = load i32, i32* %key, align 4, !dbg !4297
  call void @input_event(%struct.input_dev* %36, i32 %conv42, i32 %39, i32 1) #7, !dbg !4298
  %40 = load i32, i32* %key, align 4, !dbg !4299
  store i32 %40, i32* @ms_event.last_key, align 4, !dbg !4300
  br label %if.end45, !dbg !4301

if.else:                                          ; preds = %sw.epilog38
  %41 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4302
  %42 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4303
  %type43 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %42, i32 0, i32 6, !dbg !4304
  %43 = load i8, i8* %type43, align 4, !dbg !4304
  %conv44 = zext i8 %43 to i32, !dbg !4303
  %44 = load i32, i32* @ms_event.last_key, align 4, !dbg !4305
  call void @input_event(%struct.input_dev* %41, i32 %conv44, i32 %44, i32 0) #7, !dbg !4306
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then40
  store i32 1, i32* %retval, align 4, !dbg !4307
  br label %return, !dbg !4307

if.end46:                                         ; preds = %land.lhs.true28, %if.end25
  store i32 0, i32* %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

return:                                           ; preds = %if.end46, %if.end45, %sw.epilog, %if.then10, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !4309
  ret i32 %45, !dbg !4309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ms_report_fixup(%struct.hid_device* %hdev, i8* %rdesc, i32* %rsize) #2 !dbg !4310 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %rdesc.addr = alloca i8*, align 8
  %rsize.addr = alloca i32*, align 8
  %ms = alloca %struct.ms_data*, align 8
  %quirks = alloca i64, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  store i8* %rdesc, i8** %rdesc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rdesc.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  store i32* %rsize, i32** %rsize.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %rsize.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4317, metadata !DIExpression()), !dbg !4318
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4319
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #7, !dbg !4320
  %1 = bitcast i8* %call to %struct.ms_data*, !dbg !4320
  store %struct.ms_data* %1, %struct.ms_data** %ms, align 8, !dbg !4318
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4321, metadata !DIExpression()), !dbg !4322
  %2 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4323
  %quirks1 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %2, i32 0, i32 0, !dbg !4324
  %3 = load i64, i64* %quirks1, align 8, !dbg !4324
  store i64 %3, i64* %quirks, align 8, !dbg !4322
  %4 = load i64, i64* %quirks, align 8, !dbg !4325
  %and = and i64 %4, 8, !dbg !4327
  %tobool = icmp ne i64 %and, 0, !dbg !4327
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4328

land.lhs.true:                                    ; preds = %entry
  %5 = load i32*, i32** %rsize.addr, align 8, !dbg !4329
  %6 = load i32, i32* %5, align 4, !dbg !4330
  %cmp = icmp eq i32 %6, 571, !dbg !4331
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !4332

land.lhs.true2:                                   ; preds = %land.lhs.true
  %7 = load i8*, i8** %rdesc.addr, align 8, !dbg !4333
  %arrayidx = getelementptr i8, i8* %7, i64 557, !dbg !4333
  %8 = load i8, i8* %arrayidx, align 1, !dbg !4333
  %conv = zext i8 %8 to i32, !dbg !4333
  %cmp3 = icmp eq i32 %conv, 25, !dbg !4334
  br i1 %cmp3, label %land.lhs.true5, label %if.end, !dbg !4335

land.lhs.true5:                                   ; preds = %land.lhs.true2
  %9 = load i8*, i8** %rdesc.addr, align 8, !dbg !4336
  %arrayidx6 = getelementptr i8, i8* %9, i64 559, !dbg !4336
  %10 = load i8, i8* %arrayidx6, align 1, !dbg !4336
  %conv7 = zext i8 %10 to i32, !dbg !4336
  %cmp8 = icmp eq i32 %conv7, 41, !dbg !4337
  br i1 %cmp8, label %if.then, label %if.end, !dbg !4338

if.then:                                          ; preds = %land.lhs.true5
  %11 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4339
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 18, !dbg !4339
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !4339
  %12 = load i8*, i8** %rdesc.addr, align 8, !dbg !4341
  %arrayidx10 = getelementptr i8, i8* %12, i64 557, !dbg !4341
  store i8 53, i8* %arrayidx10, align 1, !dbg !4342
  %13 = load i8*, i8** %rdesc.addr, align 8, !dbg !4343
  %arrayidx11 = getelementptr i8, i8* %13, i64 559, !dbg !4343
  store i8 69, i8* %arrayidx11, align 1, !dbg !4344
  br label %if.end, !dbg !4345

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true2, %land.lhs.true, %entry
  %14 = load i8*, i8** %rdesc.addr, align 8, !dbg !4346
  ret i8* %14, !dbg !4347
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_input_mapping(%struct.hid_device* %hdev, %struct.hid_input* %hi, %struct.hid_field* %field, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4348 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hi.addr = alloca %struct.hid_input*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %ms = alloca %struct.ms_data*, align 8
  %quirks = alloca i64, align 8
  %ret = alloca i32, align 4
  %ret15 = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4351, metadata !DIExpression()), !dbg !4352
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4353, metadata !DIExpression()), !dbg !4354
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4355, metadata !DIExpression()), !dbg !4356
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4357, metadata !DIExpression()), !dbg !4358
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4359, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4361, metadata !DIExpression()), !dbg !4362
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4363
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #7, !dbg !4364
  %1 = bitcast i8* %call to %struct.ms_data*, !dbg !4364
  store %struct.ms_data* %1, %struct.ms_data** %ms, align 8, !dbg !4362
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4365, metadata !DIExpression()), !dbg !4366
  %2 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4367
  %quirks1 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %2, i32 0, i32 0, !dbg !4368
  %3 = load i64, i64* %quirks1, align 8, !dbg !4368
  store i64 %3, i64* %quirks, align 8, !dbg !4366
  %4 = load i64, i64* %quirks, align 8, !dbg !4369
  %and = and i64 %4, 2, !dbg !4371
  %tobool = icmp ne i64 %and, 0, !dbg !4371
  br i1 %tobool, label %if.then, label %if.end5, !dbg !4372

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4373, metadata !DIExpression()), !dbg !4375
  %5 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4376
  %6 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4377
  %7 = load i64**, i64*** %bit.addr, align 8, !dbg !4378
  %8 = load i32*, i32** %max.addr, align 8, !dbg !4379
  %call2 = call i32 @ms_ergonomy_kb_quirk(%struct.hid_input* %5, %struct.hid_usage* %6, i64** %7, i32* %8) #7, !dbg !4380
  store i32 %call2, i32* %ret, align 4, !dbg !4375
  %9 = load i32, i32* %ret, align 4, !dbg !4381
  %tobool3 = icmp ne i32 %9, 0, !dbg !4381
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4383

if.then4:                                         ; preds = %if.then
  %10 = load i32, i32* %ret, align 4, !dbg !4384
  store i32 %10, i32* %retval, align 4, !dbg !4385
  br label %return, !dbg !4385

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !4386

if.end5:                                          ; preds = %if.end, %entry
  %11 = load i64, i64* %quirks, align 8, !dbg !4387
  %and6 = and i64 %11, 4, !dbg !4389
  %tobool7 = icmp ne i64 %and6, 0, !dbg !4389
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !4390

land.lhs.true:                                    ; preds = %if.end5
  %12 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4391
  %13 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4392
  %14 = load i64**, i64*** %bit.addr, align 8, !dbg !4393
  %15 = load i32*, i32** %max.addr, align 8, !dbg !4394
  %call8 = call i32 @ms_presenter_8k_quirk(%struct.hid_input* %12, %struct.hid_usage* %13, i64** %14, i32* %15) #7, !dbg !4395
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4395
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4396

if.then10:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !4397
  br label %return, !dbg !4397

if.end11:                                         ; preds = %land.lhs.true, %if.end5
  %16 = load i64, i64* %quirks, align 8, !dbg !4398
  %and12 = and i64 %16, 64, !dbg !4400
  %tobool13 = icmp ne i64 %and12, 0, !dbg !4400
  br i1 %tobool13, label %if.then14, label %if.end20, !dbg !4401

if.then14:                                        ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i32* %ret15, metadata !4402, metadata !DIExpression()), !dbg !4404
  %17 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4405
  %18 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4406
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4407
  %20 = load i64**, i64*** %bit.addr, align 8, !dbg !4408
  %21 = load i32*, i32** %max.addr, align 8, !dbg !4409
  %call16 = call i32 @ms_surface_dial_quirk(%struct.hid_input* %17, %struct.hid_field* %18, %struct.hid_usage* %19, i64** %20, i32* %21) #7, !dbg !4410
  store i32 %call16, i32* %ret15, align 4, !dbg !4404
  %22 = load i32, i32* %ret15, align 4, !dbg !4411
  %tobool17 = icmp ne i32 %22, 0, !dbg !4411
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4413

if.then18:                                        ; preds = %if.then14
  %23 = load i32, i32* %ret15, align 4, !dbg !4414
  store i32 %23, i32* %retval, align 4, !dbg !4415
  br label %return, !dbg !4415

if.end19:                                         ; preds = %if.then14
  br label %if.end20, !dbg !4416

if.end20:                                         ; preds = %if.end19, %if.end11
  store i32 0, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

return:                                           ; preds = %if.end20, %if.then18, %if.then10, %if.then4
  %24 = load i32, i32* %retval, align 4, !dbg !4418
  ret i32 %24, !dbg !4418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_input_mapped(%struct.hid_device* %hdev, %struct.hid_input* %hi, %struct.hid_field* %field, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4419 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hi.addr = alloca %struct.hid_input*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %ms = alloca %struct.ms_data*, align 8
  %quirks = alloca i64, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4420, metadata !DIExpression()), !dbg !4421
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4426, metadata !DIExpression()), !dbg !4427
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4428, metadata !DIExpression()), !dbg !4429
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4430, metadata !DIExpression()), !dbg !4431
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4432, metadata !DIExpression()), !dbg !4433
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4434
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #7, !dbg !4435
  %1 = bitcast i8* %call to %struct.ms_data*, !dbg !4435
  store %struct.ms_data* %1, %struct.ms_data** %ms, align 8, !dbg !4433
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4436, metadata !DIExpression()), !dbg !4437
  %2 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4438
  %quirks1 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %2, i32 0, i32 0, !dbg !4439
  %3 = load i64, i64* %quirks1, align 8, !dbg !4439
  store i64 %3, i64* %quirks, align 8, !dbg !4437
  %4 = load i64, i64* %quirks, align 8, !dbg !4440
  %and = and i64 %4, 32, !dbg !4442
  %tobool = icmp ne i64 %and, 0, !dbg !4442
  br i1 %tobool, label %if.then, label %if.end, !dbg !4443

if.then:                                          ; preds = %entry
  %5 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4444
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %5, i32 0, i32 5, !dbg !4445
  %6 = load i16, i16* %code, align 2, !dbg !4445
  %conv = zext i16 %6 to i64, !dbg !4444
  %7 = load i64**, i64*** %bit.addr, align 8, !dbg !4446
  %8 = load i64*, i64** %7, align 8, !dbg !4447
  call void @clear_bit(i64 %conv, i64* %8) #7, !dbg !4448
  br label %if.end, !dbg !4448

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !4449
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4450 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4459
  %1 = load i64, i64* %size.addr, align 8, !dbg !4460
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4461
  %or = or i32 %2, 256, !dbg !4462
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #7, !dbg !4463
  ret i8* %call, !dbg !4464
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_set_drvdata(%struct.hid_device* %hdev, i8* %data) #2 !dbg !4465 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4468, metadata !DIExpression()), !dbg !4469
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4472
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !4473
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4474
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #7, !dbg !4475
  ret void, !dbg !4476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_parse(%struct.hid_device* %hdev) #2 !dbg !4477 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4480
  %call = call i32 @hid_open_report(%struct.hid_device* %0) #7, !dbg !4481
  ret i32 %call, !dbg !4482
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_init_ff(%struct.hid_device* %hdev) #2 !dbg !4483 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hidinput = alloca %struct.hid_input*, align 8
  %input_dev = alloca %struct.input_dev*, align 8
  %ms = alloca %struct.ms_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hid_input*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4484, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput, metadata !4486, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input_dev, metadata !4488, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4490, metadata !DIExpression()), !dbg !4491
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4492
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #7, !dbg !4493
  %1 = bitcast i8* %call to %struct.ms_data*, !dbg !4493
  store %struct.ms_data* %1, %struct.ms_data** %ms, align 8, !dbg !4491
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4494
  %inputs = getelementptr inbounds %struct.hid_device, %struct.hid_device* %2, i32 0, i32 27, !dbg !4496
  %call1 = call i32 @list_empty(%struct.list_head* %inputs) #7, !dbg !4497
  %tobool = icmp ne i32 %call1, 0, !dbg !4497
  br i1 %tobool, label %if.then, label %if.end, !dbg !4498

if.then:                                          ; preds = %entry
  %3 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4499
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %3, i32 0, i32 18, !dbg !4499
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !4499
  store i32 -19, i32* %retval, align 4, !dbg !4501
  br label %return, !dbg !4501

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4502, metadata !DIExpression()), !dbg !4504
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4504
  %inputs2 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 27, !dbg !4504
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %inputs2, i32 0, i32 0, !dbg !4504
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4504
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !4504
  store i8* %6, i8** %__mptr, align 8, !dbg !4504
  br label %do.body, !dbg !4504

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4505

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !4504
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !4504
  %8 = bitcast i8* %add.ptr to %struct.hid_input*, !dbg !4504
  store %struct.hid_input* %8, %struct.hid_input** %tmp, align 8, !dbg !4505
  %9 = load %struct.hid_input*, %struct.hid_input** %tmp, align 8, !dbg !4504
  store %struct.hid_input* %9, %struct.hid_input** %hidinput, align 8, !dbg !4507
  %10 = load %struct.hid_input*, %struct.hid_input** %hidinput, align 8, !dbg !4508
  %input = getelementptr inbounds %struct.hid_input, %struct.hid_input* %10, i32 0, i32 2, !dbg !4509
  %11 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4509
  store %struct.input_dev* %11, %struct.input_dev** %input_dev, align 8, !dbg !4510
  %12 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4511
  %quirks = getelementptr inbounds %struct.ms_data, %struct.ms_data* %12, i32 0, i32 0, !dbg !4513
  %13 = load i64, i64* %quirks, align 8, !dbg !4513
  %and = and i64 %13, 128, !dbg !4514
  %tobool3 = icmp ne i64 %and, 0, !dbg !4514
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4515

if.then4:                                         ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !4516
  br label %return, !dbg !4516

if.end5:                                          ; preds = %do.end
  %14 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4517
  %15 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4518
  %hdev6 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %15, i32 0, i32 1, !dbg !4519
  store %struct.hid_device* %14, %struct.hid_device** %hdev6, align 8, !dbg !4520
  br label %do.body7, !dbg !4521

do.body7:                                         ; preds = %if.end5
  %16 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4522
  %ff_worker = getelementptr inbounds %struct.ms_data, %struct.ms_data* %16, i32 0, i32 2, !dbg !4522
  call void @__init_work(%struct.work_struct* %ff_worker, i32 0) #7, !dbg !4522
  %17 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4522
  %ff_worker8 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %17, i32 0, i32 2, !dbg !4522
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %ff_worker8, i32 0, i32 0, !dbg !4522
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4522
  store i64 68719476704, i64* %counter, align 8, !dbg !4522
  %18 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4522
  %19 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false), !dbg !4522
  %20 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4522
  %ff_worker9 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %20, i32 0, i32 2, !dbg !4522
  %entry10 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %ff_worker9, i32 0, i32 1, !dbg !4522
  call void @INIT_LIST_HEAD(%struct.list_head* %entry10) #7, !dbg !4522
  %21 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4522
  %ff_worker11 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %21, i32 0, i32 2, !dbg !4522
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %ff_worker11, i32 0, i32 2, !dbg !4522
  store void (%struct.work_struct*)* @ms_ff_worker, void (%struct.work_struct*)** %func, align 8, !dbg !4522
  br label %do.end12, !dbg !4522

do.end12:                                         ; preds = %do.body7
  %22 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4524
  %dev13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 18, !dbg !4525
  %call14 = call i8* @devm_kzalloc(%struct.device* %dev13, i64 9, i32 3264) #7, !dbg !4526
  %23 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4527
  %output_report_dmabuf = getelementptr inbounds %struct.ms_data, %struct.ms_data* %23, i32 0, i32 5, !dbg !4528
  store i8* %call14, i8** %output_report_dmabuf, align 8, !dbg !4529
  %24 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4530
  %output_report_dmabuf15 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %24, i32 0, i32 5, !dbg !4532
  %25 = load i8*, i8** %output_report_dmabuf15, align 8, !dbg !4532
  %cmp = icmp eq i8* %25, null, !dbg !4533
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !4534

if.then16:                                        ; preds = %do.end12
  store i32 -12, i32* %retval, align 4, !dbg !4535
  br label %return, !dbg !4535

if.end17:                                         ; preds = %do.end12
  %26 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4536
  call void @input_set_capability(%struct.input_dev* %26, i32 21, i32 80) #7, !dbg !4537
  %27 = load %struct.input_dev*, %struct.input_dev** %input_dev, align 8, !dbg !4538
  %call18 = call i32 @input_ff_create_memless(%struct.input_dev* %27, i8* null, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* @ms_play_effect) #7, !dbg !4539
  store i32 %call18, i32* %retval, align 4, !dbg !4540
  br label %return, !dbg !4540

return:                                           ; preds = %if.end17, %if.then16, %if.then4, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !4541
  ret i32 %28, !dbg !4541
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4542 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4545, metadata !DIExpression()), !dbg !4546
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4549
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4550
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4551
  store i8* %0, i8** %driver_data, align 8, !dbg !4552
  ret void, !dbg !4553
}

; Function Attrs: noredzone
declare dso_local i32 @hid_open_report(%struct.hid_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hid_get_drvdata(%struct.hid_device* %hdev) #2 !dbg !4554 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4559
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !4560
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #7, !dbg !4561
  ret i8* %call, !dbg !4562
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #2 !dbg !4563 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4569, metadata !DIExpression()), !dbg !4570
  br label %do.body, !dbg !4571

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4573

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4571
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4571
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4571
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4573
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4571
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4575
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4576
  %conv = zext i1 %cmp to i32, !dbg !4576
  ret i32 %conv, !dbg !4577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !4578 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  ret void, !dbg !4585
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !4586 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  br label %do.body, !dbg !4591

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4592

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4594

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4592

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4596
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4596
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4596
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4596
  br label %do.end3, !dbg !4596

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4592

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4598
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4599
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4600
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4601
  ret void, !dbg !4602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ms_ff_worker(%struct.work_struct* %work) #2 !dbg !4603 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %ms = alloca %struct.ms_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ms_data*, align 8
  %hdev = alloca %struct.hid_device*, align 8
  %r = alloca %struct.xb1s_ff_report*, align 8
  %ret = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4604, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4606, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4608, metadata !DIExpression()), !dbg !4610
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4610
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4610
  store i8* %1, i8** %__mptr, align 8, !dbg !4610
  br label %do.body, !dbg !4610

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4611

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4610
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !4610
  %3 = bitcast i8* %add.ptr to %struct.ms_data*, !dbg !4610
  store %struct.ms_data* %3, %struct.ms_data** %tmp, align 8, !dbg !4611
  %4 = load %struct.ms_data*, %struct.ms_data** %tmp, align 8, !dbg !4610
  store %struct.ms_data* %4, %struct.ms_data** %ms, align 8, !dbg !4607
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev, metadata !4613, metadata !DIExpression()), !dbg !4614
  %5 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4615
  %hdev1 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %5, i32 0, i32 1, !dbg !4616
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev1, align 8, !dbg !4616
  store %struct.hid_device* %6, %struct.hid_device** %hdev, align 8, !dbg !4614
  call void @llvm.dbg.declare(metadata %struct.xb1s_ff_report** %r, metadata !4617, metadata !DIExpression()), !dbg !4628
  %7 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4629
  %output_report_dmabuf = getelementptr inbounds %struct.ms_data, %struct.ms_data* %7, i32 0, i32 5, !dbg !4630
  %8 = load i8*, i8** %output_report_dmabuf, align 8, !dbg !4630
  %9 = bitcast i8* %8 to %struct.xb1s_ff_report*, !dbg !4629
  store %struct.xb1s_ff_report* %9, %struct.xb1s_ff_report** %r, align 8, !dbg !4628
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4631, metadata !DIExpression()), !dbg !4632
  %10 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4633
  %11 = bitcast %struct.xb1s_ff_report* %10 to i8*, !dbg !4634
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 9, i1 false), !dbg !4634
  %12 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4635
  %report_id = getelementptr inbounds %struct.xb1s_ff_report, %struct.xb1s_ff_report* %12, i32 0, i32 0, !dbg !4636
  store i8 3, i8* %report_id, align 1, !dbg !4637
  %13 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4638
  %enable = getelementptr inbounds %struct.xb1s_ff_report, %struct.xb1s_ff_report* %13, i32 0, i32 1, !dbg !4639
  store i8 3, i8* %enable, align 1, !dbg !4640
  %14 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4641
  %duration_10ms = getelementptr inbounds %struct.xb1s_ff_report, %struct.xb1s_ff_report* %14, i32 0, i32 3, !dbg !4642
  store i8 -1, i8* %duration_10ms, align 1, !dbg !4643
  %15 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4644
  %loop_count = getelementptr inbounds %struct.xb1s_ff_report, %struct.xb1s_ff_report* %15, i32 0, i32 5, !dbg !4645
  store i8 -1, i8* %loop_count, align 1, !dbg !4646
  %16 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4647
  %strong = getelementptr inbounds %struct.ms_data, %struct.ms_data* %16, i32 0, i32 3, !dbg !4648
  %17 = load i8, i8* %strong, align 8, !dbg !4648
  %18 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4649
  %magnitude = getelementptr inbounds %struct.xb1s_ff_report, %struct.xb1s_ff_report* %18, i32 0, i32 2, !dbg !4650
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %magnitude, i64 0, i64 2, !dbg !4649
  store i8 %17, i8* %arrayidx, align 1, !dbg !4651
  %19 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4652
  %weak = getelementptr inbounds %struct.ms_data, %struct.ms_data* %19, i32 0, i32 4, !dbg !4653
  %20 = load i8, i8* %weak, align 1, !dbg !4653
  %21 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4654
  %magnitude2 = getelementptr inbounds %struct.xb1s_ff_report, %struct.xb1s_ff_report* %21, i32 0, i32 2, !dbg !4655
  %arrayidx3 = getelementptr [4 x i8], [4 x i8]* %magnitude2, i64 0, i64 3, !dbg !4654
  store i8 %20, i8* %arrayidx3, align 1, !dbg !4656
  %22 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4657
  %23 = load %struct.xb1s_ff_report*, %struct.xb1s_ff_report** %r, align 8, !dbg !4658
  %24 = bitcast %struct.xb1s_ff_report* %23 to i8*, !dbg !4659
  %call = call i32 @hid_hw_output_report(%struct.hid_device* %22, i8* %24, i64 9) #7, !dbg !4660
  store i32 %call, i32* %ret, align 4, !dbg !4661
  %25 = load i32, i32* %ret, align 4, !dbg !4662
  %cmp = icmp slt i32 %25, 0, !dbg !4664
  br i1 %cmp, label %if.then, label %if.end, !dbg !4665

if.then:                                          ; preds = %do.end
  %26 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4666
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %26, i32 0, i32 18, !dbg !4666
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !4666
  br label %if.end, !dbg !4666

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !4667
}

; Function Attrs: noredzone
declare dso_local void @input_set_capability(%struct.input_dev*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @input_ff_create_memless(%struct.input_dev*, i8*, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_play_effect(%struct.input_dev* %dev, i8* %data, %struct.ff_effect* %effect) #2 !dbg !4668 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %hid = alloca %struct.hid_device*, align 8
  %ms = alloca %struct.ms_data*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hid, metadata !4677, metadata !DIExpression()), !dbg !4678
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4679
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #7, !dbg !4680
  %1 = bitcast i8* %call to %struct.hid_device*, !dbg !4680
  store %struct.hid_device* %1, %struct.hid_device** %hid, align 8, !dbg !4678
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4681, metadata !DIExpression()), !dbg !4682
  %2 = load %struct.hid_device*, %struct.hid_device** %hid, align 8, !dbg !4683
  %call1 = call i8* @hid_get_drvdata(%struct.hid_device* %2) #7, !dbg !4684
  %3 = bitcast i8* %call1 to %struct.ms_data*, !dbg !4684
  store %struct.ms_data* %3, %struct.ms_data** %ms, align 8, !dbg !4682
  %4 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4685
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 0, !dbg !4687
  %5 = load i16, i16* %type, align 8, !dbg !4687
  %conv = zext i16 %5 to i32, !dbg !4685
  %cmp = icmp ne i32 %conv, 80, !dbg !4688
  br i1 %cmp, label %if.then, label %if.end, !dbg !4689

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4690
  br label %return, !dbg !4690

if.end:                                           ; preds = %entry
  %6 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4691
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 5, !dbg !4692
  %rumble = bitcast %union.anon.0* %u to %struct.ff_rumble_effect*, !dbg !4693
  %strong_magnitude = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble, i32 0, i32 0, !dbg !4694
  %7 = load i16, i16* %strong_magnitude, align 8, !dbg !4694
  %conv3 = zext i16 %7 to i32, !dbg !4695
  %mul = mul i32 %conv3, 100, !dbg !4696
  %div = udiv i32 %mul, 65535, !dbg !4697
  %conv4 = trunc i32 %div to i8, !dbg !4698
  %8 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4699
  %strong = getelementptr inbounds %struct.ms_data, %struct.ms_data* %8, i32 0, i32 3, !dbg !4700
  store i8 %conv4, i8* %strong, align 8, !dbg !4701
  %9 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4702
  %u5 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %9, i32 0, i32 5, !dbg !4703
  %rumble6 = bitcast %union.anon.0* %u5 to %struct.ff_rumble_effect*, !dbg !4704
  %weak_magnitude = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble6, i32 0, i32 1, !dbg !4705
  %10 = load i16, i16* %weak_magnitude, align 2, !dbg !4705
  %conv7 = zext i16 %10 to i32, !dbg !4706
  %mul8 = mul i32 %conv7, 100, !dbg !4707
  %div9 = udiv i32 %mul8, 65535, !dbg !4708
  %conv10 = trunc i32 %div9 to i8, !dbg !4709
  %11 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4710
  %weak = getelementptr inbounds %struct.ms_data, %struct.ms_data* %11, i32 0, i32 4, !dbg !4711
  store i8 %conv10, i8* %weak, align 1, !dbg !4712
  %12 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4713
  %ff_worker = getelementptr inbounds %struct.ms_data, %struct.ms_data* %12, i32 0, i32 2, !dbg !4714
  %call11 = call zeroext i1 @schedule_work(%struct.work_struct* %ff_worker) #7, !dbg !4715
  store i32 0, i32* %retval, align 4, !dbg !4716
  br label %return, !dbg !4716

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4717
  ret i32 %13, !dbg !4717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !4718 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4723, metadata !DIExpression()), !dbg !4724
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4725
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4726
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4726
  ret i8* %1, !dbg !4727
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_hw_output_report(%struct.hid_device* %hdev, i8* %buf, i64 %len) #2 !dbg !4728 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4731, metadata !DIExpression()), !dbg !4732
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4733, metadata !DIExpression()), !dbg !4734
  %0 = load i64, i64* %len.addr, align 8, !dbg !4735
  %cmp = icmp ult i64 %0, 1, !dbg !4737
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4738

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8, !dbg !4739
  %cmp1 = icmp ugt i64 %1, 8192, !dbg !4740
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4741

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4742
  %tobool = icmp ne i8* %2, null, !dbg !4742
  br i1 %tobool, label %if.end, label %if.then, !dbg !4743

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4744
  br label %return, !dbg !4744

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4745
  %ll_driver = getelementptr inbounds %struct.hid_device, %struct.hid_device* %3, i32 0, i32 20, !dbg !4747
  %4 = load %struct.hid_ll_driver*, %struct.hid_ll_driver** %ll_driver, align 8, !dbg !4747
  %output_report = getelementptr inbounds %struct.hid_ll_driver, %struct.hid_ll_driver* %4, i32 0, i32 9, !dbg !4748
  %5 = load i32 (%struct.hid_device*, i8*, i64)*, i32 (%struct.hid_device*, i8*, i64)** %output_report, align 8, !dbg !4748
  %tobool3 = icmp ne i32 (%struct.hid_device*, i8*, i64)* %5, null, !dbg !4745
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !4749

if.then4:                                         ; preds = %if.end
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4750
  %ll_driver5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 20, !dbg !4751
  %7 = load %struct.hid_ll_driver*, %struct.hid_ll_driver** %ll_driver5, align 8, !dbg !4751
  %output_report6 = getelementptr inbounds %struct.hid_ll_driver, %struct.hid_ll_driver* %7, i32 0, i32 9, !dbg !4752
  %8 = load i32 (%struct.hid_device*, i8*, i64)*, i32 (%struct.hid_device*, i8*, i64)** %output_report6, align 8, !dbg !4752
  %9 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4753
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4754
  %11 = load i64, i64* %len.addr, align 8, !dbg !4755
  %call = call i32 %8(%struct.hid_device* %9, i8* %10, i64 %11) #7, !dbg !4750
  store i32 %call, i32* %retval, align 4, !dbg !4756
  br label %return, !dbg !4756

if.end7:                                          ; preds = %if.end
  store i32 -38, i32* %retval, align 4, !dbg !4757
  br label %return, !dbg !4757

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4758
  ret i32 %12, !dbg !4758
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !4759 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4764
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !4765
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #7, !dbg !4766
  ret i8* %call, !dbg !4767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #2 !dbg !4768 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !4773
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4774
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #7, !dbg !4775
  ret i1 %call, !dbg !4776
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #2 !dbg !4777 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !4780, metadata !DIExpression()), !dbg !4781
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4782, metadata !DIExpression()), !dbg !4783
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !4784
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4785
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #7, !dbg !4786
  ret i1 %call, !dbg !4787
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

; Function Attrs: noredzone
declare dso_local void @hid_hw_stop(%struct.hid_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ms_remove_ff(%struct.hid_device* %hdev) #2 !dbg !4788 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %ms = alloca %struct.ms_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.declare(metadata %struct.ms_data** %ms, metadata !4791, metadata !DIExpression()), !dbg !4792
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4793
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #7, !dbg !4794
  %1 = bitcast i8* %call to %struct.ms_data*, !dbg !4794
  store %struct.ms_data* %1, %struct.ms_data** %ms, align 8, !dbg !4792
  %2 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4795
  %quirks = getelementptr inbounds %struct.ms_data, %struct.ms_data* %2, i32 0, i32 0, !dbg !4797
  %3 = load i64, i64* %quirks, align 8, !dbg !4797
  %and = and i64 %3, 128, !dbg !4798
  %tobool = icmp ne i64 %and, 0, !dbg !4798
  br i1 %tobool, label %if.end, label %if.then, !dbg !4799

if.then:                                          ; preds = %entry
  br label %return, !dbg !4800

if.end:                                           ; preds = %entry
  %4 = load %struct.ms_data*, %struct.ms_data** %ms, align 8, !dbg !4801
  %ff_worker = getelementptr inbounds %struct.ms_data, %struct.ms_data* %4, i32 0, i32 2, !dbg !4802
  %call1 = call zeroext i1 @cancel_work_sync(%struct.work_struct* %ff_worker) #7, !dbg !4803
  br label %return, !dbg !4804

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4804
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_work_sync(%struct.work_struct*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !4805 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4810, metadata !DIExpression()), !dbg !4811
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4814
  %1 = load i32, i32* %code.addr, align 4, !dbg !4815
  %2 = load i32, i32* %value.addr, align 4, !dbg !4816
  %tobool = icmp ne i32 %2, 0, !dbg !4817
  %lnot = xor i1 %tobool, true, !dbg !4817
  %lnot1 = xor i1 %lnot, true, !dbg !4818
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4818
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #7, !dbg !4819
  ret void, !dbg !4820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_rel(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !4821 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4828
  %1 = load i32, i32* %code.addr, align 4, !dbg !4829
  %2 = load i32, i32* %value.addr, align 4, !dbg !4830
  call void @input_event(%struct.input_dev* %0, i32 2, i32 %1, i32 %2) #7, !dbg !4831
  ret void, !dbg !4832
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_ergonomy_kb_quirk(%struct.hid_input* %hi, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4833 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %input = alloca %struct.input_dev*, align 8
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4840, metadata !DIExpression()), !dbg !4841
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4842, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !4844, metadata !DIExpression()), !dbg !4845
  %0 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4846
  %input1 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %0, i32 0, i32 2, !dbg !4847
  %1 = load %struct.input_dev*, %struct.input_dev** %input1, align 8, !dbg !4847
  store %struct.input_dev* %1, %struct.input_dev** %input, align 8, !dbg !4845
  %2 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4848
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %2, i32 0, i32 0, !dbg !4850
  %3 = load i32, i32* %hid, align 4, !dbg !4850
  %and = and i32 %3, -65536, !dbg !4851
  %cmp = icmp eq i32 %and, 786432, !dbg !4852
  br i1 %cmp, label %if.then, label %if.end, !dbg !4853

if.then:                                          ; preds = %entry
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4854
  %hid2 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 0, !dbg !4856
  %5 = load i32, i32* %hid2, align 4, !dbg !4856
  %and3 = and i32 %5, 65535, !dbg !4857
  switch i32 %and3, label %sw.epilog [
    i32 669, label %sw.bb
    i32 670, label %sw.bb4
  ], !dbg !4858

sw.bb:                                            ; preds = %if.then
  %6 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4859
  %7 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4859
  %8 = load i64**, i64*** %bit.addr, align 8, !dbg !4859
  %9 = load i32*, i32** %max.addr, align 8, !dbg !4859
  call void @hid_map_usage_clear(%struct.hid_input* %6, %struct.hid_usage* %7, i64** %8, i32* %9, i8 zeroext 1, i16 zeroext 148) #7, !dbg !4859
  store i32 1, i32* %retval, align 4, !dbg !4861
  br label %return, !dbg !4861

sw.bb4:                                           ; preds = %if.then
  %10 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4862
  %11 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4862
  %12 = load i64**, i64*** %bit.addr, align 8, !dbg !4862
  %13 = load i32*, i32** %max.addr, align 8, !dbg !4862
  call void @hid_map_usage_clear(%struct.hid_input* %10, %struct.hid_usage* %11, i64** %12, i32* %13, i8 zeroext 1, i16 zeroext 149) #7, !dbg !4862
  store i32 1, i32* %retval, align 4, !dbg !4863
  br label %return, !dbg !4863

sw.epilog:                                        ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !4864
  br label %return, !dbg !4864

if.end:                                           ; preds = %entry
  %14 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4865
  %hid5 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0, !dbg !4867
  %15 = load i32, i32* %hid5, align 4, !dbg !4867
  %and6 = and i32 %15, -65536, !dbg !4868
  %cmp7 = icmp ne i32 %and6, -16777216, !dbg !4869
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4870

if.then8:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4871
  br label %return, !dbg !4871

if.end9:                                          ; preds = %if.end
  %16 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4872
  %hid10 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %16, i32 0, i32 0, !dbg !4873
  %17 = load i32, i32* %hid10, align 4, !dbg !4873
  %and11 = and i32 %17, 65535, !dbg !4874
  switch i32 %and11, label %sw.default [
    i32 64774, label %sw.bb12
    i32 64775, label %sw.bb13
    i32 65280, label %sw.bb14
    i32 65281, label %sw.bb17
    i32 65282, label %sw.bb18
    i32 65285, label %sw.bb19
  ], !dbg !4875

sw.bb12:                                          ; preds = %if.end9
  %18 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4876
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4876
  %20 = load i64**, i64*** %bit.addr, align 8, !dbg !4876
  %21 = load i32*, i32** %max.addr, align 8, !dbg !4876
  call void @hid_map_usage_clear(%struct.hid_input* %18, %struct.hid_usage* %19, i64** %20, i32* %21, i8 zeroext 1, i16 zeroext 216) #7, !dbg !4876
  br label %sw.epilog31, !dbg !4878

sw.bb13:                                          ; preds = %if.end9
  %22 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4879
  %23 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4879
  %24 = load i64**, i64*** %bit.addr, align 8, !dbg !4879
  %25 = load i32*, i32** %max.addr, align 8, !dbg !4879
  call void @hid_map_usage_clear(%struct.hid_input* %22, %struct.hid_usage* %23, i64** %24, i32* %25, i8 zeroext 1, i16 zeroext 169) #7, !dbg !4879
  br label %sw.epilog31, !dbg !4880

sw.bb14:                                          ; preds = %if.end9
  %26 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4881
  %27 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4881
  %28 = load i64**, i64*** %bit.addr, align 8, !dbg !4881
  %29 = load i32*, i32** %max.addr, align 8, !dbg !4881
  call void @hid_map_usage_clear(%struct.hid_input* %26, %struct.hid_usage* %27, i64** %28, i32* %29, i8 zeroext 1, i16 zeroext 117) #7, !dbg !4881
  %30 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4882
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 6, !dbg !4883
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4882
  call void @set_bit(i64 179, i64* %arraydecay) #7, !dbg !4884
  %31 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4885
  %keybit15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 6, !dbg !4886
  %arraydecay16 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit15, i64 0, i64 0, !dbg !4885
  call void @set_bit(i64 180, i64* %arraydecay16) #7, !dbg !4887
  br label %sw.epilog31, !dbg !4888

sw.bb17:                                          ; preds = %if.end9
  %32 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4889
  %33 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4890
  %34 = load i64**, i64*** %bit.addr, align 8, !dbg !4891
  %35 = load i32*, i32** %max.addr, align 8, !dbg !4892
  call void @hid_map_usage_clear(%struct.hid_input* %32, %struct.hid_usage* %33, i64** %34, i32* %35, i8 zeroext 2, i16 zeroext 8) #7, !dbg !4893
  br label %sw.epilog31, !dbg !4894

sw.bb18:                                          ; preds = %if.end9
  store i32 -1, i32* %retval, align 4, !dbg !4895
  br label %return, !dbg !4895

sw.bb19:                                          ; preds = %if.end9
  %36 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4896
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 5, !dbg !4897
  %arraydecay20 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4896
  call void @set_bit(i64 20, i64* %arraydecay20) #7, !dbg !4898
  %37 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4899
  %38 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4899
  %39 = load i64**, i64*** %bit.addr, align 8, !dbg !4899
  %40 = load i32*, i32** %max.addr, align 8, !dbg !4899
  call void @hid_map_usage_clear(%struct.hid_input* %37, %struct.hid_usage* %38, i64** %39, i32* %40, i8 zeroext 1, i16 zeroext 183) #7, !dbg !4899
  %41 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4900
  %keybit21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 6, !dbg !4901
  %arraydecay22 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit21, i64 0, i64 0, !dbg !4900
  call void @set_bit(i64 184, i64* %arraydecay22) #7, !dbg !4902
  %42 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4903
  %keybit23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 6, !dbg !4904
  %arraydecay24 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit23, i64 0, i64 0, !dbg !4903
  call void @set_bit(i64 185, i64* %arraydecay24) #7, !dbg !4905
  %43 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4906
  %keybit25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 6, !dbg !4907
  %arraydecay26 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit25, i64 0, i64 0, !dbg !4906
  call void @set_bit(i64 186, i64* %arraydecay26) #7, !dbg !4908
  %44 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4909
  %keybit27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 6, !dbg !4910
  %arraydecay28 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit27, i64 0, i64 0, !dbg !4909
  call void @set_bit(i64 187, i64* %arraydecay28) #7, !dbg !4911
  %45 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4912
  %keybit29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 6, !dbg !4913
  %arraydecay30 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit29, i64 0, i64 0, !dbg !4912
  call void @set_bit(i64 188, i64* %arraydecay30) #7, !dbg !4914
  br label %sw.epilog31, !dbg !4915

sw.default:                                       ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

sw.epilog31:                                      ; preds = %sw.bb19, %sw.bb17, %sw.bb14, %sw.bb13, %sw.bb12
  store i32 1, i32* %retval, align 4, !dbg !4917
  br label %return, !dbg !4917

return:                                           ; preds = %sw.epilog31, %sw.default, %sw.bb18, %if.then8, %sw.epilog, %sw.bb4, %sw.bb
  %46 = load i32, i32* %retval, align 4, !dbg !4918
  ret i32 %46, !dbg !4918
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_presenter_8k_quirk(%struct.hid_input* %hi, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4919 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  %0 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4928
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %0, i32 0, i32 0, !dbg !4930
  %1 = load i32, i32* %hid, align 4, !dbg !4930
  %and = and i32 %1, -65536, !dbg !4931
  %cmp = icmp ne i32 %and, -16777216, !dbg !4932
  br i1 %cmp, label %if.then, label %if.end, !dbg !4933

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4934
  br label %return, !dbg !4934

if.end:                                           ; preds = %entry
  %2 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4935
  %input = getelementptr inbounds %struct.hid_input, %struct.hid_input* %2, i32 0, i32 2, !dbg !4936
  %3 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4936
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 5, !dbg !4937
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4935
  call void @set_bit(i64 20, i64* %arraydecay) #7, !dbg !4938
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4939
  %hid1 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 0, !dbg !4940
  %5 = load i32, i32* %hid1, align 4, !dbg !4940
  %and2 = and i32 %5, 65535, !dbg !4941
  switch i32 %and2, label %sw.default [
    i32 64776, label %sw.bb
    i32 64777, label %sw.bb3
    i32 64779, label %sw.bb4
    i32 64782, label %sw.bb5
    i32 64783, label %sw.bb6
  ], !dbg !4942

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4943
  %7 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4943
  %8 = load i64**, i64*** %bit.addr, align 8, !dbg !4943
  %9 = load i32*, i32** %max.addr, align 8, !dbg !4943
  call void @hid_map_usage_clear(%struct.hid_input* %6, %struct.hid_usage* %7, i64** %8, i32* %9, i8 zeroext 1, i16 zeroext 159) #7, !dbg !4943
  br label %sw.epilog, !dbg !4945

sw.bb3:                                           ; preds = %if.end
  %10 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4946
  %11 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4946
  %12 = load i64**, i64*** %bit.addr, align 8, !dbg !4946
  %13 = load i32*, i32** %max.addr, align 8, !dbg !4946
  call void @hid_map_usage_clear(%struct.hid_input* %10, %struct.hid_usage* %11, i64** %12, i32* %13, i8 zeroext 1, i16 zeroext 158) #7, !dbg !4946
  br label %sw.epilog, !dbg !4947

sw.bb4:                                           ; preds = %if.end
  %14 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4948
  %15 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4948
  %16 = load i64**, i64*** %bit.addr, align 8, !dbg !4948
  %17 = load i32*, i32** %max.addr, align 8, !dbg !4948
  call void @hid_map_usage_clear(%struct.hid_input* %14, %struct.hid_usage* %15, i64** %16, i32* %17, i8 zeroext 1, i16 zeroext 164) #7, !dbg !4948
  br label %sw.epilog, !dbg !4949

sw.bb5:                                           ; preds = %if.end
  %18 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4950
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4950
  %20 = load i64**, i64*** %bit.addr, align 8, !dbg !4950
  %21 = load i32*, i32** %max.addr, align 8, !dbg !4950
  call void @hid_map_usage_clear(%struct.hid_input* %18, %struct.hid_usage* %19, i64** %20, i32* %21, i8 zeroext 1, i16 zeroext 206) #7, !dbg !4950
  br label %sw.epilog, !dbg !4951

sw.bb6:                                           ; preds = %if.end
  %22 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4952
  %23 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4952
  %24 = load i64**, i64*** %bit.addr, align 8, !dbg !4952
  %25 = load i32*, i32** %max.addr, align 8, !dbg !4952
  call void @hid_map_usage_clear(%struct.hid_input* %22, %struct.hid_usage* %23, i64** %24, i32* %25, i8 zeroext 1, i16 zeroext 207) #7, !dbg !4952
  br label %sw.epilog, !dbg !4953

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !4955
  br label %return, !dbg !4955

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4956
  ret i32 %26, !dbg !4956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ms_surface_dial_quirk(%struct.hid_input* %hi, %struct.hid_field* %field, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4957 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca %struct.hid_input*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4964, metadata !DIExpression()), !dbg !4965
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4966, metadata !DIExpression()), !dbg !4967
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  %0 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4970
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %0, i32 0, i32 0, !dbg !4971
  %1 = load i32, i32* %hid, align 4, !dbg !4971
  %and = and i32 %1, -65536, !dbg !4972
  switch i32 %and, label %sw.epilog4 [
    i32 -16318464, label %sw.bb
    i32 851968, label %sw.bb
    i32 65536, label %sw.bb1
  ], !dbg !4973

sw.bb:                                            ; preds = %entry, %entry
  store i32 -1, i32* %retval, align 4, !dbg !4974
  br label %return, !dbg !4974

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4976
  %hid2 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %2, i32 0, i32 0, !dbg !4977
  %3 = load i32, i32* %hid2, align 4, !dbg !4977
  switch i32 %3, label %sw.epilog [
    i32 65584, label %sw.bb3
    i32 65585, label %sw.bb3
    i32 65734, label %sw.bb3
  ], !dbg !4978

sw.bb3:                                           ; preds = %sw.bb1, %sw.bb1, %sw.bb1
  store i32 -1, i32* %retval, align 4, !dbg !4979
  br label %return, !dbg !4979

sw.epilog:                                        ; preds = %sw.bb1
  br label %sw.epilog4, !dbg !4981

sw.epilog4:                                       ; preds = %sw.epilog, %entry
  store i32 0, i32* %retval, align 4, !dbg !4982
  br label %return, !dbg !4982

return:                                           ; preds = %sw.epilog4, %sw.bb3, %sw.bb
  %4 = load i32, i32* %retval, align 4, !dbg !4983
  ret i32 %4, !dbg !4983
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_map_usage_clear(%struct.hid_input* %hidinput, %struct.hid_usage* %usage, i64** %bit, i32* %max, i8 zeroext %type, i16 zeroext %c) #2 !dbg !4984 {
entry:
  %hidinput.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store %struct.hid_input* %hidinput, %struct.hid_input** %hidinput.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  store i16 %c, i16* %c.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  %0 = load %struct.hid_input*, %struct.hid_input** %hidinput.addr, align 8, !dbg !4999
  %1 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5000
  %2 = load i64**, i64*** %bit.addr, align 8, !dbg !5001
  %3 = load i32*, i32** %max.addr, align 8, !dbg !5002
  %4 = load i8, i8* %type.addr, align 1, !dbg !5003
  %5 = load i16, i16* %c.addr, align 2, !dbg !5004
  %conv = zext i16 %5 to i32, !dbg !5004
  call void @hid_map_usage(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3, i8 zeroext %4, i32 %conv) #7, !dbg !5005
  %6 = load i64**, i64*** %bit.addr, align 8, !dbg !5006
  %7 = load i64*, i64** %6, align 8, !dbg !5008
  %tobool = icmp ne i64* %7, null, !dbg !5008
  br i1 %tobool, label %if.then, label %if.end, !dbg !5009

if.then:                                          ; preds = %entry
  %8 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5010
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %8, i32 0, i32 5, !dbg !5011
  %9 = load i16, i16* %code, align 2, !dbg !5011
  %conv1 = zext i16 %9 to i64, !dbg !5010
  %10 = load i64**, i64*** %bit.addr, align 8, !dbg !5012
  %11 = load i64*, i64** %10, align 8, !dbg !5013
  call void @clear_bit(i64 %conv1, i64* %11) #7, !dbg !5014
  br label %if.end, !dbg !5014

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5015
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !5016 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5022, metadata !DIExpression()), !dbg !5025
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5027, metadata !DIExpression()), !dbg !5028
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5029, metadata !DIExpression()), !dbg !5037
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5039, metadata !DIExpression()), !dbg !5040
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5045
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5046
  %div = sdiv i64 %1, 64, !dbg !5046
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5047
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5045
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5048
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5049
  %conv.i = trunc i64 %4 to i32, !dbg !5049
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5050
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5051
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5051
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !5051
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5052
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5053
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5054
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5056
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5057

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5058
  %12 = bitcast i64* %11 to i8*, !dbg !5058
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5058
  %shr.i = ashr i64 %13, 3, !dbg !5058
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5058
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5060
  %and.i = and i64 %14, 7, !dbg !5060
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5060
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5060
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !5061, !srcloc !5062
  br label %arch_set_bit.exit, !dbg !5063

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5064
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5066
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5067, !srcloc !5068
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_map_usage(%struct.hid_input* %hidinput, %struct.hid_usage* %usage, i64** %bit, i32* %max, i8 zeroext %type, i32 %c) #2 !dbg !4080 {
entry:
  %hidinput.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %c.addr = alloca i32, align 4
  %input = alloca %struct.input_dev*, align 8
  %bmap = alloca i64*, align 8
  %limit = alloca i32, align 4
  store %struct.hid_input* %hidinput, %struct.hid_input** %hidinput.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5076, metadata !DIExpression()), !dbg !5077
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !5082, metadata !DIExpression()), !dbg !5083
  %0 = load %struct.hid_input*, %struct.hid_input** %hidinput.addr, align 8, !dbg !5084
  %input1 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %0, i32 0, i32 2, !dbg !5085
  %1 = load %struct.input_dev*, %struct.input_dev** %input1, align 8, !dbg !5085
  store %struct.input_dev* %1, %struct.input_dev** %input, align 8, !dbg !5083
  call void @llvm.dbg.declare(metadata i64** %bmap, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i64* null, i64** %bmap, align 8, !dbg !5087
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !5088, metadata !DIExpression()), !dbg !5089
  store i32 0, i32* %limit, align 4, !dbg !5089
  %2 = load i8, i8* %type.addr, align 1, !dbg !5090
  %conv = zext i8 %2 to i32, !dbg !5090
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
    i32 17, label %sw.bb6
  ], !dbg !5091

sw.bb:                                            ; preds = %entry
  %3 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5092
  %absbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 8, !dbg !5094
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i64 0, i64 0, !dbg !5092
  store i64* %arraydecay, i64** %bmap, align 8, !dbg !5095
  store i32 63, i32* %limit, align 4, !dbg !5096
  br label %sw.epilog, !dbg !5097

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5098
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 7, !dbg !5099
  %arraydecay3 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !5098
  store i64* %arraydecay3, i64** %bmap, align 8, !dbg !5100
  store i32 15, i32* %limit, align 4, !dbg !5101
  br label %sw.epilog, !dbg !5102

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5103
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 6, !dbg !5104
  %arraydecay5 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !5103
  store i64* %arraydecay5, i64** %bmap, align 8, !dbg !5105
  store i32 767, i32* %limit, align 4, !dbg !5106
  br label %sw.epilog, !dbg !5107

sw.bb6:                                           ; preds = %entry
  %6 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5108
  %ledbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 10, !dbg !5109
  %arraydecay7 = getelementptr inbounds [1 x i64], [1 x i64]* %ledbit, i64 0, i64 0, !dbg !5108
  store i64* %arraydecay7, i64** %bmap, align 8, !dbg !5110
  store i32 15, i32* %limit, align 4, !dbg !5111
  br label %sw.epilog, !dbg !5112

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %7 = load i32, i32* %c.addr, align 4, !dbg !5113
  %8 = load i32, i32* %limit, align 4, !dbg !5113
  %cmp = icmp ugt i32 %7, %8, !dbg !5113
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5113

lor.rhs:                                          ; preds = %sw.epilog
  %9 = load i64*, i64** %bmap, align 8, !dbg !5113
  %tobool = icmp ne i64* %9, null, !dbg !5113
  %lnot = xor i1 %tobool, true, !dbg !5113
  br label %lor.end, !dbg !5113

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %10 = phi i1 [ true, %sw.epilog ], [ %lnot, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5113
  %lnot10 = xor i1 %lnot9, true, !dbg !5113
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !5113
  %conv11 = sext i32 %lnot.ext to i64, !dbg !5113
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !5113
  br i1 %tobool12, label %if.then, label %if.end17, !dbg !5115

if.then:                                          ; preds = %lor.end
  %call = call i32 @___ratelimit(%struct.ratelimit_state* @hid_map_usage._rs, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.hid_map_usage, i64 0, i64 0)) #7, !dbg !5116
  %tobool13 = icmp ne i32 %call, 0, !dbg !5116
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !5120

if.then14:                                        ; preds = %if.then
  %11 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5116
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0, !dbg !5116
  %12 = load i8*, i8** %name, align 8, !dbg !5116
  %13 = load i32, i32* %c.addr, align 4, !dbg !5116
  %14 = load i8, i8* %type.addr, align 1, !dbg !5116
  %conv15 = zext i8 %14 to i32, !dbg !5116
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %12, i32 %13, i32 %conv15) #8, !dbg !5116
  br label %if.end, !dbg !5116

if.end:                                           ; preds = %if.then14, %if.then
  %15 = load i64**, i64*** %bit.addr, align 8, !dbg !5121
  store i64* null, i64** %15, align 8, !dbg !5122
  br label %return, !dbg !5123

if.end17:                                         ; preds = %lor.end
  %16 = load i8, i8* %type.addr, align 1, !dbg !5124
  %17 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5125
  %type18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 6, !dbg !5126
  store i8 %16, i8* %type18, align 4, !dbg !5127
  %18 = load i32, i32* %c.addr, align 4, !dbg !5128
  %conv19 = trunc i32 %18 to i16, !dbg !5128
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5129
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %19, i32 0, i32 5, !dbg !5130
  store i16 %conv19, i16* %code, align 2, !dbg !5131
  %20 = load i32, i32* %limit, align 4, !dbg !5132
  %21 = load i32*, i32** %max.addr, align 8, !dbg !5133
  store i32 %20, i32* %21, align 4, !dbg !5134
  %22 = load i64*, i64** %bmap, align 8, !dbg !5135
  %23 = load i64**, i64*** %bit.addr, align 8, !dbg !5136
  store i64* %22, i64** %23, align 8, !dbg !5137
  br label %return, !dbg !5138

return:                                           ; preds = %if.end17, %if.end
  ret void, !dbg !5138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !5139 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5140, metadata !DIExpression()), !dbg !5142
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5144, metadata !DIExpression()), !dbg !5145
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5029, metadata !DIExpression()), !dbg !5146
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5039, metadata !DIExpression()), !dbg !5148
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5149, metadata !DIExpression()), !dbg !5150
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5153
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5154
  %div = sdiv i64 %1, 64, !dbg !5154
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5155
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5153
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5156
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5157
  %conv.i = trunc i64 %4 to i32, !dbg !5157
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !5158
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5159
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5159
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !5159
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5160
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5161
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5162
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5164
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5165

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5166
  %12 = bitcast i64* %11 to i8*, !dbg !5166
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5166
  %shr.i = ashr i64 %13, 3, !dbg !5166
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5166
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5168
  %and.i = and i64 %14, 7, !dbg !5168
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5168
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5168
  %neg.i = xor i32 %shl.i, -1, !dbg !5169
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !5170, !srcloc !5171
  br label %arch_clear_bit.exit, !dbg !5172

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5173
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5175
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5176, !srcloc !5177
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5178
}

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5179 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  ret i1 true, !dbg !5187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5188 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5194, metadata !DIExpression()), !dbg !5195
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5196, metadata !DIExpression()), !dbg !5197
  ret void, !dbg !5198
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4083, !4084, !4085, !4086}
!llvm.ident = !{!4087}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ms_driver_init206", scope: !2, file: !3, line: 467, type: !135, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !129, globals: !4054, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hid/hid-microsoft.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !65, !72, !80, !86, !119, !124}
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 30, baseType: !88, size: 64, elements: !89)
!87 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!88 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!90 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!91 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!92 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!93 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!94 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!95 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!96 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!97 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!98 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!99 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!100 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!101 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!102 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!103 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!104 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!105 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!106 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!107 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!108 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!109 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!110 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!111 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!112 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!113 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!114 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!115 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!116 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!117 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!118 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 44, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123}
!121 = !DIEnumerator(name: "MAGNITUDE_STRONG", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "MAGNITUDE_WEAK", value: 3, isUnsigned: true)
!123 = !DIEnumerator(name: "MAGNITUDE_NUM", value: 4, isUnsigned: true)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 10, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!129 = !{!130, !133, !135, !136, !384, !4038, !4041, !4042, !1315, !215, !475, !905, !4051, !4053}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !132, line: 76, flags: DIFlagFwdDecl)
!132 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !134, line: 148, baseType: !7)
!134 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_input", file: !6, line: 522, size: 576, elements: !138)
!138 = !{!139, !145, !3758, !4034, !4035, !4036, !4037}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !137, file: !6, line: 523, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !134, line: 178, size: 128, elements: !141)
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !134, line: 179, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !134, line: 179, baseType: !143, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !137, file: !6, line: 524, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report", file: !6, line: 476, size: 16896, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !208, !209, !210}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !147, file: !6, line: 477, baseType: !140, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput_list", scope: !147, file: !6, line: 478, baseType: !140, size: 128, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !147, file: !6, line: 479, baseType: !7, size: 32, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !6, line: 480, baseType: !7, size: 32, offset: 288)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !147, file: !6, line: 481, baseType: !7, size: 32, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !147, file: !6, line: 482, baseType: !155, size: 16384, offset: 384)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 16384, elements: !206)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field", file: !6, line: 449, size: 896, elements: !158)
!158 = !{!159, !160, !161, !162, !186, !187, !188, !189, !190, !191, !192, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !157, file: !6, line: 450, baseType: !7, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "logical", scope: !157, file: !6, line: 451, baseType: !7, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !157, file: !6, line: 452, baseType: !7, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !157, file: !6, line: 453, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage", file: !6, line: 431, size: 192, elements: !165)
!165 = !{!166, !167, !168, !169, !173, !174, !177, !180, !181, !182, !183}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !164, file: !6, line: 432, baseType: !7, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "collection_index", scope: !164, file: !6, line: 433, baseType: !7, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "usage_index", scope: !164, file: !6, line: 434, baseType: !7, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_multiplier", scope: !164, file: !6, line: 435, baseType: !170, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !171, line: 20, baseType: !172)
!171 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!172 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_factor", scope: !164, file: !6, line: 438, baseType: !170, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !164, file: !6, line: 439, baseType: !175, size: 16, offset: 112)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !171, line: 24, baseType: !176)
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !6, line: 440, baseType: !178, size: 8, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !171, line: 21, baseType: !179)
!179 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "hat_min", scope: !164, file: !6, line: 441, baseType: !170, size: 8, offset: 136)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "hat_max", scope: !164, file: !6, line: 442, baseType: !170, size: 8, offset: 144)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "hat_dir", scope: !164, file: !6, line: 443, baseType: !170, size: 8, offset: 152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_accumulated", scope: !164, file: !6, line: 444, baseType: !184, size: 16, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !171, line: 23, baseType: !185)
!185 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "maxusage", scope: !157, file: !6, line: 454, baseType: !7, size: 32, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !6, line: 455, baseType: !7, size: 32, offset: 224)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "report_offset", scope: !157, file: !6, line: 456, baseType: !7, size: 32, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "report_size", scope: !157, file: !6, line: 457, baseType: !7, size: 32, offset: 288)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "report_count", scope: !157, file: !6, line: 458, baseType: !7, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !157, file: !6, line: 459, baseType: !7, size: 32, offset: 352)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !157, file: !6, line: 460, baseType: !193, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !171, line: 26, baseType: !195)
!195 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "logical_minimum", scope: !157, file: !6, line: 461, baseType: !194, size: 32, offset: 448)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "logical_maximum", scope: !157, file: !6, line: 462, baseType: !194, size: 32, offset: 480)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "physical_minimum", scope: !157, file: !6, line: 463, baseType: !194, size: 32, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "physical_maximum", scope: !157, file: !6, line: 464, baseType: !194, size: 32, offset: 544)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "unit_exponent", scope: !157, file: !6, line: 465, baseType: !194, size: 32, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !157, file: !6, line: 466, baseType: !7, size: 32, offset: 608)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !157, file: !6, line: 467, baseType: !146, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !157, file: !6, line: 468, baseType: !7, size: 32, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput", scope: !157, file: !6, line: 470, baseType: !136, size: 64, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dpad", scope: !157, file: !6, line: 471, baseType: !175, size: 16, offset: 832)
!206 = !{!207}
!207 = !DISubrange(count: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "maxfield", scope: !147, file: !6, line: 483, baseType: !7, size: 32, offset: 16768)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !147, file: !6, line: 484, baseType: !7, size: 32, offset: 16800)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !147, file: !6, line: 485, baseType: !211, size: 64, offset: 16832)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device", file: !6, line: 547, size: 60160, elements: !213)
!213 = !{!214, !216, !217, !218, !219, !227, !228, !229, !230, !231, !232, !234, !235, !236, !237, !238, !248, !269, !285, !3611, !3696, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3738, !3739, !3740, !3741, !3745, !3746, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rdesc", scope: !212, file: !6, line: 548, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rsize", scope: !212, file: !6, line: 549, baseType: !7, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !212, file: !6, line: 550, baseType: !215, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !212, file: !6, line: 551, baseType: !7, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !212, file: !6, line: 552, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_collection", file: !6, line: 424, size: 128, elements: !222)
!222 = !{!223, !224, !225, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent_idx", scope: !221, file: !6, line: 425, baseType: !195, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !221, file: !6, line: 426, baseType: !7, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !221, file: !6, line: 427, baseType: !7, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !221, file: !6, line: 428, baseType: !7, size: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "collection_size", scope: !212, file: !6, line: 553, baseType: !7, size: 32, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "maxcollection", scope: !212, file: !6, line: 554, baseType: !7, size: 32, offset: 352)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "maxapplication", scope: !212, file: !6, line: 555, baseType: !7, size: 32, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !212, file: !6, line: 556, baseType: !175, size: 16, offset: 416)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !212, file: !6, line: 557, baseType: !175, size: 16, offset: 432)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !212, file: !6, line: 558, baseType: !233, size: 32, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !171, line: 27, baseType: !7)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !212, file: !6, line: 559, baseType: !233, size: 32, offset: 480)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !212, file: !6, line: 560, baseType: !233, size: 32, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !6, line: 561, baseType: !5, size: 32, offset: 544)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !212, file: !6, line: 562, baseType: !7, size: 32, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "report_enum", scope: !212, file: !6, line: 563, baseType: !239, size: 49728, offset: 640)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 49728, elements: !246)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_enum", file: !6, line: 490, size: 16576, elements: !241)
!241 = !{!242, !243, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "numbered", scope: !240, file: !6, line: 491, baseType: !7, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "report_list", scope: !240, file: !6, line: 492, baseType: !140, size: 128, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "report_id_hash", scope: !240, file: !6, line: 493, baseType: !245, size: 16384, offset: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 16384, elements: !206)
!246 = !{!247}
!247 = !DISubrange(count: 3)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "led_work", scope: !212, file: !6, line: 564, baseType: !249, size: 256, offset: 50368)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !87, line: 102, size: 256, elements: !250)
!250 = !{!251, !262, !263}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !249, file: !87, line: 103, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !253, line: 13, baseType: !254)
!253 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !134, line: 175, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 173, size: 64, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !255, file: !134, line: 174, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !259, line: 22, baseType: !260)
!259 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !171, line: 30, baseType: !261)
!261 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !249, file: !87, line: 104, baseType: !140, size: 128, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !249, file: !87, line: 105, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !87, line: 21, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "driver_input_lock", scope: !212, file: !6, line: 566, baseType: !270, size: 192, offset: 50624)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !271, line: 15, size: 192, elements: !272)
!271 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!272 = !{!273, !283, !284}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !270, file: !271, line: 16, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !275, line: 29, baseType: !276)
!275 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !275, line: 20, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !276, file: !275, line: 21, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !280, line: 25, baseType: !281)
!280 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !280, line: 25, elements: !282)
!282 = !{}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !270, file: !271, line: 17, baseType: !7, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !270, file: !271, line: 18, baseType: !140, size: 128, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !212, file: !6, line: 567, baseType: !286, size: 5568, offset: 50816)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !66, line: 461, size: 5568, elements: !287)
!287 = !{!288, !3251, !3253, !3256, !3257, !3308, !3399, !3400, !3401, !3402, !3403, !3412, !3517, !3530, !3533, !3534, !3538, !3540, !3541, !3542, !3546, !3552, !3553, !3556, !3560, !3563, !3564, !3565, !3566, !3567, !3599, !3600, !3601, !3604, !3607, !3608, !3609, !3610}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !286, file: !66, line: 462, baseType: !289, size: 512)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !290, line: 64, size: 512, elements: !291)
!290 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292, !296, !297, !299, !349, !3102, !3241, !3246, !3247, !3248, !3249, !3250}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !290, line: 65, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !289, file: !290, line: 66, baseType: !140, size: 128, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !289, file: !290, line: 67, baseType: !298, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !289, file: !290, line: 68, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !290, line: 192, size: 704, elements: !302)
!302 = !{!303, !304, !312, !313}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !301, file: !290, line: 193, baseType: !140, size: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !301, file: !290, line: 194, baseType: !305, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !275, line: 83, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !275, line: 71, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, scope: !306, file: !275, line: 72, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !275, line: 72, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !309, file: !275, line: 73, baseType: !276)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !301, file: !290, line: 195, baseType: !289, size: 512, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !301, file: !290, line: 196, baseType: !314, size: 64, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !290, line: 156, size: 192, elements: !317)
!317 = !{!318, !323, !328}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !316, file: !290, line: 157, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!195, !300, !298}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !290, line: 158, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!293, !300, !298}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !316, file: !290, line: 159, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!195, !300, !298, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !290, line: 148, size: 20736, elements: !335)
!335 = !{!336, !339, !343, !344, !348}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !334, file: !290, line: 149, baseType: !337, size: 192)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 192, elements: !246)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !334, file: !290, line: 150, baseType: !340, size: 4096, offset: 192)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 4096, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !334, file: !290, line: 151, baseType: !195, size: 32, offset: 4288)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !334, file: !290, line: 152, baseType: !345, size: 16384, offset: 4320)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 16384, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 2048)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !334, file: !290, line: 153, baseType: !195, size: 32, offset: 20704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !289, file: !290, line: 69, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !290, line: 138, size: 448, elements: !352)
!352 = !{!353, !357, !385, !387, !3062, !3092, !3096}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !351, file: !290, line: 139, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !298}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !351, file: !290, line: 140, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !361, line: 230, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !377}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !360, file: !361, line: 231, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !298, !371, !338}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !134, line: 60, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !369, line: 73, baseType: !370)
!369 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !369, line: 15, baseType: !88)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !361, line: 30, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !361, line: 31, baseType: !293, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !372, file: !361, line: 32, baseType: !376, size: 16, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !134, line: 19, baseType: !176)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !360, file: !361, line: 232, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!367, !298, !371, !293, !381}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 55, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !369, line: 72, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !369, line: 16, baseType: !384)
!384 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !351, file: !290, line: 141, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !351, file: !290, line: 142, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !361, line: 84, size: 320, elements: !392)
!392 = !{!393, !394, !398, !3059, !3060}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !361, line: 85, baseType: !293, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !391, file: !361, line: 86, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!376, !298, !371, !195}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !391, file: !361, line: 88, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!376, !298, !402, !195}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !361, line: 168, size: 448, elements: !404)
!404 = !{!405, !406, !407, !408, !3054, !3055}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !403, file: !361, line: 169, baseType: !372, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !403, file: !361, line: 170, baseType: !381, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !403, file: !361, line: 171, baseType: !135, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !403, file: !361, line: 172, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!367, !412, !298, !402, !338, !587, !381}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !414)
!414 = !{!415, !433, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3037, !3038, !3047, !3048, !3049, !3050, !3051, !3052, !3053}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !413, file: !37, line: 920, baseType: !416, size: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !37, line: 917, size: 128, elements: !417)
!417 = !{!418, !424}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !416, file: !37, line: 918, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !420, line: 58, size: 64, elements: !421)
!420 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !420, line: 59, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !416, file: !37, line: 919, baseType: !425, size: 128, align: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !134, line: 216, size: 128, align: 64, elements: !426)
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !134, line: 217, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !425, file: !134, line: 218, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !428}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !413, file: !37, line: 921, baseType: !434, size: 128, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !435, line: 8, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !434, file: !435, line: 9, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !440, line: 18, flags: DIFlagFwdDecl)
!440 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !434, file: !435, line: 10, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !440, line: 89, size: 1536, elements: !444)
!444 = !{!445, !446, !456, !464, !465, !484, !2987, !2989, !3001, !3002, !3003, !3004, !3005, !3011, !3012, !3013}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !443, file: !440, line: 91, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !443, file: !440, line: 92, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !448, line: 277, baseType: !449)
!448 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !448, line: 277, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !449, file: !448, line: 277, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !448, line: 70, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !448, line: 65, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !453, file: !448, line: 66, baseType: !7, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !440, line: 93, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !458, line: 38, size: 128, elements: !459)
!458 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !458, line: 39, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !457, file: !458, line: 39, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !443, file: !440, line: 94, baseType: !442, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !443, file: !440, line: 95, baseType: !466, size: 128, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !440, line: 47, size: 128, elements: !467)
!467 = !{!468, !481}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !440, line: 48, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !440, line: 48, size: 64, elements: !470)
!470 = !{!471, !477}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !440, line: 49, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !440, line: 49, size: 64, elements: !473)
!473 = !{!474, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !472, file: !440, line: 50, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !259, line: 21, baseType: !233)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !472, file: !440, line: 50, baseType: !475, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !469, file: !440, line: 52, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !259, line: 23, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !171, line: 31, baseType: !480)
!480 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !440, line: 54, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !443, file: !440, line: 96, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !487)
!487 = !{!488, !489, !490, !498, !505, !506, !652, !2698, !2699, !2700, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2963, !2971, !2972, !2973, !2983, !2984, !2985, !2986}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !486, file: !37, line: 611, baseType: !376, size: 16)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !486, file: !37, line: 612, baseType: !176, size: 16, offset: 16)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !486, file: !37, line: 613, baseType: !491, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !492, line: 23, baseType: !493)
!492 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 21, size: 32, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !493, file: !492, line: 22, baseType: !496, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !134, line: 32, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !369, line: 49, baseType: !7)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !486, file: !37, line: 614, baseType: !499, size: 32, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !492, line: 28, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 26, size: 32, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !500, file: !492, line: 27, baseType: !503, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !134, line: 33, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !369, line: 50, baseType: !7)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !486, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !486, file: !37, line: 622, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !510)
!510 = !{!511, !515, !528, !532, !538, !542, !548, !552, !556, !560, !564, !565, !571, !575, !599, !628, !632, !638, !643, !647, !648}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !509, file: !37, line: 1865, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!442, !485, !442, !7}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !509, file: !37, line: 1866, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!293, !442, !485, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !521, line: 10, size: 128, elements: !522)
!521 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!522 = !{!523, !527}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !520, file: !521, line: 11, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !135}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !520, file: !521, line: 12, baseType: !135, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !509, file: !37, line: 1867, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!195, !485, !195}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !509, file: !37, line: 1868, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !485, !195}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !509, file: !37, line: 1870, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!195, !442, !338, !195}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !509, file: !37, line: 1872, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!195, !485, !442, !376, !546}
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !134, line: 30, baseType: !547)
!547 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !509, file: !37, line: 1873, baseType: !549, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!195, !442, !485, !442}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !509, file: !37, line: 1874, baseType: !553, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!195, !485, !442}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !509, file: !37, line: 1875, baseType: !557, size: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!195, !485, !442, !293}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !509, file: !37, line: 1876, baseType: !561, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!195, !485, !442, !376}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !509, file: !37, line: 1877, baseType: !553, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !509, file: !37, line: 1878, baseType: !566, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!195, !485, !442, !376, !569}
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !134, line: 16, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !134, line: 13, baseType: !475)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !509, file: !37, line: 1879, baseType: !572, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!195, !485, !442, !485, !442, !7}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !509, file: !37, line: 1881, baseType: !576, size: 64, offset: 832)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!195, !442, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !589, !596, !597, !598}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !580, file: !37, line: 220, baseType: !7, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !580, file: !37, line: 221, baseType: !376, size: 16, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !580, file: !37, line: 222, baseType: !491, size: 32, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !580, file: !37, line: 223, baseType: !499, size: 32, offset: 96)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !580, file: !37, line: 224, baseType: !587, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !134, line: 46, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !369, line: 88, baseType: !261)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !580, file: !37, line: 225, baseType: !590, size: 128, offset: 192)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !591, line: 13, size: 128, elements: !592)
!591 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!592 = !{!593, !595}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !590, file: !591, line: 14, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !591, line: 8, baseType: !260)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !590, file: !591, line: 15, baseType: !88, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !580, file: !37, line: 226, baseType: !590, size: 128, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !580, file: !37, line: 227, baseType: !590, size: 128, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !580, file: !37, line: 234, baseType: !412, size: 64, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !509, file: !37, line: 1882, baseType: !600, size: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!195, !603, !605, !475, !7}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !607, line: 22, size: 1152, elements: !608)
!607 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!608 = !{!609, !610, !611, !612, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !606, file: !607, line: 23, baseType: !475, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !606, file: !607, line: 24, baseType: !376, size: 16, offset: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !606, file: !607, line: 25, baseType: !7, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !606, file: !607, line: 26, baseType: !613, size: 32, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !134, line: 104, baseType: !475)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !606, file: !607, line: 27, baseType: !478, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !606, file: !607, line: 28, baseType: !478, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !606, file: !607, line: 37, baseType: !478, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !606, file: !607, line: 38, baseType: !569, size: 32, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !606, file: !607, line: 39, baseType: !569, size: 32, offset: 352)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !606, file: !607, line: 40, baseType: !491, size: 32, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !606, file: !607, line: 41, baseType: !499, size: 32, offset: 416)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !606, file: !607, line: 42, baseType: !587, size: 64, offset: 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !606, file: !607, line: 43, baseType: !590, size: 128, offset: 512)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !606, file: !607, line: 44, baseType: !590, size: 128, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !606, file: !607, line: 45, baseType: !590, size: 128, offset: 768)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !606, file: !607, line: 46, baseType: !590, size: 128, offset: 896)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !606, file: !607, line: 47, baseType: !478, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !606, file: !607, line: 48, baseType: !478, size: 64, offset: 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !509, file: !37, line: 1883, baseType: !629, size: 64, offset: 960)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!367, !442, !338, !381}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !509, file: !37, line: 1884, baseType: !633, size: 64, offset: 1024)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!195, !485, !636, !478, !478}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !509, file: !37, line: 1886, baseType: !639, size: 64, offset: 1088)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!195, !485, !642, !195}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !509, file: !37, line: 1887, baseType: !644, size: 64, offset: 1152)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!195, !485, !442, !412, !7, !376}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !509, file: !37, line: 1890, baseType: !561, size: 64, offset: 1216)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !509, file: !37, line: 1891, baseType: !649, size: 64, offset: 1280)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!195, !485, !536, !195}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !486, file: !37, line: 623, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !708, !2305, !2387, !2470, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2486, !2490, !2491, !2494, !2495, !2498, !2499, !2500, !2541, !2568, !2569, !2570, !2571, !2572, !2573, !2576, !2578, !2585, !2586, !2588, !2589, !2590, !2649, !2650, !2665, !2666, !2667, !2668, !2669, !2672, !2673, !2674, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !654, file: !37, line: 1417, baseType: !140, size: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !654, file: !37, line: 1418, baseType: !569, size: 32, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !654, file: !37, line: 1419, baseType: !179, size: 8, offset: 160)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !654, file: !37, line: 1420, baseType: !384, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !654, file: !37, line: 1421, baseType: !587, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !654, file: !37, line: 1422, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !664)
!664 = !{!665, !666, !667, !674, !678, !682, !686, !687, !688, !698, !701, !702, !703, !705, !706, !707}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !663, file: !37, line: 2229, baseType: !293, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !663, file: !37, line: 2230, baseType: !195, size: 32, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !663, file: !37, line: 2238, baseType: !668, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!195, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !673, line: 28, flags: DIFlagFwdDecl)
!673 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!674 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !663, file: !37, line: 2239, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !677)
!677 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !663, file: !37, line: 2240, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!442, !662, !195, !293, !135}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !663, file: !37, line: 2242, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !653}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !663, file: !37, line: 2243, baseType: !130, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !663, file: !37, line: 2244, baseType: !662, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !663, file: !37, line: 2245, baseType: !689, size: 64, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !134, line: 182, size: 64, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !689, file: !134, line: 183, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !134, line: 186, size: 128, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !134, line: 187, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !693, file: !134, line: 187, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !663, file: !37, line: 2247, baseType: !699, offset: 576)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !700, line: 187, elements: !282)
!700 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !663, file: !37, line: 2248, baseType: !699, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !663, file: !37, line: 2249, baseType: !699, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !663, file: !37, line: 2250, baseType: !704, offset: 576)
!704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, elements: !246)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !663, file: !37, line: 2252, baseType: !699, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !663, file: !37, line: 2253, baseType: !699, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !663, file: !37, line: 2254, baseType: !699, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !654, file: !37, line: 1423, baseType: !709, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !712)
!712 = !{!713, !717, !721, !722, !726, !732, !736, !737, !738, !742, !746, !747, !748, !749, !755, !760, !761, !768, !769, !770, !771, !2289, !2304}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !711, file: !37, line: 1936, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!485, !653}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !711, file: !37, line: 1937, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !485}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !711, file: !37, line: 1938, baseType: !718, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !711, file: !37, line: 1940, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !485, !195}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !711, file: !37, line: 1941, baseType: !727, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!195, !485, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !711, file: !37, line: 1942, baseType: !733, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!195, !485}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !711, file: !37, line: 1943, baseType: !718, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !711, file: !37, line: 1944, baseType: !683, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !711, file: !37, line: 1945, baseType: !739, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!195, !653, !195}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !711, file: !37, line: 1946, baseType: !743, size: 64, offset: 576)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!195, !653}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !711, file: !37, line: 1947, baseType: !743, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !711, file: !37, line: 1948, baseType: !743, size: 64, offset: 704)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !711, file: !37, line: 1949, baseType: !743, size: 64, offset: 768)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !711, file: !37, line: 1950, baseType: !750, size: 64, offset: 832)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!195, !442, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !711, file: !37, line: 1951, baseType: !756, size: 64, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!195, !653, !759, !338}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !711, file: !37, line: 1952, baseType: !683, size: 64, offset: 960)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !711, file: !37, line: 1954, baseType: !762, size: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!195, !765, !442}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !767, line: 539, flags: DIFlagFwdDecl)
!767 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!768 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !711, file: !37, line: 1955, baseType: !762, size: 64, offset: 1088)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !711, file: !37, line: 1956, baseType: !762, size: 64, offset: 1152)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !711, file: !37, line: 1957, baseType: !762, size: 64, offset: 1216)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !711, file: !37, line: 1963, baseType: !772, size: 64, offset: 1280)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!195, !653, !775, !133}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !777, line: 68, size: 512, align: 128, elements: !778)
!777 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !780, !2281, !2288}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !776, file: !777, line: 69, baseType: !384, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 77, baseType: !781, size: 320, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 77, size: 320, elements: !782)
!782 = !{!783, !961, !966, !994, !1002, !1008, !2273, !2280}
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 78, baseType: !784, size: 320)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 78, size: 320, elements: !785)
!785 = !{!786, !787, !959, !960}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !784, file: !777, line: 84, baseType: !140, size: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !784, file: !777, line: 86, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !790)
!790 = !{!791, !792, !799, !800, !805, !820, !828, !829, !830, !831, !952, !953, !956, !957, !958}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !789, file: !37, line: 452, baseType: !485, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !789, file: !37, line: 453, baseType: !793, size: 128, offset: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !794, line: 292, size: 128, elements: !795)
!794 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !793, file: !794, line: 293, baseType: !305)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !793, file: !794, line: 295, baseType: !133, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !793, file: !794, line: 296, baseType: !135, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !789, file: !37, line: 454, baseType: !133, size: 32, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !789, file: !37, line: 455, baseType: !801, size: 32, offset: 224)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !134, line: 168, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 166, size: 32, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !802, file: !134, line: 167, baseType: !195, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !789, file: !37, line: 460, baseType: !806, size: 128, offset: 256)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !807, line: 125, size: 128, elements: !808)
!807 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!808 = !{!809, !819}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !806, file: !807, line: 126, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !807, line: 31, size: 64, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !810, file: !807, line: 32, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !807, line: 24, size: 192, align: 64, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !814, file: !807, line: 25, baseType: !384, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !814, file: !807, line: 26, baseType: !813, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !814, file: !807, line: 27, baseType: !813, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !806, file: !807, line: 127, baseType: !813, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !789, file: !37, line: 461, baseType: !821, size: 256, offset: 384)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !822, line: 35, size: 256, elements: !823)
!822 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!823 = !{!824, !825, !826, !827}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !821, file: !822, line: 36, baseType: !252, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !821, file: !822, line: 42, baseType: !252, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !821, file: !822, line: 46, baseType: !274, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !821, file: !822, line: 47, baseType: !140, size: 128, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !789, file: !37, line: 462, baseType: !384, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !789, file: !37, line: 463, baseType: !384, size: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !789, file: !37, line: 464, baseType: !384, size: 64, offset: 768)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !789, file: !37, line: 465, baseType: !832, size: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !835)
!835 = !{!836, !840, !844, !848, !852, !856, !862, !868, !872, !877, !881, !885, !889, !916, !920, !926, !927, !928, !932, !937, !941, !948}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !834, file: !37, line: 368, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!195, !775, !730}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !834, file: !37, line: 369, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!195, !412, !775}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !834, file: !37, line: 372, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!195, !788, !730}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !834, file: !37, line: 375, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!195, !775}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !834, file: !37, line: 381, baseType: !853, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!195, !412, !788, !143, !7}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !834, file: !37, line: 383, baseType: !857, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !834, file: !37, line: 385, baseType: !863, size: 64, offset: 384)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!195, !412, !788, !587, !7, !7, !866, !867}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !834, file: !37, line: 388, baseType: !869, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!195, !412, !788, !587, !7, !7, !775, !135}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !834, file: !37, line: 393, baseType: !873, size: 64, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!876, !788, !876}
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !134, line: 125, baseType: !478)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !834, file: !37, line: 394, baseType: !878, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !775, !7, !7}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !834, file: !37, line: 395, baseType: !882, size: 64, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!195, !775, !133}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !834, file: !37, line: 396, baseType: !886, size: 64, offset: 704)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{null, !775}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !834, file: !37, line: 397, baseType: !890, size: 64, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!367, !893, !914}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !895)
!895 = !{!896, !897, !898, !902, !903, !904, !906, !907}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !894, file: !37, line: 321, baseType: !412, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !894, file: !37, line: 326, baseType: !587, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !894, file: !37, line: 327, baseType: !899, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !893, !88, !88}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !894, file: !37, line: 328, baseType: !135, size: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !894, file: !37, line: 329, baseType: !195, size: 32, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !894, file: !37, line: 330, baseType: !905, size: 16, offset: 288)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !259, line: 19, baseType: !175)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !894, file: !37, line: 331, baseType: !905, size: 16, offset: 304)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !37, line: 332, baseType: !908, size: 64, offset: 320)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !37, line: 332, size: 64, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !908, file: !37, line: 333, baseType: !7, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !908, file: !37, line: 334, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !834, file: !37, line: 402, baseType: !917, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!195, !788, !775, !775, !12}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !834, file: !37, line: 404, baseType: !921, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!546, !775, !924}
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !925, line: 305, baseType: !7)
!925 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!926 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !834, file: !37, line: 405, baseType: !886, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !834, file: !37, line: 406, baseType: !849, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !834, file: !37, line: 407, baseType: !929, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!195, !775, !384, !384}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !834, file: !37, line: 409, baseType: !933, size: 64, offset: 1152)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !775, !936, !936}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !834, file: !37, line: 410, baseType: !938, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!195, !788, !775}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !834, file: !37, line: 413, baseType: !942, size: 64, offset: 1280)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!195, !945, !412, !947}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !834, file: !37, line: 415, baseType: !949, size: 64, offset: 1344)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !412}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !37, line: 466, baseType: !384, size: 64, offset: 896)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !789, file: !37, line: 467, baseType: !954, size: 32, offset: 960)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !955, line: 8, baseType: !475)
!955 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !789, file: !37, line: 468, baseType: !305, offset: 992)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !789, file: !37, line: 469, baseType: !140, size: 128, offset: 1024)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !789, file: !37, line: 470, baseType: !135, size: 64, offset: 1152)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !784, file: !777, line: 87, baseType: !384, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !784, file: !777, line: 94, baseType: !384, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 96, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 96, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !962, file: !777, line: 101, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !134, line: 143, baseType: !478)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 103, baseType: !967, size: 320)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 103, size: 320, elements: !968)
!968 = !{!969, !979, !982, !983}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !777, line: 104, baseType: !970, size: 128)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !777, line: 104, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !970, file: !777, line: 105, baseType: !140, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !777, line: 106, baseType: !974, size: 128)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !777, line: 106, size: 128, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !974, file: !777, line: 107, baseType: !775, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !974, file: !777, line: 109, baseType: !195, size: 32, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !974, file: !777, line: 110, baseType: !195, size: 32, offset: 96)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !967, file: !777, line: 117, baseType: !980, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !777, line: 117, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !967, file: !777, line: 119, baseType: !135, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !777, line: 120, baseType: !984, size: 64, offset: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !777, line: 120, size: 64, elements: !985)
!985 = !{!986, !987, !988}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !984, file: !777, line: 121, baseType: !135, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !984, file: !777, line: 122, baseType: !384, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !777, line: 123, baseType: !989, size: 32)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !777, line: 123, size: 32, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !989, file: !777, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !989, file: !777, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !989, file: !777, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 130, baseType: !995, size: 192)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 130, size: 192, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !995, file: !777, line: 131, baseType: !384, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !995, file: !777, line: 134, baseType: !179, size: 8, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !995, file: !777, line: 135, baseType: !179, size: 8, offset: 72)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !995, file: !777, line: 136, baseType: !801, size: 32, offset: 96)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !995, file: !777, line: 137, baseType: !7, size: 32, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 139, baseType: !1003, size: 256)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 139, size: 256, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1003, file: !777, line: 140, baseType: !384, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1003, file: !777, line: 141, baseType: !801, size: 32, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1003, file: !777, line: 143, baseType: !140, size: 128, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 145, baseType: !1009, size: 256)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 145, size: 256, elements: !1010)
!1010 = !{!1011, !1012, !1014, !1015, !2272}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1009, file: !777, line: 146, baseType: !384, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1009, file: !777, line: 147, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !767, line: 509, baseType: !775)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1009, file: !777, line: 148, baseType: !384, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !777, line: 149, baseType: !1016, size: 64, offset: 192)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !777, line: 149, size: 64, elements: !1017)
!1017 = !{!1018, !2271}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1016, file: !777, line: 150, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !777, line: 388, size: 7296, elements: !1021)
!1021 = !{!1022, !2267}
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !777, line: 389, baseType: !1023, size: 7296)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !777, line: 389, size: 7296, elements: !1024)
!1024 = !{!1025, !1063, !1064, !1065, !1069, !1070, !1071, !1072, !1073, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1114, !1122, !1125, !1169, !1170, !2251, !2252, !2255, !2256, !2257, !2260, !2261, !2262, !2265, !2266}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1023, file: !777, line: 390, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !777, line: 305, size: 1472, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1043, !1044, !1049, !1050, !1053, !1057, !1058, !1059, !1060, !1061}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1027, file: !777, line: 308, baseType: !384, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1027, file: !777, line: 309, baseType: !384, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1027, file: !777, line: 313, baseType: !1026, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1027, file: !777, line: 313, baseType: !1026, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1027, file: !777, line: 315, baseType: !814, size: 192, align: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1027, file: !777, line: 323, baseType: !384, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1027, file: !777, line: 327, baseType: !1019, size: 64, offset: 512)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1027, file: !777, line: 333, baseType: !1037, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !767, line: 284, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !767, line: 284, size: 64, elements: !1039)
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1038, file: !767, line: 284, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1042, line: 19, baseType: !384)
!1042 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1027, file: !777, line: 334, baseType: !384, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1027, file: !777, line: 343, baseType: !1045, size: 256, offset: 704)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !777, line: 340, size: 256, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1045, file: !777, line: 341, baseType: !814, size: 192, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1045, file: !777, line: 342, baseType: !384, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1027, file: !777, line: 351, baseType: !140, size: 128, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1027, file: !777, line: 353, baseType: !1051, size: 64, offset: 1088)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !777, line: 353, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1027, file: !777, line: 356, baseType: !1054, size: 64, offset: 1152)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !777, line: 356, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1027, file: !777, line: 359, baseType: !384, size: 64, offset: 1216)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1027, file: !777, line: 361, baseType: !412, size: 64, offset: 1280)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1027, file: !777, line: 362, baseType: !135, size: 64, offset: 1344)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1027, file: !777, line: 365, baseType: !252, size: 64, offset: 1408)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1027, file: !777, line: 373, baseType: !1062, offset: 1472)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !777, line: 296, elements: !282)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1023, file: !777, line: 391, baseType: !810, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1023, file: !777, line: 392, baseType: !478, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1023, file: !777, line: 394, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!384, !412, !384, !384, !384, !384}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1023, file: !777, line: 398, baseType: !384, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1023, file: !777, line: 399, baseType: !384, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1023, file: !777, line: 405, baseType: !384, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1023, file: !777, line: 406, baseType: !384, size: 64, offset: 448)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1023, file: !777, line: 407, baseType: !1074, size: 64, offset: 512)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !767, line: 286, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 286, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1076, file: !767, line: 286, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1042, line: 18, baseType: !384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1023, file: !777, line: 416, baseType: !801, size: 32, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1023, file: !777, line: 428, baseType: !801, size: 32, offset: 608)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1023, file: !777, line: 437, baseType: !801, size: 32, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1023, file: !777, line: 447, baseType: !801, size: 32, offset: 672)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1023, file: !777, line: 450, baseType: !252, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1023, file: !777, line: 452, baseType: !195, size: 32, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1023, file: !777, line: 454, baseType: !305, offset: 800)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1023, file: !777, line: 457, baseType: !821, size: 256, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1023, file: !777, line: 459, baseType: !140, size: 128, offset: 1088)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1023, file: !777, line: 466, baseType: !384, size: 64, offset: 1216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1023, file: !777, line: 467, baseType: !384, size: 64, offset: 1280)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1023, file: !777, line: 469, baseType: !384, size: 64, offset: 1344)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1023, file: !777, line: 470, baseType: !384, size: 64, offset: 1408)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1023, file: !777, line: 471, baseType: !254, size: 64, offset: 1472)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1023, file: !777, line: 472, baseType: !384, size: 64, offset: 1536)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1023, file: !777, line: 473, baseType: !384, size: 64, offset: 1600)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1023, file: !777, line: 474, baseType: !384, size: 64, offset: 1664)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1023, file: !777, line: 475, baseType: !384, size: 64, offset: 1728)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1023, file: !777, line: 477, baseType: !305, offset: 1792)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1023, file: !777, line: 478, baseType: !384, size: 64, offset: 1792)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1023, file: !777, line: 478, baseType: !384, size: 64, offset: 1856)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1023, file: !777, line: 478, baseType: !384, size: 64, offset: 1920)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1023, file: !777, line: 478, baseType: !384, size: 64, offset: 1984)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1023, file: !777, line: 479, baseType: !384, size: 64, offset: 2048)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1023, file: !777, line: 479, baseType: !384, size: 64, offset: 2112)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1023, file: !777, line: 479, baseType: !384, size: 64, offset: 2176)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1023, file: !777, line: 480, baseType: !384, size: 64, offset: 2240)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1023, file: !777, line: 480, baseType: !384, size: 64, offset: 2304)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1023, file: !777, line: 480, baseType: !384, size: 64, offset: 2368)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1023, file: !777, line: 480, baseType: !384, size: 64, offset: 2432)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1023, file: !777, line: 482, baseType: !1111, size: 2816, offset: 2496)
!1111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 2816, elements: !1112)
!1112 = !{!1113}
!1113 = !DISubrange(count: 44)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1023, file: !777, line: 488, baseType: !1115, size: 256, offset: 5312)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1116, line: 60, size: 256, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1115, file: !1116, line: 61, baseType: !1119, size: 256)
!1119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 256, elements: !1120)
!1120 = !{!1121}
!1121 = !DISubrange(count: 4)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1023, file: !777, line: 490, baseType: !1123, size: 64, offset: 5568)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !777, line: 490, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1023, file: !777, line: 493, baseType: !1126, size: 896, offset: 5632)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1127, line: 53, baseType: !1128)
!1127 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1127, line: 13, size: 896, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1136, !1137, !1144, !1145, !1165, !1166, !1167}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1128, file: !1127, line: 18, baseType: !478, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1128, file: !1127, line: 28, baseType: !254, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1128, file: !1127, line: 31, baseType: !821, size: 256, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1128, file: !1127, line: 32, baseType: !1134, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1127, line: 32, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1128, file: !1127, line: 37, baseType: !176, size: 16, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1128, file: !1127, line: 40, baseType: !1138, size: 192, offset: 512)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1139, line: 53, size: 192, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1140 = !{!1141, !1142, !1143}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1138, file: !1139, line: 54, baseType: !252, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1138, file: !1139, line: 55, baseType: !305, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1138, file: !1139, line: 59, baseType: !140, size: 128, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1128, file: !1127, line: 41, baseType: !135, size: 64, offset: 704)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1128, file: !1127, line: 42, baseType: !1146, size: 64, offset: 768)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1149, line: 13, size: 896, elements: !1150)
!1149 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1148, file: !1149, line: 14, baseType: !135, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1148, file: !1149, line: 15, baseType: !384, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1148, file: !1149, line: 17, baseType: !384, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1148, file: !1149, line: 17, baseType: !384, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1148, file: !1149, line: 19, baseType: !88, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1148, file: !1149, line: 21, baseType: !88, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1148, file: !1149, line: 22, baseType: !88, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1148, file: !1149, line: 23, baseType: !88, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1148, file: !1149, line: 24, baseType: !88, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1148, file: !1149, line: 25, baseType: !88, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1148, file: !1149, line: 26, baseType: !88, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1148, file: !1149, line: 27, baseType: !88, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1148, file: !1149, line: 28, baseType: !88, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1148, file: !1149, line: 29, baseType: !88, size: 64, offset: 832)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1128, file: !1127, line: 44, baseType: !801, size: 32, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1128, file: !1127, line: 50, baseType: !905, size: 16, offset: 864)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1128, file: !1127, line: 51, baseType: !1168, size: 16, offset: 880)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !259, line: 18, baseType: !184)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1023, file: !777, line: 495, baseType: !384, size: 64, offset: 6528)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1023, file: !777, line: 497, baseType: !1171, size: 64, offset: 6592)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !777, line: 381, size: 384, elements: !1173)
!1173 = !{!1174, !1175, !2250}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1172, file: !777, line: 382, baseType: !801, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1172, file: !777, line: 383, baseType: !1176, size: 128, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !777, line: 376, size: 128, elements: !1177)
!1177 = !{!1178, !2248}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1176, file: !777, line: 377, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1181, line: 640, size: 48640, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1189, !1191, !1192, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1209, !1227, !1238, !1322, !1323, !1324, !1335, !1336, !1338, !1339, !1340, !1341, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1419, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1457, !1459, !1460, !1461, !1473, !1474, !1475, !1476, !1477, !1478, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1502, !1507, !1691, !1692, !1693, !1694, !1698, !1701, !1704, !1707, !1710, !1713, !1814, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1860, !1861, !1862, !1863, !1864, !1869, !1870, !1871, !1874, !1875, !1878, !1881, !1884, !1887, !1919, !1922, !1923, !2002, !2003, !2006, !2007, !2010, !2011, !2012, !2016, !2017, !2018, !2031, !2032, !2033, !2043, !2048, !2051, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1180, file: !1181, line: 646, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1185, line: 56, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !1185, line: 57, baseType: !384, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1184, file: !1185, line: 58, baseType: !475, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1180, file: !1181, line: 649, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !88)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1180, file: !1181, line: 657, baseType: !135, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1180, file: !1181, line: 658, baseType: !1193, size: 32, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1194, line: 113, baseType: !1195)
!1194 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1194, line: 111, size: 32, elements: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1195, file: !1194, line: 112, baseType: !801, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 660, baseType: !7, size: 32, offset: 288)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1180, file: !1181, line: 661, baseType: !7, size: 32, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1180, file: !1181, line: 684, baseType: !195, size: 32, offset: 352)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1180, file: !1181, line: 686, baseType: !195, size: 32, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1180, file: !1181, line: 687, baseType: !195, size: 32, offset: 416)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1180, file: !1181, line: 688, baseType: !195, size: 32, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1180, file: !1181, line: 689, baseType: !7, size: 32, offset: 480)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1180, file: !1181, line: 691, baseType: !1206, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1181, line: 691, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1180, file: !1181, line: 692, baseType: !1210, size: 832, offset: 576)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1181, line: 451, size: 832, elements: !1211)
!1211 = !{!1212, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1210, file: !1181, line: 453, baseType: !1213, size: 128)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1181, line: 325, size: 128, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1213, file: !1181, line: 326, baseType: !384, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1213, file: !1181, line: 327, baseType: !475, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1210, file: !1181, line: 454, baseType: !814, size: 192, align: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1210, file: !1181, line: 455, baseType: !140, size: 128, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1210, file: !1181, line: 456, baseType: !7, size: 32, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1210, file: !1181, line: 458, baseType: !478, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1210, file: !1181, line: 459, baseType: !478, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1210, file: !1181, line: 460, baseType: !478, size: 64, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1210, file: !1181, line: 461, baseType: !478, size: 64, offset: 704)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1210, file: !1181, line: 463, baseType: !478, size: 64, offset: 768)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1210, file: !1181, line: 465, baseType: !1226, offset: 832)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1181, line: 415, elements: !282)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1180, file: !1181, line: 693, baseType: !1228, size: 384, offset: 1408)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1181, line: 489, size: 384, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1228, file: !1181, line: 490, baseType: !140, size: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1228, file: !1181, line: 491, baseType: !384, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1228, file: !1181, line: 492, baseType: !384, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1228, file: !1181, line: 493, baseType: !7, size: 32, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1228, file: !1181, line: 494, baseType: !176, size: 16, offset: 288)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1228, file: !1181, line: 495, baseType: !176, size: 16, offset: 304)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1228, file: !1181, line: 497, baseType: !1237, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1180, file: !1181, line: 697, baseType: !1239, size: 1792, offset: 1792)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1181, line: 507, size: 1792, elements: !1240)
!1240 = !{!1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1319, !1320}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1239, file: !1181, line: 508, baseType: !814, size: 192, align: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1239, file: !1181, line: 515, baseType: !478, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1239, file: !1181, line: 516, baseType: !478, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1239, file: !1181, line: 517, baseType: !478, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1239, file: !1181, line: 518, baseType: !478, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1239, file: !1181, line: 519, baseType: !478, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1239, file: !1181, line: 526, baseType: !258, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1239, file: !1181, line: 527, baseType: !478, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1239, file: !1181, line: 528, baseType: !7, size: 32, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1239, file: !1181, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1239, file: !1181, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1239, file: !1181, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1239, file: !1181, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1239, file: !1181, line: 563, baseType: !1255, size: 512, offset: 704)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1256)
!1256 = !{!1257, !1265, !1266, !1271, !1314, !1316, !1317, !1318}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1255, file: !20, line: 119, baseType: !1258, size: 256)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1259, line: 9, size: 256, elements: !1260)
!1259 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !{!1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1258, file: !1259, line: 10, baseType: !814, size: 192, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1258, file: !1259, line: 11, baseType: !1263, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1264, line: 29, baseType: !258)
!1264 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1255, file: !20, line: 120, baseType: !1263, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1255, file: !20, line: 121, baseType: !1267, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!19, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1255, file: !20, line: 122, baseType: !1272, size: 64, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1274)
!1274 = !{!1275, !1295, !1296, !1299, !1304, !1305, !1309, !1313}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1273, file: !20, line: 160, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !20, line: 215, baseType: !274)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1277, file: !20, line: 216, baseType: !7, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1277, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1277, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1277, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1277, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1277, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1277, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1277, file: !20, line: 233, baseType: !1263, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1277, file: !20, line: 234, baseType: !1270, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1277, file: !20, line: 235, baseType: !1263, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1277, file: !20, line: 236, baseType: !1270, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1277, file: !20, line: 237, baseType: !1292, size: 4096, offset: 512)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1273, size: 4096, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 8)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1273, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1273, file: !20, line: 162, baseType: !1297, size: 32, offset: 96)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !134, line: 27, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !369, line: 96, baseType: !195)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1273, file: !20, line: 163, baseType: !1300, size: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !448, line: 276, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !448, line: 276, size: 32, elements: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1301, file: !448, line: 276, baseType: !452, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1273, file: !20, line: 164, baseType: !1270, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1273, file: !20, line: 165, baseType: !1306, size: 128, offset: 256)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1259, line: 14, size: 128, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1306, file: !1259, line: 15, baseType: !806, size: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1273, file: !20, line: 166, baseType: !1310, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!1263}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1273, file: !20, line: 167, baseType: !1263, size: 64, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1255, file: !20, line: 123, baseType: !1315, size: 8, offset: 448)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !259, line: 17, baseType: !178)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1255, file: !20, line: 124, baseType: !1315, size: 8, offset: 456)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1255, file: !20, line: 125, baseType: !1315, size: 8, offset: 464)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1255, file: !20, line: 126, baseType: !1315, size: 8, offset: 472)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1239, file: !1181, line: 572, baseType: !1255, size: 512, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1239, file: !1181, line: 580, baseType: !1321, size: 64, offset: 1728)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1180, file: !1181, line: 721, baseType: !7, size: 32, offset: 3584)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1180, file: !1181, line: 722, baseType: !195, size: 32, offset: 3616)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1180, file: !1181, line: 723, baseType: !1325, size: 64, offset: 3648)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1328, line: 17, baseType: !1329)
!1328 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1328, line: 17, size: 64, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1329, file: !1328, line: 17, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 1)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1180, file: !1181, line: 724, baseType: !1327, size: 64, offset: 3712)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1180, file: !1181, line: 749, baseType: !1337, offset: 3776)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1181, line: 290, elements: !282)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1180, file: !1181, line: 751, baseType: !140, size: 128, offset: 3776)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1180, file: !1181, line: 757, baseType: !1019, size: 64, offset: 3904)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1180, file: !1181, line: 758, baseType: !1019, size: 64, offset: 3968)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1180, file: !1181, line: 761, baseType: !1342, size: 320, offset: 4032)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1116, line: 34, size: 320, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1342, file: !1116, line: 35, baseType: !478, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1342, file: !1116, line: 36, baseType: !1346, size: 256, offset: 64)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 256, elements: !1120)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1180, file: !1181, line: 766, baseType: !195, size: 32, offset: 4352)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1180, file: !1181, line: 767, baseType: !195, size: 32, offset: 4384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1180, file: !1181, line: 768, baseType: !195, size: 32, offset: 4416)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1180, file: !1181, line: 770, baseType: !195, size: 32, offset: 4448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1180, file: !1181, line: 772, baseType: !384, size: 64, offset: 4480)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1180, file: !1181, line: 775, baseType: !7, size: 32, offset: 4544)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1180, file: !1181, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1180, file: !1181, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1180, file: !1181, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1180, file: !1181, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1180, file: !1181, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1180, file: !1181, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1180, file: !1181, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1180, file: !1181, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1180, file: !1181, line: 831, baseType: !384, size: 64, offset: 4672)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1180, file: !1181, line: 833, baseType: !1363, size: 384, offset: 4736)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1364)
!1364 = !{!1365, !1370}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1363, file: !25, line: 26, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!88, !1369}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !25, line: 27, baseType: !1371, size: 320, offset: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1363, file: !25, line: 27, size: 320, elements: !1372)
!1372 = !{!1373, !1383, !1409}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1371, file: !25, line: 36, baseType: !1374, size: 320)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !25, line: 29, size: 320, elements: !1375)
!1375 = !{!1376, !1378, !1379, !1380, !1381, !1382}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1374, file: !25, line: 30, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1374, file: !25, line: 31, baseType: !475, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !25, line: 32, baseType: !475, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1374, file: !25, line: 33, baseType: !475, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1374, file: !25, line: 34, baseType: !478, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1374, file: !25, line: 35, baseType: !1377, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1371, file: !25, line: 46, baseType: !1384, size: 192)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !25, line: 38, size: 192, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1408}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1384, file: !25, line: 39, baseType: !1297, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1384, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !25, line: 41, baseType: !1389, size: 64, offset: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1384, file: !25, line: 41, size: 64, elements: !1390)
!1390 = !{!1391, !1399}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1389, file: !25, line: 42, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1394, line: 7, size: 128, elements: !1395)
!1394 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1395 = !{!1396, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1393, file: !1394, line: 8, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !369, line: 93, baseType: !261)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1393, file: !1394, line: 9, baseType: !261, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1389, file: !25, line: 43, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1402, line: 7, size: 64, elements: !1403)
!1402 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1407}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1401, file: !1402, line: 8, baseType: !1405, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1402, line: 5, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !259, line: 20, baseType: !194)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1401, file: !1402, line: 9, baseType: !1406, size: 32, offset: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1384, file: !25, line: 45, baseType: !478, size: 64, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1371, file: !25, line: 54, baseType: !1410, size: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !25, line: 48, size: 256, elements: !1411)
!1411 = !{!1412, !1415, !1416, !1417, !1418}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1410, file: !25, line: 49, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1410, file: !25, line: 50, baseType: !195, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1410, file: !25, line: 51, baseType: !195, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1410, file: !25, line: 52, baseType: !384, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1410, file: !25, line: 53, baseType: !384, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1180, file: !1181, line: 835, baseType: !1420, size: 32, offset: 5120)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !134, line: 22, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !369, line: 28, baseType: !195)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1180, file: !1181, line: 836, baseType: !1420, size: 32, offset: 5152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1180, file: !1181, line: 840, baseType: !384, size: 64, offset: 5184)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1180, file: !1181, line: 849, baseType: !1179, size: 64, offset: 5248)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1180, file: !1181, line: 852, baseType: !1179, size: 64, offset: 5312)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1180, file: !1181, line: 857, baseType: !140, size: 128, offset: 5376)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1180, file: !1181, line: 858, baseType: !140, size: 128, offset: 5504)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1180, file: !1181, line: 859, baseType: !1179, size: 64, offset: 5632)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1180, file: !1181, line: 867, baseType: !140, size: 128, offset: 5696)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1180, file: !1181, line: 868, baseType: !140, size: 128, offset: 5824)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1180, file: !1181, line: 871, baseType: !1432, size: 64, offset: 5952)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1440, !1441, !1448, !1449}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1433, file: !46, line: 61, baseType: !1193, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1433, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !46, line: 63, baseType: !305, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1433, file: !46, line: 65, baseType: !1439, size: 256, offset: 64)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !689, size: 256, elements: !1120)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1433, file: !46, line: 66, baseType: !689, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1433, file: !46, line: 68, baseType: !1442, size: 128, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1443, line: 40, baseType: !1444)
!1443 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1443, line: 36, size: 128, elements: !1445)
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1444, file: !1443, line: 37, baseType: !305)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1444, file: !1443, line: 38, baseType: !140, size: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1433, file: !46, line: 69, baseType: !425, size: 128, align: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1433, file: !46, line: 70, baseType: !1450, size: 128, offset: 640)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1451, size: 128, elements: !1333)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1451, file: !46, line: 55, baseType: !195, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1451, file: !46, line: 56, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1180, file: !1181, line: 872, baseType: !1458, size: 512, offset: 6016)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 512, elements: !1120)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1180, file: !1181, line: 873, baseType: !140, size: 128, offset: 6528)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1180, file: !1181, line: 874, baseType: !140, size: 128, offset: 6656)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1180, file: !1181, line: 876, baseType: !1462, size: 64, offset: 6784)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1464, line: 26, size: 192, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1463, file: !1464, line: 27, baseType: !7, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1463, file: !1464, line: 28, baseType: !1468, size: 128, offset: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1469, line: 43, size: 128, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1468, file: !1469, line: 44, baseType: !274)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1468, file: !1469, line: 45, baseType: !140, size: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1180, file: !1181, line: 879, baseType: !759, size: 64, offset: 6848)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1180, file: !1181, line: 882, baseType: !759, size: 64, offset: 6912)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1180, file: !1181, line: 884, baseType: !478, size: 64, offset: 6976)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1180, file: !1181, line: 885, baseType: !478, size: 64, offset: 7040)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1180, file: !1181, line: 890, baseType: !478, size: 64, offset: 7104)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1180, file: !1181, line: 891, baseType: !1479, size: 128, offset: 7168)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1181, line: 242, size: 128, elements: !1480)
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1479, file: !1181, line: 244, baseType: !478, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1479, file: !1181, line: 245, baseType: !478, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !1181, line: 246, baseType: !274, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1180, file: !1181, line: 900, baseType: !384, size: 64, offset: 7296)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1180, file: !1181, line: 901, baseType: !384, size: 64, offset: 7360)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1180, file: !1181, line: 904, baseType: !478, size: 64, offset: 7424)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1180, file: !1181, line: 907, baseType: !478, size: 64, offset: 7488)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1180, file: !1181, line: 910, baseType: !384, size: 64, offset: 7552)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1180, file: !1181, line: 911, baseType: !384, size: 64, offset: 7616)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1180, file: !1181, line: 914, baseType: !1491, size: 640, offset: 7680)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1492, line: 123, size: 640, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1500, !1501}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1491, file: !1492, line: 124, baseType: !1495, size: 576)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 576, elements: !246)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1492, line: 108, size: 192, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1496, file: !1492, line: 109, baseType: !478, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1496, file: !1492, line: 110, baseType: !1306, size: 128, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1491, file: !1492, line: 125, baseType: !7, size: 32, offset: 576)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1491, file: !1492, line: 126, baseType: !7, size: 32, offset: 608)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1180, file: !1181, line: 917, baseType: !1503, size: 192, offset: 8320)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1492, line: 134, size: 192, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1503, file: !1492, line: 135, baseType: !425, size: 128, align: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1503, file: !1492, line: 136, baseType: !7, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1180, file: !1181, line: 923, baseType: !1508, size: 64, offset: 8512)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1511, line: 111, size: 1280, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1532, !1533, !1534, !1535, !1536, !1537, !1644, !1645, !1646, !1647, !1673, !1676, !1686}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1510, file: !1511, line: 112, baseType: !801, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1510, file: !1511, line: 120, baseType: !491, size: 32, offset: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1510, file: !1511, line: 121, baseType: !499, size: 32, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1510, file: !1511, line: 122, baseType: !491, size: 32, offset: 96)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1510, file: !1511, line: 123, baseType: !499, size: 32, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1510, file: !1511, line: 124, baseType: !491, size: 32, offset: 160)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1510, file: !1511, line: 125, baseType: !499, size: 32, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1510, file: !1511, line: 126, baseType: !491, size: 32, offset: 224)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1510, file: !1511, line: 127, baseType: !499, size: 32, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1510, file: !1511, line: 128, baseType: !7, size: 32, offset: 288)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1510, file: !1511, line: 129, baseType: !1524, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1525, line: 26, baseType: !1526)
!1525 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1525, line: 24, size: 64, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1526, file: !1525, line: 25, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 2)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1510, file: !1511, line: 130, baseType: !1524, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1510, file: !1511, line: 131, baseType: !1524, size: 64, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1510, file: !1511, line: 132, baseType: !1524, size: 64, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1510, file: !1511, line: 133, baseType: !1524, size: 64, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1510, file: !1511, line: 135, baseType: !179, size: 8, offset: 640)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1510, file: !1511, line: 137, baseType: !1538, size: 64, offset: 704)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1540, line: 189, size: 1664, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542, !1543, !1546, !1551, !1552, !1555, !1556, !1561, !1562, !1563, !1564, !1566, !1567, !1568, !1569, !1570, !1608, !1629}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1539, file: !1540, line: 190, baseType: !1193, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1539, file: !1540, line: 191, baseType: !1544, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1540, line: 28, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !134, line: 98, baseType: !1406)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1540, line: 192, baseType: !1547, size: 192, offset: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1540, line: 192, size: 192, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1547, file: !1540, line: 193, baseType: !140, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1547, file: !1540, line: 194, baseType: !814, size: 192, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1539, file: !1540, line: 199, baseType: !821, size: 256, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1539, file: !1540, line: 200, baseType: !1553, size: 64, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1540, line: 200, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1539, file: !1540, line: 201, baseType: !135, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1540, line: 202, baseType: !1557, size: 64, offset: 640)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1540, line: 202, size: 64, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1557, file: !1540, line: 203, baseType: !594, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1557, file: !1540, line: 204, baseType: !594, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1539, file: !1540, line: 206, baseType: !594, size: 64, offset: 704)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1539, file: !1540, line: 207, baseType: !491, size: 32, offset: 768)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1539, file: !1540, line: 208, baseType: !499, size: 32, offset: 800)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1539, file: !1540, line: 209, baseType: !1565, size: 32, offset: 832)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1540, line: 31, baseType: !613)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1539, file: !1540, line: 210, baseType: !176, size: 16, offset: 864)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1539, file: !1540, line: 211, baseType: !176, size: 16, offset: 880)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1539, file: !1540, line: 215, baseType: !185, size: 16, offset: 896)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !1540, line: 222, baseType: !384, size: 64, offset: 960)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1540, line: 239, baseType: !1571, size: 320, offset: 1024)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1540, line: 239, size: 320, elements: !1572)
!1572 = !{!1573, !1600}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1571, file: !1540, line: 240, baseType: !1574, size: 320)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1540, line: 108, size: 320, elements: !1575)
!1575 = !{!1576, !1577, !1589, !1592, !1599}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1574, file: !1540, line: 110, baseType: !384, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1574, file: !1540, line: 111, baseType: !1578, size: 64, offset: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1574, file: !1540, line: 111, size: 64, elements: !1579)
!1579 = !{!1580, !1588}
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1540, line: 112, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !1540, line: 112, size: 64, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1581, file: !1540, line: 114, baseType: !905, size: 16)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1581, file: !1540, line: 115, baseType: !1585, size: 48, offset: 16)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 48, elements: !1586)
!1586 = !{!1587}
!1587 = !DISubrange(count: 6)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1578, file: !1540, line: 121, baseType: !384, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1574, file: !1540, line: 123, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1540, line: 96, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1574, file: !1540, line: 124, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1540, line: 102, size: 192, elements: !1595)
!1595 = !{!1596, !1597, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1594, file: !1540, line: 103, baseType: !425, size: 128, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1594, file: !1540, line: 104, baseType: !1193, size: 32, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1594, file: !1540, line: 105, baseType: !546, size: 8, offset: 160)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1574, file: !1540, line: 125, baseType: !293, size: 64, offset: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !1540, line: 241, baseType: !1601, size: 320)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !1540, line: 241, size: 320, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1607}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1601, file: !1540, line: 242, baseType: !384, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1601, file: !1540, line: 243, baseType: !384, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1601, file: !1540, line: 244, baseType: !1590, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1601, file: !1540, line: 245, baseType: !1593, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1601, file: !1540, line: 246, baseType: !338, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1540, line: 254, baseType: !1609, size: 256, offset: 1344)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !1540, line: 254, size: 256, elements: !1610)
!1610 = !{!1611, !1617}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1609, file: !1540, line: 255, baseType: !1612, size: 256)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1540, line: 128, size: 256, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1612, file: !1540, line: 129, baseType: !135, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1612, file: !1540, line: 130, baseType: !1616, size: 256)
!1616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !1120)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !1540, line: 256, baseType: !1618, size: 256)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !1540, line: 256, size: 256, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1618, file: !1540, line: 258, baseType: !140, size: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1618, file: !1540, line: 259, baseType: !1622, size: 128, offset: 128)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1623, line: 22, size: 128, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1628}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1622, file: !1623, line: 23, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1623, line: 23, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1622, file: !1623, line: 24, baseType: !384, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1539, file: !1540, line: 274, baseType: !1630, size: 64, offset: 1600)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1540, line: 170, size: 192, elements: !1632)
!1632 = !{!1633, !1642, !1643}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1631, file: !1540, line: 171, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1540, line: 165, baseType: !1635)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!195, !1538, !1638, !1640, !1538}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1631, file: !1540, line: 172, baseType: !1538, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1631, file: !1540, line: 173, baseType: !1590, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1510, file: !1511, line: 138, baseType: !1538, size: 64, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1510, file: !1511, line: 139, baseType: !1538, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1510, file: !1511, line: 140, baseType: !1538, size: 64, offset: 896)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1510, file: !1511, line: 145, baseType: !1648, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1650, line: 13, size: 896, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1649, file: !1650, line: 14, baseType: !1193, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1649, file: !1650, line: 15, baseType: !801, size: 32, offset: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1649, file: !1650, line: 16, baseType: !801, size: 32, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1649, file: !1650, line: 21, baseType: !252, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1649, file: !1650, line: 27, baseType: !384, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1649, file: !1650, line: 28, baseType: !384, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1649, file: !1650, line: 29, baseType: !252, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1649, file: !1650, line: 32, baseType: !693, size: 128, offset: 384)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1649, file: !1650, line: 33, baseType: !491, size: 32, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1649, file: !1650, line: 37, baseType: !252, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1649, file: !1650, line: 44, baseType: !1663, size: 256, offset: 640)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1664, line: 15, size: 256, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1663, file: !1664, line: 16, baseType: !274)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1663, file: !1664, line: 18, baseType: !195, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1663, file: !1664, line: 19, baseType: !195, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1663, file: !1664, line: 20, baseType: !195, size: 32, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1663, file: !1664, line: 21, baseType: !195, size: 32, offset: 96)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1663, file: !1664, line: 22, baseType: !384, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1663, file: !1664, line: 23, baseType: !384, size: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1510, file: !1511, line: 146, baseType: !1674, size: 64, offset: 1024)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !492, line: 18, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1510, file: !1511, line: 147, baseType: !1677, size: 64, offset: 1088)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1511, line: 25, size: 64, elements: !1679)
!1679 = !{!1680, !1681, !1682}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1678, file: !1511, line: 26, baseType: !801, size: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1678, file: !1511, line: 27, baseType: !195, size: 32, offset: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1678, file: !1511, line: 28, baseType: !1683, offset: 64)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, elements: !1684)
!1684 = !{!1685}
!1685 = !DISubrange(count: 0)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1511, line: 149, baseType: !1687, size: 128, offset: 1152)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !1511, line: 149, size: 128, elements: !1688)
!1688 = !{!1689, !1690}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1687, file: !1511, line: 150, baseType: !195, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1687, file: !1511, line: 151, baseType: !425, size: 128, align: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1180, file: !1181, line: 926, baseType: !1508, size: 64, offset: 8576)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1180, file: !1181, line: 929, baseType: !1508, size: 64, offset: 8640)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1180, file: !1181, line: 933, baseType: !1538, size: 64, offset: 8704)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1180, file: !1181, line: 943, baseType: !1695, size: 128, offset: 8768)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 128, elements: !1696)
!1696 = !{!1697}
!1697 = !DISubrange(count: 16)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1180, file: !1181, line: 945, baseType: !1699, size: 64, offset: 8896)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1181, line: 49, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1180, file: !1181, line: 956, baseType: !1702, size: 64, offset: 8960)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1181, line: 45, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1180, file: !1181, line: 959, baseType: !1705, size: 64, offset: 9024)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1181, line: 959, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1180, file: !1181, line: 962, baseType: !1708, size: 64, offset: 9088)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1181, line: 66, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1180, file: !1181, line: 966, baseType: !1711, size: 64, offset: 9152)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1181, line: 50, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1180, file: !1181, line: 969, baseType: !1714, size: 64, offset: 9216)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1716, line: 82, size: 7296, elements: !1717)
!1716 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1753, !1762, !1763, !1765, !1766, !1767, !1770, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1800, !1801, !1808, !1809, !1810, !1811, !1812, !1813}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1715, file: !1716, line: 83, baseType: !1193, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1715, file: !1716, line: 84, baseType: !801, size: 32, offset: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1715, file: !1716, line: 85, baseType: !195, size: 32, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1715, file: !1716, line: 86, baseType: !140, size: 128, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1715, file: !1716, line: 88, baseType: !1442, size: 128, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1715, file: !1716, line: 91, baseType: !1179, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1715, file: !1716, line: 94, baseType: !1725, size: 192, offset: 448)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1726, line: 30, size: 192, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1725, file: !1726, line: 31, baseType: !140, size: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1725, file: !1726, line: 32, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1731, line: 25, baseType: !1732)
!1731 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1731, line: 23, size: 64, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1732, file: !1731, line: 24, baseType: !1332, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1715, file: !1716, line: 97, baseType: !689, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1715, file: !1716, line: 100, baseType: !195, size: 32, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1715, file: !1716, line: 106, baseType: !195, size: 32, offset: 736)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1715, file: !1716, line: 107, baseType: !1179, size: 64, offset: 768)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1715, file: !1716, line: 110, baseType: !195, size: 32, offset: 832)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1715, file: !1716, line: 111, baseType: !7, size: 32, offset: 864)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1715, file: !1716, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1715, file: !1716, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1715, file: !1716, line: 128, baseType: !195, size: 32, offset: 928)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1715, file: !1716, line: 129, baseType: !140, size: 128, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1715, file: !1716, line: 132, baseType: !1255, size: 512, offset: 1088)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1715, file: !1716, line: 133, baseType: !1263, size: 64, offset: 1600)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1715, file: !1716, line: 140, baseType: !1748, size: 256, offset: 1664)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1749, size: 256, elements: !1530)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1716, line: 38, size: 128, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1749, file: !1716, line: 39, baseType: !478, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1749, file: !1716, line: 40, baseType: !478, size: 64, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1715, file: !1716, line: 146, baseType: !1754, size: 192, offset: 1920)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1716, line: 66, size: 192, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1754, file: !1716, line: 67, baseType: !1757, size: 192)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1716, line: 47, size: 192, elements: !1758)
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1757, file: !1716, line: 48, baseType: !254, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1757, file: !1716, line: 49, baseType: !254, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1757, file: !1716, line: 50, baseType: !254, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1715, file: !1716, line: 150, baseType: !1491, size: 640, offset: 2112)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1715, file: !1716, line: 153, baseType: !1764, size: 256, offset: 2752)
!1764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1432, size: 256, elements: !1120)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1715, file: !1716, line: 159, baseType: !1432, size: 64, offset: 3008)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1715, file: !1716, line: 162, baseType: !195, size: 32, offset: 3072)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1715, file: !1716, line: 164, baseType: !1768, size: 64, offset: 3136)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1716, line: 164, flags: DIFlagFwdDecl)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1715, file: !1716, line: 175, baseType: !1771, size: 32, offset: 3200)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !448, line: 805, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 798, size: 32, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1772, file: !448, line: 803, baseType: !447, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !448, line: 804, baseType: !305, offset: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1715, file: !1716, line: 176, baseType: !478, size: 64, offset: 3264)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1715, file: !1716, line: 176, baseType: !478, size: 64, offset: 3328)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1715, file: !1716, line: 176, baseType: !478, size: 64, offset: 3392)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1715, file: !1716, line: 176, baseType: !478, size: 64, offset: 3456)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1715, file: !1716, line: 177, baseType: !478, size: 64, offset: 3520)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1715, file: !1716, line: 178, baseType: !478, size: 64, offset: 3584)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1715, file: !1716, line: 179, baseType: !1479, size: 128, offset: 3648)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1715, file: !1716, line: 180, baseType: !384, size: 64, offset: 3776)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1715, file: !1716, line: 180, baseType: !384, size: 64, offset: 3840)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1715, file: !1716, line: 180, baseType: !384, size: 64, offset: 3904)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1715, file: !1716, line: 180, baseType: !384, size: 64, offset: 3968)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1715, file: !1716, line: 181, baseType: !384, size: 64, offset: 4032)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1715, file: !1716, line: 181, baseType: !384, size: 64, offset: 4096)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1715, file: !1716, line: 181, baseType: !384, size: 64, offset: 4160)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1715, file: !1716, line: 181, baseType: !384, size: 64, offset: 4224)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1715, file: !1716, line: 182, baseType: !384, size: 64, offset: 4288)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1715, file: !1716, line: 182, baseType: !384, size: 64, offset: 4352)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1715, file: !1716, line: 182, baseType: !384, size: 64, offset: 4416)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1715, file: !1716, line: 182, baseType: !384, size: 64, offset: 4480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1715, file: !1716, line: 183, baseType: !384, size: 64, offset: 4544)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1715, file: !1716, line: 183, baseType: !384, size: 64, offset: 4608)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1715, file: !1716, line: 184, baseType: !1798, offset: 4672)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1799, line: 12, elements: !282)
!1799 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1715, file: !1716, line: 192, baseType: !480, size: 64, offset: 4672)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1715, file: !1716, line: 203, baseType: !1802, size: 2048, offset: 4736)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1803, size: 2048, elements: !1696)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1804, line: 43, size: 128, elements: !1805)
!1804 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1803, file: !1804, line: 44, baseType: !383, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1803, file: !1804, line: 45, baseType: !383, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1715, file: !1716, line: 220, baseType: !546, size: 8, offset: 6784)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1715, file: !1716, line: 221, baseType: !185, size: 16, offset: 6800)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1715, file: !1716, line: 222, baseType: !185, size: 16, offset: 6816)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1715, file: !1716, line: 224, baseType: !1019, size: 64, offset: 6848)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1715, file: !1716, line: 227, baseType: !1138, size: 192, offset: 6912)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1715, file: !1716, line: 233, baseType: !1138, size: 192, offset: 7104)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1180, file: !1181, line: 970, baseType: !1815, size: 64, offset: 9280)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1716, line: 20, size: 16576, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1816, file: !1716, line: 21, baseType: !305)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1816, file: !1716, line: 22, baseType: !1193, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1816, file: !1716, line: 23, baseType: !1442, size: 128, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1816, file: !1716, line: 24, baseType: !1822, size: 16384, offset: 192)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1823, size: 16384, elements: !341)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1726, line: 49, size: 256, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1823, file: !1726, line: 50, baseType: !1826, size: 256)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1726, line: 35, size: 256, elements: !1827)
!1827 = !{!1828, !1835, !1836, !1842}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1826, file: !1726, line: 37, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1830, line: 19, baseType: !1831)
!1830 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1830, line: 18, baseType: !1833)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !195}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1826, file: !1726, line: 38, baseType: !384, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1826, file: !1726, line: 44, baseType: !1837, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1830, line: 22, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1830, line: 21, baseType: !1840)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1826, file: !1726, line: 46, baseType: !1730, size: 64, offset: 192)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1180, file: !1181, line: 971, baseType: !1730, size: 64, offset: 9344)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1180, file: !1181, line: 972, baseType: !1730, size: 64, offset: 9408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1180, file: !1181, line: 974, baseType: !1730, size: 64, offset: 9472)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1180, file: !1181, line: 975, baseType: !1725, size: 192, offset: 9536)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1180, file: !1181, line: 976, baseType: !384, size: 64, offset: 9728)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1180, file: !1181, line: 977, baseType: !381, size: 64, offset: 9792)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1180, file: !1181, line: 978, baseType: !7, size: 32, offset: 9856)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1180, file: !1181, line: 980, baseType: !428, size: 64, offset: 9920)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1180, file: !1181, line: 989, baseType: !1852, size: 128, offset: 9984)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1853, line: 35, size: 128, elements: !1854)
!1853 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1854 = !{!1855, !1856, !1857}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1852, file: !1853, line: 36, baseType: !195, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1852, file: !1853, line: 37, baseType: !801, size: 32, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1852, file: !1853, line: 38, baseType: !1858, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1853, line: 23, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1180, file: !1181, line: 992, baseType: !478, size: 64, offset: 10112)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1180, file: !1181, line: 993, baseType: !478, size: 64, offset: 10176)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1180, file: !1181, line: 996, baseType: !305, offset: 10240)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1180, file: !1181, line: 999, baseType: !274, offset: 10240)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1180, file: !1181, line: 1001, baseType: !1865, size: 64, offset: 10240)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1181, line: 636, size: 64, elements: !1866)
!1866 = !{!1867}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1865, file: !1181, line: 637, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1180, file: !1181, line: 1005, baseType: !806, size: 128, offset: 10304)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1180, file: !1181, line: 1007, baseType: !1179, size: 64, offset: 10432)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1180, file: !1181, line: 1009, baseType: !1872, size: 64, offset: 10496)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1181, line: 1009, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1180, file: !1181, line: 1043, baseType: !135, size: 64, offset: 10560)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1180, file: !1181, line: 1046, baseType: !1876, size: 64, offset: 10624)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1181, line: 41, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1180, file: !1181, line: 1050, baseType: !1879, size: 64, offset: 10688)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1181, line: 42, flags: DIFlagFwdDecl)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1180, file: !1181, line: 1054, baseType: !1882, size: 64, offset: 10752)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1181, line: 55, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1180, file: !1181, line: 1056, baseType: !1885, size: 64, offset: 10816)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1181, line: 40, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1180, file: !1181, line: 1058, baseType: !1888, size: 64, offset: 10880)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1890, line: 99, size: 704, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1891 = !{!1892, !1893, !1894, !1895, !1896, !1897, !1898, !1917, !1918}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1889, file: !1890, line: 100, baseType: !252, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1889, file: !1890, line: 101, baseType: !801, size: 32, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1889, file: !1890, line: 102, baseType: !801, size: 32, offset: 96)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1889, file: !1890, line: 105, baseType: !305, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1889, file: !1890, line: 107, baseType: !176, size: 16, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1889, file: !1890, line: 109, baseType: !793, size: 128, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1889, file: !1890, line: 110, baseType: !1899, size: 64, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1890, line: 73, size: 448, elements: !1901)
!1901 = !{!1902, !1905, !1906, !1911, !1916}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1900, file: !1890, line: 74, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1890, line: 74, flags: DIFlagFwdDecl)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1900, file: !1890, line: 75, baseType: !1888, size: 64, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1890, line: 83, baseType: !1907, size: 128, offset: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1890, line: 83, size: 128, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1907, file: !1890, line: 84, baseType: !140, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1907, file: !1890, line: 85, baseType: !980, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1900, file: !1890, line: 87, baseType: !1912, size: 128, offset: 256)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1890, line: 87, size: 128, elements: !1913)
!1913 = !{!1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1912, file: !1890, line: 88, baseType: !693, size: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1912, file: !1890, line: 89, baseType: !425, size: 128, align: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1900, file: !1890, line: 92, baseType: !7, size: 32, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1889, file: !1890, line: 111, baseType: !689, size: 64, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1889, file: !1890, line: 113, baseType: !249, size: 256, offset: 448)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1180, file: !1181, line: 1061, baseType: !1920, size: 64, offset: 10944)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1181, line: 43, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1180, file: !1181, line: 1064, baseType: !384, size: 64, offset: 11008)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1180, file: !1181, line: 1065, baseType: !1924, size: 64, offset: 11072)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1726, line: 14, baseType: !1926)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1726, line: 12, size: 384, elements: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_member, scope: !1926, file: !1726, line: 13, baseType: !1929, size: 384)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1926, file: !1726, line: 13, size: 384, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1929, file: !1726, line: 13, baseType: !195, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1929, file: !1726, line: 13, baseType: !195, size: 32, offset: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1929, file: !1726, line: 13, baseType: !195, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1929, file: !1726, line: 13, baseType: !1935, size: 256, offset: 128)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1936, line: 32, size: 256, elements: !1937)
!1936 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1943, !1956, !1962, !1971, !1991, !1996}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1935, file: !1936, line: 37, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1936, line: 34, size: 64, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1939, file: !1936, line: 35, baseType: !1421, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1939, file: !1936, line: 36, baseType: !497, size: 32, offset: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1935, file: !1936, line: 45, baseType: !1944, size: 192)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1936, line: 40, size: 192, elements: !1945)
!1945 = !{!1946, !1948, !1949, !1955}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1944, file: !1936, line: 41, baseType: !1947, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !369, line: 95, baseType: !195)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1944, file: !1936, line: 42, baseType: !195, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1944, file: !1936, line: 43, baseType: !1950, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1936, line: 11, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1936, line: 8, size: 64, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1951, file: !1936, line: 9, baseType: !195, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1951, file: !1936, line: 10, baseType: !135, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1944, file: !1936, line: 44, baseType: !195, size: 32, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1935, file: !1936, line: 52, baseType: !1957, size: 128)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1936, line: 48, size: 128, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1957, file: !1936, line: 49, baseType: !1421, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1957, file: !1936, line: 50, baseType: !497, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1957, file: !1936, line: 51, baseType: !1950, size: 64, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1935, file: !1936, line: 61, baseType: !1963, size: 256)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1936, line: 55, size: 256, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1970}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1963, file: !1936, line: 56, baseType: !1421, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1963, file: !1936, line: 57, baseType: !497, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1963, file: !1936, line: 58, baseType: !195, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1963, file: !1936, line: 59, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !369, line: 94, baseType: !370)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1963, file: !1936, line: 60, baseType: !1969, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1935, file: !1936, line: 95, baseType: !1972, size: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1936, line: 64, size: 256, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1972, file: !1936, line: 65, baseType: !135, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1936, line: 77, baseType: !1976, size: 192, offset: 64)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1936, line: 77, size: 192, elements: !1977)
!1977 = !{!1978, !1979, !1986}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1976, file: !1936, line: 82, baseType: !185, size: 16)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1976, file: !1936, line: 88, baseType: !1980, size: 192)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1976, file: !1936, line: 84, size: 192, elements: !1981)
!1981 = !{!1982, !1984, !1985}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1980, file: !1936, line: 85, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !1293)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1980, file: !1936, line: 86, baseType: !135, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1980, file: !1936, line: 87, baseType: !135, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1976, file: !1936, line: 93, baseType: !1987, size: 96)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1976, file: !1936, line: 90, size: 96, elements: !1988)
!1988 = !{!1989, !1990}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1987, file: !1936, line: 91, baseType: !1983, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1987, file: !1936, line: 92, baseType: !233, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1935, file: !1936, line: 101, baseType: !1992, size: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1936, line: 98, size: 128, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1992, file: !1936, line: 99, baseType: !88, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1992, file: !1936, line: 100, baseType: !195, size: 32, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1935, file: !1936, line: 108, baseType: !1997, size: 128)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1935, file: !1936, line: 104, size: 128, elements: !1998)
!1998 = !{!1999, !2000, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1997, file: !1936, line: 105, baseType: !135, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1997, file: !1936, line: 106, baseType: !195, size: 32, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1997, file: !1936, line: 107, baseType: !7, size: 32, offset: 96)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1180, file: !1181, line: 1067, baseType: !1798, offset: 11136)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1180, file: !1181, line: 1099, baseType: !2004, size: 64, offset: 11136)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1181, line: 56, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1180, file: !1181, line: 1103, baseType: !140, size: 128, offset: 11200)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1180, file: !1181, line: 1104, baseType: !2008, size: 64, offset: 11328)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1181, line: 46, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1180, file: !1181, line: 1105, baseType: !1138, size: 192, offset: 11392)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1180, file: !1181, line: 1106, baseType: !7, size: 32, offset: 11584)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1180, file: !1181, line: 1109, baseType: !2013, size: 128, offset: 11648)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2014, size: 128, elements: !1530)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1181, line: 51, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1180, file: !1181, line: 1110, baseType: !1138, size: 192, offset: 11776)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1180, file: !1181, line: 1111, baseType: !140, size: 128, offset: 11968)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1180, file: !1181, line: 1173, baseType: !2019, size: 64, offset: 12096)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2021, line: 62, size: 256, align: 256, elements: !2022)
!2021 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2022 = !{!2023, !2024, !2025, !2030}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2020, file: !2021, line: 75, baseType: !233, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2020, file: !2021, line: 90, baseType: !233, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2020, file: !2021, line: 124, baseType: !2026, size: 64, offset: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2020, file: !2021, line: 109, size: 64, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2026, file: !2021, line: 110, baseType: !479, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2026, file: !2021, line: 112, baseType: !479, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2020, file: !2021, line: 144, baseType: !233, size: 32, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1180, file: !1181, line: 1174, baseType: !475, size: 32, offset: 12160)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1180, file: !1181, line: 1179, baseType: !384, size: 64, offset: 12224)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1180, file: !1181, line: 1182, baseType: !2034, size: 128, offset: 12288)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1116, line: 76, size: 128, elements: !2035)
!2035 = !{!2036, !2041, !2042}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2034, file: !1116, line: 85, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2038, line: 7, size: 64, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2037, file: !2038, line: 12, baseType: !1329, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2034, file: !1116, line: 88, baseType: !546, size: 8, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2034, file: !1116, line: 95, baseType: !546, size: 8, offset: 72)
!2043 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 1184, baseType: !2044, size: 128, offset: 12416)
!2044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 1184, size: 128, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2044, file: !1181, line: 1185, baseType: !1193, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2044, file: !1181, line: 1186, baseType: !425, size: 128, align: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1180, file: !1181, line: 1190, baseType: !2049, size: 64, offset: 12544)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1181, line: 53, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1180, file: !1181, line: 1192, baseType: !2052, size: 128, offset: 12608)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1116, line: 64, size: 128, elements: !2053)
!2053 = !{!2054, !2055, !2056}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2052, file: !1116, line: 65, baseType: !775, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2052, file: !1116, line: 67, baseType: !233, size: 32, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2052, file: !1116, line: 68, baseType: !233, size: 32, offset: 96)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1180, file: !1181, line: 1206, baseType: !195, size: 32, offset: 12736)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1180, file: !1181, line: 1207, baseType: !195, size: 32, offset: 12768)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1180, file: !1181, line: 1209, baseType: !384, size: 64, offset: 12800)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1180, file: !1181, line: 1219, baseType: !478, size: 64, offset: 12864)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1180, file: !1181, line: 1220, baseType: !478, size: 64, offset: 12928)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1180, file: !1181, line: 1317, baseType: !195, size: 32, offset: 12992)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1180, file: !1181, line: 1319, baseType: !1179, size: 64, offset: 13056)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1180, file: !1181, line: 1322, baseType: !2065, size: 64, offset: 13120)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1181, line: 1322, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1180, file: !1181, line: 1326, baseType: !1193, size: 32, offset: 13184)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1180, file: !1181, line: 1342, baseType: !135, size: 64, offset: 13248)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1180, file: !1181, line: 1343, baseType: !479, size: 64, offset: 13312)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1180, file: !1181, line: 1344, baseType: !478, size: 64, offset: 13376)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1180, file: !1181, line: 1345, baseType: !479, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1180, file: !1181, line: 1346, baseType: !479, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1180, file: !1181, line: 1347, baseType: !479, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1180, file: !1181, line: 1348, baseType: !425, size: 128, align: 64, offset: 13504)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1180, file: !1181, line: 1358, baseType: !2076, size: 34816, offset: 13824)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2077, line: 485, size: 34816, elements: !2078)
!2077 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !{!2079, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2108, !2109, !2110, !2111, !2112, !2113, !2116, !2117, !2118}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2076, file: !2077, line: 487, baseType: !2080, size: 192)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2081, size: 192, elements: !246)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2082, line: 16, size: 64, elements: !2083)
!2082 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2081, file: !2082, line: 17, baseType: !905, size: 16)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2081, file: !2082, line: 18, baseType: !905, size: 16, offset: 16)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2081, file: !2082, line: 19, baseType: !905, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2081, file: !2082, line: 19, baseType: !905, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2081, file: !2082, line: 19, baseType: !905, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2081, file: !2082, line: 19, baseType: !905, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2081, file: !2082, line: 19, baseType: !905, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2081, file: !2082, line: 20, baseType: !905, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2081, file: !2082, line: 20, baseType: !905, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2081, file: !2082, line: 20, baseType: !905, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2081, file: !2082, line: 20, baseType: !905, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2081, file: !2082, line: 20, baseType: !905, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2081, file: !2082, line: 20, baseType: !905, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2076, file: !2077, line: 491, baseType: !384, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2076, file: !2077, line: 495, baseType: !176, size: 16, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2076, file: !2077, line: 496, baseType: !176, size: 16, offset: 272)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2076, file: !2077, line: 497, baseType: !176, size: 16, offset: 288)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2076, file: !2077, line: 498, baseType: !176, size: 16, offset: 304)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2076, file: !2077, line: 502, baseType: !384, size: 64, offset: 320)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2076, file: !2077, line: 503, baseType: !384, size: 64, offset: 384)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2076, file: !2077, line: 514, baseType: !2105, size: 256, offset: 448)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2106, size: 256, elements: !1120)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2077, line: 483, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2076, file: !2077, line: 516, baseType: !384, size: 64, offset: 704)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2076, file: !2077, line: 518, baseType: !384, size: 64, offset: 768)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2076, file: !2077, line: 520, baseType: !384, size: 64, offset: 832)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2076, file: !2077, line: 521, baseType: !384, size: 64, offset: 896)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2076, file: !2077, line: 522, baseType: !384, size: 64, offset: 960)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2076, file: !2077, line: 528, baseType: !2114, size: 64, offset: 1024)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2077, line: 10, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2076, file: !2077, line: 535, baseType: !384, size: 64, offset: 1088)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2076, file: !2077, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2076, file: !2077, line: 540, baseType: !2119, size: 33280, offset: 1536)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2120, line: 317, size: 33280, elements: !2121)
!2120 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2121 = !{!2122, !2123, !2124}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2119, file: !2120, line: 330, baseType: !7, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2119, file: !2120, line: 337, baseType: !384, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2119, file: !2120, line: 348, baseType: !2125, size: 32768, offset: 512)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2120, line: 304, size: 32768, elements: !2126)
!2126 = !{!2127, !2142, !2181, !2231, !2244}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2125, file: !2120, line: 305, baseType: !2128, size: 896)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2120, line: 12, size: 896, elements: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2141}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2128, file: !2120, line: 13, baseType: !475, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2128, file: !2120, line: 14, baseType: !475, size: 32, offset: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2128, file: !2120, line: 15, baseType: !475, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2128, file: !2120, line: 16, baseType: !475, size: 32, offset: 96)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2128, file: !2120, line: 17, baseType: !475, size: 32, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2128, file: !2120, line: 18, baseType: !475, size: 32, offset: 160)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2128, file: !2120, line: 19, baseType: !475, size: 32, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2128, file: !2120, line: 22, baseType: !2138, size: 640, offset: 224)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 640, elements: !2139)
!2139 = !{!2140}
!2140 = !DISubrange(count: 20)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2128, file: !2120, line: 25, baseType: !475, size: 32, offset: 864)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2125, file: !2120, line: 306, baseType: !2143, size: 4096, align: 128)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2120, line: 34, size: 4096, align: 128, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2164, !2165, !2166, !2170, !2172, !2176}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2143, file: !2120, line: 35, baseType: !905, size: 16)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2143, file: !2120, line: 36, baseType: !905, size: 16, offset: 16)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2143, file: !2120, line: 37, baseType: !905, size: 16, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2143, file: !2120, line: 38, baseType: !905, size: 16, offset: 48)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !2120, line: 39, baseType: !2150, size: 128, offset: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !2120, line: 39, size: 128, elements: !2151)
!2151 = !{!2152, !2157}
!2152 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !2120, line: 40, baseType: !2153, size: 128)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2150, file: !2120, line: 40, size: 128, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2153, file: !2120, line: 41, baseType: !478, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2153, file: !2120, line: 42, baseType: !478, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !2120, line: 44, baseType: !2158, size: 128)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2150, file: !2120, line: 44, size: 128, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2158, file: !2120, line: 45, baseType: !475, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2158, file: !2120, line: 46, baseType: !475, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2158, file: !2120, line: 47, baseType: !475, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2158, file: !2120, line: 48, baseType: !475, size: 32, offset: 96)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2143, file: !2120, line: 51, baseType: !475, size: 32, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2143, file: !2120, line: 52, baseType: !475, size: 32, offset: 224)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2143, file: !2120, line: 55, baseType: !2167, size: 1024, offset: 256)
!2167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 1024, elements: !2168)
!2168 = !{!2169}
!2169 = !DISubrange(count: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2143, file: !2120, line: 58, baseType: !2171, size: 2048, offset: 1280)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 2048, elements: !341)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2143, file: !2120, line: 60, baseType: !2173, size: 384, offset: 3328)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 384, elements: !2174)
!2174 = !{!2175}
!2175 = !DISubrange(count: 12)
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !2120, line: 62, baseType: !2177, size: 384, offset: 3712)
!2177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2143, file: !2120, line: 62, size: 384, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2177, file: !2120, line: 63, baseType: !2173, size: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2177, file: !2120, line: 64, baseType: !2173, size: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2125, file: !2120, line: 307, baseType: !2182, size: 1088)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2120, line: 79, size: 1088, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2230}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2182, file: !2120, line: 80, baseType: !475, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2182, file: !2120, line: 81, baseType: !475, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2182, file: !2120, line: 82, baseType: !475, size: 32, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2182, file: !2120, line: 83, baseType: !475, size: 32, offset: 96)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2182, file: !2120, line: 84, baseType: !475, size: 32, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2182, file: !2120, line: 85, baseType: !475, size: 32, offset: 160)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2182, file: !2120, line: 86, baseType: !475, size: 32, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2182, file: !2120, line: 88, baseType: !2138, size: 640, offset: 224)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2182, file: !2120, line: 89, baseType: !1315, size: 8, offset: 864)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2182, file: !2120, line: 90, baseType: !1315, size: 8, offset: 872)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2182, file: !2120, line: 91, baseType: !1315, size: 8, offset: 880)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2182, file: !2120, line: 92, baseType: !1315, size: 8, offset: 888)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2182, file: !2120, line: 93, baseType: !1315, size: 8, offset: 896)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2182, file: !2120, line: 94, baseType: !1315, size: 8, offset: 904)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2182, file: !2120, line: 95, baseType: !2199, size: 64, offset: 960)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2201, line: 11, size: 128, elements: !2202)
!2201 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2200, file: !2201, line: 12, baseType: !88, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2200, file: !2201, line: 13, baseType: !2205, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2207, line: 56, size: 1344, elements: !2208)
!2207 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2206, file: !2207, line: 61, baseType: !384, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2206, file: !2207, line: 62, baseType: !384, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2206, file: !2207, line: 63, baseType: !384, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2206, file: !2207, line: 64, baseType: !384, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2206, file: !2207, line: 65, baseType: !384, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2206, file: !2207, line: 66, baseType: !384, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2206, file: !2207, line: 68, baseType: !384, size: 64, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2206, file: !2207, line: 69, baseType: !384, size: 64, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2206, file: !2207, line: 70, baseType: !384, size: 64, offset: 512)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2206, file: !2207, line: 71, baseType: !384, size: 64, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2206, file: !2207, line: 72, baseType: !384, size: 64, offset: 640)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2206, file: !2207, line: 73, baseType: !384, size: 64, offset: 704)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2206, file: !2207, line: 74, baseType: !384, size: 64, offset: 768)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2206, file: !2207, line: 75, baseType: !384, size: 64, offset: 832)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2206, file: !2207, line: 76, baseType: !384, size: 64, offset: 896)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2206, file: !2207, line: 81, baseType: !384, size: 64, offset: 960)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2206, file: !2207, line: 83, baseType: !384, size: 64, offset: 1024)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2206, file: !2207, line: 84, baseType: !384, size: 64, offset: 1088)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2206, file: !2207, line: 85, baseType: !384, size: 64, offset: 1152)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2206, file: !2207, line: 86, baseType: !384, size: 64, offset: 1216)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2206, file: !2207, line: 87, baseType: !384, size: 64, offset: 1280)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2182, file: !2120, line: 96, baseType: !475, size: 32, offset: 1024)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2125, file: !2120, line: 308, baseType: !2232, size: 4608, align: 512)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2120, line: 289, size: 4608, align: 512, elements: !2233)
!2233 = !{!2234, !2235, !2242}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2232, file: !2120, line: 290, baseType: !2143, size: 4096, align: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2232, file: !2120, line: 291, baseType: !2236, size: 512, offset: 4096)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2120, line: 268, size: 512, elements: !2237)
!2237 = !{!2238, !2239, !2240}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2236, file: !2120, line: 269, baseType: !478, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2236, file: !2120, line: 270, baseType: !478, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2236, file: !2120, line: 271, baseType: !2241, size: 384, offset: 128)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 384, elements: !1586)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2232, file: !2120, line: 292, baseType: !2243, offset: 4608)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, elements: !1684)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2125, file: !2120, line: 309, baseType: !2245, size: 32768)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 32768, elements: !2246)
!2246 = !{!2247}
!2247 = !DISubrange(count: 4096)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !777, line: 378, baseType: !2249, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1172, file: !777, line: 384, baseType: !1463, size: 192, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1023, file: !777, line: 500, baseType: !305, offset: 6656)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1023, file: !777, line: 501, baseType: !2253, size: 64, offset: 6656)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !777, line: 387, flags: DIFlagFwdDecl)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1023, file: !777, line: 516, baseType: !1674, size: 64, offset: 6720)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1023, file: !777, line: 519, baseType: !412, size: 64, offset: 6784)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1023, file: !777, line: 521, baseType: !2258, size: 64, offset: 6848)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !777, line: 521, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1023, file: !777, line: 545, baseType: !801, size: 32, offset: 6912)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1023, file: !777, line: 548, baseType: !546, size: 8, offset: 6944)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1023, file: !777, line: 550, baseType: !2263, offset: 6952)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2264, line: 142, elements: !282)
!2264 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1023, file: !777, line: 554, baseType: !249, size: 256, offset: 6976)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1023, file: !777, line: 557, baseType: !475, size: 32, offset: 7232)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1020, file: !777, line: 565, baseType: !2268, offset: 7296)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: -1)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1016, file: !777, line: 151, baseType: !801, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1009, file: !777, line: 156, baseType: !305, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !777, line: 159, baseType: !2274, size: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !781, file: !777, line: 159, size: 128, elements: !2275)
!2275 = !{!2276, !2279}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2274, file: !777, line: 161, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !777, line: 161, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2274, file: !777, line: 162, baseType: !135, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !781, file: !777, line: 176, baseType: !425, size: 128, align: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !776, file: !777, line: 179, baseType: !2282, size: 32, offset: 384)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !776, file: !777, line: 179, size: 32, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2282, file: !777, line: 184, baseType: !801, size: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2282, file: !777, line: 192, baseType: !7, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2282, file: !777, line: 194, baseType: !7, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2282, file: !777, line: 195, baseType: !195, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !776, file: !777, line: 199, baseType: !801, size: 32, offset: 416)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !711, file: !37, line: 1964, baseType: !2290, size: 64, offset: 1344)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!88, !653, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2295, line: 12, size: 256, elements: !2296)
!2295 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2296 = !{!2297, !2298, !2299, !2300, !2301}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2294, file: !2295, line: 13, baseType: !133, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2294, file: !2295, line: 16, baseType: !195, size: 32, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2294, file: !2295, line: 23, baseType: !384, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2294, file: !2295, line: 30, baseType: !384, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2294, file: !2295, line: 33, baseType: !2302, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !777, line: 27, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !711, file: !37, line: 1966, baseType: !2290, size: 64, offset: 1408)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !654, file: !37, line: 1424, baseType: !2306, size: 64, offset: 448)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2308)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2309)
!2309 = !{!2310, !2356, !2360, !2364, !2365, !2366, !2367, !2368, !2373, !2378, !2382}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2308, file: !31, line: 323, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!195, !2314}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2341, !2342, !2343}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2315, file: !31, line: 295, baseType: !693, size: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2315, file: !31, line: 296, baseType: !140, size: 128, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2315, file: !31, line: 297, baseType: !140, size: 128, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2315, file: !31, line: 298, baseType: !140, size: 128, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2315, file: !31, line: 299, baseType: !1138, size: 192, offset: 512)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2315, file: !31, line: 300, baseType: !305, offset: 704)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2315, file: !31, line: 301, baseType: !801, size: 32, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2315, file: !31, line: 302, baseType: !653, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2315, file: !31, line: 303, baseType: !2326, size: 64, offset: 832)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2327)
!2327 = !{!2328, !2340}
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !31, line: 69, baseType: !2329, size: 32)
!2329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2326, file: !31, line: 69, size: 32, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2329, file: !31, line: 70, baseType: !491, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2329, file: !31, line: 71, baseType: !499, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2329, file: !31, line: 72, baseType: !2334, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2335, line: 24, baseType: !2336)
!2335 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2335, line: 22, size: 32, elements: !2337)
!2337 = !{!2338}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2336, file: !2335, line: 23, baseType: !2339, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2335, line: 20, baseType: !497)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2326, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2315, file: !31, line: 304, baseType: !587, size: 64, offset: 896)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2315, file: !31, line: 305, baseType: !384, size: 64, offset: 960)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2315, file: !31, line: 306, baseType: !2344, size: 576, offset: 1024)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2345)
!2345 = !{!2346, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2344, file: !31, line: 206, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !261)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2344, file: !31, line: 207, baseType: !2347, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2344, file: !31, line: 208, baseType: !2347, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2344, file: !31, line: 209, baseType: !2347, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2344, file: !31, line: 210, baseType: !2347, size: 64, offset: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2344, file: !31, line: 211, baseType: !2347, size: 64, offset: 320)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2344, file: !31, line: 212, baseType: !2347, size: 64, offset: 384)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2344, file: !31, line: 213, baseType: !594, size: 64, offset: 448)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2344, file: !31, line: 214, baseType: !594, size: 64, offset: 512)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2308, file: !31, line: 324, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!2314, !653, !195}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2308, file: !31, line: 325, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{null, !2314}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2308, file: !31, line: 326, baseType: !2311, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2308, file: !31, line: 327, baseType: !2311, size: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2308, file: !31, line: 328, baseType: !2311, size: 64, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2308, file: !31, line: 329, baseType: !739, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2308, file: !31, line: 332, baseType: !2369, size: 64, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!2372, !485}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2308, file: !31, line: 333, baseType: !2374, size: 64, offset: 512)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!195, !485, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2308, file: !31, line: 335, baseType: !2379, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!195, !485, !2372}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2308, file: !31, line: 337, baseType: !2383, size: 64, offset: 640)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!195, !653, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !654, file: !37, line: 1425, baseType: !2388, size: 64, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2391)
!2391 = !{!2392, !2396, !2397, !2401, !2402, !2403, !2418, !2441, !2445, !2446, !2469}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2390, file: !31, line: 429, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!195, !653, !195, !195, !603}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2390, file: !31, line: 430, baseType: !739, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2390, file: !31, line: 431, baseType: !2398, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!195, !653, !7}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2390, file: !31, line: 432, baseType: !2398, size: 64, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2390, file: !31, line: 433, baseType: !739, size: 64, offset: 256)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2390, file: !31, line: 434, baseType: !2404, size: 64, offset: 320)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!195, !653, !195, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2408, file: !31, line: 416, baseType: !195, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2408, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2408, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2408, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2408, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2408, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2408, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2408, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2390, file: !31, line: 435, baseType: !2419, size: 64, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!195, !653, !2326, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2423, file: !31, line: 344, baseType: !195, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2423, file: !31, line: 345, baseType: !478, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2423, file: !31, line: 346, baseType: !478, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2423, file: !31, line: 347, baseType: !478, size: 64, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2423, file: !31, line: 348, baseType: !478, size: 64, offset: 256)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2423, file: !31, line: 349, baseType: !478, size: 64, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2423, file: !31, line: 350, baseType: !478, size: 64, offset: 384)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2423, file: !31, line: 351, baseType: !258, size: 64, offset: 448)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2423, file: !31, line: 353, baseType: !258, size: 64, offset: 512)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2423, file: !31, line: 354, baseType: !195, size: 32, offset: 576)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2423, file: !31, line: 355, baseType: !195, size: 32, offset: 608)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2423, file: !31, line: 356, baseType: !478, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2423, file: !31, line: 357, baseType: !478, size: 64, offset: 704)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2423, file: !31, line: 358, baseType: !478, size: 64, offset: 768)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2423, file: !31, line: 359, baseType: !258, size: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2423, file: !31, line: 360, baseType: !195, size: 32, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2390, file: !31, line: 436, baseType: !2442, size: 64, offset: 448)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!195, !653, !2386, !2422}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2390, file: !31, line: 438, baseType: !2419, size: 64, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2390, file: !31, line: 439, baseType: !2447, size: 64, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!195, !653, !2450}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2452)
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2451, file: !31, line: 410, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2451, file: !31, line: 411, baseType: !2455, size: 1344, offset: 64)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2456, size: 1344, elements: !246)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2468}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2456, file: !31, line: 396, baseType: !7, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2456, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2456, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2456, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2456, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2456, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2456, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2456, file: !31, line: 404, baseType: !480, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2456, file: !31, line: 405, baseType: !2467, size: 64, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !134, line: 126, baseType: !478)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2456, file: !31, line: 406, baseType: !2467, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2390, file: !31, line: 440, baseType: !2398, size: 64, offset: 640)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !654, file: !37, line: 1426, baseType: !2471, size: 64, offset: 576)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2473)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !654, file: !37, line: 1427, baseType: !384, size: 64, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !654, file: !37, line: 1428, baseType: !384, size: 64, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !654, file: !37, line: 1429, baseType: !384, size: 64, offset: 768)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !654, file: !37, line: 1430, baseType: !442, size: 64, offset: 832)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !654, file: !37, line: 1431, baseType: !821, size: 256, offset: 896)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !654, file: !37, line: 1432, baseType: !195, size: 32, offset: 1152)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !654, file: !37, line: 1433, baseType: !801, size: 32, offset: 1184)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !654, file: !37, line: 1437, baseType: !2482, size: 64, offset: 1216)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !654, file: !37, line: 1449, baseType: !2487, size: 64, offset: 1280)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !458, line: 34, size: 64, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2487, file: !458, line: 35, baseType: !461, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !654, file: !37, line: 1450, baseType: !140, size: 128, offset: 1344)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !654, file: !37, line: 1451, baseType: !2492, size: 64, offset: 1472)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !654, file: !37, line: 1452, baseType: !1885, size: 64, offset: 1536)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !654, file: !37, line: 1453, baseType: !2496, size: 64, offset: 1600)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !654, file: !37, line: 1454, baseType: !693, size: 128, offset: 1664)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !654, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !654, file: !37, line: 1456, baseType: !2501, size: 2432, offset: 1856)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2507, !2539}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2501, file: !31, line: 519, baseType: !7, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2501, file: !31, line: 520, baseType: !821, size: 256, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2501, file: !31, line: 521, baseType: !2506, size: 192, offset: 320)
!2506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 192, elements: !246)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2501, file: !31, line: 522, baseType: !2508, size: 1728, offset: 512)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2509, size: 1728, elements: !246)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2510)
!2510 = !{!2511, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2509, file: !31, line: 223, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2514)
!2514 = !{!2515, !2516, !2529, !2530}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2513, file: !31, line: 444, baseType: !195, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2513, file: !31, line: 445, baseType: !2517, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2519, file: !31, line: 311, baseType: !739, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2519, file: !31, line: 312, baseType: !739, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2519, file: !31, line: 313, baseType: !739, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2519, file: !31, line: 314, baseType: !739, size: 64, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2519, file: !31, line: 315, baseType: !2311, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2519, file: !31, line: 316, baseType: !2311, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2519, file: !31, line: 317, baseType: !2311, size: 64, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2519, file: !31, line: 318, baseType: !2383, size: 64, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2513, file: !31, line: 446, baseType: !130, size: 64, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2513, file: !31, line: 447, baseType: !2512, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2509, file: !31, line: 224, baseType: !195, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2509, file: !31, line: 226, baseType: !140, size: 128, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2509, file: !31, line: 227, baseType: !384, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2509, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2509, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2509, file: !31, line: 230, baseType: !2347, size: 64, offset: 384)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2509, file: !31, line: 231, baseType: !2347, size: 64, offset: 448)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2509, file: !31, line: 232, baseType: !135, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2501, file: !31, line: 523, baseType: !2540, size: 192, offset: 2240)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2517, size: 192, elements: !246)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !654, file: !37, line: 1458, baseType: !2542, size: 2112, offset: 4288)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2543)
!2543 = !{!2544, !2545, !2546}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2542, file: !37, line: 1411, baseType: !195, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2542, file: !37, line: 1412, baseType: !1442, size: 128, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2542, file: !37, line: 1413, baseType: !2547, size: 1920, offset: 192)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2548, size: 1920, elements: !246)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2549, line: 12, size: 640, elements: !2550)
!2549 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2550 = !{!2551, !2559, !2561, !2566, !2567}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2548, file: !2549, line: 13, baseType: !2552, size: 320)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2553, line: 17, size: 320, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2554 = !{!2555, !2556, !2557, !2558}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2552, file: !2553, line: 18, baseType: !195, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2552, file: !2553, line: 19, baseType: !195, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2552, file: !2553, line: 20, baseType: !1442, size: 128, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2552, file: !2553, line: 22, baseType: !425, size: 128, align: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2548, file: !2549, line: 14, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2548, file: !2549, line: 15, baseType: !2562, size: 64, offset: 384)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2563, line: 16, size: 64, elements: !2564)
!2563 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2562, file: !2563, line: 17, baseType: !1179, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2548, file: !2549, line: 16, baseType: !1442, size: 128, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2548, file: !2549, line: 17, baseType: !801, size: 32, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !654, file: !37, line: 1465, baseType: !135, size: 64, offset: 6400)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !654, file: !37, line: 1468, baseType: !475, size: 32, offset: 6464)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !654, file: !37, line: 1470, baseType: !594, size: 64, offset: 6528)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !654, file: !37, line: 1471, baseType: !594, size: 64, offset: 6592)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !654, file: !37, line: 1473, baseType: !233, size: 32, offset: 6656)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !654, file: !37, line: 1474, baseType: !2574, size: 64, offset: 6720)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !654, file: !37, line: 1477, baseType: !2577, size: 256, offset: 6784)
!2577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !2168)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !654, file: !37, line: 1478, baseType: !2579, size: 128, offset: 7040)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2580, line: 18, baseType: !2581)
!2580 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2580, line: 16, size: 128, elements: !2582)
!2582 = !{!2583}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2581, file: !2580, line: 17, baseType: !2584, size: 128)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !1696)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !654, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !654, file: !37, line: 1481, baseType: !2587, size: 32, offset: 7200)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !134, line: 150, baseType: !7)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !654, file: !37, line: 1487, baseType: !1138, size: 192, offset: 7232)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !654, file: !37, line: 1493, baseType: !293, size: 64, offset: 7424)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !654, file: !37, line: 1495, baseType: !2591, size: 64, offset: 7488)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2593)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !440, line: 135, size: 1024, align: 512, elements: !2594)
!2594 = !{!2595, !2599, !2600, !2607, !2613, !2617, !2621, !2625, !2626, !2630, !2634, !2639, !2643}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2593, file: !440, line: 136, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!195, !442, !7}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2593, file: !440, line: 137, baseType: !2596, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2593, file: !440, line: 138, baseType: !2601, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!195, !2604, !2606}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2593, file: !440, line: 139, baseType: !2608, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!195, !2604, !7, !293, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2593, file: !440, line: 141, baseType: !2614, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!195, !2604}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2593, file: !440, line: 142, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!195, !442}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2593, file: !440, line: 143, baseType: !2622, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !442}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2593, file: !440, line: 144, baseType: !2622, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2593, file: !440, line: 145, baseType: !2627, size: 64, offset: 512)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{null, !442, !485}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2593, file: !440, line: 146, baseType: !2631, size: 64, offset: 576)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!338, !442, !338, !195}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2593, file: !440, line: 147, baseType: !2635, size: 64, offset: 640)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!438, !2638}
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2593, file: !440, line: 148, baseType: !2640, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!195, !603, !546}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2593, file: !440, line: 149, baseType: !2644, size: 64, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!442, !442, !2647}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !654, file: !37, line: 1500, baseType: !195, size: 32, offset: 7552)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !654, file: !37, line: 1502, baseType: !2651, size: 448, offset: 7616)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2295, line: 60, size: 448, elements: !2652)
!2652 = !{!2653, !2658, !2659, !2660, !2661, !2662, !2663}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2651, file: !2295, line: 61, baseType: !2654, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!384, !2657, !2293}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2651, file: !2295, line: 63, baseType: !2654, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2651, file: !2295, line: 66, baseType: !88, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2651, file: !2295, line: 67, baseType: !195, size: 32, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2651, file: !2295, line: 68, baseType: !7, size: 32, offset: 224)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2651, file: !2295, line: 71, baseType: !140, size: 128, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2651, file: !2295, line: 77, baseType: !2664, size: 64, offset: 384)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !654, file: !37, line: 1505, baseType: !252, size: 64, offset: 8064)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !654, file: !37, line: 1508, baseType: !252, size: 64, offset: 8128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !654, file: !37, line: 1511, baseType: !195, size: 32, offset: 8192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !654, file: !37, line: 1514, baseType: !954, size: 32, offset: 8224)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !654, file: !37, line: 1517, baseType: !2670, size: 64, offset: 8256)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !87, line: 18, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !654, file: !37, line: 1518, baseType: !689, size: 64, offset: 8320)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !654, file: !37, line: 1525, baseType: !1674, size: 64, offset: 8384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !654, file: !37, line: 1532, baseType: !2675, size: 64, offset: 8448)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2676, line: 52, size: 64, elements: !2677)
!2676 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2677 = !{!2678}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2675, file: !2676, line: 53, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2676, line: 40, size: 256, elements: !2681)
!2681 = !{!2682, !2683, !2688}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2680, file: !2676, line: 42, baseType: !305)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2680, file: !2676, line: 44, baseType: !2684, size: 192)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2676, line: 28, size: 192, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2684, file: !2676, line: 29, baseType: !140, size: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2684, file: !2676, line: 31, baseType: !88, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2680, file: !2676, line: 49, baseType: !88, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !654, file: !37, line: 1533, baseType: !2675, size: 64, offset: 8512)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !654, file: !37, line: 1534, baseType: !425, size: 128, align: 64, offset: 8576)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !654, file: !37, line: 1535, baseType: !249, size: 256, offset: 8704)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !654, file: !37, line: 1537, baseType: !1138, size: 192, offset: 8960)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !654, file: !37, line: 1542, baseType: !195, size: 32, offset: 9152)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !654, file: !37, line: 1545, baseType: !305, offset: 9184)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !654, file: !37, line: 1546, baseType: !140, size: 128, offset: 9216)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !654, file: !37, line: 1548, baseType: !305, offset: 9344)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !654, file: !37, line: 1549, baseType: !140, size: 128, offset: 9344)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !486, file: !37, line: 624, baseType: !788, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !486, file: !37, line: 631, baseType: !384, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !37, line: 639, baseType: !2701, size: 32, offset: 384)
!2701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !37, line: 639, size: 32, elements: !2702)
!2702 = !{!2703, !2705}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2701, file: !37, line: 640, baseType: !2704, size: 32)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2701, file: !37, line: 641, baseType: !7, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !486, file: !37, line: 643, baseType: !569, size: 32, offset: 416)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !486, file: !37, line: 644, baseType: !587, size: 64, offset: 448)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !486, file: !37, line: 645, baseType: !590, size: 128, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !486, file: !37, line: 646, baseType: !590, size: 128, offset: 640)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !486, file: !37, line: 647, baseType: !590, size: 128, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !486, file: !37, line: 648, baseType: !305, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !486, file: !37, line: 649, baseType: !176, size: 16, offset: 896)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !486, file: !37, line: 650, baseType: !1315, size: 8, offset: 912)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !486, file: !37, line: 651, baseType: !1315, size: 8, offset: 920)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !486, file: !37, line: 652, baseType: !2467, size: 64, offset: 960)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !486, file: !37, line: 659, baseType: !384, size: 64, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !486, file: !37, line: 660, baseType: !821, size: 256, offset: 1088)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !486, file: !37, line: 662, baseType: !384, size: 64, offset: 1344)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !486, file: !37, line: 663, baseType: !384, size: 64, offset: 1408)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !486, file: !37, line: 665, baseType: !693, size: 128, offset: 1472)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !486, file: !37, line: 666, baseType: !140, size: 128, offset: 1600)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !486, file: !37, line: 675, baseType: !140, size: 128, offset: 1728)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !486, file: !37, line: 676, baseType: !140, size: 128, offset: 1856)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !486, file: !37, line: 677, baseType: !140, size: 128, offset: 1984)
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !37, line: 678, baseType: !2726, size: 128, offset: 2112)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !37, line: 678, size: 128, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2726, file: !37, line: 679, baseType: !689, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2726, file: !37, line: 680, baseType: !425, size: 128, align: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !486, file: !37, line: 682, baseType: !254, size: 64, offset: 2240)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !486, file: !37, line: 683, baseType: !254, size: 64, offset: 2304)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !486, file: !37, line: 684, baseType: !801, size: 32, offset: 2368)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !486, file: !37, line: 685, baseType: !801, size: 32, offset: 2400)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !486, file: !37, line: 686, baseType: !801, size: 32, offset: 2432)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !486, file: !37, line: 688, baseType: !801, size: 32, offset: 2464)
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !37, line: 690, baseType: !2737, size: 64, offset: 2496)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !37, line: 690, size: 64, elements: !2738)
!2738 = !{!2739, !2962}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2737, file: !37, line: 691, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2743)
!2743 = !{!2744, !2745, !2749, !2754, !2758, !2759, !2760, !2764, !2777, !2778, !2786, !2790, !2791, !2795, !2796, !2800, !2805, !2806, !2810, !2814, !2922, !2926, !2927, !2931, !2932, !2936, !2940, !2945, !2949, !2953, !2957, !2961}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2742, file: !37, line: 1823, baseType: !130, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2742, file: !37, line: 1824, baseType: !2746, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!587, !412, !587, !195}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2742, file: !37, line: 1825, baseType: !2750, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!367, !412, !338, !381, !2753}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2742, file: !37, line: 1826, baseType: !2755, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!367, !412, !293, !381, !2753}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2742, file: !37, line: 1827, baseType: !890, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2742, file: !37, line: 1828, baseType: !890, size: 64, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2742, file: !37, line: 1829, baseType: !2761, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!195, !893, !546}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2742, file: !37, line: 1830, baseType: !2765, size: 64, offset: 448)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!195, !412, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2770)
!2770 = !{!2771, !2776}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2769, file: !37, line: 1777, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2773)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!195, !2768, !293, !195, !587, !478, !7}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2769, file: !37, line: 1778, baseType: !587, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2742, file: !37, line: 1831, baseType: !2765, size: 64, offset: 512)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2742, file: !37, line: 1832, baseType: !2779, size: 64, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!2782, !412, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2783, line: 52, baseType: !7)
!2783 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !673, line: 27, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2742, file: !37, line: 1833, baseType: !2787, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!88, !412, !7, !384}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2742, file: !37, line: 1834, baseType: !2787, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2742, file: !37, line: 1835, baseType: !2792, size: 64, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!195, !412, !1026}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2742, file: !37, line: 1836, baseType: !384, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2742, file: !37, line: 1837, baseType: !2797, size: 64, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!195, !485, !412}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2742, file: !37, line: 1838, baseType: !2801, size: 64, offset: 960)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!195, !412, !2804}
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !135)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2742, file: !37, line: 1839, baseType: !2797, size: 64, offset: 1024)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2742, file: !37, line: 1840, baseType: !2807, size: 64, offset: 1088)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!195, !412, !587, !587, !195}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2742, file: !37, line: 1841, baseType: !2811, size: 64, offset: 1152)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!195, !195, !412, !195}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2742, file: !37, line: 1842, baseType: !2815, size: 64, offset: 1216)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!195, !412, !195, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2820)
!2820 = !{!2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2852, !2853, !2854, !2867, !2898}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2819, file: !37, line: 1063, baseType: !2818, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2819, file: !37, line: 1064, baseType: !140, size: 128, offset: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2819, file: !37, line: 1065, baseType: !693, size: 128, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2819, file: !37, line: 1066, baseType: !140, size: 128, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2819, file: !37, line: 1069, baseType: !140, size: 128, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2819, file: !37, line: 1072, baseType: !2804, size: 64, offset: 576)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2819, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2819, file: !37, line: 1074, baseType: !179, size: 8, offset: 672)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2819, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2819, file: !37, line: 1076, baseType: !195, size: 32, offset: 736)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2819, file: !37, line: 1077, baseType: !1442, size: 128, offset: 768)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2819, file: !37, line: 1078, baseType: !412, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2819, file: !37, line: 1079, baseType: !587, size: 64, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2819, file: !37, line: 1080, baseType: !587, size: 64, offset: 1024)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2819, file: !37, line: 1082, baseType: !2836, size: 64, offset: 1088)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2838)
!2838 = !{!2839, !2847, !2848, !2849, !2850, !2851}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2837, file: !37, line: 1315, baseType: !2840)
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2841, line: 20, baseType: !2842)
!2841 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2841, line: 11, elements: !2843)
!2843 = !{!2844}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2842, file: !2841, line: 12, baseType: !2845)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !280, line: 33, baseType: !2846)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !280, line: 31, elements: !282)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2837, file: !37, line: 1316, baseType: !195, size: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2837, file: !37, line: 1317, baseType: !195, size: 32, offset: 32)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2837, file: !37, line: 1318, baseType: !2836, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2837, file: !37, line: 1319, baseType: !412, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2837, file: !37, line: 1320, baseType: !425, size: 128, align: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2819, file: !37, line: 1084, baseType: !384, size: 64, offset: 1152)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2819, file: !37, line: 1085, baseType: !384, size: 64, offset: 1216)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2819, file: !37, line: 1087, baseType: !2855, size: 64, offset: 1280)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2858)
!2858 = !{!2859, !2863}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2857, file: !37, line: 1012, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !2818, !2818}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2857, file: !37, line: 1013, baseType: !2864, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2818}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2819, file: !37, line: 1088, baseType: !2868, size: 64, offset: 1344)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2871)
!2871 = !{!2872, !2876, !2880, !2881, !2885, !2889, !2893, !2897}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2870, file: !37, line: 1017, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!2804, !2804}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2870, file: !37, line: 1018, baseType: !2877, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{null, !2804}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2870, file: !37, line: 1019, baseType: !2864, size: 64, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2870, file: !37, line: 1020, baseType: !2882, size: 64, offset: 192)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!195, !2818, !195}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2870, file: !37, line: 1021, baseType: !2886, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!546, !2818}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2870, file: !37, line: 1022, baseType: !2890, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!195, !2818, !195, !143}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2870, file: !37, line: 1023, baseType: !2894, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !2818, !867}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2870, file: !37, line: 1024, baseType: !2886, size: 64, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2819, file: !37, line: 1097, baseType: !2899, size: 256, offset: 1408)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2819, file: !37, line: 1089, size: 256, elements: !2900)
!2900 = !{!2901, !2910, !2916}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2899, file: !37, line: 1090, baseType: !2902, size: 256)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2903, line: 10, size: 256, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2904 = !{!2905, !2906, !2909}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2902, file: !2903, line: 11, baseType: !475, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2902, file: !2903, line: 12, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2903, line: 5, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2902, file: !2903, line: 13, baseType: !140, size: 128, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2899, file: !37, line: 1091, baseType: !2911, size: 64)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2903, line: 17, size: 64, elements: !2912)
!2912 = !{!2913}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2911, file: !2903, line: 18, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2903, line: 16, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2899, file: !37, line: 1096, baseType: !2917, size: 192)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2899, file: !37, line: 1092, size: 192, elements: !2918)
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2917, file: !37, line: 1093, baseType: !140, size: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2917, file: !37, line: 1094, baseType: !195, size: 32, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2917, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2742, file: !37, line: 1843, baseType: !2923, size: 64, offset: 1280)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!367, !412, !775, !195, !381, !2753, !195}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2742, file: !37, line: 1844, baseType: !1066, size: 64, offset: 1344)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2742, file: !37, line: 1845, baseType: !2928, size: 64, offset: 1408)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!195, !195}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2742, file: !37, line: 1846, baseType: !2815, size: 64, offset: 1472)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2742, file: !37, line: 1847, baseType: !2933, size: 64, offset: 1536)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!367, !2049, !412, !2753, !381, !7}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2742, file: !37, line: 1848, baseType: !2937, size: 64, offset: 1600)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!367, !412, !2753, !2049, !381, !7}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2742, file: !37, line: 1849, baseType: !2941, size: 64, offset: 1664)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!195, !412, !88, !2944, !867}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2742, file: !37, line: 1850, baseType: !2946, size: 64, offset: 1728)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!88, !412, !195, !587, !587}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2742, file: !37, line: 1852, baseType: !2950, size: 64, offset: 1792)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !765, !412}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2742, file: !37, line: 1856, baseType: !2954, size: 64, offset: 1856)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!367, !412, !587, !412, !587, !381, !7}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2742, file: !37, line: 1858, baseType: !2958, size: 64, offset: 1920)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!587, !412, !587, !412, !587, !587, !7}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2742, file: !37, line: 1861, baseType: !2807, size: 64, offset: 1984)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2737, file: !37, line: 692, baseType: !718, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !486, file: !37, line: 694, baseType: !2964, size: 64, offset: 2560)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2965, file: !37, line: 1101, baseType: !305)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2965, file: !37, line: 1102, baseType: !140, size: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2965, file: !37, line: 1103, baseType: !140, size: 128, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2965, file: !37, line: 1104, baseType: !140, size: 128, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !486, file: !37, line: 695, baseType: !789, size: 1216, align: 64, offset: 2624)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !486, file: !37, line: 696, baseType: !140, size: 128, offset: 3840)
!2973 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !37, line: 697, baseType: !2974, size: 64, offset: 3968)
!2974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !37, line: 697, size: 64, elements: !2975)
!2975 = !{!2976, !2977, !2978, !2981, !2982}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2974, file: !37, line: 698, baseType: !2049, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2974, file: !37, line: 699, baseType: !2492, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2974, file: !37, line: 700, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2974, file: !37, line: 701, baseType: !338, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2974, file: !37, line: 702, baseType: !7, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !486, file: !37, line: 705, baseType: !233, size: 32, offset: 4032)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !486, file: !37, line: 708, baseType: !233, size: 32, offset: 4064)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !486, file: !37, line: 709, baseType: !2574, size: 64, offset: 4096)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !486, file: !37, line: 720, baseType: !135, size: 64, offset: 4160)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !443, file: !440, line: 98, baseType: !2988, size: 256, offset: 448)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !2168)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !443, file: !440, line: 101, baseType: !2990, size: 32, offset: 704)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2991, line: 25, size: 32, elements: !2992)
!2991 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2992 = !{!2993}
!2993 = !DIDerivedType(tag: DW_TAG_member, scope: !2990, file: !2991, line: 26, baseType: !2994, size: 32)
!2994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2990, file: !2991, line: 26, size: 32, elements: !2995)
!2995 = !{!2996}
!2996 = !DIDerivedType(tag: DW_TAG_member, scope: !2994, file: !2991, line: 30, baseType: !2997, size: 32)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2994, file: !2991, line: 30, size: 32, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2997, file: !2991, line: 31, baseType: !305)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2997, file: !2991, line: 32, baseType: !195, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !443, file: !440, line: 102, baseType: !2591, size: 64, offset: 768)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !443, file: !440, line: 103, baseType: !653, size: 64, offset: 832)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !443, file: !440, line: 104, baseType: !384, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !443, file: !440, line: 105, baseType: !135, size: 64, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !440, line: 107, baseType: !3006, size: 128, offset: 1024)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !440, line: 107, size: 128, elements: !3007)
!3007 = !{!3008, !3009}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3006, file: !440, line: 108, baseType: !140, size: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3006, file: !440, line: 109, baseType: !3010, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !443, file: !440, line: 111, baseType: !140, size: 128, offset: 1152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !443, file: !440, line: 112, baseType: !140, size: 128, offset: 1280)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !443, file: !440, line: 120, baseType: !3014, size: 128, offset: 1408)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !440, line: 116, size: 128, elements: !3015)
!3015 = !{!3016, !3017, !3018}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3014, file: !440, line: 117, baseType: !693, size: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3014, file: !440, line: 118, baseType: !457, size: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3014, file: !440, line: 119, baseType: !425, size: 128, align: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !413, file: !37, line: 922, baseType: !485, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !413, file: !37, line: 923, baseType: !2740, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !413, file: !37, line: 929, baseType: !305, offset: 384)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !413, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !413, file: !37, line: 931, baseType: !252, size: 64, offset: 448)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !413, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !413, file: !37, line: 933, baseType: !2587, size: 32, offset: 544)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !413, file: !37, line: 934, baseType: !1138, size: 192, offset: 576)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !413, file: !37, line: 935, baseType: !587, size: 64, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !413, file: !37, line: 936, baseType: !3029, size: 192, offset: 832)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !3030)
!3030 = !{!3031, !3032, !3033, !3034, !3035, !3036}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3029, file: !37, line: 886, baseType: !2840)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3029, file: !37, line: 887, baseType: !1432, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3029, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3029, file: !37, line: 889, baseType: !491, size: 32, offset: 96)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3029, file: !37, line: 889, baseType: !491, size: 32, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3029, file: !37, line: 890, baseType: !195, size: 32, offset: 160)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !413, file: !37, line: 937, baseType: !1508, size: 64, offset: 1024)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !413, file: !37, line: 938, baseType: !3039, size: 256, offset: 1088)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3039, file: !37, line: 897, baseType: !384, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3039, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3039, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3039, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3039, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3039, file: !37, line: 904, baseType: !587, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !413, file: !37, line: 940, baseType: !478, size: 64, offset: 1344)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !413, file: !37, line: 945, baseType: !135, size: 64, offset: 1408)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !413, file: !37, line: 949, baseType: !140, size: 128, offset: 1472)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !413, file: !37, line: 950, baseType: !140, size: 128, offset: 1600)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !413, file: !37, line: 952, baseType: !788, size: 64, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !413, file: !37, line: 953, baseType: !954, size: 32, offset: 1792)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !413, file: !37, line: 954, baseType: !954, size: 32, offset: 1824)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !403, file: !361, line: 174, baseType: !409, size: 64, offset: 320)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !403, file: !361, line: 176, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!195, !412, !298, !402, !1026}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !391, file: !361, line: 90, baseType: !386, size: 64, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !391, file: !361, line: 91, baseType: !3061, size: 64, offset: 256)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !351, file: !290, line: 143, baseType: !3063, size: 64, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!3066, !298}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3068)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !54, line: 39, size: 384, elements: !3069)
!3069 = !{!3070, !3071, !3075, !3079, !3087, !3091}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3068, file: !54, line: 40, baseType: !53, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3068, file: !54, line: 41, baseType: !3072, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!546}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3068, file: !54, line: 42, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!135}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3068, file: !54, line: 43, baseType: !3080, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!3083, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !54, line: 19, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3068, file: !54, line: 44, baseType: !3088, size: 64, offset: 256)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!3083}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3068, file: !54, line: 45, baseType: !524, size: 64, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !351, file: !290, line: 144, baseType: !3093, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!3083, !298}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !351, file: !290, line: 145, baseType: !3097, size: 64, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !298, !3100, !3101}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !289, file: !290, line: 70, baseType: !3103, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !673, line: 123, size: 1024, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3234, !3235, !3236, !3237, !3238}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3104, file: !673, line: 124, baseType: !801, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3104, file: !673, line: 125, baseType: !801, size: 32, offset: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3104, file: !673, line: 135, baseType: !3103, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3104, file: !673, line: 136, baseType: !293, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3104, file: !673, line: 138, baseType: !814, size: 192, align: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3104, file: !673, line: 140, baseType: !3083, size: 64, offset: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3104, file: !673, line: 141, baseType: !7, size: 32, offset: 448)
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !673, line: 142, baseType: !3114, size: 256, offset: 512)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !673, line: 142, size: 256, elements: !3115)
!3115 = !{!3116, !3162, !3166}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3114, file: !673, line: 143, baseType: !3117, size: 192)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !673, line: 91, size: 192, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3117, file: !673, line: 92, baseType: !384, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3117, file: !673, line: 94, baseType: !810, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3117, file: !673, line: 100, baseType: !3122, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !673, line: 180, size: 704, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3134, !3135, !3136, !3160, !3161}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3123, file: !673, line: 182, baseType: !3103, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3123, file: !673, line: 183, baseType: !7, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3123, file: !673, line: 186, baseType: !3128, size: 192, offset: 128)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3129, line: 19, size: 192, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3130 = !{!3131, !3132, !3133}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3128, file: !3129, line: 20, baseType: !793, size: 128)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3128, file: !3129, line: 21, baseType: !7, size: 32, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3128, file: !3129, line: 22, baseType: !7, size: 32, offset: 160)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3123, file: !673, line: 187, baseType: !475, size: 32, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3123, file: !673, line: 188, baseType: !475, size: 32, offset: 352)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3123, file: !673, line: 189, baseType: !3137, size: 64, offset: 384)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !673, line: 168, size: 320, elements: !3139)
!3139 = !{!3140, !3144, !3148, !3152, !3156}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3138, file: !673, line: 169, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!195, !765, !3122}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3138, file: !673, line: 171, baseType: !3145, size: 64, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!195, !3103, !293, !376}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3138, file: !673, line: 173, baseType: !3149, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!195, !3103}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3138, file: !673, line: 174, baseType: !3153, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!195, !3103, !3103, !293}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3138, file: !673, line: 176, baseType: !3157, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!195, !765, !3103, !3122}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3123, file: !673, line: 192, baseType: !140, size: 128, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3123, file: !673, line: 194, baseType: !1442, size: 128, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3114, file: !673, line: 144, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !673, line: 103, size: 64, elements: !3164)
!3164 = !{!3165}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3163, file: !673, line: 104, baseType: !3103, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3114, file: !673, line: 145, baseType: !3167, size: 256)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !673, line: 107, size: 256, elements: !3168)
!3168 = !{!3169, !3229, !3232, !3233}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3167, file: !673, line: 108, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3172)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !673, line: 217, size: 768, elements: !3173)
!3173 = !{!3174, !3194, !3198, !3202, !3206, !3210, !3214, !3218, !3219, !3220, !3221, !3225}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3172, file: !673, line: 222, baseType: !3175, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!195, !3178}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !673, line: 197, size: 1088, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3179, file: !673, line: 199, baseType: !3103, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3179, file: !673, line: 200, baseType: !412, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3179, file: !673, line: 201, baseType: !765, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3179, file: !673, line: 202, baseType: !135, size: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3179, file: !673, line: 205, baseType: !1138, size: 192, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3179, file: !673, line: 206, baseType: !1138, size: 192, offset: 448)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3179, file: !673, line: 207, baseType: !195, size: 32, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3179, file: !673, line: 208, baseType: !140, size: 128, offset: 704)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3179, file: !673, line: 209, baseType: !338, size: 64, offset: 832)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3179, file: !673, line: 211, baseType: !381, size: 64, offset: 896)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3179, file: !673, line: 212, baseType: !546, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3179, file: !673, line: 213, baseType: !546, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3179, file: !673, line: 214, baseType: !1054, size: 64, offset: 1024)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3172, file: !673, line: 223, baseType: !3195, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !3178}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3172, file: !673, line: 236, baseType: !3199, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!195, !765, !135}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3172, file: !673, line: 238, baseType: !3203, size: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!135, !765, !2753}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3172, file: !673, line: 239, baseType: !3207, size: 64, offset: 256)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!135, !765, !135, !2753}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3172, file: !673, line: 240, baseType: !3211, size: 64, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{null, !765, !135}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3172, file: !673, line: 242, baseType: !3215, size: 64, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!367, !3178, !338, !381, !587}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3172, file: !673, line: 252, baseType: !381, size: 64, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3172, file: !673, line: 259, baseType: !546, size: 8, offset: 512)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3172, file: !673, line: 260, baseType: !3215, size: 64, offset: 576)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3172, file: !673, line: 263, baseType: !3222, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!2782, !3178, !2784}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3172, file: !673, line: 266, baseType: !3226, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!195, !3178, !1026}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3167, file: !673, line: 109, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !673, line: 31, flags: DIFlagFwdDecl)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3167, file: !673, line: 110, baseType: !587, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3167, file: !673, line: 111, baseType: !3103, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3104, file: !673, line: 148, baseType: !135, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3104, file: !673, line: 154, baseType: !478, size: 64, offset: 832)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3104, file: !673, line: 156, baseType: !176, size: 16, offset: 896)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3104, file: !673, line: 157, baseType: !376, size: 16, offset: 912)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3104, file: !673, line: 158, baseType: !3239, size: 64, offset: 960)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !673, line: 32, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !289, file: !290, line: 71, baseType: !3242, size: 32, offset: 448)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3243, line: 19, size: 32, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3242, file: !3243, line: 20, baseType: !1193, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !289, file: !290, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !289, file: !290, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !289, file: !290, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !289, file: !290, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !289, file: !290, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !286, file: !66, line: 463, baseType: !3252, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !286, file: !66, line: 465, baseType: !3254, size: 64, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !66, line: 36, flags: DIFlagFwdDecl)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !286, file: !66, line: 467, baseType: !293, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !286, file: !66, line: 468, baseType: !3258, size: 64, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3260)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !66, line: 87, size: 384, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3268, !3273, !3277}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3260, file: !66, line: 88, baseType: !293, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3260, file: !66, line: 89, baseType: !388, size: 64, offset: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3260, file: !66, line: 90, baseType: !3265, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!195, !3252, !333}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3260, file: !66, line: 91, baseType: !3269, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!338, !3252, !3272, !3100, !3101}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3260, file: !66, line: 93, baseType: !3274, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !3252}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3260, file: !66, line: 95, baseType: !3278, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !73, line: 278, size: 1472, elements: !3281)
!3281 = !{!3282, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3280, file: !73, line: 279, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!195, !3252}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3280, file: !73, line: 280, baseType: !3274, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3280, file: !73, line: 281, baseType: !3283, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3280, file: !73, line: 282, baseType: !3283, size: 64, offset: 192)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3280, file: !73, line: 283, baseType: !3283, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3280, file: !73, line: 284, baseType: !3283, size: 64, offset: 320)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3280, file: !73, line: 285, baseType: !3283, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3280, file: !73, line: 286, baseType: !3283, size: 64, offset: 448)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3280, file: !73, line: 287, baseType: !3283, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3280, file: !73, line: 288, baseType: !3283, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3280, file: !73, line: 289, baseType: !3283, size: 64, offset: 640)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3280, file: !73, line: 290, baseType: !3283, size: 64, offset: 704)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3280, file: !73, line: 291, baseType: !3283, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3280, file: !73, line: 292, baseType: !3283, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3280, file: !73, line: 293, baseType: !3283, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3280, file: !73, line: 294, baseType: !3283, size: 64, offset: 960)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3280, file: !73, line: 295, baseType: !3283, size: 64, offset: 1024)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3280, file: !73, line: 296, baseType: !3283, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3280, file: !73, line: 297, baseType: !3283, size: 64, offset: 1152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3280, file: !73, line: 298, baseType: !3283, size: 64, offset: 1216)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3280, file: !73, line: 299, baseType: !3283, size: 64, offset: 1280)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3280, file: !73, line: 300, baseType: !3283, size: 64, offset: 1344)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3280, file: !73, line: 301, baseType: !3283, size: 64, offset: 1408)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !286, file: !66, line: 470, baseType: !3309, size: 64, offset: 768)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3311, line: 82, size: 1408, elements: !3312)
!3311 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3394, !3397, !3398}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3310, file: !3311, line: 83, baseType: !293, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3310, file: !3311, line: 84, baseType: !293, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3310, file: !3311, line: 85, baseType: !3252, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3310, file: !3311, line: 86, baseType: !388, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3310, file: !3311, line: 87, baseType: !388, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3310, file: !3311, line: 88, baseType: !388, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3310, file: !3311, line: 90, baseType: !3320, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!195, !3252, !3323}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !60, line: 95, size: 1152, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329, !3330, !3331, !3332, !3345, !3358, !3359, !3360, !3361, !3362, !3370, !3371, !3372, !3373, !3374, !3375}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3324, file: !60, line: 96, baseType: !293, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3324, file: !60, line: 97, baseType: !3309, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3324, file: !60, line: 99, baseType: !130, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3324, file: !60, line: 100, baseType: !293, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3324, file: !60, line: 102, baseType: !546, size: 8, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3324, file: !60, line: 103, baseType: !59, size: 32, offset: 288)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3324, file: !60, line: 105, baseType: !3333, size: 64, offset: 320)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3335)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3336, line: 262, size: 1600, elements: !3337)
!3336 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3337 = !{!3338, !3339, !3340, !3344}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3335, file: !3336, line: 263, baseType: !2577, size: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3335, file: !3336, line: 264, baseType: !2577, size: 256, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3335, file: !3336, line: 265, baseType: !3341, size: 1024, offset: 512)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 1024, elements: !3342)
!3342 = !{!3343}
!3343 = !DISubrange(count: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3335, file: !3336, line: 266, baseType: !3083, size: 64, offset: 1536)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3324, file: !60, line: 106, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3348)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3336, line: 210, size: 256, elements: !3349)
!3349 = !{!3350, !3354, !3356, !3357}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3348, file: !3336, line: 211, baseType: !3351, size: 72)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 72, elements: !3352)
!3352 = !{!3353}
!3353 = !DISubrange(count: 9)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3348, file: !3336, line: 212, baseType: !3355, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3336, line: 14, baseType: !384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3348, file: !3336, line: 213, baseType: !233, size: 32, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3348, file: !3336, line: 214, baseType: !233, size: 32, offset: 224)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3324, file: !60, line: 108, baseType: !3283, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3324, file: !60, line: 109, baseType: !3274, size: 64, offset: 512)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3324, file: !60, line: 110, baseType: !3283, size: 64, offset: 576)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3324, file: !60, line: 111, baseType: !3274, size: 64, offset: 640)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3324, file: !60, line: 112, baseType: !3363, size: 64, offset: 704)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!195, !3252, !3366}
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !73, line: 52, baseType: !3367)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !73, line: 50, size: 32, elements: !3368)
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3367, file: !73, line: 51, baseType: !195, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3324, file: !60, line: 113, baseType: !3283, size: 64, offset: 768)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3324, file: !60, line: 114, baseType: !388, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3324, file: !60, line: 115, baseType: !388, size: 64, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3324, file: !60, line: 117, baseType: !3278, size: 64, offset: 960)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3324, file: !60, line: 118, baseType: !3274, size: 64, offset: 1024)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3324, file: !60, line: 120, baseType: !3376, size: 64, offset: 1088)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !60, line: 120, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3310, file: !3311, line: 91, baseType: !3265, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3310, file: !3311, line: 92, baseType: !3283, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3310, file: !3311, line: 93, baseType: !3274, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3310, file: !3311, line: 94, baseType: !3283, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3310, file: !3311, line: 95, baseType: !3274, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3310, file: !3311, line: 97, baseType: !3283, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3310, file: !3311, line: 98, baseType: !3283, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3310, file: !3311, line: 100, baseType: !3363, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3310, file: !3311, line: 101, baseType: !3283, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3310, file: !3311, line: 103, baseType: !3283, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3310, file: !3311, line: 105, baseType: !3283, size: 64, offset: 1088)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3310, file: !3311, line: 107, baseType: !3278, size: 64, offset: 1152)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3310, file: !3311, line: 109, baseType: !3391, size: 64, offset: 1216)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3393)
!3393 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3311, line: 109, flags: DIFlagFwdDecl)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3310, file: !3311, line: 111, baseType: !3395, size: 64, offset: 1280)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3311, line: 111, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3310, file: !3311, line: 112, baseType: !699, offset: 1344)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3310, file: !3311, line: 114, baseType: !546, size: 8, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !286, file: !66, line: 471, baseType: !3323, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !286, file: !66, line: 473, baseType: !135, size: 64, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !286, file: !66, line: 475, baseType: !135, size: 64, offset: 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !286, file: !66, line: 480, baseType: !1138, size: 192, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !286, file: !66, line: 484, baseType: !3404, size: 576, offset: 1216)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !66, line: 361, size: 576, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3404, file: !66, line: 362, baseType: !140, size: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3404, file: !66, line: 363, baseType: !140, size: 128, offset: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3404, file: !66, line: 364, baseType: !140, size: 128, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3404, file: !66, line: 365, baseType: !140, size: 128, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3404, file: !66, line: 366, baseType: !546, size: 8, offset: 512)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3404, file: !66, line: 367, baseType: !65, size: 32, offset: 544)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !286, file: !66, line: 485, baseType: !3413, size: 2304, offset: 1792)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !73, line: 565, size: 2304, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3510, !3514}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3413, file: !73, line: 566, baseType: !3366, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3413, file: !73, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3413, file: !73, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3413, file: !73, line: 569, baseType: !546, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3413, file: !73, line: 570, baseType: !546, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3413, file: !73, line: 571, baseType: !546, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3413, file: !73, line: 572, baseType: !546, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3413, file: !73, line: 573, baseType: !546, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3413, file: !73, line: 574, baseType: !546, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3413, file: !73, line: 575, baseType: !546, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3413, file: !73, line: 576, baseType: !546, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3413, file: !73, line: 577, baseType: !475, size: 32, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3413, file: !73, line: 578, baseType: !305, offset: 96)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3413, file: !73, line: 580, baseType: !140, size: 128, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3413, file: !73, line: 581, baseType: !1463, size: 192, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3413, file: !73, line: 582, baseType: !3431, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3433, line: 43, size: 1472, elements: !3434)
!3433 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3442, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3432, file: !3433, line: 44, baseType: !293, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3432, file: !3433, line: 45, baseType: !195, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3432, file: !3433, line: 46, baseType: !140, size: 128, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3432, file: !3433, line: 47, baseType: !305, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3432, file: !3433, line: 48, baseType: !3440, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !73, line: 533, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3432, file: !3433, line: 49, baseType: !3443, size: 320, offset: 320)
!3443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3444, line: 11, size: 320, elements: !3445)
!3444 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3445 = !{!3446, !3447, !3448, !3453}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3443, file: !3444, line: 16, baseType: !693, size: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3443, file: !3444, line: 17, baseType: !384, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3443, file: !3444, line: 18, baseType: !3449, size: 64, offset: 192)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{null, !3452}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3443, file: !3444, line: 19, baseType: !475, size: 32, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3432, file: !3433, line: 50, baseType: !384, size: 64, offset: 640)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3432, file: !3433, line: 51, baseType: !1263, size: 64, offset: 704)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3432, file: !3433, line: 52, baseType: !1263, size: 64, offset: 768)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3432, file: !3433, line: 53, baseType: !1263, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3432, file: !3433, line: 54, baseType: !1263, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3432, file: !3433, line: 55, baseType: !1263, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3432, file: !3433, line: 56, baseType: !384, size: 64, offset: 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3432, file: !3433, line: 57, baseType: !384, size: 64, offset: 1088)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3432, file: !3433, line: 58, baseType: !384, size: 64, offset: 1152)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3432, file: !3433, line: 59, baseType: !384, size: 64, offset: 1216)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3432, file: !3433, line: 60, baseType: !384, size: 64, offset: 1280)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3432, file: !3433, line: 61, baseType: !3252, size: 64, offset: 1344)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3432, file: !3433, line: 62, baseType: !546, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3432, file: !3433, line: 63, baseType: !546, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3413, file: !73, line: 583, baseType: !546, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3413, file: !73, line: 584, baseType: !546, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3413, file: !73, line: 585, baseType: !546, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3413, file: !73, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3413, file: !73, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3413, file: !73, line: 592, baseType: !1255, size: 512, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3413, file: !73, line: 593, baseType: !478, size: 64, offset: 1088)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3413, file: !73, line: 594, baseType: !249, size: 256, offset: 1152)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3413, file: !73, line: 595, baseType: !1442, size: 128, offset: 1408)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3413, file: !73, line: 596, baseType: !3440, size: 64, offset: 1536)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3413, file: !73, line: 597, baseType: !801, size: 32, offset: 1600)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3413, file: !73, line: 598, baseType: !801, size: 32, offset: 1632)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3413, file: !73, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3413, file: !73, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3413, file: !73, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3413, file: !73, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3413, file: !73, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3413, file: !73, line: 604, baseType: !546, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3413, file: !73, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3413, file: !73, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3413, file: !73, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3413, file: !73, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3413, file: !73, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3413, file: !73, line: 610, baseType: !7, size: 32, offset: 1696)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3413, file: !73, line: 611, baseType: !72, size: 32, offset: 1728)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3413, file: !73, line: 612, baseType: !80, size: 32, offset: 1760)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3413, file: !73, line: 613, baseType: !195, size: 32, offset: 1792)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3413, file: !73, line: 614, baseType: !195, size: 32, offset: 1824)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3413, file: !73, line: 615, baseType: !478, size: 64, offset: 1856)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3413, file: !73, line: 616, baseType: !478, size: 64, offset: 1920)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3413, file: !73, line: 617, baseType: !478, size: 64, offset: 1984)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3413, file: !73, line: 618, baseType: !478, size: 64, offset: 2048)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3413, file: !73, line: 620, baseType: !3501, size: 64, offset: 2112)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !73, line: 536, size: 256, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3502, file: !73, line: 537, baseType: !305)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3502, file: !73, line: 538, baseType: !7, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3502, file: !73, line: 540, baseType: !140, size: 128, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3502, file: !73, line: 543, baseType: !3508, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !73, line: 534, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3413, file: !73, line: 621, baseType: !3511, size: 64, offset: 2176)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{null, !3252, !1406}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3413, file: !73, line: 622, baseType: !3515, size: 64, offset: 2240)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !73, line: 622, flags: DIFlagFwdDecl)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !286, file: !66, line: 486, baseType: !3518, size: 64, offset: 4096)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !73, line: 642, size: 1792, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3527, !3528, !3529}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3519, file: !73, line: 643, baseType: !3280, size: 1472)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3519, file: !73, line: 644, baseType: !3283, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3519, file: !73, line: 645, baseType: !3524, size: 64, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !3252, !546}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3519, file: !73, line: 646, baseType: !3283, size: 64, offset: 1600)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3519, file: !73, line: 647, baseType: !3274, size: 64, offset: 1664)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3519, file: !73, line: 648, baseType: !3274, size: 64, offset: 1728)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !286, file: !66, line: 493, baseType: !3531, size: 64, offset: 4160)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !66, line: 493, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !286, file: !66, line: 499, baseType: !140, size: 128, offset: 4224)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !286, file: !66, line: 502, baseType: !3535, size: 64, offset: 4352)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3537)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !66, line: 502, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !286, file: !66, line: 504, baseType: !3539, size: 64, offset: 4416)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !286, file: !66, line: 505, baseType: !478, size: 64, offset: 4480)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !286, file: !66, line: 510, baseType: !478, size: 64, offset: 4544)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !286, file: !66, line: 511, baseType: !3543, size: 64, offset: 4608)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !66, line: 511, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !286, file: !66, line: 513, baseType: !3547, size: 64, offset: 4672)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !66, line: 288, size: 128, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3548, file: !66, line: 293, baseType: !7, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3548, file: !66, line: 294, baseType: !384, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !286, file: !66, line: 515, baseType: !140, size: 128, offset: 4736)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !286, file: !66, line: 526, baseType: !3554, offset: 4864)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3555, line: 5, elements: !282)
!3555 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !286, file: !66, line: 528, baseType: !3557, size: 64, offset: 4864)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3559, line: 14, flags: DIFlagFwdDecl)
!3559 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !286, file: !66, line: 529, baseType: !3561, size: 64, offset: 4928)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3311, line: 22, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !286, file: !66, line: 534, baseType: !569, size: 32, offset: 4992)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !286, file: !66, line: 535, baseType: !475, size: 32, offset: 5024)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !286, file: !66, line: 537, baseType: !305, offset: 5056)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !286, file: !66, line: 538, baseType: !140, size: 128, offset: 5056)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !286, file: !66, line: 540, baseType: !3568, size: 64, offset: 5184)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3570, line: 54, size: 960, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577, !3578, !3582, !3586, !3587, !3588, !3589, !3593, !3597, !3598}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3569, file: !3570, line: 55, baseType: !293, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3569, file: !3570, line: 56, baseType: !130, size: 64, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3569, file: !3570, line: 58, baseType: !388, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3569, file: !3570, line: 59, baseType: !388, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3569, file: !3570, line: 60, baseType: !298, size: 64, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3569, file: !3570, line: 62, baseType: !3265, size: 64, offset: 320)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3569, file: !3570, line: 63, baseType: !3579, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!338, !3252, !3272}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3569, file: !3570, line: 65, baseType: !3583, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{null, !3568}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3569, file: !3570, line: 66, baseType: !3274, size: 64, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3569, file: !3570, line: 68, baseType: !3283, size: 64, offset: 576)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3569, file: !3570, line: 70, baseType: !3066, size: 64, offset: 640)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3569, file: !3570, line: 71, baseType: !3590, size: 64, offset: 704)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!3083, !3252}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3569, file: !3570, line: 73, baseType: !3594, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3252, !3100, !3101}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3569, file: !3570, line: 75, baseType: !3278, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3569, file: !3570, line: 77, baseType: !3395, size: 64, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !286, file: !66, line: 541, baseType: !388, size: 64, offset: 5248)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !66, line: 543, baseType: !3274, size: 64, offset: 5312)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !286, file: !66, line: 544, baseType: !3602, size: 64, offset: 5376)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !66, line: 45, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !286, file: !66, line: 545, baseType: !3605, size: 64, offset: 5440)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !66, line: 47, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !286, file: !66, line: 547, baseType: !546, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !286, file: !66, line: 548, baseType: !546, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !286, file: !66, line: 549, baseType: !546, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !286, file: !66, line: 550, baseType: !546, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !212, file: !6, line: 568, baseType: !3612, size: 64, offset: 56384)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_driver", file: !6, line: 738, size: 2432, elements: !3614)
!3614 = !{!3615, !3616, !3626, !3627, !3628, !3632, !3636, !3640, !3646, !3651, !3659, !3663, !3667, !3671, !3677, !3678, !3682, !3686, !3690, !3694, !3695}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3613, file: !6, line: 739, baseType: !338, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3613, file: !6, line: 740, baseType: !3617, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device_id", file: !3336, line: 166, size: 192, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3625}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3619, file: !3336, line: 167, baseType: !175, size: 16)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !3619, file: !3336, line: 168, baseType: !175, size: 16, offset: 16)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3619, file: !3336, line: 169, baseType: !233, size: 32, offset: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3619, file: !3336, line: 170, baseType: !233, size: 32, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3619, file: !3336, line: 171, baseType: !3355, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_list", scope: !3613, file: !6, line: 742, baseType: !140, size: 128, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_lock", scope: !3613, file: !6, line: 743, baseType: !305, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3613, file: !6, line: 745, baseType: !3629, size: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!546, !211, !546}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3613, file: !6, line: 746, baseType: !3633, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!195, !211, !3617}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3613, file: !6, line: 747, baseType: !3637, size: 64, offset: 384)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !211}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "report_table", scope: !3613, file: !6, line: 749, baseType: !3641, size: 64, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_id", file: !6, line: 688, size: 32, elements: !3644)
!3644 = !{!3645}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !3643, file: !6, line: 689, baseType: !233, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "raw_event", scope: !3613, file: !6, line: 750, baseType: !3647, size: 64, offset: 512)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!195, !211, !146, !3650, !195}
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "usage_table", scope: !3613, file: !6, line: 752, baseType: !3652, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage_id", file: !6, line: 691, size: 96, elements: !3655)
!3655 = !{!3656, !3657, !3658}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "usage_hid", scope: !3654, file: !6, line: 692, baseType: !233, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "usage_type", scope: !3654, file: !6, line: 693, baseType: !233, size: 32, offset: 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "usage_code", scope: !3654, file: !6, line: 694, baseType: !233, size: 32, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3613, file: !6, line: 753, baseType: !3660, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!195, !211, !156, !163, !194}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !3613, file: !6, line: 755, baseType: !3664, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{null, !211, !146}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "report_fixup", scope: !3613, file: !6, line: 757, baseType: !3668, size: 64, offset: 768)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!215, !211, !215, !2560}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapping", scope: !3613, file: !6, line: 760, baseType: !3672, size: 64, offset: 832)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!195, !211, !136, !156, !163, !3675, !759}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapped", scope: !3613, file: !6, line: 763, baseType: !3672, size: 64, offset: 896)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "input_configured", scope: !3613, file: !6, line: 766, baseType: !3679, size: 64, offset: 960)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!195, !211, !136}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "feature_mapping", scope: !3613, file: !6, line: 768, baseType: !3683, size: 64, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !211, !156, !163}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3613, file: !6, line: 772, baseType: !3687, size: 64, offset: 1088)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!195, !211, !3366}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3613, file: !6, line: 773, baseType: !3691, size: 64, offset: 1152)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!195, !211}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3613, file: !6, line: 774, baseType: !3691, size: 64, offset: 1216)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3613, file: !6, line: 777, baseType: !3324, size: 1152, offset: 1280)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ll_driver", scope: !212, file: !6, line: 570, baseType: !3697, size: 64, offset: 56448)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_ll_driver", file: !6, line: 798, size: 704, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3708, !3709, !3713, !3714, !3718, !3722}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3698, file: !6, line: 799, baseType: !3691, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3698, file: !6, line: 800, baseType: !3637, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3698, file: !6, line: 802, baseType: !3691, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3698, file: !6, line: 803, baseType: !3637, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3698, file: !6, line: 805, baseType: !3705, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!195, !211, !195}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !3698, file: !6, line: 807, baseType: !3691, size: 64, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3698, file: !6, line: 809, baseType: !3710, size: 64, offset: 384)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !211, !146, !195}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3698, file: !6, line: 812, baseType: !3691, size: 64, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "raw_request", scope: !3698, file: !6, line: 814, baseType: !3715, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!195, !211, !179, !215, !381, !179, !195}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "output_report", scope: !3698, file: !6, line: 818, baseType: !3719, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!195, !211, !215, !381}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !3698, file: !6, line: 820, baseType: !3723, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!195, !211, !195, !195, !195}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_lock", scope: !212, file: !6, line: 571, baseType: !1138, size: 192, offset: 56512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_count", scope: !212, file: !6, line: 572, baseType: !7, size: 32, offset: 56704)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !212, file: !6, line: 590, baseType: !384, size: 64, offset: 56768)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !212, file: !6, line: 591, baseType: !7, size: 32, offset: 56832)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !212, file: !6, line: 592, baseType: !7, size: 32, offset: 56864)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "io_started", scope: !212, file: !6, line: 593, baseType: !546, size: 8, offset: 56896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !212, file: !6, line: 595, baseType: !140, size: 128, offset: 56960)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev", scope: !212, file: !6, line: 596, baseType: !135, size: 64, offset: 57088)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "hidraw", scope: !212, file: !6, line: 597, baseType: !135, size: 64, offset: 57152)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !6, line: 599, baseType: !3341, size: 1024, offset: 57216)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !212, file: !6, line: 600, baseType: !3737, size: 512, offset: 58240)
!3737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 512, elements: !341)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !212, file: !6, line: 601, baseType: !3737, size: 512, offset: 58752)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !212, file: !6, line: 603, baseType: !135, size: 64, offset: 59264)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ff_init", scope: !212, file: !6, line: 606, baseType: !3691, size: 64, offset: 59328)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_connect", scope: !212, file: !6, line: 609, baseType: !3742, size: 64, offset: 59392)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!195, !211, !7}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_disconnect", scope: !212, file: !6, line: 610, baseType: !3637, size: 64, offset: 59456)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_hid_event", scope: !212, file: !6, line: 611, baseType: !3747, size: 64, offset: 59520)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !211, !156, !163, !194}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_report_event", scope: !212, file: !6, line: 613, baseType: !3664, size: 64, offset: 59584)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !212, file: !6, line: 616, baseType: !176, size: 16, offset: 59648)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !212, file: !6, line: 617, baseType: !442, size: 64, offset: 59712)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "debug_rdesc", scope: !212, file: !6, line: 618, baseType: !442, size: 64, offset: 59776)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "debug_events", scope: !212, file: !6, line: 619, baseType: !442, size: 64, offset: 59840)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list", scope: !212, file: !6, line: 620, baseType: !140, size: 128, offset: 59904)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list_lock", scope: !212, file: !6, line: 621, baseType: !305, offset: 60032)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "debug_wait", scope: !212, file: !6, line: 622, baseType: !1442, size: 128, offset: 60032)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !137, file: !6, line: 525, baseType: !3759, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3761, line: 131, size: 10432, elements: !3762)
!3761 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3762 = !{!3763, !3764, !3765, !3766, !3774, !3775, !3776, !3778, !3779, !3780, !3781, !3782, !3783, !3785, !3786, !3787, !3788, !3789, !3790, !3804, !3809, !3904, !3907, !3908, !3909, !3911, !3914, !3924, !3925, !3926, !3927, !3928, !3932, !3936, !3940, !3944, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4031, !4032}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3760, file: !3761, line: 132, baseType: !293, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3760, file: !3761, line: 133, baseType: !293, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3760, file: !3761, line: 134, baseType: !293, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3760, file: !3761, line: 135, baseType: !3767, size: 64, offset: 192)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3768, line: 59, size: 64, elements: !3769)
!3768 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3769 = !{!3770, !3771, !3772, !3773}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3767, file: !3768, line: 60, baseType: !175, size: 16)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3767, file: !3768, line: 61, baseType: !175, size: 16, offset: 16)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3767, file: !3768, line: 62, baseType: !175, size: 16, offset: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3767, file: !3768, line: 63, baseType: !175, size: 16, offset: 48)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3760, file: !3761, line: 137, baseType: !1332, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3760, file: !3761, line: 139, baseType: !1332, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3760, file: !3761, line: 140, baseType: !3777, size: 768, offset: 384)
!3777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 768, elements: !2174)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3760, file: !3761, line: 141, baseType: !1332, size: 64, offset: 1152)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3760, file: !3761, line: 142, baseType: !1332, size: 64, offset: 1216)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3760, file: !3761, line: 143, baseType: !1332, size: 64, offset: 1280)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3760, file: !3761, line: 144, baseType: !1332, size: 64, offset: 1344)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3760, file: !3761, line: 145, baseType: !1332, size: 64, offset: 1408)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3760, file: !3761, line: 146, baseType: !3784, size: 128, offset: 1472)
!3784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 128, elements: !1530)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3760, file: !3761, line: 147, baseType: !1332, size: 64, offset: 1600)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3760, file: !3761, line: 149, baseType: !7, size: 32, offset: 1664)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3760, file: !3761, line: 151, baseType: !7, size: 32, offset: 1696)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3760, file: !3761, line: 152, baseType: !7, size: 32, offset: 1728)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3760, file: !3761, line: 153, baseType: !135, size: 64, offset: 1792)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3760, file: !3761, line: 155, baseType: !3791, size: 64, offset: 1856)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!195, !3759, !3794, !2560}
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3796)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3768, line: 114, size: 320, elements: !3797)
!3797 = !{!3798, !3799, !3800, !3801, !3802}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3796, file: !3768, line: 116, baseType: !178, size: 8)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3796, file: !3768, line: 117, baseType: !178, size: 8, offset: 8)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3796, file: !3768, line: 118, baseType: !175, size: 16, offset: 16)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3796, file: !3768, line: 119, baseType: !233, size: 32, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3796, file: !3768, line: 120, baseType: !3803, size: 256, offset: 64)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !2168)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3760, file: !3761, line: 158, baseType: !3805, size: 64, offset: 1920)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!195, !3759, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3760, file: !3761, line: 161, baseType: !3810, size: 64, offset: 1984)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3761, line: 534, size: 896, elements: !3812)
!3812 = !{!3813, !3880, !3884, !3888, !3892, !3893, !3897, !3898, !3899, !3900, !3901, !3902}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !3811, file: !3761, line: 535, baseType: !3814, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!195, !3759, !3817, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3768, line: 450, size: 384, elements: !3819)
!3819 = !{!3820, !3821, !3822, !3823, !3828, !3833}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3818, file: !3768, line: 451, baseType: !175, size: 16)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3818, file: !3768, line: 452, baseType: !184, size: 16, offset: 16)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3818, file: !3768, line: 453, baseType: !175, size: 16, offset: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3818, file: !3768, line: 454, baseType: !3824, size: 32, offset: 48)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3768, line: 316, size: 32, elements: !3825)
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3824, file: !3768, line: 317, baseType: !175, size: 16)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3824, file: !3768, line: 318, baseType: !175, size: 16, offset: 16)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !3818, file: !3768, line: 455, baseType: !3829, size: 32, offset: 80)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3768, line: 306, size: 32, elements: !3830)
!3830 = !{!3831, !3832}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3829, file: !3768, line: 307, baseType: !175, size: 16)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3829, file: !3768, line: 308, baseType: !175, size: 16, offset: 16)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3818, file: !3768, line: 463, baseType: !3834, size: 256, offset: 128)
!3834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3818, file: !3768, line: 457, size: 256, elements: !3835)
!3835 = !{!3836, !3847, !3853, !3865, !3875}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !3834, file: !3768, line: 458, baseType: !3837, size: 80)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3768, line: 345, size: 80, elements: !3838)
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3837, file: !3768, line: 346, baseType: !184, size: 16)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3837, file: !3768, line: 347, baseType: !3841, size: 64, offset: 16)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3768, line: 333, size: 64, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !3841, file: !3768, line: 334, baseType: !175, size: 16)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !3841, file: !3768, line: 335, baseType: !175, size: 16, offset: 16)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !3841, file: !3768, line: 336, baseType: !175, size: 16, offset: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !3841, file: !3768, line: 337, baseType: !175, size: 16, offset: 48)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !3834, file: !3768, line: 459, baseType: !3848, size: 96)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3768, line: 356, size: 96, elements: !3849)
!3849 = !{!3850, !3851, !3852}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !3848, file: !3768, line: 357, baseType: !184, size: 16)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !3848, file: !3768, line: 358, baseType: !184, size: 16, offset: 16)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3848, file: !3768, line: 359, baseType: !3841, size: 64, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3834, file: !3768, line: 460, baseType: !3854, size: 256)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3768, line: 401, size: 256, elements: !3855)
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !3854, file: !3768, line: 402, baseType: !175, size: 16)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3854, file: !3768, line: 403, baseType: !175, size: 16, offset: 16)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !3854, file: !3768, line: 404, baseType: !184, size: 16, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3854, file: !3768, line: 405, baseType: !184, size: 16, offset: 48)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3854, file: !3768, line: 406, baseType: !175, size: 16, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3854, file: !3768, line: 408, baseType: !3841, size: 64, offset: 80)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !3854, file: !3768, line: 410, baseType: !233, size: 32, offset: 160)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !3854, file: !3768, line: 411, baseType: !3864, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3834, file: !3768, line: 461, baseType: !3866, size: 192)
!3866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3867, size: 192, elements: !1530)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3768, line: 372, size: 96, elements: !3868)
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !3867, file: !3768, line: 373, baseType: !175, size: 16)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !3867, file: !3768, line: 374, baseType: !175, size: 16, offset: 16)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !3867, file: !3768, line: 376, baseType: !184, size: 16, offset: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !3867, file: !3768, line: 377, baseType: !184, size: 16, offset: 48)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !3867, file: !3768, line: 379, baseType: !175, size: 16, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !3867, file: !3768, line: 380, baseType: !184, size: 16, offset: 80)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !3834, file: !3768, line: 462, baseType: !3876, size: 32)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3768, line: 422, size: 32, elements: !3877)
!3877 = !{!3878, !3879}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !3876, file: !3768, line: 423, baseType: !175, size: 16)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !3876, file: !3768, line: 424, baseType: !175, size: 16, offset: 16)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !3811, file: !3761, line: 537, baseType: !3881, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!195, !3759, !195}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !3811, file: !3761, line: 539, baseType: !3885, size: 64, offset: 128)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!195, !3759, !195, !195}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !3811, file: !3761, line: 540, baseType: !3889, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{null, !3759, !905}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !3811, file: !3761, line: 541, baseType: !3889, size: 64, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3811, file: !3761, line: 543, baseType: !3894, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !3810}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3811, file: !3761, line: 545, baseType: !135, size: 64, offset: 384)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3811, file: !3761, line: 547, baseType: !3784, size: 128, offset: 448)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3811, file: !3761, line: 549, baseType: !1138, size: 192, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !3811, file: !3761, line: 551, baseType: !195, size: 32, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !3811, file: !3761, line: 552, baseType: !3817, size: 64, offset: 832)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !3811, file: !3761, line: 553, baseType: !3903, offset: 896)
!3903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, elements: !2269)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3760, file: !3761, line: 163, baseType: !3905, size: 64, offset: 2048)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3761, line: 24, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3760, file: !3761, line: 165, baseType: !7, size: 32, offset: 2112)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3760, file: !3761, line: 166, baseType: !3443, size: 320, offset: 2176)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3760, file: !3761, line: 168, baseType: !3910, size: 64, offset: 2496)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 64, elements: !1530)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3760, file: !3761, line: 170, baseType: !3912, size: 64, offset: 2560)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3761, line: 170, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3760, file: !3761, line: 172, baseType: !3915, size: 64, offset: 2624)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3768, line: 90, size: 192, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3916, file: !3768, line: 91, baseType: !194, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3916, file: !3768, line: 92, baseType: !194, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3916, file: !3768, line: 93, baseType: !194, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3916, file: !3768, line: 94, baseType: !194, size: 32, offset: 96)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3916, file: !3768, line: 95, baseType: !194, size: 32, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3916, file: !3768, line: 96, baseType: !194, size: 32, offset: 160)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3760, file: !3761, line: 174, baseType: !3777, size: 768, offset: 2688)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3760, file: !3761, line: 175, baseType: !1332, size: 64, offset: 3456)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3760, file: !3761, line: 176, baseType: !1332, size: 64, offset: 3520)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3760, file: !3761, line: 177, baseType: !1332, size: 64, offset: 3584)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3760, file: !3761, line: 179, baseType: !3929, size: 64, offset: 3648)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!195, !3759}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3760, file: !3761, line: 180, baseType: !3933, size: 64, offset: 3712)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{null, !3759}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3760, file: !3761, line: 181, baseType: !3937, size: 64, offset: 3776)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!195, !3759, !412}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3760, file: !3761, line: 182, baseType: !3941, size: 64, offset: 3840)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!195, !3759, !7, !7, !195}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3760, file: !3761, line: 184, baseType: !3945, size: 64, offset: 3904)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3761, line: 337, size: 576, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !4018, !4019}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3946, file: !3761, line: 339, baseType: !135, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3946, file: !3761, line: 341, baseType: !195, size: 32, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3946, file: !3761, line: 342, baseType: !293, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3946, file: !3761, line: 344, baseType: !3759, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3946, file: !3761, line: 345, baseType: !3953, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3761, line: 302, size: 960, elements: !3955)
!3955 = !{!3956, !3957, !3961, !3972, !3976, !3980, !4007, !4011, !4012, !4013, !4014, !4015, !4016, !4017}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3954, file: !3761, line: 304, baseType: !135, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3954, file: !3761, line: 306, baseType: !3958, size: 64, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !3945, !7, !7, !195}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3954, file: !3761, line: 307, baseType: !3962, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3945, !3965, !7}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3967)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3761, line: 32, size: 64, elements: !3968)
!3968 = !{!3969, !3970, !3971}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3967, file: !3761, line: 33, baseType: !175, size: 16)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3967, file: !3761, line: 34, baseType: !175, size: 16, offset: 16)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3967, file: !3761, line: 35, baseType: !194, size: 32, offset: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3954, file: !3761, line: 309, baseType: !3973, size: 64, offset: 192)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!546, !3945, !7, !7, !195}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3954, file: !3761, line: 310, baseType: !3977, size: 64, offset: 256)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!546, !3953, !3759}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3954, file: !3761, line: 311, baseType: !3981, size: 64, offset: 320)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!195, !3953, !3759, !3984}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3986)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3336, line: 342, size: 1600, elements: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3992, !3993, !3995, !3997, !3998, !3999, !4000, !4001, !4002, !4004, !4005, !4006}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3986, file: !3336, line: 344, baseType: !3355, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3986, file: !3336, line: 346, baseType: !175, size: 16, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3986, file: !3336, line: 347, baseType: !175, size: 16, offset: 80)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3986, file: !3336, line: 348, baseType: !175, size: 16, offset: 96)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3986, file: !3336, line: 349, baseType: !175, size: 16, offset: 112)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3986, file: !3336, line: 351, baseType: !3994, size: 64, offset: 128)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3355, size: 64, elements: !1333)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3986, file: !3336, line: 352, baseType: !3996, size: 768, offset: 192)
!3996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3355, size: 768, elements: !2174)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3986, file: !3336, line: 353, baseType: !3994, size: 64, offset: 960)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3986, file: !3336, line: 354, baseType: !3994, size: 64, offset: 1024)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3986, file: !3336, line: 355, baseType: !3994, size: 64, offset: 1088)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3986, file: !3336, line: 356, baseType: !3994, size: 64, offset: 1152)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3986, file: !3336, line: 357, baseType: !3994, size: 64, offset: 1216)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3986, file: !3336, line: 358, baseType: !4003, size: 128, offset: 1280)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3355, size: 128, elements: !1530)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3986, file: !3336, line: 359, baseType: !3994, size: 64, offset: 1408)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3986, file: !3336, line: 360, baseType: !3994, size: 64, offset: 1472)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3986, file: !3336, line: 362, baseType: !3355, size: 64, offset: 1536)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3954, file: !3761, line: 312, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !3945}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3954, file: !3761, line: 313, baseType: !4008, size: 64, offset: 448)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3954, file: !3761, line: 315, baseType: !546, size: 8, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3954, file: !3761, line: 316, baseType: !195, size: 32, offset: 544)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3954, file: !3761, line: 317, baseType: !293, size: 64, offset: 576)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3954, file: !3761, line: 319, baseType: !3984, size: 64, offset: 640)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3954, file: !3761, line: 321, baseType: !140, size: 128, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3954, file: !3761, line: 322, baseType: !140, size: 128, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3946, file: !3761, line: 347, baseType: !140, size: 128, offset: 320)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3946, file: !3761, line: 348, baseType: !140, size: 128, offset: 448)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3760, file: !3761, line: 186, baseType: !305, offset: 3968)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3760, file: !3761, line: 187, baseType: !1138, size: 192, offset: 3968)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3760, file: !3761, line: 189, baseType: !7, size: 32, offset: 4160)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3760, file: !3761, line: 190, baseType: !546, size: 8, offset: 4192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3760, file: !3761, line: 192, baseType: !286, size: 5568, offset: 4224)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3760, file: !3761, line: 194, baseType: !140, size: 128, offset: 9792)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3760, file: !3761, line: 195, baseType: !140, size: 128, offset: 9920)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3760, file: !3761, line: 197, baseType: !7, size: 32, offset: 10048)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3760, file: !3761, line: 198, baseType: !7, size: 32, offset: 10080)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3760, file: !3761, line: 199, baseType: !4030, size: 64, offset: 10112)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3760, file: !3761, line: 201, baseType: !546, size: 8, offset: 10176)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3760, file: !3761, line: 203, baseType: !4033, size: 192, offset: 10240)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1263, size: 192, elements: !246)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !6, line: 526, baseType: !293, size: 64, offset: 256)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !137, file: !6, line: 527, baseType: !546, size: 8, offset: 320)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "reports", scope: !137, file: !6, line: 528, baseType: !140, size: 128, offset: 384)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !137, file: !6, line: 529, baseType: !7, size: 32, offset: 512)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4040)
!4040 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !143)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ms_data", file: !3, line: 31, size: 512, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4043, file: !3, line: 32, baseType: !384, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "hdev", scope: !4043, file: !3, line: 33, baseType: !211, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ff_worker", scope: !4043, file: !3, line: 34, baseType: !249, size: 256, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "strong", scope: !4043, file: !3, line: 35, baseType: !178, size: 8, offset: 384)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !4043, file: !3, line: 36, baseType: !178, size: 8, offset: 392)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "output_report_dmabuf", scope: !4043, file: !3, line: 37, baseType: !135, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !295)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!4054 = !{!0, !4055, !4060, !4065, !4070, !4072, !4075, !4078}
!4055 = !DIGlobalVariableExpression(var: !4056, expr: !DIExpression())
!4056 = distinct !DIGlobalVariable(name: "__exitcall_ms_driver_exit", scope: !2, file: !3, line: 467, type: !4057, isLocal: true, isDefinition: true)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4058, line: 117, baseType: !4059)
!4058 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!4060 = !DIGlobalVariableExpression(var: !4061, expr: !DIExpression())
!4061 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file207", scope: !2, file: !3, line: 469, type: !4062, isLocal: true, isDefinition: true, align: 8)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 360, elements: !4063)
!4063 = !{!4064}
!4064 = !DISubrange(count: 45)
!4065 = !DIGlobalVariableExpression(var: !4066, expr: !DIExpression())
!4066 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license208", scope: !2, file: !3, line: 469, type: !4067, isLocal: true, isDefinition: true, align: 8)
!4067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 208, elements: !4068)
!4068 = !{!4069}
!4069 = !DISubrange(count: 26)
!4070 = !DIGlobalVariableExpression(var: !4071, expr: !DIExpression())
!4071 = distinct !DIGlobalVariable(name: "ms_driver", scope: !2, file: !3, line: 457, type: !3613, isLocal: true, isDefinition: true)
!4072 = !DIGlobalVariableExpression(var: !4073, expr: !DIExpression())
!4073 = distinct !DIGlobalVariable(name: "ms_devices", scope: !2, file: !3, line: 413, type: !4074, isLocal: true, isDefinition: true)
!4074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3618, size: 3840, elements: !2139)
!4075 = !DIGlobalVariableExpression(var: !4076, expr: !DIExpression())
!4076 = distinct !DIGlobalVariable(name: "last_key", scope: !4077, file: !3, line: 260, type: !7, isLocal: true, isDefinition: true)
!4077 = distinct !DISubprogram(name: "ms_event", scope: !3, file: !3, line: 222, type: !3661, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4078 = !DIGlobalVariableExpression(var: !4079, expr: !DIExpression())
!4079 = distinct !DIGlobalVariable(name: "_rs", scope: !4080, file: !6, line: 997, type: !1663, isLocal: true, isDefinition: true)
!4080 = distinct !DISubprogram(name: "hid_map_usage", scope: !6, file: !6, line: 969, type: !4081, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{null, !136, !163, !3675, !759, !178, !7}
!4083 = !{i32 7, !"Dwarf Version", i32 4}
!4084 = !{i32 2, !"Debug Info Version", i32 3}
!4085 = !{i32 1, !"wchar_size", i32 2}
!4086 = !{i32 1, !"Code Model", i32 2}
!4087 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4088 = distinct !DISubprogram(name: "ms_driver_init", scope: !3, file: !3, line: 467, type: !4089, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!195}
!4091 = !DILocation(line: 467, column: 1, scope: !4088)
!4092 = distinct !DISubprogram(name: "ms_driver_exit", scope: !3, file: !3, line: 467, type: !1840, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4093 = !DILocation(line: 467, column: 1, scope: !4092)
!4094 = distinct !DISubprogram(name: "ms_probe", scope: !3, file: !3, line: 365, type: !3634, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4095 = !DILocalVariable(name: "hdev", arg: 1, scope: !4094, file: !3, line: 365, type: !211)
!4096 = !DILocation(line: 365, column: 40, scope: !4094)
!4097 = !DILocalVariable(name: "id", arg: 2, scope: !4094, file: !3, line: 365, type: !3617)
!4098 = !DILocation(line: 365, column: 74, scope: !4094)
!4099 = !DILocalVariable(name: "quirks", scope: !4094, file: !3, line: 367, type: !384)
!4100 = !DILocation(line: 367, column: 16, scope: !4094)
!4101 = !DILocation(line: 367, column: 25, scope: !4094)
!4102 = !DILocation(line: 367, column: 29, scope: !4094)
!4103 = !DILocalVariable(name: "ms", scope: !4094, file: !3, line: 368, type: !4042)
!4104 = !DILocation(line: 368, column: 18, scope: !4094)
!4105 = !DILocalVariable(name: "ret", scope: !4094, file: !3, line: 369, type: !195)
!4106 = !DILocation(line: 369, column: 6, scope: !4094)
!4107 = !DILocation(line: 371, column: 21, scope: !4094)
!4108 = !DILocation(line: 371, column: 27, scope: !4094)
!4109 = !DILocation(line: 371, column: 7, scope: !4094)
!4110 = !DILocation(line: 371, column: 5, scope: !4094)
!4111 = !DILocation(line: 372, column: 6, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 372, column: 6)
!4113 = !DILocation(line: 372, column: 9, scope: !4112)
!4114 = !DILocation(line: 372, column: 6, scope: !4094)
!4115 = !DILocation(line: 373, column: 3, scope: !4112)
!4116 = !DILocation(line: 375, column: 15, scope: !4094)
!4117 = !DILocation(line: 375, column: 2, scope: !4094)
!4118 = !DILocation(line: 375, column: 6, scope: !4094)
!4119 = !DILocation(line: 375, column: 13, scope: !4094)
!4120 = !DILocation(line: 377, column: 18, scope: !4094)
!4121 = !DILocation(line: 377, column: 24, scope: !4094)
!4122 = !DILocation(line: 377, column: 2, scope: !4094)
!4123 = !DILocation(line: 379, column: 6, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 379, column: 6)
!4125 = !DILocation(line: 379, column: 13, scope: !4124)
!4126 = !DILocation(line: 379, column: 6, scope: !4094)
!4127 = !DILocation(line: 380, column: 3, scope: !4124)
!4128 = !DILocation(line: 380, column: 9, scope: !4124)
!4129 = !DILocation(line: 380, column: 16, scope: !4124)
!4130 = !DILocation(line: 382, column: 6, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 382, column: 6)
!4132 = !DILocation(line: 382, column: 13, scope: !4131)
!4133 = !DILocation(line: 382, column: 6, scope: !4094)
!4134 = !DILocation(line: 383, column: 3, scope: !4131)
!4135 = !DILocation(line: 383, column: 9, scope: !4131)
!4136 = !DILocation(line: 383, column: 16, scope: !4131)
!4137 = !DILocation(line: 385, column: 18, scope: !4094)
!4138 = !DILocation(line: 385, column: 8, scope: !4094)
!4139 = !DILocation(line: 385, column: 6, scope: !4094)
!4140 = !DILocation(line: 386, column: 6, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 386, column: 6)
!4142 = !DILocation(line: 386, column: 6, scope: !4094)
!4143 = !DILocation(line: 387, column: 3, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 386, column: 11)
!4145 = !DILocation(line: 388, column: 3, scope: !4144)
!4146 = !DILocation(line: 391, column: 21, scope: !4094)
!4147 = !DILocation(line: 391, column: 51, scope: !4094)
!4148 = !DILocation(line: 391, column: 58, scope: !4094)
!4149 = !DILocation(line: 391, column: 50, scope: !4094)
!4150 = !DILocation(line: 391, column: 47, scope: !4094)
!4151 = !DILocation(line: 391, column: 27, scope: !4094)
!4152 = !DILocation(line: 391, column: 8, scope: !4094)
!4153 = !DILocation(line: 391, column: 6, scope: !4094)
!4154 = !DILocation(line: 393, column: 6, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 393, column: 6)
!4156 = !DILocation(line: 393, column: 6, scope: !4094)
!4157 = !DILocation(line: 394, column: 3, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 393, column: 11)
!4159 = !DILocation(line: 395, column: 3, scope: !4158)
!4160 = !DILocation(line: 398, column: 19, scope: !4094)
!4161 = !DILocation(line: 398, column: 8, scope: !4094)
!4162 = !DILocation(line: 398, column: 6, scope: !4094)
!4163 = !DILocation(line: 399, column: 6, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 399, column: 6)
!4165 = !DILocation(line: 399, column: 6, scope: !4094)
!4166 = !DILocation(line: 400, column: 3, scope: !4164)
!4167 = !DILocation(line: 402, column: 2, scope: !4094)
!4168 = !DILabel(scope: !4094, name: "err_free", file: !3, line: 403)
!4169 = !DILocation(line: 403, column: 1, scope: !4094)
!4170 = !DILocation(line: 404, column: 9, scope: !4094)
!4171 = !DILocation(line: 404, column: 2, scope: !4094)
!4172 = !DILocation(line: 405, column: 1, scope: !4094)
!4173 = distinct !DISubprogram(name: "ms_remove", scope: !3, file: !3, line: 407, type: !3638, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4174 = !DILocalVariable(name: "hdev", arg: 1, scope: !4173, file: !3, line: 407, type: !211)
!4175 = !DILocation(line: 407, column: 42, scope: !4173)
!4176 = !DILocation(line: 409, column: 14, scope: !4173)
!4177 = !DILocation(line: 409, column: 2, scope: !4173)
!4178 = !DILocation(line: 410, column: 15, scope: !4173)
!4179 = !DILocation(line: 410, column: 2, scope: !4173)
!4180 = !DILocation(line: 411, column: 1, scope: !4173)
!4181 = !DILocalVariable(name: "hdev", arg: 1, scope: !4077, file: !3, line: 222, type: !211)
!4182 = !DILocation(line: 222, column: 40, scope: !4077)
!4183 = !DILocalVariable(name: "field", arg: 2, scope: !4077, file: !3, line: 222, type: !156)
!4184 = !DILocation(line: 222, column: 64, scope: !4077)
!4185 = !DILocalVariable(name: "usage", arg: 3, scope: !4077, file: !3, line: 223, type: !163)
!4186 = !DILocation(line: 223, column: 21, scope: !4077)
!4187 = !DILocalVariable(name: "value", arg: 4, scope: !4077, file: !3, line: 223, type: !194)
!4188 = !DILocation(line: 223, column: 34, scope: !4077)
!4189 = !DILocalVariable(name: "ms", scope: !4077, file: !3, line: 225, type: !4042)
!4190 = !DILocation(line: 225, column: 18, scope: !4077)
!4191 = !DILocation(line: 225, column: 39, scope: !4077)
!4192 = !DILocation(line: 225, column: 23, scope: !4077)
!4193 = !DILocalVariable(name: "quirks", scope: !4077, file: !3, line: 226, type: !384)
!4194 = !DILocation(line: 226, column: 16, scope: !4077)
!4195 = !DILocation(line: 226, column: 25, scope: !4077)
!4196 = !DILocation(line: 226, column: 29, scope: !4077)
!4197 = !DILocalVariable(name: "input", scope: !4077, file: !3, line: 227, type: !3759)
!4198 = !DILocation(line: 227, column: 20, scope: !4077)
!4199 = !DILocation(line: 229, column: 8, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 229, column: 6)
!4201 = !DILocation(line: 229, column: 14, scope: !4200)
!4202 = !DILocation(line: 229, column: 22, scope: !4200)
!4203 = !DILocation(line: 229, column: 43, scope: !4200)
!4204 = !DILocation(line: 229, column: 47, scope: !4200)
!4205 = !DILocation(line: 229, column: 54, scope: !4200)
!4206 = !DILocation(line: 229, column: 63, scope: !4200)
!4207 = !DILocation(line: 230, column: 5, scope: !4200)
!4208 = !DILocation(line: 230, column: 12, scope: !4200)
!4209 = !DILocation(line: 229, column: 6, scope: !4077)
!4210 = !DILocation(line: 231, column: 3, scope: !4200)
!4211 = !DILocation(line: 233, column: 10, scope: !4077)
!4212 = !DILocation(line: 233, column: 17, scope: !4077)
!4213 = !DILocation(line: 233, column: 27, scope: !4077)
!4214 = !DILocation(line: 233, column: 8, scope: !4077)
!4215 = !DILocation(line: 236, column: 6, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 236, column: 6)
!4217 = !DILocation(line: 236, column: 13, scope: !4216)
!4218 = !DILocation(line: 236, column: 27, scope: !4216)
!4219 = !DILocation(line: 236, column: 30, scope: !4216)
!4220 = !DILocation(line: 236, column: 37, scope: !4216)
!4221 = !DILocation(line: 236, column: 41, scope: !4216)
!4222 = !DILocation(line: 236, column: 6, scope: !4077)
!4223 = !DILocation(line: 238, column: 20, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 236, column: 72)
!4225 = !DILocation(line: 238, column: 40, scope: !4224)
!4226 = !DILocation(line: 238, column: 46, scope: !4224)
!4227 = !DILocation(line: 238, column: 3, scope: !4224)
!4228 = !DILocation(line: 239, column: 20, scope: !4224)
!4229 = !DILocation(line: 239, column: 44, scope: !4224)
!4230 = !DILocation(line: 239, column: 50, scope: !4224)
!4231 = !DILocation(line: 239, column: 3, scope: !4224)
!4232 = !DILocation(line: 240, column: 20, scope: !4224)
!4233 = !DILocation(line: 240, column: 45, scope: !4224)
!4234 = !DILocation(line: 240, column: 51, scope: !4224)
!4235 = !DILocation(line: 240, column: 3, scope: !4224)
!4236 = !DILocation(line: 241, column: 3, scope: !4224)
!4237 = !DILocation(line: 244, column: 6, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 244, column: 6)
!4239 = !DILocation(line: 244, column: 13, scope: !4238)
!4240 = !DILocation(line: 244, column: 27, scope: !4238)
!4241 = !DILocation(line: 244, column: 30, scope: !4238)
!4242 = !DILocation(line: 244, column: 37, scope: !4238)
!4243 = !DILocation(line: 244, column: 41, scope: !4238)
!4244 = !DILocation(line: 244, column: 6, scope: !4077)
!4245 = !DILocalVariable(name: "step", scope: !4246, file: !3, line: 246, type: !195)
!4246 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 244, column: 72)
!4247 = !DILocation(line: 246, column: 7, scope: !4246)
!4248 = !DILocation(line: 246, column: 16, scope: !4246)
!4249 = !DILocation(line: 246, column: 22, scope: !4246)
!4250 = !DILocation(line: 246, column: 30, scope: !4246)
!4251 = !DILocation(line: 246, column: 36, scope: !4246)
!4252 = !DILocation(line: 248, column: 11, scope: !4246)
!4253 = !DILocation(line: 248, column: 17, scope: !4246)
!4254 = !DILocation(line: 248, column: 3, scope: !4246)
!4255 = !DILocation(line: 250, column: 21, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 248, column: 25)
!4257 = !DILocation(line: 250, column: 39, scope: !4256)
!4258 = !DILocation(line: 250, column: 4, scope: !4256)
!4259 = !DILocation(line: 251, column: 4, scope: !4256)
!4260 = !DILocation(line: 253, column: 21, scope: !4256)
!4261 = !DILocation(line: 253, column: 40, scope: !4256)
!4262 = !DILocation(line: 253, column: 39, scope: !4256)
!4263 = !DILocation(line: 253, column: 4, scope: !4256)
!4264 = !DILocation(line: 254, column: 4, scope: !4256)
!4265 = !DILocation(line: 256, column: 3, scope: !4246)
!4266 = !DILocation(line: 259, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 259, column: 6)
!4268 = !DILocation(line: 259, column: 13, scope: !4267)
!4269 = !DILocation(line: 259, column: 27, scope: !4267)
!4270 = !DILocation(line: 259, column: 30, scope: !4267)
!4271 = !DILocation(line: 259, column: 37, scope: !4267)
!4272 = !DILocation(line: 259, column: 41, scope: !4267)
!4273 = !DILocation(line: 259, column: 6, scope: !4077)
!4274 = !DILocalVariable(name: "key", scope: !4275, file: !3, line: 261, type: !7)
!4275 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 259, column: 72)
!4276 = !DILocation(line: 261, column: 16, scope: !4275)
!4277 = !DILocation(line: 262, column: 11, scope: !4275)
!4278 = !DILocation(line: 262, column: 3, scope: !4275)
!4279 = !DILocation(line: 263, column: 18, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 262, column: 18)
!4281 = !DILocation(line: 263, column: 29, scope: !4280)
!4282 = !DILocation(line: 264, column: 18, scope: !4280)
!4283 = !DILocation(line: 264, column: 29, scope: !4280)
!4284 = !DILocation(line: 265, column: 18, scope: !4280)
!4285 = !DILocation(line: 265, column: 29, scope: !4280)
!4286 = !DILocation(line: 266, column: 18, scope: !4280)
!4287 = !DILocation(line: 266, column: 29, scope: !4280)
!4288 = !DILocation(line: 267, column: 18, scope: !4280)
!4289 = !DILocation(line: 267, column: 29, scope: !4280)
!4290 = !DILocation(line: 269, column: 7, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 269, column: 7)
!4292 = !DILocation(line: 269, column: 7, scope: !4275)
!4293 = !DILocation(line: 270, column: 16, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 269, column: 12)
!4295 = !DILocation(line: 270, column: 23, scope: !4294)
!4296 = !DILocation(line: 270, column: 30, scope: !4294)
!4297 = !DILocation(line: 270, column: 36, scope: !4294)
!4298 = !DILocation(line: 270, column: 4, scope: !4294)
!4299 = !DILocation(line: 271, column: 15, scope: !4294)
!4300 = !DILocation(line: 271, column: 13, scope: !4294)
!4301 = !DILocation(line: 272, column: 3, scope: !4294)
!4302 = !DILocation(line: 273, column: 16, scope: !4291)
!4303 = !DILocation(line: 273, column: 23, scope: !4291)
!4304 = !DILocation(line: 273, column: 30, scope: !4291)
!4305 = !DILocation(line: 273, column: 36, scope: !4291)
!4306 = !DILocation(line: 273, column: 4, scope: !4291)
!4307 = !DILocation(line: 275, column: 3, scope: !4275)
!4308 = !DILocation(line: 278, column: 2, scope: !4077)
!4309 = !DILocation(line: 279, column: 1, scope: !4077)
!4310 = distinct !DISubprogram(name: "ms_report_fixup", scope: !3, file: !3, line: 59, type: !3669, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4311 = !DILocalVariable(name: "hdev", arg: 1, scope: !4310, file: !3, line: 59, type: !211)
!4312 = !DILocation(line: 59, column: 49, scope: !4310)
!4313 = !DILocalVariable(name: "rdesc", arg: 2, scope: !4310, file: !3, line: 59, type: !215)
!4314 = !DILocation(line: 59, column: 61, scope: !4310)
!4315 = !DILocalVariable(name: "rsize", arg: 3, scope: !4310, file: !3, line: 60, type: !2560)
!4316 = !DILocation(line: 60, column: 17, scope: !4310)
!4317 = !DILocalVariable(name: "ms", scope: !4310, file: !3, line: 62, type: !4042)
!4318 = !DILocation(line: 62, column: 18, scope: !4310)
!4319 = !DILocation(line: 62, column: 39, scope: !4310)
!4320 = !DILocation(line: 62, column: 23, scope: !4310)
!4321 = !DILocalVariable(name: "quirks", scope: !4310, file: !3, line: 63, type: !384)
!4322 = !DILocation(line: 63, column: 16, scope: !4310)
!4323 = !DILocation(line: 63, column: 25, scope: !4310)
!4324 = !DILocation(line: 63, column: 29, scope: !4310)
!4325 = !DILocation(line: 69, column: 7, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 69, column: 6)
!4327 = !DILocation(line: 69, column: 14, scope: !4326)
!4328 = !DILocation(line: 69, column: 26, scope: !4326)
!4329 = !DILocation(line: 69, column: 30, scope: !4326)
!4330 = !DILocation(line: 69, column: 29, scope: !4326)
!4331 = !DILocation(line: 69, column: 36, scope: !4326)
!4332 = !DILocation(line: 69, column: 43, scope: !4326)
!4333 = !DILocation(line: 69, column: 46, scope: !4326)
!4334 = !DILocation(line: 69, column: 57, scope: !4326)
!4335 = !DILocation(line: 69, column: 65, scope: !4326)
!4336 = !DILocation(line: 70, column: 4, scope: !4326)
!4337 = !DILocation(line: 70, column: 15, scope: !4326)
!4338 = !DILocation(line: 69, column: 6, scope: !4310)
!4339 = !DILocation(line: 71, column: 3, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 70, column: 24)
!4341 = !DILocation(line: 72, column: 3, scope: !4340)
!4342 = !DILocation(line: 72, column: 14, scope: !4340)
!4343 = !DILocation(line: 73, column: 3, scope: !4340)
!4344 = !DILocation(line: 73, column: 14, scope: !4340)
!4345 = !DILocation(line: 74, column: 2, scope: !4340)
!4346 = !DILocation(line: 75, column: 9, scope: !4310)
!4347 = !DILocation(line: 75, column: 2, scope: !4310)
!4348 = distinct !DISubprogram(name: "ms_input_mapping", scope: !3, file: !3, line: 182, type: !3673, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4349 = !DILocalVariable(name: "hdev", arg: 1, scope: !4348, file: !3, line: 182, type: !211)
!4350 = !DILocation(line: 182, column: 48, scope: !4348)
!4351 = !DILocalVariable(name: "hi", arg: 2, scope: !4348, file: !3, line: 182, type: !136)
!4352 = !DILocation(line: 182, column: 72, scope: !4348)
!4353 = !DILocalVariable(name: "field", arg: 3, scope: !4348, file: !3, line: 183, type: !156)
!4354 = !DILocation(line: 183, column: 21, scope: !4348)
!4355 = !DILocalVariable(name: "usage", arg: 4, scope: !4348, file: !3, line: 183, type: !163)
!4356 = !DILocation(line: 183, column: 46, scope: !4348)
!4357 = !DILocalVariable(name: "bit", arg: 5, scope: !4348, file: !3, line: 184, type: !3675)
!4358 = !DILocation(line: 184, column: 19, scope: !4348)
!4359 = !DILocalVariable(name: "max", arg: 6, scope: !4348, file: !3, line: 184, type: !759)
!4360 = !DILocation(line: 184, column: 29, scope: !4348)
!4361 = !DILocalVariable(name: "ms", scope: !4348, file: !3, line: 186, type: !4042)
!4362 = !DILocation(line: 186, column: 18, scope: !4348)
!4363 = !DILocation(line: 186, column: 39, scope: !4348)
!4364 = !DILocation(line: 186, column: 23, scope: !4348)
!4365 = !DILocalVariable(name: "quirks", scope: !4348, file: !3, line: 187, type: !384)
!4366 = !DILocation(line: 187, column: 16, scope: !4348)
!4367 = !DILocation(line: 187, column: 25, scope: !4348)
!4368 = !DILocation(line: 187, column: 29, scope: !4348)
!4369 = !DILocation(line: 189, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 189, column: 6)
!4371 = !DILocation(line: 189, column: 13, scope: !4370)
!4372 = !DILocation(line: 189, column: 6, scope: !4348)
!4373 = !DILocalVariable(name: "ret", scope: !4374, file: !3, line: 190, type: !195)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 189, column: 28)
!4375 = !DILocation(line: 190, column: 7, scope: !4374)
!4376 = !DILocation(line: 190, column: 34, scope: !4374)
!4377 = !DILocation(line: 190, column: 38, scope: !4374)
!4378 = !DILocation(line: 190, column: 45, scope: !4374)
!4379 = !DILocation(line: 190, column: 50, scope: !4374)
!4380 = !DILocation(line: 190, column: 13, scope: !4374)
!4381 = !DILocation(line: 191, column: 7, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 191, column: 7)
!4383 = !DILocation(line: 191, column: 7, scope: !4374)
!4384 = !DILocation(line: 192, column: 11, scope: !4382)
!4385 = !DILocation(line: 192, column: 4, scope: !4382)
!4386 = !DILocation(line: 193, column: 2, scope: !4374)
!4387 = !DILocation(line: 195, column: 7, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 195, column: 6)
!4389 = !DILocation(line: 195, column: 14, scope: !4388)
!4390 = !DILocation(line: 195, column: 30, scope: !4388)
!4391 = !DILocation(line: 196, column: 26, scope: !4388)
!4392 = !DILocation(line: 196, column: 30, scope: !4388)
!4393 = !DILocation(line: 196, column: 37, scope: !4388)
!4394 = !DILocation(line: 196, column: 42, scope: !4388)
!4395 = !DILocation(line: 196, column: 4, scope: !4388)
!4396 = !DILocation(line: 195, column: 6, scope: !4348)
!4397 = !DILocation(line: 197, column: 3, scope: !4388)
!4398 = !DILocation(line: 199, column: 6, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 199, column: 6)
!4400 = !DILocation(line: 199, column: 13, scope: !4399)
!4401 = !DILocation(line: 199, column: 6, scope: !4348)
!4402 = !DILocalVariable(name: "ret", scope: !4403, file: !3, line: 200, type: !195)
!4403 = distinct !DILexicalBlock(scope: !4399, file: !3, line: 199, column: 32)
!4404 = !DILocation(line: 200, column: 7, scope: !4403)
!4405 = !DILocation(line: 200, column: 35, scope: !4403)
!4406 = !DILocation(line: 200, column: 39, scope: !4403)
!4407 = !DILocation(line: 200, column: 46, scope: !4403)
!4408 = !DILocation(line: 200, column: 53, scope: !4403)
!4409 = !DILocation(line: 200, column: 58, scope: !4403)
!4410 = !DILocation(line: 200, column: 13, scope: !4403)
!4411 = !DILocation(line: 202, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 202, column: 7)
!4413 = !DILocation(line: 202, column: 7, scope: !4403)
!4414 = !DILocation(line: 203, column: 11, scope: !4412)
!4415 = !DILocation(line: 203, column: 4, scope: !4412)
!4416 = !DILocation(line: 204, column: 2, scope: !4403)
!4417 = !DILocation(line: 206, column: 2, scope: !4348)
!4418 = !DILocation(line: 207, column: 1, scope: !4348)
!4419 = distinct !DISubprogram(name: "ms_input_mapped", scope: !3, file: !3, line: 209, type: !3673, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4420 = !DILocalVariable(name: "hdev", arg: 1, scope: !4419, file: !3, line: 209, type: !211)
!4421 = !DILocation(line: 209, column: 47, scope: !4419)
!4422 = !DILocalVariable(name: "hi", arg: 2, scope: !4419, file: !3, line: 209, type: !136)
!4423 = !DILocation(line: 209, column: 71, scope: !4419)
!4424 = !DILocalVariable(name: "field", arg: 3, scope: !4419, file: !3, line: 210, type: !156)
!4425 = !DILocation(line: 210, column: 21, scope: !4419)
!4426 = !DILocalVariable(name: "usage", arg: 4, scope: !4419, file: !3, line: 210, type: !163)
!4427 = !DILocation(line: 210, column: 46, scope: !4419)
!4428 = !DILocalVariable(name: "bit", arg: 5, scope: !4419, file: !3, line: 211, type: !3675)
!4429 = !DILocation(line: 211, column: 19, scope: !4419)
!4430 = !DILocalVariable(name: "max", arg: 6, scope: !4419, file: !3, line: 211, type: !759)
!4431 = !DILocation(line: 211, column: 29, scope: !4419)
!4432 = !DILocalVariable(name: "ms", scope: !4419, file: !3, line: 213, type: !4042)
!4433 = !DILocation(line: 213, column: 18, scope: !4419)
!4434 = !DILocation(line: 213, column: 39, scope: !4419)
!4435 = !DILocation(line: 213, column: 23, scope: !4419)
!4436 = !DILocalVariable(name: "quirks", scope: !4419, file: !3, line: 214, type: !384)
!4437 = !DILocation(line: 214, column: 16, scope: !4419)
!4438 = !DILocation(line: 214, column: 25, scope: !4419)
!4439 = !DILocation(line: 214, column: 29, scope: !4419)
!4440 = !DILocation(line: 216, column: 6, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 216, column: 6)
!4442 = !DILocation(line: 216, column: 13, scope: !4441)
!4443 = !DILocation(line: 216, column: 6, scope: !4419)
!4444 = !DILocation(line: 217, column: 13, scope: !4441)
!4445 = !DILocation(line: 217, column: 20, scope: !4441)
!4446 = !DILocation(line: 217, column: 27, scope: !4441)
!4447 = !DILocation(line: 217, column: 26, scope: !4441)
!4448 = !DILocation(line: 217, column: 3, scope: !4441)
!4449 = !DILocation(line: 219, column: 2, scope: !4419)
!4450 = distinct !DISubprogram(name: "devm_kzalloc", scope: !66, file: !66, line: 215, type: !4451, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!135, !3252, !381, !133}
!4453 = !DILocalVariable(name: "dev", arg: 1, scope: !4450, file: !66, line: 215, type: !3252)
!4454 = !DILocation(line: 215, column: 49, scope: !4450)
!4455 = !DILocalVariable(name: "size", arg: 2, scope: !4450, file: !66, line: 215, type: !381)
!4456 = !DILocation(line: 215, column: 61, scope: !4450)
!4457 = !DILocalVariable(name: "gfp", arg: 3, scope: !4450, file: !66, line: 215, type: !133)
!4458 = !DILocation(line: 215, column: 73, scope: !4450)
!4459 = !DILocation(line: 217, column: 22, scope: !4450)
!4460 = !DILocation(line: 217, column: 27, scope: !4450)
!4461 = !DILocation(line: 217, column: 33, scope: !4450)
!4462 = !DILocation(line: 217, column: 37, scope: !4450)
!4463 = !DILocation(line: 217, column: 9, scope: !4450)
!4464 = !DILocation(line: 217, column: 2, scope: !4450)
!4465 = distinct !DISubprogram(name: "hid_set_drvdata", scope: !6, file: !6, line: 633, type: !4466, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !211, !135}
!4468 = !DILocalVariable(name: "hdev", arg: 1, scope: !4465, file: !6, line: 633, type: !211)
!4469 = !DILocation(line: 633, column: 55, scope: !4465)
!4470 = !DILocalVariable(name: "data", arg: 2, scope: !4465, file: !6, line: 633, type: !135)
!4471 = !DILocation(line: 633, column: 67, scope: !4465)
!4472 = !DILocation(line: 635, column: 19, scope: !4465)
!4473 = !DILocation(line: 635, column: 25, scope: !4465)
!4474 = !DILocation(line: 635, column: 30, scope: !4465)
!4475 = !DILocation(line: 635, column: 2, scope: !4465)
!4476 = !DILocation(line: 636, column: 1, scope: !4465)
!4477 = distinct !DISubprogram(name: "hid_parse", scope: !6, file: !6, line: 1033, type: !3692, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4478 = !DILocalVariable(name: "hdev", arg: 1, scope: !4477, file: !6, line: 1033, type: !211)
!4479 = !DILocation(line: 1033, column: 61, scope: !4477)
!4480 = !DILocation(line: 1035, column: 25, scope: !4477)
!4481 = !DILocation(line: 1035, column: 9, scope: !4477)
!4482 = !DILocation(line: 1035, column: 2, scope: !4477)
!4483 = distinct !DISubprogram(name: "ms_init_ff", scope: !3, file: !3, line: 326, type: !3692, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4484 = !DILocalVariable(name: "hdev", arg: 1, scope: !4483, file: !3, line: 326, type: !211)
!4485 = !DILocation(line: 326, column: 42, scope: !4483)
!4486 = !DILocalVariable(name: "hidinput", scope: !4483, file: !3, line: 328, type: !136)
!4487 = !DILocation(line: 328, column: 20, scope: !4483)
!4488 = !DILocalVariable(name: "input_dev", scope: !4483, file: !3, line: 329, type: !3759)
!4489 = !DILocation(line: 329, column: 20, scope: !4483)
!4490 = !DILocalVariable(name: "ms", scope: !4483, file: !3, line: 330, type: !4042)
!4491 = !DILocation(line: 330, column: 18, scope: !4483)
!4492 = !DILocation(line: 330, column: 39, scope: !4483)
!4493 = !DILocation(line: 330, column: 23, scope: !4483)
!4494 = !DILocation(line: 332, column: 18, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 332, column: 6)
!4496 = !DILocation(line: 332, column: 24, scope: !4495)
!4497 = !DILocation(line: 332, column: 6, scope: !4495)
!4498 = !DILocation(line: 332, column: 6, scope: !4483)
!4499 = !DILocation(line: 333, column: 3, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 332, column: 33)
!4501 = !DILocation(line: 334, column: 3, scope: !4500)
!4502 = !DILocalVariable(name: "__mptr", scope: !4503, file: !3, line: 336, type: !135)
!4503 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 336, column: 13)
!4504 = !DILocation(line: 336, column: 13, scope: !4503)
!4505 = !DILocation(line: 336, column: 13, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 336, column: 13)
!4507 = !DILocation(line: 336, column: 11, scope: !4483)
!4508 = !DILocation(line: 337, column: 14, scope: !4483)
!4509 = !DILocation(line: 337, column: 24, scope: !4483)
!4510 = !DILocation(line: 337, column: 12, scope: !4483)
!4511 = !DILocation(line: 339, column: 8, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 339, column: 6)
!4513 = !DILocation(line: 339, column: 12, scope: !4512)
!4514 = !DILocation(line: 339, column: 19, scope: !4512)
!4515 = !DILocation(line: 339, column: 6, scope: !4483)
!4516 = !DILocation(line: 340, column: 3, scope: !4512)
!4517 = !DILocation(line: 342, column: 13, scope: !4483)
!4518 = !DILocation(line: 342, column: 2, scope: !4483)
!4519 = !DILocation(line: 342, column: 6, scope: !4483)
!4520 = !DILocation(line: 342, column: 11, scope: !4483)
!4521 = !DILocation(line: 343, column: 2, scope: !4483)
!4522 = !DILocation(line: 343, column: 2, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 343, column: 2)
!4524 = !DILocation(line: 345, column: 43, scope: !4483)
!4525 = !DILocation(line: 345, column: 49, scope: !4483)
!4526 = !DILocation(line: 345, column: 29, scope: !4483)
!4527 = !DILocation(line: 345, column: 2, scope: !4483)
!4528 = !DILocation(line: 345, column: 6, scope: !4483)
!4529 = !DILocation(line: 345, column: 27, scope: !4483)
!4530 = !DILocation(line: 348, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 348, column: 6)
!4532 = !DILocation(line: 348, column: 10, scope: !4531)
!4533 = !DILocation(line: 348, column: 31, scope: !4531)
!4534 = !DILocation(line: 348, column: 6, scope: !4483)
!4535 = !DILocation(line: 349, column: 3, scope: !4531)
!4536 = !DILocation(line: 351, column: 23, scope: !4483)
!4537 = !DILocation(line: 351, column: 2, scope: !4483)
!4538 = !DILocation(line: 352, column: 33, scope: !4483)
!4539 = !DILocation(line: 352, column: 9, scope: !4483)
!4540 = !DILocation(line: 352, column: 2, scope: !4483)
!4541 = !DILocation(line: 353, column: 1, scope: !4483)
!4542 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !66, file: !66, line: 660, type: !4543, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{null, !3252, !135}
!4545 = !DILocalVariable(name: "dev", arg: 1, scope: !4542, file: !66, line: 660, type: !3252)
!4546 = !DILocation(line: 660, column: 51, scope: !4542)
!4547 = !DILocalVariable(name: "data", arg: 2, scope: !4542, file: !66, line: 660, type: !135)
!4548 = !DILocation(line: 660, column: 62, scope: !4542)
!4549 = !DILocation(line: 662, column: 21, scope: !4542)
!4550 = !DILocation(line: 662, column: 2, scope: !4542)
!4551 = !DILocation(line: 662, column: 7, scope: !4542)
!4552 = !DILocation(line: 662, column: 19, scope: !4542)
!4553 = !DILocation(line: 663, column: 1, scope: !4542)
!4554 = distinct !DISubprogram(name: "hid_get_drvdata", scope: !6, file: !6, line: 628, type: !4555, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!135, !211}
!4557 = !DILocalVariable(name: "hdev", arg: 1, scope: !4554, file: !6, line: 628, type: !211)
!4558 = !DILocation(line: 628, column: 56, scope: !4554)
!4559 = !DILocation(line: 630, column: 26, scope: !4554)
!4560 = !DILocation(line: 630, column: 32, scope: !4554)
!4561 = !DILocation(line: 630, column: 9, scope: !4554)
!4562 = !DILocation(line: 630, column: 2, scope: !4554)
!4563 = distinct !DISubprogram(name: "list_empty", scope: !4564, file: !4564, line: 280, type: !4565, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4564 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!195, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!4569 = !DILocalVariable(name: "head", arg: 1, scope: !4563, file: !4564, line: 280, type: !4567)
!4570 = !DILocation(line: 280, column: 54, scope: !4563)
!4571 = !DILocation(line: 282, column: 9, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4563, file: !4564, line: 282, column: 9)
!4573 = !DILocation(line: 282, column: 9, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4572, file: !4564, line: 282, column: 9)
!4575 = !DILocation(line: 282, column: 34, scope: !4563)
!4576 = !DILocation(line: 282, column: 31, scope: !4563)
!4577 = !DILocation(line: 282, column: 2, scope: !4563)
!4578 = distinct !DISubprogram(name: "__init_work", scope: !87, file: !87, line: 215, type: !4579, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{null, !268, !195}
!4581 = !DILocalVariable(name: "work", arg: 1, scope: !4578, file: !87, line: 215, type: !268)
!4582 = !DILocation(line: 215, column: 52, scope: !4578)
!4583 = !DILocalVariable(name: "onstack", arg: 2, scope: !4578, file: !87, line: 215, type: !195)
!4584 = !DILocation(line: 215, column: 62, scope: !4578)
!4585 = !DILocation(line: 215, column: 73, scope: !4578)
!4586 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4564, file: !4564, line: 33, type: !4587, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !143}
!4589 = !DILocalVariable(name: "list", arg: 1, scope: !4586, file: !4564, line: 33, type: !143)
!4590 = !DILocation(line: 33, column: 53, scope: !4586)
!4591 = !DILocation(line: 35, column: 2, scope: !4586)
!4592 = !DILocation(line: 35, column: 2, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4586, file: !4564, line: 35, column: 2)
!4594 = !DILocation(line: 35, column: 2, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4593, file: !4564, line: 35, column: 2)
!4596 = !DILocation(line: 35, column: 2, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4593, file: !4564, line: 35, column: 2)
!4598 = !DILocation(line: 36, column: 15, scope: !4586)
!4599 = !DILocation(line: 36, column: 2, scope: !4586)
!4600 = !DILocation(line: 36, column: 8, scope: !4586)
!4601 = !DILocation(line: 36, column: 13, scope: !4586)
!4602 = !DILocation(line: 37, column: 1, scope: !4586)
!4603 = distinct !DISubprogram(name: "ms_ff_worker", scope: !3, file: !3, line: 281, type: !266, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4604 = !DILocalVariable(name: "work", arg: 1, scope: !4603, file: !3, line: 281, type: !268)
!4605 = !DILocation(line: 281, column: 46, scope: !4603)
!4606 = !DILocalVariable(name: "ms", scope: !4603, file: !3, line: 283, type: !4042)
!4607 = !DILocation(line: 283, column: 18, scope: !4603)
!4608 = !DILocalVariable(name: "__mptr", scope: !4609, file: !3, line: 283, type: !135)
!4609 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 283, column: 23)
!4610 = !DILocation(line: 283, column: 23, scope: !4609)
!4611 = !DILocation(line: 283, column: 23, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 283, column: 23)
!4613 = !DILocalVariable(name: "hdev", scope: !4603, file: !3, line: 284, type: !211)
!4614 = !DILocation(line: 284, column: 21, scope: !4603)
!4615 = !DILocation(line: 284, column: 28, scope: !4603)
!4616 = !DILocation(line: 284, column: 32, scope: !4603)
!4617 = !DILocalVariable(name: "r", scope: !4603, file: !3, line: 285, type: !4618)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xb1s_ff_report", file: !3, line: 50, size: 72, elements: !4620)
!4620 = !{!4621, !4622, !4623, !4625, !4626, !4627}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "report_id", scope: !4619, file: !3, line: 51, baseType: !178, size: 8)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4619, file: !3, line: 52, baseType: !178, size: 8, offset: 8)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4619, file: !3, line: 53, baseType: !4624, size: 32, offset: 16)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 32, elements: !1120)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "duration_10ms", scope: !4619, file: !3, line: 54, baseType: !178, size: 8, offset: 48)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "start_delay_10ms", scope: !4619, file: !3, line: 55, baseType: !178, size: 8, offset: 56)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "loop_count", scope: !4619, file: !3, line: 56, baseType: !178, size: 8, offset: 64)
!4628 = !DILocation(line: 285, column: 25, scope: !4603)
!4629 = !DILocation(line: 285, column: 29, scope: !4603)
!4630 = !DILocation(line: 285, column: 33, scope: !4603)
!4631 = !DILocalVariable(name: "ret", scope: !4603, file: !3, line: 286, type: !195)
!4632 = !DILocation(line: 286, column: 6, scope: !4603)
!4633 = !DILocation(line: 288, column: 9, scope: !4603)
!4634 = !DILocation(line: 288, column: 2, scope: !4603)
!4635 = !DILocation(line: 290, column: 2, scope: !4603)
!4636 = !DILocation(line: 290, column: 5, scope: !4603)
!4637 = !DILocation(line: 290, column: 15, scope: !4603)
!4638 = !DILocation(line: 291, column: 2, scope: !4603)
!4639 = !DILocation(line: 291, column: 5, scope: !4603)
!4640 = !DILocation(line: 291, column: 12, scope: !4603)
!4641 = !DILocation(line: 297, column: 2, scope: !4603)
!4642 = !DILocation(line: 297, column: 5, scope: !4603)
!4643 = !DILocation(line: 297, column: 19, scope: !4603)
!4644 = !DILocation(line: 298, column: 2, scope: !4603)
!4645 = !DILocation(line: 298, column: 5, scope: !4603)
!4646 = !DILocation(line: 298, column: 16, scope: !4603)
!4647 = !DILocation(line: 299, column: 35, scope: !4603)
!4648 = !DILocation(line: 299, column: 39, scope: !4603)
!4649 = !DILocation(line: 299, column: 2, scope: !4603)
!4650 = !DILocation(line: 299, column: 5, scope: !4603)
!4651 = !DILocation(line: 299, column: 33, scope: !4603)
!4652 = !DILocation(line: 300, column: 33, scope: !4603)
!4653 = !DILocation(line: 300, column: 37, scope: !4603)
!4654 = !DILocation(line: 300, column: 2, scope: !4603)
!4655 = !DILocation(line: 300, column: 5, scope: !4603)
!4656 = !DILocation(line: 300, column: 31, scope: !4603)
!4657 = !DILocation(line: 302, column: 29, scope: !4603)
!4658 = !DILocation(line: 302, column: 43, scope: !4603)
!4659 = !DILocation(line: 302, column: 35, scope: !4603)
!4660 = !DILocation(line: 302, column: 8, scope: !4603)
!4661 = !DILocation(line: 302, column: 6, scope: !4603)
!4662 = !DILocation(line: 303, column: 6, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 303, column: 6)
!4664 = !DILocation(line: 303, column: 10, scope: !4663)
!4665 = !DILocation(line: 303, column: 6, scope: !4603)
!4666 = !DILocation(line: 304, column: 3, scope: !4663)
!4667 = !DILocation(line: 305, column: 1, scope: !4603)
!4668 = distinct !DISubprogram(name: "ms_play_effect", scope: !3, file: !3, line: 307, type: !4669, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!195, !3759, !135, !3817}
!4671 = !DILocalVariable(name: "dev", arg: 1, scope: !4668, file: !3, line: 307, type: !3759)
!4672 = !DILocation(line: 307, column: 45, scope: !4668)
!4673 = !DILocalVariable(name: "data", arg: 2, scope: !4668, file: !3, line: 307, type: !135)
!4674 = !DILocation(line: 307, column: 56, scope: !4668)
!4675 = !DILocalVariable(name: "effect", arg: 3, scope: !4668, file: !3, line: 308, type: !3817)
!4676 = !DILocation(line: 308, column: 24, scope: !4668)
!4677 = !DILocalVariable(name: "hid", scope: !4668, file: !3, line: 310, type: !211)
!4678 = !DILocation(line: 310, column: 21, scope: !4668)
!4679 = !DILocation(line: 310, column: 45, scope: !4668)
!4680 = !DILocation(line: 310, column: 27, scope: !4668)
!4681 = !DILocalVariable(name: "ms", scope: !4668, file: !3, line: 311, type: !4042)
!4682 = !DILocation(line: 311, column: 18, scope: !4668)
!4683 = !DILocation(line: 311, column: 39, scope: !4668)
!4684 = !DILocation(line: 311, column: 23, scope: !4668)
!4685 = !DILocation(line: 313, column: 6, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 313, column: 6)
!4687 = !DILocation(line: 313, column: 14, scope: !4686)
!4688 = !DILocation(line: 313, column: 19, scope: !4686)
!4689 = !DILocation(line: 313, column: 6, scope: !4668)
!4690 = !DILocation(line: 314, column: 3, scope: !4686)
!4691 = !DILocation(line: 319, column: 22, scope: !4668)
!4692 = !DILocation(line: 319, column: 30, scope: !4668)
!4693 = !DILocation(line: 319, column: 32, scope: !4668)
!4694 = !DILocation(line: 319, column: 39, scope: !4668)
!4695 = !DILocation(line: 319, column: 16, scope: !4668)
!4696 = !DILocation(line: 319, column: 56, scope: !4668)
!4697 = !DILocation(line: 319, column: 63, scope: !4668)
!4698 = !DILocation(line: 319, column: 15, scope: !4668)
!4699 = !DILocation(line: 319, column: 2, scope: !4668)
!4700 = !DILocation(line: 319, column: 6, scope: !4668)
!4701 = !DILocation(line: 319, column: 13, scope: !4668)
!4702 = !DILocation(line: 320, column: 20, scope: !4668)
!4703 = !DILocation(line: 320, column: 28, scope: !4668)
!4704 = !DILocation(line: 320, column: 30, scope: !4668)
!4705 = !DILocation(line: 320, column: 37, scope: !4668)
!4706 = !DILocation(line: 320, column: 14, scope: !4668)
!4707 = !DILocation(line: 320, column: 52, scope: !4668)
!4708 = !DILocation(line: 320, column: 59, scope: !4668)
!4709 = !DILocation(line: 320, column: 13, scope: !4668)
!4710 = !DILocation(line: 320, column: 2, scope: !4668)
!4711 = !DILocation(line: 320, column: 6, scope: !4668)
!4712 = !DILocation(line: 320, column: 11, scope: !4668)
!4713 = !DILocation(line: 322, column: 17, scope: !4668)
!4714 = !DILocation(line: 322, column: 21, scope: !4668)
!4715 = !DILocation(line: 322, column: 2, scope: !4668)
!4716 = !DILocation(line: 323, column: 2, scope: !4668)
!4717 = !DILocation(line: 324, column: 1, scope: !4668)
!4718 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !66, file: !66, line: 655, type: !4719, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!135, !4721}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!4723 = !DILocalVariable(name: "dev", arg: 1, scope: !4718, file: !66, line: 655, type: !4721)
!4724 = !DILocation(line: 655, column: 58, scope: !4718)
!4725 = !DILocation(line: 657, column: 9, scope: !4718)
!4726 = !DILocation(line: 657, column: 14, scope: !4718)
!4727 = !DILocation(line: 657, column: 2, scope: !4718)
!4728 = distinct !DISubprogram(name: "hid_hw_output_report", scope: !6, file: !6, line: 1110, type: !3720, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4729 = !DILocalVariable(name: "hdev", arg: 1, scope: !4728, file: !6, line: 1110, type: !211)
!4730 = !DILocation(line: 1110, column: 59, scope: !4728)
!4731 = !DILocalVariable(name: "buf", arg: 2, scope: !4728, file: !6, line: 1110, type: !215)
!4732 = !DILocation(line: 1110, column: 71, scope: !4728)
!4733 = !DILocalVariable(name: "len", arg: 3, scope: !4728, file: !6, line: 1111, type: !381)
!4734 = !DILocation(line: 1111, column: 13, scope: !4728)
!4735 = !DILocation(line: 1113, column: 6, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4728, file: !6, line: 1113, column: 6)
!4737 = !DILocation(line: 1113, column: 10, scope: !4736)
!4738 = !DILocation(line: 1113, column: 14, scope: !4736)
!4739 = !DILocation(line: 1113, column: 17, scope: !4736)
!4740 = !DILocation(line: 1113, column: 21, scope: !4736)
!4741 = !DILocation(line: 1113, column: 43, scope: !4736)
!4742 = !DILocation(line: 1113, column: 47, scope: !4736)
!4743 = !DILocation(line: 1113, column: 6, scope: !4728)
!4744 = !DILocation(line: 1114, column: 3, scope: !4736)
!4745 = !DILocation(line: 1116, column: 6, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4728, file: !6, line: 1116, column: 6)
!4747 = !DILocation(line: 1116, column: 12, scope: !4746)
!4748 = !DILocation(line: 1116, column: 23, scope: !4746)
!4749 = !DILocation(line: 1116, column: 6, scope: !4728)
!4750 = !DILocation(line: 1117, column: 10, scope: !4746)
!4751 = !DILocation(line: 1117, column: 16, scope: !4746)
!4752 = !DILocation(line: 1117, column: 27, scope: !4746)
!4753 = !DILocation(line: 1117, column: 41, scope: !4746)
!4754 = !DILocation(line: 1117, column: 47, scope: !4746)
!4755 = !DILocation(line: 1117, column: 52, scope: !4746)
!4756 = !DILocation(line: 1117, column: 3, scope: !4746)
!4757 = !DILocation(line: 1119, column: 2, scope: !4728)
!4758 = !DILocation(line: 1120, column: 1, scope: !4728)
!4759 = distinct !DISubprogram(name: "input_get_drvdata", scope: !3761, file: !3761, line: 366, type: !4760, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!135, !3759}
!4762 = !DILocalVariable(name: "dev", arg: 1, scope: !4759, file: !3761, line: 366, type: !3759)
!4763 = !DILocation(line: 366, column: 57, scope: !4759)
!4764 = !DILocation(line: 368, column: 26, scope: !4759)
!4765 = !DILocation(line: 368, column: 31, scope: !4759)
!4766 = !DILocation(line: 368, column: 9, scope: !4759)
!4767 = !DILocation(line: 368, column: 2, scope: !4759)
!4768 = distinct !DISubprogram(name: "schedule_work", scope: !87, file: !87, line: 566, type: !4769, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!546, !268}
!4771 = !DILocalVariable(name: "work", arg: 1, scope: !4768, file: !87, line: 566, type: !268)
!4772 = !DILocation(line: 566, column: 54, scope: !4768)
!4773 = !DILocation(line: 568, column: 20, scope: !4768)
!4774 = !DILocation(line: 568, column: 31, scope: !4768)
!4775 = !DILocation(line: 568, column: 9, scope: !4768)
!4776 = !DILocation(line: 568, column: 2, scope: !4768)
!4777 = distinct !DISubprogram(name: "queue_work", scope: !87, file: !87, line: 504, type: !4778, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!546, !2670, !268}
!4780 = !DILocalVariable(name: "wq", arg: 1, scope: !4777, file: !87, line: 504, type: !2670)
!4781 = !DILocation(line: 504, column: 56, scope: !4777)
!4782 = !DILocalVariable(name: "work", arg: 2, scope: !4777, file: !87, line: 505, type: !268)
!4783 = !DILocation(line: 505, column: 30, scope: !4777)
!4784 = !DILocation(line: 507, column: 41, scope: !4777)
!4785 = !DILocation(line: 507, column: 45, scope: !4777)
!4786 = !DILocation(line: 507, column: 9, scope: !4777)
!4787 = !DILocation(line: 507, column: 2, scope: !4777)
!4788 = distinct !DISubprogram(name: "ms_remove_ff", scope: !3, file: !3, line: 355, type: !3638, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4789 = !DILocalVariable(name: "hdev", arg: 1, scope: !4788, file: !3, line: 355, type: !211)
!4790 = !DILocation(line: 355, column: 45, scope: !4788)
!4791 = !DILocalVariable(name: "ms", scope: !4788, file: !3, line: 357, type: !4042)
!4792 = !DILocation(line: 357, column: 18, scope: !4788)
!4793 = !DILocation(line: 357, column: 39, scope: !4788)
!4794 = !DILocation(line: 357, column: 23, scope: !4788)
!4795 = !DILocation(line: 359, column: 8, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 359, column: 6)
!4797 = !DILocation(line: 359, column: 12, scope: !4796)
!4798 = !DILocation(line: 359, column: 19, scope: !4796)
!4799 = !DILocation(line: 359, column: 6, scope: !4788)
!4800 = !DILocation(line: 360, column: 3, scope: !4796)
!4801 = !DILocation(line: 362, column: 20, scope: !4788)
!4802 = !DILocation(line: 362, column: 24, scope: !4788)
!4803 = !DILocation(line: 362, column: 2, scope: !4788)
!4804 = !DILocation(line: 363, column: 1, scope: !4788)
!4805 = distinct !DISubprogram(name: "input_report_key", scope: !3761, file: !3761, line: 415, type: !4806, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{null, !3759, !7, !195}
!4808 = !DILocalVariable(name: "dev", arg: 1, scope: !4805, file: !3761, line: 415, type: !3759)
!4809 = !DILocation(line: 415, column: 55, scope: !4805)
!4810 = !DILocalVariable(name: "code", arg: 2, scope: !4805, file: !3761, line: 415, type: !7)
!4811 = !DILocation(line: 415, column: 73, scope: !4805)
!4812 = !DILocalVariable(name: "value", arg: 3, scope: !4805, file: !3761, line: 415, type: !195)
!4813 = !DILocation(line: 415, column: 83, scope: !4805)
!4814 = !DILocation(line: 417, column: 14, scope: !4805)
!4815 = !DILocation(line: 417, column: 27, scope: !4805)
!4816 = !DILocation(line: 417, column: 35, scope: !4805)
!4817 = !DILocation(line: 417, column: 34, scope: !4805)
!4818 = !DILocation(line: 417, column: 33, scope: !4805)
!4819 = !DILocation(line: 417, column: 2, scope: !4805)
!4820 = !DILocation(line: 418, column: 1, scope: !4805)
!4821 = distinct !DISubprogram(name: "input_report_rel", scope: !3761, file: !3761, line: 420, type: !4806, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4822 = !DILocalVariable(name: "dev", arg: 1, scope: !4821, file: !3761, line: 420, type: !3759)
!4823 = !DILocation(line: 420, column: 55, scope: !4821)
!4824 = !DILocalVariable(name: "code", arg: 2, scope: !4821, file: !3761, line: 420, type: !7)
!4825 = !DILocation(line: 420, column: 73, scope: !4821)
!4826 = !DILocalVariable(name: "value", arg: 3, scope: !4821, file: !3761, line: 420, type: !195)
!4827 = !DILocation(line: 420, column: 83, scope: !4821)
!4828 = !DILocation(line: 422, column: 14, scope: !4821)
!4829 = !DILocation(line: 422, column: 27, scope: !4821)
!4830 = !DILocation(line: 422, column: 33, scope: !4821)
!4831 = !DILocation(line: 422, column: 2, scope: !4821)
!4832 = !DILocation(line: 423, column: 1, scope: !4821)
!4833 = distinct !DISubprogram(name: "ms_ergonomy_kb_quirk", scope: !3, file: !3, line: 80, type: !4834, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!195, !136, !163, !3675, !759}
!4836 = !DILocalVariable(name: "hi", arg: 1, scope: !4833, file: !3, line: 80, type: !136)
!4837 = !DILocation(line: 80, column: 51, scope: !4833)
!4838 = !DILocalVariable(name: "usage", arg: 2, scope: !4833, file: !3, line: 80, type: !163)
!4839 = !DILocation(line: 80, column: 73, scope: !4833)
!4840 = !DILocalVariable(name: "bit", arg: 3, scope: !4833, file: !3, line: 81, type: !3675)
!4841 = !DILocation(line: 81, column: 19, scope: !4833)
!4842 = !DILocalVariable(name: "max", arg: 4, scope: !4833, file: !3, line: 81, type: !759)
!4843 = !DILocation(line: 81, column: 29, scope: !4833)
!4844 = !DILocalVariable(name: "input", scope: !4833, file: !3, line: 83, type: !3759)
!4845 = !DILocation(line: 83, column: 20, scope: !4833)
!4846 = !DILocation(line: 83, column: 28, scope: !4833)
!4847 = !DILocation(line: 83, column: 32, scope: !4833)
!4848 = !DILocation(line: 85, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 85, column: 6)
!4850 = !DILocation(line: 85, column: 14, scope: !4849)
!4851 = !DILocation(line: 85, column: 18, scope: !4849)
!4852 = !DILocation(line: 85, column: 36, scope: !4849)
!4853 = !DILocation(line: 85, column: 6, scope: !4833)
!4854 = !DILocation(line: 86, column: 11, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 85, column: 56)
!4856 = !DILocation(line: 86, column: 18, scope: !4855)
!4857 = !DILocation(line: 86, column: 22, scope: !4855)
!4858 = !DILocation(line: 86, column: 3, scope: !4855)
!4859 = !DILocation(line: 92, column: 4, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 86, column: 35)
!4861 = !DILocation(line: 93, column: 4, scope: !4860)
!4862 = !DILocation(line: 95, column: 4, scope: !4860)
!4863 = !DILocation(line: 96, column: 4, scope: !4860)
!4864 = !DILocation(line: 98, column: 3, scope: !4855)
!4865 = !DILocation(line: 101, column: 7, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 101, column: 6)
!4867 = !DILocation(line: 101, column: 14, scope: !4866)
!4868 = !DILocation(line: 101, column: 18, scope: !4866)
!4869 = !DILocation(line: 101, column: 36, scope: !4866)
!4870 = !DILocation(line: 101, column: 6, scope: !4833)
!4871 = !DILocation(line: 102, column: 3, scope: !4866)
!4872 = !DILocation(line: 104, column: 10, scope: !4833)
!4873 = !DILocation(line: 104, column: 17, scope: !4833)
!4874 = !DILocation(line: 104, column: 21, scope: !4833)
!4875 = !DILocation(line: 104, column: 2, scope: !4833)
!4876 = !DILocation(line: 105, column: 15, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 104, column: 34)
!4878 = !DILocation(line: 105, column: 43, scope: !4877)
!4879 = !DILocation(line: 106, column: 15, scope: !4877)
!4880 = !DILocation(line: 106, column: 44, scope: !4877)
!4881 = !DILocation(line: 109, column: 3, scope: !4877)
!4882 = !DILocation(line: 110, column: 28, scope: !4877)
!4883 = !DILocation(line: 110, column: 35, scope: !4877)
!4884 = !DILocation(line: 110, column: 3, scope: !4877)
!4885 = !DILocation(line: 111, column: 29, scope: !4877)
!4886 = !DILocation(line: 111, column: 36, scope: !4877)
!4887 = !DILocation(line: 111, column: 3, scope: !4877)
!4888 = !DILocation(line: 112, column: 3, scope: !4877)
!4889 = !DILocation(line: 115, column: 23, scope: !4877)
!4890 = !DILocation(line: 115, column: 27, scope: !4877)
!4891 = !DILocation(line: 115, column: 34, scope: !4877)
!4892 = !DILocation(line: 115, column: 39, scope: !4877)
!4893 = !DILocation(line: 115, column: 3, scope: !4877)
!4894 = !DILocation(line: 116, column: 3, scope: !4877)
!4895 = !DILocation(line: 126, column: 3, scope: !4877)
!4896 = !DILocation(line: 128, column: 19, scope: !4877)
!4897 = !DILocation(line: 128, column: 26, scope: !4877)
!4898 = !DILocation(line: 128, column: 3, scope: !4877)
!4899 = !DILocation(line: 129, column: 3, scope: !4877)
!4900 = !DILocation(line: 130, column: 20, scope: !4877)
!4901 = !DILocation(line: 130, column: 27, scope: !4877)
!4902 = !DILocation(line: 130, column: 3, scope: !4877)
!4903 = !DILocation(line: 131, column: 20, scope: !4877)
!4904 = !DILocation(line: 131, column: 27, scope: !4877)
!4905 = !DILocation(line: 131, column: 3, scope: !4877)
!4906 = !DILocation(line: 132, column: 20, scope: !4877)
!4907 = !DILocation(line: 132, column: 27, scope: !4877)
!4908 = !DILocation(line: 132, column: 3, scope: !4877)
!4909 = !DILocation(line: 133, column: 20, scope: !4877)
!4910 = !DILocation(line: 133, column: 27, scope: !4877)
!4911 = !DILocation(line: 133, column: 3, scope: !4877)
!4912 = !DILocation(line: 134, column: 20, scope: !4877)
!4913 = !DILocation(line: 134, column: 27, scope: !4877)
!4914 = !DILocation(line: 134, column: 3, scope: !4877)
!4915 = !DILocation(line: 135, column: 3, scope: !4877)
!4916 = !DILocation(line: 137, column: 3, scope: !4877)
!4917 = !DILocation(line: 139, column: 2, scope: !4833)
!4918 = !DILocation(line: 140, column: 1, scope: !4833)
!4919 = distinct !DISubprogram(name: "ms_presenter_8k_quirk", scope: !3, file: !3, line: 142, type: !4834, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4920 = !DILocalVariable(name: "hi", arg: 1, scope: !4919, file: !3, line: 142, type: !136)
!4921 = !DILocation(line: 142, column: 52, scope: !4919)
!4922 = !DILocalVariable(name: "usage", arg: 2, scope: !4919, file: !3, line: 142, type: !163)
!4923 = !DILocation(line: 142, column: 74, scope: !4919)
!4924 = !DILocalVariable(name: "bit", arg: 3, scope: !4919, file: !3, line: 143, type: !3675)
!4925 = !DILocation(line: 143, column: 19, scope: !4919)
!4926 = !DILocalVariable(name: "max", arg: 4, scope: !4919, file: !3, line: 143, type: !759)
!4927 = !DILocation(line: 143, column: 29, scope: !4919)
!4928 = !DILocation(line: 145, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 145, column: 6)
!4930 = !DILocation(line: 145, column: 14, scope: !4929)
!4931 = !DILocation(line: 145, column: 18, scope: !4929)
!4932 = !DILocation(line: 145, column: 36, scope: !4929)
!4933 = !DILocation(line: 145, column: 6, scope: !4919)
!4934 = !DILocation(line: 146, column: 3, scope: !4929)
!4935 = !DILocation(line: 148, column: 18, scope: !4919)
!4936 = !DILocation(line: 148, column: 22, scope: !4919)
!4937 = !DILocation(line: 148, column: 29, scope: !4919)
!4938 = !DILocation(line: 148, column: 2, scope: !4919)
!4939 = !DILocation(line: 149, column: 10, scope: !4919)
!4940 = !DILocation(line: 149, column: 17, scope: !4919)
!4941 = !DILocation(line: 149, column: 21, scope: !4919)
!4942 = !DILocation(line: 149, column: 2, scope: !4919)
!4943 = !DILocation(line: 150, column: 15, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 149, column: 34)
!4945 = !DILocation(line: 150, column: 46, scope: !4944)
!4946 = !DILocation(line: 151, column: 15, scope: !4944)
!4947 = !DILocation(line: 151, column: 43, scope: !4944)
!4948 = !DILocation(line: 152, column: 15, scope: !4944)
!4949 = !DILocation(line: 152, column: 48, scope: !4944)
!4950 = !DILocation(line: 153, column: 15, scope: !4944)
!4951 = !DILocation(line: 153, column: 44, scope: !4944)
!4952 = !DILocation(line: 154, column: 15, scope: !4944)
!4953 = !DILocation(line: 154, column: 43, scope: !4944)
!4954 = !DILocation(line: 156, column: 3, scope: !4944)
!4955 = !DILocation(line: 158, column: 2, scope: !4919)
!4956 = !DILocation(line: 159, column: 1, scope: !4919)
!4957 = distinct !DISubprogram(name: "ms_surface_dial_quirk", scope: !3, file: !3, line: 161, type: !4958, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!195, !136, !156, !163, !3675, !759}
!4960 = !DILocalVariable(name: "hi", arg: 1, scope: !4957, file: !3, line: 161, type: !136)
!4961 = !DILocation(line: 161, column: 52, scope: !4957)
!4962 = !DILocalVariable(name: "field", arg: 2, scope: !4957, file: !3, line: 161, type: !156)
!4963 = !DILocation(line: 161, column: 74, scope: !4957)
!4964 = !DILocalVariable(name: "usage", arg: 3, scope: !4957, file: !3, line: 162, type: !163)
!4965 = !DILocation(line: 162, column: 21, scope: !4957)
!4966 = !DILocalVariable(name: "bit", arg: 4, scope: !4957, file: !3, line: 162, type: !3675)
!4967 = !DILocation(line: 162, column: 44, scope: !4957)
!4968 = !DILocalVariable(name: "max", arg: 5, scope: !4957, file: !3, line: 162, type: !759)
!4969 = !DILocation(line: 162, column: 54, scope: !4957)
!4970 = !DILocation(line: 164, column: 10, scope: !4957)
!4971 = !DILocation(line: 164, column: 17, scope: !4957)
!4972 = !DILocation(line: 164, column: 21, scope: !4957)
!4973 = !DILocation(line: 164, column: 2, scope: !4957)
!4974 = !DILocation(line: 168, column: 3, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 164, column: 39)
!4976 = !DILocation(line: 170, column: 11, scope: !4975)
!4977 = !DILocation(line: 170, column: 18, scope: !4975)
!4978 = !DILocation(line: 170, column: 3, scope: !4975)
!4979 = !DILocation(line: 175, column: 4, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 170, column: 23)
!4981 = !DILocation(line: 177, column: 2, scope: !4975)
!4982 = !DILocation(line: 179, column: 2, scope: !4957)
!4983 = !DILocation(line: 180, column: 1, scope: !4957)
!4984 = distinct !DISubprogram(name: "hid_map_usage_clear", scope: !6, file: !6, line: 1015, type: !4985, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !136, !163, !3675, !759, !178, !175}
!4987 = !DILocalVariable(name: "hidinput", arg: 1, scope: !4984, file: !6, line: 1015, type: !136)
!4988 = !DILocation(line: 1015, column: 58, scope: !4984)
!4989 = !DILocalVariable(name: "usage", arg: 2, scope: !4984, file: !6, line: 1016, type: !163)
!4990 = !DILocation(line: 1016, column: 21, scope: !4984)
!4991 = !DILocalVariable(name: "bit", arg: 3, scope: !4984, file: !6, line: 1016, type: !3675)
!4992 = !DILocation(line: 1016, column: 44, scope: !4984)
!4993 = !DILocalVariable(name: "max", arg: 4, scope: !4984, file: !6, line: 1016, type: !759)
!4994 = !DILocation(line: 1016, column: 54, scope: !4984)
!4995 = !DILocalVariable(name: "type", arg: 5, scope: !4984, file: !6, line: 1017, type: !178)
!4996 = !DILocation(line: 1017, column: 8, scope: !4984)
!4997 = !DILocalVariable(name: "c", arg: 6, scope: !4984, file: !6, line: 1017, type: !175)
!4998 = !DILocation(line: 1017, column: 20, scope: !4984)
!4999 = !DILocation(line: 1019, column: 16, scope: !4984)
!5000 = !DILocation(line: 1019, column: 26, scope: !4984)
!5001 = !DILocation(line: 1019, column: 33, scope: !4984)
!5002 = !DILocation(line: 1019, column: 38, scope: !4984)
!5003 = !DILocation(line: 1019, column: 43, scope: !4984)
!5004 = !DILocation(line: 1019, column: 49, scope: !4984)
!5005 = !DILocation(line: 1019, column: 2, scope: !4984)
!5006 = !DILocation(line: 1020, column: 7, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4984, file: !6, line: 1020, column: 6)
!5008 = !DILocation(line: 1020, column: 6, scope: !5007)
!5009 = !DILocation(line: 1020, column: 6, scope: !4984)
!5010 = !DILocation(line: 1021, column: 13, scope: !5007)
!5011 = !DILocation(line: 1021, column: 20, scope: !5007)
!5012 = !DILocation(line: 1021, column: 27, scope: !5007)
!5013 = !DILocation(line: 1021, column: 26, scope: !5007)
!5014 = !DILocation(line: 1021, column: 3, scope: !5007)
!5015 = !DILocation(line: 1022, column: 1, scope: !4984)
!5016 = distinct !DISubprogram(name: "set_bit", scope: !5017, file: !5017, line: 26, type: !5018, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!5017 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !88, !5020}
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !384)
!5022 = !DILocalVariable(name: "nr", arg: 1, scope: !5023, file: !5024, line: 52, type: !88)
!5023 = distinct !DISubprogram(name: "arch_set_bit", scope: !5024, file: !5024, line: 52, type: !5018, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!5024 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5025 = !DILocation(line: 52, column: 19, scope: !5023, inlinedAt: !5026)
!5026 = distinct !DILocation(line: 29, column: 2, scope: !5016)
!5027 = !DILocalVariable(name: "addr", arg: 2, scope: !5023, file: !5024, line: 52, type: !5020)
!5028 = !DILocation(line: 52, column: 47, scope: !5023, inlinedAt: !5026)
!5029 = !DILocalVariable(name: "v", arg: 1, scope: !5030, file: !5031, line: 84, type: !5034)
!5030 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5031, file: !5031, line: 84, type: !5032, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!5031 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5032 = !DISubroutineType(types: !5033)
!5033 = !{null, !5034, !381}
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5036)
!5036 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5037 = !DILocation(line: 84, column: 74, scope: !5030, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 28, column: 2, scope: !5016)
!5039 = !DILocalVariable(name: "size", arg: 2, scope: !5030, file: !5031, line: 84, type: !381)
!5040 = !DILocation(line: 84, column: 84, scope: !5030, inlinedAt: !5038)
!5041 = !DILocalVariable(name: "nr", arg: 1, scope: !5016, file: !5017, line: 26, type: !88)
!5042 = !DILocation(line: 26, column: 33, scope: !5016)
!5043 = !DILocalVariable(name: "addr", arg: 2, scope: !5016, file: !5017, line: 26, type: !5020)
!5044 = !DILocation(line: 26, column: 61, scope: !5016)
!5045 = !DILocation(line: 28, column: 26, scope: !5016)
!5046 = !DILocation(line: 28, column: 33, scope: !5016)
!5047 = !DILocation(line: 28, column: 31, scope: !5016)
!5048 = !DILocation(line: 86, column: 20, scope: !5030, inlinedAt: !5038)
!5049 = !DILocation(line: 86, column: 23, scope: !5030, inlinedAt: !5038)
!5050 = !DILocation(line: 86, column: 2, scope: !5030, inlinedAt: !5038)
!5051 = !DILocation(line: 87, column: 2, scope: !5030, inlinedAt: !5038)
!5052 = !DILocation(line: 29, column: 15, scope: !5016)
!5053 = !DILocation(line: 29, column: 19, scope: !5016)
!5054 = !DILocation(line: 54, column: 27, scope: !5055, inlinedAt: !5026)
!5055 = distinct !DILexicalBlock(scope: !5023, file: !5024, line: 54, column: 6)
!5056 = !DILocation(line: 54, column: 6, scope: !5055, inlinedAt: !5026)
!5057 = !DILocation(line: 54, column: 6, scope: !5023, inlinedAt: !5026)
!5058 = !DILocation(line: 56, column: 6, scope: !5059, inlinedAt: !5026)
!5059 = distinct !DILexicalBlock(scope: !5055, file: !5024, line: 54, column: 32)
!5060 = !DILocation(line: 57, column: 12, scope: !5059, inlinedAt: !5026)
!5061 = !DILocation(line: 55, column: 3, scope: !5059, inlinedAt: !5026)
!5062 = !{i32 -2147064513}
!5063 = !DILocation(line: 59, column: 2, scope: !5059, inlinedAt: !5026)
!5064 = !DILocation(line: 61, column: 8, scope: !5065, inlinedAt: !5026)
!5065 = distinct !DILexicalBlock(scope: !5055, file: !5024, line: 59, column: 9)
!5066 = !DILocation(line: 61, column: 32, scope: !5065, inlinedAt: !5026)
!5067 = !DILocation(line: 60, column: 3, scope: !5065, inlinedAt: !5026)
!5068 = !{i32 -2147064381}
!5069 = !DILocation(line: 30, column: 1, scope: !5016)
!5070 = !DILocalVariable(name: "hidinput", arg: 1, scope: !4080, file: !6, line: 969, type: !136)
!5071 = !DILocation(line: 969, column: 52, scope: !4080)
!5072 = !DILocalVariable(name: "usage", arg: 2, scope: !4080, file: !6, line: 970, type: !163)
!5073 = !DILocation(line: 970, column: 21, scope: !4080)
!5074 = !DILocalVariable(name: "bit", arg: 3, scope: !4080, file: !6, line: 970, type: !3675)
!5075 = !DILocation(line: 970, column: 44, scope: !4080)
!5076 = !DILocalVariable(name: "max", arg: 4, scope: !4080, file: !6, line: 970, type: !759)
!5077 = !DILocation(line: 970, column: 54, scope: !4080)
!5078 = !DILocalVariable(name: "type", arg: 5, scope: !4080, file: !6, line: 971, type: !178)
!5079 = !DILocation(line: 971, column: 8, scope: !4080)
!5080 = !DILocalVariable(name: "c", arg: 6, scope: !4080, file: !6, line: 971, type: !7)
!5081 = !DILocation(line: 971, column: 27, scope: !4080)
!5082 = !DILocalVariable(name: "input", scope: !4080, file: !6, line: 973, type: !3759)
!5083 = !DILocation(line: 973, column: 20, scope: !4080)
!5084 = !DILocation(line: 973, column: 28, scope: !4080)
!5085 = !DILocation(line: 973, column: 38, scope: !4080)
!5086 = !DILocalVariable(name: "bmap", scope: !4080, file: !6, line: 974, type: !3676)
!5087 = !DILocation(line: 974, column: 17, scope: !4080)
!5088 = !DILocalVariable(name: "limit", scope: !4080, file: !6, line: 975, type: !7)
!5089 = !DILocation(line: 975, column: 15, scope: !4080)
!5090 = !DILocation(line: 977, column: 10, scope: !4080)
!5091 = !DILocation(line: 977, column: 2, scope: !4080)
!5092 = !DILocation(line: 979, column: 10, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !4080, file: !6, line: 977, column: 16)
!5094 = !DILocation(line: 979, column: 17, scope: !5093)
!5095 = !DILocation(line: 979, column: 8, scope: !5093)
!5096 = !DILocation(line: 980, column: 9, scope: !5093)
!5097 = !DILocation(line: 981, column: 3, scope: !5093)
!5098 = !DILocation(line: 983, column: 10, scope: !5093)
!5099 = !DILocation(line: 983, column: 17, scope: !5093)
!5100 = !DILocation(line: 983, column: 8, scope: !5093)
!5101 = !DILocation(line: 984, column: 9, scope: !5093)
!5102 = !DILocation(line: 985, column: 3, scope: !5093)
!5103 = !DILocation(line: 987, column: 10, scope: !5093)
!5104 = !DILocation(line: 987, column: 17, scope: !5093)
!5105 = !DILocation(line: 987, column: 8, scope: !5093)
!5106 = !DILocation(line: 988, column: 9, scope: !5093)
!5107 = !DILocation(line: 989, column: 3, scope: !5093)
!5108 = !DILocation(line: 991, column: 10, scope: !5093)
!5109 = !DILocation(line: 991, column: 17, scope: !5093)
!5110 = !DILocation(line: 991, column: 8, scope: !5093)
!5111 = !DILocation(line: 992, column: 9, scope: !5093)
!5112 = !DILocation(line: 993, column: 3, scope: !5093)
!5113 = !DILocation(line: 996, column: 6, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !4080, file: !6, line: 996, column: 6)
!5115 = !DILocation(line: 996, column: 6, scope: !4080)
!5116 = !DILocation(line: 997, column: 3, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !6, line: 997, column: 3)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !6, line: 997, column: 3)
!5119 = distinct !DILexicalBlock(scope: !5114, file: !6, line: 996, column: 36)
!5120 = !DILocation(line: 997, column: 3, scope: !5118)
!5121 = !DILocation(line: 999, column: 4, scope: !5119)
!5122 = !DILocation(line: 999, column: 8, scope: !5119)
!5123 = !DILocation(line: 1000, column: 3, scope: !5119)
!5124 = !DILocation(line: 1003, column: 16, scope: !4080)
!5125 = !DILocation(line: 1003, column: 2, scope: !4080)
!5126 = !DILocation(line: 1003, column: 9, scope: !4080)
!5127 = !DILocation(line: 1003, column: 14, scope: !4080)
!5128 = !DILocation(line: 1004, column: 16, scope: !4080)
!5129 = !DILocation(line: 1004, column: 2, scope: !4080)
!5130 = !DILocation(line: 1004, column: 9, scope: !4080)
!5131 = !DILocation(line: 1004, column: 14, scope: !4080)
!5132 = !DILocation(line: 1005, column: 9, scope: !4080)
!5133 = !DILocation(line: 1005, column: 3, scope: !4080)
!5134 = !DILocation(line: 1005, column: 7, scope: !4080)
!5135 = !DILocation(line: 1006, column: 9, scope: !4080)
!5136 = !DILocation(line: 1006, column: 3, scope: !4080)
!5137 = !DILocation(line: 1006, column: 7, scope: !4080)
!5138 = !DILocation(line: 1007, column: 1, scope: !4080)
!5139 = distinct !DISubprogram(name: "clear_bit", scope: !5017, file: !5017, line: 39, type: !5018, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!5140 = !DILocalVariable(name: "nr", arg: 1, scope: !5141, file: !5024, line: 72, type: !88)
!5141 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5024, file: !5024, line: 72, type: !5018, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!5142 = !DILocation(line: 72, column: 21, scope: !5141, inlinedAt: !5143)
!5143 = distinct !DILocation(line: 42, column: 2, scope: !5139)
!5144 = !DILocalVariable(name: "addr", arg: 2, scope: !5141, file: !5024, line: 72, type: !5020)
!5145 = !DILocation(line: 72, column: 49, scope: !5141, inlinedAt: !5143)
!5146 = !DILocation(line: 84, column: 74, scope: !5030, inlinedAt: !5147)
!5147 = distinct !DILocation(line: 41, column: 2, scope: !5139)
!5148 = !DILocation(line: 84, column: 84, scope: !5030, inlinedAt: !5147)
!5149 = !DILocalVariable(name: "nr", arg: 1, scope: !5139, file: !5017, line: 39, type: !88)
!5150 = !DILocation(line: 39, column: 35, scope: !5139)
!5151 = !DILocalVariable(name: "addr", arg: 2, scope: !5139, file: !5017, line: 39, type: !5020)
!5152 = !DILocation(line: 39, column: 63, scope: !5139)
!5153 = !DILocation(line: 41, column: 26, scope: !5139)
!5154 = !DILocation(line: 41, column: 33, scope: !5139)
!5155 = !DILocation(line: 41, column: 31, scope: !5139)
!5156 = !DILocation(line: 86, column: 20, scope: !5030, inlinedAt: !5147)
!5157 = !DILocation(line: 86, column: 23, scope: !5030, inlinedAt: !5147)
!5158 = !DILocation(line: 86, column: 2, scope: !5030, inlinedAt: !5147)
!5159 = !DILocation(line: 87, column: 2, scope: !5030, inlinedAt: !5147)
!5160 = !DILocation(line: 42, column: 17, scope: !5139)
!5161 = !DILocation(line: 42, column: 21, scope: !5139)
!5162 = !DILocation(line: 74, column: 27, scope: !5163, inlinedAt: !5143)
!5163 = distinct !DILexicalBlock(scope: !5141, file: !5024, line: 74, column: 6)
!5164 = !DILocation(line: 74, column: 6, scope: !5163, inlinedAt: !5143)
!5165 = !DILocation(line: 74, column: 6, scope: !5141, inlinedAt: !5143)
!5166 = !DILocation(line: 76, column: 6, scope: !5167, inlinedAt: !5143)
!5167 = distinct !DILexicalBlock(scope: !5163, file: !5024, line: 74, column: 32)
!5168 = !DILocation(line: 77, column: 13, scope: !5167, inlinedAt: !5143)
!5169 = !DILocation(line: 77, column: 12, scope: !5167, inlinedAt: !5143)
!5170 = !DILocation(line: 75, column: 3, scope: !5167, inlinedAt: !5143)
!5171 = !{i32 -2147063559}
!5172 = !DILocation(line: 78, column: 2, scope: !5167, inlinedAt: !5143)
!5173 = !DILocation(line: 80, column: 8, scope: !5174, inlinedAt: !5143)
!5174 = distinct !DILexicalBlock(scope: !5163, file: !5024, line: 78, column: 9)
!5175 = !DILocation(line: 80, column: 32, scope: !5174, inlinedAt: !5143)
!5176 = !DILocation(line: 79, column: 3, scope: !5174, inlinedAt: !5143)
!5177 = !{i32 -2147063427}
!5178 = !DILocation(line: 43, column: 1, scope: !5139)
!5179 = distinct !DISubprogram(name: "kasan_check_write", scope: !5180, file: !5180, line: 38, type: !5181, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!5180 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5181 = !DISubroutineType(types: !5182)
!5182 = !{!546, !5034, !7}
!5183 = !DILocalVariable(name: "p", arg: 1, scope: !5179, file: !5180, line: 38, type: !5034)
!5184 = !DILocation(line: 38, column: 59, scope: !5179)
!5185 = !DILocalVariable(name: "size", arg: 2, scope: !5179, file: !5180, line: 38, type: !7)
!5186 = !DILocation(line: 38, column: 75, scope: !5179)
!5187 = !DILocation(line: 40, column: 2, scope: !5179)
!5188 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5189, file: !5189, line: 178, type: !5190, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !282)
!5189 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5190 = !DISubroutineType(types: !5191)
!5191 = !{null, !5034, !381, !195}
!5192 = !DILocalVariable(name: "ptr", arg: 1, scope: !5188, file: !5189, line: 178, type: !5034)
!5193 = !DILocation(line: 178, column: 60, scope: !5188)
!5194 = !DILocalVariable(name: "size", arg: 2, scope: !5188, file: !5189, line: 178, type: !381)
!5195 = !DILocation(line: 178, column: 72, scope: !5188)
!5196 = !DILocalVariable(name: "type", arg: 3, scope: !5188, file: !5189, line: 179, type: !195)
!5197 = !DILocation(line: 179, column: 15, scope: !5188)
!5198 = !DILocation(line: 179, column: 23, scope: !5188)
