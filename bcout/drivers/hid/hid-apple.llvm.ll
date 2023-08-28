; ModuleID = '../bcout/drivers/hid/hid-apple.llvm.bc'
source_filename = "drivers/hid/hid-apple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_apple_driver_init6:\09\09\09"
module asm ".long\09apple_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.hid_driver = type { i8*, %struct.hid_device_id*, %struct.list_head, %struct.spinlock, i1 (%struct.hid_device*, i1)*, i32 (%struct.hid_device*, %struct.hid_device_id*)*, void (%struct.hid_device*)*, %struct.hid_report_id*, i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)*, %struct.hid_usage_id*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, void (%struct.hid_device*, %struct.hid_report*)*, i8* (%struct.hid_device*, i8*, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)*, i32 (%struct.hid_device*, %struct.hid_input*)*, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)*, i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)*, %struct.device_driver }
%struct.hid_device_id = type { i16, i16, i32, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.1 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.1 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.2, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.4, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.47, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.17, [0 x i64] }
%struct.anon.17 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.18, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.18 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.24, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.25, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.26, %union.anon.30, %struct.key_restriction* }
%union.anon.24 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.27, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.27 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.30 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.33, %union.anon.34, i32 }
%struct.request_queue = type opaque
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.35 }
%struct.anon.35 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.39 }
%struct.anon.39 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.46, i32, [12 x i8] }
%union.anon.46 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.47 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.48, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.51 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i64, i64 }
%union.anon.51 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.3, i8* }
%union.anon.3 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.56 = type { %struct.callback_head }
%struct.atomic_t = type { i32 }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.6 }
%union.anon.6 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.32 = type { %struct.callback_head }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_report_id = type { i32 }
%struct.hid_usage_id = type { i32, i32, i32 }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.apple_key_translation = type { i16, i16, i8 }
%struct.apple_sc = type { i64, i32, i32, [12 x i64] }

@__param_str_fnmode = internal constant [17 x i8] c"hid_apple.fnmode\00", align 16, !dbg !0
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@fnmode = internal global i32 1, align 4, !dbg !241
@__param_fnmode = internal constant %struct.kernel_param { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__param_str_fnmode, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @fnmode to i8*) } }, section "__param", align 8, !dbg !107
@__UNIQUE_ID_fnmodetype204 = internal constant [31 x i8] c"hid_apple.parmtype=fnmode:uint\00", section ".modinfo", align 1, !dbg !175
@__UNIQUE_ID_fnmode205 = internal constant [104 x i8] c"hid_apple.parm=fnmode:Mode of fn key on Apple keyboards (0 = disabled, [1] = fkeyslast, 2 = fkeysfirst)\00", section ".modinfo", align 1, !dbg !180
@__param_str_iso_layout = internal constant [21 x i8] c"hid_apple.iso_layout\00", align 16, !dbg !243
@iso_layout = internal global i32 1, align 4, !dbg !248
@__param_iso_layout = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_iso_layout, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @iso_layout to i8*) } }, section "__param", align 8, !dbg !185
@__UNIQUE_ID_iso_layouttype206 = internal constant [35 x i8] c"hid_apple.parmtype=iso_layout:uint\00", section ".modinfo", align 1, !dbg !187
@__UNIQUE_ID_iso_layout207 = internal constant [109 x i8] c"hid_apple.parm=iso_layout:Enable/Disable hardcoded ISO-layout of the keyboard. (0 = disabled, [1] = enabled)\00", section ".modinfo", align 1, !dbg !192
@__param_str_swap_opt_cmd = internal constant [23 x i8] c"hid_apple.swap_opt_cmd\00", align 16, !dbg !250
@swap_opt_cmd = internal global i32 0, align 4, !dbg !237
@__param_swap_opt_cmd = internal constant %struct.kernel_param { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__param_str_swap_opt_cmd, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @swap_opt_cmd to i8*) } }, section "__param", align 8, !dbg !197
@__UNIQUE_ID_swap_opt_cmdtype208 = internal constant [37 x i8] c"hid_apple.parmtype=swap_opt_cmd:uint\00", section ".modinfo", align 1, !dbg !199
@__UNIQUE_ID_swap_opt_cmd209 = internal constant [198 x i8] c"hid_apple.parm=swap_opt_cmd:Swap the Option (\22Alt\22) and Command (\22Flag\22) keys. (For people who want to keep Windows PC keyboard muscle memory. [0] = as-is, Mac layout. 1 = swapped, Windows layout.)\00", section ".modinfo", align 1, !dbg !204
@__param_str_swap_fn_leftctrl = internal constant [27 x i8] c"hid_apple.swap_fn_leftctrl\00", align 16, !dbg !255
@swap_fn_leftctrl = internal global i32 0, align 4, !dbg !239
@__param_swap_fn_leftctrl = internal constant %struct.kernel_param { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__param_str_swap_fn_leftctrl, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @swap_fn_leftctrl to i8*) } }, section "__param", align 8, !dbg !209
@__UNIQUE_ID_swap_fn_leftctrltype210 = internal constant [41 x i8] c"hid_apple.parmtype=swap_fn_leftctrl:uint\00", section ".modinfo", align 1, !dbg !211
@__UNIQUE_ID_swap_fn_leftctrl211 = internal constant [172 x i8] c"hid_apple.parm=swap_fn_leftctrl:Swap the Fn and left Control keys. (For people who want to keep PC keyboard muscle memory. [0] = as-is, Mac layout, 1 = swapped, PC layout)\00", section ".modinfo", align 1, !dbg !216
@__UNIQUE_ID___addressable_apple_driver_init212 = internal global i8* bitcast (i32 ()* @apple_driver_init to i8*), section ".discard.addressable", align 8, !dbg !221
@apple_driver = internal global %struct.hid_driver { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct.hid_device_id* getelementptr inbounds ([80 x %struct.hid_device_id], [80 x %struct.hid_device_id]* @apple_devices, i32 0, i32 0), %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i1 (%struct.hid_device*, i1)* null, i32 (%struct.hid_device*, %struct.hid_device_id*)* @apple_probe, void (%struct.hid_device*)* null, %struct.hid_report_id* null, i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)* null, %struct.hid_usage_id* null, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @apple_event, void (%struct.hid_device*, %struct.hid_report*)* null, i8* (%struct.hid_device*, i8*, i32*)* @apple_report_fixup, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @apple_input_mapping, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @apple_input_mapped, i32 (%struct.hid_device*, %struct.hid_input*)* @apple_input_configured, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* null, i32 (%struct.hid_device*, i32)* null, i32 (%struct.hid_device*)* null, i32 (%struct.hid_device*)* null, %struct.device_driver zeroinitializer }, align 8, !dbg !260
@__exitcall_apple_driver_exit = internal global void ()* @apple_driver_exit, section ".exitcall.exit", align 8, !dbg !223
@__UNIQUE_ID_file213 = internal constant [37 x i8] c"hid_apple.file=drivers/hid/hid-apple\00", section ".modinfo", align 1, !dbg !230
@__UNIQUE_ID_license214 = internal constant [22 x i8] c"hid_apple.license=GPL\00", section ".modinfo", align 1, !dbg !232
@.str = private unnamed_addr constant [10 x i8] c"hid_apple\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@apple_devices = internal constant [80 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1452, i32 772, i64 96 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 526, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 527, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 532, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 533, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 534, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 535, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 536, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 537, i64 261 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 538, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 539, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 540, i64 261 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 541, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 542, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 543, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 544, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 545, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 546, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 553, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 554, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 555, i64 261 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 591, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 592, i64 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 592, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 593, i64 4 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 556, i64 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 557, i64 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 598, i64 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 597, i64 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 599, i64 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 558, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 615, i64 4 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 615, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 620, i64 4 }, %struct.hid_device_id { i16 5, i16 0, i32 76, i32 620, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 547, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 548, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 549, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 560, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 561, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 562, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 566, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 567, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 568, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 575, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 576, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 577, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 578, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 579, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 580, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 581, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 582, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 583, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 588, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 589, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 590, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 585, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 586, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 587, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 594, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 595, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 596, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 610, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 611, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 612, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 601, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 602, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 603, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 656, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 657, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 658, i64 5 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 626, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 627, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 628, i64 5 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 569, i64 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 570, i64 260 }, %struct.hid_device_id { i16 5, i16 0, i32 1452, i32 571, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 778, i64 260 }, %struct.hid_device_id { i16 3, i16 0, i32 1452, i32 779, i64 260 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !4141
@.str.2 = private unnamed_addr constant [30 x i8] c"can't alloc apple descriptor\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@macbookair_fn_keys = internal constant [18 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 14, i16 111, i8 0 }, %struct.apple_key_translation { i16 28, i16 110, i8 0 }, %struct.apple_key_translation { i16 59, i16 224, i8 1 }, %struct.apple_key_translation { i16 60, i16 225, i8 1 }, %struct.apple_key_translation { i16 61, i16 120, i8 1 }, %struct.apple_key_translation { i16 62, i16 204, i8 1 }, %struct.apple_key_translation { i16 64, i16 165, i8 1 }, %struct.apple_key_translation { i16 65, i16 164, i8 1 }, %struct.apple_key_translation { i16 66, i16 163, i8 1 }, %struct.apple_key_translation { i16 67, i16 113, i8 1 }, %struct.apple_key_translation { i16 68, i16 114, i8 1 }, %struct.apple_key_translation { i16 87, i16 115, i8 1 }, %struct.apple_key_translation { i16 88, i16 161, i8 1 }, %struct.apple_key_translation { i16 103, i16 104, i8 0 }, %struct.apple_key_translation { i16 108, i16 109, i8 0 }, %struct.apple_key_translation { i16 105, i16 102, i8 0 }, %struct.apple_key_translation { i16 106, i16 107, i8 0 }, %struct.apple_key_translation zeroinitializer], align 16, !dbg !4146
@powerbook_fn_keys = internal constant [16 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 14, i16 111, i8 0 }, %struct.apple_key_translation { i16 59, i16 224, i8 1 }, %struct.apple_key_translation { i16 60, i16 225, i8 1 }, %struct.apple_key_translation { i16 61, i16 113, i8 1 }, %struct.apple_key_translation { i16 62, i16 114, i8 1 }, %struct.apple_key_translation { i16 63, i16 115, i8 1 }, %struct.apple_key_translation { i16 64, i16 69, i8 1 }, %struct.apple_key_translation { i16 65, i16 227, i8 1 }, %struct.apple_key_translation { i16 66, i16 228, i8 1 }, %struct.apple_key_translation { i16 67, i16 229, i8 1 }, %struct.apple_key_translation { i16 68, i16 230, i8 1 }, %struct.apple_key_translation { i16 103, i16 104, i8 0 }, %struct.apple_key_translation { i16 108, i16 109, i8 0 }, %struct.apple_key_translation { i16 105, i16 102, i8 0 }, %struct.apple_key_translation { i16 106, i16 107, i8 0 }, %struct.apple_key_translation zeroinitializer], align 16, !dbg !4157
@apple_fn_keys = internal constant [19 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 14, i16 111, i8 0 }, %struct.apple_key_translation { i16 28, i16 110, i8 0 }, %struct.apple_key_translation { i16 59, i16 224, i8 1 }, %struct.apple_key_translation { i16 60, i16 225, i8 1 }, %struct.apple_key_translation { i16 61, i16 120, i8 1 }, %struct.apple_key_translation { i16 62, i16 204, i8 1 }, %struct.apple_key_translation { i16 63, i16 229, i8 1 }, %struct.apple_key_translation { i16 64, i16 230, i8 1 }, %struct.apple_key_translation { i16 65, i16 165, i8 1 }, %struct.apple_key_translation { i16 66, i16 164, i8 1 }, %struct.apple_key_translation { i16 67, i16 163, i8 1 }, %struct.apple_key_translation { i16 68, i16 113, i8 1 }, %struct.apple_key_translation { i16 87, i16 114, i8 1 }, %struct.apple_key_translation { i16 88, i16 115, i8 1 }, %struct.apple_key_translation { i16 103, i16 104, i8 0 }, %struct.apple_key_translation { i16 108, i16 109, i8 0 }, %struct.apple_key_translation { i16 105, i16 102, i8 0 }, %struct.apple_key_translation { i16 106, i16 107, i8 0 }, %struct.apple_key_translation zeroinitializer], align 16, !dbg !4160
@powerbook_numlock_keys = internal constant [20 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 36, i16 79, i8 0 }, %struct.apple_key_translation { i16 37, i16 80, i8 0 }, %struct.apple_key_translation { i16 38, i16 81, i8 0 }, %struct.apple_key_translation { i16 22, i16 75, i8 0 }, %struct.apple_key_translation { i16 23, i16 76, i8 0 }, %struct.apple_key_translation { i16 24, i16 77, i8 0 }, %struct.apple_key_translation { i16 8, i16 71, i8 0 }, %struct.apple_key_translation { i16 9, i16 72, i8 0 }, %struct.apple_key_translation { i16 10, i16 73, i8 0 }, %struct.apple_key_translation { i16 50, i16 82, i8 0 }, %struct.apple_key_translation { i16 52, i16 83, i8 0 }, %struct.apple_key_translation { i16 53, i16 78, i8 0 }, %struct.apple_key_translation { i16 39, i16 74, i8 0 }, %struct.apple_key_translation { i16 25, i16 55, i8 0 }, %struct.apple_key_translation { i16 12, i16 117, i8 0 }, %struct.apple_key_translation { i16 11, i16 98, i8 0 }, %struct.apple_key_translation { i16 64, i16 69, i8 0 }, %struct.apple_key_translation { i16 96, i16 96, i8 0 }, %struct.apple_key_translation { i16 14, i16 14, i8 0 }, %struct.apple_key_translation zeroinitializer], align 16, !dbg !4165
@apple_iso_keyboard = internal constant [3 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 41, i16 86, i8 0 }, %struct.apple_key_translation { i16 86, i16 41, i8 0 }, %struct.apple_key_translation zeroinitializer], align 16, !dbg !4168
@swapped_option_cmd_keys = internal constant [5 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 56, i16 125, i8 0 }, %struct.apple_key_translation { i16 125, i16 56, i8 0 }, %struct.apple_key_translation { i16 100, i16 126, i8 0 }, %struct.apple_key_translation { i16 126, i16 100, i8 0 }, %struct.apple_key_translation zeroinitializer], align 16, !dbg !4171
@swapped_fn_leftctrl_keys = internal constant [2 x %struct.apple_key_translation] [%struct.apple_key_translation { i16 464, i16 29, i8 0 }, %struct.apple_key_translation zeroinitializer], align 2, !dbg !4176
@.str.5 = private unnamed_addr constant [50 x i8] c"fixing up MacBook JIS keyboard report descriptor\0A\00", align 1
@hid_map_usage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4179
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\014hid_apple: %s: Invalid code %d type %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [78 x i8] c"Fn key not found (Apple Wireless Keyboard clone?), disabling Fn key handling\0A\00", align 1
@llvm.used = appending global [17 x i8*] [i8* bitcast (%struct.kernel_param* @__param_fnmode to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__UNIQUE_ID_fnmodetype204, i32 0, i32 0), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__UNIQUE_ID_fnmode205, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_iso_layout to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_iso_layouttype206, i32 0, i32 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @__UNIQUE_ID_iso_layout207, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_swap_opt_cmd to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_swap_opt_cmdtype208, i32 0, i32 0), i8* getelementptr inbounds ([198 x i8], [198 x i8]* @__UNIQUE_ID_swap_opt_cmd209, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_swap_fn_leftctrl to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_swap_fn_leftctrltype210, i32 0, i32 0), i8* getelementptr inbounds ([172 x i8], [172 x i8]* @__UNIQUE_ID_swap_fn_leftctrl211, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_apple_driver_init212 to i8*), i8* bitcast (void ()* @apple_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_apple_driver_exit to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_file213, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__UNIQUE_ID_license214, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @apple_driver_init() #0 section ".init.text" !dbg !4192 {
entry:
  %call = call i32 @__hid_register_driver(%struct.hid_driver* @apple_driver, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4195
  ret i32 %call, !dbg !4195
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @apple_driver_exit() #0 section ".exit.text" !dbg !4196 {
entry:
  call void @hid_unregister_driver(%struct.hid_driver* @apple_driver) #6, !dbg !4197
  ret void, !dbg !4197
}

; Function Attrs: noredzone
declare dso_local void @hid_unregister_driver(%struct.hid_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__hid_register_driver(%struct.hid_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apple_probe(%struct.hid_device* %hdev, %struct.hid_device_id* %id) #2 !dbg !4198 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %id.addr = alloca %struct.hid_device_id*, align 8
  %quirks = alloca i64, align 8
  %asc = alloca %struct.apple_sc*, align 8
  %connect_mask = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4199, metadata !DIExpression()), !dbg !4200
  store %struct.hid_device_id* %id, %struct.hid_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %id.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.declare(metadata i64* %quirks, metadata !4203, metadata !DIExpression()), !dbg !4204
  %0 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4205
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %0, i32 0, i32 4, !dbg !4206
  %1 = load i64, i64* %driver_data, align 8, !dbg !4206
  store i64 %1, i64* %quirks, align 8, !dbg !4204
  call void @llvm.dbg.declare(metadata %struct.apple_sc** %asc, metadata !4207, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.declare(metadata i32* %connect_mask, metadata !4216, metadata !DIExpression()), !dbg !4217
  store i32 45, i32* %connect_mask, align 4, !dbg !4217
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4218, metadata !DIExpression()), !dbg !4219
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4220
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %2, i32 0, i32 18, !dbg !4221
  %call = call i8* @devm_kzalloc(%struct.device* %dev, i64 112, i32 3264) #6, !dbg !4222
  %3 = bitcast i8* %call to %struct.apple_sc*, !dbg !4222
  store %struct.apple_sc* %3, %struct.apple_sc** %asc, align 8, !dbg !4223
  %4 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4224
  %cmp = icmp eq %struct.apple_sc* %4, null, !dbg !4226
  br i1 %cmp, label %if.then, label %if.end, !dbg !4227

if.then:                                          ; preds = %entry
  %5 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4228
  %dev1 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 18, !dbg !4228
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !4228
  store i32 -12, i32* %retval, align 4, !dbg !4230
  br label %return, !dbg !4230

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %quirks, align 8, !dbg !4231
  %7 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4232
  %quirks2 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %7, i32 0, i32 0, !dbg !4233
  store i64 %6, i64* %quirks2, align 8, !dbg !4234
  %8 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4235
  %9 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4236
  %10 = bitcast %struct.apple_sc* %9 to i8*, !dbg !4236
  call void @hid_set_drvdata(%struct.hid_device* %8, i8* %10) #6, !dbg !4237
  %11 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4238
  %call3 = call i32 @hid_parse(%struct.hid_device* %11) #6, !dbg !4239
  store i32 %call3, i32* %ret, align 4, !dbg !4240
  %12 = load i32, i32* %ret, align 4, !dbg !4241
  %tobool = icmp ne i32 %12, 0, !dbg !4241
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !4243

if.then4:                                         ; preds = %if.end
  %13 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4244
  %dev5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 18, !dbg !4244
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !4244
  %14 = load i32, i32* %ret, align 4, !dbg !4246
  store i32 %14, i32* %retval, align 4, !dbg !4247
  br label %return, !dbg !4247

if.end6:                                          ; preds = %if.end
  %15 = load i64, i64* %quirks, align 8, !dbg !4248
  %and = and i64 %15, 8, !dbg !4250
  %tobool7 = icmp ne i64 %and, 0, !dbg !4250
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4251

if.then8:                                         ; preds = %if.end6
  %16 = load i32, i32* %connect_mask, align 4, !dbg !4252
  %conv = zext i32 %16 to i64, !dbg !4252
  %or = or i64 %conv, 16, !dbg !4252
  %conv9 = trunc i64 %or to i32, !dbg !4252
  store i32 %conv9, i32* %connect_mask, align 4, !dbg !4252
  br label %if.end10, !dbg !4253

if.end10:                                         ; preds = %if.then8, %if.end6
  %17 = load i64, i64* %quirks, align 8, !dbg !4254
  %and11 = and i64 %17, 128, !dbg !4256
  %tobool12 = icmp ne i64 %and11, 0, !dbg !4256
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !4257

if.then13:                                        ; preds = %if.end10
  %18 = load i32, i32* %connect_mask, align 4, !dbg !4258
  %conv14 = zext i32 %18 to i64, !dbg !4258
  %and15 = and i64 %conv14, -2, !dbg !4258
  %conv16 = trunc i64 %and15 to i32, !dbg !4258
  store i32 %conv16, i32* %connect_mask, align 4, !dbg !4258
  br label %if.end17, !dbg !4259

if.end17:                                         ; preds = %if.then13, %if.end10
  %19 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4260
  %20 = load i32, i32* %connect_mask, align 4, !dbg !4261
  %call18 = call i32 @hid_hw_start(%struct.hid_device* %19, i32 %20) #6, !dbg !4262
  store i32 %call18, i32* %ret, align 4, !dbg !4263
  %21 = load i32, i32* %ret, align 4, !dbg !4264
  %tobool19 = icmp ne i32 %21, 0, !dbg !4264
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !4266

if.then20:                                        ; preds = %if.end17
  %22 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4267
  %dev21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 18, !dbg !4267
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !4267
  %23 = load i32, i32* %ret, align 4, !dbg !4269
  store i32 %23, i32* %retval, align 4, !dbg !4270
  br label %return, !dbg !4270

if.end22:                                         ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !4271
  br label %return, !dbg !4271

return:                                           ; preds = %if.end22, %if.then20, %if.then4, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !4272
  ret i32 %24, !dbg !4272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apple_event(%struct.hid_device* %hdev, %struct.hid_field* %field, %struct.hid_usage* %usage, i32 %value) #2 !dbg !4273 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %value.addr = alloca i32, align 4
  %asc = alloca %struct.apple_sc*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4274, metadata !DIExpression()), !dbg !4275
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4276, metadata !DIExpression()), !dbg !4277
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4278, metadata !DIExpression()), !dbg !4279
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4280, metadata !DIExpression()), !dbg !4281
  call void @llvm.dbg.declare(metadata %struct.apple_sc** %asc, metadata !4282, metadata !DIExpression()), !dbg !4283
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4284
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #6, !dbg !4285
  %1 = bitcast i8* %call to %struct.apple_sc*, !dbg !4285
  store %struct.apple_sc* %1, %struct.apple_sc** %asc, align 8, !dbg !4283
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4286
  %claimed = getelementptr inbounds %struct.hid_device, %struct.hid_device* %2, i32 0, i32 24, !dbg !4288
  %3 = load i32, i32* %claimed, align 8, !dbg !4288
  %conv = zext i32 %3 to i64, !dbg !4286
  %and = and i64 %conv, 1, !dbg !4289
  %tobool = icmp ne i64 %and, 0, !dbg !4289
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4290

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4291
  %hidinput = getelementptr inbounds %struct.hid_field, %struct.hid_field* %4, i32 0, i32 19, !dbg !4292
  %5 = load %struct.hid_input*, %struct.hid_input** %hidinput, align 8, !dbg !4292
  %tobool1 = icmp ne %struct.hid_input* %5, null, !dbg !4291
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !4293

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4294
  %type = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %6, i32 0, i32 6, !dbg !4295
  %7 = load i8, i8* %type, align 4, !dbg !4295
  %tobool3 = icmp ne i8 %7, 0, !dbg !4294
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4296

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !4297
  br label %return, !dbg !4297

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4298
  %quirks = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %8, i32 0, i32 0, !dbg !4300
  %9 = load i64, i64* %quirks, align 8, !dbg !4300
  %and4 = and i64 %9, 64, !dbg !4301
  %tobool5 = icmp ne i64 %and4, 0, !dbg !4301
  br i1 %tobool5, label %land.lhs.true, label %if.end14, !dbg !4302

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4303
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %10, i32 0, i32 5, !dbg !4304
  %11 = load i16, i16* %code, align 2, !dbg !4304
  %conv6 = zext i16 %11 to i32, !dbg !4303
  %cmp = icmp eq i32 %conv6, 6, !dbg !4305
  br i1 %cmp, label %if.then8, label %if.end14, !dbg !4306

if.then8:                                         ; preds = %land.lhs.true
  %12 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4307
  %hidinput9 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %12, i32 0, i32 19, !dbg !4309
  %13 = load %struct.hid_input*, %struct.hid_input** %hidinput9, align 8, !dbg !4309
  %input = getelementptr inbounds %struct.hid_input, %struct.hid_input* %13, i32 0, i32 2, !dbg !4310
  %14 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4310
  %15 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4311
  %type10 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %15, i32 0, i32 6, !dbg !4312
  %16 = load i8, i8* %type10, align 4, !dbg !4312
  %conv11 = zext i8 %16 to i32, !dbg !4311
  %17 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4313
  %code12 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 5, !dbg !4314
  %18 = load i16, i16* %code12, align 2, !dbg !4314
  %conv13 = zext i16 %18 to i32, !dbg !4313
  %19 = load i32, i32* %value.addr, align 4, !dbg !4315
  %sub = sub i32 0, %19, !dbg !4316
  call void @input_event(%struct.input_dev* %14, i32 %conv11, i32 %conv13, i32 %sub) #6, !dbg !4317
  store i32 1, i32* %retval, align 4, !dbg !4318
  br label %return, !dbg !4318

if.end14:                                         ; preds = %land.lhs.true, %if.end
  %20 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4319
  %quirks15 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %20, i32 0, i32 0, !dbg !4321
  %21 = load i64, i64* %quirks15, align 8, !dbg !4321
  %and16 = and i64 %21, 4, !dbg !4322
  %tobool17 = icmp ne i64 %and16, 0, !dbg !4322
  br i1 %tobool17, label %land.lhs.true18, label %if.end24, !dbg !4323

land.lhs.true18:                                  ; preds = %if.end14
  %22 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4324
  %23 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4325
  %hidinput19 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %23, i32 0, i32 19, !dbg !4326
  %24 = load %struct.hid_input*, %struct.hid_input** %hidinput19, align 8, !dbg !4326
  %input20 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %24, i32 0, i32 2, !dbg !4327
  %25 = load %struct.input_dev*, %struct.input_dev** %input20, align 8, !dbg !4327
  %26 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4328
  %27 = load i32, i32* %value.addr, align 4, !dbg !4329
  %call21 = call i32 @hidinput_apple_event(%struct.hid_device* %22, %struct.input_dev* %25, %struct.hid_usage* %26, i32 %27) #6, !dbg !4330
  %tobool22 = icmp ne i32 %call21, 0, !dbg !4330
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4331

if.then23:                                        ; preds = %land.lhs.true18
  store i32 1, i32* %retval, align 4, !dbg !4332
  br label %return, !dbg !4332

if.end24:                                         ; preds = %land.lhs.true18, %if.end14
  store i32 0, i32* %retval, align 4, !dbg !4333
  br label %return, !dbg !4333

return:                                           ; preds = %if.end24, %if.then23, %if.then8, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !4334
  ret i32 %28, !dbg !4334
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @apple_report_fixup(%struct.hid_device* %hdev, i8* %rdesc, i32* %rsize) #2 !dbg !4335 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %rdesc.addr = alloca i8*, align 8
  %rsize.addr = alloca i32*, align 8
  %asc = alloca %struct.apple_sc*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  store i8* %rdesc, i8** %rdesc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rdesc.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i32* %rsize, i32** %rsize.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %rsize.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata %struct.apple_sc** %asc, metadata !4342, metadata !DIExpression()), !dbg !4343
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4344
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #6, !dbg !4345
  %1 = bitcast i8* %call to %struct.apple_sc*, !dbg !4345
  store %struct.apple_sc* %1, %struct.apple_sc** %asc, align 8, !dbg !4343
  %2 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4346
  %quirks = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %2, i32 0, i32 0, !dbg !4348
  %3 = load i64, i64* %quirks, align 8, !dbg !4348
  %and = and i64 %3, 1, !dbg !4349
  %tobool = icmp ne i64 %and, 0, !dbg !4349
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4350

land.lhs.true:                                    ; preds = %entry
  %4 = load i32*, i32** %rsize.addr, align 8, !dbg !4351
  %5 = load i32, i32* %4, align 4, !dbg !4352
  %cmp = icmp uge i32 %5, 60, !dbg !4353
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4354

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %rdesc.addr, align 8, !dbg !4355
  %arrayidx = getelementptr i8, i8* %6, i64 53, !dbg !4355
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4355
  %conv = zext i8 %7 to i32, !dbg !4355
  %cmp2 = icmp eq i32 %conv, 101, !dbg !4356
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !4357

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %8 = load i8*, i8** %rdesc.addr, align 8, !dbg !4358
  %arrayidx5 = getelementptr i8, i8* %8, i64 59, !dbg !4358
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !4358
  %conv6 = zext i8 %9 to i32, !dbg !4358
  %cmp7 = icmp eq i32 %conv6, 101, !dbg !4359
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4360

if.then:                                          ; preds = %land.lhs.true4
  %10 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4361
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 18, !dbg !4361
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !4361
  %11 = load i8*, i8** %rdesc.addr, align 8, !dbg !4363
  %arrayidx9 = getelementptr i8, i8* %11, i64 59, !dbg !4363
  store i8 -25, i8* %arrayidx9, align 1, !dbg !4364
  %12 = load i8*, i8** %rdesc.addr, align 8, !dbg !4365
  %arrayidx10 = getelementptr i8, i8* %12, i64 53, !dbg !4365
  store i8 -25, i8* %arrayidx10, align 1, !dbg !4366
  br label %if.end, !dbg !4367

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %13 = load i8*, i8** %rdesc.addr, align 8, !dbg !4368
  ret i8* %13, !dbg !4369
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apple_input_mapping(%struct.hid_device* %hdev, %struct.hid_input* %hi, %struct.hid_field* %field, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4370 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hi.addr = alloca %struct.hid_input*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %asc = alloca %struct.apple_sc*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4371, metadata !DIExpression()), !dbg !4372
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4373, metadata !DIExpression()), !dbg !4374
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4375, metadata !DIExpression()), !dbg !4376
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4377, metadata !DIExpression()), !dbg !4378
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4379, metadata !DIExpression()), !dbg !4380
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.declare(metadata %struct.apple_sc** %asc, metadata !4383, metadata !DIExpression()), !dbg !4384
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4385
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #6, !dbg !4386
  %1 = bitcast i8* %call to %struct.apple_sc*, !dbg !4386
  store %struct.apple_sc* %1, %struct.apple_sc** %asc, align 8, !dbg !4384
  %2 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4387
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %2, i32 0, i32 0, !dbg !4389
  %3 = load i32, i32* %hid, align 4, !dbg !4389
  %cmp = icmp eq i32 %3, 16711683, !dbg !4390
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4391

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4392
  %hid1 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 0, !dbg !4393
  %5 = load i32, i32* %hid1, align 4, !dbg !4393
  %cmp2 = icmp eq i32 %5, -16777213, !dbg !4394
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !4395

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4396
  %hid4 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %6, i32 0, i32 0, !dbg !4397
  %7 = load i32, i32* %hid4, align 4, !dbg !4397
  %cmp5 = icmp eq i32 %7, -16711677, !dbg !4398
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4399

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %8 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4400
  %input = getelementptr inbounds %struct.hid_input, %struct.hid_input* %8, i32 0, i32 2, !dbg !4402
  %9 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4402
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 5, !dbg !4403
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4400
  call void @set_bit(i64 20, i64* %arraydecay) #6, !dbg !4404
  %10 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4405
  %11 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4406
  %12 = load i64**, i64*** %bit.addr, align 8, !dbg !4407
  %13 = load i32*, i32** %max.addr, align 8, !dbg !4408
  call void @hid_map_usage_clear(%struct.hid_input* %10, %struct.hid_usage* %11, i64** %12, i32* %13, i8 zeroext 1, i16 zeroext 464) #6, !dbg !4409
  %14 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4410
  %fn_found = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %14, i32 0, i32 2, !dbg !4411
  store i32 1, i32* %fn_found, align 4, !dbg !4412
  %15 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4413
  %input6 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %15, i32 0, i32 2, !dbg !4414
  %16 = load %struct.input_dev*, %struct.input_dev** %input6, align 8, !dbg !4414
  call void @apple_setup_input(%struct.input_dev* %16) #6, !dbg !4415
  store i32 1, i32* %retval, align 4, !dbg !4416
  br label %return, !dbg !4416

if.end:                                           ; preds = %lor.lhs.false3
  store i32 0, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !4418
  ret i32 %17, !dbg !4418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apple_input_mapped(%struct.hid_device* %hdev, %struct.hid_input* %hi, %struct.hid_field* %field, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4419 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hi.addr = alloca %struct.hid_input*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %asc = alloca %struct.apple_sc*, align 8
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
  call void @llvm.dbg.declare(metadata %struct.apple_sc** %asc, metadata !4432, metadata !DIExpression()), !dbg !4433
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4434
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #6, !dbg !4435
  %1 = bitcast i8* %call to %struct.apple_sc*, !dbg !4435
  store %struct.apple_sc* %1, %struct.apple_sc** %asc, align 8, !dbg !4433
  %2 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4436
  %quirks = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %2, i32 0, i32 0, !dbg !4438
  %3 = load i64, i64* %quirks, align 8, !dbg !4438
  %and = and i64 %3, 32, !dbg !4439
  %tobool = icmp ne i64 %and, 0, !dbg !4439
  br i1 %tobool, label %if.then, label %if.end13, !dbg !4440

if.then:                                          ; preds = %entry
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4441
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 0, !dbg !4444
  %5 = load i32, i32* %hid, align 4, !dbg !4444
  %cmp = icmp eq i32 %5, 65586, !dbg !4445
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4446

if.then1:                                         ; preds = %if.then
  %6 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4447
  %7 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4448
  %8 = load i64**, i64*** %bit.addr, align 8, !dbg !4449
  %9 = load i32*, i32** %max.addr, align 8, !dbg !4450
  call void @hid_map_usage(%struct.hid_input* %6, %struct.hid_usage* %7, i64** %8, i32* %9, i8 zeroext 2, i32 6) #6, !dbg !4451
  br label %if.end12, !dbg !4451

if.else:                                          ; preds = %if.then
  %10 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4452
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %10, i32 0, i32 5, !dbg !4454
  %11 = load i16, i16* %code, align 2, !dbg !4454
  %conv = zext i16 %11 to i32, !dbg !4452
  %cmp2 = icmp eq i32 %conv, 257, !dbg !4455
  br i1 %cmp2, label %if.then4, label %if.else5, !dbg !4456

if.then4:                                         ; preds = %if.else
  %12 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4457
  %13 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4458
  %14 = load i64**, i64*** %bit.addr, align 8, !dbg !4459
  %15 = load i32*, i32** %max.addr, align 8, !dbg !4460
  call void @hid_map_usage(%struct.hid_input* %12, %struct.hid_usage* %13, i64** %14, i32* %15, i8 zeroext 1, i32 258) #6, !dbg !4461
  br label %if.end11, !dbg !4461

if.else5:                                         ; preds = %if.else
  %16 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4462
  %code6 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %16, i32 0, i32 5, !dbg !4464
  %17 = load i16, i16* %code6, align 2, !dbg !4464
  %conv7 = zext i16 %17 to i32, !dbg !4462
  %cmp8 = icmp eq i32 %conv7, 258, !dbg !4465
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !4466

if.then10:                                        ; preds = %if.else5
  %18 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4467
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4468
  %20 = load i64**, i64*** %bit.addr, align 8, !dbg !4469
  %21 = load i32*, i32** %max.addr, align 8, !dbg !4470
  call void @hid_map_usage(%struct.hid_input* %18, %struct.hid_usage* %19, i64** %20, i32* %21, i8 zeroext 1, i32 257) #6, !dbg !4471
  br label %if.end, !dbg !4471

if.end:                                           ; preds = %if.then10, %if.else5
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then1
  br label %if.end13, !dbg !4472

if.end13:                                         ; preds = %if.end12, %entry
  ret i32 0, !dbg !4473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apple_input_configured(%struct.hid_device* %hdev, %struct.hid_input* %hidinput) #2 !dbg !4474 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hidinput.addr = alloca %struct.hid_input*, align 8
  %asc = alloca %struct.apple_sc*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  store %struct.hid_input* %hidinput, %struct.hid_input** %hidinput.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput.addr, metadata !4477, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.declare(metadata %struct.apple_sc** %asc, metadata !4479, metadata !DIExpression()), !dbg !4480
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4481
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #6, !dbg !4482
  %1 = bitcast i8* %call to %struct.apple_sc*, !dbg !4482
  store %struct.apple_sc* %1, %struct.apple_sc** %asc, align 8, !dbg !4480
  %2 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4483
  %quirks = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %2, i32 0, i32 0, !dbg !4485
  %3 = load i64, i64* %quirks, align 8, !dbg !4485
  %and = and i64 %3, 4, !dbg !4486
  %tobool = icmp ne i64 %and, 0, !dbg !4486
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4487

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4488
  %fn_found = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %4, i32 0, i32 2, !dbg !4489
  %5 = load i32, i32* %fn_found, align 4, !dbg !4489
  %tobool1 = icmp ne i32 %5, 0, !dbg !4488
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4490

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4491
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 18, !dbg !4491
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !4491
  %7 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4493
  %quirks2 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %7, i32 0, i32 0, !dbg !4494
  store i64 0, i64* %quirks2, align 8, !dbg !4495
  br label %if.end, !dbg !4496

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret i32 0, !dbg !4497
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4498 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4503, metadata !DIExpression()), !dbg !4504
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4507
  %1 = load i64, i64* %size.addr, align 8, !dbg !4508
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4509
  %or = or i32 %2, 256, !dbg !4510
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !4511
  ret i8* %call, !dbg !4512
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_set_drvdata(%struct.hid_device* %hdev, i8* %data) #2 !dbg !4513 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4516, metadata !DIExpression()), !dbg !4517
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4520
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !4521
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4522
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !4523
  ret void, !dbg !4524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_parse(%struct.hid_device* %hdev) #2 !dbg !4525 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4528
  %call = call i32 @hid_open_report(%struct.hid_device* %0) #6, !dbg !4529
  ret i32 %call, !dbg !4530
}

; Function Attrs: noredzone
declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4531 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4534, metadata !DIExpression()), !dbg !4535
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4536, metadata !DIExpression()), !dbg !4537
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4538
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4539
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4540
  store i8* %0, i8** %driver_data, align 8, !dbg !4541
  ret void, !dbg !4542
}

; Function Attrs: noredzone
declare dso_local i32 @hid_open_report(%struct.hid_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hid_get_drvdata(%struct.hid_device* %hdev) #2 !dbg !4543 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4546, metadata !DIExpression()), !dbg !4547
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4548
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !4549
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !4550
  ret i8* %call, !dbg !4551
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hidinput_apple_event(%struct.hid_device* %hid, %struct.input_dev* %input, %struct.hid_usage* %usage, i32 %value) #2 !dbg !4552 {
entry:
  %retval = alloca i32, align 4
  %hid.addr = alloca %struct.hid_device*, align 8
  %input.addr = alloca %struct.input_dev*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %value.addr = alloca i32, align 4
  %asc = alloca %struct.apple_sc*, align 8
  %trans = alloca %struct.apple_key_translation*, align 8
  %table = alloca %struct.apple_key_translation*, align 8
  %do_translate = alloca i8, align 1
  %code = alloca i16, align 2
  %fn_keycode = alloca i16, align 2
  store %struct.hid_device* %hid, %struct.hid_device** %hid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hid.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4559, metadata !DIExpression()), !dbg !4560
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4561, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.declare(metadata %struct.apple_sc** %asc, metadata !4563, metadata !DIExpression()), !dbg !4564
  %0 = load %struct.hid_device*, %struct.hid_device** %hid.addr, align 8, !dbg !4565
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #6, !dbg !4566
  %1 = bitcast i8* %call to %struct.apple_sc*, !dbg !4566
  store %struct.apple_sc* %1, %struct.apple_sc** %asc, align 8, !dbg !4564
  call void @llvm.dbg.declare(metadata %struct.apple_key_translation** %trans, metadata !4567, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.declare(metadata %struct.apple_key_translation** %table, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata i8* %do_translate, metadata !4572, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.declare(metadata i16* %code, metadata !4574, metadata !DIExpression()), !dbg !4575
  store i16 0, i16* %code, align 2, !dbg !4575
  call void @llvm.dbg.declare(metadata i16* %fn_keycode, metadata !4576, metadata !DIExpression()), !dbg !4577
  %2 = load i32, i32* @swap_fn_leftctrl, align 4, !dbg !4578
  %tobool = icmp ne i32 %2, 0, !dbg !4579
  %3 = zext i1 %tobool to i64, !dbg !4579
  %cond = select i1 %tobool, i32 29, i32 464, !dbg !4579
  %conv = trunc i32 %cond to i16, !dbg !4579
  store i16 %conv, i16* %fn_keycode, align 2, !dbg !4577
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4580
  %code1 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 5, !dbg !4582
  %5 = load i16, i16* %code1, align 2, !dbg !4582
  %conv2 = zext i16 %5 to i32, !dbg !4580
  %6 = load i16, i16* %fn_keycode, align 2, !dbg !4583
  %conv3 = zext i16 %6 to i32, !dbg !4583
  %cmp = icmp eq i32 %conv2, %conv3, !dbg !4584
  br i1 %cmp, label %if.then, label %if.end, !dbg !4585

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %value.addr, align 4, !dbg !4586
  %tobool5 = icmp ne i32 %7, 0, !dbg !4588
  %lnot = xor i1 %tobool5, true, !dbg !4588
  %lnot6 = xor i1 %lnot, true, !dbg !4589
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4589
  %8 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4590
  %fn_on = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %8, i32 0, i32 1, !dbg !4591
  store i32 %lnot.ext, i32* %fn_on, align 8, !dbg !4592
  %9 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4593
  %10 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4594
  %type = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %10, i32 0, i32 6, !dbg !4595
  %11 = load i8, i8* %type, align 4, !dbg !4595
  %conv7 = zext i8 %11 to i32, !dbg !4594
  %12 = load i32, i32* %value.addr, align 4, !dbg !4596
  call void @input_event(%struct.input_dev* %9, i32 %conv7, i32 464, i32 %12) #6, !dbg !4597
  store i32 1, i32* %retval, align 4, !dbg !4598
  br label %return, !dbg !4598

if.end:                                           ; preds = %entry
  %13 = load i32, i32* @fnmode, align 4, !dbg !4599
  %tobool8 = icmp ne i32 %13, 0, !dbg !4599
  br i1 %tobool8, label %if.then9, label %if.end109, !dbg !4601

if.then9:                                         ; preds = %if.end
  %14 = load %struct.hid_device*, %struct.hid_device** %hid.addr, align 8, !dbg !4602
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 11, !dbg !4605
  %15 = load i32, i32* %product, align 4, !dbg !4605
  %cmp10 = icmp uge i32 %15, 575, !dbg !4606
  br i1 %cmp10, label %land.lhs.true, label %if.else, !dbg !4607

land.lhs.true:                                    ; preds = %if.then9
  %16 = load %struct.hid_device*, %struct.hid_device** %hid.addr, align 8, !dbg !4608
  %product12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 11, !dbg !4609
  %17 = load i32, i32* %product12, align 4, !dbg !4609
  %cmp13 = icmp ule i32 %17, 580, !dbg !4610
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !4611

if.then15:                                        ; preds = %land.lhs.true
  store %struct.apple_key_translation* getelementptr inbounds ([18 x %struct.apple_key_translation], [18 x %struct.apple_key_translation]* @macbookair_fn_keys, i64 0, i64 0), %struct.apple_key_translation** %table, align 8, !dbg !4612
  br label %if.end25, !dbg !4613

if.else:                                          ; preds = %land.lhs.true, %if.then9
  %18 = load %struct.hid_device*, %struct.hid_device** %hid.addr, align 8, !dbg !4614
  %product16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 11, !dbg !4616
  %19 = load i32, i32* %product16, align 4, !dbg !4616
  %cmp17 = icmp ult i32 %19, 541, !dbg !4617
  br i1 %cmp17, label %if.then22, label %lor.lhs.false, !dbg !4618

lor.lhs.false:                                    ; preds = %if.else
  %20 = load %struct.hid_device*, %struct.hid_device** %hid.addr, align 8, !dbg !4619
  %product19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 11, !dbg !4620
  %21 = load i32, i32* %product19, align 4, !dbg !4620
  %cmp20 = icmp uge i32 %21, 768, !dbg !4621
  br i1 %cmp20, label %if.then22, label %if.else23, !dbg !4622

if.then22:                                        ; preds = %lor.lhs.false, %if.else
  store %struct.apple_key_translation* getelementptr inbounds ([16 x %struct.apple_key_translation], [16 x %struct.apple_key_translation]* @powerbook_fn_keys, i64 0, i64 0), %struct.apple_key_translation** %table, align 8, !dbg !4623
  br label %if.end24, !dbg !4624

if.else23:                                        ; preds = %lor.lhs.false
  store %struct.apple_key_translation* getelementptr inbounds ([19 x %struct.apple_key_translation], [19 x %struct.apple_key_translation]* @apple_fn_keys, i64 0, i64 0), %struct.apple_key_translation** %table, align 8, !dbg !4625
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then15
  %22 = load %struct.apple_key_translation*, %struct.apple_key_translation** %table, align 8, !dbg !4626
  %23 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4627
  %code26 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 5, !dbg !4628
  %24 = load i16, i16* %code26, align 2, !dbg !4628
  %call27 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* %22, i16 zeroext %24) #6, !dbg !4629
  store %struct.apple_key_translation* %call27, %struct.apple_key_translation** %trans, align 8, !dbg !4630
  %25 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4631
  %tobool28 = icmp ne %struct.apple_key_translation* %25, null, !dbg !4631
  br i1 %tobool28, label %if.then29, label %if.end73, !dbg !4633

if.then29:                                        ; preds = %if.end25
  %26 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4634
  %from = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %26, i32 0, i32 0, !dbg !4637
  %27 = load i16, i16* %from, align 2, !dbg !4637
  %conv30 = zext i16 %27 to i64, !dbg !4634
  %28 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4638
  %key = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 27, !dbg !4639
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %key, i64 0, i64 0, !dbg !4638
  %call31 = call zeroext i1 @test_bit(i64 %conv30, i64* %arraydecay) #6, !dbg !4640
  br i1 %call31, label %if.then32, label %if.else34, !dbg !4641

if.then32:                                        ; preds = %if.then29
  %29 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4642
  %from33 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %29, i32 0, i32 0, !dbg !4643
  %30 = load i16, i16* %from33, align 2, !dbg !4643
  store i16 %30, i16* %code, align 2, !dbg !4644
  br label %if.end42, !dbg !4645

if.else34:                                        ; preds = %if.then29
  %31 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4646
  %to = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %31, i32 0, i32 1, !dbg !4648
  %32 = load i16, i16* %to, align 2, !dbg !4648
  %conv35 = zext i16 %32 to i64, !dbg !4646
  %33 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4649
  %key36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 27, !dbg !4650
  %arraydecay37 = getelementptr inbounds [12 x i64], [12 x i64]* %key36, i64 0, i64 0, !dbg !4649
  %call38 = call zeroext i1 @test_bit(i64 %conv35, i64* %arraydecay37) #6, !dbg !4651
  br i1 %call38, label %if.then39, label %if.end41, !dbg !4652

if.then39:                                        ; preds = %if.else34
  %34 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4653
  %to40 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %34, i32 0, i32 1, !dbg !4654
  %35 = load i16, i16* %to40, align 2, !dbg !4654
  store i16 %35, i16* %code, align 2, !dbg !4655
  br label %if.end41, !dbg !4656

if.end41:                                         ; preds = %if.then39, %if.else34
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then32
  %36 = load i16, i16* %code, align 2, !dbg !4657
  %tobool43 = icmp ne i16 %36, 0, !dbg !4657
  br i1 %tobool43, label %if.end69, label %if.then44, !dbg !4659

if.then44:                                        ; preds = %if.end42
  %37 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4660
  %flags = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %37, i32 0, i32 2, !dbg !4663
  %38 = load i8, i8* %flags, align 2, !dbg !4663
  %conv45 = zext i8 %38 to i32, !dbg !4660
  %and = and i32 %conv45, 1, !dbg !4664
  %tobool46 = icmp ne i32 %and, 0, !dbg !4664
  br i1 %tobool46, label %if.then47, label %if.else56, !dbg !4665

if.then47:                                        ; preds = %if.then44
  %39 = load i32, i32* @fnmode, align 4, !dbg !4666
  switch i32 %39, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb52
  ], !dbg !4668

sw.bb:                                            ; preds = %if.then47
  %40 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4669
  %fn_on48 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %40, i32 0, i32 1, !dbg !4671
  %41 = load i32, i32* %fn_on48, align 8, !dbg !4671
  %tobool49 = icmp ne i32 %41, 0, !dbg !4672
  %lnot50 = xor i1 %tobool49, true, !dbg !4672
  %frombool = zext i1 %lnot50 to i8, !dbg !4673
  store i8 %frombool, i8* %do_translate, align 1, !dbg !4673
  br label %sw.epilog, !dbg !4674

sw.bb52:                                          ; preds = %if.then47
  %42 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4675
  %fn_on53 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %42, i32 0, i32 1, !dbg !4676
  %43 = load i32, i32* %fn_on53, align 8, !dbg !4676
  %tobool54 = icmp ne i32 %43, 0, !dbg !4675
  %frombool55 = zext i1 %tobool54 to i8, !dbg !4677
  store i8 %frombool55, i8* %do_translate, align 1, !dbg !4677
  br label %sw.epilog, !dbg !4678

sw.default:                                       ; preds = %if.then47
  store i8 0, i8* %do_translate, align 1, !dbg !4679
  br label %sw.epilog, !dbg !4680

sw.epilog:                                        ; preds = %sw.default, %sw.bb52, %sw.bb
  br label %if.end60, !dbg !4681

if.else56:                                        ; preds = %if.then44
  %44 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4682
  %fn_on57 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %44, i32 0, i32 1, !dbg !4684
  %45 = load i32, i32* %fn_on57, align 8, !dbg !4684
  %tobool58 = icmp ne i32 %45, 0, !dbg !4682
  %frombool59 = zext i1 %tobool58 to i8, !dbg !4685
  store i8 %frombool59, i8* %do_translate, align 1, !dbg !4685
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %sw.epilog
  %46 = load i8, i8* %do_translate, align 1, !dbg !4686
  %tobool61 = trunc i8 %46 to i1, !dbg !4686
  br i1 %tobool61, label %cond.true, label %cond.false, !dbg !4686

cond.true:                                        ; preds = %if.end60
  %47 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4687
  %to63 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %47, i32 0, i32 1, !dbg !4688
  %48 = load i16, i16* %to63, align 2, !dbg !4688
  %conv64 = zext i16 %48 to i32, !dbg !4687
  br label %cond.end, !dbg !4686

cond.false:                                       ; preds = %if.end60
  %49 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4689
  %from65 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %49, i32 0, i32 0, !dbg !4690
  %50 = load i16, i16* %from65, align 2, !dbg !4690
  %conv66 = zext i16 %50 to i32, !dbg !4689
  br label %cond.end, !dbg !4686

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond67 = phi i32 [ %conv64, %cond.true ], [ %conv66, %cond.false ], !dbg !4686
  %conv68 = trunc i32 %cond67 to i16, !dbg !4686
  store i16 %conv68, i16* %code, align 2, !dbg !4691
  br label %if.end69, !dbg !4692

if.end69:                                         ; preds = %cond.end, %if.end42
  %51 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4693
  %52 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4694
  %type70 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %52, i32 0, i32 6, !dbg !4695
  %53 = load i8, i8* %type70, align 4, !dbg !4695
  %conv71 = zext i8 %53 to i32, !dbg !4694
  %54 = load i16, i16* %code, align 2, !dbg !4696
  %conv72 = zext i16 %54 to i32, !dbg !4696
  %55 = load i32, i32* %value.addr, align 4, !dbg !4697
  call void @input_event(%struct.input_dev* %51, i32 %conv71, i32 %conv72, i32 %55) #6, !dbg !4698
  store i32 1, i32* %retval, align 4, !dbg !4699
  br label %return, !dbg !4699

if.end73:                                         ; preds = %if.end25
  %56 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4700
  %quirks = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %56, i32 0, i32 0, !dbg !4702
  %57 = load i64, i64* %quirks, align 8, !dbg !4702
  %and74 = and i64 %57, 256, !dbg !4703
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4703
  br i1 %tobool75, label %land.lhs.true76, label %if.end108, !dbg !4704

land.lhs.true76:                                  ; preds = %if.end73
  %58 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4705
  %code77 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %58, i32 0, i32 5, !dbg !4706
  %59 = load i16, i16* %code77, align 2, !dbg !4706
  %conv78 = zext i16 %59 to i64, !dbg !4705
  %60 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4707
  %pressed_numlock = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %60, i32 0, i32 3, !dbg !4708
  %arraydecay79 = getelementptr inbounds [12 x i64], [12 x i64]* %pressed_numlock, i64 0, i64 0, !dbg !4707
  %call80 = call zeroext i1 @test_bit(i64 %conv78, i64* %arraydecay79) #6, !dbg !4709
  br i1 %call80, label %if.then86, label %lor.lhs.false82, !dbg !4710

lor.lhs.false82:                                  ; preds = %land.lhs.true76
  %61 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4711
  %led = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 28, !dbg !4712
  %arraydecay83 = getelementptr inbounds [1 x i64], [1 x i64]* %led, i64 0, i64 0, !dbg !4711
  %call84 = call zeroext i1 @test_bit(i64 0, i64* %arraydecay83) #6, !dbg !4713
  br i1 %call84, label %if.then86, label %if.end108, !dbg !4714

if.then86:                                        ; preds = %lor.lhs.false82, %land.lhs.true76
  %62 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4715
  %code87 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %62, i32 0, i32 5, !dbg !4717
  %63 = load i16, i16* %code87, align 2, !dbg !4717
  %call88 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* getelementptr inbounds ([20 x %struct.apple_key_translation], [20 x %struct.apple_key_translation]* @powerbook_numlock_keys, i64 0, i64 0), i16 zeroext %63) #6, !dbg !4718
  store %struct.apple_key_translation* %call88, %struct.apple_key_translation** %trans, align 8, !dbg !4719
  %64 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4720
  %tobool89 = icmp ne %struct.apple_key_translation* %64, null, !dbg !4720
  br i1 %tobool89, label %if.then90, label %if.end107, !dbg !4722

if.then90:                                        ; preds = %if.then86
  %65 = load i32, i32* %value.addr, align 4, !dbg !4723
  %tobool91 = icmp ne i32 %65, 0, !dbg !4723
  br i1 %tobool91, label %if.then92, label %if.else97, !dbg !4726

if.then92:                                        ; preds = %if.then90
  %66 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4727
  %code93 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %66, i32 0, i32 5, !dbg !4728
  %67 = load i16, i16* %code93, align 2, !dbg !4728
  %conv94 = zext i16 %67 to i64, !dbg !4727
  %68 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4729
  %pressed_numlock95 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %68, i32 0, i32 3, !dbg !4730
  %arraydecay96 = getelementptr inbounds [12 x i64], [12 x i64]* %pressed_numlock95, i64 0, i64 0, !dbg !4729
  call void @set_bit(i64 %conv94, i64* %arraydecay96) #6, !dbg !4731
  br label %if.end102, !dbg !4731

if.else97:                                        ; preds = %if.then90
  %69 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4732
  %code98 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %69, i32 0, i32 5, !dbg !4733
  %70 = load i16, i16* %code98, align 2, !dbg !4733
  %conv99 = zext i16 %70 to i64, !dbg !4732
  %71 = load %struct.apple_sc*, %struct.apple_sc** %asc, align 8, !dbg !4734
  %pressed_numlock100 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %71, i32 0, i32 3, !dbg !4735
  %arraydecay101 = getelementptr inbounds [12 x i64], [12 x i64]* %pressed_numlock100, i64 0, i64 0, !dbg !4734
  call void @clear_bit(i64 %conv99, i64* %arraydecay101) #6, !dbg !4736
  br label %if.end102

if.end102:                                        ; preds = %if.else97, %if.then92
  %72 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4737
  %73 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4738
  %type103 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %73, i32 0, i32 6, !dbg !4739
  %74 = load i8, i8* %type103, align 4, !dbg !4739
  %conv104 = zext i8 %74 to i32, !dbg !4738
  %75 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4740
  %to105 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %75, i32 0, i32 1, !dbg !4741
  %76 = load i16, i16* %to105, align 2, !dbg !4741
  %conv106 = zext i16 %76 to i32, !dbg !4740
  %77 = load i32, i32* %value.addr, align 4, !dbg !4742
  call void @input_event(%struct.input_dev* %72, i32 %conv104, i32 %conv106, i32 %77) #6, !dbg !4743
  br label %if.end107, !dbg !4744

if.end107:                                        ; preds = %if.end102, %if.then86
  store i32 1, i32* %retval, align 4, !dbg !4745
  br label %return, !dbg !4745

if.end108:                                        ; preds = %lor.lhs.false82, %if.end73
  br label %if.end109, !dbg !4746

if.end109:                                        ; preds = %if.end108, %if.end
  %78 = load i32, i32* @iso_layout, align 4, !dbg !4747
  %tobool110 = icmp ne i32 %78, 0, !dbg !4747
  br i1 %tobool110, label %if.then111, label %if.end125, !dbg !4749

if.then111:                                       ; preds = %if.end109
  %79 = load %struct.hid_device*, %struct.hid_device** %hid.addr, align 8, !dbg !4750
  %country = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 14, !dbg !4753
  %80 = load i32, i32* %country, align 8, !dbg !4753
  %cmp112 = icmp eq i32 %80, 13, !dbg !4754
  br i1 %cmp112, label %if.then114, label %if.end124, !dbg !4755

if.then114:                                       ; preds = %if.then111
  %81 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4756
  %code115 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %81, i32 0, i32 5, !dbg !4758
  %82 = load i16, i16* %code115, align 2, !dbg !4758
  %call116 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* getelementptr inbounds ([3 x %struct.apple_key_translation], [3 x %struct.apple_key_translation]* @apple_iso_keyboard, i64 0, i64 0), i16 zeroext %82) #6, !dbg !4759
  store %struct.apple_key_translation* %call116, %struct.apple_key_translation** %trans, align 8, !dbg !4760
  %83 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4761
  %tobool117 = icmp ne %struct.apple_key_translation* %83, null, !dbg !4761
  br i1 %tobool117, label %if.then118, label %if.end123, !dbg !4763

if.then118:                                       ; preds = %if.then114
  %84 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4764
  %85 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4766
  %type119 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %85, i32 0, i32 6, !dbg !4767
  %86 = load i8, i8* %type119, align 4, !dbg !4767
  %conv120 = zext i8 %86 to i32, !dbg !4766
  %87 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4768
  %to121 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %87, i32 0, i32 1, !dbg !4769
  %88 = load i16, i16* %to121, align 2, !dbg !4769
  %conv122 = zext i16 %88 to i32, !dbg !4768
  %89 = load i32, i32* %value.addr, align 4, !dbg !4770
  call void @input_event(%struct.input_dev* %84, i32 %conv120, i32 %conv122, i32 %89) #6, !dbg !4771
  store i32 1, i32* %retval, align 4, !dbg !4772
  br label %return, !dbg !4772

if.end123:                                        ; preds = %if.then114
  br label %if.end124, !dbg !4773

if.end124:                                        ; preds = %if.end123, %if.then111
  br label %if.end125, !dbg !4774

if.end125:                                        ; preds = %if.end124, %if.end109
  %90 = load i32, i32* @swap_opt_cmd, align 4, !dbg !4775
  %tobool126 = icmp ne i32 %90, 0, !dbg !4775
  br i1 %tobool126, label %if.then127, label %if.end137, !dbg !4777

if.then127:                                       ; preds = %if.end125
  %91 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4778
  %code128 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %91, i32 0, i32 5, !dbg !4780
  %92 = load i16, i16* %code128, align 2, !dbg !4780
  %call129 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* getelementptr inbounds ([5 x %struct.apple_key_translation], [5 x %struct.apple_key_translation]* @swapped_option_cmd_keys, i64 0, i64 0), i16 zeroext %92) #6, !dbg !4781
  store %struct.apple_key_translation* %call129, %struct.apple_key_translation** %trans, align 8, !dbg !4782
  %93 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4783
  %tobool130 = icmp ne %struct.apple_key_translation* %93, null, !dbg !4783
  br i1 %tobool130, label %if.then131, label %if.end136, !dbg !4785

if.then131:                                       ; preds = %if.then127
  %94 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4786
  %95 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4788
  %type132 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %95, i32 0, i32 6, !dbg !4789
  %96 = load i8, i8* %type132, align 4, !dbg !4789
  %conv133 = zext i8 %96 to i32, !dbg !4788
  %97 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4790
  %to134 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %97, i32 0, i32 1, !dbg !4791
  %98 = load i16, i16* %to134, align 2, !dbg !4791
  %conv135 = zext i16 %98 to i32, !dbg !4790
  %99 = load i32, i32* %value.addr, align 4, !dbg !4792
  call void @input_event(%struct.input_dev* %94, i32 %conv133, i32 %conv135, i32 %99) #6, !dbg !4793
  store i32 1, i32* %retval, align 4, !dbg !4794
  br label %return, !dbg !4794

if.end136:                                        ; preds = %if.then127
  br label %if.end137, !dbg !4795

if.end137:                                        ; preds = %if.end136, %if.end125
  %100 = load i32, i32* @swap_fn_leftctrl, align 4, !dbg !4796
  %tobool138 = icmp ne i32 %100, 0, !dbg !4796
  br i1 %tobool138, label %if.then139, label %if.end149, !dbg !4798

if.then139:                                       ; preds = %if.end137
  %101 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4799
  %code140 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %101, i32 0, i32 5, !dbg !4801
  %102 = load i16, i16* %code140, align 2, !dbg !4801
  %call141 = call %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* getelementptr inbounds ([2 x %struct.apple_key_translation], [2 x %struct.apple_key_translation]* @swapped_fn_leftctrl_keys, i64 0, i64 0), i16 zeroext %102) #6, !dbg !4802
  store %struct.apple_key_translation* %call141, %struct.apple_key_translation** %trans, align 8, !dbg !4803
  %103 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4804
  %tobool142 = icmp ne %struct.apple_key_translation* %103, null, !dbg !4804
  br i1 %tobool142, label %if.then143, label %if.end148, !dbg !4806

if.then143:                                       ; preds = %if.then139
  %104 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !4807
  %105 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4809
  %type144 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %105, i32 0, i32 6, !dbg !4810
  %106 = load i8, i8* %type144, align 4, !dbg !4810
  %conv145 = zext i8 %106 to i32, !dbg !4809
  %107 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4811
  %to146 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %107, i32 0, i32 1, !dbg !4812
  %108 = load i16, i16* %to146, align 2, !dbg !4812
  %conv147 = zext i16 %108 to i32, !dbg !4811
  %109 = load i32, i32* %value.addr, align 4, !dbg !4813
  call void @input_event(%struct.input_dev* %104, i32 %conv145, i32 %conv147, i32 %109) #6, !dbg !4814
  store i32 1, i32* %retval, align 4, !dbg !4815
  br label %return, !dbg !4815

if.end148:                                        ; preds = %if.then139
  br label %if.end149, !dbg !4816

if.end149:                                        ; preds = %if.end148, %if.end137
  store i32 0, i32* %retval, align 4, !dbg !4817
  br label %return, !dbg !4817

return:                                           ; preds = %if.end149, %if.then143, %if.then131, %if.then118, %if.end107, %if.end69, %if.then
  %110 = load i32, i32* %retval, align 4, !dbg !4818
  ret i32 %110, !dbg !4818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !4819 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4826
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4827
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4827
  ret i8* %1, !dbg !4828
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.apple_key_translation* @apple_find_translation(%struct.apple_key_translation* %table, i16 zeroext %from) #2 !dbg !4829 {
entry:
  %retval = alloca %struct.apple_key_translation*, align 8
  %table.addr = alloca %struct.apple_key_translation*, align 8
  %from.addr = alloca i16, align 2
  %trans = alloca %struct.apple_key_translation*, align 8
  store %struct.apple_key_translation* %table, %struct.apple_key_translation** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.apple_key_translation** %table.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store i16 %from, i16* %from.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %from.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.declare(metadata %struct.apple_key_translation** %trans, metadata !4836, metadata !DIExpression()), !dbg !4837
  %0 = load %struct.apple_key_translation*, %struct.apple_key_translation** %table.addr, align 8, !dbg !4838
  store %struct.apple_key_translation* %0, %struct.apple_key_translation** %trans, align 8, !dbg !4840
  br label %for.cond, !dbg !4841

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4842
  %from1 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %1, i32 0, i32 0, !dbg !4844
  %2 = load i16, i16* %from1, align 2, !dbg !4844
  %tobool = icmp ne i16 %2, 0, !dbg !4845
  br i1 %tobool, label %for.body, label %for.end, !dbg !4845

for.body:                                         ; preds = %for.cond
  %3 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4846
  %from2 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %3, i32 0, i32 0, !dbg !4848
  %4 = load i16, i16* %from2, align 2, !dbg !4848
  %conv = zext i16 %4 to i32, !dbg !4846
  %5 = load i16, i16* %from.addr, align 2, !dbg !4849
  %conv3 = zext i16 %5 to i32, !dbg !4849
  %cmp = icmp eq i32 %conv, %conv3, !dbg !4850
  br i1 %cmp, label %if.then, label %if.end, !dbg !4851

if.then:                                          ; preds = %for.body
  %6 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4852
  store %struct.apple_key_translation* %6, %struct.apple_key_translation** %retval, align 8, !dbg !4853
  br label %return, !dbg !4853

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4849

for.inc:                                          ; preds = %if.end
  %7 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !4854
  %incdec.ptr = getelementptr %struct.apple_key_translation, %struct.apple_key_translation* %7, i32 1, !dbg !4854
  store %struct.apple_key_translation* %incdec.ptr, %struct.apple_key_translation** %trans, align 8, !dbg !4854
  br label %for.cond, !dbg !4855, !llvm.loop !4856

for.end:                                          ; preds = %for.cond
  store %struct.apple_key_translation* null, %struct.apple_key_translation** %retval, align 8, !dbg !4858
  br label %return, !dbg !4858

return:                                           ; preds = %for.end, %if.then
  %8 = load %struct.apple_key_translation*, %struct.apple_key_translation** %retval, align 8, !dbg !4859
  ret %struct.apple_key_translation* %8, !dbg !4859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !4860 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4867, metadata !DIExpression()), !dbg !4870
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4872, metadata !DIExpression()), !dbg !4873
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4874, metadata !DIExpression()), !dbg !4875
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4876, metadata !DIExpression()), !dbg !4878
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4880, metadata !DIExpression()), !dbg !4881
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4882, metadata !DIExpression()), !dbg !4890
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4892, metadata !DIExpression()), !dbg !4893
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4898
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4899
  %div = sdiv i64 %1, 64, !dbg !4899
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4900
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4898
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4901
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4902
  %conv.i = trunc i64 %4 to i32, !dbg !4902
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #8, !dbg !4903
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4904
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4904
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #8, !dbg !4904
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4905
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4905
  br i1 %8, label %cond.true, label %cond.false, !dbg !4905

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4905
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4905
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4906
  %and.i = and i64 %11, 63, !dbg !4907
  %shl.i = shl i64 1, %and.i, !dbg !4908
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4909
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4910
  %shr.i = ashr i64 %13, 6, !dbg !4911
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4909
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4909
  %and1.i = and i64 %shl.i, %14, !dbg !4912
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4913
  %conv = zext i1 %cmp.i to i32, !dbg !4905
  br label %cond.end, !dbg !4905

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4905
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4905
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4914
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4915
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !4916, !srcloc !4917
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4916
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4918
  %tobool.i = trunc i8 %20 to i1, !dbg !4918
  %conv2 = zext i1 %tobool.i to i32, !dbg !4905
  br label %cond.end, !dbg !4905

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4905
  %tobool = icmp ne i32 %cond, 0, !dbg !4905
  ret i1 %tobool, !dbg !4919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !4920 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4925, metadata !DIExpression()), !dbg !4927
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4929, metadata !DIExpression()), !dbg !4930
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4931, metadata !DIExpression()), !dbg !4933
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4935, metadata !DIExpression()), !dbg !4936
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4941
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4942
  %div = sdiv i64 %1, 64, !dbg !4942
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4943
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4941
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4944
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4945
  %conv.i = trunc i64 %4 to i32, !dbg !4945
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4946
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4947
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4947
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !4947
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4948
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4949
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4950
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !4952
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4953

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4954
  %12 = bitcast i64* %11 to i8*, !dbg !4954
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4954
  %shr.i = ashr i64 %13, 3, !dbg !4954
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4954
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4956
  %and.i = and i64 %14, 7, !dbg !4956
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4956
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4956
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !4957, !srcloc !4958
  br label %arch_set_bit.exit, !dbg !4959

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4960
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4962
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !4963, !srcloc !4964
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4965
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !4966 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4967, metadata !DIExpression()), !dbg !4969
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4971, metadata !DIExpression()), !dbg !4972
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4931, metadata !DIExpression()), !dbg !4973
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4935, metadata !DIExpression()), !dbg !4975
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4976, metadata !DIExpression()), !dbg !4977
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4978, metadata !DIExpression()), !dbg !4979
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4980
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4981
  %div = sdiv i64 %1, 64, !dbg !4981
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4982
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4980
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4983
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4984
  %conv.i = trunc i64 %4 to i32, !dbg !4984
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !4985
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4986
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4986
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #8, !dbg !4986
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4987
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4988
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4989
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !4991
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4992

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4993
  %12 = bitcast i64* %11 to i8*, !dbg !4993
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4993
  %shr.i = ashr i64 %13, 3, !dbg !4993
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4993
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4995
  %and.i = and i64 %14, 7, !dbg !4995
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4995
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4995
  %neg.i = xor i32 %shl.i, -1, !dbg !4996
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #9, !dbg !4997, !srcloc !4998
  br label %arch_clear_bit.exit, !dbg !4999

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5000
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5002
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !5003, !srcloc !5004
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5005
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !5006 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5010, metadata !DIExpression()), !dbg !5011
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5012, metadata !DIExpression()), !dbg !5013
  ret i1 true, !dbg !5014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5015 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5021, metadata !DIExpression()), !dbg !5022
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5023, metadata !DIExpression()), !dbg !5024
  ret void, !dbg !5025
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5026 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5027, metadata !DIExpression()), !dbg !5028
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  ret i1 true, !dbg !5031
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_map_usage_clear(%struct.hid_input* %hidinput, %struct.hid_usage* %usage, i64** %bit, i32* %max, i8 zeroext %type, i16 zeroext %c) #2 !dbg !5032 {
entry:
  %hidinput.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store %struct.hid_input* %hidinput, %struct.hid_input** %hidinput.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  store i16 %c, i16* %c.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  %0 = load %struct.hid_input*, %struct.hid_input** %hidinput.addr, align 8, !dbg !5047
  %1 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5048
  %2 = load i64**, i64*** %bit.addr, align 8, !dbg !5049
  %3 = load i32*, i32** %max.addr, align 8, !dbg !5050
  %4 = load i8, i8* %type.addr, align 1, !dbg !5051
  %5 = load i16, i16* %c.addr, align 2, !dbg !5052
  %conv = zext i16 %5 to i32, !dbg !5052
  call void @hid_map_usage(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3, i8 zeroext %4, i32 %conv) #6, !dbg !5053
  %6 = load i64**, i64*** %bit.addr, align 8, !dbg !5054
  %7 = load i64*, i64** %6, align 8, !dbg !5056
  %tobool = icmp ne i64* %7, null, !dbg !5056
  br i1 %tobool, label %if.then, label %if.end, !dbg !5057

if.then:                                          ; preds = %entry
  %8 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5058
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %8, i32 0, i32 5, !dbg !5059
  %9 = load i16, i16* %code, align 2, !dbg !5059
  %conv1 = zext i16 %9 to i64, !dbg !5058
  %10 = load i64**, i64*** %bit.addr, align 8, !dbg !5060
  %11 = load i64*, i64** %10, align 8, !dbg !5061
  call void @clear_bit(i64 %conv1, i64* %11) #6, !dbg !5062
  br label %if.end, !dbg !5062

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @apple_setup_input(%struct.input_dev* %input) #2 !dbg !5064 {
entry:
  %input.addr = alloca %struct.input_dev*, align 8
  %trans = alloca %struct.apple_key_translation*, align 8
  store %struct.input_dev* %input, %struct.input_dev** %input.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input.addr, metadata !5065, metadata !DIExpression()), !dbg !5066
  call void @llvm.dbg.declare(metadata %struct.apple_key_translation** %trans, metadata !5067, metadata !DIExpression()), !dbg !5068
  %0 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5069
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 6, !dbg !5070
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !5069
  call void @set_bit(i64 69, i64* %arraydecay) #6, !dbg !5071
  store %struct.apple_key_translation* getelementptr inbounds ([19 x %struct.apple_key_translation], [19 x %struct.apple_key_translation]* @apple_fn_keys, i64 0, i64 0), %struct.apple_key_translation** %trans, align 8, !dbg !5072
  br label %for.cond, !dbg !5074

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5075
  %from = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %1, i32 0, i32 0, !dbg !5077
  %2 = load i16, i16* %from, align 2, !dbg !5077
  %tobool = icmp ne i16 %2, 0, !dbg !5078
  br i1 %tobool, label %for.body, label %for.end, !dbg !5078

for.body:                                         ; preds = %for.cond
  %3 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5079
  %to = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %3, i32 0, i32 1, !dbg !5080
  %4 = load i16, i16* %to, align 2, !dbg !5080
  %conv = zext i16 %4 to i64, !dbg !5079
  %5 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5081
  %keybit1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 6, !dbg !5082
  %arraydecay2 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit1, i64 0, i64 0, !dbg !5081
  call void @set_bit(i64 %conv, i64* %arraydecay2) #6, !dbg !5083
  br label %for.inc, !dbg !5083

for.inc:                                          ; preds = %for.body
  %6 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5084
  %incdec.ptr = getelementptr %struct.apple_key_translation, %struct.apple_key_translation* %6, i32 1, !dbg !5084
  store %struct.apple_key_translation* %incdec.ptr, %struct.apple_key_translation** %trans, align 8, !dbg !5084
  br label %for.cond, !dbg !5085, !llvm.loop !5086

for.end:                                          ; preds = %for.cond
  store %struct.apple_key_translation* getelementptr inbounds ([16 x %struct.apple_key_translation], [16 x %struct.apple_key_translation]* @powerbook_fn_keys, i64 0, i64 0), %struct.apple_key_translation** %trans, align 8, !dbg !5088
  br label %for.cond3, !dbg !5090

for.cond3:                                        ; preds = %for.inc11, %for.end
  %7 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5091
  %from4 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %7, i32 0, i32 0, !dbg !5093
  %8 = load i16, i16* %from4, align 2, !dbg !5093
  %tobool5 = icmp ne i16 %8, 0, !dbg !5094
  br i1 %tobool5, label %for.body6, label %for.end13, !dbg !5094

for.body6:                                        ; preds = %for.cond3
  %9 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5095
  %to7 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %9, i32 0, i32 1, !dbg !5096
  %10 = load i16, i16* %to7, align 2, !dbg !5096
  %conv8 = zext i16 %10 to i64, !dbg !5095
  %11 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5097
  %keybit9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 6, !dbg !5098
  %arraydecay10 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit9, i64 0, i64 0, !dbg !5097
  call void @set_bit(i64 %conv8, i64* %arraydecay10) #6, !dbg !5099
  br label %for.inc11, !dbg !5099

for.inc11:                                        ; preds = %for.body6
  %12 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5100
  %incdec.ptr12 = getelementptr %struct.apple_key_translation, %struct.apple_key_translation* %12, i32 1, !dbg !5100
  store %struct.apple_key_translation* %incdec.ptr12, %struct.apple_key_translation** %trans, align 8, !dbg !5100
  br label %for.cond3, !dbg !5101, !llvm.loop !5102

for.end13:                                        ; preds = %for.cond3
  store %struct.apple_key_translation* getelementptr inbounds ([20 x %struct.apple_key_translation], [20 x %struct.apple_key_translation]* @powerbook_numlock_keys, i64 0, i64 0), %struct.apple_key_translation** %trans, align 8, !dbg !5104
  br label %for.cond14, !dbg !5106

for.cond14:                                       ; preds = %for.inc22, %for.end13
  %13 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5107
  %from15 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %13, i32 0, i32 0, !dbg !5109
  %14 = load i16, i16* %from15, align 2, !dbg !5109
  %tobool16 = icmp ne i16 %14, 0, !dbg !5110
  br i1 %tobool16, label %for.body17, label %for.end24, !dbg !5110

for.body17:                                       ; preds = %for.cond14
  %15 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5111
  %to18 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %15, i32 0, i32 1, !dbg !5112
  %16 = load i16, i16* %to18, align 2, !dbg !5112
  %conv19 = zext i16 %16 to i64, !dbg !5111
  %17 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5113
  %keybit20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 6, !dbg !5114
  %arraydecay21 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit20, i64 0, i64 0, !dbg !5113
  call void @set_bit(i64 %conv19, i64* %arraydecay21) #6, !dbg !5115
  br label %for.inc22, !dbg !5115

for.inc22:                                        ; preds = %for.body17
  %18 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5116
  %incdec.ptr23 = getelementptr %struct.apple_key_translation, %struct.apple_key_translation* %18, i32 1, !dbg !5116
  store %struct.apple_key_translation* %incdec.ptr23, %struct.apple_key_translation** %trans, align 8, !dbg !5116
  br label %for.cond14, !dbg !5117, !llvm.loop !5118

for.end24:                                        ; preds = %for.cond14
  store %struct.apple_key_translation* getelementptr inbounds ([3 x %struct.apple_key_translation], [3 x %struct.apple_key_translation]* @apple_iso_keyboard, i64 0, i64 0), %struct.apple_key_translation** %trans, align 8, !dbg !5120
  br label %for.cond25, !dbg !5122

for.cond25:                                       ; preds = %for.inc33, %for.end24
  %19 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5123
  %from26 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %19, i32 0, i32 0, !dbg !5125
  %20 = load i16, i16* %from26, align 2, !dbg !5125
  %tobool27 = icmp ne i16 %20, 0, !dbg !5126
  br i1 %tobool27, label %for.body28, label %for.end35, !dbg !5126

for.body28:                                       ; preds = %for.cond25
  %21 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5127
  %to29 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %21, i32 0, i32 1, !dbg !5128
  %22 = load i16, i16* %to29, align 2, !dbg !5128
  %conv30 = zext i16 %22 to i64, !dbg !5127
  %23 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5129
  %keybit31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 6, !dbg !5130
  %arraydecay32 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit31, i64 0, i64 0, !dbg !5129
  call void @set_bit(i64 %conv30, i64* %arraydecay32) #6, !dbg !5131
  br label %for.inc33, !dbg !5131

for.inc33:                                        ; preds = %for.body28
  %24 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5132
  %incdec.ptr34 = getelementptr %struct.apple_key_translation, %struct.apple_key_translation* %24, i32 1, !dbg !5132
  store %struct.apple_key_translation* %incdec.ptr34, %struct.apple_key_translation** %trans, align 8, !dbg !5132
  br label %for.cond25, !dbg !5133, !llvm.loop !5134

for.end35:                                        ; preds = %for.cond25
  %25 = load i32, i32* @swap_fn_leftctrl, align 4, !dbg !5136
  %tobool36 = icmp ne i32 %25, 0, !dbg !5136
  br i1 %tobool36, label %if.then, label %if.end, !dbg !5138

if.then:                                          ; preds = %for.end35
  store %struct.apple_key_translation* getelementptr inbounds ([2 x %struct.apple_key_translation], [2 x %struct.apple_key_translation]* @swapped_fn_leftctrl_keys, i64 0, i64 0), %struct.apple_key_translation** %trans, align 8, !dbg !5139
  br label %for.cond37, !dbg !5142

for.cond37:                                       ; preds = %for.inc45, %if.then
  %26 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5143
  %from38 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %26, i32 0, i32 0, !dbg !5145
  %27 = load i16, i16* %from38, align 2, !dbg !5145
  %tobool39 = icmp ne i16 %27, 0, !dbg !5146
  br i1 %tobool39, label %for.body40, label %for.end47, !dbg !5146

for.body40:                                       ; preds = %for.cond37
  %28 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5147
  %to41 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %28, i32 0, i32 1, !dbg !5148
  %29 = load i16, i16* %to41, align 2, !dbg !5148
  %conv42 = zext i16 %29 to i64, !dbg !5147
  %30 = load %struct.input_dev*, %struct.input_dev** %input.addr, align 8, !dbg !5149
  %keybit43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 6, !dbg !5150
  %arraydecay44 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit43, i64 0, i64 0, !dbg !5149
  call void @set_bit(i64 %conv42, i64* %arraydecay44) #6, !dbg !5151
  br label %for.inc45, !dbg !5151

for.inc45:                                        ; preds = %for.body40
  %31 = load %struct.apple_key_translation*, %struct.apple_key_translation** %trans, align 8, !dbg !5152
  %incdec.ptr46 = getelementptr %struct.apple_key_translation, %struct.apple_key_translation* %31, i32 1, !dbg !5152
  store %struct.apple_key_translation* %incdec.ptr46, %struct.apple_key_translation** %trans, align 8, !dbg !5152
  br label %for.cond37, !dbg !5153, !llvm.loop !5154

for.end47:                                        ; preds = %for.cond37
  br label %if.end, !dbg !5156

if.end:                                           ; preds = %for.end47, %for.end35
  ret void, !dbg !5157
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_map_usage(%struct.hid_input* %hidinput, %struct.hid_usage* %usage, i64** %bit, i32* %max, i8 zeroext %type, i32 %c) #2 !dbg !4181 {
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
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !5166, metadata !DIExpression()), !dbg !5167
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !5170, metadata !DIExpression()), !dbg !5171
  %0 = load %struct.hid_input*, %struct.hid_input** %hidinput.addr, align 8, !dbg !5172
  %input1 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %0, i32 0, i32 2, !dbg !5173
  %1 = load %struct.input_dev*, %struct.input_dev** %input1, align 8, !dbg !5173
  store %struct.input_dev* %1, %struct.input_dev** %input, align 8, !dbg !5171
  call void @llvm.dbg.declare(metadata i64** %bmap, metadata !5174, metadata !DIExpression()), !dbg !5175
  store i64* null, i64** %bmap, align 8, !dbg !5175
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !5176, metadata !DIExpression()), !dbg !5177
  store i32 0, i32* %limit, align 4, !dbg !5177
  %2 = load i8, i8* %type.addr, align 1, !dbg !5178
  %conv = zext i8 %2 to i32, !dbg !5178
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
    i32 17, label %sw.bb6
  ], !dbg !5179

sw.bb:                                            ; preds = %entry
  %3 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5180
  %absbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 8, !dbg !5182
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i64 0, i64 0, !dbg !5180
  store i64* %arraydecay, i64** %bmap, align 8, !dbg !5183
  store i32 63, i32* %limit, align 4, !dbg !5184
  br label %sw.epilog, !dbg !5185

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5186
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 7, !dbg !5187
  %arraydecay3 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !5186
  store i64* %arraydecay3, i64** %bmap, align 8, !dbg !5188
  store i32 15, i32* %limit, align 4, !dbg !5189
  br label %sw.epilog, !dbg !5190

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5191
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 6, !dbg !5192
  %arraydecay5 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !5191
  store i64* %arraydecay5, i64** %bmap, align 8, !dbg !5193
  store i32 767, i32* %limit, align 4, !dbg !5194
  br label %sw.epilog, !dbg !5195

sw.bb6:                                           ; preds = %entry
  %6 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5196
  %ledbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 10, !dbg !5197
  %arraydecay7 = getelementptr inbounds [1 x i64], [1 x i64]* %ledbit, i64 0, i64 0, !dbg !5196
  store i64* %arraydecay7, i64** %bmap, align 8, !dbg !5198
  store i32 15, i32* %limit, align 4, !dbg !5199
  br label %sw.epilog, !dbg !5200

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %7 = load i32, i32* %c.addr, align 4, !dbg !5201
  %8 = load i32, i32* %limit, align 4, !dbg !5201
  %cmp = icmp ugt i32 %7, %8, !dbg !5201
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5201

lor.rhs:                                          ; preds = %sw.epilog
  %9 = load i64*, i64** %bmap, align 8, !dbg !5201
  %tobool = icmp ne i64* %9, null, !dbg !5201
  %lnot = xor i1 %tobool, true, !dbg !5201
  br label %lor.end, !dbg !5201

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %10 = phi i1 [ true, %sw.epilog ], [ %lnot, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5201
  %lnot10 = xor i1 %lnot9, true, !dbg !5201
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !5201
  %conv11 = sext i32 %lnot.ext to i64, !dbg !5201
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !5201
  br i1 %tobool12, label %if.then, label %if.end17, !dbg !5203

if.then:                                          ; preds = %lor.end
  %call = call i32 @___ratelimit(%struct.ratelimit_state* @hid_map_usage._rs, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.hid_map_usage, i64 0, i64 0)) #6, !dbg !5204
  %tobool13 = icmp ne i32 %call, 0, !dbg !5204
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !5208

if.then14:                                        ; preds = %if.then
  %11 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5204
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0, !dbg !5204
  %12 = load i8*, i8** %name, align 8, !dbg !5204
  %13 = load i32, i32* %c.addr, align 4, !dbg !5204
  %14 = load i8, i8* %type.addr, align 1, !dbg !5204
  %conv15 = zext i8 %14 to i32, !dbg !5204
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %12, i32 %13, i32 %conv15) #7, !dbg !5204
  br label %if.end, !dbg !5204

if.end:                                           ; preds = %if.then14, %if.then
  %15 = load i64**, i64*** %bit.addr, align 8, !dbg !5209
  store i64* null, i64** %15, align 8, !dbg !5210
  br label %return, !dbg !5211

if.end17:                                         ; preds = %lor.end
  %16 = load i8, i8* %type.addr, align 1, !dbg !5212
  %17 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5213
  %type18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 6, !dbg !5214
  store i8 %16, i8* %type18, align 4, !dbg !5215
  %18 = load i32, i32* %c.addr, align 4, !dbg !5216
  %conv19 = trunc i32 %18 to i16, !dbg !5216
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5217
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %19, i32 0, i32 5, !dbg !5218
  store i16 %conv19, i16* %code, align 2, !dbg !5219
  %20 = load i32, i32* %limit, align 4, !dbg !5220
  %21 = load i32*, i32** %max.addr, align 8, !dbg !5221
  store i32 %20, i32* %21, align 4, !dbg !5222
  %22 = load i64*, i64** %bmap, align 8, !dbg !5223
  %23 = load i64**, i64*** %bit.addr, align 8, !dbg !5224
  store i64* %22, i64** %23, align 8, !dbg !5225
  br label %return, !dbg !5226

return:                                           ; preds = %if.end17, %if.end
  ret void, !dbg !5226
}

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4187, !4188, !4189, !4190}
!llvm.ident = !{!4191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_fnmode", scope: !2, file: !3, line: 39, type: !4184, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !91, globals: !106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hid/hid-apple.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !65, !72, !80, !86}
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
!91 = !{!92, !95, !97, !98, !100, !103}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !94, line: 76, flags: DIFlagFwdDecl)
!94 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !96, line: 148, baseType: !7)
!96 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!102 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !105)
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !{!107, !175, !180, !185, !187, !192, !197, !199, !204, !209, !211, !216, !221, !223, !230, !232, !237, !239, !0, !241, !243, !248, !250, !255, !260, !4141, !4146, !4157, !4160, !4165, !4168, !4171, !4176, !4179}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__param_fnmode", scope: !2, file: !3, line: 39, type: !109, isLocal: true, isDefinition: true, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !111, line: 69, size: 320, elements: !112)
!111 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !116, !117, !138, !145, !149, !153}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 70, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !110, file: !111, line: 71, baseType: !92, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !110, file: !111, line: 72, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !111, line: 47, size: 256, elements: !121)
!121 = !{!122, !123, !129, !134}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !111, line: 49, baseType: !7, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !120, file: !111, line: 51, baseType: !124, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !114, !128}
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !120, file: !111, line: 53, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!127, !133, !128}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !120, file: !111, line: 55, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !97}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !110, file: !111, line: 73, baseType: !139, size: 16, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !141, line: 19, baseType: !142)
!141 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !143, line: 24, baseType: !144)
!143 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !110, file: !111, line: 74, baseType: !146, size: 8, offset: 208)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !141, line: 16, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !143, line: 20, baseType: !148)
!148 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !111, line: 75, baseType: !150, size: 8, offset: 216)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !141, line: 17, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !143, line: 21, baseType: !152)
!152 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !111, line: 76, baseType: !154, size: 64, offset: 256)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !111, line: 76, size: 64, elements: !155)
!155 = !{!156, !157, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !154, file: !111, line: 77, baseType: !97, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !154, file: !111, line: 78, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !111, line: 86, size: 128, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !160, file: !111, line: 87, baseType: !7, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !160, file: !111, line: 88, baseType: !133, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !154, file: !111, line: 79, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !111, line: 92, size: 256, elements: !168)
!168 = !{!169, !170, !171, !173, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !167, file: !111, line: 94, baseType: !7, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !167, file: !111, line: 95, baseType: !7, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !167, file: !111, line: 96, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !167, file: !111, line: 97, baseType: !118, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !167, file: !111, line: 98, baseType: !97, size: 64, offset: 192)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fnmodetype204", scope: !2, file: !3, line: 39, type: !177, isLocal: true, isDefinition: true, align: 8)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 248, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 31)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fnmode205", scope: !2, file: !3, line: 40, type: !182, isLocal: true, isDefinition: true, align: 8)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 832, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 104)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__param_iso_layout", scope: !2, file: !3, line: 44, type: !109, isLocal: true, isDefinition: true, align: 64)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_iso_layouttype206", scope: !2, file: !3, line: 44, type: !189, isLocal: true, isDefinition: true, align: 8)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 280, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 35)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_iso_layout207", scope: !2, file: !3, line: 45, type: !194, isLocal: true, isDefinition: true, align: 8)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 872, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 109)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__param_swap_opt_cmd", scope: !2, file: !3, line: 49, type: !109, isLocal: true, isDefinition: true, align: 64)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_swap_opt_cmdtype208", scope: !2, file: !3, line: 49, type: !201, isLocal: true, isDefinition: true, align: 8)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 296, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 37)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_swap_opt_cmd209", scope: !2, file: !3, line: 50, type: !206, isLocal: true, isDefinition: true, align: 8)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1584, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 198)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "__param_swap_fn_leftctrl", scope: !2, file: !3, line: 55, type: !109, isLocal: true, isDefinition: true, align: 64)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_swap_fn_leftctrltype210", scope: !2, file: !3, line: 55, type: !213, isLocal: true, isDefinition: true, align: 8)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 328, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 41)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_swap_fn_leftctrl211", scope: !2, file: !3, line: 56, type: !218, isLocal: true, isDefinition: true, align: 8)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 1376, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 172)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_apple_driver_init212", scope: !2, file: !3, line: 635, type: !97, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "__exitcall_apple_driver_exit", scope: !2, file: !3, line: 635, type: !225, isLocal: true, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !226, line: 117, baseType: !227)
!226 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file213", scope: !2, file: !3, line: 637, type: !201, isLocal: true, isDefinition: true, align: 8)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license214", scope: !2, file: !3, line: 637, type: !234, isLocal: true, isDefinition: true, align: 8)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 176, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 22)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "swap_opt_cmd", scope: !2, file: !3, line: 48, type: !7, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(name: "swap_fn_leftctrl", scope: !2, file: !3, line: 54, type: !7, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "fnmode", scope: !2, file: !3, line: 38, type: !7, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "__param_str_iso_layout", scope: !2, file: !3, line: 44, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 168, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 21)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "iso_layout", scope: !2, file: !3, line: 43, type: !7, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(name: "__param_str_swap_opt_cmd", scope: !2, file: !3, line: 49, type: !252, isLocal: true, isDefinition: true)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 184, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 23)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "__param_str_swap_fn_leftctrl", scope: !2, file: !3, line: 55, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 216, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 27)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "apple_driver", scope: !2, file: !3, line: 625, type: !262, isLocal: true, isDefinition: true)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_driver", file: !6, line: 738, size: 2432, elements: !263)
!263 = !{!264, !265, !278, !284, !300, !4087, !4091, !4092, !4098, !4103, !4111, !4115, !4116, !4120, !4125, !4126, !4130, !4134, !4138, !4139, !4140}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !6, line: 739, baseType: !133, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !262, file: !6, line: 740, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device_id", file: !269, line: 166, size: 192, elements: !270)
!269 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271, !272, !273, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !268, file: !269, line: 167, baseType: !142, size: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !268, file: !269, line: 168, baseType: !142, size: 16, offset: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !268, file: !269, line: 169, baseType: !274, size: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !143, line: 27, baseType: !7)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !268, file: !269, line: 170, baseType: !274, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !268, file: !269, line: 171, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !269, line: 14, baseType: !99)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_list", scope: !262, file: !6, line: 742, baseType: !279, size: 128, offset: 128)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !96, line: 178, size: 128, elements: !280)
!280 = !{!281, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !96, line: 179, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !279, file: !96, line: 179, baseType: !282, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_lock", scope: !262, file: !6, line: 743, baseType: !285, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !286, line: 83, baseType: !287)
!286 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !286, line: 71, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !286, line: 72, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !286, line: 72, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !290, file: !286, line: 73, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !286, line: 20, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !293, file: !286, line: 21, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !297, line: 25, baseType: !298)
!297 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 25, elements: !299)
!299 = !{}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !262, file: !6, line: 745, baseType: !301, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !306, !304}
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 30, baseType: !305)
!305 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device", file: !6, line: 547, size: 60160, elements: !308)
!308 = !{!309, !311, !312, !313, !314, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !4005, !4006, !4013, !4014, !4016, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4064, !4065, !4066, !4067, !4071, !4072, !4076, !4080, !4081, !4082, !4083, !4084, !4085, !4086}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rdesc", scope: !307, file: !6, line: 548, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rsize", scope: !307, file: !6, line: 549, baseType: !7, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !307, file: !6, line: 550, baseType: !310, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !307, file: !6, line: 551, baseType: !7, size: 32, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !307, file: !6, line: 552, baseType: !315, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_collection", file: !6, line: 424, size: 128, elements: !317)
!317 = !{!318, !319, !320, !321}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parent_idx", scope: !316, file: !6, line: 425, baseType: !127, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !316, file: !6, line: 426, baseType: !7, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !316, file: !6, line: 427, baseType: !7, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !316, file: !6, line: 428, baseType: !7, size: 32, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "collection_size", scope: !307, file: !6, line: 553, baseType: !7, size: 32, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "maxcollection", scope: !307, file: !6, line: 554, baseType: !7, size: 32, offset: 352)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "maxapplication", scope: !307, file: !6, line: 555, baseType: !7, size: 32, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !307, file: !6, line: 556, baseType: !142, size: 16, offset: 416)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !307, file: !6, line: 557, baseType: !142, size: 16, offset: 432)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !307, file: !6, line: 558, baseType: !274, size: 32, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !307, file: !6, line: 559, baseType: !274, size: 32, offset: 480)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !307, file: !6, line: 560, baseType: !274, size: 32, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !307, file: !6, line: 561, baseType: !5, size: 32, offset: 544)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !307, file: !6, line: 562, baseType: !7, size: 32, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "report_enum", scope: !307, file: !6, line: 563, baseType: !333, size: 49728, offset: 640)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 49728, elements: !862)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_enum", file: !6, line: 490, size: 16576, elements: !335)
!335 = !{!336, !337, !338}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "numbered", scope: !334, file: !6, line: 491, baseType: !7, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "report_list", scope: !334, file: !6, line: 492, baseType: !279, size: 128, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "report_id_hash", scope: !334, file: !6, line: 493, baseType: !339, size: 16384, offset: 192)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 16384, elements: !4000)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report", file: !6, line: 476, size: 16896, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !4002, !4003, !4004}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !341, file: !6, line: 477, baseType: !279, size: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput_list", scope: !341, file: !6, line: 478, baseType: !279, size: 128, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !341, file: !6, line: 479, baseType: !7, size: 32, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !341, file: !6, line: 480, baseType: !7, size: 32, offset: 288)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !341, file: !6, line: 481, baseType: !7, size: 32, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !341, file: !6, line: 482, baseType: !349, size: 16384, offset: 384)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 16384, elements: !4000)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field", file: !6, line: 449, size: 896, elements: !352)
!352 = !{!353, !354, !355, !356, !373, !374, !375, !376, !377, !378, !379, !382, !383, !384, !385, !386, !387, !388, !389, !390, !3999}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !351, file: !6, line: 450, baseType: !7, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "logical", scope: !351, file: !6, line: 451, baseType: !7, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !351, file: !6, line: 452, baseType: !7, size: 32, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !351, file: !6, line: 453, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage", file: !6, line: 431, size: 192, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !358, file: !6, line: 432, baseType: !7, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "collection_index", scope: !358, file: !6, line: 433, baseType: !7, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "usage_index", scope: !358, file: !6, line: 434, baseType: !7, size: 32, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_multiplier", scope: !358, file: !6, line: 435, baseType: !147, size: 8, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_factor", scope: !358, file: !6, line: 438, baseType: !147, size: 8, offset: 104)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !358, file: !6, line: 439, baseType: !142, size: 16, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !358, file: !6, line: 440, baseType: !151, size: 8, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hat_min", scope: !358, file: !6, line: 441, baseType: !147, size: 8, offset: 136)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hat_max", scope: !358, file: !6, line: 442, baseType: !147, size: 8, offset: 144)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hat_dir", scope: !358, file: !6, line: 443, baseType: !147, size: 8, offset: 152)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_accumulated", scope: !358, file: !6, line: 444, baseType: !371, size: 16, offset: 160)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !143, line: 23, baseType: !372)
!372 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "maxusage", scope: !351, file: !6, line: 454, baseType: !7, size: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !6, line: 455, baseType: !7, size: 32, offset: 224)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "report_offset", scope: !351, file: !6, line: 456, baseType: !7, size: 32, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "report_size", scope: !351, file: !6, line: 457, baseType: !7, size: 32, offset: 288)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "report_count", scope: !351, file: !6, line: 458, baseType: !7, size: 32, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !351, file: !6, line: 459, baseType: !7, size: 32, offset: 352)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !6, line: 460, baseType: !380, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !143, line: 26, baseType: !127)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "logical_minimum", scope: !351, file: !6, line: 461, baseType: !381, size: 32, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "logical_maximum", scope: !351, file: !6, line: 462, baseType: !381, size: 32, offset: 480)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "physical_minimum", scope: !351, file: !6, line: 463, baseType: !381, size: 32, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "physical_maximum", scope: !351, file: !6, line: 464, baseType: !381, size: 32, offset: 544)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "unit_exponent", scope: !351, file: !6, line: 465, baseType: !381, size: 32, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !351, file: !6, line: 466, baseType: !7, size: 32, offset: 608)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !351, file: !6, line: 467, baseType: !340, size: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !351, file: !6, line: 468, baseType: !7, size: 32, offset: 704)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput", scope: !351, file: !6, line: 470, baseType: !391, size: 64, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_input", file: !6, line: 522, size: 576, elements: !393)
!393 = !{!394, !395, !396, !3995, !3996, !3997, !3998}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !392, file: !6, line: 523, baseType: !279, size: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !392, file: !6, line: 524, baseType: !340, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !392, file: !6, line: 525, baseType: !397, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !399, line: 131, size: 10432, elements: !400)
!399 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401, !402, !403, !404, !412, !416, !417, !421, !422, !423, !424, !425, !426, !430, !431, !432, !433, !434, !435, !451, !456, !3206, !3209, !3210, !3222, !3224, !3227, !3237, !3238, !3239, !3240, !3241, !3245, !3249, !3253, !3257, !3333, !3334, !3335, !3336, !3337, !3986, !3987, !3988, !3989, !3990, !3992, !3993}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !398, file: !399, line: 132, baseType: !114, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !398, file: !399, line: 133, baseType: !114, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !398, file: !399, line: 134, baseType: !114, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !398, file: !399, line: 135, baseType: !405, size: 64, offset: 192)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !406, line: 59, size: 64, elements: !407)
!406 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !409, !410, !411}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !405, file: !406, line: 60, baseType: !142, size: 16)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !405, file: !406, line: 61, baseType: !142, size: 16, offset: 16)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !405, file: !406, line: 62, baseType: !142, size: 16, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !405, file: !406, line: 63, baseType: !142, size: 16, offset: 48)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !398, file: !399, line: 137, baseType: !413, size: 64, offset: 256)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 64, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 1)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !398, file: !399, line: 139, baseType: !413, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !398, file: !399, line: 140, baseType: !418, size: 768, offset: 384)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 768, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 12)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !398, file: !399, line: 141, baseType: !413, size: 64, offset: 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !398, file: !399, line: 142, baseType: !413, size: 64, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !398, file: !399, line: 143, baseType: !413, size: 64, offset: 1280)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !398, file: !399, line: 144, baseType: !413, size: 64, offset: 1344)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !398, file: !399, line: 145, baseType: !413, size: 64, offset: 1408)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !398, file: !399, line: 146, baseType: !427, size: 128, offset: 1472)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 128, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 2)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !398, file: !399, line: 147, baseType: !413, size: 64, offset: 1600)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !398, file: !399, line: 149, baseType: !7, size: 32, offset: 1664)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !398, file: !399, line: 151, baseType: !7, size: 32, offset: 1696)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !398, file: !399, line: 152, baseType: !7, size: 32, offset: 1728)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !398, file: !399, line: 153, baseType: !97, size: 64, offset: 1792)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !398, file: !399, line: 155, baseType: !436, size: 64, offset: 1856)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!127, !397, !439, !172}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !406, line: 114, size: 320, elements: !442)
!442 = !{!443, !444, !445, !446, !447}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !406, line: 116, baseType: !151, size: 8)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !441, file: !406, line: 117, baseType: !151, size: 8, offset: 8)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !441, file: !406, line: 118, baseType: !142, size: 16, offset: 16)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !441, file: !406, line: 119, baseType: !274, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !441, file: !406, line: 120, baseType: !448, size: 256, offset: 64)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !398, file: !399, line: 158, baseType: !452, size: 64, offset: 1920)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!127, !397, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !398, file: !399, line: 161, baseType: !457, size: 64, offset: 1984)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !399, line: 534, size: 896, elements: !459)
!459 = !{!460, !527, !531, !535, !539, !540, !544, !545, !546, !562, !563, !564}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !458, file: !399, line: 535, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!127, !397, !464, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !406, line: 450, size: 384, elements: !466)
!466 = !{!467, !468, !469, !470, !475, !480}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !406, line: 451, baseType: !142, size: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !465, file: !406, line: 452, baseType: !371, size: 16, offset: 16)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !465, file: !406, line: 453, baseType: !142, size: 16, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !465, file: !406, line: 454, baseType: !471, size: 32, offset: 48)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !406, line: 316, size: 32, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !471, file: !406, line: 317, baseType: !142, size: 16)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !471, file: !406, line: 318, baseType: !142, size: 16, offset: 16)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !465, file: !406, line: 455, baseType: !476, size: 32, offset: 80)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !406, line: 306, size: 32, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !476, file: !406, line: 307, baseType: !142, size: 16)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !476, file: !406, line: 308, baseType: !142, size: 16, offset: 16)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !465, file: !406, line: 463, baseType: !481, size: 256, offset: 128)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !406, line: 457, size: 256, elements: !482)
!482 = !{!483, !494, !500, !512, !522}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !481, file: !406, line: 458, baseType: !484, size: 80)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !406, line: 345, size: 80, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !484, file: !406, line: 346, baseType: !371, size: 16)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !484, file: !406, line: 347, baseType: !488, size: 64, offset: 16)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !406, line: 333, size: 64, elements: !489)
!489 = !{!490, !491, !492, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !488, file: !406, line: 334, baseType: !142, size: 16)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !488, file: !406, line: 335, baseType: !142, size: 16, offset: 16)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !488, file: !406, line: 336, baseType: !142, size: 16, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !488, file: !406, line: 337, baseType: !142, size: 16, offset: 48)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !481, file: !406, line: 459, baseType: !495, size: 96)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !406, line: 356, size: 96, elements: !496)
!496 = !{!497, !498, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !495, file: !406, line: 357, baseType: !371, size: 16)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !495, file: !406, line: 358, baseType: !371, size: 16, offset: 16)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !495, file: !406, line: 359, baseType: !488, size: 64, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !481, file: !406, line: 460, baseType: !501, size: 256)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !406, line: 401, size: 256, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !501, file: !406, line: 402, baseType: !142, size: 16)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !501, file: !406, line: 403, baseType: !142, size: 16, offset: 16)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !501, file: !406, line: 404, baseType: !371, size: 16, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !501, file: !406, line: 405, baseType: !371, size: 16, offset: 48)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !501, file: !406, line: 406, baseType: !142, size: 16, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !501, file: !406, line: 408, baseType: !488, size: 64, offset: 80)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !501, file: !406, line: 410, baseType: !274, size: 32, offset: 160)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !501, file: !406, line: 411, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !481, file: !406, line: 461, baseType: !513, size: 192)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 192, elements: !428)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !406, line: 372, size: 96, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !521}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !514, file: !406, line: 373, baseType: !142, size: 16)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !514, file: !406, line: 374, baseType: !142, size: 16, offset: 16)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !514, file: !406, line: 376, baseType: !371, size: 16, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !514, file: !406, line: 377, baseType: !371, size: 16, offset: 48)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !514, file: !406, line: 379, baseType: !142, size: 16, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !514, file: !406, line: 380, baseType: !371, size: 16, offset: 80)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !481, file: !406, line: 462, baseType: !523, size: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !406, line: 422, size: 32, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !523, file: !406, line: 423, baseType: !142, size: 16)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !523, file: !406, line: 424, baseType: !142, size: 16, offset: 16)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !458, file: !399, line: 537, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!127, !397, !127}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !458, file: !399, line: 539, baseType: !532, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!127, !397, !127, !127}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !458, file: !399, line: 540, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !397, !140}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !458, file: !399, line: 541, baseType: !536, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !458, file: !399, line: 543, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !457}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !458, file: !399, line: 545, baseType: !97, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !458, file: !399, line: 547, baseType: !427, size: 128, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !458, file: !399, line: 549, baseType: !547, size: 192, offset: 576)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !548, line: 53, size: 192, elements: !549)
!548 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !560, !561}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !547, file: !548, line: 54, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !552, line: 13, baseType: !553)
!552 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !96, line: 175, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 173, size: 64, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !554, file: !96, line: 174, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !141, line: 22, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !143, line: 30, baseType: !559)
!559 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !547, file: !548, line: 55, baseType: !285, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !547, file: !548, line: 59, baseType: !279, size: 128, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !458, file: !399, line: 551, baseType: !127, size: 32, offset: 768)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !458, file: !399, line: 552, baseType: !464, size: 64, offset: 832)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !458, file: !399, line: 553, baseType: !565, offset: 896)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, elements: !2422)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !568)
!568 = !{!569, !587, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3189, !3190, !3199, !3200, !3201, !3202, !3203, !3204, !3205}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !567, file: !37, line: 920, baseType: !570, size: 128)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !37, line: 917, size: 128, elements: !571)
!571 = !{!572, !578}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !570, file: !37, line: 918, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !574, line: 58, size: 64, elements: !575)
!574 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !573, file: !574, line: 59, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !570, file: !37, line: 919, baseType: !579, size: 128, align: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !96, line: 216, size: 128, align: 64, elements: !580)
!580 = !{!581, !583}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !579, file: !96, line: 217, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !579, file: !96, line: 218, baseType: !584, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !582}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !567, file: !37, line: 921, baseType: !588, size: 128, offset: 128)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !589, line: 8, size: 128, elements: !590)
!589 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!590 = !{!591, !595}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !588, file: !589, line: 9, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !594, line: 18, flags: DIFlagFwdDecl)
!594 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!595 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !588, file: !589, line: 10, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !594, line: 89, size: 1536, elements: !598)
!598 = !{!599, !600, !610, !618, !619, !638, !3139, !3141, !3153, !3154, !3155, !3156, !3157, !3163, !3164, !3165}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !597, file: !594, line: 91, baseType: !7, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !597, file: !594, line: 92, baseType: !601, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !602, line: 277, baseType: !603)
!602 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !602, line: 277, size: 32, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !603, file: !602, line: 277, baseType: !606, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !602, line: 70, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !602, line: 65, size: 32, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !607, file: !602, line: 66, baseType: !7, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !597, file: !594, line: 93, baseType: !611, size: 128, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !612, line: 38, size: 128, elements: !613)
!612 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !612, line: 39, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !611, file: !612, line: 39, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !597, file: !594, line: 94, baseType: !596, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !597, file: !594, line: 95, baseType: !620, size: 128, offset: 256)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !594, line: 47, size: 128, elements: !621)
!621 = !{!622, !635}
!622 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !594, line: 48, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !594, line: 48, size: 64, elements: !624)
!624 = !{!625, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, scope: !623, file: !594, line: 49, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !594, line: 49, size: 64, elements: !627)
!627 = !{!628, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !626, file: !594, line: 50, baseType: !629, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !141, line: 21, baseType: !274)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !626, file: !594, line: 50, baseType: !629, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !623, file: !594, line: 52, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !141, line: 23, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !143, line: 31, baseType: !634)
!634 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !620, file: !594, line: 54, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !597, file: !594, line: 96, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !641)
!641 = !{!642, !644, !645, !654, !661, !662, !809, !2850, !2851, !2852, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !3115, !3123, !3124, !3125, !3135, !3136, !3137, !3138}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !640, file: !37, line: 611, baseType: !643, size: 16)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !96, line: 19, baseType: !144)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !640, file: !37, line: 612, baseType: !144, size: 16, offset: 16)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !640, file: !37, line: 613, baseType: !646, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !647, line: 23, baseType: !648)
!647 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 21, size: 32, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !648, file: !647, line: 22, baseType: !651, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !96, line: 32, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !653, line: 49, baseType: !7)
!653 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !640, file: !37, line: 614, baseType: !655, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !647, line: 28, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 26, size: 32, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !656, file: !647, line: 27, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !96, line: 33, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !653, line: 50, baseType: !7)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !640, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !640, file: !37, line: 622, baseType: !663, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !666)
!666 = !{!667, !671, !681, !685, !691, !695, !699, !703, !707, !711, !715, !716, !722, !726, !750, !779, !789, !795, !800, !804, !805}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !665, file: !37, line: 1865, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!596, !639, !596, !7}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !665, file: !37, line: 1866, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!114, !596, !639, !675}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !677, line: 10, size: 128, elements: !678)
!677 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !676, file: !677, line: 11, baseType: !135, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !676, file: !677, line: 12, baseType: !97, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !665, file: !37, line: 1867, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!127, !639, !127}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !665, file: !37, line: 1868, baseType: !686, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!689, !639, !127}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !665, file: !37, line: 1870, baseType: !692, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!127, !596, !133, !127}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !665, file: !37, line: 1872, baseType: !696, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!127, !639, !596, !643, !304}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !665, file: !37, line: 1873, baseType: !700, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!127, !596, !639, !596}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !665, file: !37, line: 1874, baseType: !704, size: 64, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!127, !639, !596}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !665, file: !37, line: 1875, baseType: !708, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!127, !639, !596, !114}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !665, file: !37, line: 1876, baseType: !712, size: 64, offset: 576)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!127, !639, !596, !643}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !665, file: !37, line: 1877, baseType: !704, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !665, file: !37, line: 1878, baseType: !717, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!127, !639, !596, !643, !720}
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !96, line: 16, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !96, line: 13, baseType: !629)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !665, file: !37, line: 1879, baseType: !723, size: 64, offset: 768)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!127, !639, !596, !639, !596, !7}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !665, file: !37, line: 1881, baseType: !727, size: 64, offset: 832)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!127, !596, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !740, !747, !748, !749}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !731, file: !37, line: 220, baseType: !7, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !731, file: !37, line: 221, baseType: !643, size: 16, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !731, file: !37, line: 222, baseType: !646, size: 32, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !731, file: !37, line: 223, baseType: !655, size: 32, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !731, file: !37, line: 224, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !96, line: 46, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !653, line: 88, baseType: !559)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !731, file: !37, line: 225, baseType: !741, size: 128, offset: 192)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !742, line: 13, size: 128, elements: !743)
!742 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !741, file: !742, line: 14, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !742, line: 8, baseType: !558)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !741, file: !742, line: 15, baseType: !105, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !731, file: !37, line: 226, baseType: !741, size: 128, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !731, file: !37, line: 227, baseType: !741, size: 128, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !731, file: !37, line: 234, baseType: !566, size: 64, offset: 576)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !665, file: !37, line: 1882, baseType: !751, size: 64, offset: 896)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!127, !754, !756, !629, !7}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !758, line: 22, size: 1152, elements: !759)
!758 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !761, !762, !763, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !757, file: !758, line: 23, baseType: !629, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !757, file: !758, line: 24, baseType: !643, size: 16, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !757, file: !758, line: 25, baseType: !7, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !757, file: !758, line: 26, baseType: !764, size: 32, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 104, baseType: !629)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !757, file: !758, line: 27, baseType: !632, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !757, file: !758, line: 28, baseType: !632, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !757, file: !758, line: 37, baseType: !632, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !757, file: !758, line: 38, baseType: !720, size: 32, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !757, file: !758, line: 39, baseType: !720, size: 32, offset: 352)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !757, file: !758, line: 40, baseType: !646, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !757, file: !758, line: 41, baseType: !655, size: 32, offset: 416)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !757, file: !758, line: 42, baseType: !738, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !757, file: !758, line: 43, baseType: !741, size: 128, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !757, file: !758, line: 44, baseType: !741, size: 128, offset: 640)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !757, file: !758, line: 45, baseType: !741, size: 128, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !757, file: !758, line: 46, baseType: !741, size: 128, offset: 896)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !757, file: !758, line: 47, baseType: !632, size: 64, offset: 1024)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !757, file: !758, line: 48, baseType: !632, size: 64, offset: 1088)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !665, file: !37, line: 1883, baseType: !780, size: 64, offset: 960)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !596, !133, !786}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !96, line: 60, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !653, line: 73, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !653, line: 15, baseType: !105)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 55, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !653, line: 72, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !653, line: 16, baseType: !99)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !665, file: !37, line: 1884, baseType: !790, size: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!127, !639, !793, !632, !632}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !665, file: !37, line: 1886, baseType: !796, size: 64, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!127, !639, !799, !127}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !665, file: !37, line: 1887, baseType: !801, size: 64, offset: 1152)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!127, !639, !596, !566, !7, !643}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !665, file: !37, line: 1890, baseType: !712, size: 64, offset: 1216)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !665, file: !37, line: 1891, baseType: !806, size: 64, offset: 1280)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!127, !639, !689, !127}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !640, file: !37, line: 623, baseType: !810, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !812)
!812 = !{!813, !814, !815, !816, !817, !818, !867, !2458, !2540, !2623, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2639, !2643, !2644, !2647, !2648, !2651, !2652, !2653, !2694, !2720, !2721, !2722, !2723, !2724, !2725, !2728, !2730, !2737, !2738, !2740, !2741, !2742, !2801, !2802, !2817, !2818, !2819, !2820, !2821, !2824, !2825, !2826, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !811, file: !37, line: 1417, baseType: !279, size: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !811, file: !37, line: 1418, baseType: !720, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !811, file: !37, line: 1419, baseType: !152, size: 8, offset: 160)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !811, file: !37, line: 1420, baseType: !99, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !811, file: !37, line: 1421, baseType: !738, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !811, file: !37, line: 1422, baseType: !819, size: 64, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !821)
!821 = !{!822, !823, !824, !831, !835, !839, !843, !844, !845, !855, !858, !859, !860, !864, !865, !866}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !820, file: !37, line: 2229, baseType: !114, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !820, file: !37, line: 2230, baseType: !127, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !820, file: !37, line: 2238, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!127, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !830, line: 28, flags: DIFlagFwdDecl)
!830 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!831 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !820, file: !37, line: 2239, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !820, file: !37, line: 2240, baseType: !836, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!596, !819, !127, !114, !97}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !820, file: !37, line: 2242, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !810}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !820, file: !37, line: 2243, baseType: !92, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !37, line: 2244, baseType: !819, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !820, file: !37, line: 2245, baseType: !846, size: 64, offset: 512)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !96, line: 182, size: 64, elements: !847)
!847 = !{!848}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !846, file: !96, line: 183, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !96, line: 186, size: 128, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !96, line: 187, baseType: !849, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !850, file: !96, line: 187, baseType: !854, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !820, file: !37, line: 2247, baseType: !856, offset: 576)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !857, line: 187, elements: !299)
!857 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !820, file: !37, line: 2248, baseType: !856, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !820, file: !37, line: 2249, baseType: !856, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !820, file: !37, line: 2250, baseType: !861, offset: 576)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 3)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !820, file: !37, line: 2252, baseType: !856, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !820, file: !37, line: 2253, baseType: !856, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !820, file: !37, line: 2254, baseType: !856, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !811, file: !37, line: 1423, baseType: !868, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !871)
!871 = !{!872, !876, !880, !881, !885, !891, !895, !896, !897, !901, !905, !906, !907, !908, !914, !919, !920, !927, !928, !929, !930, !2442, !2457}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !870, file: !37, line: 1936, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!639, !810}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !870, file: !37, line: 1937, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !639}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !870, file: !37, line: 1938, baseType: !877, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !870, file: !37, line: 1940, baseType: !882, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !639, !127}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !870, file: !37, line: 1941, baseType: !886, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!127, !639, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !870, file: !37, line: 1942, baseType: !892, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!127, !639}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !870, file: !37, line: 1943, baseType: !877, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !870, file: !37, line: 1944, baseType: !840, size: 64, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !870, file: !37, line: 1945, baseType: !898, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!127, !810, !127}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !870, file: !37, line: 1946, baseType: !902, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!127, !810}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !870, file: !37, line: 1947, baseType: !902, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !870, file: !37, line: 1948, baseType: !902, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !870, file: !37, line: 1949, baseType: !902, size: 64, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !870, file: !37, line: 1950, baseType: !909, size: 64, offset: 832)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!127, !596, !912}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !870, file: !37, line: 1951, baseType: !915, size: 64, offset: 896)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!127, !810, !918, !133}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !870, file: !37, line: 1952, baseType: !840, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !870, file: !37, line: 1954, baseType: !921, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!127, !924, !596}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !926, line: 539, flags: DIFlagFwdDecl)
!926 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!927 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !870, file: !37, line: 1955, baseType: !921, size: 64, offset: 1088)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !870, file: !37, line: 1956, baseType: !921, size: 64, offset: 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !870, file: !37, line: 1957, baseType: !921, size: 64, offset: 1216)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !870, file: !37, line: 1963, baseType: !931, size: 64, offset: 1280)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!127, !810, !934, !95}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !936, line: 68, size: 512, align: 128, elements: !937)
!936 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!937 = !{!938, !939, !2434, !2441}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !935, file: !936, line: 69, baseType: !99, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !936, line: 77, baseType: !940, size: 320, offset: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !936, line: 77, size: 320, elements: !941)
!941 = !{!942, !1120, !1125, !1153, !1161, !1167, !2426, !2433}
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !936, line: 78, baseType: !943, size: 320)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !936, line: 78, size: 320, elements: !944)
!944 = !{!945, !946, !1118, !1119}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !943, file: !936, line: 84, baseType: !279, size: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !943, file: !936, line: 86, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !949)
!949 = !{!950, !951, !958, !959, !964, !979, !988, !989, !990, !991, !1111, !1112, !1115, !1116, !1117}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !948, file: !37, line: 452, baseType: !639, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !948, file: !37, line: 453, baseType: !952, size: 128, offset: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !953, line: 292, size: 128, elements: !954)
!953 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !952, file: !953, line: 293, baseType: !285)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !952, file: !953, line: 295, baseType: !95, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !952, file: !953, line: 296, baseType: !97, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !948, file: !37, line: 454, baseType: !95, size: 32, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !948, file: !37, line: 455, baseType: !960, size: 32, offset: 224)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !96, line: 168, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 166, size: 32, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !961, file: !96, line: 167, baseType: !127, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !948, file: !37, line: 460, baseType: !965, size: 128, offset: 256)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !966, line: 125, size: 128, elements: !967)
!966 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!967 = !{!968, !978}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !965, file: !966, line: 126, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !966, line: 31, size: 64, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !969, file: !966, line: 32, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !966, line: 24, size: 192, align: 64, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !973, file: !966, line: 25, baseType: !99, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !973, file: !966, line: 26, baseType: !972, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !973, file: !966, line: 27, baseType: !972, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !965, file: !966, line: 127, baseType: !972, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !948, file: !37, line: 461, baseType: !980, size: 256, offset: 384)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !981, line: 35, size: 256, elements: !982)
!981 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!982 = !{!983, !984, !985, !987}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !980, file: !981, line: 36, baseType: !551, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !980, file: !981, line: 42, baseType: !551, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !980, file: !981, line: 46, baseType: !986, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !286, line: 29, baseType: !293)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !980, file: !981, line: 47, baseType: !279, size: 128, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !948, file: !37, line: 462, baseType: !99, size: 64, offset: 640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !948, file: !37, line: 463, baseType: !99, size: 64, offset: 704)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !948, file: !37, line: 464, baseType: !99, size: 64, offset: 768)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !948, file: !37, line: 465, baseType: !992, size: 64, offset: 832)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !995)
!995 = !{!996, !1000, !1004, !1008, !1012, !1016, !1022, !1028, !1032, !1037, !1041, !1045, !1049, !1075, !1079, !1085, !1086, !1087, !1091, !1096, !1100, !1107}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !994, file: !37, line: 368, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!127, !934, !889}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !994, file: !37, line: 369, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!127, !566, !934}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !994, file: !37, line: 372, baseType: !1005, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!127, !947, !889}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !994, file: !37, line: 375, baseType: !1009, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!127, !934}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !994, file: !37, line: 381, baseType: !1013, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!127, !566, !947, !282, !7}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !994, file: !37, line: 383, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !994, file: !37, line: 385, baseType: !1023, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!127, !566, !947, !738, !7, !7, !1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !994, file: !37, line: 388, baseType: !1029, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!127, !566, !947, !738, !7, !7, !934, !97}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !994, file: !37, line: 393, baseType: !1033, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1036, !947, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !96, line: 125, baseType: !632)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !994, file: !37, line: 394, baseType: !1038, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !934, !7, !7}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !994, file: !37, line: 395, baseType: !1042, size: 64, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!127, !934, !95}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !994, file: !37, line: 396, baseType: !1046, size: 64, offset: 704)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !934}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !994, file: !37, line: 397, baseType: !1050, size: 64, offset: 768)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!783, !1053, !1073}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1062, !1063, !1064, !1065, !1066}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1054, file: !37, line: 321, baseType: !566, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1054, file: !37, line: 326, baseType: !738, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1054, file: !37, line: 327, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !1053, !105, !105}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1054, file: !37, line: 328, baseType: !97, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1054, file: !37, line: 329, baseType: !127, size: 32, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1054, file: !37, line: 330, baseType: !140, size: 16, offset: 288)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1054, file: !37, line: 331, baseType: !140, size: 16, offset: 304)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1054, file: !37, line: 332, baseType: !1067, size: 64, offset: 320)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1054, file: !37, line: 332, size: 64, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1067, file: !37, line: 333, baseType: !7, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1067, file: !37, line: 334, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !994, file: !37, line: 402, baseType: !1076, size: 64, offset: 832)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!127, !947, !934, !934, !12}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !994, file: !37, line: 404, baseType: !1080, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!304, !934, !1083}
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1084, line: 305, baseType: !7)
!1084 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !994, file: !37, line: 405, baseType: !1046, size: 64, offset: 960)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !994, file: !37, line: 406, baseType: !1009, size: 64, offset: 1024)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !994, file: !37, line: 407, baseType: !1088, size: 64, offset: 1088)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!127, !934, !99, !99}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !994, file: !37, line: 409, baseType: !1092, size: 64, offset: 1152)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !934, !1095, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !994, file: !37, line: 410, baseType: !1097, size: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!127, !947, !934}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !994, file: !37, line: 413, baseType: !1101, size: 64, offset: 1280)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!127, !1104, !566, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !994, file: !37, line: 415, baseType: !1108, size: 64, offset: 1344)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !566}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !37, line: 466, baseType: !99, size: 64, offset: 896)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !948, file: !37, line: 467, baseType: !1113, size: 32, offset: 960)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1114, line: 8, baseType: !629)
!1114 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !948, file: !37, line: 468, baseType: !285, offset: 992)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !948, file: !37, line: 469, baseType: !279, size: 128, offset: 1024)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !948, file: !37, line: 470, baseType: !97, size: 64, offset: 1152)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !943, file: !936, line: 87, baseType: !99, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !943, file: !936, line: 94, baseType: !99, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !936, line: 96, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !936, line: 96, size: 64, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1121, file: !936, line: 101, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !96, line: 143, baseType: !632)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !936, line: 103, baseType: !1126, size: 320)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !936, line: 103, size: 320, elements: !1127)
!1127 = !{!1128, !1138, !1141, !1142}
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !936, line: 104, baseType: !1129, size: 128)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !936, line: 104, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1129, file: !936, line: 105, baseType: !279, size: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !936, line: 106, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !936, line: 106, size: 128, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1133, file: !936, line: 107, baseType: !934, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1133, file: !936, line: 109, baseType: !127, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1133, file: !936, line: 110, baseType: !127, size: 32, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1126, file: !936, line: 117, baseType: !1139, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !936, line: 117, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1126, file: !936, line: 119, baseType: !97, size: 64, offset: 192)
!1142 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !936, line: 120, baseType: !1143, size: 64, offset: 256)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !936, line: 120, size: 64, elements: !1144)
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1143, file: !936, line: 121, baseType: !97, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1143, file: !936, line: 122, baseType: !99, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !936, line: 123, baseType: !1148, size: 32)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1143, file: !936, line: 123, size: 32, elements: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1148, file: !936, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1148, file: !936, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1148, file: !936, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !936, line: 130, baseType: !1154, size: 192)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !936, line: 130, size: 192, elements: !1155)
!1155 = !{!1156, !1157, !1158, !1159, !1160}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1154, file: !936, line: 131, baseType: !99, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1154, file: !936, line: 134, baseType: !152, size: 8, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1154, file: !936, line: 135, baseType: !152, size: 8, offset: 72)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1154, file: !936, line: 136, baseType: !960, size: 32, offset: 96)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1154, file: !936, line: 137, baseType: !7, size: 32, offset: 128)
!1161 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !936, line: 139, baseType: !1162, size: 256)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !936, line: 139, size: 256, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1162, file: !936, line: 140, baseType: !99, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1162, file: !936, line: 141, baseType: !960, size: 32, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1162, file: !936, line: 143, baseType: !279, size: 128, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !936, line: 145, baseType: !1168, size: 256)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !936, line: 145, size: 256, elements: !1169)
!1169 = !{!1170, !1171, !1173, !1174, !2425}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1168, file: !936, line: 146, baseType: !99, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1168, file: !936, line: 147, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !926, line: 509, baseType: !934)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1168, file: !936, line: 148, baseType: !99, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, scope: !1168, file: !936, line: 149, baseType: !1175, size: 64, offset: 192)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1168, file: !936, line: 149, size: 64, elements: !1176)
!1176 = !{!1177, !2424}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1175, file: !936, line: 150, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !936, line: 388, size: 7296, elements: !1180)
!1180 = !{!1181, !2420}
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1179, file: !936, line: 389, baseType: !1182, size: 7296)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !936, line: 389, size: 7296, elements: !1183)
!1183 = !{!1184, !1222, !1223, !1224, !1228, !1229, !1230, !1231, !1232, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1273, !1281, !1284, !1322, !1323, !2404, !2405, !2408, !2409, !2410, !2413, !2414, !2415, !2418, !2419}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1182, file: !936, line: 390, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !936, line: 305, size: 1472, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1202, !1203, !1208, !1209, !1212, !1216, !1217, !1218, !1219, !1220}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1186, file: !936, line: 308, baseType: !99, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1186, file: !936, line: 309, baseType: !99, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1186, file: !936, line: 313, baseType: !1185, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1186, file: !936, line: 313, baseType: !1185, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1186, file: !936, line: 315, baseType: !973, size: 192, align: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1186, file: !936, line: 323, baseType: !99, size: 64, offset: 448)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1186, file: !936, line: 327, baseType: !1178, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1186, file: !936, line: 333, baseType: !1196, size: 64, offset: 576)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !926, line: 284, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !926, line: 284, size: 64, elements: !1198)
!1198 = !{!1199}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1197, file: !926, line: 284, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1201, line: 19, baseType: !99)
!1201 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1186, file: !936, line: 334, baseType: !99, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1186, file: !936, line: 343, baseType: !1204, size: 256, offset: 704)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1186, file: !936, line: 340, size: 256, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1204, file: !936, line: 341, baseType: !973, size: 192, align: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1204, file: !936, line: 342, baseType: !99, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1186, file: !936, line: 351, baseType: !279, size: 128, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1186, file: !936, line: 353, baseType: !1210, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !936, line: 353, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1186, file: !936, line: 356, baseType: !1213, size: 64, offset: 1152)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !936, line: 356, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1186, file: !936, line: 359, baseType: !99, size: 64, offset: 1216)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1186, file: !936, line: 361, baseType: !566, size: 64, offset: 1280)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1186, file: !936, line: 362, baseType: !97, size: 64, offset: 1344)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1186, file: !936, line: 365, baseType: !551, size: 64, offset: 1408)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1186, file: !936, line: 373, baseType: !1221, offset: 1472)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !936, line: 296, elements: !299)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1182, file: !936, line: 391, baseType: !969, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1182, file: !936, line: 392, baseType: !632, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1182, file: !936, line: 394, baseType: !1225, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!99, !566, !99, !99, !99, !99}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1182, file: !936, line: 398, baseType: !99, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1182, file: !936, line: 399, baseType: !99, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1182, file: !936, line: 405, baseType: !99, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1182, file: !936, line: 406, baseType: !99, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1182, file: !936, line: 407, baseType: !1233, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !926, line: 286, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !926, line: 286, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1235, file: !926, line: 286, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1201, line: 18, baseType: !99)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1182, file: !936, line: 416, baseType: !960, size: 32, offset: 576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1182, file: !936, line: 428, baseType: !960, size: 32, offset: 608)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1182, file: !936, line: 437, baseType: !960, size: 32, offset: 640)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1182, file: !936, line: 447, baseType: !960, size: 32, offset: 672)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1182, file: !936, line: 450, baseType: !551, size: 64, offset: 704)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1182, file: !936, line: 452, baseType: !127, size: 32, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1182, file: !936, line: 454, baseType: !285, offset: 800)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1182, file: !936, line: 457, baseType: !980, size: 256, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1182, file: !936, line: 459, baseType: !279, size: 128, offset: 1088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1182, file: !936, line: 466, baseType: !99, size: 64, offset: 1216)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1182, file: !936, line: 467, baseType: !99, size: 64, offset: 1280)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1182, file: !936, line: 469, baseType: !99, size: 64, offset: 1344)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1182, file: !936, line: 470, baseType: !99, size: 64, offset: 1408)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1182, file: !936, line: 471, baseType: !553, size: 64, offset: 1472)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1182, file: !936, line: 472, baseType: !99, size: 64, offset: 1536)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1182, file: !936, line: 473, baseType: !99, size: 64, offset: 1600)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1182, file: !936, line: 474, baseType: !99, size: 64, offset: 1664)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1182, file: !936, line: 475, baseType: !99, size: 64, offset: 1728)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1182, file: !936, line: 477, baseType: !285, offset: 1792)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1182, file: !936, line: 478, baseType: !99, size: 64, offset: 1792)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1182, file: !936, line: 478, baseType: !99, size: 64, offset: 1856)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1182, file: !936, line: 478, baseType: !99, size: 64, offset: 1920)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1182, file: !936, line: 478, baseType: !99, size: 64, offset: 1984)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1182, file: !936, line: 479, baseType: !99, size: 64, offset: 2048)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1182, file: !936, line: 479, baseType: !99, size: 64, offset: 2112)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1182, file: !936, line: 479, baseType: !99, size: 64, offset: 2176)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1182, file: !936, line: 480, baseType: !99, size: 64, offset: 2240)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1182, file: !936, line: 480, baseType: !99, size: 64, offset: 2304)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1182, file: !936, line: 480, baseType: !99, size: 64, offset: 2368)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1182, file: !936, line: 480, baseType: !99, size: 64, offset: 2432)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1182, file: !936, line: 482, baseType: !1270, size: 2816, offset: 2496)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2816, elements: !1271)
!1271 = !{!1272}
!1272 = !DISubrange(count: 44)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1182, file: !936, line: 488, baseType: !1274, size: 256, offset: 5312)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1275, line: 60, size: 256, elements: !1276)
!1275 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1274, file: !1275, line: 61, baseType: !1278, size: 256)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 256, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 4)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1182, file: !936, line: 490, baseType: !1282, size: 64, offset: 5568)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !936, line: 490, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1182, file: !936, line: 493, baseType: !1285, size: 896, offset: 5632)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1286, line: 53, baseType: !1287)
!1286 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1286, line: 13, size: 896, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1295, !1296, !1297, !1298, !1318, !1319, !1320}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1287, file: !1286, line: 18, baseType: !632, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1287, file: !1286, line: 28, baseType: !553, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1287, file: !1286, line: 31, baseType: !980, size: 256, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1287, file: !1286, line: 32, baseType: !1293, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1286, line: 32, flags: DIFlagFwdDecl)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1287, file: !1286, line: 37, baseType: !144, size: 16, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1287, file: !1286, line: 40, baseType: !547, size: 192, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1287, file: !1286, line: 41, baseType: !97, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1287, file: !1286, line: 42, baseType: !1299, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1302, line: 13, size: 896, elements: !1303)
!1302 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1301, file: !1302, line: 14, baseType: !97, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1301, file: !1302, line: 15, baseType: !99, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1301, file: !1302, line: 17, baseType: !99, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1301, file: !1302, line: 17, baseType: !99, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1301, file: !1302, line: 19, baseType: !105, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1301, file: !1302, line: 21, baseType: !105, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1301, file: !1302, line: 22, baseType: !105, size: 64, offset: 384)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1301, file: !1302, line: 23, baseType: !105, size: 64, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1301, file: !1302, line: 24, baseType: !105, size: 64, offset: 512)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1301, file: !1302, line: 25, baseType: !105, size: 64, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1301, file: !1302, line: 26, baseType: !105, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1301, file: !1302, line: 27, baseType: !105, size: 64, offset: 704)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1301, file: !1302, line: 28, baseType: !105, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1301, file: !1302, line: 29, baseType: !105, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1287, file: !1286, line: 44, baseType: !960, size: 32, offset: 832)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1287, file: !1286, line: 50, baseType: !140, size: 16, offset: 864)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1287, file: !1286, line: 51, baseType: !1321, size: 16, offset: 880)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !141, line: 18, baseType: !371)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !936, line: 495, baseType: !99, size: 64, offset: 6528)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1182, file: !936, line: 497, baseType: !1324, size: 64, offset: 6592)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !936, line: 381, size: 384, elements: !1326)
!1326 = !{!1327, !1328, !2403}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1325, file: !936, line: 382, baseType: !960, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1325, file: !936, line: 383, baseType: !1329, size: 128, offset: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !936, line: 376, size: 128, elements: !1330)
!1330 = !{!1331, !2401}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1329, file: !936, line: 377, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1334, line: 640, size: 48640, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1335 = !{!1336, !1342, !1343, !1344, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1361, !1379, !1390, !1473, !1474, !1475, !1483, !1484, !1486, !1487, !1488, !1489, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1567, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1605, !1607, !1608, !1609, !1621, !1622, !1623, !1624, !1625, !1626, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1650, !1655, !1837, !1838, !1839, !1840, !1844, !1847, !1850, !1853, !1856, !1859, !1960, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !2006, !2007, !2008, !2009, !2010, !2015, !2016, !2017, !2020, !2021, !2024, !2027, !2030, !2033, !2076, !2079, !2080, !2159, !2160, !2163, !2164, !2167, !2168, !2169, !2173, !2174, !2175, !2188, !2189, !2190, !2200, !2205, !2208, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1333, file: !1334, line: 646, baseType: !1337, size: 128)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1338, line: 56, size: 128, elements: !1339)
!1338 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !1338, line: 57, baseType: !99, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1337, file: !1338, line: 58, baseType: !629, size: 32, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1333, file: !1334, line: 649, baseType: !104, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1333, file: !1334, line: 657, baseType: !97, size: 64, offset: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1333, file: !1334, line: 658, baseType: !1345, size: 32, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1346, line: 113, baseType: !1347)
!1346 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1346, line: 111, size: 32, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1347, file: !1346, line: 112, baseType: !960, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1333, file: !1334, line: 660, baseType: !7, size: 32, offset: 288)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1333, file: !1334, line: 661, baseType: !7, size: 32, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1333, file: !1334, line: 684, baseType: !127, size: 32, offset: 352)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1333, file: !1334, line: 686, baseType: !127, size: 32, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1333, file: !1334, line: 687, baseType: !127, size: 32, offset: 416)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1333, file: !1334, line: 688, baseType: !127, size: 32, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1333, file: !1334, line: 689, baseType: !7, size: 32, offset: 480)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1333, file: !1334, line: 691, baseType: !1358, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1334, line: 691, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1333, file: !1334, line: 692, baseType: !1362, size: 832, offset: 576)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1334, line: 451, size: 832, elements: !1363)
!1363 = !{!1364, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1362, file: !1334, line: 453, baseType: !1365, size: 128)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1334, line: 325, size: 128, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1365, file: !1334, line: 326, baseType: !99, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1365, file: !1334, line: 327, baseType: !629, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1362, file: !1334, line: 454, baseType: !973, size: 192, align: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1362, file: !1334, line: 455, baseType: !279, size: 128, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1362, file: !1334, line: 456, baseType: !7, size: 32, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1362, file: !1334, line: 458, baseType: !632, size: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1362, file: !1334, line: 459, baseType: !632, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1362, file: !1334, line: 460, baseType: !632, size: 64, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1362, file: !1334, line: 461, baseType: !632, size: 64, offset: 704)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1362, file: !1334, line: 463, baseType: !632, size: 64, offset: 768)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1362, file: !1334, line: 465, baseType: !1378, offset: 832)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1334, line: 415, elements: !299)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1333, file: !1334, line: 693, baseType: !1380, size: 384, offset: 1408)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1334, line: 489, size: 384, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1380, file: !1334, line: 490, baseType: !279, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1380, file: !1334, line: 491, baseType: !99, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1380, file: !1334, line: 492, baseType: !99, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1380, file: !1334, line: 493, baseType: !7, size: 32, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1380, file: !1334, line: 494, baseType: !144, size: 16, offset: 288)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1380, file: !1334, line: 495, baseType: !144, size: 16, offset: 304)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1380, file: !1334, line: 497, baseType: !1389, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1333, file: !1334, line: 697, baseType: !1391, size: 1792, offset: 1792)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1334, line: 507, size: 1792, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1470, !1471}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1391, file: !1334, line: 508, baseType: !973, size: 192, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1391, file: !1334, line: 515, baseType: !632, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1391, file: !1334, line: 516, baseType: !632, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1391, file: !1334, line: 517, baseType: !632, size: 64, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1391, file: !1334, line: 518, baseType: !632, size: 64, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1391, file: !1334, line: 519, baseType: !632, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1391, file: !1334, line: 526, baseType: !557, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1391, file: !1334, line: 527, baseType: !632, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1391, file: !1334, line: 528, baseType: !7, size: 32, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1391, file: !1334, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1391, file: !1334, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1391, file: !1334, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1391, file: !1334, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1391, file: !1334, line: 563, baseType: !1407, size: 512, offset: 704)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1408)
!1408 = !{!1409, !1417, !1418, !1423, !1466, !1467, !1468, !1469}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1407, file: !20, line: 119, baseType: !1410, size: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1411, line: 9, size: 256, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1410, file: !1411, line: 10, baseType: !973, size: 192, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1410, file: !1411, line: 11, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1416, line: 29, baseType: !557)
!1416 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1407, file: !20, line: 120, baseType: !1415, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1407, file: !20, line: 121, baseType: !1419, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!19, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1407, file: !20, line: 122, baseType: !1424, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1426)
!1426 = !{!1427, !1447, !1448, !1451, !1456, !1457, !1461, !1465}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1425, file: !20, line: 160, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1429, file: !20, line: 215, baseType: !986)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1429, file: !20, line: 216, baseType: !7, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1429, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1429, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1429, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1429, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1429, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1429, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1429, file: !20, line: 233, baseType: !1415, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1429, file: !20, line: 234, baseType: !1422, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1429, file: !20, line: 235, baseType: !1415, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1429, file: !20, line: 236, baseType: !1422, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1429, file: !20, line: 237, baseType: !1444, size: 4096, offset: 512)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1425, size: 4096, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 8)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1425, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1425, file: !20, line: 162, baseType: !1449, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !96, line: 27, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !653, line: 96, baseType: !127)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1425, file: !20, line: 163, baseType: !1452, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !602, line: 276, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !602, line: 276, size: 32, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1453, file: !602, line: 276, baseType: !606, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1425, file: !20, line: 164, baseType: !1422, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1425, file: !20, line: 165, baseType: !1458, size: 128, offset: 256)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1411, line: 14, size: 128, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1458, file: !1411, line: 15, baseType: !965, size: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1425, file: !20, line: 166, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1415}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1425, file: !20, line: 167, baseType: !1415, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1407, file: !20, line: 123, baseType: !150, size: 8, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1407, file: !20, line: 124, baseType: !150, size: 8, offset: 456)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1407, file: !20, line: 125, baseType: !150, size: 8, offset: 464)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1407, file: !20, line: 126, baseType: !150, size: 8, offset: 472)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1391, file: !1334, line: 572, baseType: !1407, size: 512, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1391, file: !1334, line: 580, baseType: !1472, size: 64, offset: 1728)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1333, file: !1334, line: 721, baseType: !7, size: 32, offset: 3584)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1333, file: !1334, line: 722, baseType: !127, size: 32, offset: 3616)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1333, file: !1334, line: 723, baseType: !1476, size: 64, offset: 3648)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1479, line: 17, baseType: !1480)
!1479 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1479, line: 17, size: 64, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1480, file: !1479, line: 17, baseType: !413, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1333, file: !1334, line: 724, baseType: !1478, size: 64, offset: 3712)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1333, file: !1334, line: 749, baseType: !1485, offset: 3776)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1334, line: 290, elements: !299)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1333, file: !1334, line: 751, baseType: !279, size: 128, offset: 3776)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1333, file: !1334, line: 757, baseType: !1178, size: 64, offset: 3904)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1333, file: !1334, line: 758, baseType: !1178, size: 64, offset: 3968)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1333, file: !1334, line: 761, baseType: !1490, size: 320, offset: 4032)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1275, line: 34, size: 320, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1490, file: !1275, line: 35, baseType: !632, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1490, file: !1275, line: 36, baseType: !1494, size: 256, offset: 64)
!1494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 256, elements: !1279)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1333, file: !1334, line: 766, baseType: !127, size: 32, offset: 4352)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1333, file: !1334, line: 767, baseType: !127, size: 32, offset: 4384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1333, file: !1334, line: 768, baseType: !127, size: 32, offset: 4416)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1333, file: !1334, line: 770, baseType: !127, size: 32, offset: 4448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1333, file: !1334, line: 772, baseType: !99, size: 64, offset: 4480)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1333, file: !1334, line: 775, baseType: !7, size: 32, offset: 4544)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1333, file: !1334, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1333, file: !1334, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1333, file: !1334, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1333, file: !1334, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1333, file: !1334, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1333, file: !1334, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1333, file: !1334, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1333, file: !1334, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1333, file: !1334, line: 831, baseType: !99, size: 64, offset: 4672)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1333, file: !1334, line: 833, baseType: !1511, size: 384, offset: 4736)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1512)
!1512 = !{!1513, !1518}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1511, file: !25, line: 26, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!105, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !25, line: 27, baseType: !1519, size: 320, offset: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !25, line: 27, size: 320, elements: !1520)
!1520 = !{!1521, !1531, !1557}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1519, file: !25, line: 36, baseType: !1522, size: 320)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !25, line: 29, size: 320, elements: !1523)
!1523 = !{!1524, !1526, !1527, !1528, !1529, !1530}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1522, file: !25, line: 30, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1522, file: !25, line: 31, baseType: !629, size: 32, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1522, file: !25, line: 32, baseType: !629, size: 32, offset: 96)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1522, file: !25, line: 33, baseType: !629, size: 32, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1522, file: !25, line: 34, baseType: !632, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1522, file: !25, line: 35, baseType: !1525, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1519, file: !25, line: 46, baseType: !1532, size: 192)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !25, line: 38, size: 192, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1556}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1532, file: !25, line: 39, baseType: !1449, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1532, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !25, line: 41, baseType: !1537, size: 64, offset: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !25, line: 41, size: 64, elements: !1538)
!1538 = !{!1539, !1547}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1537, file: !25, line: 42, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1542, line: 7, size: 128, elements: !1543)
!1542 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !{!1544, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1541, file: !1542, line: 8, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !653, line: 93, baseType: !559)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1541, file: !1542, line: 9, baseType: !559, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1537, file: !25, line: 43, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1550, line: 7, size: 64, elements: !1551)
!1550 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1551 = !{!1552, !1555}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1549, file: !1550, line: 8, baseType: !1553, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1550, line: 5, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !141, line: 20, baseType: !381)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1549, file: !1550, line: 9, baseType: !1554, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1532, file: !25, line: 45, baseType: !632, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1519, file: !25, line: 54, baseType: !1558, size: 256)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1519, file: !25, line: 48, size: 256, elements: !1559)
!1559 = !{!1560, !1563, !1564, !1565, !1566}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1558, file: !25, line: 49, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1558, file: !25, line: 50, baseType: !127, size: 32, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1558, file: !25, line: 51, baseType: !127, size: 32, offset: 96)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1558, file: !25, line: 52, baseType: !99, size: 64, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1558, file: !25, line: 53, baseType: !99, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1333, file: !1334, line: 835, baseType: !1568, size: 32, offset: 5120)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !96, line: 22, baseType: !1569)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !653, line: 28, baseType: !127)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1333, file: !1334, line: 836, baseType: !1568, size: 32, offset: 5152)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1333, file: !1334, line: 840, baseType: !99, size: 64, offset: 5184)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1333, file: !1334, line: 849, baseType: !1332, size: 64, offset: 5248)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1333, file: !1334, line: 852, baseType: !1332, size: 64, offset: 5312)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1333, file: !1334, line: 857, baseType: !279, size: 128, offset: 5376)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1333, file: !1334, line: 858, baseType: !279, size: 128, offset: 5504)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1333, file: !1334, line: 859, baseType: !1332, size: 64, offset: 5632)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1333, file: !1334, line: 867, baseType: !279, size: 128, offset: 5696)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1333, file: !1334, line: 868, baseType: !279, size: 128, offset: 5824)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1333, file: !1334, line: 871, baseType: !1580, size: 64, offset: 5952)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1586, !1588, !1589, !1596, !1597}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1581, file: !46, line: 61, baseType: !1345, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1581, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1581, file: !46, line: 63, baseType: !285, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1581, file: !46, line: 65, baseType: !1587, size: 256, offset: 64)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 256, elements: !1279)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1581, file: !46, line: 66, baseType: !846, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1581, file: !46, line: 68, baseType: !1590, size: 128, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1591, line: 40, baseType: !1592)
!1591 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1591, line: 36, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1592, file: !1591, line: 37, baseType: !285)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1592, file: !1591, line: 38, baseType: !279, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1581, file: !46, line: 69, baseType: !579, size: 128, align: 64, offset: 512)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1581, file: !46, line: 70, baseType: !1598, size: 128, offset: 640)
!1598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1599, size: 128, elements: !414)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1599, file: !46, line: 55, baseType: !127, size: 32)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1599, file: !46, line: 56, baseType: !1603, size: 64, offset: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1333, file: !1334, line: 872, baseType: !1606, size: 512, offset: 6016)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 512, elements: !1279)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1333, file: !1334, line: 873, baseType: !279, size: 128, offset: 6528)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1333, file: !1334, line: 874, baseType: !279, size: 128, offset: 6656)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1333, file: !1334, line: 876, baseType: !1610, size: 64, offset: 6784)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1612, line: 26, size: 192, elements: !1613)
!1612 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1611, file: !1612, line: 27, baseType: !7, size: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1611, file: !1612, line: 28, baseType: !1616, size: 128, offset: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1617, line: 43, size: 128, elements: !1618)
!1617 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1616, file: !1617, line: 44, baseType: !986)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1616, file: !1617, line: 45, baseType: !279, size: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1333, file: !1334, line: 879, baseType: !918, size: 64, offset: 6848)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1333, file: !1334, line: 882, baseType: !918, size: 64, offset: 6912)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1333, file: !1334, line: 884, baseType: !632, size: 64, offset: 6976)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1333, file: !1334, line: 885, baseType: !632, size: 64, offset: 7040)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1333, file: !1334, line: 890, baseType: !632, size: 64, offset: 7104)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1333, file: !1334, line: 891, baseType: !1627, size: 128, offset: 7168)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1334, line: 242, size: 128, elements: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1627, file: !1334, line: 244, baseType: !632, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1627, file: !1334, line: 245, baseType: !632, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1627, file: !1334, line: 246, baseType: !986, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1333, file: !1334, line: 900, baseType: !99, size: 64, offset: 7296)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1333, file: !1334, line: 901, baseType: !99, size: 64, offset: 7360)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1333, file: !1334, line: 904, baseType: !632, size: 64, offset: 7424)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1333, file: !1334, line: 907, baseType: !632, size: 64, offset: 7488)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1333, file: !1334, line: 910, baseType: !99, size: 64, offset: 7552)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1333, file: !1334, line: 911, baseType: !99, size: 64, offset: 7616)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1333, file: !1334, line: 914, baseType: !1639, size: 640, offset: 7680)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1640, line: 123, size: 640, elements: !1641)
!1640 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1641 = !{!1642, !1648, !1649}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1639, file: !1640, line: 124, baseType: !1643, size: 576)
!1643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1644, size: 576, elements: !862)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1640, line: 108, size: 192, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1644, file: !1640, line: 109, baseType: !632, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1644, file: !1640, line: 110, baseType: !1458, size: 128, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1639, file: !1640, line: 125, baseType: !7, size: 32, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1639, file: !1640, line: 126, baseType: !7, size: 32, offset: 608)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1333, file: !1334, line: 917, baseType: !1651, size: 192, offset: 8320)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1640, line: 134, size: 192, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1651, file: !1640, line: 135, baseType: !579, size: 128, align: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1651, file: !1640, line: 136, baseType: !7, size: 32, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1333, file: !1334, line: 923, baseType: !1656, size: 64, offset: 8512)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1659, line: 111, size: 1280, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1678, !1679, !1680, !1681, !1682, !1683, !1790, !1791, !1792, !1793, !1819, !1822, !1832}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1658, file: !1659, line: 112, baseType: !960, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1658, file: !1659, line: 120, baseType: !646, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1658, file: !1659, line: 121, baseType: !655, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1658, file: !1659, line: 122, baseType: !646, size: 32, offset: 96)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1658, file: !1659, line: 123, baseType: !655, size: 32, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1658, file: !1659, line: 124, baseType: !646, size: 32, offset: 160)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1658, file: !1659, line: 125, baseType: !655, size: 32, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1658, file: !1659, line: 126, baseType: !646, size: 32, offset: 224)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1658, file: !1659, line: 127, baseType: !655, size: 32, offset: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1658, file: !1659, line: 128, baseType: !7, size: 32, offset: 288)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1658, file: !1659, line: 129, baseType: !1672, size: 64, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1673, line: 26, baseType: !1674)
!1673 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1673, line: 24, size: 64, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1674, file: !1673, line: 25, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 64, elements: !428)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1658, file: !1659, line: 130, baseType: !1672, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1658, file: !1659, line: 131, baseType: !1672, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1658, file: !1659, line: 132, baseType: !1672, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1658, file: !1659, line: 133, baseType: !1672, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1658, file: !1659, line: 135, baseType: !152, size: 8, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1658, file: !1659, line: 137, baseType: !1684, size: 64, offset: 704)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1686, line: 189, size: 1664, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1692, !1697, !1698, !1701, !1702, !1707, !1708, !1709, !1710, !1712, !1713, !1714, !1715, !1716, !1754, !1775}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1685, file: !1686, line: 190, baseType: !1345, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1685, file: !1686, line: 191, baseType: !1690, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1686, line: 28, baseType: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !96, line: 98, baseType: !1554)
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !1686, line: 192, baseType: !1693, size: 192, offset: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !1686, line: 192, size: 192, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1693, file: !1686, line: 193, baseType: !279, size: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1693, file: !1686, line: 194, baseType: !973, size: 192, align: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1685, file: !1686, line: 199, baseType: !980, size: 256, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1685, file: !1686, line: 200, baseType: !1699, size: 64, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1686, line: 200, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1685, file: !1686, line: 201, baseType: !97, size: 64, offset: 576)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !1686, line: 202, baseType: !1703, size: 64, offset: 640)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !1686, line: 202, size: 64, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1703, file: !1686, line: 203, baseType: !745, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1703, file: !1686, line: 204, baseType: !745, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1685, file: !1686, line: 206, baseType: !745, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1685, file: !1686, line: 207, baseType: !646, size: 32, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1685, file: !1686, line: 208, baseType: !655, size: 32, offset: 800)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1685, file: !1686, line: 209, baseType: !1711, size: 32, offset: 832)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1686, line: 31, baseType: !764)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1685, file: !1686, line: 210, baseType: !144, size: 16, offset: 864)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1685, file: !1686, line: 211, baseType: !144, size: 16, offset: 880)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1685, file: !1686, line: 215, baseType: !372, size: 16, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !1686, line: 222, baseType: !99, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !1686, line: 239, baseType: !1717, size: 320, offset: 1024)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !1686, line: 239, size: 320, elements: !1718)
!1718 = !{!1719, !1746}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1717, file: !1686, line: 240, baseType: !1720, size: 320)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1686, line: 108, size: 320, elements: !1721)
!1721 = !{!1722, !1723, !1735, !1738, !1745}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1720, file: !1686, line: 110, baseType: !99, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !1686, line: 111, baseType: !1724, size: 64, offset: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !1686, line: 111, size: 64, elements: !1725)
!1725 = !{!1726, !1734}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !1686, line: 112, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1724, file: !1686, line: 112, size: 64, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1727, file: !1686, line: 114, baseType: !140, size: 16)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1727, file: !1686, line: 115, baseType: !1731, size: 48, offset: 16)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 48, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 6)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1724, file: !1686, line: 121, baseType: !99, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1720, file: !1686, line: 123, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1686, line: 96, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1720, file: !1686, line: 124, baseType: !1739, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1686, line: 102, size: 192, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1740, file: !1686, line: 103, baseType: !579, size: 128, align: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1740, file: !1686, line: 104, baseType: !1345, size: 32, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1740, file: !1686, line: 105, baseType: !304, size: 8, offset: 160)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1720, file: !1686, line: 125, baseType: !114, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1686, line: 241, baseType: !1747, size: 320)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1686, line: 241, size: 320, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1747, file: !1686, line: 242, baseType: !99, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1747, file: !1686, line: 243, baseType: !99, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1747, file: !1686, line: 244, baseType: !1736, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1747, file: !1686, line: 245, baseType: !1739, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1747, file: !1686, line: 246, baseType: !133, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !1685, file: !1686, line: 254, baseType: !1755, size: 256, offset: 1344)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !1686, line: 254, size: 256, elements: !1756)
!1756 = !{!1757, !1763}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1755, file: !1686, line: 255, baseType: !1758, size: 256)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1686, line: 128, size: 256, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1758, file: !1686, line: 129, baseType: !97, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1758, file: !1686, line: 130, baseType: !1762, size: 256)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !1279)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1755, file: !1686, line: 256, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1755, file: !1686, line: 256, size: 256, elements: !1765)
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1764, file: !1686, line: 258, baseType: !279, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1764, file: !1686, line: 259, baseType: !1768, size: 128, offset: 128)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1769, line: 22, size: 128, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !{!1771, !1774}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1768, file: !1769, line: 23, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1769, line: 23, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1768, file: !1769, line: 24, baseType: !99, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1685, file: !1686, line: 274, baseType: !1776, size: 64, offset: 1600)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1686, line: 170, size: 192, elements: !1778)
!1778 = !{!1779, !1788, !1789}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1777, file: !1686, line: 171, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1686, line: 165, baseType: !1781)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!127, !1684, !1784, !1786, !1684}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1777, file: !1686, line: 172, baseType: !1684, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1777, file: !1686, line: 173, baseType: !1736, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1658, file: !1659, line: 138, baseType: !1684, size: 64, offset: 768)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1658, file: !1659, line: 139, baseType: !1684, size: 64, offset: 832)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1658, file: !1659, line: 140, baseType: !1684, size: 64, offset: 896)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1658, file: !1659, line: 145, baseType: !1794, size: 64, offset: 960)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1796, line: 13, size: 896, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1795, file: !1796, line: 14, baseType: !1345, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1795, file: !1796, line: 15, baseType: !960, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1795, file: !1796, line: 16, baseType: !960, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1795, file: !1796, line: 21, baseType: !551, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1795, file: !1796, line: 27, baseType: !99, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1795, file: !1796, line: 28, baseType: !99, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1795, file: !1796, line: 29, baseType: !551, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1795, file: !1796, line: 32, baseType: !850, size: 128, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1795, file: !1796, line: 33, baseType: !646, size: 32, offset: 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1795, file: !1796, line: 37, baseType: !551, size: 64, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1795, file: !1796, line: 44, baseType: !1809, size: 256, offset: 640)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1810, line: 15, size: 256, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !1810, line: 16, baseType: !986)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1809, file: !1810, line: 18, baseType: !127, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1809, file: !1810, line: 19, baseType: !127, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1809, file: !1810, line: 20, baseType: !127, size: 32, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1809, file: !1810, line: 21, baseType: !127, size: 32, offset: 96)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1809, file: !1810, line: 22, baseType: !99, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 23, baseType: !99, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1658, file: !1659, line: 146, baseType: !1820, size: 64, offset: 1024)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !647, line: 18, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1658, file: !1659, line: 147, baseType: !1823, size: 64, offset: 1088)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1659, line: 25, size: 64, elements: !1825)
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1824, file: !1659, line: 26, baseType: !960, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1824, file: !1659, line: 27, baseType: !127, size: 32, offset: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1824, file: !1659, line: 28, baseType: !1829, offset: 64)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1658, file: !1659, line: 149, baseType: !1833, size: 128, offset: 1152)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1658, file: !1659, line: 149, size: 128, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1833, file: !1659, line: 150, baseType: !127, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1833, file: !1659, line: 151, baseType: !579, size: 128, align: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1333, file: !1334, line: 926, baseType: !1656, size: 64, offset: 8576)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1333, file: !1334, line: 929, baseType: !1656, size: 64, offset: 8640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1333, file: !1334, line: 933, baseType: !1684, size: 64, offset: 8704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1333, file: !1334, line: 943, baseType: !1841, size: 128, offset: 8768)
!1841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !1842)
!1842 = !{!1843}
!1843 = !DISubrange(count: 16)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1333, file: !1334, line: 945, baseType: !1845, size: 64, offset: 8896)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1334, line: 49, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1333, file: !1334, line: 956, baseType: !1848, size: 64, offset: 8960)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1334, line: 45, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1333, file: !1334, line: 959, baseType: !1851, size: 64, offset: 9024)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1334, line: 959, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1333, file: !1334, line: 962, baseType: !1854, size: 64, offset: 9088)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1334, line: 66, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1333, file: !1334, line: 966, baseType: !1857, size: 64, offset: 9152)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1334, line: 50, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1333, file: !1334, line: 969, baseType: !1860, size: 64, offset: 9216)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1862, line: 82, size: 7296, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1899, !1908, !1909, !1911, !1912, !1913, !1916, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1946, !1947, !1954, !1955, !1956, !1957, !1958, !1959}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1861, file: !1862, line: 83, baseType: !1345, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1861, file: !1862, line: 84, baseType: !960, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1861, file: !1862, line: 85, baseType: !127, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1861, file: !1862, line: 86, baseType: !279, size: 128, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1861, file: !1862, line: 88, baseType: !1590, size: 128, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1861, file: !1862, line: 91, baseType: !1332, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1861, file: !1862, line: 94, baseType: !1871, size: 192, offset: 448)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1872, line: 30, size: 192, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1871, file: !1872, line: 31, baseType: !279, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1871, file: !1872, line: 32, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1877, line: 25, baseType: !1878)
!1877 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1877, line: 23, size: 64, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1878, file: !1877, line: 24, baseType: !413, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1861, file: !1862, line: 97, baseType: !846, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1861, file: !1862, line: 100, baseType: !127, size: 32, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1861, file: !1862, line: 106, baseType: !127, size: 32, offset: 736)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1861, file: !1862, line: 107, baseType: !1332, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1861, file: !1862, line: 110, baseType: !127, size: 32, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1861, file: !1862, line: 111, baseType: !7, size: 32, offset: 864)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1861, file: !1862, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1861, file: !1862, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1861, file: !1862, line: 128, baseType: !127, size: 32, offset: 928)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1861, file: !1862, line: 129, baseType: !279, size: 128, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1861, file: !1862, line: 132, baseType: !1407, size: 512, offset: 1088)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1861, file: !1862, line: 133, baseType: !1415, size: 64, offset: 1600)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1861, file: !1862, line: 140, baseType: !1894, size: 256, offset: 1664)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 256, elements: !428)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1862, line: 38, size: 128, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1895, file: !1862, line: 39, baseType: !632, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1895, file: !1862, line: 40, baseType: !632, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1861, file: !1862, line: 146, baseType: !1900, size: 192, offset: 1920)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1862, line: 66, size: 192, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1900, file: !1862, line: 67, baseType: !1903, size: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1862, line: 47, size: 192, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1903, file: !1862, line: 48, baseType: !553, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1903, file: !1862, line: 49, baseType: !553, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1903, file: !1862, line: 50, baseType: !553, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1861, file: !1862, line: 150, baseType: !1639, size: 640, offset: 2112)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1861, file: !1862, line: 153, baseType: !1910, size: 256, offset: 2752)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1580, size: 256, elements: !1279)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1861, file: !1862, line: 159, baseType: !1580, size: 64, offset: 3008)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1861, file: !1862, line: 162, baseType: !127, size: 32, offset: 3072)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1861, file: !1862, line: 164, baseType: !1914, size: 64, offset: 3136)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1862, line: 164, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1861, file: !1862, line: 175, baseType: !1917, size: 32, offset: 3200)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !602, line: 805, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !602, line: 798, size: 32, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1918, file: !602, line: 803, baseType: !601, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1918, file: !602, line: 804, baseType: !285, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1861, file: !1862, line: 176, baseType: !632, size: 64, offset: 3264)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1861, file: !1862, line: 176, baseType: !632, size: 64, offset: 3328)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1861, file: !1862, line: 176, baseType: !632, size: 64, offset: 3392)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1861, file: !1862, line: 176, baseType: !632, size: 64, offset: 3456)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1861, file: !1862, line: 177, baseType: !632, size: 64, offset: 3520)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1861, file: !1862, line: 178, baseType: !632, size: 64, offset: 3584)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1861, file: !1862, line: 179, baseType: !1627, size: 128, offset: 3648)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1861, file: !1862, line: 180, baseType: !99, size: 64, offset: 3776)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1861, file: !1862, line: 180, baseType: !99, size: 64, offset: 3840)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1861, file: !1862, line: 180, baseType: !99, size: 64, offset: 3904)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1861, file: !1862, line: 180, baseType: !99, size: 64, offset: 3968)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1861, file: !1862, line: 181, baseType: !99, size: 64, offset: 4032)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1861, file: !1862, line: 181, baseType: !99, size: 64, offset: 4096)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1861, file: !1862, line: 181, baseType: !99, size: 64, offset: 4160)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1861, file: !1862, line: 181, baseType: !99, size: 64, offset: 4224)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1861, file: !1862, line: 182, baseType: !99, size: 64, offset: 4288)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1861, file: !1862, line: 182, baseType: !99, size: 64, offset: 4352)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1861, file: !1862, line: 182, baseType: !99, size: 64, offset: 4416)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1861, file: !1862, line: 182, baseType: !99, size: 64, offset: 4480)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1861, file: !1862, line: 183, baseType: !99, size: 64, offset: 4544)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1861, file: !1862, line: 183, baseType: !99, size: 64, offset: 4608)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1861, file: !1862, line: 184, baseType: !1944, offset: 4672)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1945, line: 12, elements: !299)
!1945 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1861, file: !1862, line: 192, baseType: !634, size: 64, offset: 4672)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1861, file: !1862, line: 203, baseType: !1948, size: 2048, offset: 4736)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1949, size: 2048, elements: !1842)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1950, line: 43, size: 128, elements: !1951)
!1950 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1949, file: !1950, line: 44, baseType: !788, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1949, file: !1950, line: 45, baseType: !788, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1861, file: !1862, line: 220, baseType: !304, size: 8, offset: 6784)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1861, file: !1862, line: 221, baseType: !372, size: 16, offset: 6800)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1861, file: !1862, line: 222, baseType: !372, size: 16, offset: 6816)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1861, file: !1862, line: 224, baseType: !1178, size: 64, offset: 6848)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1861, file: !1862, line: 227, baseType: !547, size: 192, offset: 6912)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1861, file: !1862, line: 233, baseType: !547, size: 192, offset: 7104)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1333, file: !1334, line: 970, baseType: !1961, size: 64, offset: 9280)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1862, line: 20, size: 16576, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1962, file: !1862, line: 21, baseType: !285)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1962, file: !1862, line: 22, baseType: !1345, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1962, file: !1862, line: 23, baseType: !1590, size: 128, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1962, file: !1862, line: 24, baseType: !1968, size: 16384, offset: 192)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1969, size: 16384, elements: !1987)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1872, line: 49, size: 256, elements: !1970)
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1969, file: !1872, line: 50, baseType: !1972, size: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1872, line: 35, size: 256, elements: !1973)
!1973 = !{!1974, !1981, !1982, !1986}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1972, file: !1872, line: 37, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1976, line: 19, baseType: !1977)
!1976 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1976, line: 18, baseType: !1979)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !127}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1972, file: !1872, line: 38, baseType: !99, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1972, file: !1872, line: 44, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1976, line: 22, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1976, line: 21, baseType: !228)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1972, file: !1872, line: 46, baseType: !1876, size: 64, offset: 192)
!1987 = !{!1988}
!1988 = !DISubrange(count: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1333, file: !1334, line: 971, baseType: !1876, size: 64, offset: 9344)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1333, file: !1334, line: 972, baseType: !1876, size: 64, offset: 9408)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1333, file: !1334, line: 974, baseType: !1876, size: 64, offset: 9472)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1333, file: !1334, line: 975, baseType: !1871, size: 192, offset: 9536)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1333, file: !1334, line: 976, baseType: !99, size: 64, offset: 9728)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1333, file: !1334, line: 977, baseType: !786, size: 64, offset: 9792)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1333, file: !1334, line: 978, baseType: !7, size: 32, offset: 9856)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1333, file: !1334, line: 980, baseType: !582, size: 64, offset: 9920)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1333, file: !1334, line: 989, baseType: !1998, size: 128, offset: 9984)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1999, line: 35, size: 128, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1998, file: !1999, line: 36, baseType: !127, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1998, file: !1999, line: 37, baseType: !960, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1998, file: !1999, line: 38, baseType: !2004, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1999, line: 23, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1333, file: !1334, line: 992, baseType: !632, size: 64, offset: 10112)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1333, file: !1334, line: 993, baseType: !632, size: 64, offset: 10176)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1333, file: !1334, line: 996, baseType: !285, offset: 10240)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1333, file: !1334, line: 999, baseType: !986, offset: 10240)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1333, file: !1334, line: 1001, baseType: !2011, size: 64, offset: 10240)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1334, line: 636, size: 64, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2011, file: !1334, line: 637, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1333, file: !1334, line: 1005, baseType: !965, size: 128, offset: 10304)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1333, file: !1334, line: 1007, baseType: !1332, size: 64, offset: 10432)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1333, file: !1334, line: 1009, baseType: !2018, size: 64, offset: 10496)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1334, line: 1009, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1333, file: !1334, line: 1043, baseType: !97, size: 64, offset: 10560)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1333, file: !1334, line: 1046, baseType: !2022, size: 64, offset: 10624)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1334, line: 41, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1333, file: !1334, line: 1050, baseType: !2025, size: 64, offset: 10688)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1334, line: 42, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1333, file: !1334, line: 1054, baseType: !2028, size: 64, offset: 10752)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1334, line: 55, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1333, file: !1334, line: 1056, baseType: !2031, size: 64, offset: 10816)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1334, line: 40, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1333, file: !1334, line: 1058, baseType: !2034, size: 64, offset: 10880)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2036, line: 99, size: 704, elements: !2037)
!2036 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !{!2038, !2039, !2040, !2041, !2042, !2043, !2044, !2063, !2064}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2035, file: !2036, line: 100, baseType: !551, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2035, file: !2036, line: 101, baseType: !960, size: 32, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2035, file: !2036, line: 102, baseType: !960, size: 32, offset: 96)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2035, file: !2036, line: 105, baseType: !285, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2035, file: !2036, line: 107, baseType: !144, size: 16, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2035, file: !2036, line: 109, baseType: !952, size: 128, offset: 192)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2035, file: !2036, line: 110, baseType: !2045, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2036, line: 73, size: 448, elements: !2047)
!2047 = !{!2048, !2051, !2052, !2057, !2062}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2046, file: !2036, line: 74, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2036, line: 74, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2046, file: !2036, line: 75, baseType: !2034, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !2036, line: 83, baseType: !2053, size: 128, offset: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2046, file: !2036, line: 83, size: 128, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2053, file: !2036, line: 84, baseType: !279, size: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2053, file: !2036, line: 85, baseType: !1139, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !2036, line: 87, baseType: !2058, size: 128, offset: 256)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2046, file: !2036, line: 87, size: 128, elements: !2059)
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2058, file: !2036, line: 88, baseType: !850, size: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2058, file: !2036, line: 89, baseType: !579, size: 128, align: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2046, file: !2036, line: 92, baseType: !7, size: 32, offset: 384)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2035, file: !2036, line: 111, baseType: !846, size: 64, offset: 384)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2035, file: !2036, line: 113, baseType: !2065, size: 256, offset: 448)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2066, line: 102, size: 256, elements: !2067)
!2066 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2067 = !{!2068, !2069, !2070}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2065, file: !2066, line: 103, baseType: !551, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2065, file: !2066, line: 104, baseType: !279, size: 128, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2065, file: !2066, line: 105, baseType: !2071, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2066, line: 21, baseType: !2072)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{null, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1333, file: !1334, line: 1061, baseType: !2077, size: 64, offset: 10944)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1334, line: 43, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1333, file: !1334, line: 1064, baseType: !99, size: 64, offset: 11008)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1333, file: !1334, line: 1065, baseType: !2081, size: 64, offset: 11072)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1872, line: 14, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1872, line: 12, size: 384, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !1872, line: 13, baseType: !2086, size: 384)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2083, file: !1872, line: 13, size: 384, elements: !2087)
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2086, file: !1872, line: 13, baseType: !127, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2086, file: !1872, line: 13, baseType: !127, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2086, file: !1872, line: 13, baseType: !127, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2086, file: !1872, line: 13, baseType: !2092, size: 256, offset: 128)
!2092 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2093, line: 32, size: 256, elements: !2094)
!2093 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !{!2095, !2100, !2113, !2119, !2128, !2148, !2153}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2092, file: !2093, line: 37, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 34, size: 64, elements: !2097)
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2096, file: !2093, line: 35, baseType: !1569, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2096, file: !2093, line: 36, baseType: !652, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2092, file: !2093, line: 45, baseType: !2101, size: 192)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 40, size: 192, elements: !2102)
!2102 = !{!2103, !2105, !2106, !2112}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2101, file: !2093, line: 41, baseType: !2104, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !653, line: 95, baseType: !127)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2101, file: !2093, line: 42, baseType: !127, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2101, file: !2093, line: 43, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2093, line: 11, baseType: !2108)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2093, line: 8, size: 64, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2108, file: !2093, line: 9, baseType: !127, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2108, file: !2093, line: 10, baseType: !97, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2101, file: !2093, line: 44, baseType: !127, size: 32, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2092, file: !2093, line: 52, baseType: !2114, size: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 48, size: 128, elements: !2115)
!2115 = !{!2116, !2117, !2118}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2114, file: !2093, line: 49, baseType: !1569, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2114, file: !2093, line: 50, baseType: !652, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2114, file: !2093, line: 51, baseType: !2107, size: 64, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2092, file: !2093, line: 61, baseType: !2120, size: 256)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 55, size: 256, elements: !2121)
!2121 = !{!2122, !2123, !2124, !2125, !2127}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2120, file: !2093, line: 56, baseType: !1569, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2120, file: !2093, line: 57, baseType: !652, size: 32, offset: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2120, file: !2093, line: 58, baseType: !127, size: 32, offset: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2120, file: !2093, line: 59, baseType: !2126, size: 64, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !653, line: 94, baseType: !785)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2120, file: !2093, line: 60, baseType: !2126, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2092, file: !2093, line: 95, baseType: !2129, size: 256)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 64, size: 256, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2129, file: !2093, line: 65, baseType: !97, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2129, file: !2093, line: 77, baseType: !2133, size: 192, offset: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2129, file: !2093, line: 77, size: 192, elements: !2134)
!2134 = !{!2135, !2136, !2143}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2133, file: !2093, line: 82, baseType: !372, size: 16)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2133, file: !2093, line: 88, baseType: !2137, size: 192)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2093, line: 84, size: 192, elements: !2138)
!2138 = !{!2139, !2141, !2142}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2137, file: !2093, line: 85, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !1445)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2137, file: !2093, line: 86, baseType: !97, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2137, file: !2093, line: 87, baseType: !97, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2133, file: !2093, line: 93, baseType: !2144, size: 96)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2093, line: 90, size: 96, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2144, file: !2093, line: 91, baseType: !2140, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2144, file: !2093, line: 92, baseType: !274, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2092, file: !2093, line: 101, baseType: !2149, size: 128)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 98, size: 128, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2149, file: !2093, line: 99, baseType: !105, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2149, file: !2093, line: 100, baseType: !127, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2092, file: !2093, line: 108, baseType: !2154, size: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2092, file: !2093, line: 104, size: 128, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2154, file: !2093, line: 105, baseType: !97, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2154, file: !2093, line: 106, baseType: !127, size: 32, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2154, file: !2093, line: 107, baseType: !7, size: 32, offset: 96)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1333, file: !1334, line: 1067, baseType: !1944, offset: 11136)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1333, file: !1334, line: 1099, baseType: !2161, size: 64, offset: 11136)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1334, line: 56, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1333, file: !1334, line: 1103, baseType: !279, size: 128, offset: 11200)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1333, file: !1334, line: 1104, baseType: !2165, size: 64, offset: 11328)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1334, line: 46, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1333, file: !1334, line: 1105, baseType: !547, size: 192, offset: 11392)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1333, file: !1334, line: 1106, baseType: !7, size: 32, offset: 11584)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1333, file: !1334, line: 1109, baseType: !2170, size: 128, offset: 11648)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2171, size: 128, elements: !428)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1334, line: 51, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1333, file: !1334, line: 1110, baseType: !547, size: 192, offset: 11776)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1333, file: !1334, line: 1111, baseType: !279, size: 128, offset: 11968)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1333, file: !1334, line: 1173, baseType: !2176, size: 64, offset: 12096)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2178, line: 62, size: 256, align: 256, elements: !2179)
!2178 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2179 = !{!2180, !2181, !2182, !2187}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2177, file: !2178, line: 75, baseType: !274, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2177, file: !2178, line: 90, baseType: !274, size: 32, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2177, file: !2178, line: 124, baseType: !2183, size: 64, offset: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !2178, line: 109, size: 64, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2183, file: !2178, line: 110, baseType: !633, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2183, file: !2178, line: 112, baseType: !633, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2177, file: !2178, line: 144, baseType: !274, size: 32, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1333, file: !1334, line: 1174, baseType: !629, size: 32, offset: 12160)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1333, file: !1334, line: 1179, baseType: !99, size: 64, offset: 12224)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1333, file: !1334, line: 1182, baseType: !2191, size: 128, offset: 12288)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1275, line: 76, size: 128, elements: !2192)
!2192 = !{!2193, !2198, !2199}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2191, file: !1275, line: 85, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2195, line: 7, size: 64, elements: !2196)
!2195 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2194, file: !2195, line: 12, baseType: !1480, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2191, file: !1275, line: 88, baseType: !304, size: 8, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2191, file: !1275, line: 95, baseType: !304, size: 8, offset: 72)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !1334, line: 1184, baseType: !2201, size: 128, offset: 12416)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !1334, line: 1184, size: 128, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2201, file: !1334, line: 1185, baseType: !1345, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2201, file: !1334, line: 1186, baseType: !579, size: 128, align: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1333, file: !1334, line: 1190, baseType: !2206, size: 64, offset: 12544)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1334, line: 53, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1333, file: !1334, line: 1192, baseType: !2209, size: 128, offset: 12608)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1275, line: 64, size: 128, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2209, file: !1275, line: 65, baseType: !934, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2209, file: !1275, line: 67, baseType: !274, size: 32, offset: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2209, file: !1275, line: 68, baseType: !274, size: 32, offset: 96)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1333, file: !1334, line: 1206, baseType: !127, size: 32, offset: 12736)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1333, file: !1334, line: 1207, baseType: !127, size: 32, offset: 12768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1333, file: !1334, line: 1209, baseType: !99, size: 64, offset: 12800)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1333, file: !1334, line: 1219, baseType: !632, size: 64, offset: 12864)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1333, file: !1334, line: 1220, baseType: !632, size: 64, offset: 12928)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1333, file: !1334, line: 1317, baseType: !127, size: 32, offset: 12992)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1333, file: !1334, line: 1319, baseType: !1332, size: 64, offset: 13056)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1333, file: !1334, line: 1322, baseType: !2222, size: 64, offset: 13120)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1334, line: 1322, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1333, file: !1334, line: 1326, baseType: !1345, size: 32, offset: 13184)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1333, file: !1334, line: 1342, baseType: !97, size: 64, offset: 13248)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1333, file: !1334, line: 1343, baseType: !633, size: 64, offset: 13312)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1333, file: !1334, line: 1344, baseType: !632, size: 64, offset: 13376)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1333, file: !1334, line: 1345, baseType: !633, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1333, file: !1334, line: 1346, baseType: !633, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1333, file: !1334, line: 1347, baseType: !633, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1333, file: !1334, line: 1348, baseType: !579, size: 128, align: 64, offset: 13504)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1333, file: !1334, line: 1358, baseType: !2233, size: 34816, offset: 13824)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2234, line: 485, size: 34816, elements: !2235)
!2234 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2235 = !{!2236, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2265, !2266, !2267, !2268, !2269, !2270, !2273, !2274, !2275}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2233, file: !2234, line: 487, baseType: !2237, size: 192)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2238, size: 192, elements: !862)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2239, line: 16, size: 64, elements: !2240)
!2239 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2238, file: !2239, line: 17, baseType: !140, size: 16)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2238, file: !2239, line: 18, baseType: !140, size: 16, offset: 16)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2238, file: !2239, line: 19, baseType: !140, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2238, file: !2239, line: 19, baseType: !140, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2238, file: !2239, line: 19, baseType: !140, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2238, file: !2239, line: 19, baseType: !140, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2238, file: !2239, line: 19, baseType: !140, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2238, file: !2239, line: 20, baseType: !140, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2238, file: !2239, line: 20, baseType: !140, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2238, file: !2239, line: 20, baseType: !140, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2238, file: !2239, line: 20, baseType: !140, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2238, file: !2239, line: 20, baseType: !140, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2238, file: !2239, line: 20, baseType: !140, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2233, file: !2234, line: 491, baseType: !99, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2233, file: !2234, line: 495, baseType: !144, size: 16, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2233, file: !2234, line: 496, baseType: !144, size: 16, offset: 272)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2233, file: !2234, line: 497, baseType: !144, size: 16, offset: 288)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2233, file: !2234, line: 498, baseType: !144, size: 16, offset: 304)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2233, file: !2234, line: 502, baseType: !99, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2233, file: !2234, line: 503, baseType: !99, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2233, file: !2234, line: 514, baseType: !2262, size: 256, offset: 448)
!2262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2263, size: 256, elements: !1279)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2234, line: 483, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2233, file: !2234, line: 516, baseType: !99, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2233, file: !2234, line: 518, baseType: !99, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2233, file: !2234, line: 520, baseType: !99, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2233, file: !2234, line: 521, baseType: !99, size: 64, offset: 896)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2233, file: !2234, line: 522, baseType: !99, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2233, file: !2234, line: 528, baseType: !2271, size: 64, offset: 1024)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2234, line: 10, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2233, file: !2234, line: 535, baseType: !99, size: 64, offset: 1088)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2233, file: !2234, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2233, file: !2234, line: 540, baseType: !2276, size: 33280, offset: 1536)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2277, line: 317, size: 33280, elements: !2278)
!2277 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2278 = !{!2279, !2280, !2281}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2276, file: !2277, line: 330, baseType: !7, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2276, file: !2277, line: 337, baseType: !99, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2276, file: !2277, line: 348, baseType: !2282, size: 32768, offset: 512)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2277, line: 304, size: 32768, elements: !2283)
!2283 = !{!2284, !2299, !2334, !2384, !2397}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2282, file: !2277, line: 305, baseType: !2285, size: 896)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2277, line: 12, size: 896, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2298}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2285, file: !2277, line: 13, baseType: !629, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2285, file: !2277, line: 14, baseType: !629, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2285, file: !2277, line: 15, baseType: !629, size: 32, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2285, file: !2277, line: 16, baseType: !629, size: 32, offset: 96)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2285, file: !2277, line: 17, baseType: !629, size: 32, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2285, file: !2277, line: 18, baseType: !629, size: 32, offset: 160)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2285, file: !2277, line: 19, baseType: !629, size: 32, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2285, file: !2277, line: 22, baseType: !2295, size: 640, offset: 224)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 640, elements: !2296)
!2296 = !{!2297}
!2297 = !DISubrange(count: 20)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2285, file: !2277, line: 25, baseType: !629, size: 32, offset: 864)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2282, file: !2277, line: 306, baseType: !2300, size: 4096, align: 128)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2277, line: 34, size: 4096, align: 128, elements: !2301)
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2321, !2322, !2323, !2325, !2327, !2329}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2300, file: !2277, line: 35, baseType: !140, size: 16)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2300, file: !2277, line: 36, baseType: !140, size: 16, offset: 16)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2300, file: !2277, line: 37, baseType: !140, size: 16, offset: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2300, file: !2277, line: 38, baseType: !140, size: 16, offset: 48)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !2277, line: 39, baseType: !2307, size: 128, offset: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !2277, line: 39, size: 128, elements: !2308)
!2308 = !{!2309, !2314}
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !2277, line: 40, baseType: !2310, size: 128)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2307, file: !2277, line: 40, size: 128, elements: !2311)
!2311 = !{!2312, !2313}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2310, file: !2277, line: 41, baseType: !632, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2310, file: !2277, line: 42, baseType: !632, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2307, file: !2277, line: 44, baseType: !2315, size: 128)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2307, file: !2277, line: 44, size: 128, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2320}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2315, file: !2277, line: 45, baseType: !629, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2315, file: !2277, line: 46, baseType: !629, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2315, file: !2277, line: 47, baseType: !629, size: 32, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2315, file: !2277, line: 48, baseType: !629, size: 32, offset: 96)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2300, file: !2277, line: 51, baseType: !629, size: 32, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2300, file: !2277, line: 52, baseType: !629, size: 32, offset: 224)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2300, file: !2277, line: 55, baseType: !2324, size: 1024, offset: 256)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 1024, elements: !449)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2300, file: !2277, line: 58, baseType: !2326, size: 2048, offset: 1280)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 2048, elements: !1987)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2300, file: !2277, line: 60, baseType: !2328, size: 384, offset: 3328)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 384, elements: !419)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2300, file: !2277, line: 62, baseType: !2330, size: 384, offset: 3712)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2300, file: !2277, line: 62, size: 384, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2330, file: !2277, line: 63, baseType: !2328, size: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2330, file: !2277, line: 64, baseType: !2328, size: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2282, file: !2277, line: 307, baseType: !2335, size: 1088)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2277, line: 79, size: 1088, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2383}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2335, file: !2277, line: 80, baseType: !629, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2335, file: !2277, line: 81, baseType: !629, size: 32, offset: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2335, file: !2277, line: 82, baseType: !629, size: 32, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2335, file: !2277, line: 83, baseType: !629, size: 32, offset: 96)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2335, file: !2277, line: 84, baseType: !629, size: 32, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2335, file: !2277, line: 85, baseType: !629, size: 32, offset: 160)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2335, file: !2277, line: 86, baseType: !629, size: 32, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2335, file: !2277, line: 88, baseType: !2295, size: 640, offset: 224)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2335, file: !2277, line: 89, baseType: !150, size: 8, offset: 864)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2335, file: !2277, line: 90, baseType: !150, size: 8, offset: 872)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2335, file: !2277, line: 91, baseType: !150, size: 8, offset: 880)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2335, file: !2277, line: 92, baseType: !150, size: 8, offset: 888)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2335, file: !2277, line: 93, baseType: !150, size: 8, offset: 896)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2335, file: !2277, line: 94, baseType: !150, size: 8, offset: 904)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2335, file: !2277, line: 95, baseType: !2352, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2354, line: 11, size: 128, elements: !2355)
!2354 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2353, file: !2354, line: 12, baseType: !105, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2353, file: !2354, line: 13, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2360, line: 56, size: 1344, elements: !2361)
!2360 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2359, file: !2360, line: 61, baseType: !99, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2359, file: !2360, line: 62, baseType: !99, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2359, file: !2360, line: 63, baseType: !99, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2359, file: !2360, line: 64, baseType: !99, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2359, file: !2360, line: 65, baseType: !99, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2359, file: !2360, line: 66, baseType: !99, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2359, file: !2360, line: 68, baseType: !99, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2359, file: !2360, line: 69, baseType: !99, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2359, file: !2360, line: 70, baseType: !99, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2359, file: !2360, line: 71, baseType: !99, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2359, file: !2360, line: 72, baseType: !99, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2359, file: !2360, line: 73, baseType: !99, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2359, file: !2360, line: 74, baseType: !99, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2359, file: !2360, line: 75, baseType: !99, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2359, file: !2360, line: 76, baseType: !99, size: 64, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2359, file: !2360, line: 81, baseType: !99, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2359, file: !2360, line: 83, baseType: !99, size: 64, offset: 1024)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2359, file: !2360, line: 84, baseType: !99, size: 64, offset: 1088)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2359, file: !2360, line: 85, baseType: !99, size: 64, offset: 1152)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2359, file: !2360, line: 86, baseType: !99, size: 64, offset: 1216)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2359, file: !2360, line: 87, baseType: !99, size: 64, offset: 1280)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2335, file: !2277, line: 96, baseType: !629, size: 32, offset: 1024)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2282, file: !2277, line: 308, baseType: !2385, size: 4608, align: 512)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2277, line: 289, size: 4608, align: 512, elements: !2386)
!2386 = !{!2387, !2388, !2395}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2385, file: !2277, line: 290, baseType: !2300, size: 4096, align: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2385, file: !2277, line: 291, baseType: !2389, size: 512, offset: 4096)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2277, line: 268, size: 512, elements: !2390)
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2389, file: !2277, line: 269, baseType: !632, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2389, file: !2277, line: 270, baseType: !632, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2389, file: !2277, line: 271, baseType: !2394, size: 384, offset: 128)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 384, elements: !1732)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2385, file: !2277, line: 292, baseType: !2396, offset: 4608)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, elements: !1830)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2282, file: !2277, line: 309, baseType: !2398, size: 32768)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 32768, elements: !2399)
!2399 = !{!2400}
!2400 = !DISubrange(count: 4096)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1329, file: !936, line: 378, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1325, file: !936, line: 384, baseType: !1611, size: 192, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1182, file: !936, line: 500, baseType: !285, offset: 6656)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1182, file: !936, line: 501, baseType: !2406, size: 64, offset: 6656)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !936, line: 387, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1182, file: !936, line: 516, baseType: !1820, size: 64, offset: 6720)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1182, file: !936, line: 519, baseType: !566, size: 64, offset: 6784)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1182, file: !936, line: 521, baseType: !2411, size: 64, offset: 6848)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !936, line: 521, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1182, file: !936, line: 545, baseType: !960, size: 32, offset: 6912)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1182, file: !936, line: 548, baseType: !304, size: 8, offset: 6944)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1182, file: !936, line: 550, baseType: !2416, offset: 6952)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2417, line: 142, elements: !299)
!2417 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1182, file: !936, line: 554, baseType: !2065, size: 256, offset: 6976)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1182, file: !936, line: 557, baseType: !629, size: 32, offset: 7232)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1179, file: !936, line: 565, baseType: !2421, offset: 7296)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, elements: !2422)
!2422 = !{!2423}
!2423 = !DISubrange(count: -1)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1175, file: !936, line: 151, baseType: !960, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1168, file: !936, line: 156, baseType: !285, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !936, line: 159, baseType: !2427, size: 128)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !936, line: 159, size: 128, elements: !2428)
!2428 = !{!2429, !2432}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2427, file: !936, line: 161, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !936, line: 161, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2427, file: !936, line: 162, baseType: !97, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !940, file: !936, line: 176, baseType: !579, size: 128, align: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !936, line: 179, baseType: !2435, size: 32, offset: 384)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !936, line: 179, size: 32, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2435, file: !936, line: 184, baseType: !960, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2435, file: !936, line: 192, baseType: !7, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2435, file: !936, line: 194, baseType: !7, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2435, file: !936, line: 195, baseType: !127, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !935, file: !936, line: 199, baseType: !960, size: 32, offset: 416)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !870, file: !37, line: 1964, baseType: !2443, size: 64, offset: 1344)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!105, !810, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2448, line: 12, size: 256, elements: !2449)
!2448 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2449 = !{!2450, !2451, !2452, !2453, !2454}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2447, file: !2448, line: 13, baseType: !95, size: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2447, file: !2448, line: 16, baseType: !127, size: 32, offset: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2447, file: !2448, line: 23, baseType: !99, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2447, file: !2448, line: 30, baseType: !99, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2447, file: !2448, line: 33, baseType: !2455, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !936, line: 27, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !870, file: !37, line: 1966, baseType: !2443, size: 64, offset: 1408)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !811, file: !37, line: 1424, baseType: !2459, size: 64, offset: 448)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2461)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2462)
!2462 = !{!2463, !2509, !2513, !2517, !2518, !2519, !2520, !2521, !2526, !2531, !2535}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2461, file: !31, line: 323, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!127, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2494, !2495, !2496}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2468, file: !31, line: 295, baseType: !850, size: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2468, file: !31, line: 296, baseType: !279, size: 128, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2468, file: !31, line: 297, baseType: !279, size: 128, offset: 256)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2468, file: !31, line: 298, baseType: !279, size: 128, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2468, file: !31, line: 299, baseType: !547, size: 192, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2468, file: !31, line: 300, baseType: !285, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2468, file: !31, line: 301, baseType: !960, size: 32, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2468, file: !31, line: 302, baseType: !810, size: 64, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2468, file: !31, line: 303, baseType: !2479, size: 64, offset: 832)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2480)
!2480 = !{!2481, !2493}
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !31, line: 69, baseType: !2482, size: 32)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2479, file: !31, line: 69, size: 32, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2482, file: !31, line: 70, baseType: !646, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2482, file: !31, line: 71, baseType: !655, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2482, file: !31, line: 72, baseType: !2487, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2488, line: 24, baseType: !2489)
!2488 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2488, line: 22, size: 32, elements: !2490)
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2489, file: !2488, line: 23, baseType: !2492, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2488, line: 20, baseType: !652)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2479, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2468, file: !31, line: 304, baseType: !738, size: 64, offset: 896)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2468, file: !31, line: 305, baseType: !99, size: 64, offset: 960)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2468, file: !31, line: 306, baseType: !2497, size: 576, offset: 1024)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2498)
!2498 = !{!2499, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2497, file: !31, line: 206, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !559)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2497, file: !31, line: 207, baseType: !2500, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2497, file: !31, line: 208, baseType: !2500, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2497, file: !31, line: 209, baseType: !2500, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2497, file: !31, line: 210, baseType: !2500, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2497, file: !31, line: 211, baseType: !2500, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2497, file: !31, line: 212, baseType: !2500, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2497, file: !31, line: 213, baseType: !745, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2497, file: !31, line: 214, baseType: !745, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2461, file: !31, line: 324, baseType: !2510, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!2467, !810, !127}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2461, file: !31, line: 325, baseType: !2514, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !2467}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2461, file: !31, line: 326, baseType: !2464, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2461, file: !31, line: 327, baseType: !2464, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2461, file: !31, line: 328, baseType: !2464, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2461, file: !31, line: 329, baseType: !898, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2461, file: !31, line: 332, baseType: !2522, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!2525, !639}
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2461, file: !31, line: 333, baseType: !2527, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!127, !639, !2530}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2461, file: !31, line: 335, baseType: !2532, size: 64, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!127, !639, !2525}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2461, file: !31, line: 337, baseType: !2536, size: 64, offset: 640)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!127, !810, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !811, file: !37, line: 1425, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2543)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2544)
!2544 = !{!2545, !2549, !2550, !2554, !2555, !2556, !2571, !2594, !2598, !2599, !2622}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2543, file: !31, line: 429, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!127, !810, !127, !127, !754}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2543, file: !31, line: 430, baseType: !898, size: 64, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2543, file: !31, line: 431, baseType: !2551, size: 64, offset: 128)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!127, !810, !7}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2543, file: !31, line: 432, baseType: !2551, size: 64, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2543, file: !31, line: 433, baseType: !898, size: 64, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2543, file: !31, line: 434, baseType: !2557, size: 64, offset: 320)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!127, !810, !127, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2561, file: !31, line: 416, baseType: !127, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2561, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2561, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2561, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2561, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2561, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2561, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2561, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2543, file: !31, line: 435, baseType: !2572, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!127, !810, !2479, !2575}
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2576, file: !31, line: 344, baseType: !127, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2576, file: !31, line: 345, baseType: !632, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2576, file: !31, line: 346, baseType: !632, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2576, file: !31, line: 347, baseType: !632, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2576, file: !31, line: 348, baseType: !632, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2576, file: !31, line: 349, baseType: !632, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2576, file: !31, line: 350, baseType: !632, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2576, file: !31, line: 351, baseType: !557, size: 64, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2576, file: !31, line: 353, baseType: !557, size: 64, offset: 512)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2576, file: !31, line: 354, baseType: !127, size: 32, offset: 576)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2576, file: !31, line: 355, baseType: !127, size: 32, offset: 608)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2576, file: !31, line: 356, baseType: !632, size: 64, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2576, file: !31, line: 357, baseType: !632, size: 64, offset: 704)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2576, file: !31, line: 358, baseType: !632, size: 64, offset: 768)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2576, file: !31, line: 359, baseType: !557, size: 64, offset: 832)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2576, file: !31, line: 360, baseType: !127, size: 32, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2543, file: !31, line: 436, baseType: !2595, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!127, !810, !2539, !2575}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2543, file: !31, line: 438, baseType: !2572, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2543, file: !31, line: 439, baseType: !2600, size: 64, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!127, !810, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2604, file: !31, line: 410, baseType: !7, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2604, file: !31, line: 411, baseType: !2608, size: 1344, offset: 64)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2609, size: 1344, elements: !862)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2621}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2609, file: !31, line: 396, baseType: !7, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2609, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2609, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2609, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2609, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2609, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2609, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2609, file: !31, line: 404, baseType: !634, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2609, file: !31, line: 405, baseType: !2620, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !96, line: 126, baseType: !632)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2609, file: !31, line: 406, baseType: !2620, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2543, file: !31, line: 440, baseType: !2551, size: 64, offset: 640)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !811, file: !37, line: 1426, baseType: !2624, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !811, file: !37, line: 1427, baseType: !99, size: 64, offset: 640)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !811, file: !37, line: 1428, baseType: !99, size: 64, offset: 704)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !811, file: !37, line: 1429, baseType: !99, size: 64, offset: 768)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !811, file: !37, line: 1430, baseType: !596, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !811, file: !37, line: 1431, baseType: !980, size: 256, offset: 896)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !811, file: !37, line: 1432, baseType: !127, size: 32, offset: 1152)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !811, file: !37, line: 1433, baseType: !960, size: 32, offset: 1184)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !811, file: !37, line: 1437, baseType: !2635, size: 64, offset: 1216)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2638)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !811, file: !37, line: 1449, baseType: !2640, size: 64, offset: 1280)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !612, line: 34, size: 64, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2640, file: !612, line: 35, baseType: !615, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !811, file: !37, line: 1450, baseType: !279, size: 128, offset: 1344)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !811, file: !37, line: 1451, baseType: !2645, size: 64, offset: 1472)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !811, file: !37, line: 1452, baseType: !2031, size: 64, offset: 1536)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !811, file: !37, line: 1453, baseType: !2649, size: 64, offset: 1600)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !811, file: !37, line: 1454, baseType: !850, size: 128, offset: 1664)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !811, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !811, file: !37, line: 1456, baseType: !2654, size: 2432, offset: 1856)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2655)
!2655 = !{!2656, !2657, !2658, !2660, !2692}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2654, file: !31, line: 519, baseType: !7, size: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2654, file: !31, line: 520, baseType: !980, size: 256, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2654, file: !31, line: 521, baseType: !2659, size: 192, offset: 320)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 192, elements: !862)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2654, file: !31, line: 522, baseType: !2661, size: 1728, offset: 512)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2662, size: 1728, elements: !862)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2663)
!2663 = !{!2664, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2662, file: !31, line: 223, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2667)
!2667 = !{!2668, !2669, !2682, !2683}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2666, file: !31, line: 444, baseType: !127, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2666, file: !31, line: 445, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2672, file: !31, line: 311, baseType: !898, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2672, file: !31, line: 312, baseType: !898, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2672, file: !31, line: 313, baseType: !898, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2672, file: !31, line: 314, baseType: !898, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2672, file: !31, line: 315, baseType: !2464, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2672, file: !31, line: 316, baseType: !2464, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2672, file: !31, line: 317, baseType: !2464, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2672, file: !31, line: 318, baseType: !2536, size: 64, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2666, file: !31, line: 446, baseType: !92, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2666, file: !31, line: 447, baseType: !2665, size: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2662, file: !31, line: 224, baseType: !127, size: 32, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2662, file: !31, line: 226, baseType: !279, size: 128, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2662, file: !31, line: 227, baseType: !99, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2662, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2662, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2662, file: !31, line: 230, baseType: !2500, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2662, file: !31, line: 231, baseType: !2500, size: 64, offset: 448)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2662, file: !31, line: 232, baseType: !97, size: 64, offset: 512)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2654, file: !31, line: 523, baseType: !2693, size: 192, offset: 2240)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 192, elements: !862)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !811, file: !37, line: 1458, baseType: !2695, size: 2112, offset: 4288)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2696)
!2696 = !{!2697, !2698, !2699}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2695, file: !37, line: 1411, baseType: !127, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2695, file: !37, line: 1412, baseType: !1590, size: 128, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2695, file: !37, line: 1413, baseType: !2700, size: 1920, offset: 192)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2701, size: 1920, elements: !862)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2702, line: 12, size: 640, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2703 = !{!2704, !2712, !2713, !2718, !2719}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2701, file: !2702, line: 13, baseType: !2705, size: 320)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2706, line: 17, size: 320, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2707 = !{!2708, !2709, !2710, !2711}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2705, file: !2706, line: 18, baseType: !127, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2705, file: !2706, line: 19, baseType: !127, size: 32, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2705, file: !2706, line: 20, baseType: !1590, size: 128, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2705, file: !2706, line: 22, baseType: !579, size: 128, align: 64, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2701, file: !2702, line: 14, baseType: !172, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2701, file: !2702, line: 15, baseType: !2714, size: 64, offset: 384)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2715, line: 16, size: 64, elements: !2716)
!2715 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2714, file: !2715, line: 17, baseType: !1332, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2701, file: !2702, line: 16, baseType: !1590, size: 128, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2701, file: !2702, line: 17, baseType: !960, size: 32, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !811, file: !37, line: 1465, baseType: !97, size: 64, offset: 6400)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !811, file: !37, line: 1468, baseType: !629, size: 32, offset: 6464)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !811, file: !37, line: 1470, baseType: !745, size: 64, offset: 6528)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !811, file: !37, line: 1471, baseType: !745, size: 64, offset: 6592)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !811, file: !37, line: 1473, baseType: !274, size: 32, offset: 6656)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !811, file: !37, line: 1474, baseType: !2726, size: 64, offset: 6720)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !811, file: !37, line: 1477, baseType: !2729, size: 256, offset: 6784)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !449)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !811, file: !37, line: 1478, baseType: !2731, size: 128, offset: 7040)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2732, line: 18, baseType: !2733)
!2732 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2732, line: 16, size: 128, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2733, file: !2732, line: 17, baseType: !2736, size: 128)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !1842)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !811, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !811, file: !37, line: 1481, baseType: !2739, size: 32, offset: 7200)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !96, line: 150, baseType: !7)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !811, file: !37, line: 1487, baseType: !547, size: 192, offset: 7232)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !811, file: !37, line: 1493, baseType: !114, size: 64, offset: 7424)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !811, file: !37, line: 1495, baseType: !2743, size: 64, offset: 7488)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !594, line: 135, size: 1024, align: 512, elements: !2746)
!2746 = !{!2747, !2751, !2752, !2759, !2765, !2769, !2773, !2777, !2778, !2782, !2786, !2791, !2795}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2745, file: !594, line: 136, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!127, !596, !7}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2745, file: !594, line: 137, baseType: !2748, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2745, file: !594, line: 138, baseType: !2753, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!127, !2756, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2745, file: !594, line: 139, baseType: !2760, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!127, !2756, !7, !114, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2745, file: !594, line: 141, baseType: !2766, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!127, !2756}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2745, file: !594, line: 142, baseType: !2770, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!127, !596}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2745, file: !594, line: 143, baseType: !2774, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !596}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2745, file: !594, line: 144, baseType: !2774, size: 64, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2745, file: !594, line: 145, baseType: !2779, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !596, !639}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2745, file: !594, line: 146, baseType: !2783, size: 64, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!133, !596, !133, !127}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2745, file: !594, line: 147, baseType: !2787, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!592, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2745, file: !594, line: 148, baseType: !2792, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!127, !754, !304}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2745, file: !594, line: 149, baseType: !2796, size: 64, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!596, !596, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !811, file: !37, line: 1500, baseType: !127, size: 32, offset: 7552)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !811, file: !37, line: 1502, baseType: !2803, size: 448, offset: 7616)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2448, line: 60, size: 448, elements: !2804)
!2804 = !{!2805, !2810, !2811, !2812, !2813, !2814, !2815}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2803, file: !2448, line: 61, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!99, !2809, !2446}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2803, file: !2448, line: 63, baseType: !2806, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2803, file: !2448, line: 66, baseType: !105, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2803, file: !2448, line: 67, baseType: !127, size: 32, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2803, file: !2448, line: 68, baseType: !7, size: 32, offset: 224)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2803, file: !2448, line: 71, baseType: !279, size: 128, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2803, file: !2448, line: 77, baseType: !2816, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !811, file: !37, line: 1505, baseType: !551, size: 64, offset: 8064)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !811, file: !37, line: 1508, baseType: !551, size: 64, offset: 8128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !811, file: !37, line: 1511, baseType: !127, size: 32, offset: 8192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !811, file: !37, line: 1514, baseType: !1113, size: 32, offset: 8224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !811, file: !37, line: 1517, baseType: !2822, size: 64, offset: 8256)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2066, line: 18, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !811, file: !37, line: 1518, baseType: !846, size: 64, offset: 8320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !811, file: !37, line: 1525, baseType: !1820, size: 64, offset: 8384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !811, file: !37, line: 1532, baseType: !2827, size: 64, offset: 8448)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2828, line: 52, size: 64, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2827, file: !2828, line: 53, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2828, line: 40, size: 256, elements: !2833)
!2833 = !{!2834, !2835, !2840}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2832, file: !2828, line: 42, baseType: !285)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2832, file: !2828, line: 44, baseType: !2836, size: 192)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2828, line: 28, size: 192, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2836, file: !2828, line: 29, baseType: !279, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2836, file: !2828, line: 31, baseType: !105, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2832, file: !2828, line: 49, baseType: !105, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !811, file: !37, line: 1533, baseType: !2827, size: 64, offset: 8512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !811, file: !37, line: 1534, baseType: !579, size: 128, align: 64, offset: 8576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !811, file: !37, line: 1535, baseType: !2065, size: 256, offset: 8704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !811, file: !37, line: 1537, baseType: !547, size: 192, offset: 8960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !811, file: !37, line: 1542, baseType: !127, size: 32, offset: 9152)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !811, file: !37, line: 1545, baseType: !285, offset: 9184)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !811, file: !37, line: 1546, baseType: !279, size: 128, offset: 9216)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !811, file: !37, line: 1548, baseType: !285, offset: 9344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !811, file: !37, line: 1549, baseType: !279, size: 128, offset: 9344)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !640, file: !37, line: 624, baseType: !947, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !640, file: !37, line: 631, baseType: !99, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !37, line: 639, baseType: !2853, size: 32, offset: 384)
!2853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !37, line: 639, size: 32, elements: !2854)
!2854 = !{!2855, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2853, file: !37, line: 640, baseType: !2856, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2853, file: !37, line: 641, baseType: !7, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !640, file: !37, line: 643, baseType: !720, size: 32, offset: 416)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !640, file: !37, line: 644, baseType: !738, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !640, file: !37, line: 645, baseType: !741, size: 128, offset: 512)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !640, file: !37, line: 646, baseType: !741, size: 128, offset: 640)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !640, file: !37, line: 647, baseType: !741, size: 128, offset: 768)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !640, file: !37, line: 648, baseType: !285, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !640, file: !37, line: 649, baseType: !144, size: 16, offset: 896)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !640, file: !37, line: 650, baseType: !150, size: 8, offset: 912)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !640, file: !37, line: 651, baseType: !150, size: 8, offset: 920)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !640, file: !37, line: 652, baseType: !2620, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !640, file: !37, line: 659, baseType: !99, size: 64, offset: 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !640, file: !37, line: 660, baseType: !980, size: 256, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !640, file: !37, line: 662, baseType: !99, size: 64, offset: 1344)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !640, file: !37, line: 663, baseType: !99, size: 64, offset: 1408)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !640, file: !37, line: 665, baseType: !850, size: 128, offset: 1472)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !640, file: !37, line: 666, baseType: !279, size: 128, offset: 1600)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !640, file: !37, line: 675, baseType: !279, size: 128, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !640, file: !37, line: 676, baseType: !279, size: 128, offset: 1856)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !640, file: !37, line: 677, baseType: !279, size: 128, offset: 1984)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !37, line: 678, baseType: !2878, size: 128, offset: 2112)
!2878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !37, line: 678, size: 128, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2878, file: !37, line: 679, baseType: !846, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2878, file: !37, line: 680, baseType: !579, size: 128, align: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !640, file: !37, line: 682, baseType: !553, size: 64, offset: 2240)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !640, file: !37, line: 683, baseType: !553, size: 64, offset: 2304)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !640, file: !37, line: 684, baseType: !960, size: 32, offset: 2368)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !640, file: !37, line: 685, baseType: !960, size: 32, offset: 2400)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !640, file: !37, line: 686, baseType: !960, size: 32, offset: 2432)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !640, file: !37, line: 688, baseType: !960, size: 32, offset: 2464)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !37, line: 690, baseType: !2889, size: 64, offset: 2496)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !37, line: 690, size: 64, elements: !2890)
!2890 = !{!2891, !3114}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2889, file: !37, line: 691, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2895)
!2895 = !{!2896, !2897, !2901, !2906, !2910, !2911, !2912, !2916, !2929, !2930, !2938, !2942, !2943, !2947, !2948, !2952, !2957, !2958, !2962, !2966, !3074, !3078, !3079, !3083, !3084, !3088, !3092, !3097, !3101, !3105, !3109, !3113}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2894, file: !37, line: 1823, baseType: !92, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2894, file: !37, line: 1824, baseType: !2898, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!738, !566, !738, !127}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2894, file: !37, line: 1825, baseType: !2902, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!783, !566, !133, !786, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2894, file: !37, line: 1826, baseType: !2907, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!783, !566, !114, !786, !2905}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2894, file: !37, line: 1827, baseType: !1050, size: 64, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2894, file: !37, line: 1828, baseType: !1050, size: 64, offset: 320)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2894, file: !37, line: 1829, baseType: !2913, size: 64, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!127, !1053, !304}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2894, file: !37, line: 1830, baseType: !2917, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!127, !566, !2920}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2922)
!2922 = !{!2923, !2928}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2921, file: !37, line: 1777, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2925)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!127, !2920, !114, !127, !738, !632, !7}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2921, file: !37, line: 1778, baseType: !738, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2894, file: !37, line: 1831, baseType: !2917, size: 64, offset: 512)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2894, file: !37, line: 1832, baseType: !2931, size: 64, offset: 576)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!2934, !566, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2935, line: 52, baseType: !7)
!2935 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !830, line: 27, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2894, file: !37, line: 1833, baseType: !2939, size: 64, offset: 640)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!105, !566, !7, !99}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2894, file: !37, line: 1834, baseType: !2939, size: 64, offset: 704)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2894, file: !37, line: 1835, baseType: !2944, size: 64, offset: 768)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!127, !566, !1185}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2894, file: !37, line: 1836, baseType: !99, size: 64, offset: 832)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2894, file: !37, line: 1837, baseType: !2949, size: 64, offset: 896)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!127, !639, !566}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2894, file: !37, line: 1838, baseType: !2953, size: 64, offset: 960)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!127, !566, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !97)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2894, file: !37, line: 1839, baseType: !2949, size: 64, offset: 1024)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2894, file: !37, line: 1840, baseType: !2959, size: 64, offset: 1088)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!127, !566, !738, !738, !127}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2894, file: !37, line: 1841, baseType: !2963, size: 64, offset: 1152)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!127, !127, !566, !127}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !37, line: 1842, baseType: !2967, size: 64, offset: 1216)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!127, !566, !127, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !3004, !3005, !3006, !3019, !3050}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2971, file: !37, line: 1063, baseType: !2970, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2971, file: !37, line: 1064, baseType: !279, size: 128, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2971, file: !37, line: 1065, baseType: !850, size: 128, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2971, file: !37, line: 1066, baseType: !279, size: 128, offset: 320)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2971, file: !37, line: 1069, baseType: !279, size: 128, offset: 448)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2971, file: !37, line: 1072, baseType: !2956, size: 64, offset: 576)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2971, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2971, file: !37, line: 1074, baseType: !152, size: 8, offset: 672)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2971, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2971, file: !37, line: 1076, baseType: !127, size: 32, offset: 736)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2971, file: !37, line: 1077, baseType: !1590, size: 128, offset: 768)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2971, file: !37, line: 1078, baseType: !566, size: 64, offset: 896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2971, file: !37, line: 1079, baseType: !738, size: 64, offset: 960)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2971, file: !37, line: 1080, baseType: !738, size: 64, offset: 1024)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2971, file: !37, line: 1082, baseType: !2988, size: 64, offset: 1088)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2990)
!2990 = !{!2991, !2999, !3000, !3001, !3002, !3003}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2989, file: !37, line: 1315, baseType: !2992)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2993, line: 20, baseType: !2994)
!2993 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2993, line: 11, elements: !2995)
!2995 = !{!2996}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2994, file: !2993, line: 12, baseType: !2997)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !297, line: 33, baseType: !2998)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 31, elements: !299)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2989, file: !37, line: 1316, baseType: !127, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2989, file: !37, line: 1317, baseType: !127, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2989, file: !37, line: 1318, baseType: !2988, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2989, file: !37, line: 1319, baseType: !566, size: 64, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2989, file: !37, line: 1320, baseType: !579, size: 128, align: 64, offset: 192)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2971, file: !37, line: 1084, baseType: !99, size: 64, offset: 1152)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2971, file: !37, line: 1085, baseType: !99, size: 64, offset: 1216)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2971, file: !37, line: 1087, baseType: !3007, size: 64, offset: 1280)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3009)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !3010)
!3010 = !{!3011, !3015}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3009, file: !37, line: 1012, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2970, !2970}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3009, file: !37, line: 1013, baseType: !3016, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !2970}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2971, file: !37, line: 1088, baseType: !3020, size: 64, offset: 1344)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3022)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !3023)
!3023 = !{!3024, !3028, !3032, !3033, !3037, !3041, !3045, !3049}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3022, file: !37, line: 1017, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!2956, !2956}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3022, file: !37, line: 1018, baseType: !3029, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !2956}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3022, file: !37, line: 1019, baseType: !3016, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3022, file: !37, line: 1020, baseType: !3034, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!127, !2970, !127}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3022, file: !37, line: 1021, baseType: !3038, size: 64, offset: 256)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!304, !2970}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3022, file: !37, line: 1022, baseType: !3042, size: 64, offset: 320)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!127, !2970, !127, !282}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3022, file: !37, line: 1023, baseType: !3046, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !2970, !1027}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3022, file: !37, line: 1024, baseType: !3038, size: 64, offset: 448)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2971, file: !37, line: 1097, baseType: !3051, size: 256, offset: 1408)
!3051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2971, file: !37, line: 1089, size: 256, elements: !3052)
!3052 = !{!3053, !3062, !3068}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3051, file: !37, line: 1090, baseType: !3054, size: 256)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3055, line: 10, size: 256, elements: !3056)
!3055 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3056 = !{!3057, !3058, !3061}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3054, file: !3055, line: 11, baseType: !629, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3054, file: !3055, line: 12, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3055, line: 5, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3054, file: !3055, line: 13, baseType: !279, size: 128, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3051, file: !37, line: 1091, baseType: !3063, size: 64)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3055, line: 17, size: 64, elements: !3064)
!3064 = !{!3065}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3063, file: !3055, line: 18, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3055, line: 16, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3051, file: !37, line: 1096, baseType: !3069, size: 192)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3051, file: !37, line: 1092, size: 192, elements: !3070)
!3070 = !{!3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3069, file: !37, line: 1093, baseType: !279, size: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3069, file: !37, line: 1094, baseType: !127, size: 32, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3069, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2894, file: !37, line: 1843, baseType: !3075, size: 64, offset: 1280)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!783, !566, !934, !127, !786, !2905, !127}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2894, file: !37, line: 1844, baseType: !1225, size: 64, offset: 1344)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2894, file: !37, line: 1845, baseType: !3080, size: 64, offset: 1408)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!127, !127}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2894, file: !37, line: 1846, baseType: !2967, size: 64, offset: 1472)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2894, file: !37, line: 1847, baseType: !3085, size: 64, offset: 1536)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!783, !2206, !566, !2905, !786, !7}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2894, file: !37, line: 1848, baseType: !3089, size: 64, offset: 1600)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!783, !566, !2905, !2206, !786, !7}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2894, file: !37, line: 1849, baseType: !3093, size: 64, offset: 1664)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!127, !566, !105, !3096, !1027}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2894, file: !37, line: 1850, baseType: !3098, size: 64, offset: 1728)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!105, !566, !127, !738, !738}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2894, file: !37, line: 1852, baseType: !3102, size: 64, offset: 1792)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !924, !566}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2894, file: !37, line: 1856, baseType: !3106, size: 64, offset: 1856)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!783, !566, !738, !566, !738, !786, !7}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2894, file: !37, line: 1858, baseType: !3110, size: 64, offset: 1920)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!738, !566, !738, !566, !738, !738, !7}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2894, file: !37, line: 1861, baseType: !2959, size: 64, offset: 1984)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2889, file: !37, line: 692, baseType: !877, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !640, file: !37, line: 694, baseType: !3116, size: 64, offset: 2560)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !3118)
!3118 = !{!3119, !3120, !3121, !3122}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3117, file: !37, line: 1101, baseType: !285)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3117, file: !37, line: 1102, baseType: !279, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3117, file: !37, line: 1103, baseType: !279, size: 128, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3117, file: !37, line: 1104, baseType: !279, size: 128, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !640, file: !37, line: 695, baseType: !948, size: 1216, align: 64, offset: 2624)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !640, file: !37, line: 696, baseType: !279, size: 128, offset: 3840)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !37, line: 697, baseType: !3126, size: 64, offset: 3968)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !37, line: 697, size: 64, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3133, !3134}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3126, file: !37, line: 698, baseType: !2206, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3126, file: !37, line: 699, baseType: !2645, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3126, file: !37, line: 700, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3126, file: !37, line: 701, baseType: !133, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3126, file: !37, line: 702, baseType: !7, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !640, file: !37, line: 705, baseType: !274, size: 32, offset: 4032)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !640, file: !37, line: 708, baseType: !274, size: 32, offset: 4064)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !640, file: !37, line: 709, baseType: !2726, size: 64, offset: 4096)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !640, file: !37, line: 720, baseType: !97, size: 64, offset: 4160)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !597, file: !594, line: 98, baseType: !3140, size: 256, offset: 448)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !449)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !597, file: !594, line: 101, baseType: !3142, size: 32, offset: 704)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3143, line: 25, size: 32, elements: !3144)
!3143 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3142, file: !3143, line: 26, baseType: !3146, size: 32)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3142, file: !3143, line: 26, size: 32, elements: !3147)
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !3143, line: 30, baseType: !3149, size: 32)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3143, line: 30, size: 32, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3149, file: !3143, line: 31, baseType: !285)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3149, file: !3143, line: 32, baseType: !127, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !597, file: !594, line: 102, baseType: !2743, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !597, file: !594, line: 103, baseType: !810, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !597, file: !594, line: 104, baseType: !99, size: 64, offset: 896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !597, file: !594, line: 105, baseType: !97, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !594, line: 107, baseType: !3158, size: 128, offset: 1024)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !594, line: 107, size: 128, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3158, file: !594, line: 108, baseType: !279, size: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3158, file: !594, line: 109, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !597, file: !594, line: 111, baseType: !279, size: 128, offset: 1152)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !597, file: !594, line: 112, baseType: !279, size: 128, offset: 1280)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !597, file: !594, line: 120, baseType: !3166, size: 128, offset: 1408)
!3166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !594, line: 116, size: 128, elements: !3167)
!3167 = !{!3168, !3169, !3170}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3166, file: !594, line: 117, baseType: !850, size: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3166, file: !594, line: 118, baseType: !611, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3166, file: !594, line: 119, baseType: !579, size: 128, align: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !567, file: !37, line: 922, baseType: !639, size: 64, offset: 256)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !567, file: !37, line: 923, baseType: !2892, size: 64, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !567, file: !37, line: 929, baseType: !285, offset: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !567, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !567, file: !37, line: 931, baseType: !551, size: 64, offset: 448)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !567, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !567, file: !37, line: 933, baseType: !2739, size: 32, offset: 544)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !567, file: !37, line: 934, baseType: !547, size: 192, offset: 576)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !567, file: !37, line: 935, baseType: !738, size: 64, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !567, file: !37, line: 936, baseType: !3181, size: 192, offset: 832)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3181, file: !37, line: 886, baseType: !2992)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3181, file: !37, line: 887, baseType: !1580, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3181, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3181, file: !37, line: 889, baseType: !646, size: 32, offset: 96)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3181, file: !37, line: 889, baseType: !646, size: 32, offset: 128)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3181, file: !37, line: 890, baseType: !127, size: 32, offset: 160)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !567, file: !37, line: 937, baseType: !1656, size: 64, offset: 1024)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !567, file: !37, line: 938, baseType: !3191, size: 256, offset: 1088)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3191, file: !37, line: 897, baseType: !99, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3191, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3191, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3191, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3191, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3191, file: !37, line: 904, baseType: !738, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !567, file: !37, line: 940, baseType: !632, size: 64, offset: 1344)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !567, file: !37, line: 945, baseType: !97, size: 64, offset: 1408)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !567, file: !37, line: 949, baseType: !279, size: 128, offset: 1472)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !567, file: !37, line: 950, baseType: !279, size: 128, offset: 1600)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !567, file: !37, line: 952, baseType: !947, size: 64, offset: 1728)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !567, file: !37, line: 953, baseType: !1113, size: 32, offset: 1792)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !567, file: !37, line: 954, baseType: !1113, size: 32, offset: 1824)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !398, file: !399, line: 163, baseType: !3207, size: 64, offset: 2048)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !399, line: 24, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !398, file: !399, line: 165, baseType: !7, size: 32, offset: 2112)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !398, file: !399, line: 166, baseType: !3211, size: 320, offset: 2176)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3212, line: 11, size: 320, elements: !3213)
!3212 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3213 = !{!3214, !3215, !3216, !3221}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3211, file: !3212, line: 16, baseType: !850, size: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3211, file: !3212, line: 17, baseType: !99, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3211, file: !3212, line: 18, baseType: !3217, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3211, file: !3212, line: 19, baseType: !629, size: 32, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !398, file: !399, line: 168, baseType: !3223, size: 64, offset: 2496)
!3223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !428)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !398, file: !399, line: 170, baseType: !3225, size: 64, offset: 2560)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !399, line: 170, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !398, file: !399, line: 172, baseType: !3228, size: 64, offset: 2624)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !406, line: 90, size: 192, elements: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3236}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3229, file: !406, line: 91, baseType: !381, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3229, file: !406, line: 92, baseType: !381, size: 32, offset: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3229, file: !406, line: 93, baseType: !381, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3229, file: !406, line: 94, baseType: !381, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3229, file: !406, line: 95, baseType: !381, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3229, file: !406, line: 96, baseType: !381, size: 32, offset: 160)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !398, file: !399, line: 174, baseType: !418, size: 768, offset: 2688)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !398, file: !399, line: 175, baseType: !413, size: 64, offset: 3456)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !398, file: !399, line: 176, baseType: !413, size: 64, offset: 3520)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !398, file: !399, line: 177, baseType: !413, size: 64, offset: 3584)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !398, file: !399, line: 179, baseType: !3242, size: 64, offset: 3648)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!127, !397}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !398, file: !399, line: 180, baseType: !3246, size: 64, offset: 3712)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !397}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !398, file: !399, line: 181, baseType: !3250, size: 64, offset: 3776)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!127, !397, !566}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !398, file: !399, line: 182, baseType: !3254, size: 64, offset: 3840)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!127, !397, !7, !7, !127}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !398, file: !399, line: 184, baseType: !3258, size: 64, offset: 3904)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !399, line: 337, size: 576, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3331, !3332}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3259, file: !399, line: 339, baseType: !97, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3259, file: !399, line: 341, baseType: !127, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3259, file: !399, line: 342, baseType: !114, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3259, file: !399, line: 344, baseType: !397, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3259, file: !399, line: 345, baseType: !3266, size: 64, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !399, line: 302, size: 960, elements: !3268)
!3268 = !{!3269, !3270, !3274, !3285, !3289, !3293, !3320, !3324, !3325, !3326, !3327, !3328, !3329, !3330}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3267, file: !399, line: 304, baseType: !97, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3267, file: !399, line: 306, baseType: !3271, size: 64, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !3258, !7, !7, !127}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3267, file: !399, line: 307, baseType: !3275, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !3258, !3278, !7}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3280)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !399, line: 32, size: 64, elements: !3281)
!3281 = !{!3282, !3283, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3280, file: !399, line: 33, baseType: !142, size: 16)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3280, file: !399, line: 34, baseType: !142, size: 16, offset: 16)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3280, file: !399, line: 35, baseType: !381, size: 32, offset: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3267, file: !399, line: 309, baseType: !3286, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!304, !3258, !7, !7, !127}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3267, file: !399, line: 310, baseType: !3290, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!304, !3266, !397}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3267, file: !399, line: 311, baseType: !3294, size: 64, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!127, !3266, !397, !3297}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3299)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !269, line: 342, size: 1600, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3308, !3310, !3311, !3312, !3313, !3314, !3315, !3317, !3318, !3319}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3299, file: !269, line: 344, baseType: !277, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3299, file: !269, line: 346, baseType: !142, size: 16, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3299, file: !269, line: 347, baseType: !142, size: 16, offset: 80)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3299, file: !269, line: 348, baseType: !142, size: 16, offset: 96)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3299, file: !269, line: 349, baseType: !142, size: 16, offset: 112)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3299, file: !269, line: 351, baseType: !3307, size: 64, offset: 128)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !414)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3299, file: !269, line: 352, baseType: !3309, size: 768, offset: 192)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 768, elements: !419)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3299, file: !269, line: 353, baseType: !3307, size: 64, offset: 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3299, file: !269, line: 354, baseType: !3307, size: 64, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3299, file: !269, line: 355, baseType: !3307, size: 64, offset: 1088)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3299, file: !269, line: 356, baseType: !3307, size: 64, offset: 1152)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3299, file: !269, line: 357, baseType: !3307, size: 64, offset: 1216)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3299, file: !269, line: 358, baseType: !3316, size: 128, offset: 1280)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 128, elements: !428)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3299, file: !269, line: 359, baseType: !3307, size: 64, offset: 1408)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3299, file: !269, line: 360, baseType: !3307, size: 64, offset: 1472)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3299, file: !269, line: 362, baseType: !277, size: 64, offset: 1536)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3267, file: !399, line: 312, baseType: !3321, size: 64, offset: 384)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{null, !3258}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3267, file: !399, line: 313, baseType: !3321, size: 64, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3267, file: !399, line: 315, baseType: !304, size: 8, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3267, file: !399, line: 316, baseType: !127, size: 32, offset: 544)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3267, file: !399, line: 317, baseType: !114, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3267, file: !399, line: 319, baseType: !3297, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3267, file: !399, line: 321, baseType: !279, size: 128, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3267, file: !399, line: 322, baseType: !279, size: 128, offset: 832)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3259, file: !399, line: 347, baseType: !279, size: 128, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3259, file: !399, line: 348, baseType: !279, size: 128, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !398, file: !399, line: 186, baseType: !285, offset: 3968)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !398, file: !399, line: 187, baseType: !547, size: 192, offset: 3968)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !398, file: !399, line: 189, baseType: !7, size: 32, offset: 4160)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !398, file: !399, line: 190, baseType: !304, size: 8, offset: 4192)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !398, file: !399, line: 192, baseType: !3338, size: 5568, offset: 4224)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !66, line: 461, size: 5568, elements: !3339)
!3339 = !{!3340, !3639, !3641, !3644, !3645, !3696, !3785, !3786, !3787, !3788, !3789, !3798, !3892, !3905, !3908, !3909, !3913, !3915, !3916, !3917, !3921, !3927, !3928, !3931, !3935, !3938, !3939, !3940, !3941, !3942, !3974, !3975, !3976, !3979, !3982, !3983, !3984, !3985}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3338, file: !66, line: 462, baseType: !3341, size: 512)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3342, line: 64, size: 512, elements: !3343)
!3342 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3343 = !{!3344, !3345, !3346, !3348, !3388, !3490, !3629, !3634, !3635, !3636, !3637, !3638}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3341, file: !3342, line: 65, baseType: !114, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3341, file: !3342, line: 66, baseType: !279, size: 128, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3341, file: !3342, line: 67, baseType: !3347, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3341, file: !3342, line: 68, baseType: !3349, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3342, line: 192, size: 704, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3350, file: !3342, line: 193, baseType: !279, size: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3350, file: !3342, line: 194, baseType: !285, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3350, file: !3342, line: 195, baseType: !3341, size: 512, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3350, file: !3342, line: 196, baseType: !3356, size: 64, offset: 640)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3342, line: 156, size: 192, elements: !3359)
!3359 = !{!3360, !3365, !3370}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3358, file: !3342, line: 157, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!127, !3349, !3347}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3358, file: !3342, line: 158, baseType: !3366, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3367)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!114, !3349, !3347}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3358, file: !3342, line: 159, baseType: !3371, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!127, !3349, !3347, !3375}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3342, line: 148, size: 20736, elements: !3377)
!3377 = !{!3378, !3380, !3382, !3383, !3387}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3376, file: !3342, line: 149, baseType: !3379, size: 192)
!3379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 192, elements: !862)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3376, file: !3342, line: 150, baseType: !3381, size: 4096, offset: 192)
!3381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4096, elements: !1987)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3376, file: !3342, line: 151, baseType: !127, size: 32, offset: 4288)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3376, file: !3342, line: 152, baseType: !3384, size: 16384, offset: 4320)
!3384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 16384, elements: !3385)
!3385 = !{!3386}
!3386 = !DISubrange(count: 2048)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3376, file: !3342, line: 153, baseType: !127, size: 32, offset: 20704)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3341, file: !3342, line: 69, baseType: !3389, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3342, line: 138, size: 448, elements: !3391)
!3391 = !{!3392, !3396, !3415, !3417, !3450, !3480, !3484}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3390, file: !3342, line: 139, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3347}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3390, file: !3342, line: 140, baseType: !3397, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3399)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3400, line: 230, size: 128, elements: !3401)
!3400 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3401 = !{!3402, !3411}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3399, file: !3400, line: 231, baseType: !3403, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!783, !3347, !3406, !133}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3400, line: 30, size: 128, elements: !3408)
!3408 = !{!3409, !3410}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3407, file: !3400, line: 31, baseType: !114, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3407, file: !3400, line: 32, baseType: !643, size: 16, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3399, file: !3400, line: 232, baseType: !3412, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!783, !3347, !3406, !114, !786}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3390, file: !3342, line: 141, baseType: !3416, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3390, file: !3342, line: 142, baseType: !3418, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3400, line: 84, size: 320, elements: !3422)
!3422 = !{!3423, !3424, !3428, !3447, !3448}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3421, file: !3400, line: 85, baseType: !114, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3421, file: !3400, line: 86, baseType: !3425, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!643, !3347, !3406, !127}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3421, file: !3400, line: 88, baseType: !3429, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!643, !3347, !3432, !127}
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3400, line: 168, size: 448, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3442, !3443}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3433, file: !3400, line: 169, baseType: !3407, size: 128)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3433, file: !3400, line: 170, baseType: !786, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3433, file: !3400, line: 171, baseType: !97, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3433, file: !3400, line: 172, baseType: !3439, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!783, !566, !3347, !3432, !133, !738, !786}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3433, file: !3400, line: 174, baseType: !3439, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3433, file: !3400, line: 176, baseType: !3444, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!127, !566, !3347, !3432, !1185}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3421, file: !3400, line: 90, baseType: !3416, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3421, file: !3400, line: 91, baseType: !3449, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3390, file: !3342, line: 143, baseType: !3451, size: 64, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!3454, !3347}
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !54, line: 39, size: 384, elements: !3457)
!3457 = !{!3458, !3459, !3463, !3467, !3475, !3479}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3456, file: !54, line: 40, baseType: !53, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3456, file: !54, line: 41, baseType: !3460, size: 64, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!304}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3456, file: !54, line: 42, baseType: !3464, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!97}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3456, file: !54, line: 43, baseType: !3468, size: 64, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!3471, !3473}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !54, line: 19, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3456, file: !54, line: 44, baseType: !3476, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!3471}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3456, file: !54, line: 45, baseType: !135, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3390, file: !3342, line: 144, baseType: !3481, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!3471, !3347}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3390, file: !3342, line: 145, baseType: !3485, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{null, !3347, !3488, !3489}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3341, file: !3342, line: 70, baseType: !3491, size: 64, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !830, line: 123, size: 1024, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3622, !3623, !3624, !3625, !3626}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3492, file: !830, line: 124, baseType: !960, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3492, file: !830, line: 125, baseType: !960, size: 32, offset: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3492, file: !830, line: 135, baseType: !3491, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3492, file: !830, line: 136, baseType: !114, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3492, file: !830, line: 138, baseType: !973, size: 192, align: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3492, file: !830, line: 140, baseType: !3471, size: 64, offset: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3492, file: !830, line: 141, baseType: !7, size: 32, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3492, file: !830, line: 142, baseType: !3502, size: 256, offset: 512)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3492, file: !830, line: 142, size: 256, elements: !3503)
!3503 = !{!3504, !3550, !3554}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3502, file: !830, line: 143, baseType: !3505, size: 192)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !830, line: 91, size: 192, elements: !3506)
!3506 = !{!3507, !3508, !3509}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3505, file: !830, line: 92, baseType: !99, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3505, file: !830, line: 94, baseType: !969, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3505, file: !830, line: 100, baseType: !3510, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !830, line: 180, size: 704, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3522, !3523, !3524, !3548, !3549}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3511, file: !830, line: 182, baseType: !3491, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3511, file: !830, line: 183, baseType: !7, size: 32, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3511, file: !830, line: 186, baseType: !3516, size: 192, offset: 128)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3517, line: 19, size: 192, elements: !3518)
!3517 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3518 = !{!3519, !3520, !3521}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3516, file: !3517, line: 20, baseType: !952, size: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3516, file: !3517, line: 21, baseType: !7, size: 32, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3516, file: !3517, line: 22, baseType: !7, size: 32, offset: 160)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3511, file: !830, line: 187, baseType: !629, size: 32, offset: 320)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3511, file: !830, line: 188, baseType: !629, size: 32, offset: 352)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3511, file: !830, line: 189, baseType: !3525, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !830, line: 168, size: 320, elements: !3527)
!3527 = !{!3528, !3532, !3536, !3540, !3544}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3526, file: !830, line: 169, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!127, !924, !3510}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3526, file: !830, line: 171, baseType: !3533, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!127, !3491, !114, !643}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3526, file: !830, line: 173, baseType: !3537, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!127, !3491}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3526, file: !830, line: 174, baseType: !3541, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!127, !3491, !3491, !114}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3526, file: !830, line: 176, baseType: !3545, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!127, !924, !3491, !3510}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3511, file: !830, line: 192, baseType: !279, size: 128, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3511, file: !830, line: 194, baseType: !1590, size: 128, offset: 576)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3502, file: !830, line: 144, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !830, line: 103, size: 64, elements: !3552)
!3552 = !{!3553}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3551, file: !830, line: 104, baseType: !3491, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3502, file: !830, line: 145, baseType: !3555, size: 256)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !830, line: 107, size: 256, elements: !3556)
!3556 = !{!3557, !3617, !3620, !3621}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3555, file: !830, line: 108, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !830, line: 217, size: 768, elements: !3561)
!3561 = !{!3562, !3582, !3586, !3590, !3594, !3598, !3602, !3606, !3607, !3608, !3609, !3613}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3560, file: !830, line: 222, baseType: !3563, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!127, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !830, line: 197, size: 1088, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3567, file: !830, line: 199, baseType: !3491, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3567, file: !830, line: 200, baseType: !566, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3567, file: !830, line: 201, baseType: !924, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3567, file: !830, line: 202, baseType: !97, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3567, file: !830, line: 205, baseType: !547, size: 192, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3567, file: !830, line: 206, baseType: !547, size: 192, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3567, file: !830, line: 207, baseType: !127, size: 32, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3567, file: !830, line: 208, baseType: !279, size: 128, offset: 704)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3567, file: !830, line: 209, baseType: !133, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3567, file: !830, line: 211, baseType: !786, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3567, file: !830, line: 212, baseType: !304, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3567, file: !830, line: 213, baseType: !304, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3567, file: !830, line: 214, baseType: !1213, size: 64, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3560, file: !830, line: 223, baseType: !3583, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{null, !3566}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3560, file: !830, line: 236, baseType: !3587, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!127, !924, !97}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3560, file: !830, line: 238, baseType: !3591, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!97, !924, !2905}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3560, file: !830, line: 239, baseType: !3595, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!97, !924, !97, !2905}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3560, file: !830, line: 240, baseType: !3599, size: 64, offset: 320)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{null, !924, !97}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3560, file: !830, line: 242, baseType: !3603, size: 64, offset: 384)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!783, !3566, !133, !786, !738}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3560, file: !830, line: 252, baseType: !786, size: 64, offset: 448)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3560, file: !830, line: 259, baseType: !304, size: 8, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3560, file: !830, line: 260, baseType: !3603, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3560, file: !830, line: 263, baseType: !3610, size: 64, offset: 640)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!2934, !3566, !2936}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3560, file: !830, line: 266, baseType: !3614, size: 64, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!127, !3566, !1185}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3555, file: !830, line: 109, baseType: !3618, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !830, line: 31, flags: DIFlagFwdDecl)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3555, file: !830, line: 110, baseType: !738, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3555, file: !830, line: 111, baseType: !3491, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3492, file: !830, line: 148, baseType: !97, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3492, file: !830, line: 154, baseType: !632, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !830, line: 156, baseType: !144, size: 16, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3492, file: !830, line: 157, baseType: !643, size: 16, offset: 912)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3492, file: !830, line: 158, baseType: !3627, size: 64, offset: 960)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !830, line: 32, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3341, file: !3342, line: 71, baseType: !3630, size: 32, offset: 448)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3631, line: 19, size: 32, elements: !3632)
!3631 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3632 = !{!3633}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3630, file: !3631, line: 20, baseType: !1345, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3341, file: !3342, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3341, file: !3342, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3341, file: !3342, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3341, file: !3342, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3341, file: !3342, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3338, file: !66, line: 463, baseType: !3640, size: 64, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3338, file: !66, line: 465, baseType: !3642, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !66, line: 36, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3338, file: !66, line: 467, baseType: !114, size: 64, offset: 640)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3338, file: !66, line: 468, baseType: !3646, size: 64, offset: 704)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3648)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !66, line: 87, size: 384, elements: !3649)
!3649 = !{!3650, !3651, !3652, !3656, !3661, !3665}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3648, file: !66, line: 88, baseType: !114, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3648, file: !66, line: 89, baseType: !3418, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3648, file: !66, line: 90, baseType: !3653, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!127, !3640, !3375}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3648, file: !66, line: 91, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!133, !3640, !3660, !3488, !3489}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3648, file: !66, line: 93, baseType: !3662, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{null, !3640}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3648, file: !66, line: 95, baseType: !3666, size: 64, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3668)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !73, line: 278, size: 1472, elements: !3669)
!3669 = !{!3670, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3668, file: !73, line: 279, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!127, !3640}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3668, file: !73, line: 280, baseType: !3662, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3668, file: !73, line: 281, baseType: !3671, size: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3668, file: !73, line: 282, baseType: !3671, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3668, file: !73, line: 283, baseType: !3671, size: 64, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3668, file: !73, line: 284, baseType: !3671, size: 64, offset: 320)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3668, file: !73, line: 285, baseType: !3671, size: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3668, file: !73, line: 286, baseType: !3671, size: 64, offset: 448)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3668, file: !73, line: 287, baseType: !3671, size: 64, offset: 512)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3668, file: !73, line: 288, baseType: !3671, size: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3668, file: !73, line: 289, baseType: !3671, size: 64, offset: 640)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3668, file: !73, line: 290, baseType: !3671, size: 64, offset: 704)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3668, file: !73, line: 291, baseType: !3671, size: 64, offset: 768)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3668, file: !73, line: 292, baseType: !3671, size: 64, offset: 832)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3668, file: !73, line: 293, baseType: !3671, size: 64, offset: 896)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3668, file: !73, line: 294, baseType: !3671, size: 64, offset: 960)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3668, file: !73, line: 295, baseType: !3671, size: 64, offset: 1024)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3668, file: !73, line: 296, baseType: !3671, size: 64, offset: 1088)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3668, file: !73, line: 297, baseType: !3671, size: 64, offset: 1152)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3668, file: !73, line: 298, baseType: !3671, size: 64, offset: 1216)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3668, file: !73, line: 299, baseType: !3671, size: 64, offset: 1280)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3668, file: !73, line: 300, baseType: !3671, size: 64, offset: 1344)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3668, file: !73, line: 301, baseType: !3671, size: 64, offset: 1408)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3338, file: !66, line: 470, baseType: !3697, size: 64, offset: 768)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3699, line: 82, size: 1408, elements: !3700)
!3699 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3780, !3783, !3784}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3698, file: !3699, line: 83, baseType: !114, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3698, file: !3699, line: 84, baseType: !114, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3698, file: !3699, line: 85, baseType: !3640, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3698, file: !3699, line: 86, baseType: !3418, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3698, file: !3699, line: 87, baseType: !3418, size: 64, offset: 256)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3698, file: !3699, line: 88, baseType: !3418, size: 64, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3698, file: !3699, line: 90, baseType: !3708, size: 64, offset: 384)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!127, !3640, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !60, line: 95, size: 1152, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717, !3718, !3719, !3720, !3732, !3744, !3745, !3746, !3747, !3748, !3756, !3757, !3758, !3759, !3760, !3761}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3712, file: !60, line: 96, baseType: !114, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3712, file: !60, line: 97, baseType: !3697, size: 64, offset: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3712, file: !60, line: 99, baseType: !92, size: 64, offset: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3712, file: !60, line: 100, baseType: !114, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3712, file: !60, line: 102, baseType: !304, size: 8, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3712, file: !60, line: 103, baseType: !59, size: 32, offset: 288)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3712, file: !60, line: 105, baseType: !3721, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3723)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !269, line: 262, size: 1600, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3731}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3723, file: !269, line: 263, baseType: !2729, size: 256)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3723, file: !269, line: 264, baseType: !2729, size: 256, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3723, file: !269, line: 265, baseType: !3728, size: 1024, offset: 512)
!3728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1024, elements: !3729)
!3729 = !{!3730}
!3730 = !DISubrange(count: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3723, file: !269, line: 266, baseType: !3471, size: 64, offset: 1536)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3712, file: !60, line: 106, baseType: !3733, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3735)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !269, line: 210, size: 256, elements: !3736)
!3736 = !{!3737, !3741, !3742, !3743}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3735, file: !269, line: 211, baseType: !3738, size: 72)
!3738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 72, elements: !3739)
!3739 = !{!3740}
!3740 = !DISubrange(count: 9)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3735, file: !269, line: 212, baseType: !277, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3735, file: !269, line: 213, baseType: !274, size: 32, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3735, file: !269, line: 214, baseType: !274, size: 32, offset: 224)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3712, file: !60, line: 108, baseType: !3671, size: 64, offset: 448)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3712, file: !60, line: 109, baseType: !3662, size: 64, offset: 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3712, file: !60, line: 110, baseType: !3671, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3712, file: !60, line: 111, baseType: !3662, size: 64, offset: 640)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3712, file: !60, line: 112, baseType: !3749, size: 64, offset: 704)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!127, !3640, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !73, line: 52, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !73, line: 50, size: 32, elements: !3754)
!3754 = !{!3755}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3753, file: !73, line: 51, baseType: !127, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3712, file: !60, line: 113, baseType: !3671, size: 64, offset: 768)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3712, file: !60, line: 114, baseType: !3418, size: 64, offset: 832)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3712, file: !60, line: 115, baseType: !3418, size: 64, offset: 896)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3712, file: !60, line: 117, baseType: !3666, size: 64, offset: 960)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3712, file: !60, line: 118, baseType: !3662, size: 64, offset: 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3712, file: !60, line: 120, baseType: !3762, size: 64, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !60, line: 120, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3698, file: !3699, line: 91, baseType: !3653, size: 64, offset: 448)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3698, file: !3699, line: 92, baseType: !3671, size: 64, offset: 512)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3698, file: !3699, line: 93, baseType: !3662, size: 64, offset: 576)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3698, file: !3699, line: 94, baseType: !3671, size: 64, offset: 640)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3698, file: !3699, line: 95, baseType: !3662, size: 64, offset: 704)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3698, file: !3699, line: 97, baseType: !3671, size: 64, offset: 768)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3698, file: !3699, line: 98, baseType: !3671, size: 64, offset: 832)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3698, file: !3699, line: 100, baseType: !3749, size: 64, offset: 896)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3698, file: !3699, line: 101, baseType: !3671, size: 64, offset: 960)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3698, file: !3699, line: 103, baseType: !3671, size: 64, offset: 1024)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3698, file: !3699, line: 105, baseType: !3671, size: 64, offset: 1088)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3698, file: !3699, line: 107, baseType: !3666, size: 64, offset: 1152)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3698, file: !3699, line: 109, baseType: !3777, size: 64, offset: 1216)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3779)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3699, line: 109, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3698, file: !3699, line: 111, baseType: !3781, size: 64, offset: 1280)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3699, line: 111, flags: DIFlagFwdDecl)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3698, file: !3699, line: 112, baseType: !856, offset: 1344)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3698, file: !3699, line: 114, baseType: !304, size: 8, offset: 1344)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3338, file: !66, line: 471, baseType: !3711, size: 64, offset: 832)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3338, file: !66, line: 473, baseType: !97, size: 64, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3338, file: !66, line: 475, baseType: !97, size: 64, offset: 960)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3338, file: !66, line: 480, baseType: !547, size: 192, offset: 1024)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3338, file: !66, line: 484, baseType: !3790, size: 576, offset: 1216)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !66, line: 361, size: 576, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3797}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3790, file: !66, line: 362, baseType: !279, size: 128)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3790, file: !66, line: 363, baseType: !279, size: 128, offset: 128)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3790, file: !66, line: 364, baseType: !279, size: 128, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3790, file: !66, line: 365, baseType: !279, size: 128, offset: 384)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3790, file: !66, line: 366, baseType: !304, size: 8, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3790, file: !66, line: 367, baseType: !65, size: 32, offset: 544)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3338, file: !66, line: 485, baseType: !3799, size: 2304, offset: 1792)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !73, line: 565, size: 2304, elements: !3800)
!3800 = !{!3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3885, !3889}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3799, file: !73, line: 566, baseType: !3752, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3799, file: !73, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3799, file: !73, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3799, file: !73, line: 569, baseType: !304, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3799, file: !73, line: 570, baseType: !304, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3799, file: !73, line: 571, baseType: !304, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3799, file: !73, line: 572, baseType: !304, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3799, file: !73, line: 573, baseType: !304, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3799, file: !73, line: 574, baseType: !304, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3799, file: !73, line: 575, baseType: !304, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3799, file: !73, line: 576, baseType: !304, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3799, file: !73, line: 577, baseType: !629, size: 32, offset: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3799, file: !73, line: 578, baseType: !285, offset: 96)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3799, file: !73, line: 580, baseType: !279, size: 128, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3799, file: !73, line: 581, baseType: !1611, size: 192, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3799, file: !73, line: 582, baseType: !3817, size: 64, offset: 448)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3819, line: 43, size: 1472, elements: !3820)
!3819 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3820 = !{!3821, !3822, !3823, !3824, !3825, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3818, file: !3819, line: 44, baseType: !114, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3818, file: !3819, line: 45, baseType: !127, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3818, file: !3819, line: 46, baseType: !279, size: 128, offset: 128)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3818, file: !3819, line: 47, baseType: !285, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3818, file: !3819, line: 48, baseType: !3826, size: 64, offset: 256)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !73, line: 533, flags: DIFlagFwdDecl)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3818, file: !3819, line: 49, baseType: !3211, size: 320, offset: 320)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3818, file: !3819, line: 50, baseType: !99, size: 64, offset: 640)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3818, file: !3819, line: 51, baseType: !1415, size: 64, offset: 704)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3818, file: !3819, line: 52, baseType: !1415, size: 64, offset: 768)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3818, file: !3819, line: 53, baseType: !1415, size: 64, offset: 832)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3818, file: !3819, line: 54, baseType: !1415, size: 64, offset: 896)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3818, file: !3819, line: 55, baseType: !1415, size: 64, offset: 960)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3818, file: !3819, line: 56, baseType: !99, size: 64, offset: 1024)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3818, file: !3819, line: 57, baseType: !99, size: 64, offset: 1088)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3818, file: !3819, line: 58, baseType: !99, size: 64, offset: 1152)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3818, file: !3819, line: 59, baseType: !99, size: 64, offset: 1216)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3818, file: !3819, line: 60, baseType: !99, size: 64, offset: 1280)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3818, file: !3819, line: 61, baseType: !3640, size: 64, offset: 1344)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3818, file: !3819, line: 62, baseType: !304, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3818, file: !3819, line: 63, baseType: !304, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3799, file: !73, line: 583, baseType: !304, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3799, file: !73, line: 584, baseType: !304, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3799, file: !73, line: 585, baseType: !304, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3799, file: !73, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3799, file: !73, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3799, file: !73, line: 592, baseType: !1407, size: 512, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3799, file: !73, line: 593, baseType: !632, size: 64, offset: 1088)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3799, file: !73, line: 594, baseType: !2065, size: 256, offset: 1152)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3799, file: !73, line: 595, baseType: !1590, size: 128, offset: 1408)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3799, file: !73, line: 596, baseType: !3826, size: 64, offset: 1536)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3799, file: !73, line: 597, baseType: !960, size: 32, offset: 1600)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3799, file: !73, line: 598, baseType: !960, size: 32, offset: 1632)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3799, file: !73, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3799, file: !73, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3799, file: !73, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3799, file: !73, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3799, file: !73, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3799, file: !73, line: 604, baseType: !304, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3799, file: !73, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3799, file: !73, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3799, file: !73, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3799, file: !73, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3799, file: !73, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3799, file: !73, line: 610, baseType: !7, size: 32, offset: 1696)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3799, file: !73, line: 611, baseType: !72, size: 32, offset: 1728)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3799, file: !73, line: 612, baseType: !80, size: 32, offset: 1760)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3799, file: !73, line: 613, baseType: !127, size: 32, offset: 1792)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3799, file: !73, line: 614, baseType: !127, size: 32, offset: 1824)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3799, file: !73, line: 615, baseType: !632, size: 64, offset: 1856)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3799, file: !73, line: 616, baseType: !632, size: 64, offset: 1920)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3799, file: !73, line: 617, baseType: !632, size: 64, offset: 1984)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3799, file: !73, line: 618, baseType: !632, size: 64, offset: 2048)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3799, file: !73, line: 620, baseType: !3876, size: 64, offset: 2112)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !73, line: 536, size: 256, elements: !3878)
!3878 = !{!3879, !3880, !3881, !3882}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3877, file: !73, line: 537, baseType: !285)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3877, file: !73, line: 538, baseType: !7, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3877, file: !73, line: 540, baseType: !279, size: 128, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3877, file: !73, line: 543, baseType: !3883, size: 64, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !73, line: 534, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3799, file: !73, line: 621, baseType: !3886, size: 64, offset: 2176)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3640, !1554}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3799, file: !73, line: 622, baseType: !3890, size: 64, offset: 2240)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !73, line: 622, flags: DIFlagFwdDecl)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3338, file: !66, line: 486, baseType: !3893, size: 64, offset: 4096)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !73, line: 642, size: 1792, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3902, !3903, !3904}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3894, file: !73, line: 643, baseType: !3668, size: 1472)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3894, file: !73, line: 644, baseType: !3671, size: 64, offset: 1472)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3894, file: !73, line: 645, baseType: !3899, size: 64, offset: 1536)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !3640, !304}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3894, file: !73, line: 646, baseType: !3671, size: 64, offset: 1600)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3894, file: !73, line: 647, baseType: !3662, size: 64, offset: 1664)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3894, file: !73, line: 648, baseType: !3662, size: 64, offset: 1728)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3338, file: !66, line: 493, baseType: !3906, size: 64, offset: 4160)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !66, line: 493, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3338, file: !66, line: 499, baseType: !279, size: 128, offset: 4224)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3338, file: !66, line: 502, baseType: !3910, size: 64, offset: 4352)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3912)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !66, line: 502, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3338, file: !66, line: 504, baseType: !3914, size: 64, offset: 4416)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3338, file: !66, line: 505, baseType: !632, size: 64, offset: 4480)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3338, file: !66, line: 510, baseType: !632, size: 64, offset: 4544)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3338, file: !66, line: 511, baseType: !3918, size: 64, offset: 4608)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3920)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !66, line: 511, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3338, file: !66, line: 513, baseType: !3922, size: 64, offset: 4672)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !66, line: 288, size: 128, elements: !3924)
!3924 = !{!3925, !3926}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3923, file: !66, line: 293, baseType: !7, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3923, file: !66, line: 294, baseType: !99, size: 64, offset: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3338, file: !66, line: 515, baseType: !279, size: 128, offset: 4736)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3338, file: !66, line: 526, baseType: !3929, offset: 4864)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3930, line: 5, elements: !299)
!3930 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3338, file: !66, line: 528, baseType: !3932, size: 64, offset: 4864)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3934, line: 14, flags: DIFlagFwdDecl)
!3934 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3338, file: !66, line: 529, baseType: !3936, size: 64, offset: 4928)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3699, line: 22, flags: DIFlagFwdDecl)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3338, file: !66, line: 534, baseType: !720, size: 32, offset: 4992)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3338, file: !66, line: 535, baseType: !629, size: 32, offset: 5024)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3338, file: !66, line: 537, baseType: !285, offset: 5056)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3338, file: !66, line: 538, baseType: !279, size: 128, offset: 5056)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3338, file: !66, line: 540, baseType: !3943, size: 64, offset: 5184)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3945, line: 54, size: 960, elements: !3946)
!3945 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3946 = !{!3947, !3948, !3949, !3950, !3951, !3952, !3953, !3957, !3961, !3962, !3963, !3964, !3968, !3972, !3973}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3944, file: !3945, line: 55, baseType: !114, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3944, file: !3945, line: 56, baseType: !92, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3944, file: !3945, line: 58, baseType: !3418, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3944, file: !3945, line: 59, baseType: !3418, size: 64, offset: 192)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3944, file: !3945, line: 60, baseType: !3347, size: 64, offset: 256)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3944, file: !3945, line: 62, baseType: !3653, size: 64, offset: 320)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3944, file: !3945, line: 63, baseType: !3954, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!133, !3640, !3660}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3944, file: !3945, line: 65, baseType: !3958, size: 64, offset: 448)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{null, !3943}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3944, file: !3945, line: 66, baseType: !3662, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3944, file: !3945, line: 68, baseType: !3671, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3944, file: !3945, line: 70, baseType: !3454, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3944, file: !3945, line: 71, baseType: !3965, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!3471, !3640}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3944, file: !3945, line: 73, baseType: !3969, size: 64, offset: 768)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{null, !3640, !3488, !3489}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3944, file: !3945, line: 75, baseType: !3666, size: 64, offset: 832)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3944, file: !3945, line: 77, baseType: !3781, size: 64, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3338, file: !66, line: 541, baseType: !3418, size: 64, offset: 5248)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3338, file: !66, line: 543, baseType: !3662, size: 64, offset: 5312)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3338, file: !66, line: 544, baseType: !3977, size: 64, offset: 5376)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !66, line: 45, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3338, file: !66, line: 545, baseType: !3980, size: 64, offset: 5440)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !66, line: 47, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3338, file: !66, line: 547, baseType: !304, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3338, file: !66, line: 548, baseType: !304, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3338, file: !66, line: 549, baseType: !304, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3338, file: !66, line: 550, baseType: !304, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !398, file: !399, line: 194, baseType: !279, size: 128, offset: 9792)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !398, file: !399, line: 195, baseType: !279, size: 128, offset: 9920)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !398, file: !399, line: 197, baseType: !7, size: 32, offset: 10048)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !398, file: !399, line: 198, baseType: !7, size: 32, offset: 10080)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !398, file: !399, line: 199, baseType: !3991, size: 64, offset: 10112)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !398, file: !399, line: 201, baseType: !304, size: 8, offset: 10176)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !398, file: !399, line: 203, baseType: !3994, size: 192, offset: 10240)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 192, elements: !862)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !6, line: 526, baseType: !114, size: 64, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !392, file: !6, line: 527, baseType: !304, size: 8, offset: 320)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "reports", scope: !392, file: !6, line: 528, baseType: !279, size: 128, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !392, file: !6, line: 529, baseType: !7, size: 32, offset: 512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dpad", scope: !351, file: !6, line: 471, baseType: !142, size: 16, offset: 832)
!4000 = !{!4001}
!4001 = !DISubrange(count: 256)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "maxfield", scope: !341, file: !6, line: 483, baseType: !7, size: 32, offset: 16768)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !341, file: !6, line: 484, baseType: !7, size: 32, offset: 16800)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !341, file: !6, line: 485, baseType: !306, size: 64, offset: 16832)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "led_work", scope: !307, file: !6, line: 564, baseType: !2065, size: 256, offset: 50368)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "driver_input_lock", scope: !307, file: !6, line: 566, baseType: !4007, size: 192, offset: 50624)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4008, line: 15, size: 192, elements: !4009)
!4008 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4009 = !{!4010, !4011, !4012}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4007, file: !4008, line: 16, baseType: !986)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4007, file: !4008, line: 17, baseType: !7, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4007, file: !4008, line: 18, baseType: !279, size: 128, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !307, file: !6, line: 567, baseType: !3338, size: 5568, offset: 50816)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !307, file: !6, line: 568, baseType: !4015, size: 64, offset: 56384)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ll_driver", scope: !307, file: !6, line: 570, baseType: !4017, size: 64, offset: 56448)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_ll_driver", file: !6, line: 798, size: 704, elements: !4019)
!4019 = !{!4020, !4024, !4028, !4029, !4030, !4034, !4035, !4039, !4040, !4044, !4048}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4018, file: !6, line: 799, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!127, !306}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4018, file: !6, line: 800, baseType: !4025, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !306}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4018, file: !6, line: 802, baseType: !4021, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4018, file: !6, line: 803, baseType: !4025, size: 64, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4018, file: !6, line: 805, baseType: !4031, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!127, !306, !127}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !4018, file: !6, line: 807, baseType: !4021, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4018, file: !6, line: 809, baseType: !4036, size: 64, offset: 384)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !306, !340, !127}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4018, file: !6, line: 812, baseType: !4021, size: 64, offset: 448)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "raw_request", scope: !4018, file: !6, line: 814, baseType: !4041, size: 64, offset: 512)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!127, !306, !152, !310, !786, !152, !127}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "output_report", scope: !4018, file: !6, line: 818, baseType: !4045, size: 64, offset: 576)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!127, !306, !310, !786}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4018, file: !6, line: 820, baseType: !4049, size: 64, offset: 640)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!127, !306, !127, !127, !127}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_lock", scope: !307, file: !6, line: 571, baseType: !547, size: 192, offset: 56512)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_count", scope: !307, file: !6, line: 572, baseType: !7, size: 32, offset: 56704)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !307, file: !6, line: 590, baseType: !99, size: 64, offset: 56768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !307, file: !6, line: 591, baseType: !7, size: 32, offset: 56832)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !307, file: !6, line: 592, baseType: !7, size: 32, offset: 56864)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "io_started", scope: !307, file: !6, line: 593, baseType: !304, size: 8, offset: 56896)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !307, file: !6, line: 595, baseType: !279, size: 128, offset: 56960)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev", scope: !307, file: !6, line: 596, baseType: !97, size: 64, offset: 57088)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "hidraw", scope: !307, file: !6, line: 597, baseType: !97, size: 64, offset: 57152)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !6, line: 599, baseType: !3728, size: 1024, offset: 57216)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !307, file: !6, line: 600, baseType: !4063, size: 512, offset: 58240)
!4063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 512, elements: !1987)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !307, file: !6, line: 601, baseType: !4063, size: 512, offset: 58752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !307, file: !6, line: 603, baseType: !97, size: 64, offset: 59264)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "ff_init", scope: !307, file: !6, line: 606, baseType: !4021, size: 64, offset: 59328)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_connect", scope: !307, file: !6, line: 609, baseType: !4068, size: 64, offset: 59392)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!127, !306, !7}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_disconnect", scope: !307, file: !6, line: 610, baseType: !4025, size: 64, offset: 59456)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_hid_event", scope: !307, file: !6, line: 611, baseType: !4073, size: 64, offset: 59520)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !306, !350, !357, !381}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_report_event", scope: !307, file: !6, line: 613, baseType: !4077, size: 64, offset: 59584)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !306, !340}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !307, file: !6, line: 616, baseType: !144, size: 16, offset: 59648)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !307, file: !6, line: 617, baseType: !596, size: 64, offset: 59712)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "debug_rdesc", scope: !307, file: !6, line: 618, baseType: !596, size: 64, offset: 59776)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "debug_events", scope: !307, file: !6, line: 619, baseType: !596, size: 64, offset: 59840)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list", scope: !307, file: !6, line: 620, baseType: !279, size: 128, offset: 59904)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list_lock", scope: !307, file: !6, line: 621, baseType: !285, offset: 60032)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "debug_wait", scope: !307, file: !6, line: 622, baseType: !1590, size: 128, offset: 60032)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !262, file: !6, line: 746, baseType: !4088, size: 64, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!127, !306, !266}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !262, file: !6, line: 747, baseType: !4025, size: 64, offset: 384)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "report_table", scope: !262, file: !6, line: 749, baseType: !4093, size: 64, offset: 448)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4095)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_id", file: !6, line: 688, size: 32, elements: !4096)
!4096 = !{!4097}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !4095, file: !6, line: 689, baseType: !274, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "raw_event", scope: !262, file: !6, line: 750, baseType: !4099, size: 64, offset: 512)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!127, !306, !340, !4102, !127}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "usage_table", scope: !262, file: !6, line: 752, baseType: !4104, size: 64, offset: 576)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4106)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage_id", file: !6, line: 691, size: 96, elements: !4107)
!4107 = !{!4108, !4109, !4110}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "usage_hid", scope: !4106, file: !6, line: 692, baseType: !274, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "usage_type", scope: !4106, file: !6, line: 693, baseType: !274, size: 32, offset: 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "usage_code", scope: !4106, file: !6, line: 694, baseType: !274, size: 32, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !262, file: !6, line: 753, baseType: !4112, size: 64, offset: 640)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!127, !306, !350, !357, !381}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !262, file: !6, line: 755, baseType: !4077, size: 64, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "report_fixup", scope: !262, file: !6, line: 757, baseType: !4117, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!310, !306, !310, !172}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapping", scope: !262, file: !6, line: 760, baseType: !4121, size: 64, offset: 832)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!127, !306, !391, !350, !357, !4124, !918}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapped", scope: !262, file: !6, line: 763, baseType: !4121, size: 64, offset: 896)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "input_configured", scope: !262, file: !6, line: 766, baseType: !4127, size: 64, offset: 960)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!127, !306, !391}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "feature_mapping", scope: !262, file: !6, line: 768, baseType: !4131, size: 64, offset: 1024)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{null, !306, !350, !357}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !262, file: !6, line: 772, baseType: !4135, size: 64, offset: 1088)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!127, !306, !3752}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !262, file: !6, line: 773, baseType: !4021, size: 64, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !262, file: !6, line: 774, baseType: !4021, size: 64, offset: 1216)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !262, file: !6, line: 777, baseType: !3712, size: 1152, offset: 1280)
!4141 = !DIGlobalVariableExpression(var: !4142, expr: !DIExpression())
!4142 = distinct !DIGlobalVariable(name: "apple_devices", scope: !2, file: !3, line: 455, type: !4143, isLocal: true, isDefinition: true)
!4143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 15360, elements: !4144)
!4144 = !{!4145}
!4145 = !DISubrange(count: 80)
!4146 = !DIGlobalVariableExpression(var: !4147, expr: !DIExpression())
!4147 = distinct !DIGlobalVariable(name: "macbookair_fn_keys", scope: !2, file: !3, line: 73, type: !4148, isLocal: true, isDefinition: true)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 864, elements: !4155)
!4149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apple_key_translation", file: !3, line: 67, size: 48, elements: !4151)
!4151 = !{!4152, !4153, !4154}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4150, file: !3, line: 68, baseType: !140, size: 16)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4150, file: !3, line: 69, baseType: !140, size: 16, offset: 16)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4150, file: !3, line: 70, baseType: !150, size: 8, offset: 32)
!4155 = !{!4156}
!4156 = !DISubrange(count: 18)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(name: "powerbook_fn_keys", scope: !2, file: !3, line: 116, type: !4159, isLocal: true, isDefinition: true)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 768, elements: !1842)
!4160 = !DIGlobalVariableExpression(var: !4161, expr: !DIExpression())
!4161 = distinct !DIGlobalVariable(name: "apple_fn_keys", scope: !2, file: !3, line: 94, type: !4162, isLocal: true, isDefinition: true)
!4162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 912, elements: !4163)
!4163 = !{!4164}
!4164 = !DISubrange(count: 19)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(name: "powerbook_numlock_keys", scope: !2, file: !3, line: 135, type: !4167, isLocal: true, isDefinition: true)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 960, elements: !2296)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "apple_iso_keyboard", scope: !2, file: !3, line: 158, type: !4170, isLocal: true, isDefinition: true)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 144, elements: !862)
!4171 = !DIGlobalVariableExpression(var: !4172, expr: !DIExpression())
!4172 = distinct !DIGlobalVariable(name: "swapped_option_cmd_keys", scope: !2, file: !3, line: 164, type: !4173, isLocal: true, isDefinition: true)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 240, elements: !4174)
!4174 = !{!4175}
!4175 = !DISubrange(count: 5)
!4176 = !DIGlobalVariableExpression(var: !4177, expr: !DIExpression())
!4177 = distinct !DIGlobalVariable(name: "swapped_fn_leftctrl_keys", scope: !2, file: !3, line: 172, type: !4178, isLocal: true, isDefinition: true)
!4178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 96, elements: !428)
!4179 = !DIGlobalVariableExpression(var: !4180, expr: !DIExpression())
!4180 = distinct !DIGlobalVariable(name: "_rs", scope: !4181, file: !6, line: 997, type: !1809, isLocal: true, isDefinition: true)
!4181 = distinct !DISubprogram(name: "hid_map_usage", scope: !6, file: !6, line: 969, type: !4182, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !391, !357, !4124, !918, !151, !7}
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 136, elements: !4185)
!4185 = !{!4186}
!4186 = !DISubrange(count: 17)
!4187 = !{i32 7, !"Dwarf Version", i32 4}
!4188 = !{i32 2, !"Debug Info Version", i32 3}
!4189 = !{i32 1, !"wchar_size", i32 2}
!4190 = !{i32 1, !"Code Model", i32 2}
!4191 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4192 = distinct !DISubprogram(name: "apple_driver_init", scope: !3, file: !3, line: 635, type: !4193, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!127}
!4195 = !DILocation(line: 635, column: 1, scope: !4192)
!4196 = distinct !DISubprogram(name: "apple_driver_exit", scope: !3, file: !3, line: 635, type: !228, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4197 = !DILocation(line: 635, column: 1, scope: !4196)
!4198 = distinct !DISubprogram(name: "apple_probe", scope: !3, file: !3, line: 417, type: !4089, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4199 = !DILocalVariable(name: "hdev", arg: 1, scope: !4198, file: !3, line: 417, type: !306)
!4200 = !DILocation(line: 417, column: 43, scope: !4198)
!4201 = !DILocalVariable(name: "id", arg: 2, scope: !4198, file: !3, line: 418, type: !266)
!4202 = !DILocation(line: 418, column: 31, scope: !4198)
!4203 = !DILocalVariable(name: "quirks", scope: !4198, file: !3, line: 420, type: !99)
!4204 = !DILocation(line: 420, column: 16, scope: !4198)
!4205 = !DILocation(line: 420, column: 25, scope: !4198)
!4206 = !DILocation(line: 420, column: 29, scope: !4198)
!4207 = !DILocalVariable(name: "asc", scope: !4198, file: !3, line: 421, type: !4208)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apple_sc", file: !3, line: 60, size: 896, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4209, file: !3, line: 61, baseType: !99, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "fn_on", scope: !4209, file: !3, line: 62, baseType: !7, size: 32, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "fn_found", scope: !4209, file: !3, line: 63, baseType: !7, size: 32, offset: 96)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "pressed_numlock", scope: !4209, file: !3, line: 64, baseType: !418, size: 768, offset: 128)
!4215 = !DILocation(line: 421, column: 19, scope: !4198)
!4216 = !DILocalVariable(name: "connect_mask", scope: !4198, file: !3, line: 422, type: !7)
!4217 = !DILocation(line: 422, column: 15, scope: !4198)
!4218 = !DILocalVariable(name: "ret", scope: !4198, file: !3, line: 423, type: !127)
!4219 = !DILocation(line: 423, column: 6, scope: !4198)
!4220 = !DILocation(line: 425, column: 22, scope: !4198)
!4221 = !DILocation(line: 425, column: 28, scope: !4198)
!4222 = !DILocation(line: 425, column: 8, scope: !4198)
!4223 = !DILocation(line: 425, column: 6, scope: !4198)
!4224 = !DILocation(line: 426, column: 6, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 426, column: 6)
!4226 = !DILocation(line: 426, column: 10, scope: !4225)
!4227 = !DILocation(line: 426, column: 6, scope: !4198)
!4228 = !DILocation(line: 427, column: 3, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 426, column: 19)
!4230 = !DILocation(line: 428, column: 3, scope: !4229)
!4231 = !DILocation(line: 431, column: 16, scope: !4198)
!4232 = !DILocation(line: 431, column: 2, scope: !4198)
!4233 = !DILocation(line: 431, column: 7, scope: !4198)
!4234 = !DILocation(line: 431, column: 14, scope: !4198)
!4235 = !DILocation(line: 433, column: 18, scope: !4198)
!4236 = !DILocation(line: 433, column: 24, scope: !4198)
!4237 = !DILocation(line: 433, column: 2, scope: !4198)
!4238 = !DILocation(line: 435, column: 18, scope: !4198)
!4239 = !DILocation(line: 435, column: 8, scope: !4198)
!4240 = !DILocation(line: 435, column: 6, scope: !4198)
!4241 = !DILocation(line: 436, column: 6, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 436, column: 6)
!4243 = !DILocation(line: 436, column: 6, scope: !4198)
!4244 = !DILocation(line: 437, column: 3, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 436, column: 11)
!4246 = !DILocation(line: 438, column: 10, scope: !4245)
!4247 = !DILocation(line: 438, column: 3, scope: !4245)
!4248 = !DILocation(line: 441, column: 6, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 441, column: 6)
!4250 = !DILocation(line: 441, column: 13, scope: !4249)
!4251 = !DILocation(line: 441, column: 6, scope: !4198)
!4252 = !DILocation(line: 442, column: 16, scope: !4249)
!4253 = !DILocation(line: 442, column: 3, scope: !4249)
!4254 = !DILocation(line: 443, column: 6, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 443, column: 6)
!4256 = !DILocation(line: 443, column: 13, scope: !4255)
!4257 = !DILocation(line: 443, column: 6, scope: !4198)
!4258 = !DILocation(line: 444, column: 16, scope: !4255)
!4259 = !DILocation(line: 444, column: 3, scope: !4255)
!4260 = !DILocation(line: 446, column: 21, scope: !4198)
!4261 = !DILocation(line: 446, column: 27, scope: !4198)
!4262 = !DILocation(line: 446, column: 8, scope: !4198)
!4263 = !DILocation(line: 446, column: 6, scope: !4198)
!4264 = !DILocation(line: 447, column: 6, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 447, column: 6)
!4266 = !DILocation(line: 447, column: 6, scope: !4198)
!4267 = !DILocation(line: 448, column: 3, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 447, column: 11)
!4269 = !DILocation(line: 449, column: 10, scope: !4268)
!4270 = !DILocation(line: 449, column: 3, scope: !4268)
!4271 = !DILocation(line: 452, column: 2, scope: !4198)
!4272 = !DILocation(line: 453, column: 1, scope: !4198)
!4273 = distinct !DISubprogram(name: "apple_event", scope: !3, file: !3, line: 298, type: !4113, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4274 = !DILocalVariable(name: "hdev", arg: 1, scope: !4273, file: !3, line: 298, type: !306)
!4275 = !DILocation(line: 298, column: 43, scope: !4273)
!4276 = !DILocalVariable(name: "field", arg: 2, scope: !4273, file: !3, line: 298, type: !350)
!4277 = !DILocation(line: 298, column: 67, scope: !4273)
!4278 = !DILocalVariable(name: "usage", arg: 3, scope: !4273, file: !3, line: 299, type: !357)
!4279 = !DILocation(line: 299, column: 21, scope: !4273)
!4280 = !DILocalVariable(name: "value", arg: 4, scope: !4273, file: !3, line: 299, type: !381)
!4281 = !DILocation(line: 299, column: 34, scope: !4273)
!4282 = !DILocalVariable(name: "asc", scope: !4273, file: !3, line: 301, type: !4208)
!4283 = !DILocation(line: 301, column: 19, scope: !4273)
!4284 = !DILocation(line: 301, column: 41, scope: !4273)
!4285 = !DILocation(line: 301, column: 25, scope: !4273)
!4286 = !DILocation(line: 303, column: 8, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 303, column: 6)
!4288 = !DILocation(line: 303, column: 14, scope: !4287)
!4289 = !DILocation(line: 303, column: 22, scope: !4287)
!4290 = !DILocation(line: 303, column: 43, scope: !4287)
!4291 = !DILocation(line: 303, column: 47, scope: !4287)
!4292 = !DILocation(line: 303, column: 54, scope: !4287)
!4293 = !DILocation(line: 303, column: 63, scope: !4287)
!4294 = !DILocation(line: 304, column: 5, scope: !4287)
!4295 = !DILocation(line: 304, column: 12, scope: !4287)
!4296 = !DILocation(line: 303, column: 6, scope: !4273)
!4297 = !DILocation(line: 305, column: 3, scope: !4287)
!4298 = !DILocation(line: 307, column: 7, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 307, column: 6)
!4300 = !DILocation(line: 307, column: 12, scope: !4299)
!4301 = !DILocation(line: 307, column: 19, scope: !4299)
!4302 = !DILocation(line: 307, column: 42, scope: !4299)
!4303 = !DILocation(line: 308, column: 4, scope: !4299)
!4304 = !DILocation(line: 308, column: 11, scope: !4299)
!4305 = !DILocation(line: 308, column: 16, scope: !4299)
!4306 = !DILocation(line: 307, column: 6, scope: !4273)
!4307 = !DILocation(line: 309, column: 15, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 308, column: 31)
!4309 = !DILocation(line: 309, column: 22, scope: !4308)
!4310 = !DILocation(line: 309, column: 32, scope: !4308)
!4311 = !DILocation(line: 309, column: 39, scope: !4308)
!4312 = !DILocation(line: 309, column: 46, scope: !4308)
!4313 = !DILocation(line: 309, column: 52, scope: !4308)
!4314 = !DILocation(line: 309, column: 59, scope: !4308)
!4315 = !DILocation(line: 310, column: 6, scope: !4308)
!4316 = !DILocation(line: 310, column: 5, scope: !4308)
!4317 = !DILocation(line: 309, column: 3, scope: !4308)
!4318 = !DILocation(line: 311, column: 3, scope: !4308)
!4319 = !DILocation(line: 314, column: 7, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 314, column: 6)
!4321 = !DILocation(line: 314, column: 12, scope: !4320)
!4322 = !DILocation(line: 314, column: 19, scope: !4320)
!4323 = !DILocation(line: 314, column: 35, scope: !4320)
!4324 = !DILocation(line: 315, column: 25, scope: !4320)
!4325 = !DILocation(line: 315, column: 31, scope: !4320)
!4326 = !DILocation(line: 315, column: 38, scope: !4320)
!4327 = !DILocation(line: 315, column: 48, scope: !4320)
!4328 = !DILocation(line: 316, column: 5, scope: !4320)
!4329 = !DILocation(line: 316, column: 12, scope: !4320)
!4330 = !DILocation(line: 315, column: 4, scope: !4320)
!4331 = !DILocation(line: 314, column: 6, scope: !4273)
!4332 = !DILocation(line: 317, column: 3, scope: !4320)
!4333 = !DILocation(line: 320, column: 2, scope: !4273)
!4334 = !DILocation(line: 321, column: 1, scope: !4273)
!4335 = distinct !DISubprogram(name: "apple_report_fixup", scope: !3, file: !3, line: 326, type: !4118, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4336 = !DILocalVariable(name: "hdev", arg: 1, scope: !4335, file: !3, line: 326, type: !306)
!4337 = !DILocation(line: 326, column: 52, scope: !4335)
!4338 = !DILocalVariable(name: "rdesc", arg: 2, scope: !4335, file: !3, line: 326, type: !310)
!4339 = !DILocation(line: 326, column: 64, scope: !4335)
!4340 = !DILocalVariable(name: "rsize", arg: 3, scope: !4335, file: !3, line: 327, type: !172)
!4341 = !DILocation(line: 327, column: 17, scope: !4335)
!4342 = !DILocalVariable(name: "asc", scope: !4335, file: !3, line: 329, type: !4208)
!4343 = !DILocation(line: 329, column: 19, scope: !4335)
!4344 = !DILocation(line: 329, column: 41, scope: !4335)
!4345 = !DILocation(line: 329, column: 25, scope: !4335)
!4346 = !DILocation(line: 331, column: 7, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 331, column: 6)
!4348 = !DILocation(line: 331, column: 12, scope: !4347)
!4349 = !DILocation(line: 331, column: 19, scope: !4347)
!4350 = !DILocation(line: 331, column: 38, scope: !4347)
!4351 = !DILocation(line: 331, column: 42, scope: !4347)
!4352 = !DILocation(line: 331, column: 41, scope: !4347)
!4353 = !DILocation(line: 331, column: 48, scope: !4347)
!4354 = !DILocation(line: 331, column: 54, scope: !4347)
!4355 = !DILocation(line: 332, column: 4, scope: !4347)
!4356 = !DILocation(line: 332, column: 14, scope: !4347)
!4357 = !DILocation(line: 332, column: 22, scope: !4347)
!4358 = !DILocation(line: 332, column: 25, scope: !4347)
!4359 = !DILocation(line: 332, column: 35, scope: !4347)
!4360 = !DILocation(line: 331, column: 6, scope: !4335)
!4361 = !DILocation(line: 333, column: 3, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 332, column: 44)
!4363 = !DILocation(line: 335, column: 15, scope: !4362)
!4364 = !DILocation(line: 335, column: 25, scope: !4362)
!4365 = !DILocation(line: 335, column: 3, scope: !4362)
!4366 = !DILocation(line: 335, column: 13, scope: !4362)
!4367 = !DILocation(line: 336, column: 2, scope: !4362)
!4368 = !DILocation(line: 337, column: 9, scope: !4335)
!4369 = !DILocation(line: 337, column: 2, scope: !4335)
!4370 = distinct !DISubprogram(name: "apple_input_mapping", scope: !3, file: !3, line: 365, type: !4122, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4371 = !DILocalVariable(name: "hdev", arg: 1, scope: !4370, file: !3, line: 365, type: !306)
!4372 = !DILocation(line: 365, column: 51, scope: !4370)
!4373 = !DILocalVariable(name: "hi", arg: 2, scope: !4370, file: !3, line: 365, type: !391)
!4374 = !DILocation(line: 365, column: 75, scope: !4370)
!4375 = !DILocalVariable(name: "field", arg: 3, scope: !4370, file: !3, line: 366, type: !350)
!4376 = !DILocation(line: 366, column: 21, scope: !4370)
!4377 = !DILocalVariable(name: "usage", arg: 4, scope: !4370, file: !3, line: 366, type: !357)
!4378 = !DILocation(line: 366, column: 46, scope: !4370)
!4379 = !DILocalVariable(name: "bit", arg: 5, scope: !4370, file: !3, line: 367, type: !4124)
!4380 = !DILocation(line: 367, column: 19, scope: !4370)
!4381 = !DILocalVariable(name: "max", arg: 6, scope: !4370, file: !3, line: 367, type: !918)
!4382 = !DILocation(line: 367, column: 29, scope: !4370)
!4383 = !DILocalVariable(name: "asc", scope: !4370, file: !3, line: 369, type: !4208)
!4384 = !DILocation(line: 369, column: 19, scope: !4370)
!4385 = !DILocation(line: 369, column: 41, scope: !4370)
!4386 = !DILocation(line: 369, column: 25, scope: !4370)
!4387 = !DILocation(line: 371, column: 6, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 371, column: 6)
!4389 = !DILocation(line: 371, column: 13, scope: !4388)
!4390 = !DILocation(line: 371, column: 17, scope: !4388)
!4391 = !DILocation(line: 371, column: 45, scope: !4388)
!4392 = !DILocation(line: 372, column: 4, scope: !4388)
!4393 = !DILocation(line: 372, column: 11, scope: !4388)
!4394 = !DILocation(line: 372, column: 15, scope: !4388)
!4395 = !DILocation(line: 372, column: 45, scope: !4388)
!4396 = !DILocation(line: 373, column: 4, scope: !4388)
!4397 = !DILocation(line: 373, column: 11, scope: !4388)
!4398 = !DILocation(line: 373, column: 15, scope: !4388)
!4399 = !DILocation(line: 371, column: 6, scope: !4370)
!4400 = !DILocation(line: 375, column: 19, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 373, column: 47)
!4402 = !DILocation(line: 375, column: 23, scope: !4401)
!4403 = !DILocation(line: 375, column: 30, scope: !4401)
!4404 = !DILocation(line: 375, column: 3, scope: !4401)
!4405 = !DILocation(line: 376, column: 23, scope: !4401)
!4406 = !DILocation(line: 376, column: 27, scope: !4401)
!4407 = !DILocation(line: 376, column: 34, scope: !4401)
!4408 = !DILocation(line: 376, column: 39, scope: !4401)
!4409 = !DILocation(line: 376, column: 3, scope: !4401)
!4410 = !DILocation(line: 377, column: 3, scope: !4401)
!4411 = !DILocation(line: 377, column: 8, scope: !4401)
!4412 = !DILocation(line: 377, column: 17, scope: !4401)
!4413 = !DILocation(line: 378, column: 21, scope: !4401)
!4414 = !DILocation(line: 378, column: 25, scope: !4401)
!4415 = !DILocation(line: 378, column: 3, scope: !4401)
!4416 = !DILocation(line: 379, column: 3, scope: !4401)
!4417 = !DILocation(line: 383, column: 2, scope: !4370)
!4418 = !DILocation(line: 384, column: 1, scope: !4370)
!4419 = distinct !DISubprogram(name: "apple_input_mapped", scope: !3, file: !3, line: 386, type: !4122, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4420 = !DILocalVariable(name: "hdev", arg: 1, scope: !4419, file: !3, line: 386, type: !306)
!4421 = !DILocation(line: 386, column: 50, scope: !4419)
!4422 = !DILocalVariable(name: "hi", arg: 2, scope: !4419, file: !3, line: 386, type: !391)
!4423 = !DILocation(line: 386, column: 74, scope: !4419)
!4424 = !DILocalVariable(name: "field", arg: 3, scope: !4419, file: !3, line: 387, type: !350)
!4425 = !DILocation(line: 387, column: 21, scope: !4419)
!4426 = !DILocalVariable(name: "usage", arg: 4, scope: !4419, file: !3, line: 387, type: !357)
!4427 = !DILocation(line: 387, column: 46, scope: !4419)
!4428 = !DILocalVariable(name: "bit", arg: 5, scope: !4419, file: !3, line: 388, type: !4124)
!4429 = !DILocation(line: 388, column: 19, scope: !4419)
!4430 = !DILocalVariable(name: "max", arg: 6, scope: !4419, file: !3, line: 388, type: !918)
!4431 = !DILocation(line: 388, column: 29, scope: !4419)
!4432 = !DILocalVariable(name: "asc", scope: !4419, file: !3, line: 390, type: !4208)
!4433 = !DILocation(line: 390, column: 19, scope: !4419)
!4434 = !DILocation(line: 390, column: 41, scope: !4419)
!4435 = !DILocation(line: 390, column: 25, scope: !4419)
!4436 = !DILocation(line: 392, column: 6, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 392, column: 6)
!4438 = !DILocation(line: 392, column: 11, scope: !4437)
!4439 = !DILocation(line: 392, column: 18, scope: !4437)
!4440 = !DILocation(line: 392, column: 6, scope: !4419)
!4441 = !DILocation(line: 393, column: 7, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 393, column: 7)
!4443 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 392, column: 39)
!4444 = !DILocation(line: 393, column: 14, scope: !4442)
!4445 = !DILocation(line: 393, column: 18, scope: !4442)
!4446 = !DILocation(line: 393, column: 7, scope: !4443)
!4447 = !DILocation(line: 394, column: 18, scope: !4442)
!4448 = !DILocation(line: 394, column: 22, scope: !4442)
!4449 = !DILocation(line: 394, column: 29, scope: !4442)
!4450 = !DILocation(line: 394, column: 34, scope: !4442)
!4451 = !DILocation(line: 394, column: 4, scope: !4442)
!4452 = !DILocation(line: 395, column: 12, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 395, column: 12)
!4454 = !DILocation(line: 395, column: 19, scope: !4453)
!4455 = !DILocation(line: 395, column: 24, scope: !4453)
!4456 = !DILocation(line: 395, column: 12, scope: !4442)
!4457 = !DILocation(line: 396, column: 18, scope: !4453)
!4458 = !DILocation(line: 396, column: 22, scope: !4453)
!4459 = !DILocation(line: 396, column: 29, scope: !4453)
!4460 = !DILocation(line: 396, column: 34, scope: !4453)
!4461 = !DILocation(line: 396, column: 4, scope: !4453)
!4462 = !DILocation(line: 397, column: 12, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 397, column: 12)
!4464 = !DILocation(line: 397, column: 19, scope: !4463)
!4465 = !DILocation(line: 397, column: 24, scope: !4463)
!4466 = !DILocation(line: 397, column: 12, scope: !4453)
!4467 = !DILocation(line: 398, column: 18, scope: !4463)
!4468 = !DILocation(line: 398, column: 22, scope: !4463)
!4469 = !DILocation(line: 398, column: 29, scope: !4463)
!4470 = !DILocation(line: 398, column: 34, scope: !4463)
!4471 = !DILocation(line: 398, column: 4, scope: !4463)
!4472 = !DILocation(line: 399, column: 2, scope: !4443)
!4473 = !DILocation(line: 401, column: 2, scope: !4419)
!4474 = distinct !DISubprogram(name: "apple_input_configured", scope: !3, file: !3, line: 404, type: !4128, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4475 = !DILocalVariable(name: "hdev", arg: 1, scope: !4474, file: !3, line: 404, type: !306)
!4476 = !DILocation(line: 404, column: 54, scope: !4474)
!4477 = !DILocalVariable(name: "hidinput", arg: 2, scope: !4474, file: !3, line: 405, type: !391)
!4478 = !DILocation(line: 405, column: 21, scope: !4474)
!4479 = !DILocalVariable(name: "asc", scope: !4474, file: !3, line: 407, type: !4208)
!4480 = !DILocation(line: 407, column: 19, scope: !4474)
!4481 = !DILocation(line: 407, column: 41, scope: !4474)
!4482 = !DILocation(line: 407, column: 25, scope: !4474)
!4483 = !DILocation(line: 409, column: 7, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 409, column: 6)
!4485 = !DILocation(line: 409, column: 12, scope: !4484)
!4486 = !DILocation(line: 409, column: 19, scope: !4484)
!4487 = !DILocation(line: 409, column: 35, scope: !4484)
!4488 = !DILocation(line: 409, column: 39, scope: !4484)
!4489 = !DILocation(line: 409, column: 44, scope: !4484)
!4490 = !DILocation(line: 409, column: 6, scope: !4474)
!4491 = !DILocation(line: 410, column: 3, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4484, file: !3, line: 409, column: 54)
!4493 = !DILocation(line: 411, column: 3, scope: !4492)
!4494 = !DILocation(line: 411, column: 8, scope: !4492)
!4495 = !DILocation(line: 411, column: 15, scope: !4492)
!4496 = !DILocation(line: 412, column: 2, scope: !4492)
!4497 = !DILocation(line: 414, column: 2, scope: !4474)
!4498 = distinct !DISubprogram(name: "devm_kzalloc", scope: !66, file: !66, line: 215, type: !4499, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!97, !3640, !786, !95}
!4501 = !DILocalVariable(name: "dev", arg: 1, scope: !4498, file: !66, line: 215, type: !3640)
!4502 = !DILocation(line: 215, column: 49, scope: !4498)
!4503 = !DILocalVariable(name: "size", arg: 2, scope: !4498, file: !66, line: 215, type: !786)
!4504 = !DILocation(line: 215, column: 61, scope: !4498)
!4505 = !DILocalVariable(name: "gfp", arg: 3, scope: !4498, file: !66, line: 215, type: !95)
!4506 = !DILocation(line: 215, column: 73, scope: !4498)
!4507 = !DILocation(line: 217, column: 22, scope: !4498)
!4508 = !DILocation(line: 217, column: 27, scope: !4498)
!4509 = !DILocation(line: 217, column: 33, scope: !4498)
!4510 = !DILocation(line: 217, column: 37, scope: !4498)
!4511 = !DILocation(line: 217, column: 9, scope: !4498)
!4512 = !DILocation(line: 217, column: 2, scope: !4498)
!4513 = distinct !DISubprogram(name: "hid_set_drvdata", scope: !6, file: !6, line: 633, type: !4514, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{null, !306, !97}
!4516 = !DILocalVariable(name: "hdev", arg: 1, scope: !4513, file: !6, line: 633, type: !306)
!4517 = !DILocation(line: 633, column: 55, scope: !4513)
!4518 = !DILocalVariable(name: "data", arg: 2, scope: !4513, file: !6, line: 633, type: !97)
!4519 = !DILocation(line: 633, column: 67, scope: !4513)
!4520 = !DILocation(line: 635, column: 19, scope: !4513)
!4521 = !DILocation(line: 635, column: 25, scope: !4513)
!4522 = !DILocation(line: 635, column: 30, scope: !4513)
!4523 = !DILocation(line: 635, column: 2, scope: !4513)
!4524 = !DILocation(line: 636, column: 1, scope: !4513)
!4525 = distinct !DISubprogram(name: "hid_parse", scope: !6, file: !6, line: 1033, type: !4022, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4526 = !DILocalVariable(name: "hdev", arg: 1, scope: !4525, file: !6, line: 1033, type: !306)
!4527 = !DILocation(line: 1033, column: 61, scope: !4525)
!4528 = !DILocation(line: 1035, column: 25, scope: !4525)
!4529 = !DILocation(line: 1035, column: 9, scope: !4525)
!4530 = !DILocation(line: 1035, column: 2, scope: !4525)
!4531 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !66, file: !66, line: 660, type: !4532, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{null, !3640, !97}
!4534 = !DILocalVariable(name: "dev", arg: 1, scope: !4531, file: !66, line: 660, type: !3640)
!4535 = !DILocation(line: 660, column: 51, scope: !4531)
!4536 = !DILocalVariable(name: "data", arg: 2, scope: !4531, file: !66, line: 660, type: !97)
!4537 = !DILocation(line: 660, column: 62, scope: !4531)
!4538 = !DILocation(line: 662, column: 21, scope: !4531)
!4539 = !DILocation(line: 662, column: 2, scope: !4531)
!4540 = !DILocation(line: 662, column: 7, scope: !4531)
!4541 = !DILocation(line: 662, column: 19, scope: !4531)
!4542 = !DILocation(line: 663, column: 1, scope: !4531)
!4543 = distinct !DISubprogram(name: "hid_get_drvdata", scope: !6, file: !6, line: 628, type: !4544, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!97, !306}
!4546 = !DILocalVariable(name: "hdev", arg: 1, scope: !4543, file: !6, line: 628, type: !306)
!4547 = !DILocation(line: 628, column: 56, scope: !4543)
!4548 = !DILocation(line: 630, column: 26, scope: !4543)
!4549 = !DILocation(line: 630, column: 32, scope: !4543)
!4550 = !DILocation(line: 630, column: 9, scope: !4543)
!4551 = !DILocation(line: 630, column: 2, scope: !4543)
!4552 = distinct !DISubprogram(name: "hidinput_apple_event", scope: !3, file: !3, line: 190, type: !4553, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!127, !306, !397, !357, !381}
!4555 = !DILocalVariable(name: "hid", arg: 1, scope: !4552, file: !3, line: 190, type: !306)
!4556 = !DILocation(line: 190, column: 52, scope: !4552)
!4557 = !DILocalVariable(name: "input", arg: 2, scope: !4552, file: !3, line: 190, type: !397)
!4558 = !DILocation(line: 190, column: 75, scope: !4552)
!4559 = !DILocalVariable(name: "usage", arg: 3, scope: !4552, file: !3, line: 191, type: !357)
!4560 = !DILocation(line: 191, column: 21, scope: !4552)
!4561 = !DILocalVariable(name: "value", arg: 4, scope: !4552, file: !3, line: 191, type: !381)
!4562 = !DILocation(line: 191, column: 34, scope: !4552)
!4563 = !DILocalVariable(name: "asc", scope: !4552, file: !3, line: 193, type: !4208)
!4564 = !DILocation(line: 193, column: 19, scope: !4552)
!4565 = !DILocation(line: 193, column: 41, scope: !4552)
!4566 = !DILocation(line: 193, column: 25, scope: !4552)
!4567 = !DILocalVariable(name: "trans", scope: !4552, file: !3, line: 194, type: !4568)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4569 = !DILocation(line: 194, column: 38, scope: !4552)
!4570 = !DILocalVariable(name: "table", scope: !4552, file: !3, line: 194, type: !4568)
!4571 = !DILocation(line: 194, column: 46, scope: !4552)
!4572 = !DILocalVariable(name: "do_translate", scope: !4552, file: !3, line: 195, type: !304)
!4573 = !DILocation(line: 195, column: 7, scope: !4552)
!4574 = !DILocalVariable(name: "code", scope: !4552, file: !3, line: 196, type: !140)
!4575 = !DILocation(line: 196, column: 6, scope: !4552)
!4576 = !DILocalVariable(name: "fn_keycode", scope: !4552, file: !3, line: 198, type: !140)
!4577 = !DILocation(line: 198, column: 6, scope: !4552)
!4578 = !DILocation(line: 198, column: 20, scope: !4552)
!4579 = !DILocation(line: 198, column: 19, scope: !4552)
!4580 = !DILocation(line: 200, column: 6, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 200, column: 6)
!4582 = !DILocation(line: 200, column: 13, scope: !4581)
!4583 = !DILocation(line: 200, column: 21, scope: !4581)
!4584 = !DILocation(line: 200, column: 18, scope: !4581)
!4585 = !DILocation(line: 200, column: 6, scope: !4552)
!4586 = !DILocation(line: 201, column: 18, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 200, column: 33)
!4588 = !DILocation(line: 201, column: 17, scope: !4587)
!4589 = !DILocation(line: 201, column: 16, scope: !4587)
!4590 = !DILocation(line: 201, column: 3, scope: !4587)
!4591 = !DILocation(line: 201, column: 8, scope: !4587)
!4592 = !DILocation(line: 201, column: 14, scope: !4587)
!4593 = !DILocation(line: 202, column: 15, scope: !4587)
!4594 = !DILocation(line: 202, column: 22, scope: !4587)
!4595 = !DILocation(line: 202, column: 29, scope: !4587)
!4596 = !DILocation(line: 202, column: 43, scope: !4587)
!4597 = !DILocation(line: 202, column: 3, scope: !4587)
!4598 = !DILocation(line: 203, column: 3, scope: !4587)
!4599 = !DILocation(line: 206, column: 6, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 206, column: 6)
!4601 = !DILocation(line: 206, column: 6, scope: !4552)
!4602 = !DILocation(line: 207, column: 7, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 207, column: 7)
!4604 = distinct !DILexicalBlock(scope: !4600, file: !3, line: 206, column: 14)
!4605 = !DILocation(line: 207, column: 12, scope: !4603)
!4606 = !DILocation(line: 207, column: 20, scope: !4603)
!4607 = !DILocation(line: 207, column: 60, scope: !4603)
!4608 = !DILocation(line: 208, column: 5, scope: !4603)
!4609 = !DILocation(line: 208, column: 10, scope: !4603)
!4610 = !DILocation(line: 208, column: 18, scope: !4603)
!4611 = !DILocation(line: 207, column: 7, scope: !4604)
!4612 = !DILocation(line: 209, column: 10, scope: !4603)
!4613 = !DILocation(line: 209, column: 4, scope: !4603)
!4614 = !DILocation(line: 210, column: 12, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 210, column: 12)
!4616 = !DILocation(line: 210, column: 17, scope: !4615)
!4617 = !DILocation(line: 210, column: 25, scope: !4615)
!4618 = !DILocation(line: 210, column: 33, scope: !4615)
!4619 = !DILocation(line: 210, column: 36, scope: !4615)
!4620 = !DILocation(line: 210, column: 41, scope: !4615)
!4621 = !DILocation(line: 210, column: 49, scope: !4615)
!4622 = !DILocation(line: 210, column: 12, scope: !4603)
!4623 = !DILocation(line: 211, column: 10, scope: !4615)
!4624 = !DILocation(line: 211, column: 4, scope: !4615)
!4625 = !DILocation(line: 213, column: 10, scope: !4615)
!4626 = !DILocation(line: 215, column: 35, scope: !4604)
!4627 = !DILocation(line: 215, column: 42, scope: !4604)
!4628 = !DILocation(line: 215, column: 49, scope: !4604)
!4629 = !DILocation(line: 215, column: 11, scope: !4604)
!4630 = !DILocation(line: 215, column: 9, scope: !4604)
!4631 = !DILocation(line: 217, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 217, column: 7)
!4633 = !DILocation(line: 217, column: 7, scope: !4604)
!4634 = !DILocation(line: 218, column: 17, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 218, column: 8)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 217, column: 14)
!4637 = !DILocation(line: 218, column: 24, scope: !4635)
!4638 = !DILocation(line: 218, column: 30, scope: !4635)
!4639 = !DILocation(line: 218, column: 37, scope: !4635)
!4640 = !DILocation(line: 218, column: 8, scope: !4635)
!4641 = !DILocation(line: 218, column: 8, scope: !4636)
!4642 = !DILocation(line: 219, column: 12, scope: !4635)
!4643 = !DILocation(line: 219, column: 19, scope: !4635)
!4644 = !DILocation(line: 219, column: 10, scope: !4635)
!4645 = !DILocation(line: 219, column: 5, scope: !4635)
!4646 = !DILocation(line: 220, column: 22, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 220, column: 13)
!4648 = !DILocation(line: 220, column: 29, scope: !4647)
!4649 = !DILocation(line: 220, column: 33, scope: !4647)
!4650 = !DILocation(line: 220, column: 40, scope: !4647)
!4651 = !DILocation(line: 220, column: 13, scope: !4647)
!4652 = !DILocation(line: 220, column: 13, scope: !4635)
!4653 = !DILocation(line: 221, column: 12, scope: !4647)
!4654 = !DILocation(line: 221, column: 19, scope: !4647)
!4655 = !DILocation(line: 221, column: 10, scope: !4647)
!4656 = !DILocation(line: 221, column: 5, scope: !4647)
!4657 = !DILocation(line: 223, column: 9, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 223, column: 8)
!4659 = !DILocation(line: 223, column: 8, scope: !4636)
!4660 = !DILocation(line: 224, column: 9, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 224, column: 9)
!4662 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 223, column: 15)
!4663 = !DILocation(line: 224, column: 16, scope: !4661)
!4664 = !DILocation(line: 224, column: 22, scope: !4661)
!4665 = !DILocation(line: 224, column: 9, scope: !4662)
!4666 = !DILocation(line: 225, column: 14, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 224, column: 41)
!4668 = !DILocation(line: 225, column: 6, scope: !4667)
!4669 = !DILocation(line: 227, column: 23, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 225, column: 22)
!4671 = !DILocation(line: 227, column: 28, scope: !4670)
!4672 = !DILocation(line: 227, column: 22, scope: !4670)
!4673 = !DILocation(line: 227, column: 20, scope: !4670)
!4674 = !DILocation(line: 228, column: 7, scope: !4670)
!4675 = !DILocation(line: 230, column: 22, scope: !4670)
!4676 = !DILocation(line: 230, column: 27, scope: !4670)
!4677 = !DILocation(line: 230, column: 20, scope: !4670)
!4678 = !DILocation(line: 231, column: 7, scope: !4670)
!4679 = !DILocation(line: 234, column: 20, scope: !4670)
!4680 = !DILocation(line: 235, column: 6, scope: !4670)
!4681 = !DILocation(line: 236, column: 5, scope: !4667)
!4682 = !DILocation(line: 237, column: 21, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 236, column: 12)
!4684 = !DILocation(line: 237, column: 26, scope: !4683)
!4685 = !DILocation(line: 237, column: 19, scope: !4683)
!4686 = !DILocation(line: 240, column: 12, scope: !4662)
!4687 = !DILocation(line: 240, column: 27, scope: !4662)
!4688 = !DILocation(line: 240, column: 34, scope: !4662)
!4689 = !DILocation(line: 240, column: 39, scope: !4662)
!4690 = !DILocation(line: 240, column: 46, scope: !4662)
!4691 = !DILocation(line: 240, column: 10, scope: !4662)
!4692 = !DILocation(line: 241, column: 4, scope: !4662)
!4693 = !DILocation(line: 243, column: 16, scope: !4636)
!4694 = !DILocation(line: 243, column: 23, scope: !4636)
!4695 = !DILocation(line: 243, column: 30, scope: !4636)
!4696 = !DILocation(line: 243, column: 36, scope: !4636)
!4697 = !DILocation(line: 243, column: 42, scope: !4636)
!4698 = !DILocation(line: 243, column: 4, scope: !4636)
!4699 = !DILocation(line: 244, column: 4, scope: !4636)
!4700 = !DILocation(line: 247, column: 7, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 247, column: 7)
!4702 = !DILocation(line: 247, column: 12, scope: !4701)
!4703 = !DILocation(line: 247, column: 19, scope: !4701)
!4704 = !DILocation(line: 247, column: 45, scope: !4701)
!4705 = !DILocation(line: 248, column: 15, scope: !4701)
!4706 = !DILocation(line: 248, column: 22, scope: !4701)
!4707 = !DILocation(line: 248, column: 28, scope: !4701)
!4708 = !DILocation(line: 248, column: 33, scope: !4701)
!4709 = !DILocation(line: 248, column: 6, scope: !4701)
!4710 = !DILocation(line: 248, column: 50, scope: !4701)
!4711 = !DILocation(line: 249, column: 24, scope: !4701)
!4712 = !DILocation(line: 249, column: 31, scope: !4701)
!4713 = !DILocation(line: 249, column: 5, scope: !4701)
!4714 = !DILocation(line: 247, column: 7, scope: !4604)
!4715 = !DILocation(line: 251, column: 6, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 249, column: 38)
!4717 = !DILocation(line: 251, column: 13, scope: !4716)
!4718 = !DILocation(line: 250, column: 12, scope: !4716)
!4719 = !DILocation(line: 250, column: 10, scope: !4716)
!4720 = !DILocation(line: 253, column: 8, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 253, column: 8)
!4722 = !DILocation(line: 253, column: 8, scope: !4716)
!4723 = !DILocation(line: 254, column: 9, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 254, column: 9)
!4725 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 253, column: 15)
!4726 = !DILocation(line: 254, column: 9, scope: !4725)
!4727 = !DILocation(line: 255, column: 14, scope: !4724)
!4728 = !DILocation(line: 255, column: 21, scope: !4724)
!4729 = !DILocation(line: 256, column: 8, scope: !4724)
!4730 = !DILocation(line: 256, column: 13, scope: !4724)
!4731 = !DILocation(line: 255, column: 6, scope: !4724)
!4732 = !DILocation(line: 258, column: 16, scope: !4724)
!4733 = !DILocation(line: 258, column: 23, scope: !4724)
!4734 = !DILocation(line: 259, column: 8, scope: !4724)
!4735 = !DILocation(line: 259, column: 13, scope: !4724)
!4736 = !DILocation(line: 258, column: 6, scope: !4724)
!4737 = !DILocation(line: 261, column: 17, scope: !4725)
!4738 = !DILocation(line: 261, column: 24, scope: !4725)
!4739 = !DILocation(line: 261, column: 31, scope: !4725)
!4740 = !DILocation(line: 261, column: 37, scope: !4725)
!4741 = !DILocation(line: 261, column: 44, scope: !4725)
!4742 = !DILocation(line: 262, column: 7, scope: !4725)
!4743 = !DILocation(line: 261, column: 5, scope: !4725)
!4744 = !DILocation(line: 263, column: 4, scope: !4725)
!4745 = !DILocation(line: 265, column: 4, scope: !4716)
!4746 = !DILocation(line: 267, column: 2, scope: !4604)
!4747 = !DILocation(line: 269, column: 6, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 269, column: 6)
!4749 = !DILocation(line: 269, column: 6, scope: !4552)
!4750 = !DILocation(line: 270, column: 7, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 270, column: 7)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 269, column: 18)
!4753 = !DILocation(line: 270, column: 12, scope: !4751)
!4754 = !DILocation(line: 270, column: 20, scope: !4751)
!4755 = !DILocation(line: 270, column: 7, scope: !4752)
!4756 = !DILocation(line: 271, column: 55, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 270, column: 54)
!4758 = !DILocation(line: 271, column: 62, scope: !4757)
!4759 = !DILocation(line: 271, column: 12, scope: !4757)
!4760 = !DILocation(line: 271, column: 10, scope: !4757)
!4761 = !DILocation(line: 272, column: 8, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 272, column: 8)
!4763 = !DILocation(line: 272, column: 8, scope: !4757)
!4764 = !DILocation(line: 273, column: 17, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 272, column: 15)
!4766 = !DILocation(line: 273, column: 24, scope: !4765)
!4767 = !DILocation(line: 273, column: 31, scope: !4765)
!4768 = !DILocation(line: 273, column: 37, scope: !4765)
!4769 = !DILocation(line: 273, column: 44, scope: !4765)
!4770 = !DILocation(line: 273, column: 48, scope: !4765)
!4771 = !DILocation(line: 273, column: 5, scope: !4765)
!4772 = !DILocation(line: 274, column: 5, scope: !4765)
!4773 = !DILocation(line: 276, column: 3, scope: !4757)
!4774 = !DILocation(line: 277, column: 2, scope: !4752)
!4775 = !DILocation(line: 279, column: 6, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 279, column: 6)
!4777 = !DILocation(line: 279, column: 6, scope: !4552)
!4778 = !DILocation(line: 280, column: 59, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 279, column: 20)
!4780 = !DILocation(line: 280, column: 66, scope: !4779)
!4781 = !DILocation(line: 280, column: 11, scope: !4779)
!4782 = !DILocation(line: 280, column: 9, scope: !4779)
!4783 = !DILocation(line: 281, column: 7, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 281, column: 7)
!4785 = !DILocation(line: 281, column: 7, scope: !4779)
!4786 = !DILocation(line: 282, column: 16, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 281, column: 14)
!4788 = !DILocation(line: 282, column: 23, scope: !4787)
!4789 = !DILocation(line: 282, column: 30, scope: !4787)
!4790 = !DILocation(line: 282, column: 36, scope: !4787)
!4791 = !DILocation(line: 282, column: 43, scope: !4787)
!4792 = !DILocation(line: 282, column: 47, scope: !4787)
!4793 = !DILocation(line: 282, column: 4, scope: !4787)
!4794 = !DILocation(line: 283, column: 4, scope: !4787)
!4795 = !DILocation(line: 285, column: 2, scope: !4779)
!4796 = !DILocation(line: 287, column: 6, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 287, column: 6)
!4798 = !DILocation(line: 287, column: 6, scope: !4552)
!4799 = !DILocation(line: 288, column: 60, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 287, column: 24)
!4801 = !DILocation(line: 288, column: 67, scope: !4800)
!4802 = !DILocation(line: 288, column: 11, scope: !4800)
!4803 = !DILocation(line: 288, column: 9, scope: !4800)
!4804 = !DILocation(line: 289, column: 7, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 289, column: 7)
!4806 = !DILocation(line: 289, column: 7, scope: !4800)
!4807 = !DILocation(line: 290, column: 16, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 289, column: 14)
!4809 = !DILocation(line: 290, column: 23, scope: !4808)
!4810 = !DILocation(line: 290, column: 30, scope: !4808)
!4811 = !DILocation(line: 290, column: 36, scope: !4808)
!4812 = !DILocation(line: 290, column: 43, scope: !4808)
!4813 = !DILocation(line: 290, column: 47, scope: !4808)
!4814 = !DILocation(line: 290, column: 4, scope: !4808)
!4815 = !DILocation(line: 291, column: 4, scope: !4808)
!4816 = !DILocation(line: 293, column: 2, scope: !4800)
!4817 = !DILocation(line: 295, column: 2, scope: !4552)
!4818 = !DILocation(line: 296, column: 1, scope: !4552)
!4819 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !66, file: !66, line: 655, type: !4820, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!97, !4822}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3338)
!4824 = !DILocalVariable(name: "dev", arg: 1, scope: !4819, file: !66, line: 655, type: !4822)
!4825 = !DILocation(line: 655, column: 58, scope: !4819)
!4826 = !DILocation(line: 657, column: 9, scope: !4819)
!4827 = !DILocation(line: 657, column: 14, scope: !4819)
!4828 = !DILocation(line: 657, column: 2, scope: !4819)
!4829 = distinct !DISubprogram(name: "apple_find_translation", scope: !3, file: !3, line: 177, type: !4830, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4830 = !DISubroutineType(types: !4831)
!4831 = !{!4568, !4568, !140}
!4832 = !DILocalVariable(name: "table", arg: 1, scope: !4829, file: !3, line: 178, type: !4568)
!4833 = !DILocation(line: 178, column: 39, scope: !4829)
!4834 = !DILocalVariable(name: "from", arg: 2, scope: !4829, file: !3, line: 178, type: !140)
!4835 = !DILocation(line: 178, column: 50, scope: !4829)
!4836 = !DILocalVariable(name: "trans", scope: !4829, file: !3, line: 180, type: !4568)
!4837 = !DILocation(line: 180, column: 38, scope: !4829)
!4838 = !DILocation(line: 183, column: 15, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 183, column: 2)
!4840 = !DILocation(line: 183, column: 13, scope: !4839)
!4841 = !DILocation(line: 183, column: 7, scope: !4839)
!4842 = !DILocation(line: 183, column: 22, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 183, column: 2)
!4844 = !DILocation(line: 183, column: 29, scope: !4843)
!4845 = !DILocation(line: 183, column: 2, scope: !4839)
!4846 = !DILocation(line: 184, column: 7, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 184, column: 7)
!4848 = !DILocation(line: 184, column: 14, scope: !4847)
!4849 = !DILocation(line: 184, column: 22, scope: !4847)
!4850 = !DILocation(line: 184, column: 19, scope: !4847)
!4851 = !DILocation(line: 184, column: 7, scope: !4843)
!4852 = !DILocation(line: 185, column: 11, scope: !4847)
!4853 = !DILocation(line: 185, column: 4, scope: !4847)
!4854 = !DILocation(line: 183, column: 40, scope: !4843)
!4855 = !DILocation(line: 183, column: 2, scope: !4843)
!4856 = distinct !{!4856, !4845, !4857}
!4857 = !DILocation(line: 185, column: 11, scope: !4839)
!4858 = !DILocation(line: 187, column: 2, scope: !4829)
!4859 = !DILocation(line: 188, column: 1, scope: !4829)
!4860 = distinct !DISubprogram(name: "test_bit", scope: !4861, file: !4861, line: 132, type: !4862, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4861 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!304, !105, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4866)
!4866 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !99)
!4867 = !DILocalVariable(name: "nr", arg: 1, scope: !4868, file: !4869, line: 210, type: !105)
!4868 = distinct !DISubprogram(name: "variable_test_bit", scope: !4869, file: !4869, line: 210, type: !4862, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4869 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4870 = !DILocation(line: 210, column: 52, scope: !4868, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 135, column: 9, scope: !4860)
!4872 = !DILocalVariable(name: "addr", arg: 2, scope: !4868, file: !4869, line: 210, type: !4864)
!4873 = !DILocation(line: 210, column: 86, scope: !4868, inlinedAt: !4871)
!4874 = !DILocalVariable(name: "oldbit", scope: !4868, file: !4869, line: 212, type: !304)
!4875 = !DILocation(line: 212, column: 7, scope: !4868, inlinedAt: !4871)
!4876 = !DILocalVariable(name: "nr", arg: 1, scope: !4877, file: !4869, line: 204, type: !105)
!4877 = distinct !DISubprogram(name: "constant_test_bit", scope: !4869, file: !4869, line: 204, type: !4862, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4878 = !DILocation(line: 204, column: 52, scope: !4877, inlinedAt: !4879)
!4879 = distinct !DILocation(line: 135, column: 9, scope: !4860)
!4880 = !DILocalVariable(name: "addr", arg: 2, scope: !4877, file: !4869, line: 204, type: !4864)
!4881 = !DILocation(line: 204, column: 86, scope: !4877, inlinedAt: !4879)
!4882 = !DILocalVariable(name: "v", arg: 1, scope: !4883, file: !4884, line: 69, type: !4887)
!4883 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4884, file: !4884, line: 69, type: !4885, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4884 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4885 = !DISubroutineType(types: !4886)
!4886 = !{null, !4887, !786}
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4889)
!4889 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4890 = !DILocation(line: 69, column: 73, scope: !4883, inlinedAt: !4891)
!4891 = distinct !DILocation(line: 134, column: 2, scope: !4860)
!4892 = !DILocalVariable(name: "size", arg: 2, scope: !4883, file: !4884, line: 69, type: !786)
!4893 = !DILocation(line: 69, column: 83, scope: !4883, inlinedAt: !4891)
!4894 = !DILocalVariable(name: "nr", arg: 1, scope: !4860, file: !4861, line: 132, type: !105)
!4895 = !DILocation(line: 132, column: 34, scope: !4860)
!4896 = !DILocalVariable(name: "addr", arg: 2, scope: !4860, file: !4861, line: 132, type: !4864)
!4897 = !DILocation(line: 132, column: 68, scope: !4860)
!4898 = !DILocation(line: 134, column: 25, scope: !4860)
!4899 = !DILocation(line: 134, column: 32, scope: !4860)
!4900 = !DILocation(line: 134, column: 30, scope: !4860)
!4901 = !DILocation(line: 71, column: 19, scope: !4883, inlinedAt: !4891)
!4902 = !DILocation(line: 71, column: 22, scope: !4883, inlinedAt: !4891)
!4903 = !DILocation(line: 71, column: 2, scope: !4883, inlinedAt: !4891)
!4904 = !DILocation(line: 72, column: 2, scope: !4883, inlinedAt: !4891)
!4905 = !DILocation(line: 135, column: 9, scope: !4860)
!4906 = !DILocation(line: 206, column: 19, scope: !4877, inlinedAt: !4879)
!4907 = !DILocation(line: 206, column: 22, scope: !4877, inlinedAt: !4879)
!4908 = !DILocation(line: 206, column: 15, scope: !4877, inlinedAt: !4879)
!4909 = !DILocation(line: 207, column: 4, scope: !4877, inlinedAt: !4879)
!4910 = !DILocation(line: 207, column: 9, scope: !4877, inlinedAt: !4879)
!4911 = !DILocation(line: 207, column: 12, scope: !4877, inlinedAt: !4879)
!4912 = !DILocation(line: 206, column: 44, scope: !4877, inlinedAt: !4879)
!4913 = !DILocation(line: 207, column: 37, scope: !4877, inlinedAt: !4879)
!4914 = !DILocation(line: 217, column: 33, scope: !4868, inlinedAt: !4871)
!4915 = !DILocation(line: 217, column: 46, scope: !4868, inlinedAt: !4871)
!4916 = !DILocation(line: 214, column: 2, scope: !4868, inlinedAt: !4871)
!4917 = !{i32 -2147045309, i32 -2147045249}
!4918 = !DILocation(line: 219, column: 9, scope: !4868, inlinedAt: !4871)
!4919 = !DILocation(line: 135, column: 2, scope: !4860)
!4920 = distinct !DISubprogram(name: "set_bit", scope: !4921, file: !4921, line: 26, type: !4922, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4921 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !105, !4924}
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4925 = !DILocalVariable(name: "nr", arg: 1, scope: !4926, file: !4869, line: 52, type: !105)
!4926 = distinct !DISubprogram(name: "arch_set_bit", scope: !4869, file: !4869, line: 52, type: !4922, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4927 = !DILocation(line: 52, column: 19, scope: !4926, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 29, column: 2, scope: !4920)
!4929 = !DILocalVariable(name: "addr", arg: 2, scope: !4926, file: !4869, line: 52, type: !4924)
!4930 = !DILocation(line: 52, column: 47, scope: !4926, inlinedAt: !4928)
!4931 = !DILocalVariable(name: "v", arg: 1, scope: !4932, file: !4884, line: 84, type: !4887)
!4932 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4884, file: !4884, line: 84, type: !4885, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4933 = !DILocation(line: 84, column: 74, scope: !4932, inlinedAt: !4934)
!4934 = distinct !DILocation(line: 28, column: 2, scope: !4920)
!4935 = !DILocalVariable(name: "size", arg: 2, scope: !4932, file: !4884, line: 84, type: !786)
!4936 = !DILocation(line: 84, column: 84, scope: !4932, inlinedAt: !4934)
!4937 = !DILocalVariable(name: "nr", arg: 1, scope: !4920, file: !4921, line: 26, type: !105)
!4938 = !DILocation(line: 26, column: 33, scope: !4920)
!4939 = !DILocalVariable(name: "addr", arg: 2, scope: !4920, file: !4921, line: 26, type: !4924)
!4940 = !DILocation(line: 26, column: 61, scope: !4920)
!4941 = !DILocation(line: 28, column: 26, scope: !4920)
!4942 = !DILocation(line: 28, column: 33, scope: !4920)
!4943 = !DILocation(line: 28, column: 31, scope: !4920)
!4944 = !DILocation(line: 86, column: 20, scope: !4932, inlinedAt: !4934)
!4945 = !DILocation(line: 86, column: 23, scope: !4932, inlinedAt: !4934)
!4946 = !DILocation(line: 86, column: 2, scope: !4932, inlinedAt: !4934)
!4947 = !DILocation(line: 87, column: 2, scope: !4932, inlinedAt: !4934)
!4948 = !DILocation(line: 29, column: 15, scope: !4920)
!4949 = !DILocation(line: 29, column: 19, scope: !4920)
!4950 = !DILocation(line: 54, column: 27, scope: !4951, inlinedAt: !4928)
!4951 = distinct !DILexicalBlock(scope: !4926, file: !4869, line: 54, column: 6)
!4952 = !DILocation(line: 54, column: 6, scope: !4951, inlinedAt: !4928)
!4953 = !DILocation(line: 54, column: 6, scope: !4926, inlinedAt: !4928)
!4954 = !DILocation(line: 56, column: 6, scope: !4955, inlinedAt: !4928)
!4955 = distinct !DILexicalBlock(scope: !4951, file: !4869, line: 54, column: 32)
!4956 = !DILocation(line: 57, column: 12, scope: !4955, inlinedAt: !4928)
!4957 = !DILocation(line: 55, column: 3, scope: !4955, inlinedAt: !4928)
!4958 = !{i32 -2147054557}
!4959 = !DILocation(line: 59, column: 2, scope: !4955, inlinedAt: !4928)
!4960 = !DILocation(line: 61, column: 8, scope: !4961, inlinedAt: !4928)
!4961 = distinct !DILexicalBlock(scope: !4951, file: !4869, line: 59, column: 9)
!4962 = !DILocation(line: 61, column: 32, scope: !4961, inlinedAt: !4928)
!4963 = !DILocation(line: 60, column: 3, scope: !4961, inlinedAt: !4928)
!4964 = !{i32 -2147054425}
!4965 = !DILocation(line: 30, column: 1, scope: !4920)
!4966 = distinct !DISubprogram(name: "clear_bit", scope: !4921, file: !4921, line: 39, type: !4922, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4967 = !DILocalVariable(name: "nr", arg: 1, scope: !4968, file: !4869, line: 72, type: !105)
!4968 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4869, file: !4869, line: 72, type: !4922, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!4969 = !DILocation(line: 72, column: 21, scope: !4968, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 42, column: 2, scope: !4966)
!4971 = !DILocalVariable(name: "addr", arg: 2, scope: !4968, file: !4869, line: 72, type: !4924)
!4972 = !DILocation(line: 72, column: 49, scope: !4968, inlinedAt: !4970)
!4973 = !DILocation(line: 84, column: 74, scope: !4932, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 41, column: 2, scope: !4966)
!4975 = !DILocation(line: 84, column: 84, scope: !4932, inlinedAt: !4974)
!4976 = !DILocalVariable(name: "nr", arg: 1, scope: !4966, file: !4921, line: 39, type: !105)
!4977 = !DILocation(line: 39, column: 35, scope: !4966)
!4978 = !DILocalVariable(name: "addr", arg: 2, scope: !4966, file: !4921, line: 39, type: !4924)
!4979 = !DILocation(line: 39, column: 63, scope: !4966)
!4980 = !DILocation(line: 41, column: 26, scope: !4966)
!4981 = !DILocation(line: 41, column: 33, scope: !4966)
!4982 = !DILocation(line: 41, column: 31, scope: !4966)
!4983 = !DILocation(line: 86, column: 20, scope: !4932, inlinedAt: !4974)
!4984 = !DILocation(line: 86, column: 23, scope: !4932, inlinedAt: !4974)
!4985 = !DILocation(line: 86, column: 2, scope: !4932, inlinedAt: !4974)
!4986 = !DILocation(line: 87, column: 2, scope: !4932, inlinedAt: !4974)
!4987 = !DILocation(line: 42, column: 17, scope: !4966)
!4988 = !DILocation(line: 42, column: 21, scope: !4966)
!4989 = !DILocation(line: 74, column: 27, scope: !4990, inlinedAt: !4970)
!4990 = distinct !DILexicalBlock(scope: !4968, file: !4869, line: 74, column: 6)
!4991 = !DILocation(line: 74, column: 6, scope: !4990, inlinedAt: !4970)
!4992 = !DILocation(line: 74, column: 6, scope: !4968, inlinedAt: !4970)
!4993 = !DILocation(line: 76, column: 6, scope: !4994, inlinedAt: !4970)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !4869, line: 74, column: 32)
!4995 = !DILocation(line: 77, column: 13, scope: !4994, inlinedAt: !4970)
!4996 = !DILocation(line: 77, column: 12, scope: !4994, inlinedAt: !4970)
!4997 = !DILocation(line: 75, column: 3, scope: !4994, inlinedAt: !4970)
!4998 = !{i32 -2147053603}
!4999 = !DILocation(line: 78, column: 2, scope: !4994, inlinedAt: !4970)
!5000 = !DILocation(line: 80, column: 8, scope: !5001, inlinedAt: !4970)
!5001 = distinct !DILexicalBlock(scope: !4990, file: !4869, line: 78, column: 9)
!5002 = !DILocation(line: 80, column: 32, scope: !5001, inlinedAt: !4970)
!5003 = !DILocation(line: 79, column: 3, scope: !5001, inlinedAt: !4970)
!5004 = !{i32 -2147053471}
!5005 = !DILocation(line: 43, column: 1, scope: !4966)
!5006 = distinct !DISubprogram(name: "kasan_check_read", scope: !5007, file: !5007, line: 34, type: !5008, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!5007 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5008 = !DISubroutineType(types: !5009)
!5009 = !{!304, !4887, !7}
!5010 = !DILocalVariable(name: "p", arg: 1, scope: !5006, file: !5007, line: 34, type: !4887)
!5011 = !DILocation(line: 34, column: 58, scope: !5006)
!5012 = !DILocalVariable(name: "size", arg: 2, scope: !5006, file: !5007, line: 34, type: !7)
!5013 = !DILocation(line: 34, column: 74, scope: !5006)
!5014 = !DILocation(line: 36, column: 2, scope: !5006)
!5015 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5016, file: !5016, line: 178, type: !5017, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!5016 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5017 = !DISubroutineType(types: !5018)
!5018 = !{null, !4887, !786, !127}
!5019 = !DILocalVariable(name: "ptr", arg: 1, scope: !5015, file: !5016, line: 178, type: !4887)
!5020 = !DILocation(line: 178, column: 60, scope: !5015)
!5021 = !DILocalVariable(name: "size", arg: 2, scope: !5015, file: !5016, line: 178, type: !786)
!5022 = !DILocation(line: 178, column: 72, scope: !5015)
!5023 = !DILocalVariable(name: "type", arg: 3, scope: !5015, file: !5016, line: 179, type: !127)
!5024 = !DILocation(line: 179, column: 15, scope: !5015)
!5025 = !DILocation(line: 179, column: 23, scope: !5015)
!5026 = distinct !DISubprogram(name: "kasan_check_write", scope: !5007, file: !5007, line: 38, type: !5008, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!5027 = !DILocalVariable(name: "p", arg: 1, scope: !5026, file: !5007, line: 38, type: !4887)
!5028 = !DILocation(line: 38, column: 59, scope: !5026)
!5029 = !DILocalVariable(name: "size", arg: 2, scope: !5026, file: !5007, line: 38, type: !7)
!5030 = !DILocation(line: 38, column: 75, scope: !5026)
!5031 = !DILocation(line: 40, column: 2, scope: !5026)
!5032 = distinct !DISubprogram(name: "hid_map_usage_clear", scope: !6, file: !6, line: 1015, type: !5033, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{null, !391, !357, !4124, !918, !151, !142}
!5035 = !DILocalVariable(name: "hidinput", arg: 1, scope: !5032, file: !6, line: 1015, type: !391)
!5036 = !DILocation(line: 1015, column: 58, scope: !5032)
!5037 = !DILocalVariable(name: "usage", arg: 2, scope: !5032, file: !6, line: 1016, type: !357)
!5038 = !DILocation(line: 1016, column: 21, scope: !5032)
!5039 = !DILocalVariable(name: "bit", arg: 3, scope: !5032, file: !6, line: 1016, type: !4124)
!5040 = !DILocation(line: 1016, column: 44, scope: !5032)
!5041 = !DILocalVariable(name: "max", arg: 4, scope: !5032, file: !6, line: 1016, type: !918)
!5042 = !DILocation(line: 1016, column: 54, scope: !5032)
!5043 = !DILocalVariable(name: "type", arg: 5, scope: !5032, file: !6, line: 1017, type: !151)
!5044 = !DILocation(line: 1017, column: 8, scope: !5032)
!5045 = !DILocalVariable(name: "c", arg: 6, scope: !5032, file: !6, line: 1017, type: !142)
!5046 = !DILocation(line: 1017, column: 20, scope: !5032)
!5047 = !DILocation(line: 1019, column: 16, scope: !5032)
!5048 = !DILocation(line: 1019, column: 26, scope: !5032)
!5049 = !DILocation(line: 1019, column: 33, scope: !5032)
!5050 = !DILocation(line: 1019, column: 38, scope: !5032)
!5051 = !DILocation(line: 1019, column: 43, scope: !5032)
!5052 = !DILocation(line: 1019, column: 49, scope: !5032)
!5053 = !DILocation(line: 1019, column: 2, scope: !5032)
!5054 = !DILocation(line: 1020, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5032, file: !6, line: 1020, column: 6)
!5056 = !DILocation(line: 1020, column: 6, scope: !5055)
!5057 = !DILocation(line: 1020, column: 6, scope: !5032)
!5058 = !DILocation(line: 1021, column: 13, scope: !5055)
!5059 = !DILocation(line: 1021, column: 20, scope: !5055)
!5060 = !DILocation(line: 1021, column: 27, scope: !5055)
!5061 = !DILocation(line: 1021, column: 26, scope: !5055)
!5062 = !DILocation(line: 1021, column: 3, scope: !5055)
!5063 = !DILocation(line: 1022, column: 1, scope: !5032)
!5064 = distinct !DISubprogram(name: "apple_setup_input", scope: !3, file: !3, line: 340, type: !3247, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !299)
!5065 = !DILocalVariable(name: "input", arg: 1, scope: !5064, file: !3, line: 340, type: !397)
!5066 = !DILocation(line: 340, column: 49, scope: !5064)
!5067 = !DILocalVariable(name: "trans", scope: !5064, file: !3, line: 342, type: !4568)
!5068 = !DILocation(line: 342, column: 38, scope: !5064)
!5069 = !DILocation(line: 344, column: 23, scope: !5064)
!5070 = !DILocation(line: 344, column: 30, scope: !5064)
!5071 = !DILocation(line: 344, column: 2, scope: !5064)
!5072 = !DILocation(line: 347, column: 13, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 347, column: 2)
!5074 = !DILocation(line: 347, column: 7, scope: !5073)
!5075 = !DILocation(line: 347, column: 30, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 347, column: 2)
!5077 = !DILocation(line: 347, column: 37, scope: !5076)
!5078 = !DILocation(line: 347, column: 2, scope: !5073)
!5079 = !DILocation(line: 348, column: 11, scope: !5076)
!5080 = !DILocation(line: 348, column: 18, scope: !5076)
!5081 = !DILocation(line: 348, column: 22, scope: !5076)
!5082 = !DILocation(line: 348, column: 29, scope: !5076)
!5083 = !DILocation(line: 348, column: 3, scope: !5076)
!5084 = !DILocation(line: 347, column: 48, scope: !5076)
!5085 = !DILocation(line: 347, column: 2, scope: !5076)
!5086 = distinct !{!5086, !5078, !5087}
!5087 = !DILocation(line: 348, column: 35, scope: !5073)
!5088 = !DILocation(line: 350, column: 13, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 350, column: 2)
!5090 = !DILocation(line: 350, column: 7, scope: !5089)
!5091 = !DILocation(line: 350, column: 34, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 350, column: 2)
!5093 = !DILocation(line: 350, column: 41, scope: !5092)
!5094 = !DILocation(line: 350, column: 2, scope: !5089)
!5095 = !DILocation(line: 351, column: 11, scope: !5092)
!5096 = !DILocation(line: 351, column: 18, scope: !5092)
!5097 = !DILocation(line: 351, column: 22, scope: !5092)
!5098 = !DILocation(line: 351, column: 29, scope: !5092)
!5099 = !DILocation(line: 351, column: 3, scope: !5092)
!5100 = !DILocation(line: 350, column: 52, scope: !5092)
!5101 = !DILocation(line: 350, column: 2, scope: !5092)
!5102 = distinct !{!5102, !5094, !5103}
!5103 = !DILocation(line: 351, column: 35, scope: !5089)
!5104 = !DILocation(line: 353, column: 13, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 353, column: 2)
!5106 = !DILocation(line: 353, column: 7, scope: !5105)
!5107 = !DILocation(line: 353, column: 39, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 353, column: 2)
!5109 = !DILocation(line: 353, column: 46, scope: !5108)
!5110 = !DILocation(line: 353, column: 2, scope: !5105)
!5111 = !DILocation(line: 354, column: 11, scope: !5108)
!5112 = !DILocation(line: 354, column: 18, scope: !5108)
!5113 = !DILocation(line: 354, column: 22, scope: !5108)
!5114 = !DILocation(line: 354, column: 29, scope: !5108)
!5115 = !DILocation(line: 354, column: 3, scope: !5108)
!5116 = !DILocation(line: 353, column: 57, scope: !5108)
!5117 = !DILocation(line: 353, column: 2, scope: !5108)
!5118 = distinct !{!5118, !5110, !5119}
!5119 = !DILocation(line: 354, column: 35, scope: !5105)
!5120 = !DILocation(line: 356, column: 13, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 356, column: 2)
!5122 = !DILocation(line: 356, column: 7, scope: !5121)
!5123 = !DILocation(line: 356, column: 35, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 356, column: 2)
!5125 = !DILocation(line: 356, column: 42, scope: !5124)
!5126 = !DILocation(line: 356, column: 2, scope: !5121)
!5127 = !DILocation(line: 357, column: 11, scope: !5124)
!5128 = !DILocation(line: 357, column: 18, scope: !5124)
!5129 = !DILocation(line: 357, column: 22, scope: !5124)
!5130 = !DILocation(line: 357, column: 29, scope: !5124)
!5131 = !DILocation(line: 357, column: 3, scope: !5124)
!5132 = !DILocation(line: 356, column: 53, scope: !5124)
!5133 = !DILocation(line: 356, column: 2, scope: !5124)
!5134 = distinct !{!5134, !5126, !5135}
!5135 = !DILocation(line: 357, column: 35, scope: !5121)
!5136 = !DILocation(line: 359, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 359, column: 6)
!5138 = !DILocation(line: 359, column: 6, scope: !5064)
!5139 = !DILocation(line: 360, column: 14, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 360, column: 3)
!5141 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 359, column: 24)
!5142 = !DILocation(line: 360, column: 8, scope: !5140)
!5143 = !DILocation(line: 360, column: 42, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 360, column: 3)
!5145 = !DILocation(line: 360, column: 49, scope: !5144)
!5146 = !DILocation(line: 360, column: 3, scope: !5140)
!5147 = !DILocation(line: 361, column: 12, scope: !5144)
!5148 = !DILocation(line: 361, column: 19, scope: !5144)
!5149 = !DILocation(line: 361, column: 23, scope: !5144)
!5150 = !DILocation(line: 361, column: 30, scope: !5144)
!5151 = !DILocation(line: 361, column: 4, scope: !5144)
!5152 = !DILocation(line: 360, column: 60, scope: !5144)
!5153 = !DILocation(line: 360, column: 3, scope: !5144)
!5154 = distinct !{!5154, !5146, !5155}
!5155 = !DILocation(line: 361, column: 36, scope: !5140)
!5156 = !DILocation(line: 362, column: 2, scope: !5141)
!5157 = !DILocation(line: 363, column: 1, scope: !5064)
!5158 = !DILocalVariable(name: "hidinput", arg: 1, scope: !4181, file: !6, line: 969, type: !391)
!5159 = !DILocation(line: 969, column: 52, scope: !4181)
!5160 = !DILocalVariable(name: "usage", arg: 2, scope: !4181, file: !6, line: 970, type: !357)
!5161 = !DILocation(line: 970, column: 21, scope: !4181)
!5162 = !DILocalVariable(name: "bit", arg: 3, scope: !4181, file: !6, line: 970, type: !4124)
!5163 = !DILocation(line: 970, column: 44, scope: !4181)
!5164 = !DILocalVariable(name: "max", arg: 4, scope: !4181, file: !6, line: 970, type: !918)
!5165 = !DILocation(line: 970, column: 54, scope: !4181)
!5166 = !DILocalVariable(name: "type", arg: 5, scope: !4181, file: !6, line: 971, type: !151)
!5167 = !DILocation(line: 971, column: 8, scope: !4181)
!5168 = !DILocalVariable(name: "c", arg: 6, scope: !4181, file: !6, line: 971, type: !7)
!5169 = !DILocation(line: 971, column: 27, scope: !4181)
!5170 = !DILocalVariable(name: "input", scope: !4181, file: !6, line: 973, type: !397)
!5171 = !DILocation(line: 973, column: 20, scope: !4181)
!5172 = !DILocation(line: 973, column: 28, scope: !4181)
!5173 = !DILocation(line: 973, column: 38, scope: !4181)
!5174 = !DILocalVariable(name: "bmap", scope: !4181, file: !6, line: 974, type: !98)
!5175 = !DILocation(line: 974, column: 17, scope: !4181)
!5176 = !DILocalVariable(name: "limit", scope: !4181, file: !6, line: 975, type: !7)
!5177 = !DILocation(line: 975, column: 15, scope: !4181)
!5178 = !DILocation(line: 977, column: 10, scope: !4181)
!5179 = !DILocation(line: 977, column: 2, scope: !4181)
!5180 = !DILocation(line: 979, column: 10, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !4181, file: !6, line: 977, column: 16)
!5182 = !DILocation(line: 979, column: 17, scope: !5181)
!5183 = !DILocation(line: 979, column: 8, scope: !5181)
!5184 = !DILocation(line: 980, column: 9, scope: !5181)
!5185 = !DILocation(line: 981, column: 3, scope: !5181)
!5186 = !DILocation(line: 983, column: 10, scope: !5181)
!5187 = !DILocation(line: 983, column: 17, scope: !5181)
!5188 = !DILocation(line: 983, column: 8, scope: !5181)
!5189 = !DILocation(line: 984, column: 9, scope: !5181)
!5190 = !DILocation(line: 985, column: 3, scope: !5181)
!5191 = !DILocation(line: 987, column: 10, scope: !5181)
!5192 = !DILocation(line: 987, column: 17, scope: !5181)
!5193 = !DILocation(line: 987, column: 8, scope: !5181)
!5194 = !DILocation(line: 988, column: 9, scope: !5181)
!5195 = !DILocation(line: 989, column: 3, scope: !5181)
!5196 = !DILocation(line: 991, column: 10, scope: !5181)
!5197 = !DILocation(line: 991, column: 17, scope: !5181)
!5198 = !DILocation(line: 991, column: 8, scope: !5181)
!5199 = !DILocation(line: 992, column: 9, scope: !5181)
!5200 = !DILocation(line: 993, column: 3, scope: !5181)
!5201 = !DILocation(line: 996, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !4181, file: !6, line: 996, column: 6)
!5203 = !DILocation(line: 996, column: 6, scope: !4181)
!5204 = !DILocation(line: 997, column: 3, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !6, line: 997, column: 3)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !6, line: 997, column: 3)
!5207 = distinct !DILexicalBlock(scope: !5202, file: !6, line: 996, column: 36)
!5208 = !DILocation(line: 997, column: 3, scope: !5206)
!5209 = !DILocation(line: 999, column: 4, scope: !5207)
!5210 = !DILocation(line: 999, column: 8, scope: !5207)
!5211 = !DILocation(line: 1000, column: 3, scope: !5207)
!5212 = !DILocation(line: 1003, column: 16, scope: !4181)
!5213 = !DILocation(line: 1003, column: 2, scope: !4181)
!5214 = !DILocation(line: 1003, column: 9, scope: !4181)
!5215 = !DILocation(line: 1003, column: 14, scope: !4181)
!5216 = !DILocation(line: 1004, column: 16, scope: !4181)
!5217 = !DILocation(line: 1004, column: 2, scope: !4181)
!5218 = !DILocation(line: 1004, column: 9, scope: !4181)
!5219 = !DILocation(line: 1004, column: 14, scope: !4181)
!5220 = !DILocation(line: 1005, column: 9, scope: !4181)
!5221 = !DILocation(line: 1005, column: 3, scope: !4181)
!5222 = !DILocation(line: 1005, column: 7, scope: !4181)
!5223 = !DILocation(line: 1006, column: 9, scope: !4181)
!5224 = !DILocation(line: 1006, column: 3, scope: !4181)
!5225 = !DILocation(line: 1006, column: 7, scope: !4181)
!5226 = !DILocation(line: 1007, column: 1, scope: !4181)
