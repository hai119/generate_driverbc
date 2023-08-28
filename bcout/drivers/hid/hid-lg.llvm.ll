; ModuleID = '../bcout/drivers/hid/hid-lg.llvm.bc'
source_filename = "drivers/hid/hid-lg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_lg_driver_init6:\09\09\09"
module asm ".long\09lg_driver_init - .\09\09\09"
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
%struct.kmem_cache = type opaque
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lg_drv_data = type { i64, i8* }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__UNIQUE_ID___addressable_lg_driver_init215 = internal global i8* bitcast (i32 ()* @lg_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@lg_driver = internal global %struct.hid_driver { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct.hid_device_id* getelementptr inbounds ([31 x %struct.hid_device_id], [31 x %struct.hid_device_id]* @lg_devices, i32 0, i32 0), %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i1 (%struct.hid_device*, i1)* null, i32 (%struct.hid_device*, %struct.hid_device_id*)* @lg_probe, void (%struct.hid_device*)* @lg_remove, %struct.hid_report_id* null, i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)* @lg_raw_event, %struct.hid_usage_id* null, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @lg_event, void (%struct.hid_device*, %struct.hid_report*)* null, i8* (%struct.hid_device*, i8*, i32*)* @lg_report_fixup, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lg_input_mapping, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lg_input_mapped, i32 (%struct.hid_device*, %struct.hid_input*)* null, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* null, i32 (%struct.hid_device*, i32)* null, i32 (%struct.hid_device*)* null, i32 (%struct.hid_device*)* null, %struct.device_driver zeroinitializer }, align 8, !dbg !3596
@__exitcall_lg_driver_exit = internal global void ()* @lg_driver_exit, section ".exitcall.exit", align 8, !dbg !3581
@__UNIQUE_ID_file216 = internal constant [43 x i8] c"hid_logitech.file=drivers/hid/hid-logitech\00", section ".modinfo", align 1, !dbg !3586
@__UNIQUE_ID_license217 = internal constant [25 x i8] c"hid_logitech.license=GPL\00", section ".modinfo", align 1, !dbg !3591
@.str = private unnamed_addr constant [13 x i8] c"hid_logitech\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"logitech\00", align 1
@lg_devices = internal constant [31 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50444, i64 65 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49409, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50948, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50964, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50975, i64 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49930, i64 48 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50450, i64 48 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49685, i64 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49686, i64 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49812, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49674, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49681, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49689, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49743, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49795, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49798, i64 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49813, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51715, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51716, i64 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49817, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49818, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49819, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49816, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49820, i64 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49678, i64 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49811, i64 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49688, i64 1280 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49799, i64 4096 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50726, i64 2048 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50723, i64 2048 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !4129
@hid_debug = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\017%s: %s: ignoring ifnum %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"drivers/hid/hid-lg.c\00", align 1
@__func__.lg_probe = private unnamed_addr constant [9 x i8] c"lg_probe\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Insufficient memory, cannot allocate driver data\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@lg_probe.cbuf = internal constant [9 x i8] c"\00\AF\01\00\00\00\00\00\00", align 1, !dbg !4134
@lg_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4138
@.str.7 = private unnamed_addr constant [6 x i8] c"&wait\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"fixing up Logitech keyboard report descriptor\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"fixing up rel/abs in Logitech report descriptor\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"fixing up Logitech Wingman Formula GP report descriptor\0A\00", align 1
@fg_rdesc_fixed = internal global [79 x i8] c"\05\01\09\04\A1\01\A1\02\15\00&\FF\005\00F\FF\00u\08\95\01\090\81\02\A4%\01E\01u\01\95\02\81\01\95\06\05\09\19\01)\06\81\02\05\01\B4\81\02\091\81\02\092\81\02\C0\A1\02&\FF\00F\FF\00u\08\95\04\09\02\B1\02\C0\C0", align 16, !dbg !4140
@.str.12 = private unnamed_addr constant [39 x i8] c"rdesc size test failed for formula gp\0A\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"fixing up Logitech Wingman Formula Force GP report descriptor\0A\00", align 1
@ffg_rdesc_fixed = internal global [89 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\06u\01%\01E\01\05\09\19\01)\06\81\02\95\01u\08&\FF\00F\FF\00\06\00\FF\09\01\81\02\05\01\81\01\091\81\02\092\81\02\06\00\FF\09\01\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !4145
@.str.14 = private unnamed_addr constant [52 x i8] c"fixing up Logitech Driving Force report descriptor\0A\00", align 1
@df_rdesc_fixed = internal global [132 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\14&\FF\034F\FF\03\090\81\02\95\0Cu\01%\01E\01\05\09\19\01)\0C\81\02\95\02\06\00\FF\09\01\81\02\05\01&\FF\00F\FF\00\95\01u\08\81\02%\07F;\01u\04e\14\099\81Bu\01\95\04e\00\06\00\FF\09\01%\01E\01\81\02\05\01\95\01u\08&\FF\00F\FF\00\091\81\02\095\81\02\C0\A1\02&\FF\00F\FF\00\95\07u\08\09\03\91\02\C0\C0", align 16, !dbg !4150
@.str.15 = private unnamed_addr constant [55 x i8] c"fixing up Logitech Momo Force (Red) report descriptor\0A\00", align 1
@momo_rdesc_fixed = internal global [89 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\08u\01%\01E\01\05\09\19\01)\08\81\02\06\00\FFu\0E\95\01&\FF\00F\FF\00\09\00\81\02\05\01u\08\091\81\02\092\81\02\06\00\FF\09\01\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !4155
@.str.16 = private unnamed_addr constant [64 x i8] c"fixing up Logitech Momo Racing Force (Black) report descriptor\0A\00", align 1
@momo2_rdesc_fixed = internal global [93 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\0Au\01%\01E\01\05\09\19\01)\0A\81\02\06\00\FF\09\00\95\04\81\02\95\01u\08&\FF\00F\FF\00\09\01\81\02\05\01\091\81\02\092\81\02\06\00\FF\09\00\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !4157
@.str.17 = private unnamed_addr constant [56 x i8] c"fixing up Logitech Formula Vibration report descriptor\0A\00", align 1
@fv_rdesc_fixed = internal global [136 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\0Cu\01%\01E\01\05\09\19\01)\0C\81\02\95\02\06\00\FF\09\01\81\02\09\02&\FF\00F\FF\00\95\01u\08\81\02\05\01%\07F;\01u\04e\14\099\81Bu\01\95\04e\00\06\00\FF\09\01%\01E\01\81\02\05\01\95\01u\08&\FF\00F\FF\00\091\81\02\092\81\02\C0\A1\02&\FF\00F\FF\00\95\07u\08\09\03\91\02\C0\C0", align 16, !dbg !4162
@.str.18 = private unnamed_addr constant [56 x i8] c"fixing up Logitech Driving Force Pro report descriptor\0A\00", align 1
@dfp_rdesc_fixed = internal global [90 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0E\14&\FF?4F\FF?\090\81\02\95\0Eu\01%\01E\01\05\09\19\01)\0E\81\02\05\01\95\01u\04%\07F;\01e\14\099\81Be\00&\FF\00F\FF\00u\08\81\01\091\81\02\095\81\02\81\01\C0\A1\02\09\02\95\07\91\02\C0\C0", align 16, !dbg !4167
@.str.19 = private unnamed_addr constant [59 x i8] c"fixing up Logitech Speed Force Wireless report descriptor\0A\00", align 1
@lg_input_mapping.e_keymap = internal constant [80 x i8] c"\00\D8\00\D5\AF\9C\00\00\00\00\90\00\00\00\00\00\00\00\00\D4\AE\A7\98\A1p\00\00\00\9A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\00\00\00", align 16, !dbg !4172
@hid_map_usage._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4179
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", align 1
@llvm.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_lg_driver_init215 to i8*), i8* bitcast (void ()* @lg_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_lg_driver_exit to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_file216, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license217, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_driver_init() #0 section ".init.text" !dbg !4189 {
entry:
  %call = call i32 @__hid_register_driver(%struct.hid_driver* @lg_driver, %struct.module* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #8, !dbg !4192
  ret i32 %call, !dbg !4192
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @lg_driver_exit() #0 section ".exit.text" !dbg !4193 {
entry:
  call void @hid_unregister_driver(%struct.hid_driver* @lg_driver) #8, !dbg !4194
  ret void, !dbg !4194
}

; Function Attrs: noredzone
declare dso_local void @hid_unregister_driver(%struct.hid_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__hid_register_driver(%struct.hid_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_probe(%struct.hid_device* %hdev, %struct.hid_device_id* %id) #2 !dbg !4136 {
entry:
  %retval.i132 = alloca i64, align 8
  %m.addr.i133 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i133, metadata !4195, metadata !DIExpression()), !dbg !4200
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4195, metadata !DIExpression()), !dbg !4209
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %id.addr = alloca %struct.hid_device_id*, align 8
  %iface = alloca %struct.usb_interface*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_interface*, align 8
  %iface_num = alloca i8, align 1
  %connect_mask = alloca i32, align 4
  %drv_data = alloca %struct.lg_drv_data*, align 8
  %ret = alloca i32, align 4
  %buf = alloca i8*, align 8
  %wait = alloca %struct.wait_queue_head, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp63 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret69 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond72 = alloca i8, align 1
  %tmp79 = alloca i32, align 4
  %tmp94 = alloca i64, align 8
  %tmp96 = alloca i64, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4211, metadata !DIExpression()), !dbg !4212
  store %struct.hid_device_id* %id, %struct.hid_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %id.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface, metadata !4215, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4217, metadata !DIExpression()), !dbg !4219
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4219
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !4219
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4219
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4219
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4219
  store i8* %2, i8** %__mptr, align 8, !dbg !4219
  br label %do.body, !dbg !4219

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4220

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4219
  %add.ptr = getelementptr i8, i8* %3, i64 -48, !dbg !4219
  %4 = bitcast i8* %add.ptr to %struct.usb_interface*, !dbg !4219
  store %struct.usb_interface* %4, %struct.usb_interface** %tmp, align 8, !dbg !4220
  %5 = load %struct.usb_interface*, %struct.usb_interface** %tmp, align 8, !dbg !4219
  store %struct.usb_interface* %5, %struct.usb_interface** %iface, align 8, !dbg !4216
  call void @llvm.dbg.declare(metadata i8* %iface_num, metadata !4222, metadata !DIExpression()), !dbg !4223
  %6 = load %struct.usb_interface*, %struct.usb_interface** %iface, align 8, !dbg !4224
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 1, !dbg !4225
  %7 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !4225
  %desc = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %7, i32 0, i32 0, !dbg !4226
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc, i32 0, i32 2, !dbg !4227
  %8 = load i8, i8* %bInterfaceNumber, align 2, !dbg !4227
  store i8 %8, i8* %iface_num, align 1, !dbg !4223
  call void @llvm.dbg.declare(metadata i32* %connect_mask, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i32 45, i32* %connect_mask, align 4, !dbg !4229
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data, metadata !4230, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4238, metadata !DIExpression()), !dbg !4239
  %9 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4240
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %9, i32 0, i32 11, !dbg !4242
  %10 = load i32, i32* %product, align 4, !dbg !4242
  %cmp = icmp eq i32 %10, 49743, !dbg !4243
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !4244

land.lhs.true:                                    ; preds = %do.end
  %11 = load i8, i8* %iface_num, align 1, !dbg !4245
  %conv = zext i8 %11 to i32, !dbg !4245
  %cmp1 = icmp ne i32 %conv, 0, !dbg !4246
  br i1 %cmp1, label %if.then, label %if.end7, !dbg !4247

if.then:                                          ; preds = %land.lhs.true
  br label %do.body3, !dbg !4248

do.body3:                                         ; preds = %if.then
  %12 = load i32, i32* @hid_debug, align 4, !dbg !4250
  %tobool = icmp ne i32 %12, 0, !dbg !4250
  br i1 %tobool, label %if.then4, label %if.end, !dbg !4253

if.then4:                                         ; preds = %do.body3
  %13 = load i8, i8* %iface_num, align 1, !dbg !4250
  %conv5 = zext i8 %13 to i32, !dbg !4250
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.lg_probe, i64 0, i64 0), i32 %conv5) #9, !dbg !4250
  br label %if.end, !dbg !4250

if.end:                                           ; preds = %if.then4, %do.body3
  br label %do.end6, !dbg !4253

do.end6:                                          ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4254
  br label %return, !dbg !4254

if.end7:                                          ; preds = %land.lhs.true, %do.end
  %call8 = call i8* @kzalloc(i64 16, i32 3264) #8, !dbg !4255
  %14 = bitcast i8* %call8 to %struct.lg_drv_data*, !dbg !4255
  store %struct.lg_drv_data* %14, %struct.lg_drv_data** %drv_data, align 8, !dbg !4256
  %15 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4257
  %tobool9 = icmp ne %struct.lg_drv_data* %15, null, !dbg !4257
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !4259

if.then10:                                        ; preds = %if.end7
  %16 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4260
  %dev11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 18, !dbg !4260
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4260
  store i32 -12, i32* %retval, align 4, !dbg !4262
  br label %return, !dbg !4262

if.end12:                                         ; preds = %if.end7
  %17 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4263
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %17, i32 0, i32 4, !dbg !4264
  %18 = load i64, i64* %driver_data, align 8, !dbg !4264
  %19 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4265
  %quirks = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %19, i32 0, i32 0, !dbg !4266
  store i64 %18, i64* %quirks, align 8, !dbg !4267
  %20 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4268
  %21 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4269
  %22 = bitcast %struct.lg_drv_data* %21 to i8*, !dbg !4270
  call void @hid_set_drvdata(%struct.hid_device* %20, i8* %22) #8, !dbg !4271
  %23 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4272
  %quirks13 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %23, i32 0, i32 0, !dbg !4274
  %24 = load i64, i64* %quirks13, align 8, !dbg !4274
  %and = and i64 %24, 256, !dbg !4275
  %tobool14 = icmp ne i64 %and, 0, !dbg !4275
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !4276

if.then15:                                        ; preds = %if.end12
  %25 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4277
  %quirks16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 25, !dbg !4278
  %26 = load i32, i32* %quirks16, align 4, !dbg !4279
  %conv17 = zext i32 %26 to i64, !dbg !4279
  %or = or i64 %conv17, 8, !dbg !4279
  %conv18 = trunc i64 %or to i32, !dbg !4279
  store i32 %conv18, i32* %quirks16, align 4, !dbg !4279
  br label %if.end19, !dbg !4277

if.end19:                                         ; preds = %if.then15, %if.end12
  %27 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4280
  %call20 = call i32 @hid_parse(%struct.hid_device* %27) #8, !dbg !4281
  store i32 %call20, i32* %ret, align 4, !dbg !4282
  %28 = load i32, i32* %ret, align 4, !dbg !4283
  %tobool21 = icmp ne i32 %28, 0, !dbg !4283
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !4285

if.then22:                                        ; preds = %if.end19
  %29 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4286
  %dev23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 18, !dbg !4286
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !4286
  br label %err_free, !dbg !4288

if.end24:                                         ; preds = %if.end19
  %30 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4289
  %quirks25 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %30, i32 0, i32 0, !dbg !4291
  %31 = load i64, i64* %quirks25, align 8, !dbg !4291
  %and26 = and i64 %31, 13824, !dbg !4292
  %tobool27 = icmp ne i64 %and26, 0, !dbg !4292
  br i1 %tobool27, label %if.then28, label %if.end32, !dbg !4293

if.then28:                                        ; preds = %if.end24
  %32 = load i32, i32* %connect_mask, align 4, !dbg !4294
  %conv29 = zext i32 %32 to i64, !dbg !4294
  %and30 = and i64 %conv29, -33, !dbg !4294
  %conv31 = trunc i64 %and30 to i32, !dbg !4294
  store i32 %conv31, i32* %connect_mask, align 4, !dbg !4294
  br label %if.end32, !dbg !4295

if.end32:                                         ; preds = %if.then28, %if.end24
  %33 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4296
  %34 = load i32, i32* %connect_mask, align 4, !dbg !4297
  %call33 = call i32 @hid_hw_start(%struct.hid_device* %33, i32 %34) #8, !dbg !4298
  store i32 %call33, i32* %ret, align 4, !dbg !4299
  %35 = load i32, i32* %ret, align 4, !dbg !4300
  %tobool34 = icmp ne i32 %35, 0, !dbg !4300
  br i1 %tobool34, label %if.then35, label %if.end37, !dbg !4302

if.then35:                                        ; preds = %if.end32
  %36 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4303
  %dev36 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 18, !dbg !4303
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !4303
  br label %err_free, !dbg !4305

if.end37:                                         ; preds = %if.end32
  %37 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4306
  %product38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 11, !dbg !4307
  %38 = load i32, i32* %product38, align 4, !dbg !4307
  %cmp39 = icmp eq i32 %38, 49820, !dbg !4308
  br i1 %cmp39, label %if.then41, label %if.end102, !dbg !4309

if.then41:                                        ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !4310, metadata !DIExpression()), !dbg !4311
  %call42 = call i8* @kmemdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @lg_probe.cbuf, i64 0, i64 0), i64 9, i32 3264) #8, !dbg !4312
  store i8* %call42, i8** %buf, align 8, !dbg !4311
  %39 = load i8*, i8** %buf, align 8, !dbg !4313
  %tobool43 = icmp ne i8* %39, null, !dbg !4313
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !4315

if.then44:                                        ; preds = %if.then41
  store i32 -12, i32* %ret, align 4, !dbg !4316
  br label %err_stop, !dbg !4318

if.end45:                                         ; preds = %if.then41
  %40 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4319
  %41 = load i8*, i8** %buf, align 8, !dbg !4320
  %arrayidx = getelementptr i8, i8* %41, i64 0, !dbg !4320
  %42 = load i8, i8* %arrayidx, align 1, !dbg !4320
  %43 = load i8*, i8** %buf, align 8, !dbg !4321
  %call46 = call i32 @hid_hw_raw_request(%struct.hid_device* %40, i8 zeroext %42, i8* %43, i64 9, i8 zeroext 2, i32 9) #8, !dbg !4322
  store i32 %call46, i32* %ret, align 4, !dbg !4323
  %44 = load i32, i32* %ret, align 4, !dbg !4324
  %cmp47 = icmp sge i32 %44, 0, !dbg !4325
  br i1 %cmp47, label %if.then49, label %if.end101, !dbg !4326

if.then49:                                        ; preds = %if.end45
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head* %wait, metadata !4327, metadata !DIExpression()), !dbg !4328
  br label %do.body50, !dbg !4329

do.body50:                                        ; preds = %if.then49
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.lock_class_key* @lg_probe.__key) #8, !dbg !4330
  br label %do.end51, !dbg !4330

do.end51:                                         ; preds = %do.body50
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4332, metadata !DIExpression()), !dbg !4333
  store i32 40, i32* %m.addr.i, align 4
  %45 = load i32, i32* %m.addr.i, align 4, !dbg !4334
  %46 = call i1 @llvm.is.constant.i32(i32 %45) #10, !dbg !4336
  br i1 %46, label %if.then.i, label %if.else.i, !dbg !4337

if.then.i:                                        ; preds = %do.end51
  %47 = load i32, i32* %m.addr.i, align 4, !dbg !4338
  %cmp.i = icmp slt i32 %47, 0, !dbg !4341
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4342

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4343
  br label %msecs_to_jiffies.exit, !dbg !4343

if.end.i:                                         ; preds = %if.then.i
  %48 = load i32, i32* %m.addr.i, align 4, !dbg !4344
  %call.i = call i64 @_msecs_to_jiffies(i32 %48) #11, !dbg !4345
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4346
  br label %msecs_to_jiffies.exit, !dbg !4346

if.else.i:                                        ; preds = %do.end51
  %49 = load i32, i32* %m.addr.i, align 4, !dbg !4347
  %call2.i = call i64 @__msecs_to_jiffies(i32 %49) #11, !dbg !4349
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4350
  br label %msecs_to_jiffies.exit, !dbg !4350

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %50 = load i64, i64* %retval.i, align 8, !dbg !4351
  store i64 %50, i64* %__ret, align 8, !dbg !4333
  br label %do.body53, !dbg !4333

do.body53:                                        ; preds = %msecs_to_jiffies.exit
  br label %do.body54, !dbg !4352

do.body54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !4354

do.end55:                                         ; preds = %do.body54
  br label %do.end56, !dbg !4352

do.end56:                                         ; preds = %do.end55
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !4356, metadata !DIExpression()), !dbg !4358
  store i8 0, i8* %__cond, align 1, !dbg !4358
  %51 = load i8, i8* %__cond, align 1, !dbg !4359
  %tobool57 = trunc i8 %51 to i1, !dbg !4359
  br i1 %tobool57, label %land.lhs.true59, label %if.end62, !dbg !4359

land.lhs.true59:                                  ; preds = %do.end56
  %52 = load i64, i64* %__ret, align 8, !dbg !4359
  %tobool60 = icmp ne i64 %52, 0, !dbg !4359
  br i1 %tobool60, label %if.end62, label %if.then61, !dbg !4358

if.then61:                                        ; preds = %land.lhs.true59
  store i64 1, i64* %__ret, align 8, !dbg !4359
  br label %if.end62, !dbg !4359

if.end62:                                         ; preds = %if.then61, %land.lhs.true59, %do.end56
  %53 = load i8, i8* %__cond, align 1, !dbg !4358
  %tobool64 = trunc i8 %53 to i1, !dbg !4358
  br i1 %tobool64, label %lor.end, label %lor.rhs, !dbg !4358

lor.rhs:                                          ; preds = %if.end62
  %54 = load i64, i64* %__ret, align 8, !dbg !4358
  %tobool66 = icmp ne i64 %54, 0, !dbg !4358
  %lnot = xor i1 %tobool66, true, !dbg !4358
  br label %lor.end, !dbg !4358

lor.end:                                          ; preds = %lor.rhs, %if.end62
  %55 = phi i1 [ true, %if.end62 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %55 to i32, !dbg !4358
  store i32 %lor.ext, i32* %tmp63, align 4, !dbg !4359
  %56 = load i32, i32* %tmp63, align 4, !dbg !4358
  %tobool67 = icmp ne i32 %56, 0, !dbg !4361
  br i1 %tobool67, label %if.end95, label %if.then68, !dbg !4333

if.then68:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4362, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.declare(metadata i64* %__ret69, metadata !4375, metadata !DIExpression()), !dbg !4374
  store i32 40, i32* %m.addr.i133, align 4
  %57 = load i32, i32* %m.addr.i133, align 4, !dbg !4376
  %58 = call i1 @llvm.is.constant.i32(i32 %57) #10, !dbg !4377
  br i1 %58, label %if.then.i135, label %if.else.i140, !dbg !4378

if.then.i135:                                     ; preds = %if.then68
  %59 = load i32, i32* %m.addr.i133, align 4, !dbg !4379
  %cmp.i134 = icmp slt i32 %59, 0, !dbg !4380
  br i1 %cmp.i134, label %if.then1.i136, label %if.end.i138, !dbg !4381

if.then1.i136:                                    ; preds = %if.then.i135
  store i64 4611686018427387902, i64* %retval.i132, align 8, !dbg !4382
  br label %msecs_to_jiffies.exit141, !dbg !4382

if.end.i138:                                      ; preds = %if.then.i135
  %60 = load i32, i32* %m.addr.i133, align 4, !dbg !4383
  %call.i137 = call i64 @_msecs_to_jiffies(i32 %60) #11, !dbg !4384
  store i64 %call.i137, i64* %retval.i132, align 8, !dbg !4385
  br label %msecs_to_jiffies.exit141, !dbg !4385

if.else.i140:                                     ; preds = %if.then68
  %61 = load i32, i32* %m.addr.i133, align 4, !dbg !4386
  %call2.i139 = call i64 @__msecs_to_jiffies(i32 %61) #11, !dbg !4387
  store i64 %call2.i139, i64* %retval.i132, align 8, !dbg !4388
  br label %msecs_to_jiffies.exit141, !dbg !4388

msecs_to_jiffies.exit141:                         ; preds = %if.then1.i136, %if.end.i138, %if.else.i140
  %62 = load i64, i64* %retval.i132, align 8, !dbg !4389
  store i64 %62, i64* %__ret69, align 8, !dbg !4374
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #8, !dbg !4374
  br label %for.cond, !dbg !4374

for.cond:                                         ; preds = %if.end92, %msecs_to_jiffies.exit141
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4390, metadata !DIExpression()), !dbg !4394
  %call71 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry, i32 1) #8, !dbg !4394
  store i64 %call71, i64* %__int, align 8, !dbg !4394
  call void @llvm.dbg.declare(metadata i8* %__cond72, metadata !4395, metadata !DIExpression()), !dbg !4398
  store i8 0, i8* %__cond72, align 1, !dbg !4398
  %63 = load i8, i8* %__cond72, align 1, !dbg !4399
  %tobool73 = trunc i8 %63 to i1, !dbg !4399
  br i1 %tobool73, label %land.lhs.true75, label %if.end78, !dbg !4399

land.lhs.true75:                                  ; preds = %for.cond
  %64 = load i64, i64* %__ret69, align 8, !dbg !4399
  %tobool76 = icmp ne i64 %64, 0, !dbg !4399
  br i1 %tobool76, label %if.end78, label %if.then77, !dbg !4398

if.then77:                                        ; preds = %land.lhs.true75
  store i64 1, i64* %__ret69, align 8, !dbg !4399
  br label %if.end78, !dbg !4399

if.end78:                                         ; preds = %if.then77, %land.lhs.true75, %for.cond
  %65 = load i8, i8* %__cond72, align 1, !dbg !4398
  %tobool80 = trunc i8 %65 to i1, !dbg !4398
  br i1 %tobool80, label %lor.end85, label %lor.rhs82, !dbg !4398

lor.rhs82:                                        ; preds = %if.end78
  %66 = load i64, i64* %__ret69, align 8, !dbg !4398
  %tobool83 = icmp ne i64 %66, 0, !dbg !4398
  %lnot84 = xor i1 %tobool83, true, !dbg !4398
  br label %lor.end85, !dbg !4398

lor.end85:                                        ; preds = %lor.rhs82, %if.end78
  %67 = phi i1 [ true, %if.end78 ], [ %lnot84, %lor.rhs82 ]
  %lor.ext86 = zext i1 %67 to i32, !dbg !4398
  store i32 %lor.ext86, i32* %tmp79, align 4, !dbg !4399
  %68 = load i32, i32* %tmp79, align 4, !dbg !4398
  %tobool87 = icmp ne i32 %68, 0, !dbg !4401
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !4394

if.then88:                                        ; preds = %lor.end85
  br label %for.end, !dbg !4401

if.end89:                                         ; preds = %lor.end85
  %69 = load i64, i64* %__int, align 8, !dbg !4402
  %tobool90 = icmp ne i64 %69, 0, !dbg !4402
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !4394

if.then91:                                        ; preds = %if.end89
  %70 = load i64, i64* %__int, align 8, !dbg !4404
  store i64 %70, i64* %__ret69, align 8, !dbg !4404
  br label %__out, !dbg !4404

if.end92:                                         ; preds = %if.end89
  %71 = load i64, i64* %__ret69, align 8, !dbg !4394
  %call93 = call i64 @schedule_timeout(i64 %71) #8, !dbg !4394
  store i64 %call93, i64* %__ret69, align 8, !dbg !4394
  br label %for.cond, !dbg !4406, !llvm.loop !4407

for.end:                                          ; preds = %if.then88
  call void @finish_wait(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry) #8, !dbg !4374
  br label %__out, !dbg !4374

__out:                                            ; preds = %for.end, %if.then91
  call void @llvm.dbg.label(metadata !4409), !dbg !4374
  %72 = load i64, i64* %__ret69, align 8, !dbg !4374
  store i64 %72, i64* %tmp94, align 8, !dbg !4374
  %73 = load i64, i64* %tmp94, align 8, !dbg !4374
  store i64 %73, i64* %__ret, align 8, !dbg !4361
  br label %if.end95, !dbg !4361

if.end95:                                         ; preds = %__out, %lor.end
  %74 = load i64, i64* %__ret, align 8, !dbg !4333
  store i64 %74, i64* %tmp96, align 8, !dbg !4361
  %75 = load i64, i64* %tmp96, align 8, !dbg !4333
  %76 = load i8*, i8** %buf, align 8, !dbg !4410
  %arrayidx97 = getelementptr i8, i8* %76, i64 1, !dbg !4410
  store i8 -78, i8* %arrayidx97, align 1, !dbg !4411
  %77 = load i8*, i8** %buf, align 8, !dbg !4412
  %arrayidx98 = getelementptr i8, i8* %77, i64 2, !dbg !4412
  call void @get_random_bytes(i8* %arrayidx98, i32 2) #8, !dbg !4413
  %78 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4414
  %79 = load i8*, i8** %buf, align 8, !dbg !4415
  %arrayidx99 = getelementptr i8, i8* %79, i64 0, !dbg !4415
  %80 = load i8, i8* %arrayidx99, align 1, !dbg !4415
  %81 = load i8*, i8** %buf, align 8, !dbg !4416
  %call100 = call i32 @hid_hw_raw_request(%struct.hid_device* %78, i8 zeroext %80, i8* %81, i64 9, i8 zeroext 2, i32 9) #8, !dbg !4417
  store i32 %call100, i32* %ret, align 4, !dbg !4418
  br label %if.end101, !dbg !4419

if.end101:                                        ; preds = %if.end95, %if.end45
  %82 = load i8*, i8** %buf, align 8, !dbg !4420
  call void @kfree(i8* %82) #8, !dbg !4421
  br label %if.end102, !dbg !4422

if.end102:                                        ; preds = %if.end101, %if.end37
  %83 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4423
  %quirks103 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %83, i32 0, i32 0, !dbg !4425
  %84 = load i64, i64* %quirks103, align 8, !dbg !4425
  %and104 = and i64 %84, 512, !dbg !4426
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4426
  br i1 %tobool105, label %if.then106, label %if.else, !dbg !4427

if.then106:                                       ; preds = %if.end102
  %85 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4428
  %call107 = call i32 @lgff_init(%struct.hid_device* %85) #8, !dbg !4429
  store i32 %call107, i32* %ret, align 4, !dbg !4430
  br label %if.end128, !dbg !4431

if.else:                                          ; preds = %if.end102
  %86 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4432
  %quirks108 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %86, i32 0, i32 0, !dbg !4434
  %87 = load i64, i64* %quirks108, align 8, !dbg !4434
  %and109 = and i64 %87, 1024, !dbg !4435
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4435
  br i1 %tobool110, label %if.then111, label %if.else113, !dbg !4436

if.then111:                                       ; preds = %if.else
  %88 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4437
  %call112 = call i32 @lg2ff_init(%struct.hid_device* %88) #8, !dbg !4438
  store i32 %call112, i32* %ret, align 4, !dbg !4439
  br label %if.end127, !dbg !4440

if.else113:                                       ; preds = %if.else
  %89 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4441
  %quirks114 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %89, i32 0, i32 0, !dbg !4443
  %90 = load i64, i64* %quirks114, align 8, !dbg !4443
  %and115 = and i64 %90, 4096, !dbg !4444
  %tobool116 = icmp ne i64 %and115, 0, !dbg !4444
  br i1 %tobool116, label %if.then117, label %if.else119, !dbg !4445

if.then117:                                       ; preds = %if.else113
  %91 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4446
  %call118 = call i32 @lg3ff_init(%struct.hid_device* %91) #8, !dbg !4447
  store i32 %call118, i32* %ret, align 4, !dbg !4448
  br label %if.end126, !dbg !4449

if.else119:                                       ; preds = %if.else113
  %92 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4450
  %quirks120 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %92, i32 0, i32 0, !dbg !4452
  %93 = load i64, i64* %quirks120, align 8, !dbg !4452
  %and121 = and i64 %93, 8192, !dbg !4453
  %tobool122 = icmp ne i64 %and121, 0, !dbg !4453
  br i1 %tobool122, label %if.then123, label %if.end125, !dbg !4454

if.then123:                                       ; preds = %if.else119
  %94 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4455
  %call124 = call i32 @lg4ff_init(%struct.hid_device* %94) #8, !dbg !4456
  store i32 %call124, i32* %ret, align 4, !dbg !4457
  br label %if.end125, !dbg !4458

if.end125:                                        ; preds = %if.then123, %if.else119
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then117
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.then111
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then106
  %95 = load i32, i32* %ret, align 4, !dbg !4459
  %tobool129 = icmp ne i32 %95, 0, !dbg !4459
  br i1 %tobool129, label %if.then130, label %if.end131, !dbg !4461

if.then130:                                       ; preds = %if.end128
  br label %err_stop, !dbg !4462

if.end131:                                        ; preds = %if.end128
  store i32 0, i32* %retval, align 4, !dbg !4463
  br label %return, !dbg !4463

err_stop:                                         ; preds = %if.then130, %if.then44
  call void @llvm.dbg.label(metadata !4464), !dbg !4465
  %96 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4466
  call void @hid_hw_stop(%struct.hid_device* %96) #8, !dbg !4467
  br label %err_free, !dbg !4467

err_free:                                         ; preds = %err_stop, %if.then35, %if.then22
  call void @llvm.dbg.label(metadata !4468), !dbg !4469
  %97 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4470
  %98 = bitcast %struct.lg_drv_data* %97 to i8*, !dbg !4470
  call void @kfree(i8* %98) #8, !dbg !4471
  %99 = load i32, i32* %ret, align 4, !dbg !4472
  store i32 %99, i32* %retval, align 4, !dbg !4473
  br label %return, !dbg !4473

return:                                           ; preds = %err_free, %if.end131, %if.then10, %do.end6
  %100 = load i32, i32* %retval, align 4, !dbg !4474
  ret i32 %100, !dbg !4474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lg_remove(%struct.hid_device* %hdev) #2 !dbg !4475 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %drv_data = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4476, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data, metadata !4478, metadata !DIExpression()), !dbg !4479
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4480
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #8, !dbg !4481
  %1 = bitcast i8* %call to %struct.lg_drv_data*, !dbg !4481
  store %struct.lg_drv_data* %1, %struct.lg_drv_data** %drv_data, align 8, !dbg !4479
  %2 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4482
  %quirks = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %2, i32 0, i32 0, !dbg !4484
  %3 = load i64, i64* %quirks, align 8, !dbg !4484
  %and = and i64 %3, 8192, !dbg !4485
  %tobool = icmp ne i64 %and, 0, !dbg !4485
  br i1 %tobool, label %if.then, label %if.end, !dbg !4486

if.then:                                          ; preds = %entry
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4487
  %call1 = call i32 @lg4ff_deinit(%struct.hid_device* %4) #8, !dbg !4488
  br label %if.end, !dbg !4488

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4489
  call void @hid_hw_stop(%struct.hid_device* %5) #8, !dbg !4490
  %6 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4491
  %7 = bitcast %struct.lg_drv_data* %6 to i8*, !dbg !4491
  call void @kfree(i8* %7) #8, !dbg !4492
  ret void, !dbg !4493
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_raw_event(%struct.hid_device* %hdev, %struct.hid_report* %report, i8* %rd, i32 %size) #2 !dbg !4494 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %report.addr = alloca %struct.hid_report*, align 8
  %rd.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %drv_data = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  store %struct.hid_report* %report, %struct.hid_report** %report.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_report** %report.addr, metadata !4497, metadata !DIExpression()), !dbg !4498
  store i8* %rd, i8** %rd.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rd.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data, metadata !4503, metadata !DIExpression()), !dbg !4504
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4505
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #8, !dbg !4506
  %1 = bitcast i8* %call to %struct.lg_drv_data*, !dbg !4506
  store %struct.lg_drv_data* %1, %struct.lg_drv_data** %drv_data, align 8, !dbg !4504
  %2 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4507
  %quirks = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %2, i32 0, i32 0, !dbg !4509
  %3 = load i64, i64* %quirks, align 8, !dbg !4509
  %and = and i64 %3, 8192, !dbg !4510
  %tobool = icmp ne i64 %and, 0, !dbg !4510
  br i1 %tobool, label %if.then, label %if.end, !dbg !4511

if.then:                                          ; preds = %entry
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4512
  %5 = load %struct.hid_report*, %struct.hid_report** %report.addr, align 8, !dbg !4513
  %6 = load i8*, i8** %rd.addr, align 8, !dbg !4514
  %7 = load i32, i32* %size.addr, align 4, !dbg !4515
  %8 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4516
  %call1 = call i32 @lg4ff_raw_event(%struct.hid_device* %4, %struct.hid_report* %5, i8* %6, i32 %7, %struct.lg_drv_data* %8) #8, !dbg !4517
  store i32 %call1, i32* %retval, align 4, !dbg !4518
  br label %return, !dbg !4518

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4519
  br label %return, !dbg !4519

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4520
  ret i32 %9, !dbg !4520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_event(%struct.hid_device* %hdev, %struct.hid_field* %field, %struct.hid_usage* %usage, i32 %value) #2 !dbg !4521 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %value.addr = alloca i32, align 4
  %drv_data = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4524, metadata !DIExpression()), !dbg !4525
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data, metadata !4530, metadata !DIExpression()), !dbg !4531
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4532
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #8, !dbg !4533
  %1 = bitcast i8* %call to %struct.lg_drv_data*, !dbg !4533
  store %struct.lg_drv_data* %1, %struct.lg_drv_data** %drv_data, align 8, !dbg !4531
  %2 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4534
  %quirks = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %2, i32 0, i32 0, !dbg !4536
  %3 = load i64, i64* %quirks, align 8, !dbg !4536
  %and = and i64 %3, 128, !dbg !4537
  %tobool = icmp ne i64 %and, 0, !dbg !4537
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4538

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4539
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 5, !dbg !4540
  %5 = load i16, i16* %code, align 2, !dbg !4540
  %conv = zext i16 %5 to i32, !dbg !4539
  %cmp = icmp eq i32 %conv, 6, !dbg !4541
  br i1 %cmp, label %if.then, label %if.end, !dbg !4542

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4543
  %hidinput = getelementptr inbounds %struct.hid_field, %struct.hid_field* %6, i32 0, i32 19, !dbg !4545
  %7 = load %struct.hid_input*, %struct.hid_input** %hidinput, align 8, !dbg !4545
  %input = getelementptr inbounds %struct.hid_input, %struct.hid_input* %7, i32 0, i32 2, !dbg !4546
  %8 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4546
  %9 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4547
  %type = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %9, i32 0, i32 6, !dbg !4548
  %10 = load i8, i8* %type, align 4, !dbg !4548
  %conv2 = zext i8 %10 to i32, !dbg !4547
  %11 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4549
  %code3 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %11, i32 0, i32 5, !dbg !4550
  %12 = load i16, i16* %code3, align 2, !dbg !4550
  %conv4 = zext i16 %12 to i32, !dbg !4549
  %13 = load i32, i32* %value.addr, align 4, !dbg !4551
  %sub = sub i32 0, %13, !dbg !4552
  call void @input_event(%struct.input_dev* %8, i32 %conv2, i32 %conv4, i32 %sub) #8, !dbg !4553
  store i32 1, i32* %retval, align 4, !dbg !4554
  br label %return, !dbg !4554

if.end:                                           ; preds = %land.lhs.true, %entry
  %14 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4555
  %quirks5 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %14, i32 0, i32 0, !dbg !4557
  %15 = load i64, i64* %quirks5, align 8, !dbg !4557
  %and6 = and i64 %15, 8192, !dbg !4558
  %tobool7 = icmp ne i64 %and6, 0, !dbg !4558
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !4559

if.then8:                                         ; preds = %if.end
  %16 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4560
  %17 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4562
  %18 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4563
  %19 = load i32, i32* %value.addr, align 4, !dbg !4564
  %20 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4565
  %call9 = call i32 @lg4ff_adjust_input_event(%struct.hid_device* %16, %struct.hid_field* %17, %struct.hid_usage* %18, i32 %19, %struct.lg_drv_data* %20) #8, !dbg !4566
  store i32 %call9, i32* %retval, align 4, !dbg !4567
  br label %return, !dbg !4567

if.end10:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4568
  br label %return, !dbg !4568

return:                                           ; preds = %if.end10, %if.then8, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4569
  ret i32 %21, !dbg !4569
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @lg_report_fixup(%struct.hid_device* %hdev, i8* %rdesc, i32* %rsize) #2 !dbg !4570 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %rdesc.addr = alloca i8*, align 8
  %rsize.addr = alloca i32*, align 8
  %drv_data = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4571, metadata !DIExpression()), !dbg !4572
  store i8* %rdesc, i8** %rdesc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rdesc.addr, metadata !4573, metadata !DIExpression()), !dbg !4574
  store i32* %rsize, i32** %rsize.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %rsize.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data, metadata !4577, metadata !DIExpression()), !dbg !4578
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4579
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #8, !dbg !4580
  %1 = bitcast i8* %call to %struct.lg_drv_data*, !dbg !4580
  store %struct.lg_drv_data* %1, %struct.lg_drv_data** %drv_data, align 8, !dbg !4578
  %2 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4581
  %quirks = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %2, i32 0, i32 0, !dbg !4583
  %3 = load i64, i64* %quirks, align 8, !dbg !4583
  %and = and i64 %3, 1, !dbg !4584
  %tobool = icmp ne i64 %and, 0, !dbg !4584
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4585

land.lhs.true:                                    ; preds = %entry
  %4 = load i32*, i32** %rsize.addr, align 8, !dbg !4586
  %5 = load i32, i32* %4, align 4, !dbg !4587
  %cmp = icmp uge i32 %5, 91, !dbg !4588
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4589

land.lhs.true1:                                   ; preds = %land.lhs.true
  %6 = load i8*, i8** %rdesc.addr, align 8, !dbg !4590
  %arrayidx = getelementptr i8, i8* %6, i64 83, !dbg !4590
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4590
  %conv = zext i8 %7 to i32, !dbg !4590
  %cmp2 = icmp eq i32 %conv, 38, !dbg !4591
  br i1 %cmp2, label %land.lhs.true4, label %if.end, !dbg !4592

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %8 = load i8*, i8** %rdesc.addr, align 8, !dbg !4593
  %arrayidx5 = getelementptr i8, i8* %8, i64 84, !dbg !4593
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !4593
  %conv6 = zext i8 %9 to i32, !dbg !4593
  %cmp7 = icmp eq i32 %conv6, 140, !dbg !4594
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !4595

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %10 = load i8*, i8** %rdesc.addr, align 8, !dbg !4596
  %arrayidx10 = getelementptr i8, i8* %10, i64 85, !dbg !4596
  %11 = load i8, i8* %arrayidx10, align 1, !dbg !4596
  %conv11 = zext i8 %11 to i32, !dbg !4596
  %cmp12 = icmp eq i32 %conv11, 2, !dbg !4597
  br i1 %cmp12, label %if.then, label %if.end, !dbg !4598

if.then:                                          ; preds = %land.lhs.true9
  %12 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4599
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 18, !dbg !4599
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !4599
  %13 = load i8*, i8** %rdesc.addr, align 8, !dbg !4601
  %arrayidx14 = getelementptr i8, i8* %13, i64 89, !dbg !4601
  store i8 77, i8* %arrayidx14, align 1, !dbg !4602
  %14 = load i8*, i8** %rdesc.addr, align 8, !dbg !4603
  %arrayidx15 = getelementptr i8, i8* %14, i64 84, !dbg !4603
  store i8 77, i8* %arrayidx15, align 1, !dbg !4604
  %15 = load i8*, i8** %rdesc.addr, align 8, !dbg !4605
  %arrayidx16 = getelementptr i8, i8* %15, i64 90, !dbg !4605
  store i8 16, i8* %arrayidx16, align 1, !dbg !4606
  %16 = load i8*, i8** %rdesc.addr, align 8, !dbg !4607
  %arrayidx17 = getelementptr i8, i8* %16, i64 85, !dbg !4607
  store i8 16, i8* %arrayidx17, align 1, !dbg !4608
  br label %if.end, !dbg !4609

if.end:                                           ; preds = %if.then, %land.lhs.true9, %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %entry
  %17 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4610
  %quirks18 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %17, i32 0, i32 0, !dbg !4612
  %18 = load i64, i64* %quirks18, align 8, !dbg !4612
  %and19 = and i64 %18, 2048, !dbg !4613
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4613
  br i1 %tobool20, label %land.lhs.true21, label %if.end48, !dbg !4614

land.lhs.true21:                                  ; preds = %if.end
  %19 = load i32*, i32** %rsize.addr, align 8, !dbg !4615
  %20 = load i32, i32* %19, align 4, !dbg !4616
  %cmp22 = icmp uge i32 %20, 51, !dbg !4617
  br i1 %cmp22, label %land.lhs.true24, label %if.end48, !dbg !4618

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %21 = load i8*, i8** %rdesc.addr, align 8, !dbg !4619
  %arrayidx25 = getelementptr i8, i8* %21, i64 32, !dbg !4619
  %22 = load i8, i8* %arrayidx25, align 1, !dbg !4619
  %conv26 = zext i8 %22 to i32, !dbg !4619
  %cmp27 = icmp eq i32 %conv26, 129, !dbg !4620
  br i1 %cmp27, label %land.lhs.true29, label %if.end48, !dbg !4621

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %23 = load i8*, i8** %rdesc.addr, align 8, !dbg !4622
  %arrayidx30 = getelementptr i8, i8* %23, i64 33, !dbg !4622
  %24 = load i8, i8* %arrayidx30, align 1, !dbg !4622
  %conv31 = zext i8 %24 to i32, !dbg !4622
  %cmp32 = icmp eq i32 %conv31, 6, !dbg !4623
  br i1 %cmp32, label %land.lhs.true34, label %if.end48, !dbg !4624

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %25 = load i8*, i8** %rdesc.addr, align 8, !dbg !4625
  %arrayidx35 = getelementptr i8, i8* %25, i64 49, !dbg !4625
  %26 = load i8, i8* %arrayidx35, align 1, !dbg !4625
  %conv36 = zext i8 %26 to i32, !dbg !4625
  %cmp37 = icmp eq i32 %conv36, 129, !dbg !4626
  br i1 %cmp37, label %land.lhs.true39, label %if.end48, !dbg !4627

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %27 = load i8*, i8** %rdesc.addr, align 8, !dbg !4628
  %arrayidx40 = getelementptr i8, i8* %27, i64 50, !dbg !4628
  %28 = load i8, i8* %arrayidx40, align 1, !dbg !4628
  %conv41 = zext i8 %28 to i32, !dbg !4628
  %cmp42 = icmp eq i32 %conv41, 6, !dbg !4629
  br i1 %cmp42, label %if.then44, label %if.end48, !dbg !4630

if.then44:                                        ; preds = %land.lhs.true39
  %29 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4631
  %dev45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 18, !dbg !4631
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !4631
  %30 = load i8*, i8** %rdesc.addr, align 8, !dbg !4633
  %arrayidx46 = getelementptr i8, i8* %30, i64 50, !dbg !4633
  store i8 2, i8* %arrayidx46, align 1, !dbg !4634
  %31 = load i8*, i8** %rdesc.addr, align 8, !dbg !4635
  %arrayidx47 = getelementptr i8, i8* %31, i64 33, !dbg !4635
  store i8 2, i8* %arrayidx47, align 1, !dbg !4636
  br label %if.end48, !dbg !4637

if.end48:                                         ; preds = %if.then44, %land.lhs.true39, %land.lhs.true34, %land.lhs.true29, %land.lhs.true24, %land.lhs.true21, %if.end
  %32 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4638
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %32, i32 0, i32 11, !dbg !4639
  %33 = load i32, i32* %product, align 4, !dbg !4639
  switch i32 %33, label %sw.epilog [
    i32 49678, label %sw.bb
    i32 49811, label %sw.bb55
    i32 49812, label %sw.bb61
    i32 49813, label %sw.bb67
    i32 51715, label %sw.bb73
    i32 51716, label %sw.bb79
    i32 49816, label %sw.bb85
    i32 49820, label %sw.bb91
  ], !dbg !4640

sw.bb:                                            ; preds = %if.end48
  %34 = load i32*, i32** %rsize.addr, align 8, !dbg !4641
  %35 = load i32, i32* %34, align 4, !dbg !4644
  %cmp49 = icmp eq i32 %35, 82, !dbg !4645
  br i1 %cmp49, label %if.then51, label %if.else, !dbg !4646

if.then51:                                        ; preds = %sw.bb
  %36 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4647
  %dev52 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 18, !dbg !4647
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !4647
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @fg_rdesc_fixed, i64 0, i64 0), i8** %rdesc.addr, align 8, !dbg !4649
  %37 = load i32*, i32** %rsize.addr, align 8, !dbg !4650
  store i32 79, i32* %37, align 4, !dbg !4651
  br label %if.end54, !dbg !4652

if.else:                                          ; preds = %sw.bb
  %38 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4653
  %dev53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 18, !dbg !4653
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !4653
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then51
  br label %sw.epilog, !dbg !4655

sw.bb55:                                          ; preds = %if.end48
  %39 = load i32*, i32** %rsize.addr, align 8, !dbg !4656
  %40 = load i32, i32* %39, align 4, !dbg !4658
  %cmp56 = icmp eq i32 %40, 85, !dbg !4659
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !4660

if.then58:                                        ; preds = %sw.bb55
  %41 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4661
  %dev59 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 18, !dbg !4661
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !4661
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @ffg_rdesc_fixed, i64 0, i64 0), i8** %rdesc.addr, align 8, !dbg !4663
  %42 = load i32*, i32** %rsize.addr, align 8, !dbg !4664
  store i32 89, i32* %42, align 4, !dbg !4665
  br label %if.end60, !dbg !4666

if.end60:                                         ; preds = %if.then58, %sw.bb55
  br label %sw.epilog, !dbg !4667

sw.bb61:                                          ; preds = %if.end48
  %43 = load i32*, i32** %rsize.addr, align 8, !dbg !4668
  %44 = load i32, i32* %43, align 4, !dbg !4670
  %cmp62 = icmp eq i32 %44, 130, !dbg !4671
  br i1 %cmp62, label %if.then64, label %if.end66, !dbg !4672

if.then64:                                        ; preds = %sw.bb61
  %45 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4673
  %dev65 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 18, !dbg !4673
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !4673
  store i8* getelementptr inbounds ([132 x i8], [132 x i8]* @df_rdesc_fixed, i64 0, i64 0), i8** %rdesc.addr, align 8, !dbg !4675
  %46 = load i32*, i32** %rsize.addr, align 8, !dbg !4676
  store i32 132, i32* %46, align 4, !dbg !4677
  br label %if.end66, !dbg !4678

if.end66:                                         ; preds = %if.then64, %sw.bb61
  br label %sw.epilog, !dbg !4679

sw.bb67:                                          ; preds = %if.end48
  %47 = load i32*, i32** %rsize.addr, align 8, !dbg !4680
  %48 = load i32, i32* %47, align 4, !dbg !4682
  %cmp68 = icmp eq i32 %48, 87, !dbg !4683
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !4684

if.then70:                                        ; preds = %sw.bb67
  %49 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4685
  %dev71 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %49, i32 0, i32 18, !dbg !4685
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev71, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !4685
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @momo_rdesc_fixed, i64 0, i64 0), i8** %rdesc.addr, align 8, !dbg !4687
  %50 = load i32*, i32** %rsize.addr, align 8, !dbg !4688
  store i32 89, i32* %50, align 4, !dbg !4689
  br label %if.end72, !dbg !4690

if.end72:                                         ; preds = %if.then70, %sw.bb67
  br label %sw.epilog, !dbg !4691

sw.bb73:                                          ; preds = %if.end48
  %51 = load i32*, i32** %rsize.addr, align 8, !dbg !4692
  %52 = load i32, i32* %51, align 4, !dbg !4694
  %cmp74 = icmp eq i32 %52, 87, !dbg !4695
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !4696

if.then76:                                        ; preds = %sw.bb73
  %53 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4697
  %dev77 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %53, i32 0, i32 18, !dbg !4697
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev77, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !4697
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @momo2_rdesc_fixed, i64 0, i64 0), i8** %rdesc.addr, align 8, !dbg !4699
  %54 = load i32*, i32** %rsize.addr, align 8, !dbg !4700
  store i32 93, i32* %54, align 4, !dbg !4701
  br label %if.end78, !dbg !4702

if.end78:                                         ; preds = %if.then76, %sw.bb73
  br label %sw.epilog, !dbg !4703

sw.bb79:                                          ; preds = %if.end48
  %55 = load i32*, i32** %rsize.addr, align 8, !dbg !4704
  %56 = load i32, i32* %55, align 4, !dbg !4706
  %cmp80 = icmp eq i32 %56, 130, !dbg !4707
  br i1 %cmp80, label %if.then82, label %if.end84, !dbg !4708

if.then82:                                        ; preds = %sw.bb79
  %57 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4709
  %dev83 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %57, i32 0, i32 18, !dbg !4709
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev83, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !4709
  store i8* getelementptr inbounds ([136 x i8], [136 x i8]* @fv_rdesc_fixed, i64 0, i64 0), i8** %rdesc.addr, align 8, !dbg !4711
  %58 = load i32*, i32** %rsize.addr, align 8, !dbg !4712
  store i32 136, i32* %58, align 4, !dbg !4713
  br label %if.end84, !dbg !4714

if.end84:                                         ; preds = %if.then82, %sw.bb79
  br label %sw.epilog, !dbg !4715

sw.bb85:                                          ; preds = %if.end48
  %59 = load i32*, i32** %rsize.addr, align 8, !dbg !4716
  %60 = load i32, i32* %59, align 4, !dbg !4718
  %cmp86 = icmp eq i32 %60, 97, !dbg !4719
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !4720

if.then88:                                        ; preds = %sw.bb85
  %61 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4721
  %dev89 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %61, i32 0, i32 18, !dbg !4721
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev89, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !4721
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @dfp_rdesc_fixed, i64 0, i64 0), i8** %rdesc.addr, align 8, !dbg !4723
  %62 = load i32*, i32** %rsize.addr, align 8, !dbg !4724
  store i32 90, i32* %62, align 4, !dbg !4725
  br label %if.end90, !dbg !4726

if.end90:                                         ; preds = %if.then88, %sw.bb85
  br label %sw.epilog, !dbg !4727

sw.bb91:                                          ; preds = %if.end48
  %63 = load i32*, i32** %rsize.addr, align 8, !dbg !4728
  %64 = load i32, i32* %63, align 4, !dbg !4730
  %cmp92 = icmp uge i32 %64, 101, !dbg !4731
  br i1 %cmp92, label %land.lhs.true94, label %if.end120, !dbg !4732

land.lhs.true94:                                  ; preds = %sw.bb91
  %65 = load i8*, i8** %rdesc.addr, align 8, !dbg !4733
  %arrayidx95 = getelementptr i8, i8* %65, i64 41, !dbg !4733
  %66 = load i8, i8* %arrayidx95, align 1, !dbg !4733
  %conv96 = zext i8 %66 to i32, !dbg !4733
  %cmp97 = icmp eq i32 %conv96, 149, !dbg !4734
  br i1 %cmp97, label %land.lhs.true99, label %if.end120, !dbg !4735

land.lhs.true99:                                  ; preds = %land.lhs.true94
  %67 = load i8*, i8** %rdesc.addr, align 8, !dbg !4736
  %arrayidx100 = getelementptr i8, i8* %67, i64 42, !dbg !4736
  %68 = load i8, i8* %arrayidx100, align 1, !dbg !4736
  %conv101 = zext i8 %68 to i32, !dbg !4736
  %cmp102 = icmp eq i32 %conv101, 11, !dbg !4737
  br i1 %cmp102, label %land.lhs.true104, label %if.end120, !dbg !4738

land.lhs.true104:                                 ; preds = %land.lhs.true99
  %69 = load i8*, i8** %rdesc.addr, align 8, !dbg !4739
  %arrayidx105 = getelementptr i8, i8* %69, i64 47, !dbg !4739
  %70 = load i8, i8* %arrayidx105, align 1, !dbg !4739
  %conv106 = zext i8 %70 to i32, !dbg !4739
  %cmp107 = icmp eq i32 %conv106, 5, !dbg !4740
  br i1 %cmp107, label %land.lhs.true109, label %if.end120, !dbg !4741

land.lhs.true109:                                 ; preds = %land.lhs.true104
  %71 = load i8*, i8** %rdesc.addr, align 8, !dbg !4742
  %arrayidx110 = getelementptr i8, i8* %71, i64 48, !dbg !4742
  %72 = load i8, i8* %arrayidx110, align 1, !dbg !4742
  %conv111 = zext i8 %72 to i32, !dbg !4742
  %cmp112 = icmp eq i32 %conv111, 9, !dbg !4743
  br i1 %cmp112, label %if.then114, label %if.end120, !dbg !4744

if.then114:                                       ; preds = %land.lhs.true109
  %73 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4745
  %dev115 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %73, i32 0, i32 18, !dbg !4745
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev115, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !4745
  %74 = load i8*, i8** %rdesc.addr, align 8, !dbg !4747
  %arrayidx116 = getelementptr i8, i8* %74, i64 41, !dbg !4747
  store i8 5, i8* %arrayidx116, align 1, !dbg !4748
  %75 = load i8*, i8** %rdesc.addr, align 8, !dbg !4749
  %arrayidx117 = getelementptr i8, i8* %75, i64 42, !dbg !4749
  store i8 9, i8* %arrayidx117, align 1, !dbg !4750
  %76 = load i8*, i8** %rdesc.addr, align 8, !dbg !4751
  %arrayidx118 = getelementptr i8, i8* %76, i64 47, !dbg !4751
  store i8 -107, i8* %arrayidx118, align 1, !dbg !4752
  %77 = load i8*, i8** %rdesc.addr, align 8, !dbg !4753
  %arrayidx119 = getelementptr i8, i8* %77, i64 48, !dbg !4753
  store i8 11, i8* %arrayidx119, align 1, !dbg !4754
  br label %if.end120, !dbg !4755

if.end120:                                        ; preds = %if.then114, %land.lhs.true109, %land.lhs.true104, %land.lhs.true99, %land.lhs.true94, %sw.bb91
  br label %sw.epilog, !dbg !4756

sw.epilog:                                        ; preds = %if.end48, %if.end120, %if.end90, %if.end84, %if.end78, %if.end72, %if.end66, %if.end60, %if.end54
  %78 = load i8*, i8** %rdesc.addr, align 8, !dbg !4757
  ret i8* %78, !dbg !4758
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_input_mapping(%struct.hid_device* %hdev, %struct.hid_input* %hi, %struct.hid_field* %field, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4174 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hi.addr = alloca %struct.hid_input*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %drv_data = alloca %struct.lg_drv_data*, align 8
  %hid = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4767, metadata !DIExpression()), !dbg !4768
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4773
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #8, !dbg !4774
  %1 = bitcast i8* %call to %struct.lg_drv_data*, !dbg !4774
  store %struct.lg_drv_data* %1, %struct.lg_drv_data** %drv_data, align 8, !dbg !4772
  call void @llvm.dbg.declare(metadata i32* %hid, metadata !4775, metadata !DIExpression()), !dbg !4776
  %2 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4777
  %hid1 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %2, i32 0, i32 0, !dbg !4778
  %3 = load i32, i32* %hid1, align 4, !dbg !4778
  store i32 %3, i32* %hid, align 4, !dbg !4776
  %4 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4779
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 11, !dbg !4781
  %5 = load i32, i32* %product, align 4, !dbg !4781
  %cmp = icmp eq i32 %5, 49409, !dbg !4782
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4783

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4784
  %7 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4785
  %8 = load i64**, i64*** %bit.addr, align 8, !dbg !4786
  %9 = load i32*, i32** %max.addr, align 8, !dbg !4787
  %call2 = call i32 @lg_ultrax_remote_mapping(%struct.hid_input* %6, %struct.hid_usage* %7, i64** %8, i32* %9) #8, !dbg !4788
  %tobool = icmp ne i32 %call2, 0, !dbg !4788
  br i1 %tobool, label %if.then, label %if.end, !dbg !4789

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4791
  %product3 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 11, !dbg !4793
  %11 = load i32, i32* %product3, align 4, !dbg !4793
  %cmp4 = icmp eq i32 %11, 50975, !dbg !4794
  br i1 %cmp4, label %land.lhs.true5, label %if.end9, !dbg !4795

land.lhs.true5:                                   ; preds = %if.end
  %12 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4796
  %13 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4797
  %14 = load i64**, i64*** %bit.addr, align 8, !dbg !4798
  %15 = load i32*, i32** %max.addr, align 8, !dbg !4799
  %call6 = call i32 @lg_dinovo_mapping(%struct.hid_input* %12, %struct.hid_usage* %13, i64** %14, i32* %15) #8, !dbg !4800
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4800
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4801

if.then8:                                         ; preds = %land.lhs.true5
  store i32 1, i32* %retval, align 4, !dbg !4802
  br label %return, !dbg !4802

if.end9:                                          ; preds = %land.lhs.true5, %if.end
  %16 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4803
  %quirks = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %16, i32 0, i32 0, !dbg !4805
  %17 = load i64, i64* %quirks, align 8, !dbg !4805
  %and = and i64 %17, 64, !dbg !4806
  %tobool10 = icmp ne i64 %and, 0, !dbg !4806
  br i1 %tobool10, label %land.lhs.true11, label %if.end15, !dbg !4807

land.lhs.true11:                                  ; preds = %if.end9
  %18 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4808
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4809
  %20 = load i64**, i64*** %bit.addr, align 8, !dbg !4810
  %21 = load i32*, i32** %max.addr, align 8, !dbg !4811
  %call12 = call i32 @lg_wireless_mapping(%struct.hid_input* %18, %struct.hid_usage* %19, i64** %20, i32* %21) #8, !dbg !4812
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4812
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4813

if.then14:                                        ; preds = %land.lhs.true11
  store i32 1, i32* %retval, align 4, !dbg !4814
  br label %return, !dbg !4814

if.end15:                                         ; preds = %land.lhs.true11, %if.end9
  %22 = load i32, i32* %hid, align 4, !dbg !4815
  %and16 = and i32 %22, -65536, !dbg !4817
  %cmp17 = icmp ne i32 %and16, 589824, !dbg !4818
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !4819

if.then18:                                        ; preds = %if.end15
  store i32 0, i32* %retval, align 4, !dbg !4820
  br label %return, !dbg !4820

if.end19:                                         ; preds = %if.end15
  %23 = load i32, i32* %hid, align 4, !dbg !4821
  %and20 = and i32 %23, 65535, !dbg !4821
  store i32 %and20, i32* %hid, align 4, !dbg !4821
  %24 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4822
  %application = getelementptr inbounds %struct.hid_field, %struct.hid_field* %24, i32 0, i32 2, !dbg !4824
  %25 = load i32, i32* %application, align 8, !dbg !4824
  %cmp21 = icmp eq i32 %25, 65538, !dbg !4825
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !4826

if.then22:                                        ; preds = %if.end19
  %26 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4827
  %quirks23 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %26, i32 0, i32 0, !dbg !4830
  %27 = load i64, i64* %quirks23, align 8, !dbg !4830
  %and24 = and i64 %27, 32, !dbg !4831
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4831
  br i1 %tobool25, label %land.lhs.true26, label %if.end30, !dbg !4832

land.lhs.true26:                                  ; preds = %if.then22
  %28 = load i32, i32* %hid, align 4, !dbg !4833
  %cmp27 = icmp eq i32 %28, 7, !dbg !4834
  br i1 %cmp27, label %if.then29, label %lor.lhs.false, !dbg !4835

lor.lhs.false:                                    ; preds = %land.lhs.true26
  %29 = load i32, i32* %hid, align 4, !dbg !4836
  %cmp28 = icmp eq i32 %29, 8, !dbg !4837
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !4838

if.then29:                                        ; preds = %lor.lhs.false, %land.lhs.true26
  store i32 -1, i32* %retval, align 4, !dbg !4839
  br label %return, !dbg !4839

if.end30:                                         ; preds = %lor.lhs.false, %if.then22
  br label %if.end46, !dbg !4840

if.else:                                          ; preds = %if.end19
  %30 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4841
  %quirks31 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %30, i32 0, i32 0, !dbg !4844
  %31 = load i64, i64* %quirks31, align 8, !dbg !4844
  %and32 = and i64 %31, 16, !dbg !4845
  %tobool33 = icmp ne i64 %and32, 0, !dbg !4845
  br i1 %tobool33, label %land.lhs.true34, label %if.end45, !dbg !4846

land.lhs.true34:                                  ; preds = %if.else
  %32 = load i32, i32* %hid, align 4, !dbg !4847
  %conv = zext i32 %32 to i64, !dbg !4847
  %cmp35 = icmp ult i64 %conv, 80, !dbg !4848
  br i1 %cmp35, label %land.lhs.true37, label %if.end45, !dbg !4849

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %33 = load i32, i32* %hid, align 4, !dbg !4850
  %idxprom = zext i32 %33 to i64, !dbg !4851
  %arrayidx = getelementptr [80 x i8], [80 x i8]* @lg_input_mapping.e_keymap, i64 0, i64 %idxprom, !dbg !4851
  %34 = load i8, i8* %arrayidx, align 1, !dbg !4851
  %conv38 = zext i8 %34 to i32, !dbg !4851
  %cmp39 = icmp ne i32 %conv38, 0, !dbg !4852
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !4853

if.then41:                                        ; preds = %land.lhs.true37
  %35 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !4854
  %36 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4856
  %37 = load i64**, i64*** %bit.addr, align 8, !dbg !4857
  %38 = load i32*, i32** %max.addr, align 8, !dbg !4858
  %39 = load i32, i32* %hid, align 4, !dbg !4859
  %idxprom42 = zext i32 %39 to i64, !dbg !4860
  %arrayidx43 = getelementptr [80 x i8], [80 x i8]* @lg_input_mapping.e_keymap, i64 0, i64 %idxprom42, !dbg !4860
  %40 = load i8, i8* %arrayidx43, align 1, !dbg !4860
  %conv44 = zext i8 %40 to i32, !dbg !4860
  call void @hid_map_usage(%struct.hid_input* %35, %struct.hid_usage* %36, i64** %37, i32* %38, i8 zeroext 1, i32 %conv44) #8, !dbg !4861
  store i32 1, i32* %retval, align 4, !dbg !4862
  br label %return, !dbg !4862

if.end45:                                         ; preds = %land.lhs.true37, %land.lhs.true34, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end30
  store i32 0, i32* %retval, align 4, !dbg !4863
  br label %return, !dbg !4863

return:                                           ; preds = %if.end46, %if.then41, %if.then29, %if.then18, %if.then14, %if.then8, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !4864
  ret i32 %41, !dbg !4864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_input_mapped(%struct.hid_device* %hdev, %struct.hid_input* %hi, %struct.hid_field* %field, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !4865 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %hi.addr = alloca %struct.hid_input*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %drv_data = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data, metadata !4878, metadata !DIExpression()), !dbg !4879
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4880
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #8, !dbg !4881
  %1 = bitcast i8* %call to %struct.lg_drv_data*, !dbg !4881
  store %struct.lg_drv_data* %1, %struct.lg_drv_data** %drv_data, align 8, !dbg !4879
  %2 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4882
  %quirks = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %2, i32 0, i32 0, !dbg !4884
  %3 = load i64, i64* %quirks, align 8, !dbg !4884
  %and = and i64 %3, 2, !dbg !4885
  %tobool = icmp ne i64 %and, 0, !dbg !4885
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4886

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4887
  %type = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 6, !dbg !4888
  %5 = load i8, i8* %type, align 4, !dbg !4888
  %conv = zext i8 %5 to i32, !dbg !4887
  %cmp = icmp eq i32 %conv, 1, !dbg !4889
  br i1 %cmp, label %land.lhs.true2, label %if.end, !dbg !4890

land.lhs.true2:                                   ; preds = %land.lhs.true
  %6 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4891
  %flags = getelementptr inbounds %struct.hid_field, %struct.hid_field* %6, i32 0, i32 5, !dbg !4892
  %7 = load i32, i32* %flags, align 4, !dbg !4892
  %and3 = and i32 %7, 4, !dbg !4893
  %tobool4 = icmp ne i32 %and3, 0, !dbg !4893
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4894

if.then:                                          ; preds = %land.lhs.true2
  %8 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4895
  %flags5 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %8, i32 0, i32 5, !dbg !4896
  %9 = load i32, i32* %flags5, align 4, !dbg !4897
  %and6 = and i32 %9, -5, !dbg !4897
  store i32 %and6, i32* %flags5, align 4, !dbg !4897
  br label %if.end, !dbg !4895

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  %10 = load %struct.lg_drv_data*, %struct.lg_drv_data** %drv_data, align 8, !dbg !4898
  %quirks7 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %10, i32 0, i32 0, !dbg !4900
  %11 = load i64, i64* %quirks7, align 8, !dbg !4900
  %and8 = and i64 %11, 4, !dbg !4901
  %tobool9 = icmp ne i64 %and8, 0, !dbg !4901
  br i1 %tobool9, label %land.lhs.true10, label %if.end26, !dbg !4902

land.lhs.true10:                                  ; preds = %if.end
  %12 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4903
  %type11 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %12, i32 0, i32 6, !dbg !4904
  %13 = load i8, i8* %type11, align 4, !dbg !4904
  %conv12 = zext i8 %13 to i32, !dbg !4903
  %cmp13 = icmp eq i32 %conv12, 1, !dbg !4905
  br i1 %cmp13, label %if.then24, label %lor.lhs.false, !dbg !4906

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %14 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4907
  %type15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 6, !dbg !4908
  %15 = load i8, i8* %type15, align 4, !dbg !4908
  %conv16 = zext i8 %15 to i32, !dbg !4907
  %cmp17 = icmp eq i32 %conv16, 2, !dbg !4909
  br i1 %cmp17, label %if.then24, label %lor.lhs.false19, !dbg !4910

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %16 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4911
  %type20 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %16, i32 0, i32 6, !dbg !4912
  %17 = load i8, i8* %type20, align 4, !dbg !4912
  %conv21 = zext i8 %17 to i32, !dbg !4911
  %cmp22 = icmp eq i32 %conv21, 3, !dbg !4913
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !4914

if.then24:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %land.lhs.true10
  %18 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4915
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %18, i32 0, i32 5, !dbg !4916
  %19 = load i16, i16* %code, align 2, !dbg !4916
  %conv25 = zext i16 %19 to i64, !dbg !4915
  %20 = load i64**, i64*** %bit.addr, align 8, !dbg !4917
  %21 = load i64*, i64** %20, align 8, !dbg !4918
  call void @clear_bit(i64 %conv25, i64* %21) #8, !dbg !4919
  br label %if.end26, !dbg !4919

if.end26:                                         ; preds = %if.then24, %lor.lhs.false19, %if.end
  %22 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4920
  %type27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %22, i32 0, i32 6, !dbg !4922
  %23 = load i8, i8* %type27, align 4, !dbg !4922
  %conv28 = zext i8 %23 to i32, !dbg !4920
  %cmp29 = icmp eq i32 %conv28, 3, !dbg !4923
  br i1 %cmp29, label %land.lhs.true31, label %if.end52, !dbg !4924

land.lhs.true31:                                  ; preds = %if.end26
  %24 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4925
  %code32 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %24, i32 0, i32 5, !dbg !4926
  %25 = load i16, i16* %code32, align 2, !dbg !4926
  %conv33 = zext i16 %25 to i32, !dbg !4925
  %cmp34 = icmp eq i32 %conv33, 0, !dbg !4927
  br i1 %cmp34, label %if.then51, label %lor.lhs.false36, !dbg !4928

lor.lhs.false36:                                  ; preds = %land.lhs.true31
  %26 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4929
  %code37 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 5, !dbg !4930
  %27 = load i16, i16* %code37, align 2, !dbg !4930
  %conv38 = zext i16 %27 to i32, !dbg !4929
  %cmp39 = icmp eq i32 %conv38, 1, !dbg !4931
  br i1 %cmp39, label %if.then51, label %lor.lhs.false41, !dbg !4932

lor.lhs.false41:                                  ; preds = %lor.lhs.false36
  %28 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4933
  %code42 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %28, i32 0, i32 5, !dbg !4934
  %29 = load i16, i16* %code42, align 2, !dbg !4934
  %conv43 = zext i16 %29 to i32, !dbg !4933
  %cmp44 = icmp eq i32 %conv43, 2, !dbg !4935
  br i1 %cmp44, label %if.then51, label %lor.lhs.false46, !dbg !4936

lor.lhs.false46:                                  ; preds = %lor.lhs.false41
  %30 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !4937
  %code47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %30, i32 0, i32 5, !dbg !4938
  %31 = load i16, i16* %code47, align 2, !dbg !4938
  %conv48 = zext i16 %31 to i32, !dbg !4937
  %cmp49 = icmp eq i32 %conv48, 5, !dbg !4939
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !4940

if.then51:                                        ; preds = %lor.lhs.false46, %lor.lhs.false41, %lor.lhs.false36, %land.lhs.true31
  %32 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4941
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %32, i32 0, i32 11, !dbg !4943
  %33 = load i32, i32* %product, align 4, !dbg !4943
  switch i32 %33, label %sw.default [
    i32 49743, label %sw.bb
    i32 49678, label %sw.bb
    i32 49811, label %sw.bb
    i32 49812, label %sw.bb
    i32 49813, label %sw.bb
    i32 49816, label %sw.bb
    i32 49817, label %sw.bb
    i32 49818, label %sw.bb
    i32 49819, label %sw.bb
    i32 49820, label %sw.bb
    i32 51715, label %sw.bb
    i32 51716, label %sw.bb
  ], !dbg !4944

sw.bb:                                            ; preds = %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51, %if.then51
  %34 = load %struct.hid_field*, %struct.hid_field** %field.addr, align 8, !dbg !4945
  %application = getelementptr inbounds %struct.hid_field, %struct.hid_field* %34, i32 0, i32 2, !dbg !4947
  store i32 65544, i32* %application, align 8, !dbg !4948
  br label %sw.epilog, !dbg !4949

sw.default:                                       ; preds = %if.then51
  br label %sw.epilog, !dbg !4950

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end52, !dbg !4951

if.end52:                                         ; preds = %sw.epilog, %lor.lhs.false46, %if.end26
  ret i32 0, !dbg !4952
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !4953 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4956, metadata !DIExpression()), !dbg !4960
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4966, metadata !DIExpression()), !dbg !4967
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4968, metadata !DIExpression()), !dbg !4969
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4970, metadata !DIExpression()), !dbg !4971
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4972, metadata !DIExpression()), !dbg !4976
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4978, metadata !DIExpression()), !dbg !4982
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4984, metadata !DIExpression()), !dbg !4988
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4993, metadata !DIExpression()), !dbg !4994
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4995, metadata !DIExpression()), !dbg !4996
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4997, metadata !DIExpression()), !dbg !4998
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4999, metadata !DIExpression()), !dbg !5000
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5001, metadata !DIExpression()), !dbg !5002
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5003, metadata !DIExpression()), !dbg !5004
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5005, metadata !DIExpression()), !dbg !5006
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5007, metadata !DIExpression()), !dbg !5008
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  %0 = load i64, i64* %size.addr, align 8, !dbg !5013
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5014
  %or = or i32 %1, 256, !dbg !5015
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5016
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5017
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5018

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5019
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5020
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5021

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5022
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5023
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5024
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5025
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5002
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5026
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5027
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5028
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5029
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5030
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5031
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !5032
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5032
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5032
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5032
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5032
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5033
  br label %kmalloc.exit, !dbg !5033

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5034
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5035
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5035
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5037

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5038
  br label %kmalloc_index.exit.i, !dbg !5038

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5039
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5041
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5042

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5043
  br label %kmalloc_index.exit.i, !dbg !5043

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5044
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5046
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5047

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5048
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5049
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5050

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5051
  br label %kmalloc_index.exit.i, !dbg !5051

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5052
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5054
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5055

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5056
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5057
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5058

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5059
  br label %kmalloc_index.exit.i, !dbg !5059

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5060
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5062
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5063

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5064
  br label %kmalloc_index.exit.i, !dbg !5064

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5065
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5067
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5068

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5069
  br label %kmalloc_index.exit.i, !dbg !5069

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5070
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5072
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5073

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5074
  br label %kmalloc_index.exit.i, !dbg !5074

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5075
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5077
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5078

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5079
  br label %kmalloc_index.exit.i, !dbg !5079

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5080
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5082
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5083

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5084
  br label %kmalloc_index.exit.i, !dbg !5084

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5085
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5087
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5088

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5089
  br label %kmalloc_index.exit.i, !dbg !5089

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5090
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5092
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5093

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5094
  br label %kmalloc_index.exit.i, !dbg !5094

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5095
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5097
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5098

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5099
  br label %kmalloc_index.exit.i, !dbg !5099

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5100
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5102
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5103

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5104
  br label %kmalloc_index.exit.i, !dbg !5104

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5105
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5107
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5108

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5109
  br label %kmalloc_index.exit.i, !dbg !5109

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5110
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5112
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5113

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5114
  br label %kmalloc_index.exit.i, !dbg !5114

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5115
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5117
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5118

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5119
  br label %kmalloc_index.exit.i, !dbg !5119

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5120
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5122
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5123

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5124
  br label %kmalloc_index.exit.i, !dbg !5124

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5125
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5127
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5128

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5129
  br label %kmalloc_index.exit.i, !dbg !5129

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5130
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5132
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5133

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5134
  br label %kmalloc_index.exit.i, !dbg !5134

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5135
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5137
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5138

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5139
  br label %kmalloc_index.exit.i, !dbg !5139

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5140
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5142
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5143

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5144
  br label %kmalloc_index.exit.i, !dbg !5144

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5145
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5147
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5148

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5149
  br label %kmalloc_index.exit.i, !dbg !5149

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5150
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5152
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5153

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5154
  br label %kmalloc_index.exit.i, !dbg !5154

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5155
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5157
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5158

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5159
  br label %kmalloc_index.exit.i, !dbg !5159

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5160
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5162
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5163

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5164
  br label %kmalloc_index.exit.i, !dbg !5164

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5165
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5167
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5168

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5169
  br label %kmalloc_index.exit.i, !dbg !5169

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5170
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5172
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5173

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5174
  br label %kmalloc_index.exit.i, !dbg !5174

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5175
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5177
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5178

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5179
  br label %kmalloc_index.exit.i, !dbg !5179

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5180, !srcloc !5183
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !5184, !srcloc !5187
  unreachable, !dbg !5188

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5189
  store i32 %45, i32* %index.i, align 4, !dbg !5190
  %46 = load i32, i32* %index.i, align 4, !dbg !5191
  %tobool.i = icmp ne i32 %46, 0, !dbg !5191
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5193

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5194
  br label %kmalloc.exit, !dbg !5194

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5195
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5196
  %and.i.i = and i32 %48, 17, !dbg !5196
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5196
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5196
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5196
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5196
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5198

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5199
  br label %kmalloc_type.exit.i, !dbg !5199

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5200
  %and2.i.i = and i32 %49, 1, !dbg !5201
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5200
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5200
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5200
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5202
  br label %kmalloc_type.exit.i, !dbg !5202

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5203
  %idxprom.i = zext i32 %51 to i64, !dbg !5204
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5204
  %52 = load i32, i32* %index.i, align 4, !dbg !5205
  %idxprom6.i = zext i32 %52 to i64, !dbg !5204
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5204
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5204
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5206
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5207
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5208
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5209
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !5210
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5210
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5210
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5210
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5210
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4971
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5211
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5212
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5213
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5214
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !5215
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5216
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5217
  store i8* %62, i8** %retval.i, align 8, !dbg !5218
  br label %kmalloc.exit, !dbg !5218

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5219
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5220
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !5221
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5221
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5221
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5221
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5221
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5222
  br label %kmalloc.exit, !dbg !5222

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5223
  ret i8* %65, !dbg !5224
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_set_drvdata(%struct.hid_device* %hdev, i8* %data) #2 !dbg !5225 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5228, metadata !DIExpression()), !dbg !5229
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !5232
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !5233
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5234
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5235
  ret void, !dbg !5236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_parse(%struct.hid_device* %hdev) #2 !dbg !5237 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !5240
  %call = call i32 @hid_open_report(%struct.hid_device* %0) #8, !dbg !5241
  ret i32 %call, !dbg !5242
}

; Function Attrs: noredzone
declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_hw_raw_request(%struct.hid_device* %hdev, i8 zeroext %reportnum, i8* %buf, i64 %len, i8 zeroext %rtype, i32 %reqtype) #2 !dbg !5243 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %reportnum.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %rtype.addr = alloca i8, align 1
  %reqtype.addr = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  store i8 %reportnum, i8* %reportnum.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reportnum.addr, metadata !5246, metadata !DIExpression()), !dbg !5247
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  store i8 %rtype, i8* %rtype.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rtype.addr, metadata !5252, metadata !DIExpression()), !dbg !5253
  store i32 %reqtype, i32* %reqtype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reqtype.addr, metadata !5254, metadata !DIExpression()), !dbg !5255
  %0 = load i64, i64* %len.addr, align 8, !dbg !5256
  %cmp = icmp ult i64 %0, 1, !dbg !5258
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5259

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8, !dbg !5260
  %cmp1 = icmp ugt i64 %1, 8192, !dbg !5261
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !5262

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5263
  %tobool = icmp ne i8* %2, null, !dbg !5263
  br i1 %tobool, label %if.end, label %if.then, !dbg !5264

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5265
  br label %return, !dbg !5265

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !5266
  %ll_driver = getelementptr inbounds %struct.hid_device, %struct.hid_device* %3, i32 0, i32 20, !dbg !5267
  %4 = load %struct.hid_ll_driver*, %struct.hid_ll_driver** %ll_driver, align 8, !dbg !5267
  %raw_request = getelementptr inbounds %struct.hid_ll_driver, %struct.hid_ll_driver* %4, i32 0, i32 8, !dbg !5268
  %5 = load i32 (%struct.hid_device*, i8, i8*, i64, i8, i32)*, i32 (%struct.hid_device*, i8, i8*, i64, i8, i32)** %raw_request, align 8, !dbg !5268
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !5269
  %7 = load i8, i8* %reportnum.addr, align 1, !dbg !5270
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5271
  %9 = load i64, i64* %len.addr, align 8, !dbg !5272
  %10 = load i8, i8* %rtype.addr, align 1, !dbg !5273
  %11 = load i32, i32* %reqtype.addr, align 4, !dbg !5274
  %call = call i32 %5(%struct.hid_device* %6, i8 zeroext %7, i8* %8, i64 %9, i8 zeroext %10, i32 %11) #8, !dbg !5266
  store i32 %call, i32* %retval, align 4, !dbg !5275
  br label %return, !dbg !5275

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5276
  ret i32 %12, !dbg !5276
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #1

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #1

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @get_random_bytes(i8*, i32) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lgff_init(%struct.hid_device* %hdev) #2 !dbg !5277 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  ret i32 -1, !dbg !5280
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg2ff_init(%struct.hid_device* %hdev) #2 !dbg !5281 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  ret i32 -1, !dbg !5284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg3ff_init(%struct.hid_device* %hdev) #2 !dbg !5285 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  ret i32 -1, !dbg !5288
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg4ff_init(%struct.hid_device* %hdev) #2 !dbg !5289 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  ret i32 -1, !dbg !5293
}

; Function Attrs: noredzone
declare dso_local void @hid_hw_stop(%struct.hid_device*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5294 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5298, metadata !DIExpression()), !dbg !5303
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5305, metadata !DIExpression()), !dbg !5306
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  %0 = load i64, i64* %size.addr, align 8, !dbg !5309
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5311
  br i1 %1, label %if.then, label %if.end447, !dbg !5312

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5313
  %tobool = icmp ne i64 %2, 0, !dbg !5313
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5316

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5317
  br label %return, !dbg !5317

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5318
  %cmp = icmp ult i64 %3, 4096, !dbg !5320
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5321

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5322
  br label %return, !dbg !5322

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub = sub i64 %4, 1, !dbg !5323
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5323
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5323

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub4 = sub i64 %6, 1, !dbg !5323
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5323
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5323

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub6 = sub i64 %8, 1, !dbg !5323
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5323
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5323

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5323

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub9 = sub i64 %9, 1, !dbg !5323
  %and = and i64 %sub9, -9223372036854775808, !dbg !5323
  %tobool10 = icmp ne i64 %and, 0, !dbg !5323
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5323

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5323

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub13 = sub i64 %10, 1, !dbg !5323
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5323
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5323
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5323

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5323

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub18 = sub i64 %11, 1, !dbg !5323
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5323
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5323
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5323

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5323

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub23 = sub i64 %12, 1, !dbg !5323
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5323
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5323
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5323

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5323

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub28 = sub i64 %13, 1, !dbg !5323
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5323
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5323
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5323

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5323

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub33 = sub i64 %14, 1, !dbg !5323
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5323
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5323
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5323

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5323

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub38 = sub i64 %15, 1, !dbg !5323
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5323
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5323
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5323

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5323

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub43 = sub i64 %16, 1, !dbg !5323
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5323
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5323
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5323

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5323

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub48 = sub i64 %17, 1, !dbg !5323
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5323
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5323
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5323

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5323

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub53 = sub i64 %18, 1, !dbg !5323
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5323
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5323
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5323

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5323

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub58 = sub i64 %19, 1, !dbg !5323
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5323
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5323
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5323

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5323

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub63 = sub i64 %20, 1, !dbg !5323
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5323
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5323
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5323

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5323

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub68 = sub i64 %21, 1, !dbg !5323
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5323
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5323
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5323

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5323

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub73 = sub i64 %22, 1, !dbg !5323
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5323
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5323
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5323

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5323

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub78 = sub i64 %23, 1, !dbg !5323
  %and79 = and i64 %sub78, 562949953421312, !dbg !5323
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5323
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5323

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5323

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub83 = sub i64 %24, 1, !dbg !5323
  %and84 = and i64 %sub83, 281474976710656, !dbg !5323
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5323
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5323

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5323

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub88 = sub i64 %25, 1, !dbg !5323
  %and89 = and i64 %sub88, 140737488355328, !dbg !5323
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5323
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5323

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5323

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub93 = sub i64 %26, 1, !dbg !5323
  %and94 = and i64 %sub93, 70368744177664, !dbg !5323
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5323
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5323

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5323

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub98 = sub i64 %27, 1, !dbg !5323
  %and99 = and i64 %sub98, 35184372088832, !dbg !5323
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5323
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5323

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5323

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub103 = sub i64 %28, 1, !dbg !5323
  %and104 = and i64 %sub103, 17592186044416, !dbg !5323
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5323
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5323

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5323

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub108 = sub i64 %29, 1, !dbg !5323
  %and109 = and i64 %sub108, 8796093022208, !dbg !5323
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5323
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5323

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5323

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub113 = sub i64 %30, 1, !dbg !5323
  %and114 = and i64 %sub113, 4398046511104, !dbg !5323
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5323
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5323

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5323

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub118 = sub i64 %31, 1, !dbg !5323
  %and119 = and i64 %sub118, 2199023255552, !dbg !5323
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5323
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5323

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5323

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub123 = sub i64 %32, 1, !dbg !5323
  %and124 = and i64 %sub123, 1099511627776, !dbg !5323
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5323
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5323

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5323

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub128 = sub i64 %33, 1, !dbg !5323
  %and129 = and i64 %sub128, 549755813888, !dbg !5323
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5323
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5323

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5323

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub133 = sub i64 %34, 1, !dbg !5323
  %and134 = and i64 %sub133, 274877906944, !dbg !5323
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5323
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5323

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5323

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub138 = sub i64 %35, 1, !dbg !5323
  %and139 = and i64 %sub138, 137438953472, !dbg !5323
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5323
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5323

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5323

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub143 = sub i64 %36, 1, !dbg !5323
  %and144 = and i64 %sub143, 68719476736, !dbg !5323
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5323
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5323

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5323

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub148 = sub i64 %37, 1, !dbg !5323
  %and149 = and i64 %sub148, 34359738368, !dbg !5323
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5323
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5323

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5323

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub153 = sub i64 %38, 1, !dbg !5323
  %and154 = and i64 %sub153, 17179869184, !dbg !5323
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5323
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5323

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5323

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub158 = sub i64 %39, 1, !dbg !5323
  %and159 = and i64 %sub158, 8589934592, !dbg !5323
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5323
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5323

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5323

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub163 = sub i64 %40, 1, !dbg !5323
  %and164 = and i64 %sub163, 4294967296, !dbg !5323
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5323
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5323

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5323

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub168 = sub i64 %41, 1, !dbg !5323
  %and169 = and i64 %sub168, 2147483648, !dbg !5323
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5323
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5323

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5323

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub173 = sub i64 %42, 1, !dbg !5323
  %and174 = and i64 %sub173, 1073741824, !dbg !5323
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5323
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5323

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5323

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub178 = sub i64 %43, 1, !dbg !5323
  %and179 = and i64 %sub178, 536870912, !dbg !5323
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5323
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5323

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5323

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub183 = sub i64 %44, 1, !dbg !5323
  %and184 = and i64 %sub183, 268435456, !dbg !5323
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5323
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5323

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5323

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub188 = sub i64 %45, 1, !dbg !5323
  %and189 = and i64 %sub188, 134217728, !dbg !5323
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5323
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5323

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5323

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub193 = sub i64 %46, 1, !dbg !5323
  %and194 = and i64 %sub193, 67108864, !dbg !5323
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5323
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5323

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5323

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub198 = sub i64 %47, 1, !dbg !5323
  %and199 = and i64 %sub198, 33554432, !dbg !5323
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5323
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5323

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5323

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub203 = sub i64 %48, 1, !dbg !5323
  %and204 = and i64 %sub203, 16777216, !dbg !5323
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5323
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5323

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5323

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub208 = sub i64 %49, 1, !dbg !5323
  %and209 = and i64 %sub208, 8388608, !dbg !5323
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5323
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5323

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5323

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub213 = sub i64 %50, 1, !dbg !5323
  %and214 = and i64 %sub213, 4194304, !dbg !5323
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5323
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5323

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5323

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub218 = sub i64 %51, 1, !dbg !5323
  %and219 = and i64 %sub218, 2097152, !dbg !5323
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5323
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5323

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5323

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub223 = sub i64 %52, 1, !dbg !5323
  %and224 = and i64 %sub223, 1048576, !dbg !5323
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5323
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5323

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5323

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub228 = sub i64 %53, 1, !dbg !5323
  %and229 = and i64 %sub228, 524288, !dbg !5323
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5323
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5323

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5323

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub233 = sub i64 %54, 1, !dbg !5323
  %and234 = and i64 %sub233, 262144, !dbg !5323
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5323
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5323

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5323

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub238 = sub i64 %55, 1, !dbg !5323
  %and239 = and i64 %sub238, 131072, !dbg !5323
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5323
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5323

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5323

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub243 = sub i64 %56, 1, !dbg !5323
  %and244 = and i64 %sub243, 65536, !dbg !5323
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5323
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5323

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5323

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub248 = sub i64 %57, 1, !dbg !5323
  %and249 = and i64 %sub248, 32768, !dbg !5323
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5323
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5323

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5323

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub253 = sub i64 %58, 1, !dbg !5323
  %and254 = and i64 %sub253, 16384, !dbg !5323
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5323
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5323

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5323

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub258 = sub i64 %59, 1, !dbg !5323
  %and259 = and i64 %sub258, 8192, !dbg !5323
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5323
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5323

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5323

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub263 = sub i64 %60, 1, !dbg !5323
  %and264 = and i64 %sub263, 4096, !dbg !5323
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5323
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5323

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5323

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub268 = sub i64 %61, 1, !dbg !5323
  %and269 = and i64 %sub268, 2048, !dbg !5323
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5323
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5323

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5323

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub273 = sub i64 %62, 1, !dbg !5323
  %and274 = and i64 %sub273, 1024, !dbg !5323
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5323
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5323

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5323

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub278 = sub i64 %63, 1, !dbg !5323
  %and279 = and i64 %sub278, 512, !dbg !5323
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5323
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5323

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5323

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub283 = sub i64 %64, 1, !dbg !5323
  %and284 = and i64 %sub283, 256, !dbg !5323
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5323
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5323

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5323

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub288 = sub i64 %65, 1, !dbg !5323
  %and289 = and i64 %sub288, 128, !dbg !5323
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5323
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5323

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5323

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub293 = sub i64 %66, 1, !dbg !5323
  %and294 = and i64 %sub293, 64, !dbg !5323
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5323
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5323

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5323

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub298 = sub i64 %67, 1, !dbg !5323
  %and299 = and i64 %sub298, 32, !dbg !5323
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5323
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5323

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5323

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub303 = sub i64 %68, 1, !dbg !5323
  %and304 = and i64 %sub303, 16, !dbg !5323
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5323
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5323

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5323

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub308 = sub i64 %69, 1, !dbg !5323
  %and309 = and i64 %sub308, 8, !dbg !5323
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5323
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5323

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5323

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub313 = sub i64 %70, 1, !dbg !5323
  %and314 = and i64 %sub313, 4, !dbg !5323
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5323
  %71 = zext i1 %tobool315 to i64, !dbg !5323
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5323
  br label %cond.end, !dbg !5323

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5323
  br label %cond.end317, !dbg !5323

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5323
  br label %cond.end319, !dbg !5323

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5323
  br label %cond.end321, !dbg !5323

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5323
  br label %cond.end323, !dbg !5323

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5323
  br label %cond.end325, !dbg !5323

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5323
  br label %cond.end327, !dbg !5323

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5323
  br label %cond.end329, !dbg !5323

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5323
  br label %cond.end331, !dbg !5323

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5323
  br label %cond.end333, !dbg !5323

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5323
  br label %cond.end335, !dbg !5323

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5323
  br label %cond.end337, !dbg !5323

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5323
  br label %cond.end339, !dbg !5323

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5323
  br label %cond.end341, !dbg !5323

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5323
  br label %cond.end343, !dbg !5323

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5323
  br label %cond.end345, !dbg !5323

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5323
  br label %cond.end347, !dbg !5323

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5323
  br label %cond.end349, !dbg !5323

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5323
  br label %cond.end351, !dbg !5323

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5323
  br label %cond.end353, !dbg !5323

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5323
  br label %cond.end355, !dbg !5323

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5323
  br label %cond.end357, !dbg !5323

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5323
  br label %cond.end359, !dbg !5323

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5323
  br label %cond.end361, !dbg !5323

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5323
  br label %cond.end363, !dbg !5323

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5323
  br label %cond.end365, !dbg !5323

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5323
  br label %cond.end367, !dbg !5323

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5323
  br label %cond.end369, !dbg !5323

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5323
  br label %cond.end371, !dbg !5323

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5323
  br label %cond.end373, !dbg !5323

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5323
  br label %cond.end375, !dbg !5323

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5323
  br label %cond.end377, !dbg !5323

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5323
  br label %cond.end379, !dbg !5323

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5323
  br label %cond.end381, !dbg !5323

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5323
  br label %cond.end383, !dbg !5323

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5323
  br label %cond.end385, !dbg !5323

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5323
  br label %cond.end387, !dbg !5323

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5323
  br label %cond.end389, !dbg !5323

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5323
  br label %cond.end391, !dbg !5323

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5323
  br label %cond.end393, !dbg !5323

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5323
  br label %cond.end395, !dbg !5323

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5323
  br label %cond.end397, !dbg !5323

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5323
  br label %cond.end399, !dbg !5323

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5323
  br label %cond.end401, !dbg !5323

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5323
  br label %cond.end403, !dbg !5323

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5323
  br label %cond.end405, !dbg !5323

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5323
  br label %cond.end407, !dbg !5323

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5323
  br label %cond.end409, !dbg !5323

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5323
  br label %cond.end411, !dbg !5323

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5323
  br label %cond.end413, !dbg !5323

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5323
  br label %cond.end415, !dbg !5323

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5323
  br label %cond.end417, !dbg !5323

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5323
  br label %cond.end419, !dbg !5323

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5323
  br label %cond.end421, !dbg !5323

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5323
  br label %cond.end423, !dbg !5323

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5323
  br label %cond.end425, !dbg !5323

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5323
  br label %cond.end427, !dbg !5323

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5323
  br label %cond.end429, !dbg !5323

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5323
  br label %cond.end431, !dbg !5323

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5323
  br label %cond.end433, !dbg !5323

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5323
  br label %cond.end435, !dbg !5323

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5323
  br label %cond.end437, !dbg !5323

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5323
  br label %cond.end440, !dbg !5323

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5323

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5323
  br label %cond.end444, !dbg !5323

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5323
  %sub443 = sub i64 %72, 1, !dbg !5323
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5323
  br label %cond.end444, !dbg !5323

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5323
  %sub446 = sub i32 %cond445, 12, !dbg !5324
  %add = add i32 %sub446, 1, !dbg !5325
  store i32 %add, i32* %retval, align 4, !dbg !5326
  br label %return, !dbg !5326

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5327
  %dec = add i64 %73, -1, !dbg !5327
  store i64 %dec, i64* %size.addr, align 8, !dbg !5327
  %74 = load i64, i64* %size.addr, align 8, !dbg !5328
  %shr = lshr i64 %74, 12, !dbg !5328
  store i64 %shr, i64* %size.addr, align 8, !dbg !5328
  %75 = load i64, i64* %size.addr, align 8, !dbg !5329
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5306
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5330
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5331
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5330, !srcloc !5332
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5330
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5333
  %add.i = add i32 %79, 1, !dbg !5334
  store i32 %add.i, i32* %retval, align 4, !dbg !5335
  br label %return, !dbg !5335

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5336
  ret i32 %80, !dbg !5336
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5337 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5298, metadata !DIExpression()), !dbg !5341
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5305, metadata !DIExpression()), !dbg !5343
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5344, metadata !DIExpression()), !dbg !5345
  %0 = load i64, i64* %n.addr, align 8, !dbg !5346
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5343
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5347
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5348
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5347, !srcloc !5332
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5347
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5349
  %add.i = add i32 %4, 1, !dbg !5350
  %sub = sub i32 %add.i, 1, !dbg !5351
  ret i32 %sub, !dbg !5352
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5353 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5365
  ret i8* %0, !dbg !5366
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5367 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5374
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5375
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5376
  store i8* %0, i8** %driver_data, align 8, !dbg !5377
  ret void, !dbg !5378
}

; Function Attrs: noredzone
declare dso_local i32 @hid_open_report(%struct.hid_device*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !5379 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  %0 = load i32, i32* %m.addr, align 4, !dbg !5382
  %conv = zext i32 %0 to i64, !dbg !5382
  %add = add i64 %conv, 4, !dbg !5383
  %sub = sub i64 %add, 1, !dbg !5384
  %div = sdiv i64 %sub, 4, !dbg !5385
  ret i64 %div, !dbg !5386
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hid_get_drvdata(%struct.hid_device* %hdev) #2 !dbg !5387 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !5392
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !5393
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5394
  ret i8* %call, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg4ff_deinit(%struct.hid_device* %hdev) #2 !dbg !5396 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  ret i32 -1, !dbg !5399
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5400 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5407
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5408
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5408
  ret i8* %1, !dbg !5409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg4ff_raw_event(%struct.hid_device* %hdev, %struct.hid_report* %report, i8* %rd, i32 %size, %struct.lg_drv_data* %drv_data) #2 !dbg !5410 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %report.addr = alloca %struct.hid_report*, align 8
  %rd.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %drv_data.addr = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  store %struct.hid_report* %report, %struct.hid_report** %report.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_report** %report.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i8* %rd, i8** %rd.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rd.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5419, metadata !DIExpression()), !dbg !5420
  store %struct.lg_drv_data* %drv_data, %struct.lg_drv_data** %drv_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data.addr, metadata !5421, metadata !DIExpression()), !dbg !5422
  ret i32 0, !dbg !5423
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg4ff_adjust_input_event(%struct.hid_device* %hid, %struct.hid_field* %field, %struct.hid_usage* %usage, i32 %value, %struct.lg_drv_data* %drv_data) #2 !dbg !5424 {
entry:
  %hid.addr = alloca %struct.hid_device*, align 8
  %field.addr = alloca %struct.hid_field*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %value.addr = alloca i32, align 4
  %drv_data.addr = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %hid, %struct.hid_device** %hid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hid.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  store %struct.hid_field* %field, %struct.hid_field** %field.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_field** %field.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  store %struct.lg_drv_data* %drv_data, %struct.lg_drv_data** %drv_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_drv_data** %drv_data.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  ret i32 0, !dbg !5437
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_ultrax_remote_mapping(%struct.hid_input* %hi, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !5438 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !5441, metadata !DIExpression()), !dbg !5442
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5443, metadata !DIExpression()), !dbg !5444
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  %0 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5449
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %0, i32 0, i32 0, !dbg !5451
  %1 = load i32, i32* %hid, align 4, !dbg !5451
  %and = and i32 %1, -65536, !dbg !5452
  %cmp = icmp ne i32 %and, -4456448, !dbg !5453
  br i1 %cmp, label %if.then, label %if.end, !dbg !5454

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5455
  br label %return, !dbg !5455

if.end:                                           ; preds = %entry
  %2 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5456
  %input = getelementptr inbounds %struct.hid_input, %struct.hid_input* %2, i32 0, i32 2, !dbg !5457
  %3 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5457
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 5, !dbg !5458
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !5456
  call void @set_bit(i64 20, i64* %arraydecay) #8, !dbg !5459
  %4 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5460
  %hid1 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %4, i32 0, i32 0, !dbg !5461
  %5 = load i32, i32* %hid1, align 4, !dbg !5461
  %and2 = and i32 %5, 65535, !dbg !5462
  switch i32 %and2, label %sw.default [
    i32 4, label %sw.bb
    i32 13, label %sw.bb3
    i32 36, label %sw.bb4
    i32 37, label %sw.bb5
    i32 38, label %sw.bb6
    i32 49, label %sw.bb7
    i32 50, label %sw.bb8
    i32 51, label %sw.bb9
    i32 71, label %sw.bb10
    i32 72, label %sw.bb11
    i32 73, label %sw.bb12
    i32 74, label %sw.bb13
    i32 75, label %sw.bb14
    i32 76, label %sw.bb15
    i32 77, label %sw.bb16
    i32 81, label %sw.bb17
    i32 82, label %sw.bb18
  ], !dbg !5463

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5464
  %7 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5464
  %8 = load i64**, i64*** %bit.addr, align 8, !dbg !5464
  %9 = load i32*, i32** %max.addr, align 8, !dbg !5464
  call void @hid_map_usage_clear(%struct.hid_input* %6, %struct.hid_usage* %7, i64** %8, i32* %9, i8 zeroext 1, i16 zeroext 129) #8, !dbg !5464
  br label %sw.epilog, !dbg !5466

sw.bb3:                                           ; preds = %if.end
  %10 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5467
  %11 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5467
  %12 = load i64**, i64*** %bit.addr, align 8, !dbg !5467
  %13 = load i32*, i32** %max.addr, align 8, !dbg !5467
  call void @hid_map_usage_clear(%struct.hid_input* %10, %struct.hid_usage* %11, i64** %12, i32* %13, i8 zeroext 1, i16 zeroext 102) #8, !dbg !5467
  br label %sw.epilog, !dbg !5468

sw.bb4:                                           ; preds = %if.end
  %14 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5469
  %15 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5469
  %16 = load i64**, i64*** %bit.addr, align 8, !dbg !5469
  %17 = load i32*, i32** %max.addr, align 8, !dbg !5469
  call void @hid_map_usage_clear(%struct.hid_input* %14, %struct.hid_usage* %15, i64** %16, i32* %17, i8 zeroext 1, i16 zeroext 410) #8, !dbg !5469
  br label %sw.epilog, !dbg !5470

sw.bb5:                                           ; preds = %if.end
  %18 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5471
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5471
  %20 = load i64**, i64*** %bit.addr, align 8, !dbg !5471
  %21 = load i32*, i32** %max.addr, align 8, !dbg !5471
  call void @hid_map_usage_clear(%struct.hid_input* %18, %struct.hid_usage* %19, i64** %20, i32* %21, i8 zeroext 1, i16 zeroext 377) #8, !dbg !5471
  br label %sw.epilog, !dbg !5472

sw.bb6:                                           ; preds = %if.end
  %22 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5473
  %23 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5473
  %24 = load i64**, i64*** %bit.addr, align 8, !dbg !5473
  %25 = load i32*, i32** %max.addr, align 8, !dbg !5473
  call void @hid_map_usage_clear(%struct.hid_input* %22, %struct.hid_usage* %23, i64** %24, i32* %25, i8 zeroext 1, i16 zeroext 139) #8, !dbg !5473
  br label %sw.epilog, !dbg !5474

sw.bb7:                                           ; preds = %if.end
  %26 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5475
  %27 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5475
  %28 = load i64**, i64*** %bit.addr, align 8, !dbg !5475
  %29 = load i32*, i32** %max.addr, align 8, !dbg !5475
  call void @hid_map_usage_clear(%struct.hid_input* %26, %struct.hid_usage* %27, i64** %28, i32* %29, i8 zeroext 1, i16 zeroext 392) #8, !dbg !5475
  br label %sw.epilog, !dbg !5476

sw.bb8:                                           ; preds = %if.end
  %30 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5477
  %31 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5477
  %32 = load i64**, i64*** %bit.addr, align 8, !dbg !5477
  %33 = load i32*, i32** %max.addr, align 8, !dbg !5477
  call void @hid_map_usage_clear(%struct.hid_input* %30, %struct.hid_usage* %31, i64** %32, i32* %33, i8 zeroext 1, i16 zeroext 388) #8, !dbg !5477
  br label %sw.epilog, !dbg !5478

sw.bb9:                                           ; preds = %if.end
  %34 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5479
  %35 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5479
  %36 = load i64**, i64*** %bit.addr, align 8, !dbg !5479
  %37 = load i32*, i32** %max.addr, align 8, !dbg !5479
  call void @hid_map_usage_clear(%struct.hid_input* %34, %struct.hid_usage* %35, i64** %36, i32* %37, i8 zeroext 1, i16 zeroext 405) #8, !dbg !5479
  br label %sw.epilog, !dbg !5480

sw.bb10:                                          ; preds = %if.end
  %38 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5481
  %39 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5481
  %40 = load i64**, i64*** %bit.addr, align 8, !dbg !5481
  %41 = load i32*, i32** %max.addr, align 8, !dbg !5481
  call void @hid_map_usage_clear(%struct.hid_input* %38, %struct.hid_usage* %39, i64** %40, i32* %41, i8 zeroext 1, i16 zeroext 391) #8, !dbg !5481
  br label %sw.epilog, !dbg !5482

sw.bb11:                                          ; preds = %if.end
  %42 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5483
  %43 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5483
  %44 = load i64**, i64*** %bit.addr, align 8, !dbg !5483
  %45 = load i32*, i32** %max.addr, align 8, !dbg !5483
  call void @hid_map_usage_clear(%struct.hid_input* %42, %struct.hid_usage* %43, i64** %44, i32* %45, i8 zeroext 1, i16 zeroext 389) #8, !dbg !5483
  br label %sw.epilog, !dbg !5484

sw.bb12:                                          ; preds = %if.end
  %46 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5485
  %47 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5485
  %48 = load i64**, i64*** %bit.addr, align 8, !dbg !5485
  %49 = load i32*, i32** %max.addr, align 8, !dbg !5485
  call void @hid_map_usage_clear(%struct.hid_input* %46, %struct.hid_usage* %47, i64** %48, i32* %49, i8 zeroext 1, i16 zeroext 226) #8, !dbg !5485
  br label %sw.epilog, !dbg !5486

sw.bb13:                                          ; preds = %if.end
  %50 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5487
  %51 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5487
  %52 = load i64**, i64*** %bit.addr, align 8, !dbg !5487
  %53 = load i32*, i32** %max.addr, align 8, !dbg !5487
  call void @hid_map_usage_clear(%struct.hid_input* %50, %struct.hid_usage* %51, i64** %52, i32* %53, i8 zeroext 1, i16 zeroext 393) #8, !dbg !5487
  br label %sw.epilog, !dbg !5488

sw.bb14:                                          ; preds = %if.end
  %54 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5489
  %55 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5489
  %56 = load i64**, i64*** %bit.addr, align 8, !dbg !5489
  %57 = load i32*, i32** %max.addr, align 8, !dbg !5489
  call void @hid_map_usage_clear(%struct.hid_input* %54, %struct.hid_usage* %55, i64** %56, i32* %57, i8 zeroext 1, i16 zeroext 371) #8, !dbg !5489
  br label %sw.epilog, !dbg !5490

sw.bb15:                                          ; preds = %if.end
  %58 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5491
  %59 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5491
  %60 = load i64**, i64*** %bit.addr, align 8, !dbg !5491
  %61 = load i32*, i32** %max.addr, align 8, !dbg !5491
  call void @hid_map_usage_clear(%struct.hid_input* %58, %struct.hid_usage* %59, i64** %60, i32* %61, i8 zeroext 1, i16 zeroext 368) #8, !dbg !5491
  br label %sw.epilog, !dbg !5492

sw.bb16:                                          ; preds = %if.end
  %62 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5493
  %63 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5493
  %64 = load i64**, i64*** %bit.addr, align 8, !dbg !5493
  %65 = load i32*, i32** %max.addr, align 8, !dbg !5493
  call void @hid_map_usage_clear(%struct.hid_input* %62, %struct.hid_usage* %63, i64** %64, i32* %65, i8 zeroext 1, i16 zeroext 370) #8, !dbg !5493
  br label %sw.epilog, !dbg !5494

sw.bb17:                                          ; preds = %if.end
  %66 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5495
  %67 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5495
  %68 = load i64**, i64*** %bit.addr, align 8, !dbg !5495
  %69 = load i32*, i32** %max.addr, align 8, !dbg !5495
  call void @hid_map_usage_clear(%struct.hid_input* %66, %struct.hid_usage* %67, i64** %68, i32* %69, i8 zeroext 1, i16 zeroext 398) #8, !dbg !5495
  br label %sw.epilog, !dbg !5496

sw.bb18:                                          ; preds = %if.end
  %70 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5497
  %71 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5497
  %72 = load i64**, i64*** %bit.addr, align 8, !dbg !5497
  %73 = load i32*, i32** %max.addr, align 8, !dbg !5497
  call void @hid_map_usage_clear(%struct.hid_input* %70, %struct.hid_usage* %71, i64** %72, i32* %73, i8 zeroext 1, i16 zeroext 206) #8, !dbg !5497
  br label %sw.epilog, !dbg !5498

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5499
  br label %return, !dbg !5499

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !5500
  br label %return, !dbg !5500

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %74 = load i32, i32* %retval, align 4, !dbg !5501
  ret i32 %74, !dbg !5501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_dinovo_mapping(%struct.hid_input* %hi, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !5502 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5511
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %0, i32 0, i32 0, !dbg !5513
  %1 = load i32, i32* %hid, align 4, !dbg !5513
  %and = and i32 %1, -65536, !dbg !5514
  %cmp = icmp ne i32 %and, -4456448, !dbg !5515
  br i1 %cmp, label %if.then, label %if.end, !dbg !5516

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5517
  br label %return, !dbg !5517

if.end:                                           ; preds = %entry
  %2 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5518
  %hid1 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %2, i32 0, i32 0, !dbg !5519
  %3 = load i32, i32* %hid1, align 4, !dbg !5519
  %and2 = and i32 %3, 65535, !dbg !5520
  switch i32 %and2, label %sw.default [
    i32 13, label %sw.bb
  ], !dbg !5521

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5522
  %5 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5522
  %6 = load i64**, i64*** %bit.addr, align 8, !dbg !5522
  %7 = load i32*, i32** %max.addr, align 8, !dbg !5522
  call void @hid_map_usage_clear(%struct.hid_input* %4, %struct.hid_usage* %5, i64** %6, i32* %7, i8 zeroext 1, i16 zeroext 226) #8, !dbg !5522
  br label %sw.epilog, !dbg !5524

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5525
  br label %return, !dbg !5525

sw.epilog:                                        ; preds = %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5527
  ret i32 %8, !dbg !5527
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_wireless_mapping(%struct.hid_input* %hi, %struct.hid_usage* %usage, i64** %bit, i32* %max) #2 !dbg !5528 {
entry:
  %retval = alloca i32, align 4
  %hi.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  store %struct.hid_input* %hi, %struct.hid_input** %hi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hi.addr, metadata !5529, metadata !DIExpression()), !dbg !5530
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5535, metadata !DIExpression()), !dbg !5536
  %0 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5537
  %hid = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %0, i32 0, i32 0, !dbg !5539
  %1 = load i32, i32* %hid, align 4, !dbg !5539
  %and = and i32 %1, -65536, !dbg !5540
  %cmp = icmp ne i32 %and, 786432, !dbg !5541
  br i1 %cmp, label %if.then, label %if.end, !dbg !5542

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5543
  br label %return, !dbg !5543

if.end:                                           ; preds = %entry
  %2 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5544
  %hid1 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %2, i32 0, i32 0, !dbg !5545
  %3 = load i32, i32* %hid1, align 4, !dbg !5545
  %and2 = and i32 %3, 65535, !dbg !5546
  switch i32 %and2, label %sw.default [
    i32 4097, label %sw.bb
    i32 4099, label %sw.bb3
    i32 4100, label %sw.bb4
    i32 4101, label %sw.bb5
    i32 4106, label %sw.bb6
    i32 4111, label %sw.bb7
    i32 4112, label %sw.bb8
    i32 4113, label %sw.bb9
    i32 4114, label %sw.bb10
    i32 4115, label %sw.bb11
    i32 4116, label %sw.bb12
    i32 4117, label %sw.bb13
    i32 4118, label %sw.bb14
    i32 4119, label %sw.bb15
    i32 4120, label %sw.bb16
    i32 4121, label %sw.bb17
    i32 4122, label %sw.bb18
    i32 4123, label %sw.bb19
    i32 4124, label %sw.bb20
    i32 4127, label %sw.bb21
    i32 4128, label %sw.bb22
    i32 4129, label %sw.bb23
    i32 4131, label %sw.bb24
    i32 4135, label %sw.bb25
    i32 4136, label %sw.bb26
    i32 4137, label %sw.bb27
    i32 4138, label %sw.bb28
    i32 4139, label %sw.bb29
    i32 4141, label %sw.bb30
    i32 4145, label %sw.bb31
    i32 4146, label %sw.bb32
    i32 4161, label %sw.bb33
    i32 4162, label %sw.bb34
    i32 4163, label %sw.bb35
    i32 4164, label %sw.bb36
    i32 4165, label %sw.bb37
    i32 4166, label %sw.bb38
    i32 4167, label %sw.bb39
    i32 4168, label %sw.bb40
    i32 4169, label %sw.bb41
    i32 4170, label %sw.bb42
    i32 4171, label %sw.bb43
    i32 4172, label %sw.bb44
  ], !dbg !5547

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5548
  %5 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5548
  %6 = load i64**, i64*** %bit.addr, align 8, !dbg !5548
  %7 = load i32*, i32** %max.addr, align 8, !dbg !5548
  call void @hid_map_usage_clear(%struct.hid_input* %4, %struct.hid_usage* %5, i64** %6, i32* %7, i8 zeroext 1, i16 zeroext 430) #8, !dbg !5548
  br label %sw.epilog, !dbg !5550

sw.bb3:                                           ; preds = %if.end
  %8 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5551
  %9 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5551
  %10 = load i64**, i64*** %bit.addr, align 8, !dbg !5551
  %11 = load i32*, i32** %max.addr, align 8, !dbg !5551
  call void @hid_map_usage_clear(%struct.hid_input* %8, %struct.hid_usage* %9, i64** %10, i32* %11, i8 zeroext 1, i16 zeroext 213) #8, !dbg !5551
  br label %sw.epilog, !dbg !5552

sw.bb4:                                           ; preds = %if.end
  %12 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5553
  %13 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5553
  %14 = load i64**, i64*** %bit.addr, align 8, !dbg !5553
  %15 = load i32*, i32** %max.addr, align 8, !dbg !5553
  call void @hid_map_usage_clear(%struct.hid_input* %12, %struct.hid_usage* %13, i64** %14, i32* %15, i8 zeroext 1, i16 zeroext 393) #8, !dbg !5553
  br label %sw.epilog, !dbg !5554

sw.bb5:                                           ; preds = %if.end
  %16 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5555
  %17 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5555
  %18 = load i64**, i64*** %bit.addr, align 8, !dbg !5555
  %19 = load i32*, i32** %max.addr, align 8, !dbg !5555
  call void @hid_map_usage_clear(%struct.hid_input* %16, %struct.hid_usage* %17, i64** %18, i32* %19, i8 zeroext 1, i16 zeroext 392) #8, !dbg !5555
  br label %sw.epilog, !dbg !5556

sw.bb6:                                           ; preds = %if.end
  %20 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5557
  %21 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5557
  %22 = load i64**, i64*** %bit.addr, align 8, !dbg !5557
  %23 = load i32*, i32** %max.addr, align 8, !dbg !5557
  call void @hid_map_usage_clear(%struct.hid_input* %20, %struct.hid_usage* %21, i64** %22, i32* %23, i8 zeroext 1, i16 zeroext 235) #8, !dbg !5557
  br label %sw.epilog, !dbg !5558

sw.bb7:                                           ; preds = %if.end
  %24 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5559
  %25 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5559
  %26 = load i64**, i64*** %bit.addr, align 8, !dbg !5559
  %27 = load i32*, i32** %max.addr, align 8, !dbg !5559
  call void @hid_map_usage_clear(%struct.hid_input* %24, %struct.hid_usage* %25, i64** %26, i32* %27, i8 zeroext 1, i16 zeroext 478) #8, !dbg !5559
  br label %sw.epilog, !dbg !5560

sw.bb8:                                           ; preds = %if.end
  %28 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5561
  %29 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5561
  %30 = load i64**, i64*** %bit.addr, align 8, !dbg !5561
  %31 = load i32*, i32** %max.addr, align 8, !dbg !5561
  call void @hid_map_usage_clear(%struct.hid_input* %28, %struct.hid_usage* %29, i64** %30, i32* %31, i8 zeroext 1, i16 zeroext 479) #8, !dbg !5561
  br label %sw.epilog, !dbg !5562

sw.bb9:                                           ; preds = %if.end
  %32 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5563
  %33 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5563
  %34 = load i64**, i64*** %bit.addr, align 8, !dbg !5563
  %35 = load i32*, i32** %max.addr, align 8, !dbg !5563
  call void @hid_map_usage_clear(%struct.hid_input* %32, %struct.hid_usage* %33, i64** %34, i32* %35, i8 zeroext 1, i16 zeroext 165) #8, !dbg !5563
  br label %sw.epilog, !dbg !5564

sw.bb10:                                          ; preds = %if.end
  %36 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5565
  %37 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5565
  %38 = load i64**, i64*** %bit.addr, align 8, !dbg !5565
  %39 = load i32*, i32** %max.addr, align 8, !dbg !5565
  call void @hid_map_usage_clear(%struct.hid_input* %36, %struct.hid_usage* %37, i64** %38, i32* %39, i8 zeroext 1, i16 zeroext 163) #8, !dbg !5565
  br label %sw.epilog, !dbg !5566

sw.bb11:                                          ; preds = %if.end
  %40 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5567
  %41 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5567
  %42 = load i64**, i64*** %bit.addr, align 8, !dbg !5567
  %43 = load i32*, i32** %max.addr, align 8, !dbg !5567
  call void @hid_map_usage_clear(%struct.hid_input* %40, %struct.hid_usage* %41, i64** %42, i32* %43, i8 zeroext 1, i16 zeroext 212) #8, !dbg !5567
  br label %sw.epilog, !dbg !5568

sw.bb12:                                          ; preds = %if.end
  %44 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5569
  %45 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5569
  %46 = load i64**, i64*** %bit.addr, align 8, !dbg !5569
  %47 = load i32*, i32** %max.addr, align 8, !dbg !5569
  call void @hid_map_usage_clear(%struct.hid_input* %44, %struct.hid_usage* %45, i64** %46, i32* %47, i8 zeroext 1, i16 zeroext 430) #8, !dbg !5569
  br label %sw.epilog, !dbg !5570

sw.bb13:                                          ; preds = %if.end
  %48 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5571
  %49 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5571
  %50 = load i64**, i64*** %bit.addr, align 8, !dbg !5571
  %51 = load i32*, i32** %max.addr, align 8, !dbg !5571
  call void @hid_map_usage_clear(%struct.hid_input* %48, %struct.hid_usage* %49, i64** %50, i32* %51, i8 zeroext 1, i16 zeroext 167) #8, !dbg !5571
  br label %sw.epilog, !dbg !5572

sw.bb14:                                          ; preds = %if.end
  %52 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5573
  %53 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5573
  %54 = load i64**, i64*** %bit.addr, align 8, !dbg !5573
  %55 = load i32*, i32** %max.addr, align 8, !dbg !5573
  call void @hid_map_usage_clear(%struct.hid_input* %52, %struct.hid_usage* %53, i64** %54, i32* %55, i8 zeroext 1, i16 zeroext 387) #8, !dbg !5573
  br label %sw.epilog, !dbg !5574

sw.bb15:                                          ; preds = %if.end
  %56 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5575
  %57 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5575
  %58 = load i64**, i64*** %bit.addr, align 8, !dbg !5575
  %59 = load i32*, i32** %max.addr, align 8, !dbg !5575
  call void @hid_map_usage_clear(%struct.hid_input* %56, %struct.hid_usage* %57, i64** %58, i32* %59, i8 zeroext 1, i16 zeroext 161) #8, !dbg !5575
  br label %sw.epilog, !dbg !5576

sw.bb16:                                          ; preds = %if.end
  %60 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5577
  %61 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5577
  %62 = load i64**, i64*** %bit.addr, align 8, !dbg !5577
  %63 = load i32*, i32** %max.addr, align 8, !dbg !5577
  call void @hid_map_usage_clear(%struct.hid_input* %60, %struct.hid_usage* %61, i64** %62, i32* %63, i8 zeroext 1, i16 zeroext 226) #8, !dbg !5577
  br label %sw.epilog, !dbg !5578

sw.bb17:                                          ; preds = %if.end
  %64 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5579
  %65 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5579
  %66 = load i64**, i64*** %bit.addr, align 8, !dbg !5579
  %67 = load i32*, i32** %max.addr, align 8, !dbg !5579
  call void @hid_map_usage_clear(%struct.hid_input* %64, %struct.hid_usage* %65, i64** %66, i32* %67, i8 zeroext 1, i16 zeroext 148) #8, !dbg !5579
  br label %sw.epilog, !dbg !5580

sw.bb18:                                          ; preds = %if.end
  %68 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5581
  %69 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5581
  %70 = load i64**, i64*** %bit.addr, align 8, !dbg !5581
  %71 = load i32*, i32** %max.addr, align 8, !dbg !5581
  call void @hid_map_usage_clear(%struct.hid_input* %68, %struct.hid_usage* %69, i64** %70, i32* %71, i8 zeroext 1, i16 zeroext 149) #8, !dbg !5581
  br label %sw.epilog, !dbg !5582

sw.bb19:                                          ; preds = %if.end
  %72 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5583
  %73 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5583
  %74 = load i64**, i64*** %bit.addr, align 8, !dbg !5583
  %75 = load i32*, i32** %max.addr, align 8, !dbg !5583
  call void @hid_map_usage_clear(%struct.hid_input* %72, %struct.hid_usage* %73, i64** %74, i32* %75, i8 zeroext 1, i16 zeroext 202) #8, !dbg !5583
  br label %sw.epilog, !dbg !5584

sw.bb20:                                          ; preds = %if.end
  %76 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5585
  %77 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5585
  %78 = load i64**, i64*** %bit.addr, align 8, !dbg !5585
  %79 = load i32*, i32** %max.addr, align 8, !dbg !5585
  call void @hid_map_usage_clear(%struct.hid_input* %76, %struct.hid_usage* %77, i64** %78, i32* %79, i8 zeroext 1, i16 zeroext 154) #8, !dbg !5585
  br label %sw.epilog, !dbg !5586

sw.bb21:                                          ; preds = %if.end
  %80 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5587
  %81 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5587
  %82 = load i64**, i64*** %bit.addr, align 8, !dbg !5587
  %83 = load i32*, i32** %max.addr, align 8, !dbg !5587
  call void @hid_map_usage_clear(%struct.hid_input* %80, %struct.hid_usage* %81, i64** %82, i32* %83, i8 zeroext 1, i16 zeroext 418) #8, !dbg !5587
  br label %sw.epilog, !dbg !5588

sw.bb22:                                          ; preds = %if.end
  %84 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5589
  %85 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5589
  %86 = load i64**, i64*** %bit.addr, align 8, !dbg !5589
  %87 = load i32*, i32** %max.addr, align 8, !dbg !5589
  call void @hid_map_usage_clear(%struct.hid_input* %84, %struct.hid_usage* %85, i64** %86, i32* %87, i8 zeroext 1, i16 zeroext 419) #8, !dbg !5589
  br label %sw.epilog, !dbg !5590

sw.bb23:                                          ; preds = %if.end
  %88 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5591
  %89 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5591
  %90 = load i64**, i64*** %bit.addr, align 8, !dbg !5591
  %91 = load i32*, i32** %max.addr, align 8, !dbg !5591
  call void @hid_map_usage_clear(%struct.hid_input* %88, %struct.hid_usage* %89, i64** %90, i32* %91, i8 zeroext 1, i16 zeroext 420) #8, !dbg !5591
  br label %sw.epilog, !dbg !5592

sw.bb24:                                          ; preds = %if.end
  %92 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5593
  %93 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5593
  %94 = load i64**, i64*** %bit.addr, align 8, !dbg !5593
  %95 = load i32*, i32** %max.addr, align 8, !dbg !5593
  call void @hid_map_usage_clear(%struct.hid_input* %92, %struct.hid_usage* %93, i64** %94, i32* %95, i8 zeroext 1, i16 zeroext 206) #8, !dbg !5593
  br label %sw.epilog, !dbg !5594

sw.bb25:                                          ; preds = %if.end
  %96 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5595
  %97 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5595
  %98 = load i64**, i64*** %bit.addr, align 8, !dbg !5595
  %99 = load i32*, i32** %max.addr, align 8, !dbg !5595
  call void @hid_map_usage_clear(%struct.hid_input* %96, %struct.hid_usage* %97, i64** %98, i32* %99, i8 zeroext 1, i16 zeroext 139) #8, !dbg !5595
  br label %sw.epilog, !dbg !5596

sw.bb26:                                          ; preds = %if.end
  %100 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5597
  %101 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5597
  %102 = load i64**, i64*** %bit.addr, align 8, !dbg !5597
  %103 = load i32*, i32** %max.addr, align 8, !dbg !5597
  call void @hid_map_usage_clear(%struct.hid_input* %100, %struct.hid_usage* %101, i64** %102, i32* %103, i8 zeroext 1, i16 zeroext 371) #8, !dbg !5597
  br label %sw.epilog, !dbg !5598

sw.bb27:                                          ; preds = %if.end
  %104 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5599
  %105 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5599
  %106 = load i64**, i64*** %bit.addr, align 8, !dbg !5599
  %107 = load i32*, i32** %max.addr, align 8, !dbg !5599
  call void @hid_map_usage_clear(%struct.hid_input* %104, %struct.hid_usage* %105, i64** %106, i32* %107, i8 zeroext 1, i16 zeroext 410) #8, !dbg !5599
  br label %sw.epilog, !dbg !5600

sw.bb28:                                          ; preds = %if.end
  %108 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5601
  %109 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5601
  %110 = load i64**, i64*** %bit.addr, align 8, !dbg !5601
  %111 = load i32*, i32** %max.addr, align 8, !dbg !5601
  call void @hid_map_usage_clear(%struct.hid_input* %108, %struct.hid_usage* %109, i64** %110, i32* %111, i8 zeroext 1, i16 zeroext 158) #8, !dbg !5601
  br label %sw.epilog, !dbg !5602

sw.bb29:                                          ; preds = %if.end
  %112 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5603
  %113 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5603
  %114 = load i64**, i64*** %bit.addr, align 8, !dbg !5603
  %115 = load i32*, i32** %max.addr, align 8, !dbg !5603
  call void @hid_map_usage_clear(%struct.hid_input* %112, %struct.hid_usage* %113, i64** %114, i32* %115, i8 zeroext 1, i16 zeroext 154) #8, !dbg !5603
  br label %sw.epilog, !dbg !5604

sw.bb30:                                          ; preds = %if.end
  %116 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5605
  %117 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5605
  %118 = load i64**, i64*** %bit.addr, align 8, !dbg !5605
  %119 = load i32*, i32** %max.addr, align 8, !dbg !5605
  call void @hid_map_usage_clear(%struct.hid_input* %116, %struct.hid_usage* %117, i64** %118, i32* %119, i8 zeroext 1, i16 zeroext 150) #8, !dbg !5605
  br label %sw.epilog, !dbg !5606

sw.bb31:                                          ; preds = %if.end
  %120 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5607
  %121 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5607
  %122 = load i64**, i64*** %bit.addr, align 8, !dbg !5607
  %123 = load i32*, i32** %max.addr, align 8, !dbg !5607
  call void @hid_map_usage_clear(%struct.hid_input* %120, %struct.hid_usage* %121, i64** %122, i32* %123, i8 zeroext 1, i16 zeroext 352) #8, !dbg !5607
  br label %sw.epilog, !dbg !5608

sw.bb32:                                          ; preds = %if.end
  %124 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5609
  %125 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5609
  %126 = load i64**, i64*** %bit.addr, align 8, !dbg !5609
  %127 = load i32*, i32** %max.addr, align 8, !dbg !5609
  call void @hid_map_usage_clear(%struct.hid_input* %124, %struct.hid_usage* %125, i64** %126, i32* %127, i8 zeroext 1, i16 zeroext 223) #8, !dbg !5609
  br label %sw.epilog, !dbg !5610

sw.bb33:                                          ; preds = %if.end
  %128 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5611
  %129 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5611
  %130 = load i64**, i64*** %bit.addr, align 8, !dbg !5611
  %131 = load i32*, i32** %max.addr, align 8, !dbg !5611
  call void @hid_map_usage_clear(%struct.hid_input* %128, %struct.hid_usage* %129, i64** %130, i32* %131, i8 zeroext 1, i16 zeroext 236) #8, !dbg !5611
  br label %sw.epilog, !dbg !5612

sw.bb34:                                          ; preds = %if.end
  %132 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5613
  %133 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5613
  %134 = load i64**, i64*** %bit.addr, align 8, !dbg !5613
  %135 = load i32*, i32** %max.addr, align 8, !dbg !5613
  call void @hid_map_usage_clear(%struct.hid_input* %132, %struct.hid_usage* %133, i64** %134, i32* %135, i8 zeroext 1, i16 zeroext 421) #8, !dbg !5613
  br label %sw.epilog, !dbg !5614

sw.bb35:                                          ; preds = %if.end
  %136 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5615
  %137 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5615
  %138 = load i64**, i64*** %bit.addr, align 8, !dbg !5615
  %139 = load i32*, i32** %max.addr, align 8, !dbg !5615
  call void @hid_map_usage_clear(%struct.hid_input* %136, %struct.hid_usage* %137, i64** %138, i32* %139, i8 zeroext 1, i16 zeroext 423) #8, !dbg !5615
  br label %sw.epilog, !dbg !5616

sw.bb36:                                          ; preds = %if.end
  %140 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5617
  %141 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5617
  %142 = load i64**, i64*** %bit.addr, align 8, !dbg !5617
  %143 = load i32*, i32** %max.addr, align 8, !dbg !5617
  call void @hid_map_usage_clear(%struct.hid_input* %140, %struct.hid_usage* %141, i64** %142, i32* %143, i8 zeroext 1, i16 zeroext 425) #8, !dbg !5617
  br label %sw.epilog, !dbg !5618

sw.bb37:                                          ; preds = %if.end
  %144 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5619
  %145 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5619
  %146 = load i64**, i64*** %bit.addr, align 8, !dbg !5619
  %147 = load i32*, i32** %max.addr, align 8, !dbg !5619
  call void @hid_map_usage_clear(%struct.hid_input* %144, %struct.hid_usage* %145, i64** %146, i32* %147, i8 zeroext 1, i16 zeroext 131) #8, !dbg !5619
  br label %sw.epilog, !dbg !5620

sw.bb38:                                          ; preds = %if.end
  %148 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5621
  %149 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5621
  %150 = load i64**, i64*** %bit.addr, align 8, !dbg !5621
  %151 = load i32*, i32** %max.addr, align 8, !dbg !5621
  call void @hid_map_usage_clear(%struct.hid_input* %148, %struct.hid_usage* %149, i64** %150, i32* %151, i8 zeroext 1, i16 zeroext 182) #8, !dbg !5621
  br label %sw.epilog, !dbg !5622

sw.bb39:                                          ; preds = %if.end
  %152 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5623
  %153 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5623
  %154 = load i64**, i64*** %bit.addr, align 8, !dbg !5623
  %155 = load i32*, i32** %max.addr, align 8, !dbg !5623
  call void @hid_map_usage_clear(%struct.hid_input* %152, %struct.hid_usage* %153, i64** %154, i32* %155, i8 zeroext 1, i16 zeroext 210) #8, !dbg !5623
  br label %sw.epilog, !dbg !5624

sw.bb40:                                          ; preds = %if.end
  %156 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5625
  %157 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5625
  %158 = load i64**, i64*** %bit.addr, align 8, !dbg !5625
  %159 = load i32*, i32** %max.addr, align 8, !dbg !5625
  call void @hid_map_usage_clear(%struct.hid_input* %156, %struct.hid_usage* %157, i64** %158, i32* %159, i8 zeroext 1, i16 zeroext 234) #8, !dbg !5625
  br label %sw.epilog, !dbg !5626

sw.bb41:                                          ; preds = %if.end
  %160 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5627
  %161 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5627
  %162 = load i64**, i64*** %bit.addr, align 8, !dbg !5627
  %163 = load i32*, i32** %max.addr, align 8, !dbg !5627
  call void @hid_map_usage_clear(%struct.hid_input* %160, %struct.hid_usage* %161, i64** %162, i32* %163, i8 zeroext 1, i16 zeroext 148) #8, !dbg !5627
  br label %sw.epilog, !dbg !5628

sw.bb42:                                          ; preds = %if.end
  %164 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5629
  %165 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5629
  %166 = load i64**, i64*** %bit.addr, align 8, !dbg !5629
  %167 = load i32*, i32** %max.addr, align 8, !dbg !5629
  call void @hid_map_usage_clear(%struct.hid_input* %164, %struct.hid_usage* %165, i64** %166, i32* %167, i8 zeroext 1, i16 zeroext 149) #8, !dbg !5629
  br label %sw.epilog, !dbg !5630

sw.bb43:                                          ; preds = %if.end
  %168 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5631
  %169 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5631
  %170 = load i64**, i64*** %bit.addr, align 8, !dbg !5631
  %171 = load i32*, i32** %max.addr, align 8, !dbg !5631
  call void @hid_map_usage_clear(%struct.hid_input* %168, %struct.hid_usage* %169, i64** %170, i32* %171, i8 zeroext 1, i16 zeroext 202) #8, !dbg !5631
  br label %sw.epilog, !dbg !5632

sw.bb44:                                          ; preds = %if.end
  %172 = load %struct.hid_input*, %struct.hid_input** %hi.addr, align 8, !dbg !5633
  %173 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5633
  %174 = load i64**, i64*** %bit.addr, align 8, !dbg !5633
  %175 = load i32*, i32** %max.addr, align 8, !dbg !5633
  call void @hid_map_usage_clear(%struct.hid_input* %172, %struct.hid_usage* %173, i64** %174, i32* %175, i8 zeroext 1, i16 zeroext 203) #8, !dbg !5633
  br label %sw.epilog, !dbg !5634

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5635
  br label %return, !dbg !5635

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !5636
  br label %return, !dbg !5636

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %176 = load i32, i32* %retval, align 4, !dbg !5637
  ret i32 %176, !dbg !5637
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
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput.addr, metadata !5638, metadata !DIExpression()), !dbg !5639
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5640, metadata !DIExpression()), !dbg !5641
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5642, metadata !DIExpression()), !dbg !5643
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !5650, metadata !DIExpression()), !dbg !5651
  %0 = load %struct.hid_input*, %struct.hid_input** %hidinput.addr, align 8, !dbg !5652
  %input1 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %0, i32 0, i32 2, !dbg !5653
  %1 = load %struct.input_dev*, %struct.input_dev** %input1, align 8, !dbg !5653
  store %struct.input_dev* %1, %struct.input_dev** %input, align 8, !dbg !5651
  call void @llvm.dbg.declare(metadata i64** %bmap, metadata !5654, metadata !DIExpression()), !dbg !5655
  store i64* null, i64** %bmap, align 8, !dbg !5655
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !5656, metadata !DIExpression()), !dbg !5657
  store i32 0, i32* %limit, align 4, !dbg !5657
  %2 = load i8, i8* %type.addr, align 1, !dbg !5658
  %conv = zext i8 %2 to i32, !dbg !5658
  switch i32 %conv, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
    i32 17, label %sw.bb6
  ], !dbg !5659

sw.bb:                                            ; preds = %entry
  %3 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5660
  %absbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 8, !dbg !5662
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %absbit, i64 0, i64 0, !dbg !5660
  store i64* %arraydecay, i64** %bmap, align 8, !dbg !5663
  store i32 63, i32* %limit, align 4, !dbg !5664
  br label %sw.epilog, !dbg !5665

sw.bb2:                                           ; preds = %entry
  %4 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5666
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 7, !dbg !5667
  %arraydecay3 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !5666
  store i64* %arraydecay3, i64** %bmap, align 8, !dbg !5668
  store i32 15, i32* %limit, align 4, !dbg !5669
  br label %sw.epilog, !dbg !5670

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5671
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 6, !dbg !5672
  %arraydecay5 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !5671
  store i64* %arraydecay5, i64** %bmap, align 8, !dbg !5673
  store i32 767, i32* %limit, align 4, !dbg !5674
  br label %sw.epilog, !dbg !5675

sw.bb6:                                           ; preds = %entry
  %6 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5676
  %ledbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 10, !dbg !5677
  %arraydecay7 = getelementptr inbounds [1 x i64], [1 x i64]* %ledbit, i64 0, i64 0, !dbg !5676
  store i64* %arraydecay7, i64** %bmap, align 8, !dbg !5678
  store i32 15, i32* %limit, align 4, !dbg !5679
  br label %sw.epilog, !dbg !5680

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %7 = load i32, i32* %c.addr, align 4, !dbg !5681
  %8 = load i32, i32* %limit, align 4, !dbg !5681
  %cmp = icmp ugt i32 %7, %8, !dbg !5681
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5681

lor.rhs:                                          ; preds = %sw.epilog
  %9 = load i64*, i64** %bmap, align 8, !dbg !5681
  %tobool = icmp ne i64* %9, null, !dbg !5681
  %lnot = xor i1 %tobool, true, !dbg !5681
  br label %lor.end, !dbg !5681

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %10 = phi i1 [ true, %sw.epilog ], [ %lnot, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !5681
  %lnot10 = xor i1 %lnot9, true, !dbg !5681
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !5681
  %conv11 = sext i32 %lnot.ext to i64, !dbg !5681
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !5681
  br i1 %tobool12, label %if.then, label %if.end17, !dbg !5683

if.then:                                          ; preds = %lor.end
  %call = call i32 @___ratelimit(%struct.ratelimit_state* @hid_map_usage._rs, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.hid_map_usage, i64 0, i64 0)) #8, !dbg !5684
  %tobool13 = icmp ne i32 %call, 0, !dbg !5684
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !5688

if.then14:                                        ; preds = %if.then
  %11 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5684
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0, !dbg !5684
  %12 = load i8*, i8** %name, align 8, !dbg !5684
  %13 = load i32, i32* %c.addr, align 4, !dbg !5684
  %14 = load i8, i8* %type.addr, align 1, !dbg !5684
  %conv15 = zext i8 %14 to i32, !dbg !5684
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %12, i32 %13, i32 %conv15) #9, !dbg !5684
  br label %if.end, !dbg !5684

if.end:                                           ; preds = %if.then14, %if.then
  %15 = load i64**, i64*** %bit.addr, align 8, !dbg !5689
  store i64* null, i64** %15, align 8, !dbg !5690
  br label %return, !dbg !5691

if.end17:                                         ; preds = %lor.end
  %16 = load i8, i8* %type.addr, align 1, !dbg !5692
  %17 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5693
  %type18 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %17, i32 0, i32 6, !dbg !5694
  store i8 %16, i8* %type18, align 4, !dbg !5695
  %18 = load i32, i32* %c.addr, align 4, !dbg !5696
  %conv19 = trunc i32 %18 to i16, !dbg !5696
  %19 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5697
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %19, i32 0, i32 5, !dbg !5698
  store i16 %conv19, i16* %code, align 2, !dbg !5699
  %20 = load i32, i32* %limit, align 4, !dbg !5700
  %21 = load i32*, i32** %max.addr, align 8, !dbg !5701
  store i32 %20, i32* %21, align 4, !dbg !5702
  %22 = load i64*, i64** %bmap, align 8, !dbg !5703
  %23 = load i64**, i64*** %bit.addr, align 8, !dbg !5704
  store i64* %22, i64** %23, align 8, !dbg !5705
  br label %return, !dbg !5706

return:                                           ; preds = %if.end17, %if.end
  ret void, !dbg !5706
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !5707 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5713, metadata !DIExpression()), !dbg !5715
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5717, metadata !DIExpression()), !dbg !5718
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5719, metadata !DIExpression()), !dbg !5727
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5729, metadata !DIExpression()), !dbg !5730
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5731, metadata !DIExpression()), !dbg !5732
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5733, metadata !DIExpression()), !dbg !5734
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5735
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5736
  %div = sdiv i64 %1, 64, !dbg !5736
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5737
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5735
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5738
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5739
  %conv.i = trunc i64 %4 to i32, !dbg !5739
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5740
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5741
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5741
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !5741
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5742
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5743
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5744
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5746
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5747

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5748
  %12 = bitcast i64* %11 to i8*, !dbg !5748
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5748
  %shr.i = ashr i64 %13, 3, !dbg !5748
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5748
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5750
  %and.i = and i64 %14, 7, !dbg !5750
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5750
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5750
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !5751, !srcloc !5752
  br label %arch_set_bit.exit, !dbg !5753

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5754
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5756
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5757, !srcloc !5758
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_map_usage_clear(%struct.hid_input* %hidinput, %struct.hid_usage* %usage, i64** %bit, i32* %max, i8 zeroext %type, i16 zeroext %c) #2 !dbg !5760 {
entry:
  %hidinput.addr = alloca %struct.hid_input*, align 8
  %usage.addr = alloca %struct.hid_usage*, align 8
  %bit.addr = alloca i64**, align 8
  %max.addr = alloca i32*, align 8
  %type.addr = alloca i8, align 1
  %c.addr = alloca i16, align 2
  store %struct.hid_input* %hidinput, %struct.hid_input** %hidinput.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_input** %hidinput.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  store %struct.hid_usage* %usage, %struct.hid_usage** %usage.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_usage** %usage.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  store i64** %bit, i64*** %bit.addr, align 8
  call void @llvm.dbg.declare(metadata i64*** %bit.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  store i8 %type, i8* %type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %type.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  store i16 %c, i16* %c.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.hid_input*, %struct.hid_input** %hidinput.addr, align 8, !dbg !5775
  %1 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5776
  %2 = load i64**, i64*** %bit.addr, align 8, !dbg !5777
  %3 = load i32*, i32** %max.addr, align 8, !dbg !5778
  %4 = load i8, i8* %type.addr, align 1, !dbg !5779
  %5 = load i16, i16* %c.addr, align 2, !dbg !5780
  %conv = zext i16 %5 to i32, !dbg !5780
  call void @hid_map_usage(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3, i8 zeroext %4, i32 %conv) #8, !dbg !5781
  %6 = load i64**, i64*** %bit.addr, align 8, !dbg !5782
  %7 = load i64*, i64** %6, align 8, !dbg !5784
  %tobool = icmp ne i64* %7, null, !dbg !5784
  br i1 %tobool, label %if.then, label %if.end, !dbg !5785

if.then:                                          ; preds = %entry
  %8 = load %struct.hid_usage*, %struct.hid_usage** %usage.addr, align 8, !dbg !5786
  %code = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %8, i32 0, i32 5, !dbg !5787
  %9 = load i16, i16* %code, align 2, !dbg !5787
  %conv1 = zext i16 %9 to i64, !dbg !5786
  %10 = load i64**, i64*** %bit.addr, align 8, !dbg !5788
  %11 = load i64*, i64** %10, align 8, !dbg !5789
  call void @clear_bit(i64 %conv1, i64* %11) #8, !dbg !5790
  br label %if.end, !dbg !5790

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5792 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5798, metadata !DIExpression()), !dbg !5799
  ret i1 true, !dbg !5800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5801 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5805, metadata !DIExpression()), !dbg !5806
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5807, metadata !DIExpression()), !dbg !5808
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  ret void, !dbg !5811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !5812 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5813, metadata !DIExpression()), !dbg !5815
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5817, metadata !DIExpression()), !dbg !5818
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5719, metadata !DIExpression()), !dbg !5819
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5729, metadata !DIExpression()), !dbg !5821
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5826
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5827
  %div = sdiv i64 %1, 64, !dbg !5827
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5828
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5826
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5829
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5830
  %conv.i = trunc i64 %4 to i32, !dbg !5830
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5831
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5832
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5832
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !5832
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5833
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5834
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5835
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5837
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5838

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5839
  %12 = bitcast i64* %11 to i8*, !dbg !5839
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5839
  %shr.i = ashr i64 %13, 3, !dbg !5839
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5839
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5841
  %and.i = and i64 %14, 7, !dbg !5841
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5841
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5841
  %neg.i = xor i32 %shl.i, -1, !dbg !5842
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !5843, !srcloc !5844
  br label %arch_clear_bit.exit, !dbg !5845

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5846
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5848
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5849, !srcloc !5850
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5851
}

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4184, !4185, !4186, !4187}
!llvm.ident = !{!4188}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lg_driver_init215", scope: !2, file: !3, line: 955, type: !109, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !105, globals: !3580, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hid/hid-lg.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !65, !72, !80, !86, !93, !100}
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
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !87, line: 96, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !94, line: 305, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!105 = !{!106, !109, !110, !740, !134, !309, !3577, !3579}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !108, line: 76, flags: DIFlagFwdDecl)
!108 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !87, line: 232, size: 6272, elements: !112)
!112 = !{!113, !191, !192, !193, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !3575, !3576}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !111, file: !87, line: 235, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !87, line: 82, size: 320, elements: !116)
!116 = !{!117, !133, !135, !137, !188}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !115, file: !87, line: 83, baseType: !118, size: 72)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !119, line: 389, size: 72, elements: !120)
!119 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !125, !126, !127, !128, !129, !130, !131, !132}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !118, file: !119, line: 390, baseType: !122, size: 8)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !123, line: 21, baseType: !124)
!123 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !118, file: !119, line: 391, baseType: !122, size: 8, offset: 8)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !118, file: !119, line: 393, baseType: !122, size: 8, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !118, file: !119, line: 394, baseType: !122, size: 8, offset: 24)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !118, file: !119, line: 395, baseType: !122, size: 8, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !118, file: !119, line: 396, baseType: !122, size: 8, offset: 40)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !118, file: !119, line: 397, baseType: !122, size: 8, offset: 48)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !118, file: !119, line: 398, baseType: !122, size: 8, offset: 56)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !118, file: !119, line: 399, baseType: !122, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !115, file: !87, line: 85, baseType: !134, size: 32, offset: 96)
!134 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !115, file: !87, line: 86, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !115, file: !87, line: 91, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !87, line: 67, size: 640, elements: !140)
!140 = !{!141, !156, !164, !173, !180, !181, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !139, file: !87, line: 68, baseType: !142, size: 72)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !119, line: 407, size: 72, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !153, !154, !155}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !142, file: !119, line: 408, baseType: !122, size: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !142, file: !119, line: 409, baseType: !122, size: 8, offset: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !142, file: !119, line: 411, baseType: !122, size: 8, offset: 16)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !142, file: !119, line: 412, baseType: !122, size: 8, offset: 24)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !142, file: !119, line: 413, baseType: !149, size: 16, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !150, line: 29, baseType: !151)
!150 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !123, line: 24, baseType: !152)
!152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !142, file: !119, line: 414, baseType: !122, size: 8, offset: 48)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !142, file: !119, line: 418, baseType: !122, size: 8, offset: 56)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !142, file: !119, line: 419, baseType: !122, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !139, file: !87, line: 69, baseType: !157, size: 48, offset: 72)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !119, line: 689, size: 48, elements: !158)
!158 = !{!159, !160, !161, !162, !163}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !157, file: !119, line: 690, baseType: !122, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !157, file: !119, line: 691, baseType: !122, size: 8, offset: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !157, file: !119, line: 693, baseType: !122, size: 8, offset: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !157, file: !119, line: 694, baseType: !122, size: 8, offset: 24)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !157, file: !119, line: 695, baseType: !149, size: 16, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !139, file: !87, line: 70, baseType: !165, size: 64, offset: 120)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !119, line: 677, size: 64, elements: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !165, file: !119, line: 678, baseType: !122, size: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !165, file: !119, line: 679, baseType: !122, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !165, file: !119, line: 680, baseType: !149, size: 16, offset: 16)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !165, file: !119, line: 681, baseType: !171, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !150, line: 31, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !123, line: 27, baseType: !7)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !139, file: !87, line: 71, baseType: !174, size: 128, offset: 192)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !175, line: 178, size: 128, elements: !176)
!175 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !175, line: 179, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !175, line: 179, baseType: !178, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !139, file: !87, line: 72, baseType: !109, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !139, file: !87, line: 73, baseType: !182, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !87, line: 48, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !139, file: !87, line: 75, baseType: !136, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !139, file: !87, line: 76, baseType: !134, size: 32, offset: 512)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !139, file: !87, line: 77, baseType: !134, size: 32, offset: 544)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !139, file: !87, line: 78, baseType: !134, size: 32, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !115, file: !87, line: 93, baseType: !189, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !111, file: !87, line: 237, baseType: !114, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !111, file: !87, line: 239, baseType: !7, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !111, file: !87, line: 243, baseType: !194, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !119, line: 783, size: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !195, file: !119, line: 784, baseType: !122, size: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !195, file: !119, line: 785, baseType: !122, size: 8, offset: 8)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !195, file: !119, line: 787, baseType: !122, size: 8, offset: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !195, file: !119, line: 788, baseType: !122, size: 8, offset: 24)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !195, file: !119, line: 789, baseType: !122, size: 8, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !195, file: !119, line: 790, baseType: !122, size: 8, offset: 40)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !195, file: !119, line: 791, baseType: !122, size: 8, offset: 48)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !195, file: !119, line: 792, baseType: !122, size: 8, offset: 56)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !111, file: !87, line: 245, baseType: !134, size: 32, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !111, file: !87, line: 247, baseType: !86, size: 32, offset: 288)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !111, file: !87, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !111, file: !87, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !111, file: !87, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !111, file: !87, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !111, file: !87, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !111, file: !87, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !111, file: !87, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !111, file: !87, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !111, file: !87, line: 257, baseType: !216, size: 5568, offset: 384)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !66, line: 461, size: 5568, elements: !217)
!217 = !{!218, !3215, !3217, !3220, !3221, !3272, !3363, !3364, !3365, !3366, !3367, !3376, !3481, !3494, !3497, !3498, !3502, !3504, !3505, !3506, !3510, !3516, !3517, !3520, !3524, !3527, !3528, !3529, !3530, !3531, !3563, !3564, !3565, !3568, !3571, !3572, !3573, !3574}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !216, file: !66, line: 462, baseType: !219, size: 512)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !220, line: 64, size: 512, elements: !221)
!220 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!221 = !{!222, !225, !226, !228, !287, !3066, !3205, !3210, !3211, !3212, !3213, !3214}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !220, line: 65, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !219, file: !220, line: 66, baseType: !174, size: 128, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !220, line: 67, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !219, file: !220, line: 68, baseType: !229, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !220, line: 192, size: 704, elements: !231)
!231 = !{!232, !233, !249, !250}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !230, file: !220, line: 193, baseType: !174, size: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !230, file: !220, line: 194, baseType: !234, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !235, line: 83, baseType: !236)
!235 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !235, line: 71, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !235, line: 72, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !235, line: 72, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !239, file: !235, line: 73, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !235, line: 20, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !242, file: !235, line: 21, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !246, line: 25, baseType: !247)
!246 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 25, elements: !248)
!248 = !{}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !230, file: !220, line: 195, baseType: !219, size: 512, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !230, file: !220, line: 196, baseType: !251, size: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !220, line: 156, size: 192, elements: !254)
!254 = !{!255, !260, !265}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !253, file: !220, line: 157, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!134, !229, !227}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !220, line: 158, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!223, !229, !227}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !253, file: !220, line: 159, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!134, !229, !227, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !220, line: 148, size: 20736, elements: !272)
!272 = !{!273, !277, !281, !282, !286}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !271, file: !220, line: 149, baseType: !274, size: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 192, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 3)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !271, file: !220, line: 150, baseType: !278, size: 4096, offset: 192)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 4096, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !271, file: !220, line: 151, baseType: !134, size: 32, offset: 4288)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !271, file: !220, line: 152, baseType: !283, size: 16384, offset: 4320)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 16384, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 2048)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !271, file: !220, line: 153, baseType: !134, size: 32, offset: 20704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !219, file: !220, line: 69, baseType: !288, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !220, line: 138, size: 448, elements: !290)
!290 = !{!291, !295, !324, !326, !3026, !3056, !3060}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !289, file: !220, line: 139, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !227}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !289, file: !220, line: 140, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !299, line: 230, size: 128, elements: !300)
!299 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!300 = !{!301, !316}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !298, file: !299, line: 231, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305, !227, !310, !189}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !175, line: 60, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !307, line: 73, baseType: !308)
!307 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !307, line: 15, baseType: !309)
!309 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !299, line: 30, size: 128, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !299, line: 31, baseType: !223, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !311, file: !299, line: 32, baseType: !315, size: 16, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !175, line: 19, baseType: !152)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !298, file: !299, line: 232, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!305, !227, !310, !223, !320}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 55, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !307, line: 72, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !307, line: 16, baseType: !323)
!323 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !289, file: !220, line: 141, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !289, file: !220, line: 142, baseType: !327, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !299, line: 84, size: 320, elements: !331)
!331 = !{!332, !333, !337, !3023, !3024}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !330, file: !299, line: 85, baseType: !223, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !330, file: !299, line: 86, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!315, !227, !310, !134}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !330, file: !299, line: 88, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!315, !227, !341, !134}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !299, line: 168, size: 448, elements: !343)
!343 = !{!344, !345, !346, !347, !3018, !3019}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !342, file: !299, line: 169, baseType: !311, size: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !342, file: !299, line: 170, baseType: !320, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !342, file: !299, line: 171, baseType: !109, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !342, file: !299, line: 172, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!305, !351, !227, !341, !189, !527, !320}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !353)
!353 = !{!354, !372, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !3001, !3002, !3011, !3012, !3013, !3014, !3015, !3016, !3017}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !352, file: !37, line: 920, baseType: !355, size: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !37, line: 917, size: 128, elements: !356)
!356 = !{!357, !363}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !355, file: !37, line: 918, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !359, line: 58, size: 64, elements: !360)
!359 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !359, line: 59, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !355, file: !37, line: 919, baseType: !364, size: 128, align: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !175, line: 216, size: 128, align: 64, elements: !365)
!365 = !{!366, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !175, line: 217, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !364, file: !175, line: 218, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !367}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !352, file: !37, line: 921, baseType: !373, size: 128, offset: 128)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !374, line: 8, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !373, file: !374, line: 9, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !379, line: 18, flags: DIFlagFwdDecl)
!379 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !373, file: !374, line: 10, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !379, line: 89, size: 1536, elements: !383)
!383 = !{!384, !385, !395, !403, !404, !424, !2951, !2953, !2965, !2966, !2967, !2968, !2969, !2975, !2976, !2977}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !382, file: !379, line: 91, baseType: !7, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !382, file: !379, line: 92, baseType: !386, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !387, line: 277, baseType: !388)
!387 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !387, line: 277, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !388, file: !387, line: 277, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !387, line: 70, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !387, line: 65, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !392, file: !387, line: 66, baseType: !7, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !382, file: !379, line: 93, baseType: !396, size: 128, offset: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !397, line: 38, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !396, file: !397, line: 39, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !396, file: !397, line: 39, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !382, file: !379, line: 94, baseType: !381, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !382, file: !379, line: 95, baseType: !405, size: 128, offset: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !379, line: 47, size: 128, elements: !406)
!406 = !{!407, !421}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !379, line: 48, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !405, file: !379, line: 48, size: 64, elements: !409)
!409 = !{!410, !417}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !379, line: 49, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !379, line: 49, size: 64, elements: !412)
!412 = !{!413, !416}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !411, file: !379, line: 50, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !415, line: 21, baseType: !172)
!415 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !411, file: !379, line: 50, baseType: !414, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !408, file: !379, line: 52, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !415, line: 23, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !123, line: 31, baseType: !420)
!420 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !379, line: 54, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !382, file: !379, line: 96, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !427)
!427 = !{!428, !429, !430, !438, !445, !446, !594, !2663, !2664, !2665, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2927, !2935, !2936, !2937, !2947, !2948, !2949, !2950}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !426, file: !37, line: 611, baseType: !315, size: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !426, file: !37, line: 612, baseType: !152, size: 16, offset: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !426, file: !37, line: 613, baseType: !431, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !432, line: 23, baseType: !433)
!432 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 21, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !433, file: !432, line: 22, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !175, line: 32, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !307, line: 49, baseType: !7)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !426, file: !37, line: 614, baseType: !439, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !432, line: 28, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !432, line: 26, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !440, file: !432, line: 27, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !175, line: 33, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !307, line: 50, baseType: !7)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !426, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !426, file: !37, line: 622, baseType: !447, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !450)
!450 = !{!451, !455, !468, !472, !478, !482, !488, !492, !496, !500, !504, !505, !511, !515, !541, !570, !574, !580, !585, !589, !590}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !449, file: !37, line: 1865, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!381, !425, !381, !7}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !449, file: !37, line: 1866, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!223, !381, !425, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !461, line: 10, size: 128, elements: !462)
!461 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463, !467}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !460, file: !461, line: 11, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !109}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !460, file: !461, line: 12, baseType: !109, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !449, file: !37, line: 1867, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!134, !425, !134}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !449, file: !37, line: 1868, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !425, !134}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !449, file: !37, line: 1870, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!134, !381, !189, !134}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !449, file: !37, line: 1872, baseType: !483, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!134, !425, !381, !315, !486}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !175, line: 30, baseType: !487)
!487 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !449, file: !37, line: 1873, baseType: !489, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!134, !381, !425, !381}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !449, file: !37, line: 1874, baseType: !493, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!134, !425, !381}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !449, file: !37, line: 1875, baseType: !497, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!134, !425, !381, !223}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !449, file: !37, line: 1876, baseType: !501, size: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!134, !425, !381, !315}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !449, file: !37, line: 1877, baseType: !493, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !449, file: !37, line: 1878, baseType: !506, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!134, !425, !381, !315, !509}
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !175, line: 16, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !175, line: 13, baseType: !414)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !449, file: !37, line: 1879, baseType: !512, size: 64, offset: 768)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!134, !425, !381, !425, !381, !7}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !449, file: !37, line: 1881, baseType: !516, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!134, !381, !519}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !530, !538, !539, !540}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !520, file: !37, line: 220, baseType: !7, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !520, file: !37, line: 221, baseType: !315, size: 16, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !520, file: !37, line: 222, baseType: !431, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !520, file: !37, line: 223, baseType: !439, size: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !520, file: !37, line: 224, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !175, line: 46, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !307, line: 88, baseType: !529)
!529 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !520, file: !37, line: 225, baseType: !531, size: 128, offset: 192)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !532, line: 13, size: 128, elements: !533)
!532 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!533 = !{!534, !537}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !531, file: !532, line: 14, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !532, line: 8, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !123, line: 30, baseType: !529)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !531, file: !532, line: 15, baseType: !309, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !520, file: !37, line: 226, baseType: !531, size: 128, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !520, file: !37, line: 227, baseType: !531, size: 128, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !520, file: !37, line: 234, baseType: !351, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !449, file: !37, line: 1882, baseType: !542, size: 64, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!134, !545, !547, !414, !7}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !549, line: 22, size: 1152, elements: !550)
!549 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!550 = !{!551, !552, !553, !554, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !548, file: !549, line: 23, baseType: !414, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !548, file: !549, line: 24, baseType: !315, size: 16, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !548, file: !549, line: 25, baseType: !7, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !548, file: !549, line: 26, baseType: !555, size: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !175, line: 104, baseType: !414)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !548, file: !549, line: 27, baseType: !418, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !548, file: !549, line: 28, baseType: !418, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !548, file: !549, line: 37, baseType: !418, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !548, file: !549, line: 38, baseType: !509, size: 32, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !548, file: !549, line: 39, baseType: !509, size: 32, offset: 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !548, file: !549, line: 40, baseType: !431, size: 32, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !548, file: !549, line: 41, baseType: !439, size: 32, offset: 416)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !548, file: !549, line: 42, baseType: !527, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !548, file: !549, line: 43, baseType: !531, size: 128, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !548, file: !549, line: 44, baseType: !531, size: 128, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !548, file: !549, line: 45, baseType: !531, size: 128, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !548, file: !549, line: 46, baseType: !531, size: 128, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !548, file: !549, line: 47, baseType: !418, size: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !548, file: !549, line: 48, baseType: !418, size: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !449, file: !37, line: 1883, baseType: !571, size: 64, offset: 960)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!305, !381, !189, !320}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !449, file: !37, line: 1884, baseType: !575, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!134, !425, !578, !418, !418}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !449, file: !37, line: 1886, baseType: !581, size: 64, offset: 1088)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!134, !425, !584, !134}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !449, file: !37, line: 1887, baseType: !586, size: 64, offset: 1152)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!134, !425, !381, !351, !7, !315}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !449, file: !37, line: 1890, baseType: !501, size: 64, offset: 1216)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !449, file: !37, line: 1891, baseType: !591, size: 64, offset: 1280)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!134, !425, !476, !134}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !426, file: !37, line: 623, baseType: !595, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !650, !2270, !2352, !2435, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2451, !2455, !2456, !2459, !2460, !2463, !2464, !2465, !2506, !2533, !2534, !2535, !2536, !2537, !2538, !2541, !2543, !2550, !2551, !2553, !2554, !2555, !2614, !2615, !2630, !2631, !2632, !2633, !2634, !2637, !2638, !2639, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !596, file: !37, line: 1417, baseType: !174, size: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !596, file: !37, line: 1418, baseType: !509, size: 32, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !596, file: !37, line: 1419, baseType: !124, size: 8, offset: 160)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !596, file: !37, line: 1420, baseType: !323, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !596, file: !37, line: 1421, baseType: !527, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !596, file: !37, line: 1422, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !606)
!606 = !{!607, !608, !609, !616, !620, !624, !628, !629, !630, !640, !643, !644, !645, !647, !648, !649}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !605, file: !37, line: 2229, baseType: !223, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !605, file: !37, line: 2230, baseType: !134, size: 32, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !605, file: !37, line: 2238, baseType: !610, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!134, !613}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !615, line: 28, flags: DIFlagFwdDecl)
!615 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!616 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !605, file: !37, line: 2239, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !605, file: !37, line: 2240, baseType: !621, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!381, !604, !134, !223, !109}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !605, file: !37, line: 2242, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !595}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !605, file: !37, line: 2243, baseType: !106, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !605, file: !37, line: 2244, baseType: !604, size: 64, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !605, file: !37, line: 2245, baseType: !631, size: 64, offset: 512)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !175, line: 182, size: 64, elements: !632)
!632 = !{!633}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !631, file: !175, line: 183, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !175, line: 186, size: 128, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !635, file: !175, line: 187, baseType: !634, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !635, file: !175, line: 187, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !605, file: !37, line: 2247, baseType: !641, offset: 576)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !642, line: 187, elements: !248)
!642 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !605, file: !37, line: 2248, baseType: !641, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !605, file: !37, line: 2249, baseType: !641, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !605, file: !37, line: 2250, baseType: !646, offset: 576)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, elements: !275)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !605, file: !37, line: 2252, baseType: !641, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !605, file: !37, line: 2253, baseType: !641, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !605, file: !37, line: 2254, baseType: !641, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !596, file: !37, line: 1423, baseType: !651, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !654)
!654 = !{!655, !659, !663, !664, !668, !674, !678, !679, !680, !684, !688, !689, !690, !691, !697, !702, !703, !710, !711, !712, !713, !2254, !2269}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !653, file: !37, line: 1936, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!425, !595}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !653, file: !37, line: 1937, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !425}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !653, file: !37, line: 1938, baseType: !660, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !653, file: !37, line: 1940, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !425, !134}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !653, file: !37, line: 1941, baseType: !669, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!134, !425, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !653, file: !37, line: 1942, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!134, !425}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !653, file: !37, line: 1943, baseType: !660, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !653, file: !37, line: 1944, baseType: !625, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !653, file: !37, line: 1945, baseType: !681, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!134, !595, !134}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !653, file: !37, line: 1946, baseType: !685, size: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!134, !595}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !653, file: !37, line: 1947, baseType: !685, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !653, file: !37, line: 1948, baseType: !685, size: 64, offset: 704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !653, file: !37, line: 1949, baseType: !685, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !653, file: !37, line: 1950, baseType: !692, size: 64, offset: 832)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!134, !381, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !653, file: !37, line: 1951, baseType: !698, size: 64, offset: 896)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!134, !595, !701, !189}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !653, file: !37, line: 1952, baseType: !625, size: 64, offset: 960)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !653, file: !37, line: 1954, baseType: !704, size: 64, offset: 1024)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!134, !707, !381}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !709, line: 539, flags: DIFlagFwdDecl)
!709 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !653, file: !37, line: 1955, baseType: !704, size: 64, offset: 1088)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !653, file: !37, line: 1956, baseType: !704, size: 64, offset: 1152)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !653, file: !37, line: 1957, baseType: !704, size: 64, offset: 1216)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !653, file: !37, line: 1963, baseType: !714, size: 64, offset: 1280)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!134, !595, !717, !740}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !719, line: 68, size: 512, align: 128, elements: !720)
!719 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722, !2246, !2253}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !719, line: 69, baseType: !323, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !719, line: 77, baseType: !723, size: 320, offset: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !719, line: 77, size: 320, elements: !724)
!724 = !{!725, !912, !917, !945, !953, !959, !2238, !2245}
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 78, baseType: !726, size: 320)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 78, size: 320, elements: !727)
!727 = !{!728, !729, !910, !911}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !726, file: !719, line: 84, baseType: !174, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !726, file: !719, line: 86, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !732)
!732 = !{!733, !734, !742, !743, !748, !763, !779, !780, !781, !782, !903, !904, !907, !908, !909}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !731, file: !37, line: 452, baseType: !425, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !731, file: !37, line: 453, baseType: !735, size: 128, offset: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !736, line: 292, size: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!737 = !{!738, !739, !741}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !735, file: !736, line: 293, baseType: !234)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !735, file: !736, line: 295, baseType: !740, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !175, line: 148, baseType: !7)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !735, file: !736, line: 296, baseType: !109, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !731, file: !37, line: 454, baseType: !740, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !731, file: !37, line: 455, baseType: !744, size: 32, offset: 224)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !175, line: 168, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 166, size: 32, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !745, file: !175, line: 167, baseType: !134, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !731, file: !37, line: 460, baseType: !749, size: 128, offset: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !750, line: 125, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !749, file: !750, line: 126, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !750, line: 31, size: 64, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !753, file: !750, line: 32, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !750, line: 24, size: 192, align: 64, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !757, file: !750, line: 25, baseType: !323, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !757, file: !750, line: 26, baseType: !756, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !757, file: !750, line: 27, baseType: !756, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !749, file: !750, line: 127, baseType: !756, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !731, file: !37, line: 461, baseType: !764, size: 256, offset: 384)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !765, line: 35, size: 256, elements: !766)
!765 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !775, !776, !778}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 36, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !769, line: 13, baseType: !770)
!769 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !175, line: 175, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 173, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !771, file: !175, line: 174, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !415, line: 22, baseType: !536)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !764, file: !765, line: 42, baseType: !768, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !764, file: !765, line: 46, baseType: !777, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !235, line: 29, baseType: !242)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !764, file: !765, line: 47, baseType: !174, size: 128, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !731, file: !37, line: 462, baseType: !323, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !731, file: !37, line: 463, baseType: !323, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !731, file: !37, line: 464, baseType: !323, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !731, file: !37, line: 465, baseType: !783, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !786)
!786 = !{!787, !791, !795, !799, !803, !807, !813, !819, !823, !828, !832, !836, !840, !867, !871, !877, !878, !879, !883, !888, !892, !899}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !785, file: !37, line: 368, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!134, !717, !672}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !785, file: !37, line: 369, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!134, !351, !717}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !785, file: !37, line: 372, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!134, !730, !672}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !785, file: !37, line: 375, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!134, !717}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !785, file: !37, line: 381, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!134, !351, !730, !178, !7}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !785, file: !37, line: 383, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !785, file: !37, line: 385, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!134, !351, !730, !527, !7, !7, !817, !818}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !785, file: !37, line: 388, baseType: !820, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!134, !351, !730, !527, !7, !7, !717, !109}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !785, file: !37, line: 393, baseType: !824, size: 64, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!827, !730, !827}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !175, line: 125, baseType: !418)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !785, file: !37, line: 394, baseType: !829, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !717, !7, !7}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !785, file: !37, line: 395, baseType: !833, size: 64, offset: 640)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!134, !717, !740}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !785, file: !37, line: 396, baseType: !837, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !717}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !785, file: !37, line: 397, baseType: !841, size: 64, offset: 768)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!305, !844, !865}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !846)
!846 = !{!847, !848, !849, !853, !854, !855, !857, !858}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !845, file: !37, line: 321, baseType: !351, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !845, file: !37, line: 326, baseType: !527, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !845, file: !37, line: 327, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !844, !309, !309}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !845, file: !37, line: 328, baseType: !109, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !845, file: !37, line: 329, baseType: !134, size: 32, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !845, file: !37, line: 330, baseType: !856, size: 16, offset: 288)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !415, line: 19, baseType: !151)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !845, file: !37, line: 331, baseType: !856, size: 16, offset: 304)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !37, line: 332, baseType: !859, size: 64, offset: 320)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !37, line: 332, size: 64, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !859, file: !37, line: 333, baseType: !7, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !859, file: !37, line: 334, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !785, file: !37, line: 402, baseType: !868, size: 64, offset: 832)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!134, !730, !717, !717, !12}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !785, file: !37, line: 404, baseType: !872, size: 64, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!486, !717, !875}
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !876, line: 305, baseType: !7)
!876 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!877 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !785, file: !37, line: 405, baseType: !837, size: 64, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !785, file: !37, line: 406, baseType: !800, size: 64, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !785, file: !37, line: 407, baseType: !880, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!134, !717, !323, !323}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !785, file: !37, line: 409, baseType: !884, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !717, !887, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !785, file: !37, line: 410, baseType: !889, size: 64, offset: 1216)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!134, !730, !717}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !785, file: !37, line: 413, baseType: !893, size: 64, offset: 1280)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!134, !896, !351, !898}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !785, file: !37, line: 415, baseType: !900, size: 64, offset: 1344)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !351}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !37, line: 466, baseType: !323, size: 64, offset: 896)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !731, file: !37, line: 467, baseType: !905, size: 32, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !906, line: 8, baseType: !414)
!906 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !731, file: !37, line: 468, baseType: !234, offset: 992)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !731, file: !37, line: 469, baseType: !174, size: 128, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !731, file: !37, line: 470, baseType: !109, size: 64, offset: 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !726, file: !719, line: 87, baseType: !323, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !726, file: !719, line: 94, baseType: !323, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 96, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 96, size: 64, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !913, file: !719, line: 101, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !175, line: 143, baseType: !418)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 103, baseType: !918, size: 320)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 103, size: 320, elements: !919)
!919 = !{!920, !930, !933, !934}
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !719, line: 104, baseType: !921, size: 128)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !719, line: 104, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !921, file: !719, line: 105, baseType: !174, size: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !719, line: 106, baseType: !925, size: 128)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !719, line: 106, size: 128, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !925, file: !719, line: 107, baseType: !717, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !925, file: !719, line: 109, baseType: !134, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !925, file: !719, line: 110, baseType: !134, size: 32, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !918, file: !719, line: 117, baseType: !931, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !719, line: 117, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !918, file: !719, line: 119, baseType: !109, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !719, line: 120, baseType: !935, size: 64, offset: 256)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !918, file: !719, line: 120, size: 64, elements: !936)
!936 = !{!937, !938, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !935, file: !719, line: 121, baseType: !109, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !935, file: !719, line: 122, baseType: !323, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !719, line: 123, baseType: !940, size: 32)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !719, line: 123, size: 32, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !940, file: !719, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !940, file: !719, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !940, file: !719, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 130, baseType: !946, size: 192)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 130, size: 192, elements: !947)
!947 = !{!948, !949, !950, !951, !952}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !946, file: !719, line: 131, baseType: !323, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !946, file: !719, line: 134, baseType: !124, size: 8, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !946, file: !719, line: 135, baseType: !124, size: 8, offset: 72)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !946, file: !719, line: 136, baseType: !744, size: 32, offset: 96)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !946, file: !719, line: 137, baseType: !7, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 139, baseType: !954, size: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 139, size: 256, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !954, file: !719, line: 140, baseType: !323, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !954, file: !719, line: 141, baseType: !744, size: 32, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !954, file: !719, line: 143, baseType: !174, size: 128, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 145, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 145, size: 256, elements: !961)
!961 = !{!962, !963, !965, !966, !2237}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !960, file: !719, line: 146, baseType: !323, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !960, file: !719, line: 147, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !709, line: 509, baseType: !717)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !960, file: !719, line: 148, baseType: !323, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !719, line: 149, baseType: !967, size: 64, offset: 192)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !960, file: !719, line: 149, size: 64, elements: !968)
!968 = !{!969, !2236}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !967, file: !719, line: 150, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !719, line: 388, size: 7296, elements: !972)
!972 = !{!973, !2232}
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !719, line: 389, baseType: !974, size: 7296)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !971, file: !719, line: 389, size: 7296, elements: !975)
!975 = !{!976, !1014, !1015, !1016, !1020, !1021, !1022, !1023, !1024, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1065, !1073, !1076, !1122, !1123, !2216, !2217, !2220, !2221, !2222, !2225, !2226, !2227, !2230, !2231}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !974, file: !719, line: 390, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !719, line: 305, size: 1472, elements: !979)
!979 = !{!980, !981, !982, !983, !984, !985, !986, !987, !994, !995, !1000, !1001, !1004, !1008, !1009, !1010, !1011, !1012}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !978, file: !719, line: 308, baseType: !323, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !978, file: !719, line: 309, baseType: !323, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !978, file: !719, line: 313, baseType: !977, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !978, file: !719, line: 313, baseType: !977, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !978, file: !719, line: 315, baseType: !757, size: 192, align: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !978, file: !719, line: 323, baseType: !323, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !978, file: !719, line: 327, baseType: !970, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !978, file: !719, line: 333, baseType: !988, size: 64, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !709, line: 284, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !709, line: 284, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !989, file: !709, line: 284, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !993, line: 19, baseType: !323)
!993 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !978, file: !719, line: 334, baseType: !323, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !978, file: !719, line: 343, baseType: !996, size: 256, offset: 704)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !719, line: 340, size: 256, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !996, file: !719, line: 341, baseType: !757, size: 192, align: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !996, file: !719, line: 342, baseType: !323, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !978, file: !719, line: 351, baseType: !174, size: 128, offset: 960)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !978, file: !719, line: 353, baseType: !1002, size: 64, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !719, line: 353, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !978, file: !719, line: 356, baseType: !1005, size: 64, offset: 1152)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !719, line: 356, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !978, file: !719, line: 359, baseType: !323, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !978, file: !719, line: 361, baseType: !351, size: 64, offset: 1280)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !978, file: !719, line: 362, baseType: !109, size: 64, offset: 1344)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !978, file: !719, line: 365, baseType: !768, size: 64, offset: 1408)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !978, file: !719, line: 373, baseType: !1013, offset: 1472)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !719, line: 296, elements: !248)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !974, file: !719, line: 391, baseType: !753, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !974, file: !719, line: 392, baseType: !418, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !974, file: !719, line: 394, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!323, !351, !323, !323, !323, !323}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !974, file: !719, line: 398, baseType: !323, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !974, file: !719, line: 399, baseType: !323, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !974, file: !719, line: 405, baseType: !323, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !974, file: !719, line: 406, baseType: !323, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !974, file: !719, line: 407, baseType: !1025, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !709, line: 286, baseType: !1027)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !709, line: 286, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1027, file: !709, line: 286, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !993, line: 18, baseType: !323)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !974, file: !719, line: 416, baseType: !744, size: 32, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !974, file: !719, line: 428, baseType: !744, size: 32, offset: 608)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !974, file: !719, line: 437, baseType: !744, size: 32, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !974, file: !719, line: 447, baseType: !744, size: 32, offset: 672)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !974, file: !719, line: 450, baseType: !768, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !974, file: !719, line: 452, baseType: !134, size: 32, offset: 768)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !974, file: !719, line: 454, baseType: !234, offset: 800)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !974, file: !719, line: 457, baseType: !764, size: 256, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !974, file: !719, line: 459, baseType: !174, size: 128, offset: 1088)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !974, file: !719, line: 466, baseType: !323, size: 64, offset: 1216)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !974, file: !719, line: 467, baseType: !323, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !974, file: !719, line: 469, baseType: !323, size: 64, offset: 1344)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !974, file: !719, line: 470, baseType: !323, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !974, file: !719, line: 471, baseType: !770, size: 64, offset: 1472)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !974, file: !719, line: 472, baseType: !323, size: 64, offset: 1536)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !974, file: !719, line: 473, baseType: !323, size: 64, offset: 1600)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !974, file: !719, line: 474, baseType: !323, size: 64, offset: 1664)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !974, file: !719, line: 475, baseType: !323, size: 64, offset: 1728)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !974, file: !719, line: 477, baseType: !234, offset: 1792)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !974, file: !719, line: 478, baseType: !323, size: 64, offset: 1792)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !974, file: !719, line: 478, baseType: !323, size: 64, offset: 1856)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !974, file: !719, line: 478, baseType: !323, size: 64, offset: 1920)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !974, file: !719, line: 478, baseType: !323, size: 64, offset: 1984)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !974, file: !719, line: 479, baseType: !323, size: 64, offset: 2048)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !974, file: !719, line: 479, baseType: !323, size: 64, offset: 2112)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !974, file: !719, line: 479, baseType: !323, size: 64, offset: 2176)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !974, file: !719, line: 480, baseType: !323, size: 64, offset: 2240)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !974, file: !719, line: 480, baseType: !323, size: 64, offset: 2304)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !974, file: !719, line: 480, baseType: !323, size: 64, offset: 2368)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !974, file: !719, line: 480, baseType: !323, size: 64, offset: 2432)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !974, file: !719, line: 482, baseType: !1062, size: 2816, offset: 2496)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 2816, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 44)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !974, file: !719, line: 488, baseType: !1066, size: 256, offset: 5312)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1067, line: 60, size: 256, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1066, file: !1067, line: 61, baseType: !1070, size: 256)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 256, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 4)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !974, file: !719, line: 490, baseType: !1074, size: 64, offset: 5568)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !719, line: 490, flags: DIFlagFwdDecl)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !974, file: !719, line: 493, baseType: !1077, size: 896, offset: 5632)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1078, line: 53, baseType: !1079)
!1078 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1078, line: 13, size: 896, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1087, !1088, !1095, !1096, !1116, !1117, !1118}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1079, file: !1078, line: 18, baseType: !418, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1079, file: !1078, line: 28, baseType: !770, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1079, file: !1078, line: 31, baseType: !764, size: 256, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1079, file: !1078, line: 32, baseType: !1085, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1078, line: 32, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1079, file: !1078, line: 37, baseType: !152, size: 16, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1079, file: !1078, line: 40, baseType: !1089, size: 192, offset: 512)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1090, line: 53, size: 192, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1089, file: !1090, line: 54, baseType: !768, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1089, file: !1090, line: 55, baseType: !234, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1089, file: !1090, line: 59, baseType: !174, size: 128, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1079, file: !1078, line: 41, baseType: !109, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1079, file: !1078, line: 42, baseType: !1097, size: 64, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1100, line: 13, size: 896, elements: !1101)
!1100 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1101 = !{!1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1099, file: !1100, line: 14, baseType: !109, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1099, file: !1100, line: 15, baseType: !323, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1099, file: !1100, line: 17, baseType: !323, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1099, file: !1100, line: 17, baseType: !323, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1099, file: !1100, line: 19, baseType: !309, size: 64, offset: 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1099, file: !1100, line: 21, baseType: !309, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1099, file: !1100, line: 22, baseType: !309, size: 64, offset: 384)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1099, file: !1100, line: 23, baseType: !309, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1099, file: !1100, line: 24, baseType: !309, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1099, file: !1100, line: 25, baseType: !309, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1099, file: !1100, line: 26, baseType: !309, size: 64, offset: 640)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1099, file: !1100, line: 27, baseType: !309, size: 64, offset: 704)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1099, file: !1100, line: 28, baseType: !309, size: 64, offset: 768)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1099, file: !1100, line: 29, baseType: !309, size: 64, offset: 832)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1079, file: !1078, line: 44, baseType: !744, size: 32, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1079, file: !1078, line: 50, baseType: !856, size: 16, offset: 864)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1079, file: !1078, line: 51, baseType: !1119, size: 16, offset: 880)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !415, line: 18, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !123, line: 23, baseType: !1121)
!1121 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !719, line: 495, baseType: !323, size: 64, offset: 6528)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !974, file: !719, line: 497, baseType: !1124, size: 64, offset: 6592)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !719, line: 381, size: 384, elements: !1126)
!1126 = !{!1127, !1128, !2215}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1125, file: !719, line: 382, baseType: !744, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1125, file: !719, line: 383, baseType: !1129, size: 128, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !719, line: 376, size: 128, elements: !1130)
!1130 = !{!1131, !2213}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1129, file: !719, line: 377, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1134, line: 640, size: 48640, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136, !1142, !1144, !1145, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1162, !1180, !1191, !1275, !1276, !1277, !1288, !1289, !1291, !1292, !1293, !1294, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1373, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1411, !1413, !1414, !1415, !1427, !1428, !1429, !1430, !1431, !1432, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1456, !1461, !1645, !1646, !1647, !1648, !1652, !1655, !1658, !1661, !1664, !1667, !1768, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1814, !1815, !1816, !1817, !1818, !1823, !1824, !1825, !1828, !1829, !1832, !1835, !1838, !1841, !1884, !1887, !1888, !1967, !1968, !1971, !1972, !1975, !1976, !1977, !1981, !1982, !1983, !1996, !1997, !1998, !2008, !2013, !2016, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1133, file: !1134, line: 646, baseType: !1137, size: 128)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1138, line: 56, size: 128, elements: !1139)
!1138 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1137, file: !1138, line: 57, baseType: !323, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1137, file: !1138, line: 58, baseType: !414, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1133, file: !1134, line: 649, baseType: !1143, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !309)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1133, file: !1134, line: 657, baseType: !109, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1133, file: !1134, line: 658, baseType: !1146, size: 32, offset: 256)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1147, line: 113, baseType: !1148)
!1147 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1147, line: 111, size: 32, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1148, file: !1147, line: 112, baseType: !744, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1133, file: !1134, line: 660, baseType: !7, size: 32, offset: 288)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1133, file: !1134, line: 661, baseType: !7, size: 32, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1133, file: !1134, line: 684, baseType: !134, size: 32, offset: 352)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1133, file: !1134, line: 686, baseType: !134, size: 32, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1133, file: !1134, line: 687, baseType: !134, size: 32, offset: 416)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1133, file: !1134, line: 688, baseType: !134, size: 32, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1133, file: !1134, line: 689, baseType: !7, size: 32, offset: 480)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1133, file: !1134, line: 691, baseType: !1159, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1161)
!1161 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1134, line: 691, flags: DIFlagFwdDecl)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1133, file: !1134, line: 692, baseType: !1163, size: 832, offset: 576)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1134, line: 451, size: 832, elements: !1164)
!1164 = !{!1165, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1163, file: !1134, line: 453, baseType: !1166, size: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1134, line: 325, size: 128, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1166, file: !1134, line: 326, baseType: !323, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1166, file: !1134, line: 327, baseType: !414, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1163, file: !1134, line: 454, baseType: !757, size: 192, align: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1163, file: !1134, line: 455, baseType: !174, size: 128, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1163, file: !1134, line: 456, baseType: !7, size: 32, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1163, file: !1134, line: 458, baseType: !418, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1163, file: !1134, line: 459, baseType: !418, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1163, file: !1134, line: 460, baseType: !418, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1163, file: !1134, line: 461, baseType: !418, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1163, file: !1134, line: 463, baseType: !418, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1163, file: !1134, line: 465, baseType: !1179, offset: 832)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1134, line: 415, elements: !248)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1133, file: !1134, line: 693, baseType: !1181, size: 384, offset: 1408)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1134, line: 489, size: 384, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1181, file: !1134, line: 490, baseType: !174, size: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1181, file: !1134, line: 491, baseType: !323, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1181, file: !1134, line: 492, baseType: !323, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1181, file: !1134, line: 493, baseType: !7, size: 32, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1181, file: !1134, line: 494, baseType: !152, size: 16, offset: 288)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1181, file: !1134, line: 495, baseType: !152, size: 16, offset: 304)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1181, file: !1134, line: 497, baseType: !1190, size: 64, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1133, file: !1134, line: 697, baseType: !1192, size: 1792, offset: 1792)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1134, line: 507, size: 1792, elements: !1193)
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1272, !1273}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1192, file: !1134, line: 508, baseType: !757, size: 192, align: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1192, file: !1134, line: 515, baseType: !418, size: 64, offset: 192)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1192, file: !1134, line: 516, baseType: !418, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1192, file: !1134, line: 517, baseType: !418, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1192, file: !1134, line: 518, baseType: !418, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1192, file: !1134, line: 519, baseType: !418, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1192, file: !1134, line: 526, baseType: !774, size: 64, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1192, file: !1134, line: 527, baseType: !418, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !1134, line: 528, baseType: !7, size: 32, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1192, file: !1134, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1192, file: !1134, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1192, file: !1134, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1192, file: !1134, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1192, file: !1134, line: 563, baseType: !1208, size: 512, offset: 704)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1209)
!1209 = !{!1210, !1218, !1219, !1224, !1267, !1269, !1270, !1271}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1208, file: !20, line: 119, baseType: !1211, size: 256)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1212, line: 9, size: 256, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1211, file: !1212, line: 10, baseType: !757, size: 192, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1211, file: !1212, line: 11, baseType: !1216, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1217, line: 29, baseType: !774)
!1217 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1208, file: !20, line: 120, baseType: !1216, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1208, file: !20, line: 121, baseType: !1220, size: 64, offset: 320)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!19, !1223}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1208, file: !20, line: 122, baseType: !1225, size: 64, offset: 384)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1227)
!1227 = !{!1228, !1248, !1249, !1252, !1257, !1258, !1262, !1266}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1226, file: !20, line: 160, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1230, file: !20, line: 215, baseType: !777)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1230, file: !20, line: 216, baseType: !7, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1230, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1230, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1230, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1230, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1230, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1230, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1230, file: !20, line: 233, baseType: !1216, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1230, file: !20, line: 234, baseType: !1223, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1230, file: !20, line: 235, baseType: !1216, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1230, file: !20, line: 236, baseType: !1223, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1230, file: !20, line: 237, baseType: !1245, size: 4096, offset: 512)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1226, size: 4096, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 8)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1226, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1226, file: !20, line: 162, baseType: !1250, size: 32, offset: 96)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !175, line: 27, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !307, line: 96, baseType: !134)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1226, file: !20, line: 163, baseType: !1253, size: 32, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !387, line: 276, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !387, line: 276, size: 32, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1254, file: !387, line: 276, baseType: !391, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1226, file: !20, line: 164, baseType: !1223, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1226, file: !20, line: 165, baseType: !1259, size: 128, offset: 256)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1212, line: 14, size: 128, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1259, file: !1212, line: 15, baseType: !749, size: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1226, file: !20, line: 166, baseType: !1263, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!1216}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1226, file: !20, line: 167, baseType: !1216, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1208, file: !20, line: 123, baseType: !1268, size: 8, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !415, line: 17, baseType: !122)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1208, file: !20, line: 124, baseType: !1268, size: 8, offset: 456)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1208, file: !20, line: 125, baseType: !1268, size: 8, offset: 464)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1208, file: !20, line: 126, baseType: !1268, size: 8, offset: 472)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1192, file: !1134, line: 572, baseType: !1208, size: 512, offset: 1216)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1192, file: !1134, line: 580, baseType: !1274, size: 64, offset: 1728)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1133, file: !1134, line: 721, baseType: !7, size: 32, offset: 3584)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1133, file: !1134, line: 722, baseType: !134, size: 32, offset: 3616)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1133, file: !1134, line: 723, baseType: !1278, size: 64, offset: 3648)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1280)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1281, line: 17, baseType: !1282)
!1281 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1281, line: 17, size: 64, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1282, file: !1281, line: 17, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 1)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1133, file: !1134, line: 724, baseType: !1280, size: 64, offset: 3712)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1133, file: !1134, line: 749, baseType: !1290, offset: 3776)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1134, line: 290, elements: !248)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1133, file: !1134, line: 751, baseType: !174, size: 128, offset: 3776)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1133, file: !1134, line: 757, baseType: !970, size: 64, offset: 3904)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1133, file: !1134, line: 758, baseType: !970, size: 64, offset: 3968)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1133, file: !1134, line: 761, baseType: !1295, size: 320, offset: 4032)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1067, line: 34, size: 320, elements: !1296)
!1296 = !{!1297, !1298}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1295, file: !1067, line: 35, baseType: !418, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1295, file: !1067, line: 36, baseType: !1299, size: 256, offset: 64)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 256, elements: !1071)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1133, file: !1134, line: 766, baseType: !134, size: 32, offset: 4352)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1133, file: !1134, line: 767, baseType: !134, size: 32, offset: 4384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1133, file: !1134, line: 768, baseType: !134, size: 32, offset: 4416)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1133, file: !1134, line: 770, baseType: !134, size: 32, offset: 4448)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1133, file: !1134, line: 772, baseType: !323, size: 64, offset: 4480)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1133, file: !1134, line: 775, baseType: !7, size: 32, offset: 4544)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1133, file: !1134, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1133, file: !1134, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1133, file: !1134, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1133, file: !1134, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1133, file: !1134, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1133, file: !1134, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1133, file: !1134, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1133, file: !1134, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1133, file: !1134, line: 831, baseType: !323, size: 64, offset: 4672)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1133, file: !1134, line: 833, baseType: !1316, size: 384, offset: 4736)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1317)
!1317 = !{!1318, !1323}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1316, file: !25, line: 26, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!309, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !25, line: 27, baseType: !1324, size: 320, offset: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !25, line: 27, size: 320, elements: !1325)
!1325 = !{!1326, !1336, !1363}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1324, file: !25, line: 36, baseType: !1327, size: 320)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !25, line: 29, size: 320, elements: !1328)
!1328 = !{!1329, !1331, !1332, !1333, !1334, !1335}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1327, file: !25, line: 30, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1327, file: !25, line: 31, baseType: !414, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1327, file: !25, line: 32, baseType: !414, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1327, file: !25, line: 33, baseType: !414, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1327, file: !25, line: 34, baseType: !418, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1327, file: !25, line: 35, baseType: !1330, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1324, file: !25, line: 46, baseType: !1337, size: 192)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !25, line: 38, size: 192, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1362}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1337, file: !25, line: 39, baseType: !1250, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1337, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !25, line: 41, baseType: !1342, size: 64, offset: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !25, line: 41, size: 64, elements: !1343)
!1343 = !{!1344, !1352}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1342, file: !25, line: 42, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1347, line: 7, size: 128, elements: !1348)
!1347 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1346, file: !1347, line: 8, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !307, line: 93, baseType: !529)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1346, file: !1347, line: 9, baseType: !529, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1342, file: !25, line: 43, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1355, line: 7, size: 64, elements: !1356)
!1355 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1356 = !{!1357, !1361}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1354, file: !1355, line: 8, baseType: !1358, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1355, line: 5, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !415, line: 20, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !123, line: 26, baseType: !134)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1354, file: !1355, line: 9, baseType: !1359, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1337, file: !25, line: 45, baseType: !418, size: 64, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1324, file: !25, line: 54, baseType: !1364, size: 256)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1324, file: !25, line: 48, size: 256, elements: !1365)
!1365 = !{!1366, !1369, !1370, !1371, !1372}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1364, file: !25, line: 49, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1364, file: !25, line: 50, baseType: !134, size: 32, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1364, file: !25, line: 51, baseType: !134, size: 32, offset: 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1364, file: !25, line: 52, baseType: !323, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1364, file: !25, line: 53, baseType: !323, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1133, file: !1134, line: 835, baseType: !1374, size: 32, offset: 5120)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !175, line: 22, baseType: !1375)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !307, line: 28, baseType: !134)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1133, file: !1134, line: 836, baseType: !1374, size: 32, offset: 5152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1133, file: !1134, line: 840, baseType: !323, size: 64, offset: 5184)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1133, file: !1134, line: 849, baseType: !1132, size: 64, offset: 5248)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1133, file: !1134, line: 852, baseType: !1132, size: 64, offset: 5312)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1133, file: !1134, line: 857, baseType: !174, size: 128, offset: 5376)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1133, file: !1134, line: 858, baseType: !174, size: 128, offset: 5504)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1133, file: !1134, line: 859, baseType: !1132, size: 64, offset: 5632)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1133, file: !1134, line: 867, baseType: !174, size: 128, offset: 5696)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1133, file: !1134, line: 868, baseType: !174, size: 128, offset: 5824)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1133, file: !1134, line: 871, baseType: !1386, size: 64, offset: 5952)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1394, !1395, !1402, !1403}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1387, file: !46, line: 61, baseType: !1146, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1387, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !46, line: 63, baseType: !234, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1387, file: !46, line: 65, baseType: !1393, size: 256, offset: 64)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 256, elements: !1071)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1387, file: !46, line: 66, baseType: !631, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1387, file: !46, line: 68, baseType: !1396, size: 128, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1397, line: 40, baseType: !1398)
!1397 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1397, line: 36, size: 128, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1398, file: !1397, line: 37, baseType: !234)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1398, file: !1397, line: 38, baseType: !174, size: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1387, file: !46, line: 69, baseType: !364, size: 128, align: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1387, file: !46, line: 70, baseType: !1404, size: 128, offset: 640)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1405, size: 128, elements: !1286)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1406)
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1405, file: !46, line: 55, baseType: !134, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1405, file: !46, line: 56, baseType: !1409, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1133, file: !1134, line: 872, baseType: !1412, size: 512, offset: 6016)
!1412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 512, elements: !1071)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1133, file: !1134, line: 873, baseType: !174, size: 128, offset: 6528)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1133, file: !1134, line: 874, baseType: !174, size: 128, offset: 6656)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1133, file: !1134, line: 876, baseType: !1416, size: 64, offset: 6784)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1418, line: 26, size: 192, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1417, file: !1418, line: 27, baseType: !7, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1417, file: !1418, line: 28, baseType: !1422, size: 128, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1423, line: 43, size: 128, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1422, file: !1423, line: 44, baseType: !777)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1422, file: !1423, line: 45, baseType: !174, size: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1133, file: !1134, line: 879, baseType: !701, size: 64, offset: 6848)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1133, file: !1134, line: 882, baseType: !701, size: 64, offset: 6912)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1133, file: !1134, line: 884, baseType: !418, size: 64, offset: 6976)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1133, file: !1134, line: 885, baseType: !418, size: 64, offset: 7040)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1133, file: !1134, line: 890, baseType: !418, size: 64, offset: 7104)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1133, file: !1134, line: 891, baseType: !1433, size: 128, offset: 7168)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1134, line: 242, size: 128, elements: !1434)
!1434 = !{!1435, !1436, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1433, file: !1134, line: 244, baseType: !418, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1433, file: !1134, line: 245, baseType: !418, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !1134, line: 246, baseType: !777, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1133, file: !1134, line: 900, baseType: !323, size: 64, offset: 7296)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1133, file: !1134, line: 901, baseType: !323, size: 64, offset: 7360)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1133, file: !1134, line: 904, baseType: !418, size: 64, offset: 7424)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1133, file: !1134, line: 907, baseType: !418, size: 64, offset: 7488)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1133, file: !1134, line: 910, baseType: !323, size: 64, offset: 7552)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1133, file: !1134, line: 911, baseType: !323, size: 64, offset: 7616)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1133, file: !1134, line: 914, baseType: !1445, size: 640, offset: 7680)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1446, line: 123, size: 640, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1454, !1455}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1445, file: !1446, line: 124, baseType: !1449, size: 576)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 576, elements: !275)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1446, line: 108, size: 192, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1450, file: !1446, line: 109, baseType: !418, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1450, file: !1446, line: 110, baseType: !1259, size: 128, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1445, file: !1446, line: 125, baseType: !7, size: 32, offset: 576)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1445, file: !1446, line: 126, baseType: !7, size: 32, offset: 608)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1133, file: !1134, line: 917, baseType: !1457, size: 192, offset: 8320)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1446, line: 134, size: 192, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1457, file: !1446, line: 135, baseType: !364, size: 128, align: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1457, file: !1446, line: 136, baseType: !7, size: 32, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1133, file: !1134, line: 923, baseType: !1462, size: 64, offset: 8512)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1465, line: 111, size: 1280, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1486, !1487, !1488, !1489, !1490, !1491, !1598, !1599, !1600, !1601, !1627, !1630, !1640}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1464, file: !1465, line: 112, baseType: !744, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1464, file: !1465, line: 120, baseType: !431, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1464, file: !1465, line: 121, baseType: !439, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1464, file: !1465, line: 122, baseType: !431, size: 32, offset: 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1464, file: !1465, line: 123, baseType: !439, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1464, file: !1465, line: 124, baseType: !431, size: 32, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1464, file: !1465, line: 125, baseType: !439, size: 32, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1464, file: !1465, line: 126, baseType: !431, size: 32, offset: 224)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1464, file: !1465, line: 127, baseType: !439, size: 32, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1464, file: !1465, line: 128, baseType: !7, size: 32, offset: 288)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1464, file: !1465, line: 129, baseType: !1478, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1479, line: 26, baseType: !1480)
!1479 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1479, line: 24, size: 64, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1480, file: !1479, line: 25, baseType: !1483, size: 64)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !1484)
!1484 = !{!1485}
!1485 = !DISubrange(count: 2)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1464, file: !1465, line: 130, baseType: !1478, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1464, file: !1465, line: 131, baseType: !1478, size: 64, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1464, file: !1465, line: 132, baseType: !1478, size: 64, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1464, file: !1465, line: 133, baseType: !1478, size: 64, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1464, file: !1465, line: 135, baseType: !124, size: 8, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1464, file: !1465, line: 137, baseType: !1492, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1494, line: 189, size: 1664, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1495 = !{!1496, !1497, !1500, !1505, !1506, !1509, !1510, !1515, !1516, !1517, !1518, !1520, !1521, !1522, !1523, !1524, !1562, !1583}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1493, file: !1494, line: 190, baseType: !1146, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1493, file: !1494, line: 191, baseType: !1498, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1494, line: 28, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !175, line: 98, baseType: !1359)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 192, baseType: !1501, size: 192, offset: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 192, size: 192, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1501, file: !1494, line: 193, baseType: !174, size: 128)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1501, file: !1494, line: 194, baseType: !757, size: 192, align: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1493, file: !1494, line: 199, baseType: !764, size: 256, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1493, file: !1494, line: 200, baseType: !1507, size: 64, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1494, line: 200, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1493, file: !1494, line: 201, baseType: !109, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 202, baseType: !1511, size: 64, offset: 640)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 202, size: 64, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1511, file: !1494, line: 203, baseType: !535, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1511, file: !1494, line: 204, baseType: !535, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1493, file: !1494, line: 206, baseType: !535, size: 64, offset: 704)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1493, file: !1494, line: 207, baseType: !431, size: 32, offset: 768)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1493, file: !1494, line: 208, baseType: !439, size: 32, offset: 800)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1493, file: !1494, line: 209, baseType: !1519, size: 32, offset: 832)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1494, line: 31, baseType: !555)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1493, file: !1494, line: 210, baseType: !152, size: 16, offset: 864)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1493, file: !1494, line: 211, baseType: !152, size: 16, offset: 880)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1493, file: !1494, line: 215, baseType: !1121, size: 16, offset: 896)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1493, file: !1494, line: 222, baseType: !323, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 239, baseType: !1525, size: 320, offset: 1024)
!1525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 239, size: 320, elements: !1526)
!1526 = !{!1527, !1554}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1525, file: !1494, line: 240, baseType: !1528, size: 320)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1494, line: 108, size: 320, elements: !1529)
!1529 = !{!1530, !1531, !1543, !1546, !1553}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1528, file: !1494, line: 110, baseType: !323, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !1494, line: 111, baseType: !1532, size: 64, offset: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !1494, line: 111, size: 64, elements: !1533)
!1533 = !{!1534, !1542}
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1494, line: 112, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1532, file: !1494, line: 112, size: 64, elements: !1536)
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1535, file: !1494, line: 114, baseType: !856, size: 16)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1535, file: !1494, line: 115, baseType: !1539, size: 48, offset: 16)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 48, elements: !1540)
!1540 = !{!1541}
!1541 = !DISubrange(count: 6)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1532, file: !1494, line: 121, baseType: !323, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1528, file: !1494, line: 123, baseType: !1544, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1494, line: 96, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1528, file: !1494, line: 124, baseType: !1547, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1494, line: 102, size: 192, elements: !1549)
!1549 = !{!1550, !1551, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1548, file: !1494, line: 103, baseType: !364, size: 128, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1548, file: !1494, line: 104, baseType: !1146, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1548, file: !1494, line: 105, baseType: !486, size: 8, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1528, file: !1494, line: 125, baseType: !223, size: 64, offset: 256)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1525, file: !1494, line: 241, baseType: !1555, size: 320)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1525, file: !1494, line: 241, size: 320, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1560, !1561}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1555, file: !1494, line: 242, baseType: !323, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1555, file: !1494, line: 243, baseType: !323, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1555, file: !1494, line: 244, baseType: !1544, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1555, file: !1494, line: 245, baseType: !1547, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1555, file: !1494, line: 246, baseType: !189, size: 64, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 254, baseType: !1563, size: 256, offset: 1344)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 254, size: 256, elements: !1564)
!1564 = !{!1565, !1571}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1563, file: !1494, line: 255, baseType: !1566, size: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1494, line: 128, size: 256, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1566, file: !1494, line: 129, baseType: !109, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1566, file: !1494, line: 130, baseType: !1570, size: 256)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !1071)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !1494, line: 256, baseType: !1572, size: 256)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !1494, line: 256, size: 256, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1572, file: !1494, line: 258, baseType: !174, size: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1572, file: !1494, line: 259, baseType: !1576, size: 128, offset: 128)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1577, line: 22, size: 128, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1582}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1576, file: !1577, line: 23, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1577, line: 23, flags: DIFlagFwdDecl)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1576, file: !1577, line: 24, baseType: !323, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1493, file: !1494, line: 274, baseType: !1584, size: 64, offset: 1600)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1494, line: 170, size: 192, elements: !1586)
!1586 = !{!1587, !1596, !1597}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1585, file: !1494, line: 171, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1494, line: 165, baseType: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!134, !1492, !1592, !1594, !1492}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1585, file: !1494, line: 172, baseType: !1492, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1585, file: !1494, line: 173, baseType: !1544, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1464, file: !1465, line: 138, baseType: !1492, size: 64, offset: 768)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1464, file: !1465, line: 139, baseType: !1492, size: 64, offset: 832)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1464, file: !1465, line: 140, baseType: !1492, size: 64, offset: 896)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1464, file: !1465, line: 145, baseType: !1602, size: 64, offset: 960)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1604, line: 13, size: 896, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1603, file: !1604, line: 14, baseType: !1146, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1603, file: !1604, line: 15, baseType: !744, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1603, file: !1604, line: 16, baseType: !744, size: 32, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1603, file: !1604, line: 21, baseType: !768, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1603, file: !1604, line: 27, baseType: !323, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1603, file: !1604, line: 28, baseType: !323, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1603, file: !1604, line: 29, baseType: !768, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1603, file: !1604, line: 32, baseType: !635, size: 128, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1603, file: !1604, line: 33, baseType: !431, size: 32, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1603, file: !1604, line: 37, baseType: !768, size: 64, offset: 576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1603, file: !1604, line: 44, baseType: !1617, size: 256, offset: 640)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1618, line: 15, size: 256, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1617, file: !1618, line: 16, baseType: !777)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1617, file: !1618, line: 18, baseType: !134, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1617, file: !1618, line: 19, baseType: !134, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1617, file: !1618, line: 20, baseType: !134, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1617, file: !1618, line: 21, baseType: !134, size: 32, offset: 96)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1617, file: !1618, line: 22, baseType: !323, size: 64, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 23, baseType: !323, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1464, file: !1465, line: 146, baseType: !1628, size: 64, offset: 1024)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !432, line: 18, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1464, file: !1465, line: 147, baseType: !1631, size: 64, offset: 1088)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1465, line: 25, size: 64, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1632, file: !1465, line: 26, baseType: !744, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1632, file: !1465, line: 27, baseType: !134, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1632, file: !1465, line: 28, baseType: !1637, offset: 64)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 0)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1465, line: 149, baseType: !1641, size: 128, offset: 1152)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !1465, line: 149, size: 128, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1641, file: !1465, line: 150, baseType: !134, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1641, file: !1465, line: 151, baseType: !364, size: 128, align: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1133, file: !1134, line: 926, baseType: !1462, size: 64, offset: 8576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1133, file: !1134, line: 929, baseType: !1462, size: 64, offset: 8640)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1133, file: !1134, line: 933, baseType: !1492, size: 64, offset: 8704)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1133, file: !1134, line: 943, baseType: !1649, size: 128, offset: 8768)
!1649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !1650)
!1650 = !{!1651}
!1651 = !DISubrange(count: 16)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1133, file: !1134, line: 945, baseType: !1653, size: 64, offset: 8896)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1134, line: 49, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1133, file: !1134, line: 956, baseType: !1656, size: 64, offset: 8960)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1134, line: 45, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1133, file: !1134, line: 959, baseType: !1659, size: 64, offset: 9024)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1134, line: 959, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1133, file: !1134, line: 962, baseType: !1662, size: 64, offset: 9088)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1134, line: 66, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1133, file: !1134, line: 966, baseType: !1665, size: 64, offset: 9152)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1134, line: 50, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1133, file: !1134, line: 969, baseType: !1668, size: 64, offset: 9216)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1670, line: 82, size: 7296, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1707, !1716, !1717, !1719, !1720, !1721, !1724, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1754, !1755, !1762, !1763, !1764, !1765, !1766, !1767}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1669, file: !1670, line: 83, baseType: !1146, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1669, file: !1670, line: 84, baseType: !744, size: 32, offset: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1669, file: !1670, line: 85, baseType: !134, size: 32, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1669, file: !1670, line: 86, baseType: !174, size: 128, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1669, file: !1670, line: 88, baseType: !1396, size: 128, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1669, file: !1670, line: 91, baseType: !1132, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1669, file: !1670, line: 94, baseType: !1679, size: 192, offset: 448)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1680, line: 30, size: 192, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1679, file: !1680, line: 31, baseType: !174, size: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1679, file: !1680, line: 32, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1685, line: 25, baseType: !1686)
!1685 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1685, line: 23, size: 64, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1686, file: !1685, line: 24, baseType: !1285, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1669, file: !1670, line: 97, baseType: !631, size: 64, offset: 640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1669, file: !1670, line: 100, baseType: !134, size: 32, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1669, file: !1670, line: 106, baseType: !134, size: 32, offset: 736)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1669, file: !1670, line: 107, baseType: !1132, size: 64, offset: 768)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1669, file: !1670, line: 110, baseType: !134, size: 32, offset: 832)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1669, file: !1670, line: 111, baseType: !7, size: 32, offset: 864)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1669, file: !1670, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1669, file: !1670, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1669, file: !1670, line: 128, baseType: !134, size: 32, offset: 928)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1669, file: !1670, line: 129, baseType: !174, size: 128, offset: 960)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1669, file: !1670, line: 132, baseType: !1208, size: 512, offset: 1088)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1669, file: !1670, line: 133, baseType: !1216, size: 64, offset: 1600)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1669, file: !1670, line: 140, baseType: !1702, size: 256, offset: 1664)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 256, elements: !1484)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1670, line: 38, size: 128, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1703, file: !1670, line: 39, baseType: !418, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1703, file: !1670, line: 40, baseType: !418, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1669, file: !1670, line: 146, baseType: !1708, size: 192, offset: 1920)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1670, line: 66, size: 192, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1708, file: !1670, line: 67, baseType: !1711, size: 192)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1670, line: 47, size: 192, elements: !1712)
!1712 = !{!1713, !1714, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1711, file: !1670, line: 48, baseType: !770, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1711, file: !1670, line: 49, baseType: !770, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1711, file: !1670, line: 50, baseType: !770, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1669, file: !1670, line: 150, baseType: !1445, size: 640, offset: 2112)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1669, file: !1670, line: 153, baseType: !1718, size: 256, offset: 2752)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 256, elements: !1071)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1669, file: !1670, line: 159, baseType: !1386, size: 64, offset: 3008)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1669, file: !1670, line: 162, baseType: !134, size: 32, offset: 3072)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1669, file: !1670, line: 164, baseType: !1722, size: 64, offset: 3136)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1670, line: 164, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1669, file: !1670, line: 175, baseType: !1725, size: 32, offset: 3200)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !387, line: 805, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 798, size: 32, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1726, file: !387, line: 803, baseType: !386, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1726, file: !387, line: 804, baseType: !234, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1669, file: !1670, line: 176, baseType: !418, size: 64, offset: 3264)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1669, file: !1670, line: 176, baseType: !418, size: 64, offset: 3328)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1669, file: !1670, line: 176, baseType: !418, size: 64, offset: 3392)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1669, file: !1670, line: 176, baseType: !418, size: 64, offset: 3456)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1669, file: !1670, line: 177, baseType: !418, size: 64, offset: 3520)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1669, file: !1670, line: 178, baseType: !418, size: 64, offset: 3584)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1669, file: !1670, line: 179, baseType: !1433, size: 128, offset: 3648)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1669, file: !1670, line: 180, baseType: !323, size: 64, offset: 3776)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1669, file: !1670, line: 180, baseType: !323, size: 64, offset: 3840)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1669, file: !1670, line: 180, baseType: !323, size: 64, offset: 3904)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1669, file: !1670, line: 180, baseType: !323, size: 64, offset: 3968)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1669, file: !1670, line: 181, baseType: !323, size: 64, offset: 4032)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1669, file: !1670, line: 181, baseType: !323, size: 64, offset: 4096)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1669, file: !1670, line: 181, baseType: !323, size: 64, offset: 4160)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1669, file: !1670, line: 181, baseType: !323, size: 64, offset: 4224)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1669, file: !1670, line: 182, baseType: !323, size: 64, offset: 4288)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1669, file: !1670, line: 182, baseType: !323, size: 64, offset: 4352)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1669, file: !1670, line: 182, baseType: !323, size: 64, offset: 4416)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1669, file: !1670, line: 182, baseType: !323, size: 64, offset: 4480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1669, file: !1670, line: 183, baseType: !323, size: 64, offset: 4544)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1669, file: !1670, line: 183, baseType: !323, size: 64, offset: 4608)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1669, file: !1670, line: 184, baseType: !1752, offset: 4672)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1753, line: 12, elements: !248)
!1753 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1669, file: !1670, line: 192, baseType: !420, size: 64, offset: 4672)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1669, file: !1670, line: 203, baseType: !1756, size: 2048, offset: 4736)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1757, size: 2048, elements: !1650)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1758, line: 43, size: 128, elements: !1759)
!1758 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1757, file: !1758, line: 44, baseType: !322, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1757, file: !1758, line: 45, baseType: !322, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1669, file: !1670, line: 220, baseType: !486, size: 8, offset: 6784)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1669, file: !1670, line: 221, baseType: !1121, size: 16, offset: 6800)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1669, file: !1670, line: 222, baseType: !1121, size: 16, offset: 6816)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1669, file: !1670, line: 224, baseType: !970, size: 64, offset: 6848)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1669, file: !1670, line: 227, baseType: !1089, size: 192, offset: 6912)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1669, file: !1670, line: 233, baseType: !1089, size: 192, offset: 7104)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1133, file: !1134, line: 970, baseType: !1769, size: 64, offset: 9280)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1670, line: 20, size: 16576, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1770, file: !1670, line: 21, baseType: !234)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1770, file: !1670, line: 22, baseType: !1146, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1770, file: !1670, line: 23, baseType: !1396, size: 128, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1770, file: !1670, line: 24, baseType: !1776, size: 16384, offset: 192)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1777, size: 16384, elements: !279)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1680, line: 49, size: 256, elements: !1778)
!1778 = !{!1779}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1777, file: !1680, line: 50, baseType: !1780, size: 256)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1680, line: 35, size: 256, elements: !1781)
!1781 = !{!1782, !1789, !1790, !1796}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1780, file: !1680, line: 37, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1784, line: 19, baseType: !1785)
!1784 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1784, line: 18, baseType: !1787)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !134}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1780, file: !1680, line: 38, baseType: !323, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1780, file: !1680, line: 44, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1784, line: 22, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1784, line: 21, baseType: !1794)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1780, file: !1680, line: 46, baseType: !1684, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1133, file: !1134, line: 971, baseType: !1684, size: 64, offset: 9344)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1133, file: !1134, line: 972, baseType: !1684, size: 64, offset: 9408)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1133, file: !1134, line: 974, baseType: !1684, size: 64, offset: 9472)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1133, file: !1134, line: 975, baseType: !1679, size: 192, offset: 9536)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1133, file: !1134, line: 976, baseType: !323, size: 64, offset: 9728)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1133, file: !1134, line: 977, baseType: !320, size: 64, offset: 9792)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1133, file: !1134, line: 978, baseType: !7, size: 32, offset: 9856)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1133, file: !1134, line: 980, baseType: !367, size: 64, offset: 9920)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1133, file: !1134, line: 989, baseType: !1806, size: 128, offset: 9984)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1807, line: 35, size: 128, elements: !1808)
!1807 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1806, file: !1807, line: 36, baseType: !134, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1806, file: !1807, line: 37, baseType: !744, size: 32, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1806, file: !1807, line: 38, baseType: !1812, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1807, line: 23, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1133, file: !1134, line: 992, baseType: !418, size: 64, offset: 10112)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1133, file: !1134, line: 993, baseType: !418, size: 64, offset: 10176)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1133, file: !1134, line: 996, baseType: !234, offset: 10240)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1133, file: !1134, line: 999, baseType: !777, offset: 10240)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1133, file: !1134, line: 1001, baseType: !1819, size: 64, offset: 10240)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1134, line: 636, size: 64, elements: !1820)
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1819, file: !1134, line: 637, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1133, file: !1134, line: 1005, baseType: !749, size: 128, offset: 10304)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1133, file: !1134, line: 1007, baseType: !1132, size: 64, offset: 10432)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1133, file: !1134, line: 1009, baseType: !1826, size: 64, offset: 10496)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1134, line: 1009, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1133, file: !1134, line: 1043, baseType: !109, size: 64, offset: 10560)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1133, file: !1134, line: 1046, baseType: !1830, size: 64, offset: 10624)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1134, line: 41, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1133, file: !1134, line: 1050, baseType: !1833, size: 64, offset: 10688)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1134, line: 42, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1133, file: !1134, line: 1054, baseType: !1836, size: 64, offset: 10752)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1134, line: 55, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1133, file: !1134, line: 1056, baseType: !1839, size: 64, offset: 10816)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1134, line: 40, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1133, file: !1134, line: 1058, baseType: !1842, size: 64, offset: 10880)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1844, line: 99, size: 704, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !{!1846, !1847, !1848, !1849, !1850, !1851, !1852, !1871, !1872}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1843, file: !1844, line: 100, baseType: !768, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1843, file: !1844, line: 101, baseType: !744, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1843, file: !1844, line: 102, baseType: !744, size: 32, offset: 96)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1843, file: !1844, line: 105, baseType: !234, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1843, file: !1844, line: 107, baseType: !152, size: 16, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1843, file: !1844, line: 109, baseType: !735, size: 128, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1843, file: !1844, line: 110, baseType: !1853, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1844, line: 73, size: 448, elements: !1855)
!1855 = !{!1856, !1859, !1860, !1865, !1870}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1854, file: !1844, line: 74, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1844, line: 74, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1854, file: !1844, line: 75, baseType: !1842, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1844, line: 83, baseType: !1861, size: 128, offset: 128)
!1861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1844, line: 83, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1861, file: !1844, line: 84, baseType: !174, size: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1861, file: !1844, line: 85, baseType: !931, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1844, line: 87, baseType: !1866, size: 128, offset: 256)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1844, line: 87, size: 128, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1866, file: !1844, line: 88, baseType: !635, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1866, file: !1844, line: 89, baseType: !364, size: 128, align: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1854, file: !1844, line: 92, baseType: !7, size: 32, offset: 384)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1843, file: !1844, line: 111, baseType: !631, size: 64, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1843, file: !1844, line: 113, baseType: !1873, size: 256, offset: 448)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1874, line: 102, size: 256, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1873, file: !1874, line: 103, baseType: !768, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1873, file: !1874, line: 104, baseType: !174, size: 128, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1873, file: !1874, line: 105, baseType: !1879, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1874, line: 21, baseType: !1880)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1883}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1133, file: !1134, line: 1061, baseType: !1885, size: 64, offset: 10944)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1134, line: 43, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1133, file: !1134, line: 1064, baseType: !323, size: 64, offset: 11008)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1133, file: !1134, line: 1065, baseType: !1889, size: 64, offset: 11072)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1680, line: 14, baseType: !1891)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1680, line: 12, size: 384, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1891, file: !1680, line: 13, baseType: !1894, size: 384)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1680, line: 13, size: 384, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1894, file: !1680, line: 13, baseType: !134, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1894, file: !1680, line: 13, baseType: !134, size: 32, offset: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1894, file: !1680, line: 13, baseType: !134, size: 32, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1894, file: !1680, line: 13, baseType: !1900, size: 256, offset: 128)
!1900 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1901, line: 32, size: 256, elements: !1902)
!1901 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1908, !1921, !1927, !1936, !1956, !1961}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1900, file: !1901, line: 37, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1901, line: 34, size: 64, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1904, file: !1901, line: 35, baseType: !1375, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1904, file: !1901, line: 36, baseType: !437, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1900, file: !1901, line: 45, baseType: !1909, size: 192)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1901, line: 40, size: 192, elements: !1910)
!1910 = !{!1911, !1913, !1914, !1920}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1909, file: !1901, line: 41, baseType: !1912, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !307, line: 95, baseType: !134)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1909, file: !1901, line: 42, baseType: !134, size: 32, offset: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1909, file: !1901, line: 43, baseType: !1915, size: 64, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1901, line: 11, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1901, line: 8, size: 64, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1916, file: !1901, line: 9, baseType: !134, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1916, file: !1901, line: 10, baseType: !109, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1909, file: !1901, line: 44, baseType: !134, size: 32, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1900, file: !1901, line: 52, baseType: !1922, size: 128)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1901, line: 48, size: 128, elements: !1923)
!1923 = !{!1924, !1925, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1922, file: !1901, line: 49, baseType: !1375, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1922, file: !1901, line: 50, baseType: !437, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1922, file: !1901, line: 51, baseType: !1915, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1900, file: !1901, line: 61, baseType: !1928, size: 256)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1901, line: 55, size: 256, elements: !1929)
!1929 = !{!1930, !1931, !1932, !1933, !1935}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1928, file: !1901, line: 56, baseType: !1375, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1928, file: !1901, line: 57, baseType: !437, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1928, file: !1901, line: 58, baseType: !134, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1928, file: !1901, line: 59, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !307, line: 94, baseType: !308)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1928, file: !1901, line: 60, baseType: !1934, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1900, file: !1901, line: 95, baseType: !1937, size: 256)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1901, line: 64, size: 256, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1937, file: !1901, line: 65, baseType: !109, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !1901, line: 77, baseType: !1941, size: 192, offset: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1937, file: !1901, line: 77, size: 192, elements: !1942)
!1942 = !{!1943, !1944, !1951}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1941, file: !1901, line: 82, baseType: !1121, size: 16)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1941, file: !1901, line: 88, baseType: !1945, size: 192)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1901, line: 84, size: 192, elements: !1946)
!1946 = !{!1947, !1949, !1950}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1945, file: !1901, line: 85, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !1246)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1945, file: !1901, line: 86, baseType: !109, size: 64, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1945, file: !1901, line: 87, baseType: !109, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1941, file: !1901, line: 93, baseType: !1952, size: 96)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1901, line: 90, size: 96, elements: !1953)
!1953 = !{!1954, !1955}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1952, file: !1901, line: 91, baseType: !1948, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1952, file: !1901, line: 92, baseType: !172, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1900, file: !1901, line: 101, baseType: !1957, size: 128)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1901, line: 98, size: 128, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1957, file: !1901, line: 99, baseType: !309, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1957, file: !1901, line: 100, baseType: !134, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1900, file: !1901, line: 108, baseType: !1962, size: 128)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1900, file: !1901, line: 104, size: 128, elements: !1963)
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1962, file: !1901, line: 105, baseType: !109, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1962, file: !1901, line: 106, baseType: !134, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1962, file: !1901, line: 107, baseType: !7, size: 32, offset: 96)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1133, file: !1134, line: 1067, baseType: !1752, offset: 11136)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1133, file: !1134, line: 1099, baseType: !1969, size: 64, offset: 11136)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1134, line: 56, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1133, file: !1134, line: 1103, baseType: !174, size: 128, offset: 11200)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1133, file: !1134, line: 1104, baseType: !1973, size: 64, offset: 11328)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1134, line: 46, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1133, file: !1134, line: 1105, baseType: !1089, size: 192, offset: 11392)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1133, file: !1134, line: 1106, baseType: !7, size: 32, offset: 11584)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1133, file: !1134, line: 1109, baseType: !1978, size: 128, offset: 11648)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1979, size: 128, elements: !1484)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1134, line: 51, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1133, file: !1134, line: 1110, baseType: !1089, size: 192, offset: 11776)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1133, file: !1134, line: 1111, baseType: !174, size: 128, offset: 11968)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1133, file: !1134, line: 1173, baseType: !1984, size: 64, offset: 12096)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1986, line: 62, size: 256, align: 256, elements: !1987)
!1986 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1987 = !{!1988, !1989, !1990, !1995}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1985, file: !1986, line: 75, baseType: !172, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1985, file: !1986, line: 90, baseType: !172, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1985, file: !1986, line: 124, baseType: !1991, size: 64, offset: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !1986, line: 109, size: 64, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1991, file: !1986, line: 110, baseType: !419, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1991, file: !1986, line: 112, baseType: !419, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1986, line: 144, baseType: !172, size: 32, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1133, file: !1134, line: 1174, baseType: !414, size: 32, offset: 12160)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1133, file: !1134, line: 1179, baseType: !323, size: 64, offset: 12224)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1133, file: !1134, line: 1182, baseType: !1999, size: 128, offset: 12288)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1067, line: 76, size: 128, elements: !2000)
!2000 = !{!2001, !2006, !2007}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1999, file: !1067, line: 85, baseType: !2002, size: 64)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2003, line: 7, size: 64, elements: !2004)
!2003 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2004 = !{!2005}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2002, file: !2003, line: 12, baseType: !1282, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1999, file: !1067, line: 88, baseType: !486, size: 8, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1999, file: !1067, line: 95, baseType: !486, size: 8, offset: 72)
!2008 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !1134, line: 1184, baseType: !2009, size: 128, offset: 12416)
!2009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !1134, line: 1184, size: 128, elements: !2010)
!2010 = !{!2011, !2012}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2009, file: !1134, line: 1185, baseType: !1146, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2009, file: !1134, line: 1186, baseType: !364, size: 128, align: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1133, file: !1134, line: 1190, baseType: !2014, size: 64, offset: 12544)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1134, line: 53, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1133, file: !1134, line: 1192, baseType: !2017, size: 128, offset: 12608)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1067, line: 64, size: 128, elements: !2018)
!2018 = !{!2019, !2020, !2021}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2017, file: !1067, line: 65, baseType: !717, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2017, file: !1067, line: 67, baseType: !172, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2017, file: !1067, line: 68, baseType: !172, size: 32, offset: 96)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1133, file: !1134, line: 1206, baseType: !134, size: 32, offset: 12736)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1133, file: !1134, line: 1207, baseType: !134, size: 32, offset: 12768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1133, file: !1134, line: 1209, baseType: !323, size: 64, offset: 12800)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1133, file: !1134, line: 1219, baseType: !418, size: 64, offset: 12864)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1133, file: !1134, line: 1220, baseType: !418, size: 64, offset: 12928)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1133, file: !1134, line: 1317, baseType: !134, size: 32, offset: 12992)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1133, file: !1134, line: 1319, baseType: !1132, size: 64, offset: 13056)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1133, file: !1134, line: 1322, baseType: !2030, size: 64, offset: 13120)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1134, line: 1322, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1133, file: !1134, line: 1326, baseType: !1146, size: 32, offset: 13184)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1133, file: !1134, line: 1342, baseType: !109, size: 64, offset: 13248)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1133, file: !1134, line: 1343, baseType: !419, size: 64, offset: 13312)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1133, file: !1134, line: 1344, baseType: !418, size: 64, offset: 13376)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1133, file: !1134, line: 1345, baseType: !419, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1133, file: !1134, line: 1346, baseType: !419, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1133, file: !1134, line: 1347, baseType: !419, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1133, file: !1134, line: 1348, baseType: !364, size: 128, align: 64, offset: 13504)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1133, file: !1134, line: 1358, baseType: !2041, size: 34816, offset: 13824)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2042, line: 485, size: 34816, elements: !2043)
!2042 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2043 = !{!2044, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2073, !2074, !2075, !2076, !2077, !2078, !2081, !2082, !2083}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2041, file: !2042, line: 487, baseType: !2045, size: 192)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 192, elements: !275)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2047, line: 16, size: 64, elements: !2048)
!2047 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2048 = !{!2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2046, file: !2047, line: 17, baseType: !856, size: 16)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2046, file: !2047, line: 18, baseType: !856, size: 16, offset: 16)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2046, file: !2047, line: 19, baseType: !856, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2046, file: !2047, line: 19, baseType: !856, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2046, file: !2047, line: 19, baseType: !856, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2046, file: !2047, line: 19, baseType: !856, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2046, file: !2047, line: 19, baseType: !856, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2046, file: !2047, line: 20, baseType: !856, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2046, file: !2047, line: 20, baseType: !856, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2046, file: !2047, line: 20, baseType: !856, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2046, file: !2047, line: 20, baseType: !856, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2046, file: !2047, line: 20, baseType: !856, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2046, file: !2047, line: 20, baseType: !856, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2041, file: !2042, line: 491, baseType: !323, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2041, file: !2042, line: 495, baseType: !152, size: 16, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2041, file: !2042, line: 496, baseType: !152, size: 16, offset: 272)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2041, file: !2042, line: 497, baseType: !152, size: 16, offset: 288)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2041, file: !2042, line: 498, baseType: !152, size: 16, offset: 304)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2041, file: !2042, line: 502, baseType: !323, size: 64, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2041, file: !2042, line: 503, baseType: !323, size: 64, offset: 384)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2041, file: !2042, line: 514, baseType: !2070, size: 256, offset: 448)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 256, elements: !1071)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2042, line: 483, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2041, file: !2042, line: 516, baseType: !323, size: 64, offset: 704)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2041, file: !2042, line: 518, baseType: !323, size: 64, offset: 768)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2041, file: !2042, line: 520, baseType: !323, size: 64, offset: 832)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2041, file: !2042, line: 521, baseType: !323, size: 64, offset: 896)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2041, file: !2042, line: 522, baseType: !323, size: 64, offset: 960)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2041, file: !2042, line: 528, baseType: !2079, size: 64, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2042, line: 10, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2041, file: !2042, line: 535, baseType: !323, size: 64, offset: 1088)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2041, file: !2042, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2041, file: !2042, line: 540, baseType: !2084, size: 33280, offset: 1536)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2085, line: 317, size: 33280, elements: !2086)
!2085 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !{!2087, !2088, !2089}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2084, file: !2085, line: 330, baseType: !7, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2084, file: !2085, line: 337, baseType: !323, size: 64, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2084, file: !2085, line: 348, baseType: !2090, size: 32768, offset: 512)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2085, line: 304, size: 32768, elements: !2091)
!2091 = !{!2092, !2107, !2146, !2196, !2209}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2090, file: !2085, line: 305, baseType: !2093, size: 896)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2085, line: 12, size: 896, elements: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2106}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2093, file: !2085, line: 13, baseType: !414, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2093, file: !2085, line: 14, baseType: !414, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2093, file: !2085, line: 15, baseType: !414, size: 32, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2093, file: !2085, line: 16, baseType: !414, size: 32, offset: 96)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2093, file: !2085, line: 17, baseType: !414, size: 32, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2093, file: !2085, line: 18, baseType: !414, size: 32, offset: 160)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2093, file: !2085, line: 19, baseType: !414, size: 32, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2093, file: !2085, line: 22, baseType: !2103, size: 640, offset: 224)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 640, elements: !2104)
!2104 = !{!2105}
!2105 = !DISubrange(count: 20)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2093, file: !2085, line: 25, baseType: !414, size: 32, offset: 864)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2090, file: !2085, line: 306, baseType: !2108, size: 4096, align: 128)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2085, line: 34, size: 4096, align: 128, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2129, !2130, !2131, !2135, !2137, !2141}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2108, file: !2085, line: 35, baseType: !856, size: 16)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2108, file: !2085, line: 36, baseType: !856, size: 16, offset: 16)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2108, file: !2085, line: 37, baseType: !856, size: 16, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2108, file: !2085, line: 38, baseType: !856, size: 16, offset: 48)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2085, line: 39, baseType: !2115, size: 128, offset: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !2085, line: 39, size: 128, elements: !2116)
!2116 = !{!2117, !2122}
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2085, line: 40, baseType: !2118, size: 128)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2085, line: 40, size: 128, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2118, file: !2085, line: 41, baseType: !418, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2118, file: !2085, line: 42, baseType: !418, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2085, line: 44, baseType: !2123, size: 128)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2085, line: 44, size: 128, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2128}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2123, file: !2085, line: 45, baseType: !414, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2123, file: !2085, line: 46, baseType: !414, size: 32, offset: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2123, file: !2085, line: 47, baseType: !414, size: 32, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2123, file: !2085, line: 48, baseType: !414, size: 32, offset: 96)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2108, file: !2085, line: 51, baseType: !414, size: 32, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2108, file: !2085, line: 52, baseType: !414, size: 32, offset: 224)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2108, file: !2085, line: 55, baseType: !2132, size: 1024, offset: 256)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 1024, elements: !2133)
!2133 = !{!2134}
!2134 = !DISubrange(count: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2108, file: !2085, line: 58, baseType: !2136, size: 2048, offset: 1280)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 2048, elements: !279)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2108, file: !2085, line: 60, baseType: !2138, size: 384, offset: 3328)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !414, size: 384, elements: !2139)
!2139 = !{!2140}
!2140 = !DISubrange(count: 12)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2108, file: !2085, line: 62, baseType: !2142, size: 384, offset: 3712)
!2142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2108, file: !2085, line: 62, size: 384, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2142, file: !2085, line: 63, baseType: !2138, size: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2142, file: !2085, line: 64, baseType: !2138, size: 384)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2090, file: !2085, line: 307, baseType: !2147, size: 1088)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2085, line: 79, size: 1088, elements: !2148)
!2148 = !{!2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2195}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2147, file: !2085, line: 80, baseType: !414, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2147, file: !2085, line: 81, baseType: !414, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2147, file: !2085, line: 82, baseType: !414, size: 32, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2147, file: !2085, line: 83, baseType: !414, size: 32, offset: 96)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2147, file: !2085, line: 84, baseType: !414, size: 32, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2147, file: !2085, line: 85, baseType: !414, size: 32, offset: 160)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2147, file: !2085, line: 86, baseType: !414, size: 32, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2147, file: !2085, line: 88, baseType: !2103, size: 640, offset: 224)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2147, file: !2085, line: 89, baseType: !1268, size: 8, offset: 864)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2147, file: !2085, line: 90, baseType: !1268, size: 8, offset: 872)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2147, file: !2085, line: 91, baseType: !1268, size: 8, offset: 880)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2147, file: !2085, line: 92, baseType: !1268, size: 8, offset: 888)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2147, file: !2085, line: 93, baseType: !1268, size: 8, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2147, file: !2085, line: 94, baseType: !1268, size: 8, offset: 904)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2147, file: !2085, line: 95, baseType: !2164, size: 64, offset: 960)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2166, line: 11, size: 128, elements: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2165, file: !2166, line: 12, baseType: !309, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2165, file: !2166, line: 13, baseType: !2170, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2172, line: 56, size: 1344, elements: !2173)
!2172 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2173 = !{!2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2171, file: !2172, line: 61, baseType: !323, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2171, file: !2172, line: 62, baseType: !323, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2171, file: !2172, line: 63, baseType: !323, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2171, file: !2172, line: 64, baseType: !323, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2171, file: !2172, line: 65, baseType: !323, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2171, file: !2172, line: 66, baseType: !323, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2171, file: !2172, line: 68, baseType: !323, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2171, file: !2172, line: 69, baseType: !323, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2171, file: !2172, line: 70, baseType: !323, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2171, file: !2172, line: 71, baseType: !323, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2171, file: !2172, line: 72, baseType: !323, size: 64, offset: 640)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2171, file: !2172, line: 73, baseType: !323, size: 64, offset: 704)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2171, file: !2172, line: 74, baseType: !323, size: 64, offset: 768)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2171, file: !2172, line: 75, baseType: !323, size: 64, offset: 832)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2171, file: !2172, line: 76, baseType: !323, size: 64, offset: 896)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2171, file: !2172, line: 81, baseType: !323, size: 64, offset: 960)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2171, file: !2172, line: 83, baseType: !323, size: 64, offset: 1024)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2171, file: !2172, line: 84, baseType: !323, size: 64, offset: 1088)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2171, file: !2172, line: 85, baseType: !323, size: 64, offset: 1152)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2171, file: !2172, line: 86, baseType: !323, size: 64, offset: 1216)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2171, file: !2172, line: 87, baseType: !323, size: 64, offset: 1280)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2147, file: !2085, line: 96, baseType: !414, size: 32, offset: 1024)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2090, file: !2085, line: 308, baseType: !2197, size: 4608, align: 512)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2085, line: 289, size: 4608, align: 512, elements: !2198)
!2198 = !{!2199, !2200, !2207}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2197, file: !2085, line: 290, baseType: !2108, size: 4096, align: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2197, file: !2085, line: 291, baseType: !2201, size: 512, offset: 4096)
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2085, line: 268, size: 512, elements: !2202)
!2202 = !{!2203, !2204, !2205}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2201, file: !2085, line: 269, baseType: !418, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2201, file: !2085, line: 270, baseType: !418, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2201, file: !2085, line: 271, baseType: !2206, size: 384, offset: 128)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !1540)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2197, file: !2085, line: 292, baseType: !2208, offset: 4608)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1268, elements: !1638)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2090, file: !2085, line: 309, baseType: !2210, size: 32768)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1268, size: 32768, elements: !2211)
!2211 = !{!2212}
!2212 = !DISubrange(count: 4096)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1129, file: !719, line: 378, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1125, file: !719, line: 384, baseType: !1417, size: 192, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !974, file: !719, line: 500, baseType: !234, offset: 6656)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !974, file: !719, line: 501, baseType: !2218, size: 64, offset: 6656)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !719, line: 387, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !974, file: !719, line: 516, baseType: !1628, size: 64, offset: 6720)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !974, file: !719, line: 519, baseType: !351, size: 64, offset: 6784)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !974, file: !719, line: 521, baseType: !2223, size: 64, offset: 6848)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !719, line: 521, flags: DIFlagFwdDecl)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !974, file: !719, line: 545, baseType: !744, size: 32, offset: 6912)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !974, file: !719, line: 548, baseType: !486, size: 8, offset: 6944)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !974, file: !719, line: 550, baseType: !2228, offset: 6952)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2229, line: 142, elements: !248)
!2229 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !974, file: !719, line: 554, baseType: !1873, size: 256, offset: 6976)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !974, file: !719, line: 557, baseType: !414, size: 32, offset: 7232)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !971, file: !719, line: 565, baseType: !2233, offset: 7296)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !2234)
!2234 = !{!2235}
!2235 = !DISubrange(count: -1)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !967, file: !719, line: 151, baseType: !744, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !960, file: !719, line: 156, baseType: !234, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !719, line: 159, baseType: !2239, size: 128)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !719, line: 159, size: 128, elements: !2240)
!2240 = !{!2241, !2244}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2239, file: !719, line: 161, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !719, line: 161, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2239, file: !719, line: 162, baseType: !109, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !723, file: !719, line: 176, baseType: !364, size: 128, align: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !719, line: 179, baseType: !2247, size: 32, offset: 384)
!2247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !719, line: 179, size: 32, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2247, file: !719, line: 184, baseType: !744, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2247, file: !719, line: 192, baseType: !7, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2247, file: !719, line: 194, baseType: !7, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2247, file: !719, line: 195, baseType: !134, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !718, file: !719, line: 199, baseType: !744, size: 32, offset: 416)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !653, file: !37, line: 1964, baseType: !2255, size: 64, offset: 1344)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!309, !595, !2258}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2260, line: 12, size: 256, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2261 = !{!2262, !2263, !2264, !2265, !2266}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2259, file: !2260, line: 13, baseType: !740, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2259, file: !2260, line: 16, baseType: !134, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2259, file: !2260, line: 23, baseType: !323, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2259, file: !2260, line: 30, baseType: !323, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2259, file: !2260, line: 33, baseType: !2267, size: 64, offset: 192)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !719, line: 27, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !653, file: !37, line: 1966, baseType: !2255, size: 64, offset: 1408)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !596, file: !37, line: 1424, baseType: !2271, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2274)
!2274 = !{!2275, !2321, !2325, !2329, !2330, !2331, !2332, !2333, !2338, !2343, !2347}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2273, file: !31, line: 323, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!134, !2279}
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2306, !2307, !2308}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2280, file: !31, line: 295, baseType: !635, size: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2280, file: !31, line: 296, baseType: !174, size: 128, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2280, file: !31, line: 297, baseType: !174, size: 128, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2280, file: !31, line: 298, baseType: !174, size: 128, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2280, file: !31, line: 299, baseType: !1089, size: 192, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2280, file: !31, line: 300, baseType: !234, offset: 704)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2280, file: !31, line: 301, baseType: !744, size: 32, offset: 704)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2280, file: !31, line: 302, baseType: !595, size: 64, offset: 768)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2280, file: !31, line: 303, baseType: !2291, size: 64, offset: 832)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2292)
!2292 = !{!2293, !2305}
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !2291, file: !31, line: 69, baseType: !2294, size: 32)
!2294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2291, file: !31, line: 69, size: 32, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2294, file: !31, line: 70, baseType: !431, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2294, file: !31, line: 71, baseType: !439, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2294, file: !31, line: 72, baseType: !2299, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2300, line: 24, baseType: !2301)
!2300 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2300, line: 22, size: 32, elements: !2302)
!2302 = !{!2303}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2301, file: !2300, line: 23, baseType: !2304, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2300, line: 20, baseType: !437)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2291, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2280, file: !31, line: 304, baseType: !527, size: 64, offset: 896)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2280, file: !31, line: 305, baseType: !323, size: 64, offset: 960)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2280, file: !31, line: 306, baseType: !2309, size: 576, offset: 1024)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2310)
!2310 = !{!2311, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2309, file: !31, line: 206, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !529)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2309, file: !31, line: 207, baseType: !2312, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2309, file: !31, line: 208, baseType: !2312, size: 64, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2309, file: !31, line: 209, baseType: !2312, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2309, file: !31, line: 210, baseType: !2312, size: 64, offset: 256)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2309, file: !31, line: 211, baseType: !2312, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2309, file: !31, line: 212, baseType: !2312, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2309, file: !31, line: 213, baseType: !535, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2309, file: !31, line: 214, baseType: !535, size: 64, offset: 512)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2273, file: !31, line: 324, baseType: !2322, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2279, !595, !134}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2273, file: !31, line: 325, baseType: !2326, size: 64, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2279}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2273, file: !31, line: 326, baseType: !2276, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2273, file: !31, line: 327, baseType: !2276, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2273, file: !31, line: 328, baseType: !2276, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2273, file: !31, line: 329, baseType: !681, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2273, file: !31, line: 332, baseType: !2334, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!2337, !425}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2273, file: !31, line: 333, baseType: !2339, size: 64, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!134, !425, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2273, file: !31, line: 335, baseType: !2344, size: 64, offset: 576)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!134, !425, !2337}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2273, file: !31, line: 337, baseType: !2348, size: 64, offset: 640)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!134, !595, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !596, file: !37, line: 1425, baseType: !2353, size: 64, offset: 512)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2355)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2356)
!2356 = !{!2357, !2361, !2362, !2366, !2367, !2368, !2383, !2406, !2410, !2411, !2434}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2355, file: !31, line: 429, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!134, !595, !134, !134, !545}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2355, file: !31, line: 430, baseType: !681, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2355, file: !31, line: 431, baseType: !2363, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!134, !595, !7}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2355, file: !31, line: 432, baseType: !2363, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2355, file: !31, line: 433, baseType: !681, size: 64, offset: 256)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2355, file: !31, line: 434, baseType: !2369, size: 64, offset: 320)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!134, !595, !134, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2373, file: !31, line: 416, baseType: !134, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2373, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2373, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2373, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2373, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2373, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2373, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2373, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2355, file: !31, line: 435, baseType: !2384, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!134, !595, !2291, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2388, file: !31, line: 344, baseType: !134, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2388, file: !31, line: 345, baseType: !418, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2388, file: !31, line: 346, baseType: !418, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2388, file: !31, line: 347, baseType: !418, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2388, file: !31, line: 348, baseType: !418, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2388, file: !31, line: 349, baseType: !418, size: 64, offset: 320)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2388, file: !31, line: 350, baseType: !418, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2388, file: !31, line: 351, baseType: !774, size: 64, offset: 448)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2388, file: !31, line: 353, baseType: !774, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2388, file: !31, line: 354, baseType: !134, size: 32, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2388, file: !31, line: 355, baseType: !134, size: 32, offset: 608)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2388, file: !31, line: 356, baseType: !418, size: 64, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2388, file: !31, line: 357, baseType: !418, size: 64, offset: 704)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2388, file: !31, line: 358, baseType: !418, size: 64, offset: 768)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2388, file: !31, line: 359, baseType: !774, size: 64, offset: 832)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2388, file: !31, line: 360, baseType: !134, size: 32, offset: 896)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2355, file: !31, line: 436, baseType: !2407, size: 64, offset: 448)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!134, !595, !2351, !2387}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2355, file: !31, line: 438, baseType: !2384, size: 64, offset: 512)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2355, file: !31, line: 439, baseType: !2412, size: 64, offset: 576)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!134, !595, !2415}
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2416, file: !31, line: 410, baseType: !7, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2416, file: !31, line: 411, baseType: !2420, size: 1344, offset: 64)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2421, size: 1344, elements: !275)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2422)
!2422 = !{!2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2433}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2421, file: !31, line: 396, baseType: !7, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2421, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2421, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2421, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2421, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2421, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2421, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2421, file: !31, line: 404, baseType: !420, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2421, file: !31, line: 405, baseType: !2432, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !175, line: 126, baseType: !418)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2421, file: !31, line: 406, baseType: !2432, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2355, file: !31, line: 440, baseType: !2363, size: 64, offset: 640)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !596, file: !37, line: 1426, baseType: !2436, size: 64, offset: 576)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !596, file: !37, line: 1427, baseType: !323, size: 64, offset: 640)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !596, file: !37, line: 1428, baseType: !323, size: 64, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !596, file: !37, line: 1429, baseType: !323, size: 64, offset: 768)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !596, file: !37, line: 1430, baseType: !381, size: 64, offset: 832)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !596, file: !37, line: 1431, baseType: !764, size: 256, offset: 896)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !596, file: !37, line: 1432, baseType: !134, size: 32, offset: 1152)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !596, file: !37, line: 1433, baseType: !744, size: 32, offset: 1184)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !596, file: !37, line: 1437, baseType: !2447, size: 64, offset: 1216)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !596, file: !37, line: 1449, baseType: !2452, size: 64, offset: 1280)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !397, line: 34, size: 64, elements: !2453)
!2453 = !{!2454}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2452, file: !397, line: 35, baseType: !400, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !596, file: !37, line: 1450, baseType: !174, size: 128, offset: 1344)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !596, file: !37, line: 1451, baseType: !2457, size: 64, offset: 1472)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !596, file: !37, line: 1452, baseType: !1839, size: 64, offset: 1536)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !596, file: !37, line: 1453, baseType: !2461, size: 64, offset: 1600)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !596, file: !37, line: 1454, baseType: !635, size: 128, offset: 1664)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !596, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !596, file: !37, line: 1456, baseType: !2466, size: 2432, offset: 1856)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2467)
!2467 = !{!2468, !2469, !2470, !2472, !2504}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2466, file: !31, line: 519, baseType: !7, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2466, file: !31, line: 520, baseType: !764, size: 256, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2466, file: !31, line: 521, baseType: !2471, size: 192, offset: 320)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 192, elements: !275)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2466, file: !31, line: 522, baseType: !2473, size: 1728, offset: 512)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2474, size: 1728, elements: !275)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2475)
!2475 = !{!2476, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2474, file: !31, line: 223, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2479)
!2479 = !{!2480, !2481, !2494, !2495}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2478, file: !31, line: 444, baseType: !134, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2478, file: !31, line: 445, baseType: !2482, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2484, file: !31, line: 311, baseType: !681, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2484, file: !31, line: 312, baseType: !681, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2484, file: !31, line: 313, baseType: !681, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2484, file: !31, line: 314, baseType: !681, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2484, file: !31, line: 315, baseType: !2276, size: 64, offset: 256)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2484, file: !31, line: 316, baseType: !2276, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2484, file: !31, line: 317, baseType: !2276, size: 64, offset: 384)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2484, file: !31, line: 318, baseType: !2348, size: 64, offset: 448)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2478, file: !31, line: 446, baseType: !106, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2478, file: !31, line: 447, baseType: !2477, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2474, file: !31, line: 224, baseType: !134, size: 32, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2474, file: !31, line: 226, baseType: !174, size: 128, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2474, file: !31, line: 227, baseType: !323, size: 64, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2474, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2474, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2474, file: !31, line: 230, baseType: !2312, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2474, file: !31, line: 231, baseType: !2312, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2474, file: !31, line: 232, baseType: !109, size: 64, offset: 512)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2466, file: !31, line: 523, baseType: !2505, size: 192, offset: 2240)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2482, size: 192, elements: !275)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !596, file: !37, line: 1458, baseType: !2507, size: 2112, offset: 4288)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2508)
!2508 = !{!2509, !2510, !2511}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2507, file: !37, line: 1411, baseType: !134, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2507, file: !37, line: 1412, baseType: !1396, size: 128, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2507, file: !37, line: 1413, baseType: !2512, size: 1920, offset: 192)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2513, size: 1920, elements: !275)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2514, line: 12, size: 640, elements: !2515)
!2514 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2515 = !{!2516, !2524, !2526, !2531, !2532}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2513, file: !2514, line: 13, baseType: !2517, size: 320)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2518, line: 17, size: 320, elements: !2519)
!2518 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2519 = !{!2520, !2521, !2522, !2523}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2517, file: !2518, line: 18, baseType: !134, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2517, file: !2518, line: 19, baseType: !134, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2517, file: !2518, line: 20, baseType: !1396, size: 128, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2517, file: !2518, line: 22, baseType: !364, size: 128, align: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2513, file: !2514, line: 14, baseType: !2525, size: 64, offset: 320)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2513, file: !2514, line: 15, baseType: !2527, size: 64, offset: 384)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2528, line: 16, size: 64, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2527, file: !2528, line: 17, baseType: !1132, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2513, file: !2514, line: 16, baseType: !1396, size: 128, offset: 448)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2513, file: !2514, line: 17, baseType: !744, size: 32, offset: 576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !596, file: !37, line: 1465, baseType: !109, size: 64, offset: 6400)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !596, file: !37, line: 1468, baseType: !414, size: 32, offset: 6464)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !596, file: !37, line: 1470, baseType: !535, size: 64, offset: 6528)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !596, file: !37, line: 1471, baseType: !535, size: 64, offset: 6592)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !596, file: !37, line: 1473, baseType: !172, size: 32, offset: 6656)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !596, file: !37, line: 1474, baseType: !2539, size: 64, offset: 6720)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !596, file: !37, line: 1477, baseType: !2542, size: 256, offset: 6784)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !2133)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !596, file: !37, line: 1478, baseType: !2544, size: 128, offset: 7040)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2545, line: 18, baseType: !2546)
!2545 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2545, line: 16, size: 128, elements: !2547)
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2546, file: !2545, line: 17, baseType: !2549, size: 128)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, elements: !1650)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !596, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !596, file: !37, line: 1481, baseType: !2552, size: 32, offset: 7200)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !175, line: 150, baseType: !7)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !596, file: !37, line: 1487, baseType: !1089, size: 192, offset: 7232)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !596, file: !37, line: 1493, baseType: !223, size: 64, offset: 7424)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !596, file: !37, line: 1495, baseType: !2556, size: 64, offset: 7488)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !379, line: 135, size: 1024, align: 512, elements: !2559)
!2559 = !{!2560, !2564, !2565, !2572, !2578, !2582, !2586, !2590, !2591, !2595, !2599, !2604, !2608}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2558, file: !379, line: 136, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!134, !381, !7}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2558, file: !379, line: 137, baseType: !2561, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2558, file: !379, line: 138, baseType: !2566, size: 64, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!134, !2569, !2571}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2558, file: !379, line: 139, baseType: !2573, size: 64, offset: 192)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!134, !2569, !7, !223, !2576}
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2558, file: !379, line: 141, baseType: !2579, size: 64, offset: 256)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!134, !2569}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2558, file: !379, line: 142, baseType: !2583, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!134, !381}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2558, file: !379, line: 143, baseType: !2587, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !381}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2558, file: !379, line: 144, baseType: !2587, size: 64, offset: 448)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2558, file: !379, line: 145, baseType: !2592, size: 64, offset: 512)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !381, !425}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2558, file: !379, line: 146, baseType: !2596, size: 64, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!189, !381, !189, !134}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2558, file: !379, line: 147, baseType: !2600, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!377, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2558, file: !379, line: 148, baseType: !2605, size: 64, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!134, !545, !486}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2558, file: !379, line: 149, baseType: !2609, size: 64, offset: 768)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!381, !381, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !596, file: !37, line: 1500, baseType: !134, size: 32, offset: 7552)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !596, file: !37, line: 1502, baseType: !2616, size: 448, offset: 7616)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2260, line: 60, size: 448, elements: !2617)
!2617 = !{!2618, !2623, !2624, !2625, !2626, !2627, !2628}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2616, file: !2260, line: 61, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!323, !2622, !2258}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2616, file: !2260, line: 63, baseType: !2619, size: 64, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2616, file: !2260, line: 66, baseType: !309, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2616, file: !2260, line: 67, baseType: !134, size: 32, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2616, file: !2260, line: 68, baseType: !7, size: 32, offset: 224)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2616, file: !2260, line: 71, baseType: !174, size: 128, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2616, file: !2260, line: 77, baseType: !2629, size: 64, offset: 384)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !596, file: !37, line: 1505, baseType: !768, size: 64, offset: 8064)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !596, file: !37, line: 1508, baseType: !768, size: 64, offset: 8128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !596, file: !37, line: 1511, baseType: !134, size: 32, offset: 8192)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !596, file: !37, line: 1514, baseType: !905, size: 32, offset: 8224)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !596, file: !37, line: 1517, baseType: !2635, size: 64, offset: 8256)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1874, line: 18, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !596, file: !37, line: 1518, baseType: !631, size: 64, offset: 8320)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !596, file: !37, line: 1525, baseType: !1628, size: 64, offset: 8384)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !596, file: !37, line: 1532, baseType: !2640, size: 64, offset: 8448)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2641, line: 52, size: 64, elements: !2642)
!2641 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2640, file: !2641, line: 53, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2641, line: 40, size: 256, elements: !2646)
!2646 = !{!2647, !2648, !2653}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2645, file: !2641, line: 42, baseType: !234)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2645, file: !2641, line: 44, baseType: !2649, size: 192)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2641, line: 28, size: 192, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2649, file: !2641, line: 29, baseType: !174, size: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2649, file: !2641, line: 31, baseType: !309, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2645, file: !2641, line: 49, baseType: !309, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !596, file: !37, line: 1533, baseType: !2640, size: 64, offset: 8512)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !596, file: !37, line: 1534, baseType: !364, size: 128, align: 64, offset: 8576)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !596, file: !37, line: 1535, baseType: !1873, size: 256, offset: 8704)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !596, file: !37, line: 1537, baseType: !1089, size: 192, offset: 8960)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !596, file: !37, line: 1542, baseType: !134, size: 32, offset: 9152)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !596, file: !37, line: 1545, baseType: !234, offset: 9184)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !596, file: !37, line: 1546, baseType: !174, size: 128, offset: 9216)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !596, file: !37, line: 1548, baseType: !234, offset: 9344)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !596, file: !37, line: 1549, baseType: !174, size: 128, offset: 9344)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !426, file: !37, line: 624, baseType: !730, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !426, file: !37, line: 631, baseType: !323, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !37, line: 639, baseType: !2666, size: 32, offset: 384)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !37, line: 639, size: 32, elements: !2667)
!2667 = !{!2668, !2670}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2666, file: !37, line: 640, baseType: !2669, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2666, file: !37, line: 641, baseType: !7, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !426, file: !37, line: 643, baseType: !509, size: 32, offset: 416)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !426, file: !37, line: 644, baseType: !527, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !426, file: !37, line: 645, baseType: !531, size: 128, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !426, file: !37, line: 646, baseType: !531, size: 128, offset: 640)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !426, file: !37, line: 647, baseType: !531, size: 128, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !426, file: !37, line: 648, baseType: !234, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !426, file: !37, line: 649, baseType: !152, size: 16, offset: 896)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !426, file: !37, line: 650, baseType: !1268, size: 8, offset: 912)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !426, file: !37, line: 651, baseType: !1268, size: 8, offset: 920)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !426, file: !37, line: 652, baseType: !2432, size: 64, offset: 960)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !426, file: !37, line: 659, baseType: !323, size: 64, offset: 1024)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !426, file: !37, line: 660, baseType: !764, size: 256, offset: 1088)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !426, file: !37, line: 662, baseType: !323, size: 64, offset: 1344)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !426, file: !37, line: 663, baseType: !323, size: 64, offset: 1408)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !426, file: !37, line: 665, baseType: !635, size: 128, offset: 1472)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !426, file: !37, line: 666, baseType: !174, size: 128, offset: 1600)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !426, file: !37, line: 675, baseType: !174, size: 128, offset: 1728)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !426, file: !37, line: 676, baseType: !174, size: 128, offset: 1856)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !426, file: !37, line: 677, baseType: !174, size: 128, offset: 1984)
!2690 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !37, line: 678, baseType: !2691, size: 128, offset: 2112)
!2691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !37, line: 678, size: 128, elements: !2692)
!2692 = !{!2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2691, file: !37, line: 679, baseType: !631, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2691, file: !37, line: 680, baseType: !364, size: 128, align: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !426, file: !37, line: 682, baseType: !770, size: 64, offset: 2240)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !426, file: !37, line: 683, baseType: !770, size: 64, offset: 2304)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !426, file: !37, line: 684, baseType: !744, size: 32, offset: 2368)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !426, file: !37, line: 685, baseType: !744, size: 32, offset: 2400)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !426, file: !37, line: 686, baseType: !744, size: 32, offset: 2432)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !426, file: !37, line: 688, baseType: !744, size: 32, offset: 2464)
!2701 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !37, line: 690, baseType: !2702, size: 64, offset: 2496)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !37, line: 690, size: 64, elements: !2703)
!2703 = !{!2704, !2926}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2702, file: !37, line: 691, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2707)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2708)
!2708 = !{!2709, !2710, !2714, !2719, !2723, !2724, !2725, !2729, !2742, !2743, !2750, !2754, !2755, !2759, !2760, !2764, !2769, !2770, !2774, !2778, !2886, !2890, !2891, !2895, !2896, !2900, !2904, !2909, !2913, !2917, !2921, !2925}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2707, file: !37, line: 1823, baseType: !106, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2707, file: !37, line: 1824, baseType: !2711, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!527, !351, !527, !134}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2707, file: !37, line: 1825, baseType: !2715, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!305, !351, !189, !320, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2707, file: !37, line: 1826, baseType: !2720, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!305, !351, !223, !320, !2718}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2707, file: !37, line: 1827, baseType: !841, size: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2707, file: !37, line: 1828, baseType: !841, size: 64, offset: 320)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2707, file: !37, line: 1829, baseType: !2726, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!134, !844, !486}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2707, file: !37, line: 1830, baseType: !2730, size: 64, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!134, !351, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2735)
!2735 = !{!2736, !2741}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2734, file: !37, line: 1777, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2738)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!134, !2733, !223, !134, !527, !418, !7}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2734, file: !37, line: 1778, baseType: !527, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2707, file: !37, line: 1831, baseType: !2730, size: 64, offset: 512)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2707, file: !37, line: 1832, baseType: !2744, size: 64, offset: 576)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!2747, !351, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !150, line: 52, baseType: !7)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !615, line: 27, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2707, file: !37, line: 1833, baseType: !2751, size: 64, offset: 640)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!309, !351, !7, !323}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2707, file: !37, line: 1834, baseType: !2751, size: 64, offset: 704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2707, file: !37, line: 1835, baseType: !2756, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!134, !351, !977}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2707, file: !37, line: 1836, baseType: !323, size: 64, offset: 832)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2707, file: !37, line: 1837, baseType: !2761, size: 64, offset: 896)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!134, !425, !351}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2707, file: !37, line: 1838, baseType: !2765, size: 64, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!134, !351, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !109)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2707, file: !37, line: 1839, baseType: !2761, size: 64, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2707, file: !37, line: 1840, baseType: !2771, size: 64, offset: 1088)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!134, !351, !527, !527, !134}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2707, file: !37, line: 1841, baseType: !2775, size: 64, offset: 1152)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!134, !134, !351, !134}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2707, file: !37, line: 1842, baseType: !2779, size: 64, offset: 1216)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!134, !351, !134, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2816, !2817, !2818, !2831, !2862}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2783, file: !37, line: 1063, baseType: !2782, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2783, file: !37, line: 1064, baseType: !174, size: 128, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2783, file: !37, line: 1065, baseType: !635, size: 128, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2783, file: !37, line: 1066, baseType: !174, size: 128, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2783, file: !37, line: 1069, baseType: !174, size: 128, offset: 448)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2783, file: !37, line: 1072, baseType: !2768, size: 64, offset: 576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2783, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2783, file: !37, line: 1074, baseType: !124, size: 8, offset: 672)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2783, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2783, file: !37, line: 1076, baseType: !134, size: 32, offset: 736)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2783, file: !37, line: 1077, baseType: !1396, size: 128, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2783, file: !37, line: 1078, baseType: !351, size: 64, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2783, file: !37, line: 1079, baseType: !527, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2783, file: !37, line: 1080, baseType: !527, size: 64, offset: 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2783, file: !37, line: 1082, baseType: !2800, size: 64, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2802)
!2802 = !{!2803, !2811, !2812, !2813, !2814, !2815}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2801, file: !37, line: 1315, baseType: !2804)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2805, line: 20, baseType: !2806)
!2805 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2805, line: 11, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2806, file: !2805, line: 12, baseType: !2809)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !246, line: 33, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !246, line: 31, elements: !248)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2801, file: !37, line: 1316, baseType: !134, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2801, file: !37, line: 1317, baseType: !134, size: 32, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2801, file: !37, line: 1318, baseType: !2800, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2801, file: !37, line: 1319, baseType: !351, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2801, file: !37, line: 1320, baseType: !364, size: 128, align: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2783, file: !37, line: 1084, baseType: !323, size: 64, offset: 1152)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2783, file: !37, line: 1085, baseType: !323, size: 64, offset: 1216)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2783, file: !37, line: 1087, baseType: !2819, size: 64, offset: 1280)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2822)
!2822 = !{!2823, !2827}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2821, file: !37, line: 1012, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2782, !2782}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2821, file: !37, line: 1013, baseType: !2828, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{null, !2782}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2783, file: !37, line: 1088, baseType: !2832, size: 64, offset: 1344)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2834)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2835)
!2835 = !{!2836, !2840, !2844, !2845, !2849, !2853, !2857, !2861}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2834, file: !37, line: 1017, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!2768, !2768}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2834, file: !37, line: 1018, baseType: !2841, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !2768}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2834, file: !37, line: 1019, baseType: !2828, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2834, file: !37, line: 1020, baseType: !2846, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!134, !2782, !134}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2834, file: !37, line: 1021, baseType: !2850, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!486, !2782}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2834, file: !37, line: 1022, baseType: !2854, size: 64, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!134, !2782, !134, !178}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2834, file: !37, line: 1023, baseType: !2858, size: 64, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !2782, !818}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2834, file: !37, line: 1024, baseType: !2850, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2783, file: !37, line: 1097, baseType: !2863, size: 256, offset: 1408)
!2863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2783, file: !37, line: 1089, size: 256, elements: !2864)
!2864 = !{!2865, !2874, !2880}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2863, file: !37, line: 1090, baseType: !2866, size: 256)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2867, line: 10, size: 256, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2868 = !{!2869, !2870, !2873}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2866, file: !2867, line: 11, baseType: !414, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2866, file: !2867, line: 12, baseType: !2871, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2867, line: 5, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2866, file: !2867, line: 13, baseType: !174, size: 128, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2863, file: !37, line: 1091, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2867, line: 17, size: 64, elements: !2876)
!2876 = !{!2877}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2875, file: !2867, line: 18, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2867, line: 16, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2863, file: !37, line: 1096, baseType: !2881, size: 192)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2863, file: !37, line: 1092, size: 192, elements: !2882)
!2882 = !{!2883, !2884, !2885}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2881, file: !37, line: 1093, baseType: !174, size: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2881, file: !37, line: 1094, baseType: !134, size: 32, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2881, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2707, file: !37, line: 1843, baseType: !2887, size: 64, offset: 1280)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!305, !351, !717, !134, !320, !2718, !134}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2707, file: !37, line: 1844, baseType: !1017, size: 64, offset: 1344)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2707, file: !37, line: 1845, baseType: !2892, size: 64, offset: 1408)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!134, !134}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2707, file: !37, line: 1846, baseType: !2779, size: 64, offset: 1472)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2707, file: !37, line: 1847, baseType: !2897, size: 64, offset: 1536)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!305, !2014, !351, !2718, !320, !7}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2707, file: !37, line: 1848, baseType: !2901, size: 64, offset: 1600)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!305, !351, !2718, !2014, !320, !7}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2707, file: !37, line: 1849, baseType: !2905, size: 64, offset: 1664)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!134, !351, !309, !2908, !818}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2707, file: !37, line: 1850, baseType: !2910, size: 64, offset: 1728)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!309, !351, !134, !527, !527}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2707, file: !37, line: 1852, baseType: !2914, size: 64, offset: 1792)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !707, !351}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2707, file: !37, line: 1856, baseType: !2918, size: 64, offset: 1856)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!305, !351, !527, !351, !527, !320, !7}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2707, file: !37, line: 1858, baseType: !2922, size: 64, offset: 1920)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!527, !351, !527, !351, !527, !527, !7}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2707, file: !37, line: 1861, baseType: !2771, size: 64, offset: 1984)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2702, file: !37, line: 692, baseType: !660, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !426, file: !37, line: 694, baseType: !2928, size: 64, offset: 2560)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !2930)
!2930 = !{!2931, !2932, !2933, !2934}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2929, file: !37, line: 1101, baseType: !234)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2929, file: !37, line: 1102, baseType: !174, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2929, file: !37, line: 1103, baseType: !174, size: 128, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2929, file: !37, line: 1104, baseType: !174, size: 128, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !426, file: !37, line: 695, baseType: !731, size: 1216, align: 64, offset: 2624)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !426, file: !37, line: 696, baseType: !174, size: 128, offset: 3840)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !37, line: 697, baseType: !2938, size: 64, offset: 3968)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !37, line: 697, size: 64, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2945, !2946}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2938, file: !37, line: 698, baseType: !2014, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2938, file: !37, line: 699, baseType: !2457, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2938, file: !37, line: 700, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2938, file: !37, line: 701, baseType: !189, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2938, file: !37, line: 702, baseType: !7, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !426, file: !37, line: 705, baseType: !172, size: 32, offset: 4032)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !426, file: !37, line: 708, baseType: !172, size: 32, offset: 4064)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !426, file: !37, line: 709, baseType: !2539, size: 64, offset: 4096)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !426, file: !37, line: 720, baseType: !109, size: 64, offset: 4160)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !382, file: !379, line: 98, baseType: !2952, size: 256, offset: 448)
!2952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !2133)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !382, file: !379, line: 101, baseType: !2954, size: 32, offset: 704)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2955, line: 25, size: 32, elements: !2956)
!2955 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2954, file: !2955, line: 26, baseType: !2958, size: 32)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2954, file: !2955, line: 26, size: 32, elements: !2959)
!2959 = !{!2960}
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !2955, line: 30, baseType: !2961, size: 32)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !2955, line: 30, size: 32, elements: !2962)
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2961, file: !2955, line: 31, baseType: !234)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2961, file: !2955, line: 32, baseType: !134, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !382, file: !379, line: 102, baseType: !2556, size: 64, offset: 768)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !382, file: !379, line: 103, baseType: !595, size: 64, offset: 832)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !382, file: !379, line: 104, baseType: !323, size: 64, offset: 896)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !382, file: !379, line: 105, baseType: !109, size: 64, offset: 960)
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !379, line: 107, baseType: !2970, size: 128, offset: 1024)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !379, line: 107, size: 128, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2970, file: !379, line: 108, baseType: !174, size: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2970, file: !379, line: 109, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !382, file: !379, line: 111, baseType: !174, size: 128, offset: 1152)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !382, file: !379, line: 112, baseType: !174, size: 128, offset: 1280)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !382, file: !379, line: 120, baseType: !2978, size: 128, offset: 1408)
!2978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !379, line: 116, size: 128, elements: !2979)
!2979 = !{!2980, !2981, !2982}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2978, file: !379, line: 117, baseType: !635, size: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2978, file: !379, line: 118, baseType: !396, size: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2978, file: !379, line: 119, baseType: !364, size: 128, align: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !352, file: !37, line: 922, baseType: !425, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !352, file: !37, line: 923, baseType: !2705, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !352, file: !37, line: 929, baseType: !234, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !352, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !352, file: !37, line: 931, baseType: !768, size: 64, offset: 448)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !352, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !352, file: !37, line: 933, baseType: !2552, size: 32, offset: 544)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !352, file: !37, line: 934, baseType: !1089, size: 192, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !352, file: !37, line: 935, baseType: !527, size: 64, offset: 768)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !352, file: !37, line: 936, baseType: !2993, size: 192, offset: 832)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2993, file: !37, line: 886, baseType: !2804)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2993, file: !37, line: 887, baseType: !1386, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2993, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2993, file: !37, line: 889, baseType: !431, size: 32, offset: 96)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2993, file: !37, line: 889, baseType: !431, size: 32, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2993, file: !37, line: 890, baseType: !134, size: 32, offset: 160)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !352, file: !37, line: 937, baseType: !1462, size: 64, offset: 1024)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !352, file: !37, line: 938, baseType: !3003, size: 256, offset: 1088)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3004)
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3003, file: !37, line: 897, baseType: !323, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3003, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3003, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3003, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3003, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3003, file: !37, line: 904, baseType: !527, size: 64, offset: 192)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !352, file: !37, line: 940, baseType: !418, size: 64, offset: 1344)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !352, file: !37, line: 945, baseType: !109, size: 64, offset: 1408)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !352, file: !37, line: 949, baseType: !174, size: 128, offset: 1472)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !352, file: !37, line: 950, baseType: !174, size: 128, offset: 1600)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !352, file: !37, line: 952, baseType: !730, size: 64, offset: 1728)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !352, file: !37, line: 953, baseType: !905, size: 32, offset: 1792)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !352, file: !37, line: 954, baseType: !905, size: 32, offset: 1824)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !342, file: !299, line: 174, baseType: !348, size: 64, offset: 320)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !342, file: !299, line: 176, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!134, !351, !227, !341, !977}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !330, file: !299, line: 90, baseType: !325, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !330, file: !299, line: 91, baseType: !3025, size: 64, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !289, file: !220, line: 143, baseType: !3027, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!3030, !227}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !54, line: 39, size: 384, elements: !3033)
!3033 = !{!3034, !3035, !3039, !3043, !3051, !3055}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3032, file: !54, line: 40, baseType: !53, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3032, file: !54, line: 41, baseType: !3036, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!486}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3032, file: !54, line: 42, baseType: !3040, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!109}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3032, file: !54, line: 43, baseType: !3044, size: 64, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!3047, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !54, line: 19, flags: DIFlagFwdDecl)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3032, file: !54, line: 44, baseType: !3052, size: 64, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!3047}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3032, file: !54, line: 45, baseType: !464, size: 64, offset: 320)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !289, file: !220, line: 144, baseType: !3057, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!3047, !227}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !289, file: !220, line: 145, baseType: !3061, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !227, !3064, !3065}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !219, file: !220, line: 70, baseType: !3067, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !615, line: 123, size: 1024, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3198, !3199, !3200, !3201, !3202}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3068, file: !615, line: 124, baseType: !744, size: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3068, file: !615, line: 125, baseType: !744, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3068, file: !615, line: 135, baseType: !3067, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3068, file: !615, line: 136, baseType: !223, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3068, file: !615, line: 138, baseType: !757, size: 192, align: 64, offset: 192)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3068, file: !615, line: 140, baseType: !3047, size: 64, offset: 384)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3068, file: !615, line: 141, baseType: !7, size: 32, offset: 448)
!3077 = !DIDerivedType(tag: DW_TAG_member, scope: !3068, file: !615, line: 142, baseType: !3078, size: 256, offset: 512)
!3078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3068, file: !615, line: 142, size: 256, elements: !3079)
!3079 = !{!3080, !3126, !3130}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3078, file: !615, line: 143, baseType: !3081, size: 192)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !615, line: 91, size: 192, elements: !3082)
!3082 = !{!3083, !3084, !3085}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3081, file: !615, line: 92, baseType: !323, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3081, file: !615, line: 94, baseType: !753, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3081, file: !615, line: 100, baseType: !3086, size: 64, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !615, line: 180, size: 704, elements: !3088)
!3088 = !{!3089, !3090, !3091, !3098, !3099, !3100, !3124, !3125}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3087, file: !615, line: 182, baseType: !3067, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3087, file: !615, line: 183, baseType: !7, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3087, file: !615, line: 186, baseType: !3092, size: 192, offset: 128)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3093, line: 19, size: 192, elements: !3094)
!3093 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3094 = !{!3095, !3096, !3097}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3092, file: !3093, line: 20, baseType: !735, size: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3092, file: !3093, line: 21, baseType: !7, size: 32, offset: 128)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3092, file: !3093, line: 22, baseType: !7, size: 32, offset: 160)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3087, file: !615, line: 187, baseType: !414, size: 32, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3087, file: !615, line: 188, baseType: !414, size: 32, offset: 352)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3087, file: !615, line: 189, baseType: !3101, size: 64, offset: 384)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !615, line: 168, size: 320, elements: !3103)
!3103 = !{!3104, !3108, !3112, !3116, !3120}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3102, file: !615, line: 169, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!134, !707, !3086}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3102, file: !615, line: 171, baseType: !3109, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!134, !3067, !223, !315}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3102, file: !615, line: 173, baseType: !3113, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!134, !3067}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3102, file: !615, line: 174, baseType: !3117, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!134, !3067, !3067, !223}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3102, file: !615, line: 176, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!134, !707, !3067, !3086}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3087, file: !615, line: 192, baseType: !174, size: 128, offset: 448)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3087, file: !615, line: 194, baseType: !1396, size: 128, offset: 576)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3078, file: !615, line: 144, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !615, line: 103, size: 64, elements: !3128)
!3128 = !{!3129}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3127, file: !615, line: 104, baseType: !3067, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3078, file: !615, line: 145, baseType: !3131, size: 256)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !615, line: 107, size: 256, elements: !3132)
!3132 = !{!3133, !3193, !3196, !3197}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3131, file: !615, line: 108, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3136)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !615, line: 217, size: 768, elements: !3137)
!3137 = !{!3138, !3158, !3162, !3166, !3170, !3174, !3178, !3182, !3183, !3184, !3185, !3189}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3136, file: !615, line: 222, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!134, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !615, line: 197, size: 1088, elements: !3144)
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3143, file: !615, line: 199, baseType: !3067, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3143, file: !615, line: 200, baseType: !351, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3143, file: !615, line: 201, baseType: !707, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3143, file: !615, line: 202, baseType: !109, size: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3143, file: !615, line: 205, baseType: !1089, size: 192, offset: 256)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3143, file: !615, line: 206, baseType: !1089, size: 192, offset: 448)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3143, file: !615, line: 207, baseType: !134, size: 32, offset: 640)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3143, file: !615, line: 208, baseType: !174, size: 128, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3143, file: !615, line: 209, baseType: !189, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3143, file: !615, line: 211, baseType: !320, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3143, file: !615, line: 212, baseType: !486, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3143, file: !615, line: 213, baseType: !486, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3143, file: !615, line: 214, baseType: !1005, size: 64, offset: 1024)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3136, file: !615, line: 223, baseType: !3159, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{null, !3142}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3136, file: !615, line: 236, baseType: !3163, size: 64, offset: 128)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!134, !707, !109}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3136, file: !615, line: 238, baseType: !3167, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!109, !707, !2718}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3136, file: !615, line: 239, baseType: !3171, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!109, !707, !109, !2718}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3136, file: !615, line: 240, baseType: !3175, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !707, !109}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3136, file: !615, line: 242, baseType: !3179, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!305, !3142, !189, !320, !527}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3136, file: !615, line: 252, baseType: !320, size: 64, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3136, file: !615, line: 259, baseType: !486, size: 8, offset: 512)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3136, file: !615, line: 260, baseType: !3179, size: 64, offset: 576)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3136, file: !615, line: 263, baseType: !3186, size: 64, offset: 640)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!2747, !3142, !2748}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3136, file: !615, line: 266, baseType: !3190, size: 64, offset: 704)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!134, !3142, !977}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3131, file: !615, line: 109, baseType: !3194, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !615, line: 31, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3131, file: !615, line: 110, baseType: !527, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3131, file: !615, line: 111, baseType: !3067, size: 64, offset: 192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3068, file: !615, line: 148, baseType: !109, size: 64, offset: 768)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3068, file: !615, line: 154, baseType: !418, size: 64, offset: 832)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3068, file: !615, line: 156, baseType: !152, size: 16, offset: 896)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3068, file: !615, line: 157, baseType: !315, size: 16, offset: 912)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3068, file: !615, line: 158, baseType: !3203, size: 64, offset: 960)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !615, line: 32, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !219, file: !220, line: 71, baseType: !3206, size: 32, offset: 448)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3207, line: 19, size: 32, elements: !3208)
!3207 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3208 = !{!3209}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3206, file: !3207, line: 20, baseType: !1146, size: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !219, file: !220, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !219, file: !220, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !219, file: !220, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !219, file: !220, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !219, file: !220, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !66, line: 463, baseType: !3216, size: 64, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !216, file: !66, line: 465, baseType: !3218, size: 64, offset: 576)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !66, line: 36, flags: DIFlagFwdDecl)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !216, file: !66, line: 467, baseType: !223, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !216, file: !66, line: 468, baseType: !3222, size: 64, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3224)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !66, line: 87, size: 384, elements: !3225)
!3225 = !{!3226, !3227, !3228, !3232, !3237, !3241}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3224, file: !66, line: 88, baseType: !223, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3224, file: !66, line: 89, baseType: !327, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3224, file: !66, line: 90, baseType: !3229, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!134, !3216, !270}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3224, file: !66, line: 91, baseType: !3233, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!189, !3216, !3236, !3064, !3065}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3224, file: !66, line: 93, baseType: !3238, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !3216}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3224, file: !66, line: 95, baseType: !3242, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3244)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !73, line: 278, size: 1472, elements: !3245)
!3245 = !{!3246, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3244, file: !73, line: 279, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!134, !3216}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3244, file: !73, line: 280, baseType: !3238, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3244, file: !73, line: 281, baseType: !3247, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3244, file: !73, line: 282, baseType: !3247, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3244, file: !73, line: 283, baseType: !3247, size: 64, offset: 256)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3244, file: !73, line: 284, baseType: !3247, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3244, file: !73, line: 285, baseType: !3247, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3244, file: !73, line: 286, baseType: !3247, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3244, file: !73, line: 287, baseType: !3247, size: 64, offset: 512)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3244, file: !73, line: 288, baseType: !3247, size: 64, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3244, file: !73, line: 289, baseType: !3247, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3244, file: !73, line: 290, baseType: !3247, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3244, file: !73, line: 291, baseType: !3247, size: 64, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3244, file: !73, line: 292, baseType: !3247, size: 64, offset: 832)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3244, file: !73, line: 293, baseType: !3247, size: 64, offset: 896)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3244, file: !73, line: 294, baseType: !3247, size: 64, offset: 960)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3244, file: !73, line: 295, baseType: !3247, size: 64, offset: 1024)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3244, file: !73, line: 296, baseType: !3247, size: 64, offset: 1088)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3244, file: !73, line: 297, baseType: !3247, size: 64, offset: 1152)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3244, file: !73, line: 298, baseType: !3247, size: 64, offset: 1216)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3244, file: !73, line: 299, baseType: !3247, size: 64, offset: 1280)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3244, file: !73, line: 300, baseType: !3247, size: 64, offset: 1344)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3244, file: !73, line: 301, baseType: !3247, size: 64, offset: 1408)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !216, file: !66, line: 470, baseType: !3273, size: 64, offset: 768)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3275, line: 82, size: 1408, elements: !3276)
!3275 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3276 = !{!3277, !3278, !3279, !3280, !3281, !3282, !3283, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3358, !3361, !3362}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3274, file: !3275, line: 83, baseType: !223, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3274, file: !3275, line: 84, baseType: !223, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3274, file: !3275, line: 85, baseType: !3216, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3274, file: !3275, line: 86, baseType: !327, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3274, file: !3275, line: 87, baseType: !327, size: 64, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3274, file: !3275, line: 88, baseType: !327, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3274, file: !3275, line: 90, baseType: !3284, size: 64, offset: 384)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!134, !3216, !3287}
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !60, line: 95, size: 1152, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3309, !3322, !3323, !3324, !3325, !3326, !3334, !3335, !3336, !3337, !3338, !3339}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3288, file: !60, line: 96, baseType: !223, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3288, file: !60, line: 97, baseType: !3273, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3288, file: !60, line: 99, baseType: !106, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3288, file: !60, line: 100, baseType: !223, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3288, file: !60, line: 102, baseType: !486, size: 8, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3288, file: !60, line: 103, baseType: !59, size: 32, offset: 288)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3288, file: !60, line: 105, baseType: !3297, size: 64, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3299)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3300, line: 262, size: 1600, elements: !3301)
!3300 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3301 = !{!3302, !3303, !3304, !3308}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3299, file: !3300, line: 263, baseType: !2542, size: 256)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3299, file: !3300, line: 264, baseType: !2542, size: 256, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3299, file: !3300, line: 265, baseType: !3305, size: 1024, offset: 512)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 1024, elements: !3306)
!3306 = !{!3307}
!3307 = !DISubrange(count: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3299, file: !3300, line: 266, baseType: !3047, size: 64, offset: 1536)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3288, file: !60, line: 106, baseType: !3310, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3300, line: 210, size: 256, elements: !3313)
!3313 = !{!3314, !3318, !3320, !3321}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3312, file: !3300, line: 211, baseType: !3315, size: 72)
!3315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 72, elements: !3316)
!3316 = !{!3317}
!3317 = !DISubrange(count: 9)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3312, file: !3300, line: 212, baseType: !3319, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3300, line: 14, baseType: !323)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3312, file: !3300, line: 213, baseType: !172, size: 32, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3312, file: !3300, line: 214, baseType: !172, size: 32, offset: 224)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3288, file: !60, line: 108, baseType: !3247, size: 64, offset: 448)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3288, file: !60, line: 109, baseType: !3238, size: 64, offset: 512)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3288, file: !60, line: 110, baseType: !3247, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3288, file: !60, line: 111, baseType: !3238, size: 64, offset: 640)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3288, file: !60, line: 112, baseType: !3327, size: 64, offset: 704)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!134, !3216, !3330}
!3330 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !73, line: 52, baseType: !3331)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !73, line: 50, size: 32, elements: !3332)
!3332 = !{!3333}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3331, file: !73, line: 51, baseType: !134, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3288, file: !60, line: 113, baseType: !3247, size: 64, offset: 768)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3288, file: !60, line: 114, baseType: !327, size: 64, offset: 832)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3288, file: !60, line: 115, baseType: !327, size: 64, offset: 896)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3288, file: !60, line: 117, baseType: !3242, size: 64, offset: 960)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3288, file: !60, line: 118, baseType: !3238, size: 64, offset: 1024)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3288, file: !60, line: 120, baseType: !3340, size: 64, offset: 1088)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !60, line: 120, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3274, file: !3275, line: 91, baseType: !3229, size: 64, offset: 448)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3274, file: !3275, line: 92, baseType: !3247, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3274, file: !3275, line: 93, baseType: !3238, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3274, file: !3275, line: 94, baseType: !3247, size: 64, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3274, file: !3275, line: 95, baseType: !3238, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3274, file: !3275, line: 97, baseType: !3247, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3274, file: !3275, line: 98, baseType: !3247, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3274, file: !3275, line: 100, baseType: !3327, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3274, file: !3275, line: 101, baseType: !3247, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3274, file: !3275, line: 103, baseType: !3247, size: 64, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3274, file: !3275, line: 105, baseType: !3247, size: 64, offset: 1088)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3274, file: !3275, line: 107, baseType: !3242, size: 64, offset: 1152)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3274, file: !3275, line: 109, baseType: !3355, size: 64, offset: 1216)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3357)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3275, line: 109, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3274, file: !3275, line: 111, baseType: !3359, size: 64, offset: 1280)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3275, line: 111, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3274, file: !3275, line: 112, baseType: !641, offset: 1344)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3274, file: !3275, line: 114, baseType: !486, size: 8, offset: 1344)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !216, file: !66, line: 471, baseType: !3287, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !216, file: !66, line: 473, baseType: !109, size: 64, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !216, file: !66, line: 475, baseType: !109, size: 64, offset: 960)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !216, file: !66, line: 480, baseType: !1089, size: 192, offset: 1024)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !216, file: !66, line: 484, baseType: !3368, size: 576, offset: 1216)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !66, line: 361, size: 576, elements: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3368, file: !66, line: 362, baseType: !174, size: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3368, file: !66, line: 363, baseType: !174, size: 128, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3368, file: !66, line: 364, baseType: !174, size: 128, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3368, file: !66, line: 365, baseType: !174, size: 128, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3368, file: !66, line: 366, baseType: !486, size: 8, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3368, file: !66, line: 367, baseType: !65, size: 32, offset: 544)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !216, file: !66, line: 485, baseType: !3377, size: 2304, offset: 1792)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !73, line: 565, size: 2304, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3474, !3478}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3377, file: !73, line: 566, baseType: !3330, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3377, file: !73, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3377, file: !73, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3377, file: !73, line: 569, baseType: !486, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3377, file: !73, line: 570, baseType: !486, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3377, file: !73, line: 571, baseType: !486, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3377, file: !73, line: 572, baseType: !486, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3377, file: !73, line: 573, baseType: !486, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3377, file: !73, line: 574, baseType: !486, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3377, file: !73, line: 575, baseType: !486, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3377, file: !73, line: 576, baseType: !486, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3377, file: !73, line: 577, baseType: !414, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3377, file: !73, line: 578, baseType: !234, offset: 96)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3377, file: !73, line: 580, baseType: !174, size: 128, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3377, file: !73, line: 581, baseType: !1417, size: 192, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3377, file: !73, line: 582, baseType: !3395, size: 64, offset: 448)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3397, line: 43, size: 1472, elements: !3398)
!3397 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3398 = !{!3399, !3400, !3401, !3402, !3403, !3406, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3396, file: !3397, line: 44, baseType: !223, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3396, file: !3397, line: 45, baseType: !134, size: 32, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3396, file: !3397, line: 46, baseType: !174, size: 128, offset: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3396, file: !3397, line: 47, baseType: !234, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3396, file: !3397, line: 48, baseType: !3404, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !73, line: 533, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3396, file: !3397, line: 49, baseType: !3407, size: 320, offset: 320)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3408, line: 11, size: 320, elements: !3409)
!3408 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3409 = !{!3410, !3411, !3412, !3417}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3407, file: !3408, line: 16, baseType: !635, size: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3407, file: !3408, line: 17, baseType: !323, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3407, file: !3408, line: 18, baseType: !3413, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3407, file: !3408, line: 19, baseType: !414, size: 32, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3396, file: !3397, line: 50, baseType: !323, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3396, file: !3397, line: 51, baseType: !1216, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3396, file: !3397, line: 52, baseType: !1216, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3396, file: !3397, line: 53, baseType: !1216, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3396, file: !3397, line: 54, baseType: !1216, size: 64, offset: 896)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3396, file: !3397, line: 55, baseType: !1216, size: 64, offset: 960)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3396, file: !3397, line: 56, baseType: !323, size: 64, offset: 1024)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3396, file: !3397, line: 57, baseType: !323, size: 64, offset: 1088)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3396, file: !3397, line: 58, baseType: !323, size: 64, offset: 1152)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3396, file: !3397, line: 59, baseType: !323, size: 64, offset: 1216)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3396, file: !3397, line: 60, baseType: !323, size: 64, offset: 1280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3396, file: !3397, line: 61, baseType: !3216, size: 64, offset: 1344)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3396, file: !3397, line: 62, baseType: !486, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3396, file: !3397, line: 63, baseType: !486, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3377, file: !73, line: 583, baseType: !486, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3377, file: !73, line: 584, baseType: !486, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3377, file: !73, line: 585, baseType: !486, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3377, file: !73, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3377, file: !73, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3377, file: !73, line: 592, baseType: !1208, size: 512, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3377, file: !73, line: 593, baseType: !418, size: 64, offset: 1088)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3377, file: !73, line: 594, baseType: !1873, size: 256, offset: 1152)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3377, file: !73, line: 595, baseType: !1396, size: 128, offset: 1408)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3377, file: !73, line: 596, baseType: !3404, size: 64, offset: 1536)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3377, file: !73, line: 597, baseType: !744, size: 32, offset: 1600)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3377, file: !73, line: 598, baseType: !744, size: 32, offset: 1632)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3377, file: !73, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3377, file: !73, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3377, file: !73, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3377, file: !73, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3377, file: !73, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3377, file: !73, line: 604, baseType: !486, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3377, file: !73, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3377, file: !73, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3377, file: !73, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3377, file: !73, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3377, file: !73, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3377, file: !73, line: 610, baseType: !7, size: 32, offset: 1696)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3377, file: !73, line: 611, baseType: !72, size: 32, offset: 1728)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3377, file: !73, line: 612, baseType: !80, size: 32, offset: 1760)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3377, file: !73, line: 613, baseType: !134, size: 32, offset: 1792)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3377, file: !73, line: 614, baseType: !134, size: 32, offset: 1824)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3377, file: !73, line: 615, baseType: !418, size: 64, offset: 1856)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3377, file: !73, line: 616, baseType: !418, size: 64, offset: 1920)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3377, file: !73, line: 617, baseType: !418, size: 64, offset: 1984)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3377, file: !73, line: 618, baseType: !418, size: 64, offset: 2048)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3377, file: !73, line: 620, baseType: !3465, size: 64, offset: 2112)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !73, line: 536, size: 256, elements: !3467)
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3466, file: !73, line: 537, baseType: !234)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3466, file: !73, line: 538, baseType: !7, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3466, file: !73, line: 540, baseType: !174, size: 128, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3466, file: !73, line: 543, baseType: !3472, size: 64, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !73, line: 534, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3377, file: !73, line: 621, baseType: !3475, size: 64, offset: 2176)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !3216, !1359}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3377, file: !73, line: 622, baseType: !3479, size: 64, offset: 2240)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !73, line: 622, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !216, file: !66, line: 486, baseType: !3482, size: 64, offset: 4096)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !73, line: 642, size: 1792, elements: !3484)
!3484 = !{!3485, !3486, !3487, !3491, !3492, !3493}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3483, file: !73, line: 643, baseType: !3244, size: 1472)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3483, file: !73, line: 644, baseType: !3247, size: 64, offset: 1472)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3483, file: !73, line: 645, baseType: !3488, size: 64, offset: 1536)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{null, !3216, !486}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3483, file: !73, line: 646, baseType: !3247, size: 64, offset: 1600)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3483, file: !73, line: 647, baseType: !3238, size: 64, offset: 1664)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3483, file: !73, line: 648, baseType: !3238, size: 64, offset: 1728)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !216, file: !66, line: 493, baseType: !3495, size: 64, offset: 4160)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !66, line: 493, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !216, file: !66, line: 499, baseType: !174, size: 128, offset: 4224)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !216, file: !66, line: 502, baseType: !3499, size: 64, offset: 4352)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !66, line: 502, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !216, file: !66, line: 504, baseType: !3503, size: 64, offset: 4416)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !216, file: !66, line: 505, baseType: !418, size: 64, offset: 4480)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !216, file: !66, line: 510, baseType: !418, size: 64, offset: 4544)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !216, file: !66, line: 511, baseType: !3507, size: 64, offset: 4608)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !66, line: 511, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !216, file: !66, line: 513, baseType: !3511, size: 64, offset: 4672)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !66, line: 288, size: 128, elements: !3513)
!3513 = !{!3514, !3515}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3512, file: !66, line: 293, baseType: !7, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3512, file: !66, line: 294, baseType: !323, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !216, file: !66, line: 515, baseType: !174, size: 128, offset: 4736)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !216, file: !66, line: 526, baseType: !3518, offset: 4864)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3519, line: 5, elements: !248)
!3519 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !216, file: !66, line: 528, baseType: !3521, size: 64, offset: 4864)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3523, line: 14, flags: DIFlagFwdDecl)
!3523 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !216, file: !66, line: 529, baseType: !3525, size: 64, offset: 4928)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3275, line: 22, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !216, file: !66, line: 534, baseType: !509, size: 32, offset: 4992)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !216, file: !66, line: 535, baseType: !414, size: 32, offset: 5024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !216, file: !66, line: 537, baseType: !234, offset: 5056)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !216, file: !66, line: 538, baseType: !174, size: 128, offset: 5056)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !216, file: !66, line: 540, baseType: !3532, size: 64, offset: 5184)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3534, line: 54, size: 960, elements: !3535)
!3534 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3546, !3550, !3551, !3552, !3553, !3557, !3561, !3562}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3533, file: !3534, line: 55, baseType: !223, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3533, file: !3534, line: 56, baseType: !106, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3533, file: !3534, line: 58, baseType: !327, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3533, file: !3534, line: 59, baseType: !327, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3533, file: !3534, line: 60, baseType: !227, size: 64, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3533, file: !3534, line: 62, baseType: !3229, size: 64, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3533, file: !3534, line: 63, baseType: !3543, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!189, !3216, !3236}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3533, file: !3534, line: 65, baseType: !3547, size: 64, offset: 448)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{null, !3532}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3533, file: !3534, line: 66, baseType: !3238, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3533, file: !3534, line: 68, baseType: !3247, size: 64, offset: 576)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3533, file: !3534, line: 70, baseType: !3030, size: 64, offset: 640)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3533, file: !3534, line: 71, baseType: !3554, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!3047, !3216}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3533, file: !3534, line: 73, baseType: !3558, size: 64, offset: 768)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !3216, !3064, !3065}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3533, file: !3534, line: 75, baseType: !3242, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3533, file: !3534, line: 77, baseType: !3359, size: 64, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !216, file: !66, line: 541, baseType: !327, size: 64, offset: 5248)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !216, file: !66, line: 543, baseType: !3238, size: 64, offset: 5312)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !216, file: !66, line: 544, baseType: !3566, size: 64, offset: 5376)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !66, line: 45, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !216, file: !66, line: 545, baseType: !3569, size: 64, offset: 5440)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !66, line: 47, flags: DIFlagFwdDecl)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !216, file: !66, line: 547, baseType: !486, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !216, file: !66, line: 548, baseType: !486, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !216, file: !66, line: 549, baseType: !486, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !216, file: !66, line: 550, baseType: !486, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !111, file: !87, line: 258, baseType: !3216, size: 64, offset: 5952)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !111, file: !87, line: 259, baseType: !1873, size: 256, offset: 6016)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !190)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!3580 = !{!0, !3581, !3586, !3591, !3596, !4129, !4134, !4138, !4140, !4145, !4150, !4155, !4157, !4162, !4167, !4172, !4179}
!3581 = !DIGlobalVariableExpression(var: !3582, expr: !DIExpression())
!3582 = distinct !DIGlobalVariable(name: "__exitcall_lg_driver_exit", scope: !2, file: !3, line: 955, type: !3583, isLocal: true, isDefinition: true)
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3584, line: 117, baseType: !3585)
!3584 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!3586 = !DIGlobalVariableExpression(var: !3587, expr: !DIExpression())
!3587 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file216", scope: !2, file: !3, line: 963, type: !3588, isLocal: true, isDefinition: true, align: 8)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 344, elements: !3589)
!3589 = !{!3590}
!3590 = !DISubrange(count: 43)
!3591 = !DIGlobalVariableExpression(var: !3592, expr: !DIExpression())
!3592 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license217", scope: !2, file: !3, line: 963, type: !3593, isLocal: true, isDefinition: true, align: 8)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 200, elements: !3594)
!3594 = !{!3595}
!3595 = !DISubrange(count: 25)
!3596 = !DIGlobalVariableExpression(var: !3597, expr: !DIExpression())
!3597 = distinct !DIGlobalVariable(name: "lg_driver", scope: !2, file: !3, line: 944, type: !3598, isLocal: true, isDefinition: true)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_driver", file: !6, line: 738, size: 2432, elements: !3599)
!3599 = !{!3600, !3601, !3611, !3612, !3613, !4074, !4078, !4079, !4085, !4090, !4098, !4102, !4103, !4107, !4113, !4114, !4118, !4122, !4126, !4127, !4128}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3598, file: !6, line: 739, baseType: !189, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3598, file: !6, line: 740, baseType: !3602, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3604)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device_id", file: !3300, line: 166, size: 192, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3604, file: !3300, line: 167, baseType: !151, size: 16)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !3604, file: !3300, line: 168, baseType: !151, size: 16, offset: 16)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3604, file: !3300, line: 169, baseType: !172, size: 32, offset: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3604, file: !3300, line: 170, baseType: !172, size: 32, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3604, file: !3300, line: 171, baseType: !3319, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_list", scope: !3598, file: !6, line: 742, baseType: !174, size: 128, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_lock", scope: !3598, file: !6, line: 743, baseType: !234, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3598, file: !6, line: 745, baseType: !3614, size: 64, offset: 256)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!486, !3617, !486}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device", file: !6, line: 547, size: 60160, elements: !3619)
!3619 = !{!3620, !3622, !3623, !3624, !3625, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3992, !3993, !4000, !4001, !4003, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4051, !4052, !4053, !4054, !4058, !4059, !4063, !4067, !4068, !4069, !4070, !4071, !4072, !4073}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rdesc", scope: !3618, file: !6, line: 548, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rsize", scope: !3618, file: !6, line: 549, baseType: !7, size: 32, offset: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !3618, file: !6, line: 550, baseType: !3621, size: 64, offset: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !3618, file: !6, line: 551, baseType: !7, size: 32, offset: 192)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !3618, file: !6, line: 552, baseType: !3626, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_collection", file: !6, line: 424, size: 128, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "parent_idx", scope: !3627, file: !6, line: 425, baseType: !134, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3627, file: !6, line: 426, baseType: !7, size: 32, offset: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3627, file: !6, line: 427, baseType: !7, size: 32, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3627, file: !6, line: 428, baseType: !7, size: 32, offset: 96)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "collection_size", scope: !3618, file: !6, line: 553, baseType: !7, size: 32, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "maxcollection", scope: !3618, file: !6, line: 554, baseType: !7, size: 32, offset: 352)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "maxapplication", scope: !3618, file: !6, line: 555, baseType: !7, size: 32, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3618, file: !6, line: 556, baseType: !151, size: 16, offset: 416)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !3618, file: !6, line: 557, baseType: !151, size: 16, offset: 432)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3618, file: !6, line: 558, baseType: !172, size: 32, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3618, file: !6, line: 559, baseType: !172, size: 32, offset: 480)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3618, file: !6, line: 560, baseType: !172, size: 32, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3618, file: !6, line: 561, baseType: !5, size: 32, offset: 544)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !3618, file: !6, line: 562, baseType: !7, size: 32, offset: 576)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "report_enum", scope: !3618, file: !6, line: 563, baseType: !3644, size: 49728, offset: 640)
!3644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3645, size: 49728, elements: !275)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_enum", file: !6, line: 490, size: 16576, elements: !3646)
!3646 = !{!3647, !3648, !3649}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "numbered", scope: !3645, file: !6, line: 491, baseType: !7, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "report_list", scope: !3645, file: !6, line: 492, baseType: !174, size: 128, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "report_id_hash", scope: !3645, file: !6, line: 493, baseType: !3650, size: 16384, offset: 192)
!3650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3651, size: 16384, elements: !3987)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report", file: !6, line: 476, size: 16896, elements: !3653)
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659, !3989, !3990, !3991}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3652, file: !6, line: 477, baseType: !174, size: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput_list", scope: !3652, file: !6, line: 478, baseType: !174, size: 128, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !6, line: 479, baseType: !7, size: 32, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3652, file: !6, line: 480, baseType: !7, size: 32, offset: 288)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !3652, file: !6, line: 481, baseType: !7, size: 32, offset: 320)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !3652, file: !6, line: 482, baseType: !3660, size: 16384, offset: 384)
!3660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3661, size: 16384, elements: !3987)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field", file: !6, line: 449, size: 896, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3986}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !3662, file: !6, line: 450, baseType: !7, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "logical", scope: !3662, file: !6, line: 451, baseType: !7, size: 32, offset: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !3662, file: !6, line: 452, baseType: !7, size: 32, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3662, file: !6, line: 453, baseType: !3668, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage", file: !6, line: 431, size: 192, elements: !3670)
!3670 = !{!3671, !3672, !3673, !3674, !3677, !3678, !3679, !3680, !3681, !3682, !3683}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !3669, file: !6, line: 432, baseType: !7, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "collection_index", scope: !3669, file: !6, line: 433, baseType: !7, size: 32, offset: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "usage_index", scope: !3669, file: !6, line: 434, baseType: !7, size: 32, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_multiplier", scope: !3669, file: !6, line: 435, baseType: !3675, size: 8, offset: 96)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !123, line: 20, baseType: !3676)
!3676 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_factor", scope: !3669, file: !6, line: 438, baseType: !3675, size: 8, offset: 104)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3669, file: !6, line: 439, baseType: !151, size: 16, offset: 112)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3669, file: !6, line: 440, baseType: !122, size: 8, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "hat_min", scope: !3669, file: !6, line: 441, baseType: !3675, size: 8, offset: 136)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "hat_max", scope: !3669, file: !6, line: 442, baseType: !3675, size: 8, offset: 144)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "hat_dir", scope: !3669, file: !6, line: 443, baseType: !3675, size: 8, offset: 152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_accumulated", scope: !3669, file: !6, line: 444, baseType: !1120, size: 16, offset: 160)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "maxusage", scope: !3662, file: !6, line: 454, baseType: !7, size: 32, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3662, file: !6, line: 455, baseType: !7, size: 32, offset: 224)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "report_offset", scope: !3662, file: !6, line: 456, baseType: !7, size: 32, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "report_size", scope: !3662, file: !6, line: 457, baseType: !7, size: 32, offset: 288)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "report_count", scope: !3662, file: !6, line: 458, baseType: !7, size: 32, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !3662, file: !6, line: 459, baseType: !7, size: 32, offset: 352)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3662, file: !6, line: 460, baseType: !3691, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "logical_minimum", scope: !3662, file: !6, line: 461, baseType: !1360, size: 32, offset: 448)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "logical_maximum", scope: !3662, file: !6, line: 462, baseType: !1360, size: 32, offset: 480)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "physical_minimum", scope: !3662, file: !6, line: 463, baseType: !1360, size: 32, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "physical_maximum", scope: !3662, file: !6, line: 464, baseType: !1360, size: 32, offset: 544)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "unit_exponent", scope: !3662, file: !6, line: 465, baseType: !1360, size: 32, offset: 576)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !3662, file: !6, line: 466, baseType: !7, size: 32, offset: 608)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !3662, file: !6, line: 467, baseType: !3651, size: 64, offset: 640)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3662, file: !6, line: 468, baseType: !7, size: 32, offset: 704)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput", scope: !3662, file: !6, line: 470, baseType: !3701, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_input", file: !6, line: 522, size: 576, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3982, !3983, !3984, !3985}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3702, file: !6, line: 523, baseType: !174, size: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !3702, file: !6, line: 524, baseType: !3651, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !3702, file: !6, line: 525, baseType: !3707, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !3709, line: 131, size: 10432, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3710 = !{!3711, !3712, !3713, !3714, !3722, !3723, !3724, !3726, !3727, !3728, !3729, !3730, !3731, !3733, !3734, !3735, !3736, !3737, !3738, !3752, !3757, !3852, !3855, !3856, !3857, !3859, !3862, !3872, !3873, !3874, !3875, !3876, !3880, !3884, !3888, !3892, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3979, !3980}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3708, file: !3709, line: 132, baseType: !223, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3708, file: !3709, line: 133, baseType: !223, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3708, file: !3709, line: 134, baseType: !223, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3708, file: !3709, line: 135, baseType: !3715, size: 64, offset: 192)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !3716, line: 59, size: 64, elements: !3717)
!3716 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3715, file: !3716, line: 60, baseType: !151, size: 16)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3715, file: !3716, line: 61, baseType: !151, size: 16, offset: 16)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3715, file: !3716, line: 62, baseType: !151, size: 16, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3715, file: !3716, line: 63, baseType: !151, size: 16, offset: 48)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3708, file: !3709, line: 137, baseType: !1285, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3708, file: !3709, line: 139, baseType: !1285, size: 64, offset: 320)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3708, file: !3709, line: 140, baseType: !3725, size: 768, offset: 384)
!3725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 768, elements: !2139)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3708, file: !3709, line: 141, baseType: !1285, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3708, file: !3709, line: 142, baseType: !1285, size: 64, offset: 1216)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3708, file: !3709, line: 143, baseType: !1285, size: 64, offset: 1280)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3708, file: !3709, line: 144, baseType: !1285, size: 64, offset: 1344)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3708, file: !3709, line: 145, baseType: !1285, size: 64, offset: 1408)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3708, file: !3709, line: 146, baseType: !3732, size: 128, offset: 1472)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !1484)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3708, file: !3709, line: 147, baseType: !1285, size: 64, offset: 1600)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !3708, file: !3709, line: 149, baseType: !7, size: 32, offset: 1664)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !3708, file: !3709, line: 151, baseType: !7, size: 32, offset: 1696)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !3708, file: !3709, line: 152, baseType: !7, size: 32, offset: 1728)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3708, file: !3709, line: 153, baseType: !109, size: 64, offset: 1792)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !3708, file: !3709, line: 155, baseType: !3739, size: 64, offset: 1856)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!134, !3707, !3742, !2525}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3744)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !3716, line: 114, size: 320, elements: !3745)
!3745 = !{!3746, !3747, !3748, !3749, !3750}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3744, file: !3716, line: 116, baseType: !122, size: 8)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3744, file: !3716, line: 117, baseType: !122, size: 8, offset: 8)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3744, file: !3716, line: 118, baseType: !151, size: 16, offset: 16)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !3744, file: !3716, line: 119, baseType: !172, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !3744, file: !3716, line: 120, baseType: !3751, size: 256, offset: 64)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !2133)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !3708, file: !3709, line: 158, baseType: !3753, size: 64, offset: 1920)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!134, !3707, !3756}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3708, file: !3709, line: 161, baseType: !3758, size: 64, offset: 1984)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !3709, line: 534, size: 896, elements: !3760)
!3760 = !{!3761, !3828, !3832, !3836, !3840, !3841, !3845, !3846, !3847, !3848, !3849, !3850}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !3759, file: !3709, line: 535, baseType: !3762, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!134, !3707, !3765, !3765}
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !3716, line: 450, size: 384, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3771, !3776, !3781}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3766, file: !3716, line: 451, baseType: !151, size: 16)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3766, file: !3716, line: 452, baseType: !1120, size: 16, offset: 16)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3766, file: !3716, line: 453, baseType: !151, size: 16, offset: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !3766, file: !3716, line: 454, baseType: !3772, size: 32, offset: 48)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !3716, line: 316, size: 32, elements: !3773)
!3773 = !{!3774, !3775}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !3772, file: !3716, line: 317, baseType: !151, size: 16)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3772, file: !3716, line: 318, baseType: !151, size: 16, offset: 16)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !3766, file: !3716, line: 455, baseType: !3777, size: 32, offset: 80)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !3716, line: 306, size: 32, elements: !3778)
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3777, file: !3716, line: 307, baseType: !151, size: 16)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !3777, file: !3716, line: 308, baseType: !151, size: 16, offset: 16)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3766, file: !3716, line: 463, baseType: !3782, size: 256, offset: 128)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3766, file: !3716, line: 457, size: 256, elements: !3783)
!3783 = !{!3784, !3795, !3801, !3813, !3823}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !3782, file: !3716, line: 458, baseType: !3785, size: 80)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !3716, line: 345, size: 80, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3785, file: !3716, line: 346, baseType: !1120, size: 16)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3785, file: !3716, line: 347, baseType: !3789, size: 64, offset: 16)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !3716, line: 333, size: 64, elements: !3790)
!3790 = !{!3791, !3792, !3793, !3794}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !3789, file: !3716, line: 334, baseType: !151, size: 16)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !3789, file: !3716, line: 335, baseType: !151, size: 16, offset: 16)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !3789, file: !3716, line: 336, baseType: !151, size: 16, offset: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !3789, file: !3716, line: 337, baseType: !151, size: 16, offset: 48)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !3782, file: !3716, line: 459, baseType: !3796, size: 96)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !3716, line: 356, size: 96, elements: !3797)
!3797 = !{!3798, !3799, !3800}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !3796, file: !3716, line: 357, baseType: !1120, size: 16)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !3796, file: !3716, line: 358, baseType: !1120, size: 16, offset: 16)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3796, file: !3716, line: 359, baseType: !3789, size: 64, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !3782, file: !3716, line: 460, baseType: !3802, size: 256)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !3716, line: 401, size: 256, elements: !3803)
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !3802, file: !3716, line: 402, baseType: !151, size: 16)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3802, file: !3716, line: 403, baseType: !151, size: 16, offset: 16)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !3802, file: !3716, line: 404, baseType: !1120, size: 16, offset: 32)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3802, file: !3716, line: 405, baseType: !1120, size: 16, offset: 48)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3802, file: !3716, line: 406, baseType: !151, size: 16, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !3802, file: !3716, line: 408, baseType: !3789, size: 64, offset: 80)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !3802, file: !3716, line: 410, baseType: !172, size: 32, offset: 160)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !3802, file: !3716, line: 411, baseType: !3812, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !3782, file: !3716, line: 461, baseType: !3814, size: 192)
!3814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3815, size: 192, elements: !1484)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !3716, line: 372, size: 96, elements: !3816)
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !3815, file: !3716, line: 373, baseType: !151, size: 16)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !3815, file: !3716, line: 374, baseType: !151, size: 16, offset: 16)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !3815, file: !3716, line: 376, baseType: !1120, size: 16, offset: 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !3815, file: !3716, line: 377, baseType: !1120, size: 16, offset: 48)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !3815, file: !3716, line: 379, baseType: !151, size: 16, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !3815, file: !3716, line: 380, baseType: !1120, size: 16, offset: 80)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !3782, file: !3716, line: 462, baseType: !3824, size: 32)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !3716, line: 422, size: 32, elements: !3825)
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !3824, file: !3716, line: 423, baseType: !151, size: 16)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !3824, file: !3716, line: 424, baseType: !151, size: 16, offset: 16)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !3759, file: !3709, line: 537, baseType: !3829, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!134, !3707, !134}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !3759, file: !3709, line: 539, baseType: !3833, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!134, !3707, !134, !134}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !3759, file: !3709, line: 540, baseType: !3837, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3707, !856}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !3759, file: !3709, line: 541, baseType: !3837, size: 64, offset: 256)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3759, file: !3709, line: 543, baseType: !3842, size: 64, offset: 320)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !3758}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3759, file: !3709, line: 545, baseType: !109, size: 64, offset: 384)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3759, file: !3709, line: 547, baseType: !3732, size: 128, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3759, file: !3709, line: 549, baseType: !1089, size: 192, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !3759, file: !3709, line: 551, baseType: !134, size: 32, offset: 768)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !3759, file: !3709, line: 552, baseType: !3765, size: 64, offset: 832)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !3759, file: !3709, line: 553, baseType: !3851, offset: 896)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, elements: !2234)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !3708, file: !3709, line: 163, baseType: !3853, size: 64, offset: 2048)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !3709, line: 24, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !3708, file: !3709, line: 165, baseType: !7, size: 32, offset: 2112)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3708, file: !3709, line: 166, baseType: !3407, size: 320, offset: 2176)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !3708, file: !3709, line: 168, baseType: !3858, size: 64, offset: 2496)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 64, elements: !1484)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !3708, file: !3709, line: 170, baseType: !3860, size: 64, offset: 2560)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !3709, line: 170, flags: DIFlagFwdDecl)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !3708, file: !3709, line: 172, baseType: !3863, size: 64, offset: 2624)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !3716, line: 90, size: 192, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870, !3871}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3864, file: !3716, line: 91, baseType: !1360, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3864, file: !3716, line: 92, baseType: !1360, size: 32, offset: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3864, file: !3716, line: 93, baseType: !1360, size: 32, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3864, file: !3716, line: 94, baseType: !1360, size: 32, offset: 96)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3864, file: !3716, line: 95, baseType: !1360, size: 32, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3864, file: !3716, line: 96, baseType: !1360, size: 32, offset: 160)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3708, file: !3709, line: 174, baseType: !3725, size: 768, offset: 2688)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !3708, file: !3709, line: 175, baseType: !1285, size: 64, offset: 3456)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !3708, file: !3709, line: 176, baseType: !1285, size: 64, offset: 3520)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !3708, file: !3709, line: 177, baseType: !1285, size: 64, offset: 3584)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3708, file: !3709, line: 179, baseType: !3877, size: 64, offset: 3648)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!134, !3707}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3708, file: !3709, line: 180, baseType: !3881, size: 64, offset: 3712)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3707}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3708, file: !3709, line: 181, baseType: !3885, size: 64, offset: 3776)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!134, !3707, !351}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3708, file: !3709, line: 182, baseType: !3889, size: 64, offset: 3840)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!134, !3707, !7, !7, !134}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !3708, file: !3709, line: 184, baseType: !3893, size: 64, offset: 3904)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !3709, line: 337, size: 576, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899, !3900, !3966, !3967}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3894, file: !3709, line: 339, baseType: !109, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3894, file: !3709, line: 341, baseType: !134, size: 32, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3894, file: !3709, line: 342, baseType: !223, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3894, file: !3709, line: 344, baseType: !3707, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3894, file: !3709, line: 345, baseType: !3901, size: 64, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !3709, line: 302, size: 960, elements: !3903)
!3903 = !{!3904, !3905, !3909, !3920, !3924, !3928, !3955, !3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3902, file: !3709, line: 304, baseType: !109, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3902, file: !3709, line: 306, baseType: !3906, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !3893, !7, !7, !134}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3902, file: !3709, line: 307, baseType: !3910, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{null, !3893, !3913, !7}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3915)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !3709, line: 32, size: 64, elements: !3916)
!3916 = !{!3917, !3918, !3919}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3915, file: !3709, line: 33, baseType: !151, size: 16)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3915, file: !3709, line: 34, baseType: !151, size: 16, offset: 16)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3915, file: !3709, line: 35, baseType: !1360, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3902, file: !3709, line: 309, baseType: !3921, size: 64, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!486, !3893, !7, !7, !134}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3902, file: !3709, line: 310, baseType: !3925, size: 64, offset: 256)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!486, !3901, !3707}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3902, file: !3709, line: 311, baseType: !3929, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!134, !3901, !3707, !3932}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3300, line: 342, size: 1600, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941, !3943, !3945, !3946, !3947, !3948, !3949, !3950, !3952, !3953, !3954}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3934, file: !3300, line: 344, baseType: !3319, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3934, file: !3300, line: 346, baseType: !151, size: 16, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3934, file: !3300, line: 347, baseType: !151, size: 16, offset: 80)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3934, file: !3300, line: 348, baseType: !151, size: 16, offset: 96)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3934, file: !3300, line: 349, baseType: !151, size: 16, offset: 112)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3934, file: !3300, line: 351, baseType: !3942, size: 64, offset: 128)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 64, elements: !1286)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3934, file: !3300, line: 352, baseType: !3944, size: 768, offset: 192)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 768, elements: !2139)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3934, file: !3300, line: 353, baseType: !3942, size: 64, offset: 960)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3934, file: !3300, line: 354, baseType: !3942, size: 64, offset: 1024)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3934, file: !3300, line: 355, baseType: !3942, size: 64, offset: 1088)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3934, file: !3300, line: 356, baseType: !3942, size: 64, offset: 1152)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3934, file: !3300, line: 357, baseType: !3942, size: 64, offset: 1216)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3934, file: !3300, line: 358, baseType: !3951, size: 128, offset: 1280)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3319, size: 128, elements: !1484)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3934, file: !3300, line: 359, baseType: !3942, size: 64, offset: 1408)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3934, file: !3300, line: 360, baseType: !3942, size: 64, offset: 1472)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3934, file: !3300, line: 362, baseType: !3319, size: 64, offset: 1536)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3902, file: !3709, line: 312, baseType: !3956, size: 64, offset: 384)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{null, !3893}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3902, file: !3709, line: 313, baseType: !3956, size: 64, offset: 448)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3902, file: !3709, line: 315, baseType: !486, size: 8, offset: 512)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3902, file: !3709, line: 316, baseType: !134, size: 32, offset: 544)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3902, file: !3709, line: 317, baseType: !223, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3902, file: !3709, line: 319, baseType: !3932, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3902, file: !3709, line: 321, baseType: !174, size: 128, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3902, file: !3709, line: 322, baseType: !174, size: 128, offset: 832)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3894, file: !3709, line: 347, baseType: !174, size: 128, offset: 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3894, file: !3709, line: 348, baseType: !174, size: 128, offset: 448)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !3708, file: !3709, line: 186, baseType: !234, offset: 3968)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3708, file: !3709, line: 187, baseType: !1089, size: 192, offset: 3968)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !3708, file: !3709, line: 189, baseType: !7, size: 32, offset: 4160)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !3708, file: !3709, line: 190, baseType: !486, size: 8, offset: 4192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3708, file: !3709, line: 192, baseType: !216, size: 5568, offset: 4224)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3708, file: !3709, line: 194, baseType: !174, size: 128, offset: 9792)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3708, file: !3709, line: 195, baseType: !174, size: 128, offset: 9920)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !3708, file: !3709, line: 197, baseType: !7, size: 32, offset: 10048)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !3708, file: !3709, line: 198, baseType: !7, size: 32, offset: 10080)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !3708, file: !3709, line: 199, baseType: !3978, size: 64, offset: 10112)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !3708, file: !3709, line: 201, baseType: !486, size: 8, offset: 10176)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !3708, file: !3709, line: 203, baseType: !3981, size: 192, offset: 10240)
!3981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 192, elements: !275)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3702, file: !6, line: 526, baseType: !223, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !3702, file: !6, line: 527, baseType: !486, size: 8, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "reports", scope: !3702, file: !6, line: 528, baseType: !174, size: 128, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !3702, file: !6, line: 529, baseType: !7, size: 32, offset: 512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dpad", scope: !3662, file: !6, line: 471, baseType: !151, size: 16, offset: 832)
!3987 = !{!3988}
!3988 = !DISubrange(count: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "maxfield", scope: !3652, file: !6, line: 483, baseType: !7, size: 32, offset: 16768)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3652, file: !6, line: 484, baseType: !7, size: 32, offset: 16800)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3652, file: !6, line: 485, baseType: !3617, size: 64, offset: 16832)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "led_work", scope: !3618, file: !6, line: 564, baseType: !1873, size: 256, offset: 50368)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "driver_input_lock", scope: !3618, file: !6, line: 566, baseType: !3994, size: 192, offset: 50624)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !3995, line: 15, size: 192, elements: !3996)
!3995 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!3996 = !{!3997, !3998, !3999}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3994, file: !3995, line: 16, baseType: !777)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3994, file: !3995, line: 17, baseType: !7, size: 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !3994, file: !3995, line: 18, baseType: !174, size: 128, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3618, file: !6, line: 567, baseType: !216, size: 5568, offset: 50816)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3618, file: !6, line: 568, baseType: !4002, size: 64, offset: 56384)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "ll_driver", scope: !3618, file: !6, line: 570, baseType: !4004, size: 64, offset: 56448)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_ll_driver", file: !6, line: 798, size: 704, elements: !4006)
!4006 = !{!4007, !4011, !4015, !4016, !4017, !4021, !4022, !4026, !4027, !4031, !4035}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4005, file: !6, line: 799, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!134, !3617}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4005, file: !6, line: 800, baseType: !4012, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !3617}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4005, file: !6, line: 802, baseType: !4008, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4005, file: !6, line: 803, baseType: !4012, size: 64, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4005, file: !6, line: 805, baseType: !4018, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!134, !3617, !134}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !4005, file: !6, line: 807, baseType: !4008, size: 64, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4005, file: !6, line: 809, baseType: !4023, size: 64, offset: 384)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{null, !3617, !3651, !134}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4005, file: !6, line: 812, baseType: !4008, size: 64, offset: 448)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "raw_request", scope: !4005, file: !6, line: 814, baseType: !4028, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!134, !3617, !124, !3621, !320, !124, !134}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "output_report", scope: !4005, file: !6, line: 818, baseType: !4032, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!134, !3617, !3621, !320}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !4005, file: !6, line: 820, baseType: !4036, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!134, !3617, !134, !134, !134}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_lock", scope: !3618, file: !6, line: 571, baseType: !1089, size: 192, offset: 56512)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_count", scope: !3618, file: !6, line: 572, baseType: !7, size: 32, offset: 56704)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3618, file: !6, line: 590, baseType: !323, size: 64, offset: 56768)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !3618, file: !6, line: 591, baseType: !7, size: 32, offset: 56832)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3618, file: !6, line: 592, baseType: !7, size: 32, offset: 56864)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "io_started", scope: !3618, file: !6, line: 593, baseType: !486, size: 8, offset: 56896)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !3618, file: !6, line: 595, baseType: !174, size: 128, offset: 56960)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev", scope: !3618, file: !6, line: 596, baseType: !109, size: 64, offset: 57088)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "hidraw", scope: !3618, file: !6, line: 597, baseType: !109, size: 64, offset: 57152)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3618, file: !6, line: 599, baseType: !3305, size: 1024, offset: 57216)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3618, file: !6, line: 600, baseType: !4050, size: 512, offset: 58240)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 512, elements: !279)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3618, file: !6, line: 601, baseType: !4050, size: 512, offset: 58752)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3618, file: !6, line: 603, baseType: !109, size: 64, offset: 59264)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ff_init", scope: !3618, file: !6, line: 606, baseType: !4008, size: 64, offset: 59328)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_connect", scope: !3618, file: !6, line: 609, baseType: !4055, size: 64, offset: 59392)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!134, !3617, !7}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_disconnect", scope: !3618, file: !6, line: 610, baseType: !4012, size: 64, offset: 59456)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_hid_event", scope: !3618, file: !6, line: 611, baseType: !4060, size: 64, offset: 59520)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !3617, !3661, !3668, !1360}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_report_event", scope: !3618, file: !6, line: 613, baseType: !4064, size: 64, offset: 59584)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !3617, !3651}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !3618, file: !6, line: 616, baseType: !152, size: 16, offset: 59648)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3618, file: !6, line: 617, baseType: !381, size: 64, offset: 59712)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "debug_rdesc", scope: !3618, file: !6, line: 618, baseType: !381, size: 64, offset: 59776)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "debug_events", scope: !3618, file: !6, line: 619, baseType: !381, size: 64, offset: 59840)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list", scope: !3618, file: !6, line: 620, baseType: !174, size: 128, offset: 59904)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list_lock", scope: !3618, file: !6, line: 621, baseType: !234, offset: 60032)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "debug_wait", scope: !3618, file: !6, line: 622, baseType: !1396, size: 128, offset: 60032)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3598, file: !6, line: 746, baseType: !4075, size: 64, offset: 320)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!134, !3617, !3602}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3598, file: !6, line: 747, baseType: !4012, size: 64, offset: 384)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "report_table", scope: !3598, file: !6, line: 749, baseType: !4080, size: 64, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4082)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_id", file: !6, line: 688, size: 32, elements: !4083)
!4083 = !{!4084}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !4082, file: !6, line: 689, baseType: !172, size: 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "raw_event", scope: !3598, file: !6, line: 750, baseType: !4086, size: 64, offset: 512)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!134, !3617, !3651, !4089, !134}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "usage_table", scope: !3598, file: !6, line: 752, baseType: !4091, size: 64, offset: 576)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4093)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage_id", file: !6, line: 691, size: 96, elements: !4094)
!4094 = !{!4095, !4096, !4097}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "usage_hid", scope: !4093, file: !6, line: 692, baseType: !172, size: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "usage_type", scope: !4093, file: !6, line: 693, baseType: !172, size: 32, offset: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "usage_code", scope: !4093, file: !6, line: 694, baseType: !172, size: 32, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3598, file: !6, line: 753, baseType: !4099, size: 64, offset: 640)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!134, !3617, !3661, !3668, !1360}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !3598, file: !6, line: 755, baseType: !4064, size: 64, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "report_fixup", scope: !3598, file: !6, line: 757, baseType: !4104, size: 64, offset: 768)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!3621, !3617, !3621, !2525}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapping", scope: !3598, file: !6, line: 760, baseType: !4108, size: 64, offset: 832)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!134, !3617, !3701, !3661, !3668, !4111, !701}
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapped", scope: !3598, file: !6, line: 763, baseType: !4108, size: 64, offset: 896)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "input_configured", scope: !3598, file: !6, line: 766, baseType: !4115, size: 64, offset: 960)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!134, !3617, !3701}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "feature_mapping", scope: !3598, file: !6, line: 768, baseType: !4119, size: 64, offset: 1024)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{null, !3617, !3661, !3668}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3598, file: !6, line: 772, baseType: !4123, size: 64, offset: 1088)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!134, !3617, !3330}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3598, file: !6, line: 773, baseType: !4008, size: 64, offset: 1152)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3598, file: !6, line: 774, baseType: !4008, size: 64, offset: 1216)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3598, file: !6, line: 777, baseType: !3288, size: 1152, offset: 1280)
!4129 = !DIGlobalVariableExpression(var: !4130, expr: !DIExpression())
!4130 = distinct !DIGlobalVariable(name: "lg_devices", scope: !2, file: !3, line: 873, type: !4131, isLocal: true, isDefinition: true)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3603, size: 5952, elements: !4132)
!4132 = !{!4133}
!4133 = !DISubrange(count: 31)
!4134 = !DIGlobalVariableExpression(var: !4135, expr: !DIExpression())
!4135 = distinct !DIGlobalVariable(name: "cbuf", scope: !4136, file: !3, line: 814, type: !4137, isLocal: true, isDefinition: true)
!4136 = distinct !DISubprogram(name: "lg_probe", scope: !3, file: !3, line: 770, type: !4076, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 72, elements: !3316)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "__key", scope: !4136, file: !3, line: 829, type: !641, isLocal: true, isDefinition: true)
!4140 = !DIGlobalVariableExpression(var: !4141, expr: !DIExpression())
!4141 = distinct !DIGlobalVariable(name: "fg_rdesc_fixed", scope: !2, file: !3, line: 382, type: !4142, isLocal: true, isDefinition: true)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 632, elements: !4143)
!4143 = !{!4144}
!4144 = !DISubrange(count: 79)
!4145 = !DIGlobalVariableExpression(var: !4146, expr: !DIExpression())
!4146 = distinct !DIGlobalVariable(name: "ffg_rdesc_fixed", scope: !2, file: !3, line: 336, type: !4147, isLocal: true, isDefinition: true)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 712, elements: !4148)
!4148 = !{!4149}
!4149 = !DISubrange(count: 89)
!4150 = !DIGlobalVariableExpression(var: !4151, expr: !DIExpression())
!4151 = distinct !DIGlobalVariable(name: "df_rdesc_fixed", scope: !2, file: !3, line: 61, type: !4152, isLocal: true, isDefinition: true)
!4152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1056, elements: !4153)
!4153 = !{!4154}
!4154 = !DISubrange(count: 132)
!4155 = !DIGlobalVariableExpression(var: !4156, expr: !DIExpression())
!4156 = distinct !DIGlobalVariable(name: "momo_rdesc_fixed", scope: !2, file: !3, line: 242, type: !4147, isLocal: true, isDefinition: true)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(name: "momo2_rdesc_fixed", scope: !2, file: !3, line: 288, type: !4159, isLocal: true, isDefinition: true)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 744, elements: !4160)
!4160 = !{!4161}
!4161 = !DISubrange(count: 93)
!4162 = !DIGlobalVariableExpression(var: !4163, expr: !DIExpression())
!4163 = distinct !DIGlobalVariable(name: "fv_rdesc_fixed", scope: !2, file: !3, line: 175, type: !4164, isLocal: true, isDefinition: true)
!4164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1088, elements: !4165)
!4165 = !{!4166}
!4166 = !DISubrange(count: 136)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "dfp_rdesc_fixed", scope: !2, file: !3, line: 127, type: !4169, isLocal: true, isDefinition: true)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 720, elements: !4170)
!4170 = !{!4171}
!4171 = !DISubrange(count: 90)
!4172 = !DIGlobalVariableExpression(var: !4173, expr: !DIExpression())
!4173 = distinct !DIGlobalVariable(name: "e_keymap", scope: !4174, file: !3, line: 654, type: !4175, isLocal: true, isDefinition: true)
!4174 = distinct !DISubprogram(name: "lg_input_mapping", scope: !3, file: !3, line: 648, type: !4109, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4176, size: 640, elements: !4177)
!4176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!4177 = !{!4178}
!4178 = !DISubrange(count: 80)
!4179 = !DIGlobalVariableExpression(var: !4180, expr: !DIExpression())
!4180 = distinct !DIGlobalVariable(name: "_rs", scope: !4181, file: !6, line: 997, type: !1617, isLocal: true, isDefinition: true)
!4181 = distinct !DISubprogram(name: "hid_map_usage", scope: !6, file: !6, line: 969, type: !4182, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{null, !3701, !3668, !4111, !701, !122, !7}
!4184 = !{i32 7, !"Dwarf Version", i32 4}
!4185 = !{i32 2, !"Debug Info Version", i32 3}
!4186 = !{i32 1, !"wchar_size", i32 2}
!4187 = !{i32 1, !"Code Model", i32 2}
!4188 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4189 = distinct !DISubprogram(name: "lg_driver_init", scope: !3, file: !3, line: 955, type: !4190, scopeLine: 955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!134}
!4192 = !DILocation(line: 955, column: 1, scope: !4189)
!4193 = distinct !DISubprogram(name: "lg_driver_exit", scope: !3, file: !3, line: 955, type: !1794, scopeLine: 955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4194 = !DILocation(line: 955, column: 1, scope: !4193)
!4195 = !DILocalVariable(name: "m", arg: 1, scope: !4196, file: !4197, line: 363, type: !2669)
!4196 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4197, file: !4197, line: 363, type: !4198, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4197 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!323, !2669}
!4200 = !DILocation(line: 363, column: 74, scope: !4196, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 830, column: 4, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 830, column: 4)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 830, column: 4)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 830, column: 4)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 826, column: 17)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 826, column: 7)
!4207 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 813, column: 57)
!4208 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 813, column: 6)
!4209 = !DILocation(line: 363, column: 74, scope: !4196, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 830, column: 4, scope: !4204)
!4211 = !DILocalVariable(name: "hdev", arg: 1, scope: !4136, file: !3, line: 770, type: !3617)
!4212 = !DILocation(line: 770, column: 40, scope: !4136)
!4213 = !DILocalVariable(name: "id", arg: 2, scope: !4136, file: !3, line: 770, type: !3602)
!4214 = !DILocation(line: 770, column: 74, scope: !4136)
!4215 = !DILocalVariable(name: "iface", scope: !4136, file: !3, line: 772, type: !110)
!4216 = !DILocation(line: 772, column: 24, scope: !4136)
!4217 = !DILocalVariable(name: "__mptr", scope: !4218, file: !3, line: 772, type: !109)
!4218 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 772, column: 32)
!4219 = !DILocation(line: 772, column: 32, scope: !4218)
!4220 = !DILocation(line: 772, column: 32, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 772, column: 32)
!4222 = !DILocalVariable(name: "iface_num", scope: !4136, file: !3, line: 773, type: !122)
!4223 = !DILocation(line: 773, column: 7, scope: !4136)
!4224 = !DILocation(line: 773, column: 19, scope: !4136)
!4225 = !DILocation(line: 773, column: 26, scope: !4136)
!4226 = !DILocation(line: 773, column: 42, scope: !4136)
!4227 = !DILocation(line: 773, column: 47, scope: !4136)
!4228 = !DILocalVariable(name: "connect_mask", scope: !4136, file: !3, line: 774, type: !7)
!4229 = !DILocation(line: 774, column: 15, scope: !4136)
!4230 = !DILocalVariable(name: "drv_data", scope: !4136, file: !3, line: 775, type: !4231)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lg_drv_data", file: !4233, line: 5, size: 128, elements: !4234)
!4233 = !DIFile(filename: "drivers/hid/hid-lg.h", directory: "/home/lizy2001/genbc/linux")
!4234 = !{!4235, !4236}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4232, file: !4233, line: 6, baseType: !323, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "device_props", scope: !4232, file: !4233, line: 7, baseType: !109, size: 64, offset: 64)
!4237 = !DILocation(line: 775, column: 22, scope: !4136)
!4238 = !DILocalVariable(name: "ret", scope: !4136, file: !3, line: 776, type: !134)
!4239 = !DILocation(line: 776, column: 6, scope: !4136)
!4240 = !DILocation(line: 779, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 779, column: 6)
!4242 = !DILocation(line: 779, column: 13, scope: !4241)
!4243 = !DILocation(line: 779, column: 21, scope: !4241)
!4244 = !DILocation(line: 779, column: 58, scope: !4241)
!4245 = !DILocation(line: 780, column: 7, scope: !4241)
!4246 = !DILocation(line: 780, column: 17, scope: !4241)
!4247 = !DILocation(line: 779, column: 6, scope: !4136)
!4248 = !DILocation(line: 781, column: 3, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4241, file: !3, line: 780, column: 24)
!4250 = !DILocation(line: 781, column: 3, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 781, column: 3)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 781, column: 3)
!4253 = !DILocation(line: 781, column: 3, scope: !4252)
!4254 = !DILocation(line: 782, column: 3, scope: !4249)
!4255 = !DILocation(line: 785, column: 13, scope: !4136)
!4256 = !DILocation(line: 785, column: 11, scope: !4136)
!4257 = !DILocation(line: 786, column: 7, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 786, column: 6)
!4259 = !DILocation(line: 786, column: 6, scope: !4136)
!4260 = !DILocation(line: 787, column: 3, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 786, column: 17)
!4262 = !DILocation(line: 788, column: 3, scope: !4261)
!4263 = !DILocation(line: 790, column: 21, scope: !4136)
!4264 = !DILocation(line: 790, column: 25, scope: !4136)
!4265 = !DILocation(line: 790, column: 2, scope: !4136)
!4266 = !DILocation(line: 790, column: 12, scope: !4136)
!4267 = !DILocation(line: 790, column: 19, scope: !4136)
!4268 = !DILocation(line: 792, column: 18, scope: !4136)
!4269 = !DILocation(line: 792, column: 32, scope: !4136)
!4270 = !DILocation(line: 792, column: 24, scope: !4136)
!4271 = !DILocation(line: 792, column: 2, scope: !4136)
!4272 = !DILocation(line: 794, column: 6, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 794, column: 6)
!4274 = !DILocation(line: 794, column: 16, scope: !4273)
!4275 = !DILocation(line: 794, column: 23, scope: !4273)
!4276 = !DILocation(line: 794, column: 6, scope: !4136)
!4277 = !DILocation(line: 795, column: 3, scope: !4273)
!4278 = !DILocation(line: 795, column: 9, scope: !4273)
!4279 = !DILocation(line: 795, column: 16, scope: !4273)
!4280 = !DILocation(line: 797, column: 18, scope: !4136)
!4281 = !DILocation(line: 797, column: 8, scope: !4136)
!4282 = !DILocation(line: 797, column: 6, scope: !4136)
!4283 = !DILocation(line: 798, column: 6, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 798, column: 6)
!4285 = !DILocation(line: 798, column: 6, scope: !4136)
!4286 = !DILocation(line: 799, column: 3, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 798, column: 11)
!4288 = !DILocation(line: 800, column: 3, scope: !4287)
!4289 = !DILocation(line: 803, column: 6, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 803, column: 6)
!4291 = !DILocation(line: 803, column: 16, scope: !4290)
!4292 = !DILocation(line: 803, column: 23, scope: !4290)
!4293 = !DILocation(line: 803, column: 6, scope: !4136)
!4294 = !DILocation(line: 804, column: 16, scope: !4290)
!4295 = !DILocation(line: 804, column: 3, scope: !4290)
!4296 = !DILocation(line: 806, column: 21, scope: !4136)
!4297 = !DILocation(line: 806, column: 27, scope: !4136)
!4298 = !DILocation(line: 806, column: 8, scope: !4136)
!4299 = !DILocation(line: 806, column: 6, scope: !4136)
!4300 = !DILocation(line: 807, column: 6, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 807, column: 6)
!4302 = !DILocation(line: 807, column: 6, scope: !4136)
!4303 = !DILocation(line: 808, column: 3, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 807, column: 11)
!4305 = !DILocation(line: 809, column: 3, scope: !4304)
!4306 = !DILocation(line: 813, column: 6, scope: !4208)
!4307 = !DILocation(line: 813, column: 12, scope: !4208)
!4308 = !DILocation(line: 813, column: 20, scope: !4208)
!4309 = !DILocation(line: 813, column: 6, scope: !4136)
!4310 = !DILocalVariable(name: "buf", scope: !4207, file: !3, line: 817, type: !4089)
!4311 = !DILocation(line: 817, column: 7, scope: !4207)
!4312 = !DILocation(line: 817, column: 13, scope: !4207)
!4313 = !DILocation(line: 819, column: 8, scope: !4314)
!4314 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 819, column: 7)
!4315 = !DILocation(line: 819, column: 7, scope: !4207)
!4316 = !DILocation(line: 820, column: 8, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 819, column: 13)
!4318 = !DILocation(line: 821, column: 4, scope: !4317)
!4319 = !DILocation(line: 824, column: 28, scope: !4207)
!4320 = !DILocation(line: 824, column: 34, scope: !4207)
!4321 = !DILocation(line: 824, column: 42, scope: !4207)
!4322 = !DILocation(line: 824, column: 9, scope: !4207)
!4323 = !DILocation(line: 824, column: 7, scope: !4207)
!4324 = !DILocation(line: 826, column: 7, scope: !4206)
!4325 = !DILocation(line: 826, column: 11, scope: !4206)
!4326 = !DILocation(line: 826, column: 7, scope: !4207)
!4327 = !DILocalVariable(name: "wait", scope: !4205, file: !3, line: 828, type: !1396)
!4328 = !DILocation(line: 828, column: 22, scope: !4205)
!4329 = !DILocation(line: 829, column: 4, scope: !4205)
!4330 = !DILocation(line: 829, column: 4, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 829, column: 4)
!4332 = !DILocalVariable(name: "__ret", scope: !4204, file: !3, line: 830, type: !309)
!4333 = !DILocation(line: 830, column: 4, scope: !4204)
!4334 = !DILocation(line: 365, column: 27, scope: !4335, inlinedAt: !4210)
!4335 = distinct !DILexicalBlock(scope: !4196, file: !4197, line: 365, column: 6)
!4336 = !DILocation(line: 365, column: 6, scope: !4335, inlinedAt: !4210)
!4337 = !DILocation(line: 365, column: 6, scope: !4196, inlinedAt: !4210)
!4338 = !DILocation(line: 366, column: 12, scope: !4339, inlinedAt: !4210)
!4339 = distinct !DILexicalBlock(scope: !4340, file: !4197, line: 366, column: 7)
!4340 = distinct !DILexicalBlock(scope: !4335, file: !4197, line: 365, column: 31)
!4341 = !DILocation(line: 366, column: 14, scope: !4339, inlinedAt: !4210)
!4342 = !DILocation(line: 366, column: 7, scope: !4340, inlinedAt: !4210)
!4343 = !DILocation(line: 367, column: 4, scope: !4339, inlinedAt: !4210)
!4344 = !DILocation(line: 368, column: 28, scope: !4340, inlinedAt: !4210)
!4345 = !DILocation(line: 368, column: 10, scope: !4340, inlinedAt: !4210)
!4346 = !DILocation(line: 368, column: 3, scope: !4340, inlinedAt: !4210)
!4347 = !DILocation(line: 370, column: 29, scope: !4348, inlinedAt: !4210)
!4348 = distinct !DILexicalBlock(scope: !4335, file: !4197, line: 369, column: 9)
!4349 = !DILocation(line: 370, column: 10, scope: !4348, inlinedAt: !4210)
!4350 = !DILocation(line: 370, column: 3, scope: !4348, inlinedAt: !4210)
!4351 = !DILocation(line: 372, column: 1, scope: !4196, inlinedAt: !4210)
!4352 = !DILocation(line: 830, column: 4, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 830, column: 4)
!4354 = !DILocation(line: 830, column: 4, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4353, file: !3, line: 830, column: 4)
!4356 = !DILocalVariable(name: "__cond", scope: !4357, file: !3, line: 830, type: !486)
!4357 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 830, column: 4)
!4358 = !DILocation(line: 830, column: 4, scope: !4357)
!4359 = !DILocation(line: 830, column: 4, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 830, column: 4)
!4361 = !DILocation(line: 830, column: 4, scope: !4203)
!4362 = !DILocalVariable(name: "__wq_entry", scope: !4202, file: !3, line: 830, type: !4363)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1397, line: 29, size: 320, elements: !4364)
!4364 = !{!4365, !4366, !4367, !4373}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4363, file: !1397, line: 30, baseType: !7, size: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4363, file: !1397, line: 31, baseType: !109, size: 64, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4363, file: !1397, line: 32, baseType: !4368, size: 64, offset: 128)
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1397, line: 16, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!134, !4372, !7, !134, !109}
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4363, file: !1397, line: 33, baseType: !174, size: 128, offset: 192)
!4374 = !DILocation(line: 830, column: 4, scope: !4202)
!4375 = !DILocalVariable(name: "__ret", scope: !4202, file: !3, line: 830, type: !309)
!4376 = !DILocation(line: 365, column: 27, scope: !4335, inlinedAt: !4201)
!4377 = !DILocation(line: 365, column: 6, scope: !4335, inlinedAt: !4201)
!4378 = !DILocation(line: 365, column: 6, scope: !4196, inlinedAt: !4201)
!4379 = !DILocation(line: 366, column: 12, scope: !4339, inlinedAt: !4201)
!4380 = !DILocation(line: 366, column: 14, scope: !4339, inlinedAt: !4201)
!4381 = !DILocation(line: 366, column: 7, scope: !4340, inlinedAt: !4201)
!4382 = !DILocation(line: 367, column: 4, scope: !4339, inlinedAt: !4201)
!4383 = !DILocation(line: 368, column: 28, scope: !4340, inlinedAt: !4201)
!4384 = !DILocation(line: 368, column: 10, scope: !4340, inlinedAt: !4201)
!4385 = !DILocation(line: 368, column: 3, scope: !4340, inlinedAt: !4201)
!4386 = !DILocation(line: 370, column: 29, scope: !4348, inlinedAt: !4201)
!4387 = !DILocation(line: 370, column: 10, scope: !4348, inlinedAt: !4201)
!4388 = !DILocation(line: 370, column: 3, scope: !4348, inlinedAt: !4201)
!4389 = !DILocation(line: 372, column: 1, scope: !4196, inlinedAt: !4201)
!4390 = !DILocalVariable(name: "__int", scope: !4391, file: !3, line: 830, type: !309)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 830, column: 4)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 830, column: 4)
!4393 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 830, column: 4)
!4394 = !DILocation(line: 830, column: 4, scope: !4391)
!4395 = !DILocalVariable(name: "__cond", scope: !4396, file: !3, line: 830, type: !486)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 830, column: 4)
!4397 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 830, column: 4)
!4398 = !DILocation(line: 830, column: 4, scope: !4396)
!4399 = !DILocation(line: 830, column: 4, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 830, column: 4)
!4401 = !DILocation(line: 830, column: 4, scope: !4397)
!4402 = !DILocation(line: 830, column: 4, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 830, column: 4)
!4404 = !DILocation(line: 830, column: 4, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 830, column: 4)
!4406 = !DILocation(line: 830, column: 4, scope: !4392)
!4407 = distinct !{!4407, !4408, !4408}
!4408 = !DILocation(line: 830, column: 4, scope: !4393)
!4409 = !DILabel(scope: !4202, name: "__out", file: !3, line: 830)
!4410 = !DILocation(line: 834, column: 4, scope: !4205)
!4411 = !DILocation(line: 834, column: 11, scope: !4205)
!4412 = !DILocation(line: 835, column: 22, scope: !4205)
!4413 = !DILocation(line: 835, column: 4, scope: !4205)
!4414 = !DILocation(line: 837, column: 29, scope: !4205)
!4415 = !DILocation(line: 837, column: 35, scope: !4205)
!4416 = !DILocation(line: 837, column: 43, scope: !4205)
!4417 = !DILocation(line: 837, column: 10, scope: !4205)
!4418 = !DILocation(line: 837, column: 8, scope: !4205)
!4419 = !DILocation(line: 839, column: 3, scope: !4205)
!4420 = !DILocation(line: 840, column: 9, scope: !4207)
!4421 = !DILocation(line: 840, column: 3, scope: !4207)
!4422 = !DILocation(line: 841, column: 2, scope: !4207)
!4423 = !DILocation(line: 843, column: 6, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 843, column: 6)
!4425 = !DILocation(line: 843, column: 16, scope: !4424)
!4426 = !DILocation(line: 843, column: 23, scope: !4424)
!4427 = !DILocation(line: 843, column: 6, scope: !4136)
!4428 = !DILocation(line: 844, column: 19, scope: !4424)
!4429 = !DILocation(line: 844, column: 9, scope: !4424)
!4430 = !DILocation(line: 844, column: 7, scope: !4424)
!4431 = !DILocation(line: 844, column: 3, scope: !4424)
!4432 = !DILocation(line: 845, column: 11, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 845, column: 11)
!4434 = !DILocation(line: 845, column: 21, scope: !4433)
!4435 = !DILocation(line: 845, column: 28, scope: !4433)
!4436 = !DILocation(line: 845, column: 11, scope: !4424)
!4437 = !DILocation(line: 846, column: 20, scope: !4433)
!4438 = !DILocation(line: 846, column: 9, scope: !4433)
!4439 = !DILocation(line: 846, column: 7, scope: !4433)
!4440 = !DILocation(line: 846, column: 3, scope: !4433)
!4441 = !DILocation(line: 847, column: 11, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 847, column: 11)
!4443 = !DILocation(line: 847, column: 21, scope: !4442)
!4444 = !DILocation(line: 847, column: 28, scope: !4442)
!4445 = !DILocation(line: 847, column: 11, scope: !4433)
!4446 = !DILocation(line: 848, column: 20, scope: !4442)
!4447 = !DILocation(line: 848, column: 9, scope: !4442)
!4448 = !DILocation(line: 848, column: 7, scope: !4442)
!4449 = !DILocation(line: 848, column: 3, scope: !4442)
!4450 = !DILocation(line: 849, column: 11, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 849, column: 11)
!4452 = !DILocation(line: 849, column: 21, scope: !4451)
!4453 = !DILocation(line: 849, column: 28, scope: !4451)
!4454 = !DILocation(line: 849, column: 11, scope: !4442)
!4455 = !DILocation(line: 850, column: 20, scope: !4451)
!4456 = !DILocation(line: 850, column: 9, scope: !4451)
!4457 = !DILocation(line: 850, column: 7, scope: !4451)
!4458 = !DILocation(line: 850, column: 3, scope: !4451)
!4459 = !DILocation(line: 852, column: 6, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 852, column: 6)
!4461 = !DILocation(line: 852, column: 6, scope: !4136)
!4462 = !DILocation(line: 853, column: 3, scope: !4460)
!4463 = !DILocation(line: 855, column: 2, scope: !4136)
!4464 = !DILabel(scope: !4136, name: "err_stop", file: !3, line: 857)
!4465 = !DILocation(line: 857, column: 1, scope: !4136)
!4466 = !DILocation(line: 858, column: 14, scope: !4136)
!4467 = !DILocation(line: 858, column: 2, scope: !4136)
!4468 = !DILabel(scope: !4136, name: "err_free", file: !3, line: 859)
!4469 = !DILocation(line: 859, column: 1, scope: !4136)
!4470 = !DILocation(line: 860, column: 8, scope: !4136)
!4471 = !DILocation(line: 860, column: 2, scope: !4136)
!4472 = !DILocation(line: 861, column: 9, scope: !4136)
!4473 = !DILocation(line: 861, column: 2, scope: !4136)
!4474 = !DILocation(line: 862, column: 1, scope: !4136)
!4475 = distinct !DISubprogram(name: "lg_remove", scope: !3, file: !3, line: 864, type: !4013, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4476 = !DILocalVariable(name: "hdev", arg: 1, scope: !4475, file: !3, line: 864, type: !3617)
!4477 = !DILocation(line: 864, column: 42, scope: !4475)
!4478 = !DILocalVariable(name: "drv_data", scope: !4475, file: !3, line: 866, type: !4231)
!4479 = !DILocation(line: 866, column: 22, scope: !4475)
!4480 = !DILocation(line: 866, column: 49, scope: !4475)
!4481 = !DILocation(line: 866, column: 33, scope: !4475)
!4482 = !DILocation(line: 867, column: 6, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 867, column: 6)
!4484 = !DILocation(line: 867, column: 16, scope: !4483)
!4485 = !DILocation(line: 867, column: 23, scope: !4483)
!4486 = !DILocation(line: 867, column: 6, scope: !4475)
!4487 = !DILocation(line: 868, column: 16, scope: !4483)
!4488 = !DILocation(line: 868, column: 3, scope: !4483)
!4489 = !DILocation(line: 869, column: 14, scope: !4475)
!4490 = !DILocation(line: 869, column: 2, scope: !4475)
!4491 = !DILocation(line: 870, column: 8, scope: !4475)
!4492 = !DILocation(line: 870, column: 2, scope: !4475)
!4493 = !DILocation(line: 871, column: 1, scope: !4475)
!4494 = distinct !DISubprogram(name: "lg_raw_event", scope: !3, file: !3, line: 759, type: !4087, scopeLine: 761, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4495 = !DILocalVariable(name: "hdev", arg: 1, scope: !4494, file: !3, line: 759, type: !3617)
!4496 = !DILocation(line: 759, column: 44, scope: !4494)
!4497 = !DILocalVariable(name: "report", arg: 2, scope: !4494, file: !3, line: 759, type: !3651)
!4498 = !DILocation(line: 759, column: 69, scope: !4494)
!4499 = !DILocalVariable(name: "rd", arg: 3, scope: !4494, file: !3, line: 760, type: !4089)
!4500 = !DILocation(line: 760, column: 7, scope: !4494)
!4501 = !DILocalVariable(name: "size", arg: 4, scope: !4494, file: !3, line: 760, type: !134)
!4502 = !DILocation(line: 760, column: 15, scope: !4494)
!4503 = !DILocalVariable(name: "drv_data", scope: !4494, file: !3, line: 762, type: !4231)
!4504 = !DILocation(line: 762, column: 22, scope: !4494)
!4505 = !DILocation(line: 762, column: 49, scope: !4494)
!4506 = !DILocation(line: 762, column: 33, scope: !4494)
!4507 = !DILocation(line: 764, column: 6, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 764, column: 6)
!4509 = !DILocation(line: 764, column: 16, scope: !4508)
!4510 = !DILocation(line: 764, column: 23, scope: !4508)
!4511 = !DILocation(line: 764, column: 6, scope: !4494)
!4512 = !DILocation(line: 765, column: 26, scope: !4508)
!4513 = !DILocation(line: 765, column: 32, scope: !4508)
!4514 = !DILocation(line: 765, column: 40, scope: !4508)
!4515 = !DILocation(line: 765, column: 44, scope: !4508)
!4516 = !DILocation(line: 765, column: 50, scope: !4508)
!4517 = !DILocation(line: 765, column: 10, scope: !4508)
!4518 = !DILocation(line: 765, column: 3, scope: !4508)
!4519 = !DILocation(line: 767, column: 2, scope: !4494)
!4520 = !DILocation(line: 768, column: 1, scope: !4494)
!4521 = distinct !DISubprogram(name: "lg_event", scope: !3, file: !3, line: 742, type: !4100, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4522 = !DILocalVariable(name: "hdev", arg: 1, scope: !4521, file: !3, line: 742, type: !3617)
!4523 = !DILocation(line: 742, column: 40, scope: !4521)
!4524 = !DILocalVariable(name: "field", arg: 2, scope: !4521, file: !3, line: 742, type: !3661)
!4525 = !DILocation(line: 742, column: 64, scope: !4521)
!4526 = !DILocalVariable(name: "usage", arg: 3, scope: !4521, file: !3, line: 743, type: !3668)
!4527 = !DILocation(line: 743, column: 21, scope: !4521)
!4528 = !DILocalVariable(name: "value", arg: 4, scope: !4521, file: !3, line: 743, type: !1360)
!4529 = !DILocation(line: 743, column: 34, scope: !4521)
!4530 = !DILocalVariable(name: "drv_data", scope: !4521, file: !3, line: 745, type: !4231)
!4531 = !DILocation(line: 745, column: 22, scope: !4521)
!4532 = !DILocation(line: 745, column: 49, scope: !4521)
!4533 = !DILocation(line: 745, column: 33, scope: !4521)
!4534 = !DILocation(line: 747, column: 7, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 747, column: 6)
!4536 = !DILocation(line: 747, column: 17, scope: !4535)
!4537 = !DILocation(line: 747, column: 24, scope: !4535)
!4538 = !DILocation(line: 747, column: 44, scope: !4535)
!4539 = !DILocation(line: 747, column: 47, scope: !4535)
!4540 = !DILocation(line: 747, column: 54, scope: !4535)
!4541 = !DILocation(line: 747, column: 59, scope: !4535)
!4542 = !DILocation(line: 747, column: 6, scope: !4521)
!4543 = !DILocation(line: 748, column: 15, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 747, column: 74)
!4545 = !DILocation(line: 748, column: 22, scope: !4544)
!4546 = !DILocation(line: 748, column: 32, scope: !4544)
!4547 = !DILocation(line: 748, column: 39, scope: !4544)
!4548 = !DILocation(line: 748, column: 46, scope: !4544)
!4549 = !DILocation(line: 748, column: 52, scope: !4544)
!4550 = !DILocation(line: 748, column: 59, scope: !4544)
!4551 = !DILocation(line: 749, column: 6, scope: !4544)
!4552 = !DILocation(line: 749, column: 5, scope: !4544)
!4553 = !DILocation(line: 748, column: 3, scope: !4544)
!4554 = !DILocation(line: 750, column: 3, scope: !4544)
!4555 = !DILocation(line: 752, column: 6, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 752, column: 6)
!4557 = !DILocation(line: 752, column: 16, scope: !4556)
!4558 = !DILocation(line: 752, column: 23, scope: !4556)
!4559 = !DILocation(line: 752, column: 6, scope: !4521)
!4560 = !DILocation(line: 753, column: 35, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 752, column: 33)
!4562 = !DILocation(line: 753, column: 41, scope: !4561)
!4563 = !DILocation(line: 753, column: 48, scope: !4561)
!4564 = !DILocation(line: 753, column: 55, scope: !4561)
!4565 = !DILocation(line: 753, column: 62, scope: !4561)
!4566 = !DILocation(line: 753, column: 10, scope: !4561)
!4567 = !DILocation(line: 753, column: 3, scope: !4561)
!4568 = !DILocation(line: 756, column: 2, scope: !4521)
!4569 = !DILocation(line: 757, column: 1, scope: !4521)
!4570 = distinct !DISubprogram(name: "lg_report_fixup", scope: !3, file: !3, line: 430, type: !4105, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4571 = !DILocalVariable(name: "hdev", arg: 1, scope: !4570, file: !3, line: 430, type: !3617)
!4572 = !DILocation(line: 430, column: 49, scope: !4570)
!4573 = !DILocalVariable(name: "rdesc", arg: 2, scope: !4570, file: !3, line: 430, type: !3621)
!4574 = !DILocation(line: 430, column: 61, scope: !4570)
!4575 = !DILocalVariable(name: "rsize", arg: 3, scope: !4570, file: !3, line: 431, type: !2525)
!4576 = !DILocation(line: 431, column: 17, scope: !4570)
!4577 = !DILocalVariable(name: "drv_data", scope: !4570, file: !3, line: 433, type: !4231)
!4578 = !DILocation(line: 433, column: 22, scope: !4570)
!4579 = !DILocation(line: 433, column: 49, scope: !4570)
!4580 = !DILocation(line: 433, column: 33, scope: !4570)
!4581 = !DILocation(line: 435, column: 7, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 435, column: 6)
!4583 = !DILocation(line: 435, column: 17, scope: !4582)
!4584 = !DILocation(line: 435, column: 24, scope: !4582)
!4585 = !DILocation(line: 435, column: 36, scope: !4582)
!4586 = !DILocation(line: 435, column: 40, scope: !4582)
!4587 = !DILocation(line: 435, column: 39, scope: !4582)
!4588 = !DILocation(line: 435, column: 46, scope: !4582)
!4589 = !DILocation(line: 435, column: 52, scope: !4582)
!4590 = !DILocation(line: 435, column: 55, scope: !4582)
!4591 = !DILocation(line: 435, column: 65, scope: !4582)
!4592 = !DILocation(line: 435, column: 73, scope: !4582)
!4593 = !DILocation(line: 436, column: 4, scope: !4582)
!4594 = !DILocation(line: 436, column: 14, scope: !4582)
!4595 = !DILocation(line: 436, column: 22, scope: !4582)
!4596 = !DILocation(line: 436, column: 25, scope: !4582)
!4597 = !DILocation(line: 436, column: 35, scope: !4582)
!4598 = !DILocation(line: 435, column: 6, scope: !4570)
!4599 = !DILocation(line: 437, column: 3, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 436, column: 44)
!4601 = !DILocation(line: 439, column: 15, scope: !4600)
!4602 = !DILocation(line: 439, column: 25, scope: !4600)
!4603 = !DILocation(line: 439, column: 3, scope: !4600)
!4604 = !DILocation(line: 439, column: 13, scope: !4600)
!4605 = !DILocation(line: 440, column: 15, scope: !4600)
!4606 = !DILocation(line: 440, column: 25, scope: !4600)
!4607 = !DILocation(line: 440, column: 3, scope: !4600)
!4608 = !DILocation(line: 440, column: 13, scope: !4600)
!4609 = !DILocation(line: 441, column: 2, scope: !4600)
!4610 = !DILocation(line: 442, column: 7, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 442, column: 6)
!4612 = !DILocation(line: 442, column: 17, scope: !4611)
!4613 = !DILocation(line: 442, column: 24, scope: !4611)
!4614 = !DILocation(line: 442, column: 44, scope: !4611)
!4615 = !DILocation(line: 442, column: 48, scope: !4611)
!4616 = !DILocation(line: 442, column: 47, scope: !4611)
!4617 = !DILocation(line: 442, column: 54, scope: !4611)
!4618 = !DILocation(line: 442, column: 60, scope: !4611)
!4619 = !DILocation(line: 443, column: 4, scope: !4611)
!4620 = !DILocation(line: 443, column: 14, scope: !4611)
!4621 = !DILocation(line: 443, column: 22, scope: !4611)
!4622 = !DILocation(line: 443, column: 25, scope: !4611)
!4623 = !DILocation(line: 443, column: 35, scope: !4611)
!4624 = !DILocation(line: 443, column: 43, scope: !4611)
!4625 = !DILocation(line: 444, column: 4, scope: !4611)
!4626 = !DILocation(line: 444, column: 14, scope: !4611)
!4627 = !DILocation(line: 444, column: 22, scope: !4611)
!4628 = !DILocation(line: 444, column: 25, scope: !4611)
!4629 = !DILocation(line: 444, column: 35, scope: !4611)
!4630 = !DILocation(line: 442, column: 6, scope: !4570)
!4631 = !DILocation(line: 445, column: 3, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 444, column: 44)
!4633 = !DILocation(line: 447, column: 15, scope: !4632)
!4634 = !DILocation(line: 447, column: 25, scope: !4632)
!4635 = !DILocation(line: 447, column: 3, scope: !4632)
!4636 = !DILocation(line: 447, column: 13, scope: !4632)
!4637 = !DILocation(line: 448, column: 2, scope: !4632)
!4638 = !DILocation(line: 450, column: 10, scope: !4570)
!4639 = !DILocation(line: 450, column: 16, scope: !4570)
!4640 = !DILocation(line: 450, column: 2, scope: !4570)
!4641 = !DILocation(line: 453, column: 8, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 453, column: 7)
!4643 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 450, column: 25)
!4644 = !DILocation(line: 453, column: 7, scope: !4642)
!4645 = !DILocation(line: 453, column: 14, scope: !4642)
!4646 = !DILocation(line: 453, column: 7, scope: !4643)
!4647 = !DILocation(line: 454, column: 4, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 453, column: 37)
!4649 = !DILocation(line: 456, column: 10, scope: !4648)
!4650 = !DILocation(line: 457, column: 5, scope: !4648)
!4651 = !DILocation(line: 457, column: 11, scope: !4648)
!4652 = !DILocation(line: 458, column: 3, scope: !4648)
!4653 = !DILocation(line: 459, column: 4, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 458, column: 10)
!4655 = !DILocation(line: 462, column: 3, scope: !4643)
!4656 = !DILocation(line: 466, column: 8, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 466, column: 7)
!4658 = !DILocation(line: 466, column: 7, scope: !4657)
!4659 = !DILocation(line: 466, column: 14, scope: !4657)
!4660 = !DILocation(line: 466, column: 7, scope: !4643)
!4661 = !DILocation(line: 467, column: 4, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 466, column: 38)
!4663 = !DILocation(line: 469, column: 10, scope: !4662)
!4664 = !DILocation(line: 470, column: 5, scope: !4662)
!4665 = !DILocation(line: 470, column: 11, scope: !4662)
!4666 = !DILocation(line: 471, column: 3, scope: !4662)
!4667 = !DILocation(line: 472, column: 3, scope: !4643)
!4668 = !DILocation(line: 476, column: 8, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 476, column: 7)
!4670 = !DILocation(line: 476, column: 7, scope: !4669)
!4671 = !DILocation(line: 476, column: 14, scope: !4669)
!4672 = !DILocation(line: 476, column: 7, scope: !4643)
!4673 = !DILocation(line: 477, column: 4, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 476, column: 37)
!4675 = !DILocation(line: 479, column: 10, scope: !4674)
!4676 = !DILocation(line: 480, column: 5, scope: !4674)
!4677 = !DILocation(line: 480, column: 11, scope: !4674)
!4678 = !DILocation(line: 481, column: 3, scope: !4674)
!4679 = !DILocation(line: 482, column: 3, scope: !4643)
!4680 = !DILocation(line: 485, column: 8, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 485, column: 7)
!4682 = !DILocation(line: 485, column: 7, scope: !4681)
!4683 = !DILocation(line: 485, column: 14, scope: !4681)
!4684 = !DILocation(line: 485, column: 7, scope: !4643)
!4685 = !DILocation(line: 486, column: 4, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 485, column: 39)
!4687 = !DILocation(line: 488, column: 10, scope: !4686)
!4688 = !DILocation(line: 489, column: 5, scope: !4686)
!4689 = !DILocation(line: 489, column: 11, scope: !4686)
!4690 = !DILocation(line: 490, column: 3, scope: !4686)
!4691 = !DILocation(line: 491, column: 3, scope: !4643)
!4692 = !DILocation(line: 494, column: 8, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 494, column: 7)
!4694 = !DILocation(line: 494, column: 7, scope: !4693)
!4695 = !DILocation(line: 494, column: 14, scope: !4693)
!4696 = !DILocation(line: 494, column: 7, scope: !4643)
!4697 = !DILocation(line: 495, column: 4, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 494, column: 40)
!4699 = !DILocation(line: 497, column: 10, scope: !4698)
!4700 = !DILocation(line: 498, column: 5, scope: !4698)
!4701 = !DILocation(line: 498, column: 11, scope: !4698)
!4702 = !DILocation(line: 499, column: 3, scope: !4698)
!4703 = !DILocation(line: 500, column: 3, scope: !4643)
!4704 = !DILocation(line: 503, column: 8, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 503, column: 7)
!4706 = !DILocation(line: 503, column: 7, scope: !4705)
!4707 = !DILocation(line: 503, column: 14, scope: !4705)
!4708 = !DILocation(line: 503, column: 7, scope: !4643)
!4709 = !DILocation(line: 504, column: 4, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 503, column: 37)
!4711 = !DILocation(line: 506, column: 10, scope: !4710)
!4712 = !DILocation(line: 507, column: 5, scope: !4710)
!4713 = !DILocation(line: 507, column: 11, scope: !4710)
!4714 = !DILocation(line: 508, column: 3, scope: !4710)
!4715 = !DILocation(line: 509, column: 3, scope: !4643)
!4716 = !DILocation(line: 512, column: 8, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 512, column: 7)
!4718 = !DILocation(line: 512, column: 7, scope: !4717)
!4719 = !DILocation(line: 512, column: 14, scope: !4717)
!4720 = !DILocation(line: 512, column: 7, scope: !4643)
!4721 = !DILocation(line: 513, column: 4, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 512, column: 38)
!4723 = !DILocation(line: 515, column: 10, scope: !4722)
!4724 = !DILocation(line: 516, column: 5, scope: !4722)
!4725 = !DILocation(line: 516, column: 11, scope: !4722)
!4726 = !DILocation(line: 517, column: 3, scope: !4722)
!4727 = !DILocation(line: 518, column: 3, scope: !4643)
!4728 = !DILocation(line: 521, column: 8, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 521, column: 7)
!4730 = !DILocation(line: 521, column: 7, scope: !4729)
!4731 = !DILocation(line: 521, column: 14, scope: !4729)
!4732 = !DILocation(line: 521, column: 21, scope: !4729)
!4733 = !DILocation(line: 521, column: 24, scope: !4729)
!4734 = !DILocation(line: 521, column: 34, scope: !4729)
!4735 = !DILocation(line: 521, column: 42, scope: !4729)
!4736 = !DILocation(line: 521, column: 45, scope: !4729)
!4737 = !DILocation(line: 521, column: 55, scope: !4729)
!4738 = !DILocation(line: 521, column: 63, scope: !4729)
!4739 = !DILocation(line: 522, column: 5, scope: !4729)
!4740 = !DILocation(line: 522, column: 15, scope: !4729)
!4741 = !DILocation(line: 522, column: 23, scope: !4729)
!4742 = !DILocation(line: 522, column: 26, scope: !4729)
!4743 = !DILocation(line: 522, column: 36, scope: !4729)
!4744 = !DILocation(line: 521, column: 7, scope: !4643)
!4745 = !DILocation(line: 523, column: 4, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 522, column: 45)
!4747 = !DILocation(line: 524, column: 4, scope: !4746)
!4748 = !DILocation(line: 524, column: 14, scope: !4746)
!4749 = !DILocation(line: 525, column: 4, scope: !4746)
!4750 = !DILocation(line: 525, column: 14, scope: !4746)
!4751 = !DILocation(line: 526, column: 4, scope: !4746)
!4752 = !DILocation(line: 526, column: 14, scope: !4746)
!4753 = !DILocation(line: 527, column: 4, scope: !4746)
!4754 = !DILocation(line: 527, column: 14, scope: !4746)
!4755 = !DILocation(line: 528, column: 3, scope: !4746)
!4756 = !DILocation(line: 529, column: 3, scope: !4643)
!4757 = !DILocation(line: 532, column: 9, scope: !4570)
!4758 = !DILocation(line: 532, column: 2, scope: !4570)
!4759 = !DILocalVariable(name: "hdev", arg: 1, scope: !4174, file: !3, line: 648, type: !3617)
!4760 = !DILocation(line: 648, column: 48, scope: !4174)
!4761 = !DILocalVariable(name: "hi", arg: 2, scope: !4174, file: !3, line: 648, type: !3701)
!4762 = !DILocation(line: 648, column: 72, scope: !4174)
!4763 = !DILocalVariable(name: "field", arg: 3, scope: !4174, file: !3, line: 649, type: !3661)
!4764 = !DILocation(line: 649, column: 21, scope: !4174)
!4765 = !DILocalVariable(name: "usage", arg: 4, scope: !4174, file: !3, line: 649, type: !3668)
!4766 = !DILocation(line: 649, column: 46, scope: !4174)
!4767 = !DILocalVariable(name: "bit", arg: 5, scope: !4174, file: !3, line: 650, type: !4111)
!4768 = !DILocation(line: 650, column: 19, scope: !4174)
!4769 = !DILocalVariable(name: "max", arg: 6, scope: !4174, file: !3, line: 650, type: !701)
!4770 = !DILocation(line: 650, column: 29, scope: !4174)
!4771 = !DILocalVariable(name: "drv_data", scope: !4174, file: !3, line: 664, type: !4231)
!4772 = !DILocation(line: 664, column: 22, scope: !4174)
!4773 = !DILocation(line: 664, column: 49, scope: !4174)
!4774 = !DILocation(line: 664, column: 33, scope: !4174)
!4775 = !DILocalVariable(name: "hid", scope: !4174, file: !3, line: 665, type: !7)
!4776 = !DILocation(line: 665, column: 15, scope: !4174)
!4777 = !DILocation(line: 665, column: 21, scope: !4174)
!4778 = !DILocation(line: 665, column: 28, scope: !4174)
!4779 = !DILocation(line: 667, column: 6, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 667, column: 6)
!4781 = !DILocation(line: 667, column: 12, scope: !4780)
!4782 = !DILocation(line: 667, column: 20, scope: !4780)
!4783 = !DILocation(line: 667, column: 55, scope: !4780)
!4784 = !DILocation(line: 668, column: 29, scope: !4780)
!4785 = !DILocation(line: 668, column: 33, scope: !4780)
!4786 = !DILocation(line: 668, column: 40, scope: !4780)
!4787 = !DILocation(line: 668, column: 45, scope: !4780)
!4788 = !DILocation(line: 668, column: 4, scope: !4780)
!4789 = !DILocation(line: 667, column: 6, scope: !4174)
!4790 = !DILocation(line: 669, column: 3, scope: !4780)
!4791 = !DILocation(line: 671, column: 6, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 671, column: 6)
!4793 = !DILocation(line: 671, column: 12, scope: !4792)
!4794 = !DILocation(line: 671, column: 20, scope: !4792)
!4795 = !DILocation(line: 671, column: 49, scope: !4792)
!4796 = !DILocation(line: 672, column: 22, scope: !4792)
!4797 = !DILocation(line: 672, column: 26, scope: !4792)
!4798 = !DILocation(line: 672, column: 33, scope: !4792)
!4799 = !DILocation(line: 672, column: 38, scope: !4792)
!4800 = !DILocation(line: 672, column: 4, scope: !4792)
!4801 = !DILocation(line: 671, column: 6, scope: !4174)
!4802 = !DILocation(line: 673, column: 3, scope: !4792)
!4803 = !DILocation(line: 675, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 675, column: 6)
!4805 = !DILocation(line: 675, column: 17, scope: !4804)
!4806 = !DILocation(line: 675, column: 24, scope: !4804)
!4807 = !DILocation(line: 675, column: 39, scope: !4804)
!4808 = !DILocation(line: 675, column: 62, scope: !4804)
!4809 = !DILocation(line: 675, column: 66, scope: !4804)
!4810 = !DILocation(line: 675, column: 73, scope: !4804)
!4811 = !DILocation(line: 675, column: 78, scope: !4804)
!4812 = !DILocation(line: 675, column: 42, scope: !4804)
!4813 = !DILocation(line: 675, column: 6, scope: !4174)
!4814 = !DILocation(line: 676, column: 3, scope: !4804)
!4815 = !DILocation(line: 678, column: 7, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 678, column: 6)
!4817 = !DILocation(line: 678, column: 11, scope: !4816)
!4818 = !DILocation(line: 678, column: 29, scope: !4816)
!4819 = !DILocation(line: 678, column: 6, scope: !4174)
!4820 = !DILocation(line: 679, column: 3, scope: !4816)
!4821 = !DILocation(line: 681, column: 6, scope: !4174)
!4822 = !DILocation(line: 684, column: 6, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 684, column: 6)
!4824 = !DILocation(line: 684, column: 13, scope: !4823)
!4825 = !DILocation(line: 684, column: 25, scope: !4823)
!4826 = !DILocation(line: 684, column: 6, scope: !4174)
!4827 = !DILocation(line: 685, column: 8, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 685, column: 7)
!4829 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 684, column: 42)
!4830 = !DILocation(line: 685, column: 18, scope: !4828)
!4831 = !DILocation(line: 685, column: 25, scope: !4828)
!4832 = !DILocation(line: 685, column: 52, scope: !4828)
!4833 = !DILocation(line: 686, column: 6, scope: !4828)
!4834 = !DILocation(line: 686, column: 10, scope: !4828)
!4835 = !DILocation(line: 686, column: 15, scope: !4828)
!4836 = !DILocation(line: 686, column: 18, scope: !4828)
!4837 = !DILocation(line: 686, column: 22, scope: !4828)
!4838 = !DILocation(line: 685, column: 7, scope: !4829)
!4839 = !DILocation(line: 687, column: 4, scope: !4828)
!4840 = !DILocation(line: 688, column: 2, scope: !4829)
!4841 = !DILocation(line: 689, column: 8, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 689, column: 7)
!4843 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 688, column: 9)
!4844 = !DILocation(line: 689, column: 18, scope: !4842)
!4845 = !DILocation(line: 689, column: 25, scope: !4842)
!4846 = !DILocation(line: 689, column: 47, scope: !4842)
!4847 = !DILocation(line: 690, column: 5, scope: !4842)
!4848 = !DILocation(line: 690, column: 9, scope: !4842)
!4849 = !DILocation(line: 690, column: 32, scope: !4842)
!4850 = !DILocation(line: 691, column: 14, scope: !4842)
!4851 = !DILocation(line: 691, column: 5, scope: !4842)
!4852 = !DILocation(line: 691, column: 19, scope: !4842)
!4853 = !DILocation(line: 689, column: 7, scope: !4843)
!4854 = !DILocation(line: 692, column: 18, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 691, column: 25)
!4856 = !DILocation(line: 692, column: 22, scope: !4855)
!4857 = !DILocation(line: 692, column: 29, scope: !4855)
!4858 = !DILocation(line: 692, column: 34, scope: !4855)
!4859 = !DILocation(line: 693, column: 15, scope: !4855)
!4860 = !DILocation(line: 693, column: 6, scope: !4855)
!4861 = !DILocation(line: 692, column: 4, scope: !4855)
!4862 = !DILocation(line: 694, column: 4, scope: !4855)
!4863 = !DILocation(line: 698, column: 2, scope: !4174)
!4864 = !DILocation(line: 699, column: 1, scope: !4174)
!4865 = distinct !DISubprogram(name: "lg_input_mapped", scope: !3, file: !3, line: 701, type: !4109, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4866 = !DILocalVariable(name: "hdev", arg: 1, scope: !4865, file: !3, line: 701, type: !3617)
!4867 = !DILocation(line: 701, column: 47, scope: !4865)
!4868 = !DILocalVariable(name: "hi", arg: 2, scope: !4865, file: !3, line: 701, type: !3701)
!4869 = !DILocation(line: 701, column: 71, scope: !4865)
!4870 = !DILocalVariable(name: "field", arg: 3, scope: !4865, file: !3, line: 702, type: !3661)
!4871 = !DILocation(line: 702, column: 21, scope: !4865)
!4872 = !DILocalVariable(name: "usage", arg: 4, scope: !4865, file: !3, line: 702, type: !3668)
!4873 = !DILocation(line: 702, column: 46, scope: !4865)
!4874 = !DILocalVariable(name: "bit", arg: 5, scope: !4865, file: !3, line: 703, type: !4111)
!4875 = !DILocation(line: 703, column: 19, scope: !4865)
!4876 = !DILocalVariable(name: "max", arg: 6, scope: !4865, file: !3, line: 703, type: !701)
!4877 = !DILocation(line: 703, column: 29, scope: !4865)
!4878 = !DILocalVariable(name: "drv_data", scope: !4865, file: !3, line: 705, type: !4231)
!4879 = !DILocation(line: 705, column: 22, scope: !4865)
!4880 = !DILocation(line: 705, column: 49, scope: !4865)
!4881 = !DILocation(line: 705, column: 33, scope: !4865)
!4882 = !DILocation(line: 707, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 707, column: 6)
!4884 = !DILocation(line: 707, column: 17, scope: !4883)
!4885 = !DILocation(line: 707, column: 24, scope: !4883)
!4886 = !DILocation(line: 707, column: 48, scope: !4883)
!4887 = !DILocation(line: 707, column: 51, scope: !4883)
!4888 = !DILocation(line: 707, column: 58, scope: !4883)
!4889 = !DILocation(line: 707, column: 63, scope: !4883)
!4890 = !DILocation(line: 707, column: 73, scope: !4883)
!4891 = !DILocation(line: 708, column: 5, scope: !4883)
!4892 = !DILocation(line: 708, column: 12, scope: !4883)
!4893 = !DILocation(line: 708, column: 18, scope: !4883)
!4894 = !DILocation(line: 707, column: 6, scope: !4865)
!4895 = !DILocation(line: 709, column: 3, scope: !4883)
!4896 = !DILocation(line: 709, column: 10, scope: !4883)
!4897 = !DILocation(line: 709, column: 16, scope: !4883)
!4898 = !DILocation(line: 711, column: 7, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 711, column: 6)
!4900 = !DILocation(line: 711, column: 17, scope: !4899)
!4901 = !DILocation(line: 711, column: 24, scope: !4899)
!4902 = !DILocation(line: 711, column: 47, scope: !4899)
!4903 = !DILocation(line: 711, column: 51, scope: !4899)
!4904 = !DILocation(line: 711, column: 58, scope: !4899)
!4905 = !DILocation(line: 711, column: 63, scope: !4899)
!4906 = !DILocation(line: 711, column: 73, scope: !4899)
!4907 = !DILocation(line: 712, column: 5, scope: !4899)
!4908 = !DILocation(line: 712, column: 12, scope: !4899)
!4909 = !DILocation(line: 712, column: 17, scope: !4899)
!4910 = !DILocation(line: 712, column: 27, scope: !4899)
!4911 = !DILocation(line: 712, column: 30, scope: !4899)
!4912 = !DILocation(line: 712, column: 37, scope: !4899)
!4913 = !DILocation(line: 712, column: 42, scope: !4899)
!4914 = !DILocation(line: 711, column: 6, scope: !4865)
!4915 = !DILocation(line: 713, column: 13, scope: !4899)
!4916 = !DILocation(line: 713, column: 20, scope: !4899)
!4917 = !DILocation(line: 713, column: 27, scope: !4899)
!4918 = !DILocation(line: 713, column: 26, scope: !4899)
!4919 = !DILocation(line: 713, column: 3, scope: !4899)
!4920 = !DILocation(line: 716, column: 6, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 716, column: 6)
!4922 = !DILocation(line: 716, column: 13, scope: !4921)
!4923 = !DILocation(line: 716, column: 18, scope: !4921)
!4924 = !DILocation(line: 716, column: 28, scope: !4921)
!4925 = !DILocation(line: 716, column: 32, scope: !4921)
!4926 = !DILocation(line: 716, column: 39, scope: !4921)
!4927 = !DILocation(line: 716, column: 44, scope: !4921)
!4928 = !DILocation(line: 716, column: 53, scope: !4921)
!4929 = !DILocation(line: 717, column: 4, scope: !4921)
!4930 = !DILocation(line: 717, column: 11, scope: !4921)
!4931 = !DILocation(line: 717, column: 16, scope: !4921)
!4932 = !DILocation(line: 717, column: 25, scope: !4921)
!4933 = !DILocation(line: 717, column: 28, scope: !4921)
!4934 = !DILocation(line: 717, column: 35, scope: !4921)
!4935 = !DILocation(line: 717, column: 40, scope: !4921)
!4936 = !DILocation(line: 717, column: 49, scope: !4921)
!4937 = !DILocation(line: 718, column: 4, scope: !4921)
!4938 = !DILocation(line: 718, column: 11, scope: !4921)
!4939 = !DILocation(line: 718, column: 16, scope: !4921)
!4940 = !DILocation(line: 716, column: 6, scope: !4865)
!4941 = !DILocation(line: 719, column: 11, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4921, file: !3, line: 718, column: 28)
!4943 = !DILocation(line: 719, column: 17, scope: !4942)
!4944 = !DILocation(line: 719, column: 3, scope: !4942)
!4945 = !DILocation(line: 732, column: 4, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 719, column: 26)
!4947 = !DILocation(line: 732, column: 11, scope: !4946)
!4948 = !DILocation(line: 732, column: 23, scope: !4946)
!4949 = !DILocation(line: 733, column: 4, scope: !4946)
!4950 = !DILocation(line: 735, column: 4, scope: !4946)
!4951 = !DILocation(line: 737, column: 2, scope: !4942)
!4952 = !DILocation(line: 739, column: 2, scope: !4865)
!4953 = distinct !DISubprogram(name: "kzalloc", scope: !94, file: !94, line: 662, type: !4954, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!109, !320, !740}
!4956 = !DILocalVariable(name: "s", arg: 1, scope: !4957, file: !94, line: 445, type: !931)
!4957 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !4958, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!109, !931, !740, !320}
!4960 = !DILocation(line: 445, column: 72, scope: !4957, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 552, column: 10, scope: !4962, inlinedAt: !4965)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !94, line: 540, column: 34)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !94, line: 540, column: 6)
!4964 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !4954, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4965 = distinct !DILocation(line: 664, column: 9, scope: !4953)
!4966 = !DILocalVariable(name: "flags", arg: 2, scope: !4957, file: !94, line: 446, type: !740)
!4967 = !DILocation(line: 446, column: 9, scope: !4957, inlinedAt: !4961)
!4968 = !DILocalVariable(name: "size", arg: 3, scope: !4957, file: !94, line: 446, type: !320)
!4969 = !DILocation(line: 446, column: 23, scope: !4957, inlinedAt: !4961)
!4970 = !DILocalVariable(name: "ret", scope: !4957, file: !94, line: 448, type: !109)
!4971 = !DILocation(line: 448, column: 8, scope: !4957, inlinedAt: !4961)
!4972 = !DILocalVariable(name: "flags", arg: 1, scope: !4973, file: !94, line: 318, type: !740)
!4973 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !4974, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!93, !740}
!4976 = !DILocation(line: 318, column: 67, scope: !4973, inlinedAt: !4977)
!4977 = distinct !DILocation(line: 553, column: 20, scope: !4962, inlinedAt: !4965)
!4978 = !DILocalVariable(name: "size", arg: 1, scope: !4979, file: !94, line: 346, type: !320)
!4979 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !4980, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!7, !320}
!4982 = !DILocation(line: 346, column: 58, scope: !4979, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 547, column: 11, scope: !4962, inlinedAt: !4965)
!4984 = !DILocalVariable(name: "size", arg: 1, scope: !4985, file: !94, line: 472, type: !320)
!4985 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !4986, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!109, !320, !740, !7}
!4988 = !DILocation(line: 472, column: 28, scope: !4985, inlinedAt: !4989)
!4989 = distinct !DILocation(line: 481, column: 9, scope: !4990, inlinedAt: !4991)
!4990 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !4954, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!4991 = distinct !DILocation(line: 545, column: 11, scope: !4992, inlinedAt: !4965)
!4992 = distinct !DILexicalBlock(scope: !4962, file: !94, line: 544, column: 7)
!4993 = !DILocalVariable(name: "flags", arg: 2, scope: !4985, file: !94, line: 472, type: !740)
!4994 = !DILocation(line: 472, column: 40, scope: !4985, inlinedAt: !4989)
!4995 = !DILocalVariable(name: "order", arg: 3, scope: !4985, file: !94, line: 472, type: !7)
!4996 = !DILocation(line: 472, column: 60, scope: !4985, inlinedAt: !4989)
!4997 = !DILocalVariable(name: "size", arg: 1, scope: !4990, file: !94, line: 478, type: !320)
!4998 = !DILocation(line: 478, column: 51, scope: !4990, inlinedAt: !4991)
!4999 = !DILocalVariable(name: "flags", arg: 2, scope: !4990, file: !94, line: 478, type: !740)
!5000 = !DILocation(line: 478, column: 63, scope: !4990, inlinedAt: !4991)
!5001 = !DILocalVariable(name: "order", scope: !4990, file: !94, line: 480, type: !7)
!5002 = !DILocation(line: 480, column: 15, scope: !4990, inlinedAt: !4991)
!5003 = !DILocalVariable(name: "size", arg: 1, scope: !4964, file: !94, line: 538, type: !320)
!5004 = !DILocation(line: 538, column: 45, scope: !4964, inlinedAt: !4965)
!5005 = !DILocalVariable(name: "flags", arg: 2, scope: !4964, file: !94, line: 538, type: !740)
!5006 = !DILocation(line: 538, column: 57, scope: !4964, inlinedAt: !4965)
!5007 = !DILocalVariable(name: "index", scope: !4962, file: !94, line: 542, type: !7)
!5008 = !DILocation(line: 542, column: 16, scope: !4962, inlinedAt: !4965)
!5009 = !DILocalVariable(name: "size", arg: 1, scope: !4953, file: !94, line: 662, type: !320)
!5010 = !DILocation(line: 662, column: 36, scope: !4953)
!5011 = !DILocalVariable(name: "flags", arg: 2, scope: !4953, file: !94, line: 662, type: !740)
!5012 = !DILocation(line: 662, column: 48, scope: !4953)
!5013 = !DILocation(line: 664, column: 17, scope: !4953)
!5014 = !DILocation(line: 664, column: 23, scope: !4953)
!5015 = !DILocation(line: 664, column: 29, scope: !4953)
!5016 = !DILocation(line: 540, column: 27, scope: !4963, inlinedAt: !4965)
!5017 = !DILocation(line: 540, column: 6, scope: !4963, inlinedAt: !4965)
!5018 = !DILocation(line: 540, column: 6, scope: !4964, inlinedAt: !4965)
!5019 = !DILocation(line: 544, column: 7, scope: !4992, inlinedAt: !4965)
!5020 = !DILocation(line: 544, column: 12, scope: !4992, inlinedAt: !4965)
!5021 = !DILocation(line: 544, column: 7, scope: !4962, inlinedAt: !4965)
!5022 = !DILocation(line: 545, column: 25, scope: !4992, inlinedAt: !4965)
!5023 = !DILocation(line: 545, column: 31, scope: !4992, inlinedAt: !4965)
!5024 = !DILocation(line: 480, column: 33, scope: !4990, inlinedAt: !4991)
!5025 = !DILocation(line: 480, column: 23, scope: !4990, inlinedAt: !4991)
!5026 = !DILocation(line: 481, column: 29, scope: !4990, inlinedAt: !4991)
!5027 = !DILocation(line: 481, column: 35, scope: !4990, inlinedAt: !4991)
!5028 = !DILocation(line: 481, column: 42, scope: !4990, inlinedAt: !4991)
!5029 = !DILocation(line: 474, column: 23, scope: !4985, inlinedAt: !4989)
!5030 = !DILocation(line: 474, column: 29, scope: !4985, inlinedAt: !4989)
!5031 = !DILocation(line: 474, column: 36, scope: !4985, inlinedAt: !4989)
!5032 = !DILocation(line: 474, column: 9, scope: !4985, inlinedAt: !4989)
!5033 = !DILocation(line: 545, column: 4, scope: !4992, inlinedAt: !4965)
!5034 = !DILocation(line: 547, column: 25, scope: !4962, inlinedAt: !4965)
!5035 = !DILocation(line: 348, column: 7, scope: !5036, inlinedAt: !4983)
!5036 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 348, column: 6)
!5037 = !DILocation(line: 348, column: 6, scope: !4979, inlinedAt: !4983)
!5038 = !DILocation(line: 349, column: 3, scope: !5036, inlinedAt: !4983)
!5039 = !DILocation(line: 351, column: 6, scope: !5040, inlinedAt: !4983)
!5040 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 351, column: 6)
!5041 = !DILocation(line: 351, column: 11, scope: !5040, inlinedAt: !4983)
!5042 = !DILocation(line: 351, column: 6, scope: !4979, inlinedAt: !4983)
!5043 = !DILocation(line: 352, column: 3, scope: !5040, inlinedAt: !4983)
!5044 = !DILocation(line: 354, column: 32, scope: !5045, inlinedAt: !4983)
!5045 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 354, column: 6)
!5046 = !DILocation(line: 354, column: 37, scope: !5045, inlinedAt: !4983)
!5047 = !DILocation(line: 354, column: 42, scope: !5045, inlinedAt: !4983)
!5048 = !DILocation(line: 354, column: 45, scope: !5045, inlinedAt: !4983)
!5049 = !DILocation(line: 354, column: 50, scope: !5045, inlinedAt: !4983)
!5050 = !DILocation(line: 354, column: 6, scope: !4979, inlinedAt: !4983)
!5051 = !DILocation(line: 355, column: 3, scope: !5045, inlinedAt: !4983)
!5052 = !DILocation(line: 356, column: 32, scope: !5053, inlinedAt: !4983)
!5053 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 356, column: 6)
!5054 = !DILocation(line: 356, column: 37, scope: !5053, inlinedAt: !4983)
!5055 = !DILocation(line: 356, column: 43, scope: !5053, inlinedAt: !4983)
!5056 = !DILocation(line: 356, column: 46, scope: !5053, inlinedAt: !4983)
!5057 = !DILocation(line: 356, column: 51, scope: !5053, inlinedAt: !4983)
!5058 = !DILocation(line: 356, column: 6, scope: !4979, inlinedAt: !4983)
!5059 = !DILocation(line: 357, column: 3, scope: !5053, inlinedAt: !4983)
!5060 = !DILocation(line: 358, column: 6, scope: !5061, inlinedAt: !4983)
!5061 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 358, column: 6)
!5062 = !DILocation(line: 358, column: 11, scope: !5061, inlinedAt: !4983)
!5063 = !DILocation(line: 358, column: 6, scope: !4979, inlinedAt: !4983)
!5064 = !DILocation(line: 358, column: 26, scope: !5061, inlinedAt: !4983)
!5065 = !DILocation(line: 359, column: 6, scope: !5066, inlinedAt: !4983)
!5066 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 359, column: 6)
!5067 = !DILocation(line: 359, column: 11, scope: !5066, inlinedAt: !4983)
!5068 = !DILocation(line: 359, column: 6, scope: !4979, inlinedAt: !4983)
!5069 = !DILocation(line: 359, column: 26, scope: !5066, inlinedAt: !4983)
!5070 = !DILocation(line: 360, column: 6, scope: !5071, inlinedAt: !4983)
!5071 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 360, column: 6)
!5072 = !DILocation(line: 360, column: 11, scope: !5071, inlinedAt: !4983)
!5073 = !DILocation(line: 360, column: 6, scope: !4979, inlinedAt: !4983)
!5074 = !DILocation(line: 360, column: 26, scope: !5071, inlinedAt: !4983)
!5075 = !DILocation(line: 361, column: 6, scope: !5076, inlinedAt: !4983)
!5076 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 361, column: 6)
!5077 = !DILocation(line: 361, column: 11, scope: !5076, inlinedAt: !4983)
!5078 = !DILocation(line: 361, column: 6, scope: !4979, inlinedAt: !4983)
!5079 = !DILocation(line: 361, column: 26, scope: !5076, inlinedAt: !4983)
!5080 = !DILocation(line: 362, column: 6, scope: !5081, inlinedAt: !4983)
!5081 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 362, column: 6)
!5082 = !DILocation(line: 362, column: 11, scope: !5081, inlinedAt: !4983)
!5083 = !DILocation(line: 362, column: 6, scope: !4979, inlinedAt: !4983)
!5084 = !DILocation(line: 362, column: 26, scope: !5081, inlinedAt: !4983)
!5085 = !DILocation(line: 363, column: 6, scope: !5086, inlinedAt: !4983)
!5086 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 363, column: 6)
!5087 = !DILocation(line: 363, column: 11, scope: !5086, inlinedAt: !4983)
!5088 = !DILocation(line: 363, column: 6, scope: !4979, inlinedAt: !4983)
!5089 = !DILocation(line: 363, column: 26, scope: !5086, inlinedAt: !4983)
!5090 = !DILocation(line: 364, column: 6, scope: !5091, inlinedAt: !4983)
!5091 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 364, column: 6)
!5092 = !DILocation(line: 364, column: 11, scope: !5091, inlinedAt: !4983)
!5093 = !DILocation(line: 364, column: 6, scope: !4979, inlinedAt: !4983)
!5094 = !DILocation(line: 364, column: 26, scope: !5091, inlinedAt: !4983)
!5095 = !DILocation(line: 365, column: 6, scope: !5096, inlinedAt: !4983)
!5096 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 365, column: 6)
!5097 = !DILocation(line: 365, column: 11, scope: !5096, inlinedAt: !4983)
!5098 = !DILocation(line: 365, column: 6, scope: !4979, inlinedAt: !4983)
!5099 = !DILocation(line: 365, column: 26, scope: !5096, inlinedAt: !4983)
!5100 = !DILocation(line: 366, column: 6, scope: !5101, inlinedAt: !4983)
!5101 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 366, column: 6)
!5102 = !DILocation(line: 366, column: 11, scope: !5101, inlinedAt: !4983)
!5103 = !DILocation(line: 366, column: 6, scope: !4979, inlinedAt: !4983)
!5104 = !DILocation(line: 366, column: 26, scope: !5101, inlinedAt: !4983)
!5105 = !DILocation(line: 367, column: 6, scope: !5106, inlinedAt: !4983)
!5106 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 367, column: 6)
!5107 = !DILocation(line: 367, column: 11, scope: !5106, inlinedAt: !4983)
!5108 = !DILocation(line: 367, column: 6, scope: !4979, inlinedAt: !4983)
!5109 = !DILocation(line: 367, column: 26, scope: !5106, inlinedAt: !4983)
!5110 = !DILocation(line: 368, column: 6, scope: !5111, inlinedAt: !4983)
!5111 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 368, column: 6)
!5112 = !DILocation(line: 368, column: 11, scope: !5111, inlinedAt: !4983)
!5113 = !DILocation(line: 368, column: 6, scope: !4979, inlinedAt: !4983)
!5114 = !DILocation(line: 368, column: 26, scope: !5111, inlinedAt: !4983)
!5115 = !DILocation(line: 369, column: 6, scope: !5116, inlinedAt: !4983)
!5116 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 369, column: 6)
!5117 = !DILocation(line: 369, column: 11, scope: !5116, inlinedAt: !4983)
!5118 = !DILocation(line: 369, column: 6, scope: !4979, inlinedAt: !4983)
!5119 = !DILocation(line: 369, column: 26, scope: !5116, inlinedAt: !4983)
!5120 = !DILocation(line: 370, column: 6, scope: !5121, inlinedAt: !4983)
!5121 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 370, column: 6)
!5122 = !DILocation(line: 370, column: 11, scope: !5121, inlinedAt: !4983)
!5123 = !DILocation(line: 370, column: 6, scope: !4979, inlinedAt: !4983)
!5124 = !DILocation(line: 370, column: 26, scope: !5121, inlinedAt: !4983)
!5125 = !DILocation(line: 371, column: 6, scope: !5126, inlinedAt: !4983)
!5126 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 371, column: 6)
!5127 = !DILocation(line: 371, column: 11, scope: !5126, inlinedAt: !4983)
!5128 = !DILocation(line: 371, column: 6, scope: !4979, inlinedAt: !4983)
!5129 = !DILocation(line: 371, column: 26, scope: !5126, inlinedAt: !4983)
!5130 = !DILocation(line: 372, column: 6, scope: !5131, inlinedAt: !4983)
!5131 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 372, column: 6)
!5132 = !DILocation(line: 372, column: 11, scope: !5131, inlinedAt: !4983)
!5133 = !DILocation(line: 372, column: 6, scope: !4979, inlinedAt: !4983)
!5134 = !DILocation(line: 372, column: 26, scope: !5131, inlinedAt: !4983)
!5135 = !DILocation(line: 373, column: 6, scope: !5136, inlinedAt: !4983)
!5136 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 373, column: 6)
!5137 = !DILocation(line: 373, column: 11, scope: !5136, inlinedAt: !4983)
!5138 = !DILocation(line: 373, column: 6, scope: !4979, inlinedAt: !4983)
!5139 = !DILocation(line: 373, column: 26, scope: !5136, inlinedAt: !4983)
!5140 = !DILocation(line: 374, column: 6, scope: !5141, inlinedAt: !4983)
!5141 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 374, column: 6)
!5142 = !DILocation(line: 374, column: 11, scope: !5141, inlinedAt: !4983)
!5143 = !DILocation(line: 374, column: 6, scope: !4979, inlinedAt: !4983)
!5144 = !DILocation(line: 374, column: 26, scope: !5141, inlinedAt: !4983)
!5145 = !DILocation(line: 375, column: 6, scope: !5146, inlinedAt: !4983)
!5146 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 375, column: 6)
!5147 = !DILocation(line: 375, column: 11, scope: !5146, inlinedAt: !4983)
!5148 = !DILocation(line: 375, column: 6, scope: !4979, inlinedAt: !4983)
!5149 = !DILocation(line: 375, column: 27, scope: !5146, inlinedAt: !4983)
!5150 = !DILocation(line: 376, column: 6, scope: !5151, inlinedAt: !4983)
!5151 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 376, column: 6)
!5152 = !DILocation(line: 376, column: 11, scope: !5151, inlinedAt: !4983)
!5153 = !DILocation(line: 376, column: 6, scope: !4979, inlinedAt: !4983)
!5154 = !DILocation(line: 376, column: 32, scope: !5151, inlinedAt: !4983)
!5155 = !DILocation(line: 377, column: 6, scope: !5156, inlinedAt: !4983)
!5156 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 377, column: 6)
!5157 = !DILocation(line: 377, column: 11, scope: !5156, inlinedAt: !4983)
!5158 = !DILocation(line: 377, column: 6, scope: !4979, inlinedAt: !4983)
!5159 = !DILocation(line: 377, column: 32, scope: !5156, inlinedAt: !4983)
!5160 = !DILocation(line: 378, column: 6, scope: !5161, inlinedAt: !4983)
!5161 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 378, column: 6)
!5162 = !DILocation(line: 378, column: 11, scope: !5161, inlinedAt: !4983)
!5163 = !DILocation(line: 378, column: 6, scope: !4979, inlinedAt: !4983)
!5164 = !DILocation(line: 378, column: 32, scope: !5161, inlinedAt: !4983)
!5165 = !DILocation(line: 379, column: 6, scope: !5166, inlinedAt: !4983)
!5166 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 379, column: 6)
!5167 = !DILocation(line: 379, column: 11, scope: !5166, inlinedAt: !4983)
!5168 = !DILocation(line: 379, column: 6, scope: !4979, inlinedAt: !4983)
!5169 = !DILocation(line: 379, column: 33, scope: !5166, inlinedAt: !4983)
!5170 = !DILocation(line: 380, column: 6, scope: !5171, inlinedAt: !4983)
!5171 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 380, column: 6)
!5172 = !DILocation(line: 380, column: 11, scope: !5171, inlinedAt: !4983)
!5173 = !DILocation(line: 380, column: 6, scope: !4979, inlinedAt: !4983)
!5174 = !DILocation(line: 380, column: 33, scope: !5171, inlinedAt: !4983)
!5175 = !DILocation(line: 381, column: 6, scope: !5176, inlinedAt: !4983)
!5176 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 381, column: 6)
!5177 = !DILocation(line: 381, column: 11, scope: !5176, inlinedAt: !4983)
!5178 = !DILocation(line: 381, column: 6, scope: !4979, inlinedAt: !4983)
!5179 = !DILocation(line: 381, column: 33, scope: !5176, inlinedAt: !4983)
!5180 = !DILocation(line: 382, column: 2, scope: !5181, inlinedAt: !4983)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !94, line: 382, column: 2)
!5182 = distinct !DILexicalBlock(scope: !4979, file: !94, line: 382, column: 2)
!5183 = !{i32 -2143659350, i32 -2143659321, i32 -2143659275, i32 -2143659217, i32 -2143659163, i32 -2143659109, i32 -2143659054, i32 -2143659023}
!5184 = !DILocation(line: 382, column: 2, scope: !5185, inlinedAt: !4983)
!5185 = distinct !DILexicalBlock(scope: !5186, file: !94, line: 382, column: 2)
!5186 = distinct !DILexicalBlock(scope: !5182, file: !94, line: 382, column: 2)
!5187 = !{i32 -2143658580, i32 -2143658573, i32 -2143658519, i32 -2143658488, i32 -2143658458}
!5188 = !DILocation(line: 382, column: 2, scope: !5186, inlinedAt: !4983)
!5189 = !DILocation(line: 386, column: 1, scope: !4979, inlinedAt: !4983)
!5190 = !DILocation(line: 547, column: 9, scope: !4962, inlinedAt: !4965)
!5191 = !DILocation(line: 549, column: 8, scope: !5192, inlinedAt: !4965)
!5192 = distinct !DILexicalBlock(scope: !4962, file: !94, line: 549, column: 7)
!5193 = !DILocation(line: 549, column: 7, scope: !4962, inlinedAt: !4965)
!5194 = !DILocation(line: 550, column: 4, scope: !5192, inlinedAt: !4965)
!5195 = !DILocation(line: 553, column: 33, scope: !4962, inlinedAt: !4965)
!5196 = !DILocation(line: 325, column: 6, scope: !5197, inlinedAt: !4977)
!5197 = distinct !DILexicalBlock(scope: !4973, file: !94, line: 325, column: 6)
!5198 = !DILocation(line: 325, column: 6, scope: !4973, inlinedAt: !4977)
!5199 = !DILocation(line: 326, column: 3, scope: !5197, inlinedAt: !4977)
!5200 = !DILocation(line: 332, column: 9, scope: !4973, inlinedAt: !4977)
!5201 = !DILocation(line: 332, column: 15, scope: !4973, inlinedAt: !4977)
!5202 = !DILocation(line: 332, column: 2, scope: !4973, inlinedAt: !4977)
!5203 = !DILocation(line: 336, column: 1, scope: !4973, inlinedAt: !4977)
!5204 = !DILocation(line: 553, column: 5, scope: !4962, inlinedAt: !4965)
!5205 = !DILocation(line: 553, column: 41, scope: !4962, inlinedAt: !4965)
!5206 = !DILocation(line: 554, column: 5, scope: !4962, inlinedAt: !4965)
!5207 = !DILocation(line: 554, column: 12, scope: !4962, inlinedAt: !4965)
!5208 = !DILocation(line: 448, column: 31, scope: !4957, inlinedAt: !4961)
!5209 = !DILocation(line: 448, column: 34, scope: !4957, inlinedAt: !4961)
!5210 = !DILocation(line: 448, column: 14, scope: !4957, inlinedAt: !4961)
!5211 = !DILocation(line: 450, column: 22, scope: !4957, inlinedAt: !4961)
!5212 = !DILocation(line: 450, column: 25, scope: !4957, inlinedAt: !4961)
!5213 = !DILocation(line: 450, column: 30, scope: !4957, inlinedAt: !4961)
!5214 = !DILocation(line: 450, column: 36, scope: !4957, inlinedAt: !4961)
!5215 = !DILocation(line: 450, column: 8, scope: !4957, inlinedAt: !4961)
!5216 = !DILocation(line: 450, column: 6, scope: !4957, inlinedAt: !4961)
!5217 = !DILocation(line: 451, column: 9, scope: !4957, inlinedAt: !4961)
!5218 = !DILocation(line: 552, column: 3, scope: !4962, inlinedAt: !4965)
!5219 = !DILocation(line: 557, column: 19, scope: !4964, inlinedAt: !4965)
!5220 = !DILocation(line: 557, column: 25, scope: !4964, inlinedAt: !4965)
!5221 = !DILocation(line: 557, column: 9, scope: !4964, inlinedAt: !4965)
!5222 = !DILocation(line: 557, column: 2, scope: !4964, inlinedAt: !4965)
!5223 = !DILocation(line: 558, column: 1, scope: !4964, inlinedAt: !4965)
!5224 = !DILocation(line: 664, column: 2, scope: !4953)
!5225 = distinct !DISubprogram(name: "hid_set_drvdata", scope: !6, file: !6, line: 633, type: !5226, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{null, !3617, !109}
!5228 = !DILocalVariable(name: "hdev", arg: 1, scope: !5225, file: !6, line: 633, type: !3617)
!5229 = !DILocation(line: 633, column: 55, scope: !5225)
!5230 = !DILocalVariable(name: "data", arg: 2, scope: !5225, file: !6, line: 633, type: !109)
!5231 = !DILocation(line: 633, column: 67, scope: !5225)
!5232 = !DILocation(line: 635, column: 19, scope: !5225)
!5233 = !DILocation(line: 635, column: 25, scope: !5225)
!5234 = !DILocation(line: 635, column: 30, scope: !5225)
!5235 = !DILocation(line: 635, column: 2, scope: !5225)
!5236 = !DILocation(line: 636, column: 1, scope: !5225)
!5237 = distinct !DISubprogram(name: "hid_parse", scope: !6, file: !6, line: 1033, type: !4009, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5238 = !DILocalVariable(name: "hdev", arg: 1, scope: !5237, file: !6, line: 1033, type: !3617)
!5239 = !DILocation(line: 1033, column: 61, scope: !5237)
!5240 = !DILocation(line: 1035, column: 25, scope: !5237)
!5241 = !DILocation(line: 1035, column: 9, scope: !5237)
!5242 = !DILocation(line: 1035, column: 2, scope: !5237)
!5243 = distinct !DISubprogram(name: "hid_hw_raw_request", scope: !6, file: !6, line: 1090, type: !4029, scopeLine: 1093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5244 = !DILocalVariable(name: "hdev", arg: 1, scope: !5243, file: !6, line: 1090, type: !3617)
!5245 = !DILocation(line: 1090, column: 57, scope: !5243)
!5246 = !DILocalVariable(name: "reportnum", arg: 2, scope: !5243, file: !6, line: 1091, type: !124)
!5247 = !DILocation(line: 1091, column: 21, scope: !5243)
!5248 = !DILocalVariable(name: "buf", arg: 3, scope: !5243, file: !6, line: 1091, type: !3621)
!5249 = !DILocation(line: 1091, column: 38, scope: !5243)
!5250 = !DILocalVariable(name: "len", arg: 4, scope: !5243, file: !6, line: 1092, type: !320)
!5251 = !DILocation(line: 1092, column: 14, scope: !5243)
!5252 = !DILocalVariable(name: "rtype", arg: 5, scope: !5243, file: !6, line: 1092, type: !124)
!5253 = !DILocation(line: 1092, column: 33, scope: !5243)
!5254 = !DILocalVariable(name: "reqtype", arg: 6, scope: !5243, file: !6, line: 1092, type: !134)
!5255 = !DILocation(line: 1092, column: 44, scope: !5243)
!5256 = !DILocation(line: 1094, column: 6, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5243, file: !6, line: 1094, column: 6)
!5258 = !DILocation(line: 1094, column: 10, scope: !5257)
!5259 = !DILocation(line: 1094, column: 14, scope: !5257)
!5260 = !DILocation(line: 1094, column: 17, scope: !5257)
!5261 = !DILocation(line: 1094, column: 21, scope: !5257)
!5262 = !DILocation(line: 1094, column: 43, scope: !5257)
!5263 = !DILocation(line: 1094, column: 47, scope: !5257)
!5264 = !DILocation(line: 1094, column: 6, scope: !5243)
!5265 = !DILocation(line: 1095, column: 3, scope: !5257)
!5266 = !DILocation(line: 1097, column: 9, scope: !5243)
!5267 = !DILocation(line: 1097, column: 15, scope: !5243)
!5268 = !DILocation(line: 1097, column: 26, scope: !5243)
!5269 = !DILocation(line: 1097, column: 38, scope: !5243)
!5270 = !DILocation(line: 1097, column: 44, scope: !5243)
!5271 = !DILocation(line: 1097, column: 55, scope: !5243)
!5272 = !DILocation(line: 1097, column: 60, scope: !5243)
!5273 = !DILocation(line: 1098, column: 11, scope: !5243)
!5274 = !DILocation(line: 1098, column: 18, scope: !5243)
!5275 = !DILocation(line: 1097, column: 2, scope: !5243)
!5276 = !DILocation(line: 1099, column: 1, scope: !5243)
!5277 = distinct !DISubprogram(name: "lgff_init", scope: !4233, file: !4233, line: 13, type: !4009, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5278 = !DILocalVariable(name: "hdev", arg: 1, scope: !5277, file: !4233, line: 13, type: !3617)
!5279 = !DILocation(line: 13, column: 48, scope: !5277)
!5280 = !DILocation(line: 13, column: 56, scope: !5277)
!5281 = distinct !DISubprogram(name: "lg2ff_init", scope: !4233, file: !4233, line: 19, type: !4009, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5282 = !DILocalVariable(name: "hdev", arg: 1, scope: !5281, file: !4233, line: 19, type: !3617)
!5283 = !DILocation(line: 19, column: 49, scope: !5281)
!5284 = !DILocation(line: 19, column: 57, scope: !5281)
!5285 = distinct !DISubprogram(name: "lg3ff_init", scope: !4233, file: !4233, line: 25, type: !4009, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5286 = !DILocalVariable(name: "hdev", arg: 1, scope: !5285, file: !4233, line: 25, type: !3617)
!5287 = !DILocation(line: 25, column: 49, scope: !5285)
!5288 = !DILocation(line: 25, column: 57, scope: !5285)
!5289 = distinct !DISubprogram(name: "lg4ff_init", scope: !5290, file: !5290, line: 19, type: !4009, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5290 = !DIFile(filename: "drivers/hid/hid-lg4ff.h", directory: "/home/lizy2001/genbc/linux")
!5291 = !DILocalVariable(name: "hdev", arg: 1, scope: !5289, file: !5290, line: 19, type: !3617)
!5292 = !DILocation(line: 19, column: 49, scope: !5289)
!5293 = !DILocation(line: 19, column: 57, scope: !5289)
!5294 = distinct !DISubprogram(name: "get_order", scope: !5295, file: !5295, line: 29, type: !5296, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5295 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!134, !323}
!5298 = !DILocalVariable(name: "x", arg: 1, scope: !5299, file: !5300, line: 366, type: !419)
!5299 = distinct !DISubprogram(name: "fls64", scope: !5300, file: !5300, line: 366, type: !5301, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5300 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!134, !419}
!5303 = !DILocation(line: 366, column: 40, scope: !5299, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 46, column: 9, scope: !5294)
!5305 = !DILocalVariable(name: "bitpos", scope: !5299, file: !5300, line: 368, type: !134)
!5306 = !DILocation(line: 368, column: 6, scope: !5299, inlinedAt: !5304)
!5307 = !DILocalVariable(name: "size", arg: 1, scope: !5294, file: !5295, line: 29, type: !323)
!5308 = !DILocation(line: 29, column: 63, scope: !5294)
!5309 = !DILocation(line: 31, column: 27, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5294, file: !5295, line: 31, column: 6)
!5311 = !DILocation(line: 31, column: 6, scope: !5310)
!5312 = !DILocation(line: 31, column: 6, scope: !5294)
!5313 = !DILocation(line: 32, column: 8, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !5295, line: 32, column: 7)
!5315 = distinct !DILexicalBlock(scope: !5310, file: !5295, line: 31, column: 34)
!5316 = !DILocation(line: 32, column: 7, scope: !5315)
!5317 = !DILocation(line: 33, column: 4, scope: !5314)
!5318 = !DILocation(line: 35, column: 7, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5315, file: !5295, line: 35, column: 7)
!5320 = !DILocation(line: 35, column: 12, scope: !5319)
!5321 = !DILocation(line: 35, column: 7, scope: !5315)
!5322 = !DILocation(line: 36, column: 4, scope: !5319)
!5323 = !DILocation(line: 38, column: 10, scope: !5315)
!5324 = !DILocation(line: 38, column: 28, scope: !5315)
!5325 = !DILocation(line: 38, column: 41, scope: !5315)
!5326 = !DILocation(line: 38, column: 3, scope: !5315)
!5327 = !DILocation(line: 41, column: 6, scope: !5294)
!5328 = !DILocation(line: 42, column: 7, scope: !5294)
!5329 = !DILocation(line: 46, column: 15, scope: !5294)
!5330 = !DILocation(line: 374, column: 2, scope: !5299, inlinedAt: !5304)
!5331 = !DILocation(line: 376, column: 14, scope: !5299, inlinedAt: !5304)
!5332 = !{i32 417110}
!5333 = !DILocation(line: 377, column: 9, scope: !5299, inlinedAt: !5304)
!5334 = !DILocation(line: 377, column: 16, scope: !5299, inlinedAt: !5304)
!5335 = !DILocation(line: 46, column: 2, scope: !5294)
!5336 = !DILocation(line: 48, column: 1, scope: !5294)
!5337 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5338, file: !5338, line: 30, type: !5339, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5338 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!134, !418}
!5341 = !DILocation(line: 366, column: 40, scope: !5299, inlinedAt: !5342)
!5342 = distinct !DILocation(line: 32, column: 9, scope: !5337)
!5343 = !DILocation(line: 368, column: 6, scope: !5299, inlinedAt: !5342)
!5344 = !DILocalVariable(name: "n", arg: 1, scope: !5337, file: !5338, line: 30, type: !418)
!5345 = !DILocation(line: 30, column: 21, scope: !5337)
!5346 = !DILocation(line: 32, column: 15, scope: !5337)
!5347 = !DILocation(line: 374, column: 2, scope: !5299, inlinedAt: !5342)
!5348 = !DILocation(line: 376, column: 14, scope: !5299, inlinedAt: !5342)
!5349 = !DILocation(line: 377, column: 9, scope: !5299, inlinedAt: !5342)
!5350 = !DILocation(line: 377, column: 16, scope: !5299, inlinedAt: !5342)
!5351 = !DILocation(line: 32, column: 18, scope: !5337)
!5352 = !DILocation(line: 32, column: 2, scope: !5337)
!5353 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5354, file: !5354, line: 137, type: !5355, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5354 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!109, !931, !3047, !320, !740}
!5357 = !DILocalVariable(name: "s", arg: 1, scope: !5353, file: !5354, line: 137, type: !931)
!5358 = !DILocation(line: 137, column: 54, scope: !5353)
!5359 = !DILocalVariable(name: "object", arg: 2, scope: !5353, file: !5354, line: 137, type: !3047)
!5360 = !DILocation(line: 137, column: 69, scope: !5353)
!5361 = !DILocalVariable(name: "size", arg: 3, scope: !5353, file: !5354, line: 138, type: !320)
!5362 = !DILocation(line: 138, column: 12, scope: !5353)
!5363 = !DILocalVariable(name: "flags", arg: 4, scope: !5353, file: !5354, line: 138, type: !740)
!5364 = !DILocation(line: 138, column: 24, scope: !5353)
!5365 = !DILocation(line: 140, column: 17, scope: !5353)
!5366 = !DILocation(line: 140, column: 2, scope: !5353)
!5367 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !66, file: !66, line: 660, type: !5368, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5368 = !DISubroutineType(types: !5369)
!5369 = !{null, !3216, !109}
!5370 = !DILocalVariable(name: "dev", arg: 1, scope: !5367, file: !66, line: 660, type: !3216)
!5371 = !DILocation(line: 660, column: 51, scope: !5367)
!5372 = !DILocalVariable(name: "data", arg: 2, scope: !5367, file: !66, line: 660, type: !109)
!5373 = !DILocation(line: 660, column: 62, scope: !5367)
!5374 = !DILocation(line: 662, column: 21, scope: !5367)
!5375 = !DILocation(line: 662, column: 2, scope: !5367)
!5376 = !DILocation(line: 662, column: 7, scope: !5367)
!5377 = !DILocation(line: 662, column: 19, scope: !5367)
!5378 = !DILocation(line: 663, column: 1, scope: !5367)
!5379 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4197, file: !4197, line: 308, type: !4198, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5380 = !DILocalVariable(name: "m", arg: 1, scope: !5379, file: !4197, line: 308, type: !2669)
!5381 = !DILocation(line: 308, column: 66, scope: !5379)
!5382 = !DILocation(line: 310, column: 10, scope: !5379)
!5383 = !DILocation(line: 310, column: 12, scope: !5379)
!5384 = !DILocation(line: 310, column: 34, scope: !5379)
!5385 = !DILocation(line: 310, column: 39, scope: !5379)
!5386 = !DILocation(line: 310, column: 2, scope: !5379)
!5387 = distinct !DISubprogram(name: "hid_get_drvdata", scope: !6, file: !6, line: 628, type: !5388, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!109, !3617}
!5390 = !DILocalVariable(name: "hdev", arg: 1, scope: !5387, file: !6, line: 628, type: !3617)
!5391 = !DILocation(line: 628, column: 56, scope: !5387)
!5392 = !DILocation(line: 630, column: 26, scope: !5387)
!5393 = !DILocation(line: 630, column: 32, scope: !5387)
!5394 = !DILocation(line: 630, column: 9, scope: !5387)
!5395 = !DILocation(line: 630, column: 2, scope: !5387)
!5396 = distinct !DISubprogram(name: "lg4ff_deinit", scope: !5290, file: !5290, line: 20, type: !4009, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5397 = !DILocalVariable(name: "hdev", arg: 1, scope: !5396, file: !5290, line: 20, type: !3617)
!5398 = !DILocation(line: 20, column: 51, scope: !5396)
!5399 = !DILocation(line: 20, column: 59, scope: !5396)
!5400 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !66, file: !66, line: 655, type: !5401, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!109, !5403}
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!5405 = !DILocalVariable(name: "dev", arg: 1, scope: !5400, file: !66, line: 655, type: !5403)
!5406 = !DILocation(line: 655, column: 58, scope: !5400)
!5407 = !DILocation(line: 657, column: 9, scope: !5400)
!5408 = !DILocation(line: 657, column: 14, scope: !5400)
!5409 = !DILocation(line: 657, column: 2, scope: !5400)
!5410 = distinct !DISubprogram(name: "lg4ff_raw_event", scope: !5290, file: !5290, line: 17, type: !5411, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5411 = !DISubroutineType(types: !5412)
!5412 = !{!134, !3617, !3651, !4089, !134, !4231}
!5413 = !DILocalVariable(name: "hdev", arg: 1, scope: !5410, file: !5290, line: 17, type: !3617)
!5414 = !DILocation(line: 17, column: 54, scope: !5410)
!5415 = !DILocalVariable(name: "report", arg: 2, scope: !5410, file: !5290, line: 17, type: !3651)
!5416 = !DILocation(line: 17, column: 79, scope: !5410)
!5417 = !DILocalVariable(name: "rd", arg: 3, scope: !5410, file: !5290, line: 18, type: !4089)
!5418 = !DILocation(line: 18, column: 7, scope: !5410)
!5419 = !DILocalVariable(name: "size", arg: 4, scope: !5410, file: !5290, line: 18, type: !134)
!5420 = !DILocation(line: 18, column: 15, scope: !5410)
!5421 = !DILocalVariable(name: "drv_data", arg: 5, scope: !5410, file: !5290, line: 18, type: !4231)
!5422 = !DILocation(line: 18, column: 41, scope: !5410)
!5423 = !DILocation(line: 18, column: 53, scope: !5410)
!5424 = distinct !DISubprogram(name: "lg4ff_adjust_input_event", scope: !5290, file: !5290, line: 15, type: !5425, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!134, !3617, !3661, !3668, !1359, !4231}
!5427 = !DILocalVariable(name: "hid", arg: 1, scope: !5424, file: !5290, line: 15, type: !3617)
!5428 = !DILocation(line: 15, column: 63, scope: !5424)
!5429 = !DILocalVariable(name: "field", arg: 2, scope: !5424, file: !5290, line: 15, type: !3661)
!5430 = !DILocation(line: 15, column: 86, scope: !5424)
!5431 = !DILocalVariable(name: "usage", arg: 3, scope: !5424, file: !5290, line: 16, type: !3668)
!5432 = !DILocation(line: 16, column: 27, scope: !5424)
!5433 = !DILocalVariable(name: "value", arg: 4, scope: !5424, file: !5290, line: 16, type: !1359)
!5434 = !DILocation(line: 16, column: 38, scope: !5424)
!5435 = !DILocalVariable(name: "drv_data", arg: 5, scope: !5424, file: !5290, line: 16, type: !4231)
!5436 = !DILocation(line: 16, column: 65, scope: !5424)
!5437 = !DILocation(line: 16, column: 77, scope: !5424)
!5438 = distinct !DISubprogram(name: "lg_ultrax_remote_mapping", scope: !3, file: !3, line: 538, type: !5439, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{!134, !3701, !3668, !4111, !701}
!5441 = !DILocalVariable(name: "hi", arg: 1, scope: !5438, file: !3, line: 538, type: !3701)
!5442 = !DILocation(line: 538, column: 55, scope: !5438)
!5443 = !DILocalVariable(name: "usage", arg: 2, scope: !5438, file: !3, line: 539, type: !3668)
!5444 = !DILocation(line: 539, column: 21, scope: !5438)
!5445 = !DILocalVariable(name: "bit", arg: 3, scope: !5438, file: !3, line: 539, type: !4111)
!5446 = !DILocation(line: 539, column: 44, scope: !5438)
!5447 = !DILocalVariable(name: "max", arg: 4, scope: !5438, file: !3, line: 539, type: !701)
!5448 = !DILocation(line: 539, column: 54, scope: !5438)
!5449 = !DILocation(line: 541, column: 7, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 541, column: 6)
!5451 = !DILocation(line: 541, column: 14, scope: !5450)
!5452 = !DILocation(line: 541, column: 18, scope: !5450)
!5453 = !DILocation(line: 541, column: 36, scope: !5450)
!5454 = !DILocation(line: 541, column: 6, scope: !5438)
!5455 = !DILocation(line: 542, column: 3, scope: !5450)
!5456 = !DILocation(line: 544, column: 18, scope: !5438)
!5457 = !DILocation(line: 544, column: 22, scope: !5438)
!5458 = !DILocation(line: 544, column: 29, scope: !5438)
!5459 = !DILocation(line: 544, column: 2, scope: !5438)
!5460 = !DILocation(line: 545, column: 10, scope: !5438)
!5461 = !DILocation(line: 545, column: 17, scope: !5438)
!5462 = !DILocation(line: 545, column: 21, scope: !5438)
!5463 = !DILocation(line: 545, column: 2, scope: !5438)
!5464 = !DILocation(line: 547, column: 14, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 545, column: 34)
!5466 = !DILocation(line: 547, column: 43, scope: !5465)
!5467 = !DILocation(line: 548, column: 14, scope: !5465)
!5468 = !DILocation(line: 548, column: 43, scope: !5465)
!5469 = !DILocation(line: 549, column: 14, scope: !5465)
!5470 = !DILocation(line: 549, column: 45, scope: !5465)
!5471 = !DILocation(line: 550, column: 14, scope: !5465)
!5472 = !DILocation(line: 550, column: 41, scope: !5465)
!5473 = !DILocation(line: 551, column: 14, scope: !5465)
!5474 = !DILocation(line: 551, column: 43, scope: !5465)
!5475 = !DILocation(line: 552, column: 14, scope: !5465)
!5476 = !DILocation(line: 552, column: 43, scope: !5465)
!5477 = !DILocation(line: 553, column: 14, scope: !5465)
!5478 = !DILocation(line: 553, column: 43, scope: !5465)
!5479 = !DILocation(line: 554, column: 14, scope: !5465)
!5480 = !DILocation(line: 554, column: 43, scope: !5465)
!5481 = !DILocation(line: 555, column: 14, scope: !5465)
!5482 = !DILocation(line: 555, column: 42, scope: !5465)
!5483 = !DILocation(line: 556, column: 14, scope: !5465)
!5484 = !DILocation(line: 556, column: 42, scope: !5465)
!5485 = !DILocation(line: 557, column: 14, scope: !5465)
!5486 = !DILocation(line: 557, column: 43, scope: !5465)
!5487 = !DILocation(line: 558, column: 14, scope: !5465)
!5488 = !DILocation(line: 558, column: 43, scope: !5465)
!5489 = !DILocation(line: 559, column: 14, scope: !5465)
!5490 = !DILocation(line: 559, column: 43, scope: !5465)
!5491 = !DILocation(line: 560, column: 14, scope: !5465)
!5492 = !DILocation(line: 560, column: 46, scope: !5465)
!5493 = !DILocation(line: 561, column: 14, scope: !5465)
!5494 = !DILocation(line: 561, column: 46, scope: !5465)
!5495 = !DILocation(line: 562, column: 14, scope: !5465)
!5496 = !DILocation(line: 562, column: 42, scope: !5465)
!5497 = !DILocation(line: 563, column: 14, scope: !5465)
!5498 = !DILocation(line: 563, column: 43, scope: !5465)
!5499 = !DILocation(line: 566, column: 3, scope: !5465)
!5500 = !DILocation(line: 568, column: 2, scope: !5438)
!5501 = !DILocation(line: 569, column: 1, scope: !5438)
!5502 = distinct !DISubprogram(name: "lg_dinovo_mapping", scope: !3, file: !3, line: 571, type: !5439, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5503 = !DILocalVariable(name: "hi", arg: 1, scope: !5502, file: !3, line: 571, type: !3701)
!5504 = !DILocation(line: 571, column: 48, scope: !5502)
!5505 = !DILocalVariable(name: "usage", arg: 2, scope: !5502, file: !3, line: 571, type: !3668)
!5506 = !DILocation(line: 571, column: 70, scope: !5502)
!5507 = !DILocalVariable(name: "bit", arg: 3, scope: !5502, file: !3, line: 572, type: !4111)
!5508 = !DILocation(line: 572, column: 19, scope: !5502)
!5509 = !DILocalVariable(name: "max", arg: 4, scope: !5502, file: !3, line: 572, type: !701)
!5510 = !DILocation(line: 572, column: 29, scope: !5502)
!5511 = !DILocation(line: 574, column: 7, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 574, column: 6)
!5513 = !DILocation(line: 574, column: 14, scope: !5512)
!5514 = !DILocation(line: 574, column: 18, scope: !5512)
!5515 = !DILocation(line: 574, column: 36, scope: !5512)
!5516 = !DILocation(line: 574, column: 6, scope: !5502)
!5517 = !DILocation(line: 575, column: 3, scope: !5512)
!5518 = !DILocation(line: 577, column: 10, scope: !5502)
!5519 = !DILocation(line: 577, column: 17, scope: !5502)
!5520 = !DILocation(line: 577, column: 21, scope: !5502)
!5521 = !DILocation(line: 577, column: 2, scope: !5502)
!5522 = !DILocation(line: 579, column: 14, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 577, column: 34)
!5524 = !DILocation(line: 579, column: 43, scope: !5523)
!5525 = !DILocation(line: 581, column: 3, scope: !5523)
!5526 = !DILocation(line: 584, column: 2, scope: !5502)
!5527 = !DILocation(line: 585, column: 1, scope: !5502)
!5528 = distinct !DISubprogram(name: "lg_wireless_mapping", scope: !3, file: !3, line: 587, type: !5439, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5529 = !DILocalVariable(name: "hi", arg: 1, scope: !5528, file: !3, line: 587, type: !3701)
!5530 = !DILocation(line: 587, column: 50, scope: !5528)
!5531 = !DILocalVariable(name: "usage", arg: 2, scope: !5528, file: !3, line: 587, type: !3668)
!5532 = !DILocation(line: 587, column: 72, scope: !5528)
!5533 = !DILocalVariable(name: "bit", arg: 3, scope: !5528, file: !3, line: 588, type: !4111)
!5534 = !DILocation(line: 588, column: 19, scope: !5528)
!5535 = !DILocalVariable(name: "max", arg: 4, scope: !5528, file: !3, line: 588, type: !701)
!5536 = !DILocation(line: 588, column: 29, scope: !5528)
!5537 = !DILocation(line: 590, column: 7, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 590, column: 6)
!5539 = !DILocation(line: 590, column: 14, scope: !5538)
!5540 = !DILocation(line: 590, column: 18, scope: !5538)
!5541 = !DILocation(line: 590, column: 36, scope: !5538)
!5542 = !DILocation(line: 590, column: 6, scope: !5528)
!5543 = !DILocation(line: 591, column: 3, scope: !5538)
!5544 = !DILocation(line: 593, column: 10, scope: !5528)
!5545 = !DILocation(line: 593, column: 17, scope: !5528)
!5546 = !DILocation(line: 593, column: 21, scope: !5528)
!5547 = !DILocation(line: 593, column: 2, scope: !5528)
!5548 = !DILocation(line: 594, column: 15, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 593, column: 34)
!5550 = !DILocation(line: 594, column: 49, scope: !5549)
!5551 = !DILocation(line: 595, column: 15, scope: !5549)
!5552 = !DILocation(line: 595, column: 45, scope: !5549)
!5553 = !DILocation(line: 596, column: 15, scope: !5549)
!5554 = !DILocation(line: 596, column: 45, scope: !5549)
!5555 = !DILocation(line: 597, column: 15, scope: !5549)
!5556 = !DILocation(line: 597, column: 45, scope: !5549)
!5557 = !DILocation(line: 598, column: 15, scope: !5549)
!5558 = !DILocation(line: 598, column: 49, scope: !5549)
!5559 = !DILocation(line: 600, column: 15, scope: !5549)
!5560 = !DILocation(line: 600, column: 44, scope: !5549)
!5561 = !DILocation(line: 601, column: 15, scope: !5549)
!5562 = !DILocation(line: 601, column: 44, scope: !5549)
!5563 = !DILocation(line: 602, column: 15, scope: !5549)
!5564 = !DILocation(line: 602, column: 51, scope: !5549)
!5565 = !DILocation(line: 603, column: 15, scope: !5549)
!5566 = !DILocation(line: 603, column: 48, scope: !5549)
!5567 = !DILocation(line: 604, column: 15, scope: !5549)
!5568 = !DILocation(line: 604, column: 46, scope: !5549)
!5569 = !DILocation(line: 605, column: 15, scope: !5549)
!5570 = !DILocation(line: 605, column: 49, scope: !5549)
!5571 = !DILocation(line: 606, column: 15, scope: !5549)
!5572 = !DILocation(line: 606, column: 46, scope: !5549)
!5573 = !DILocation(line: 607, column: 15, scope: !5549)
!5574 = !DILocation(line: 607, column: 46, scope: !5549)
!5575 = !DILocation(line: 608, column: 15, scope: !5549)
!5576 = !DILocation(line: 608, column: 47, scope: !5549)
!5577 = !DILocation(line: 609, column: 15, scope: !5549)
!5578 = !DILocation(line: 609, column: 45, scope: !5549)
!5579 = !DILocation(line: 610, column: 15, scope: !5549)
!5580 = !DILocation(line: 610, column: 45, scope: !5549)
!5581 = !DILocation(line: 611, column: 15, scope: !5549)
!5582 = !DILocation(line: 611, column: 45, scope: !5549)
!5583 = !DILocation(line: 612, column: 15, scope: !5549)
!5584 = !DILocation(line: 612, column: 45, scope: !5549)
!5585 = !DILocation(line: 613, column: 15, scope: !5549)
!5586 = !DILocation(line: 613, column: 51, scope: !5549)
!5587 = !DILocation(line: 614, column: 15, scope: !5549)
!5588 = !DILocation(line: 614, column: 46, scope: !5549)
!5589 = !DILocation(line: 615, column: 15, scope: !5549)
!5590 = !DILocation(line: 615, column: 47, scope: !5549)
!5591 = !DILocation(line: 616, column: 15, scope: !5549)
!5592 = !DILocation(line: 616, column: 49, scope: !5549)
!5593 = !DILocation(line: 617, column: 15, scope: !5549)
!5594 = !DILocation(line: 617, column: 45, scope: !5549)
!5595 = !DILocation(line: 618, column: 15, scope: !5549)
!5596 = !DILocation(line: 618, column: 44, scope: !5549)
!5597 = !DILocation(line: 620, column: 15, scope: !5549)
!5598 = !DILocation(line: 620, column: 45, scope: !5549)
!5599 = !DILocation(line: 621, column: 15, scope: !5549)
!5600 = !DILocation(line: 621, column: 47, scope: !5549)
!5601 = !DILocation(line: 622, column: 15, scope: !5549)
!5602 = !DILocation(line: 622, column: 44, scope: !5549)
!5603 = !DILocation(line: 623, column: 15, scope: !5549)
!5604 = !DILocation(line: 623, column: 51, scope: !5549)
!5605 = !DILocation(line: 624, column: 15, scope: !5549)
!5606 = !DILocation(line: 624, column: 44, scope: !5549)
!5607 = !DILocation(line: 627, column: 15, scope: !5549)
!5608 = !DILocation(line: 627, column: 43, scope: !5549)
!5609 = !DILocation(line: 628, column: 15, scope: !5549)
!5610 = !DILocation(line: 628, column: 46, scope: !5549)
!5611 = !DILocation(line: 629, column: 15, scope: !5549)
!5612 = !DILocation(line: 629, column: 47, scope: !5549)
!5613 = !DILocation(line: 630, column: 15, scope: !5549)
!5614 = !DILocation(line: 630, column: 52, scope: !5549)
!5615 = !DILocation(line: 631, column: 15, scope: !5549)
!5616 = !DILocation(line: 631, column: 51, scope: !5549)
!5617 = !DILocation(line: 632, column: 15, scope: !5549)
!5618 = !DILocation(line: 632, column: 51, scope: !5549)
!5619 = !DILocation(line: 633, column: 15, scope: !5549)
!5620 = !DILocation(line: 633, column: 44, scope: !5549)
!5621 = !DILocation(line: 634, column: 15, scope: !5549)
!5622 = !DILocation(line: 634, column: 44, scope: !5549)
!5623 = !DILocation(line: 635, column: 15, scope: !5549)
!5624 = !DILocation(line: 635, column: 45, scope: !5549)
!5625 = !DILocation(line: 636, column: 15, scope: !5549)
!5626 = !DILocation(line: 636, column: 44, scope: !5549)
!5627 = !DILocation(line: 637, column: 15, scope: !5549)
!5628 = !DILocation(line: 637, column: 45, scope: !5549)
!5629 = !DILocation(line: 638, column: 15, scope: !5549)
!5630 = !DILocation(line: 638, column: 45, scope: !5549)
!5631 = !DILocation(line: 639, column: 15, scope: !5549)
!5632 = !DILocation(line: 639, column: 45, scope: !5549)
!5633 = !DILocation(line: 640, column: 15, scope: !5549)
!5634 = !DILocation(line: 640, column: 45, scope: !5549)
!5635 = !DILocation(line: 643, column: 3, scope: !5549)
!5636 = !DILocation(line: 645, column: 2, scope: !5528)
!5637 = !DILocation(line: 646, column: 1, scope: !5528)
!5638 = !DILocalVariable(name: "hidinput", arg: 1, scope: !4181, file: !6, line: 969, type: !3701)
!5639 = !DILocation(line: 969, column: 52, scope: !4181)
!5640 = !DILocalVariable(name: "usage", arg: 2, scope: !4181, file: !6, line: 970, type: !3668)
!5641 = !DILocation(line: 970, column: 21, scope: !4181)
!5642 = !DILocalVariable(name: "bit", arg: 3, scope: !4181, file: !6, line: 970, type: !4111)
!5643 = !DILocation(line: 970, column: 44, scope: !4181)
!5644 = !DILocalVariable(name: "max", arg: 4, scope: !4181, file: !6, line: 970, type: !701)
!5645 = !DILocation(line: 970, column: 54, scope: !4181)
!5646 = !DILocalVariable(name: "type", arg: 5, scope: !4181, file: !6, line: 971, type: !122)
!5647 = !DILocation(line: 971, column: 8, scope: !4181)
!5648 = !DILocalVariable(name: "c", arg: 6, scope: !4181, file: !6, line: 971, type: !7)
!5649 = !DILocation(line: 971, column: 27, scope: !4181)
!5650 = !DILocalVariable(name: "input", scope: !4181, file: !6, line: 973, type: !3707)
!5651 = !DILocation(line: 973, column: 20, scope: !4181)
!5652 = !DILocation(line: 973, column: 28, scope: !4181)
!5653 = !DILocation(line: 973, column: 38, scope: !4181)
!5654 = !DILocalVariable(name: "bmap", scope: !4181, file: !6, line: 974, type: !4112)
!5655 = !DILocation(line: 974, column: 17, scope: !4181)
!5656 = !DILocalVariable(name: "limit", scope: !4181, file: !6, line: 975, type: !7)
!5657 = !DILocation(line: 975, column: 15, scope: !4181)
!5658 = !DILocation(line: 977, column: 10, scope: !4181)
!5659 = !DILocation(line: 977, column: 2, scope: !4181)
!5660 = !DILocation(line: 979, column: 10, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !4181, file: !6, line: 977, column: 16)
!5662 = !DILocation(line: 979, column: 17, scope: !5661)
!5663 = !DILocation(line: 979, column: 8, scope: !5661)
!5664 = !DILocation(line: 980, column: 9, scope: !5661)
!5665 = !DILocation(line: 981, column: 3, scope: !5661)
!5666 = !DILocation(line: 983, column: 10, scope: !5661)
!5667 = !DILocation(line: 983, column: 17, scope: !5661)
!5668 = !DILocation(line: 983, column: 8, scope: !5661)
!5669 = !DILocation(line: 984, column: 9, scope: !5661)
!5670 = !DILocation(line: 985, column: 3, scope: !5661)
!5671 = !DILocation(line: 987, column: 10, scope: !5661)
!5672 = !DILocation(line: 987, column: 17, scope: !5661)
!5673 = !DILocation(line: 987, column: 8, scope: !5661)
!5674 = !DILocation(line: 988, column: 9, scope: !5661)
!5675 = !DILocation(line: 989, column: 3, scope: !5661)
!5676 = !DILocation(line: 991, column: 10, scope: !5661)
!5677 = !DILocation(line: 991, column: 17, scope: !5661)
!5678 = !DILocation(line: 991, column: 8, scope: !5661)
!5679 = !DILocation(line: 992, column: 9, scope: !5661)
!5680 = !DILocation(line: 993, column: 3, scope: !5661)
!5681 = !DILocation(line: 996, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !4181, file: !6, line: 996, column: 6)
!5683 = !DILocation(line: 996, column: 6, scope: !4181)
!5684 = !DILocation(line: 997, column: 3, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5686, file: !6, line: 997, column: 3)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !6, line: 997, column: 3)
!5687 = distinct !DILexicalBlock(scope: !5682, file: !6, line: 996, column: 36)
!5688 = !DILocation(line: 997, column: 3, scope: !5686)
!5689 = !DILocation(line: 999, column: 4, scope: !5687)
!5690 = !DILocation(line: 999, column: 8, scope: !5687)
!5691 = !DILocation(line: 1000, column: 3, scope: !5687)
!5692 = !DILocation(line: 1003, column: 16, scope: !4181)
!5693 = !DILocation(line: 1003, column: 2, scope: !4181)
!5694 = !DILocation(line: 1003, column: 9, scope: !4181)
!5695 = !DILocation(line: 1003, column: 14, scope: !4181)
!5696 = !DILocation(line: 1004, column: 16, scope: !4181)
!5697 = !DILocation(line: 1004, column: 2, scope: !4181)
!5698 = !DILocation(line: 1004, column: 9, scope: !4181)
!5699 = !DILocation(line: 1004, column: 14, scope: !4181)
!5700 = !DILocation(line: 1005, column: 9, scope: !4181)
!5701 = !DILocation(line: 1005, column: 3, scope: !4181)
!5702 = !DILocation(line: 1005, column: 7, scope: !4181)
!5703 = !DILocation(line: 1006, column: 9, scope: !4181)
!5704 = !DILocation(line: 1006, column: 3, scope: !4181)
!5705 = !DILocation(line: 1006, column: 7, scope: !4181)
!5706 = !DILocation(line: 1007, column: 1, scope: !4181)
!5707 = distinct !DISubprogram(name: "set_bit", scope: !5708, file: !5708, line: 26, type: !5709, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5708 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5709 = !DISubroutineType(types: !5710)
!5710 = !{null, !309, !5711}
!5711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5712, size: 64)
!5712 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !323)
!5713 = !DILocalVariable(name: "nr", arg: 1, scope: !5714, file: !5300, line: 52, type: !309)
!5714 = distinct !DISubprogram(name: "arch_set_bit", scope: !5300, file: !5300, line: 52, type: !5709, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5715 = !DILocation(line: 52, column: 19, scope: !5714, inlinedAt: !5716)
!5716 = distinct !DILocation(line: 29, column: 2, scope: !5707)
!5717 = !DILocalVariable(name: "addr", arg: 2, scope: !5714, file: !5300, line: 52, type: !5711)
!5718 = !DILocation(line: 52, column: 47, scope: !5714, inlinedAt: !5716)
!5719 = !DILocalVariable(name: "v", arg: 1, scope: !5720, file: !5721, line: 84, type: !5724)
!5720 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5721, file: !5721, line: 84, type: !5722, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5721 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5722 = !DISubroutineType(types: !5723)
!5723 = !{null, !5724, !320}
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5726)
!5726 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5727 = !DILocation(line: 84, column: 74, scope: !5720, inlinedAt: !5728)
!5728 = distinct !DILocation(line: 28, column: 2, scope: !5707)
!5729 = !DILocalVariable(name: "size", arg: 2, scope: !5720, file: !5721, line: 84, type: !320)
!5730 = !DILocation(line: 84, column: 84, scope: !5720, inlinedAt: !5728)
!5731 = !DILocalVariable(name: "nr", arg: 1, scope: !5707, file: !5708, line: 26, type: !309)
!5732 = !DILocation(line: 26, column: 33, scope: !5707)
!5733 = !DILocalVariable(name: "addr", arg: 2, scope: !5707, file: !5708, line: 26, type: !5711)
!5734 = !DILocation(line: 26, column: 61, scope: !5707)
!5735 = !DILocation(line: 28, column: 26, scope: !5707)
!5736 = !DILocation(line: 28, column: 33, scope: !5707)
!5737 = !DILocation(line: 28, column: 31, scope: !5707)
!5738 = !DILocation(line: 86, column: 20, scope: !5720, inlinedAt: !5728)
!5739 = !DILocation(line: 86, column: 23, scope: !5720, inlinedAt: !5728)
!5740 = !DILocation(line: 86, column: 2, scope: !5720, inlinedAt: !5728)
!5741 = !DILocation(line: 87, column: 2, scope: !5720, inlinedAt: !5728)
!5742 = !DILocation(line: 29, column: 15, scope: !5707)
!5743 = !DILocation(line: 29, column: 19, scope: !5707)
!5744 = !DILocation(line: 54, column: 27, scope: !5745, inlinedAt: !5716)
!5745 = distinct !DILexicalBlock(scope: !5714, file: !5300, line: 54, column: 6)
!5746 = !DILocation(line: 54, column: 6, scope: !5745, inlinedAt: !5716)
!5747 = !DILocation(line: 54, column: 6, scope: !5714, inlinedAt: !5716)
!5748 = !DILocation(line: 56, column: 6, scope: !5749, inlinedAt: !5716)
!5749 = distinct !DILexicalBlock(scope: !5745, file: !5300, line: 54, column: 32)
!5750 = !DILocation(line: 57, column: 12, scope: !5749, inlinedAt: !5716)
!5751 = !DILocation(line: 55, column: 3, scope: !5749, inlinedAt: !5716)
!5752 = !{i32 -2147035111}
!5753 = !DILocation(line: 59, column: 2, scope: !5749, inlinedAt: !5716)
!5754 = !DILocation(line: 61, column: 8, scope: !5755, inlinedAt: !5716)
!5755 = distinct !DILexicalBlock(scope: !5745, file: !5300, line: 59, column: 9)
!5756 = !DILocation(line: 61, column: 32, scope: !5755, inlinedAt: !5716)
!5757 = !DILocation(line: 60, column: 3, scope: !5755, inlinedAt: !5716)
!5758 = !{i32 -2147034979}
!5759 = !DILocation(line: 30, column: 1, scope: !5707)
!5760 = distinct !DISubprogram(name: "hid_map_usage_clear", scope: !6, file: !6, line: 1015, type: !5761, scopeLine: 1018, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{null, !3701, !3668, !4111, !701, !122, !151}
!5763 = !DILocalVariable(name: "hidinput", arg: 1, scope: !5760, file: !6, line: 1015, type: !3701)
!5764 = !DILocation(line: 1015, column: 58, scope: !5760)
!5765 = !DILocalVariable(name: "usage", arg: 2, scope: !5760, file: !6, line: 1016, type: !3668)
!5766 = !DILocation(line: 1016, column: 21, scope: !5760)
!5767 = !DILocalVariable(name: "bit", arg: 3, scope: !5760, file: !6, line: 1016, type: !4111)
!5768 = !DILocation(line: 1016, column: 44, scope: !5760)
!5769 = !DILocalVariable(name: "max", arg: 4, scope: !5760, file: !6, line: 1016, type: !701)
!5770 = !DILocation(line: 1016, column: 54, scope: !5760)
!5771 = !DILocalVariable(name: "type", arg: 5, scope: !5760, file: !6, line: 1017, type: !122)
!5772 = !DILocation(line: 1017, column: 8, scope: !5760)
!5773 = !DILocalVariable(name: "c", arg: 6, scope: !5760, file: !6, line: 1017, type: !151)
!5774 = !DILocation(line: 1017, column: 20, scope: !5760)
!5775 = !DILocation(line: 1019, column: 16, scope: !5760)
!5776 = !DILocation(line: 1019, column: 26, scope: !5760)
!5777 = !DILocation(line: 1019, column: 33, scope: !5760)
!5778 = !DILocation(line: 1019, column: 38, scope: !5760)
!5779 = !DILocation(line: 1019, column: 43, scope: !5760)
!5780 = !DILocation(line: 1019, column: 49, scope: !5760)
!5781 = !DILocation(line: 1019, column: 2, scope: !5760)
!5782 = !DILocation(line: 1020, column: 7, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5760, file: !6, line: 1020, column: 6)
!5784 = !DILocation(line: 1020, column: 6, scope: !5783)
!5785 = !DILocation(line: 1020, column: 6, scope: !5760)
!5786 = !DILocation(line: 1021, column: 13, scope: !5783)
!5787 = !DILocation(line: 1021, column: 20, scope: !5783)
!5788 = !DILocation(line: 1021, column: 27, scope: !5783)
!5789 = !DILocation(line: 1021, column: 26, scope: !5783)
!5790 = !DILocation(line: 1021, column: 3, scope: !5783)
!5791 = !DILocation(line: 1022, column: 1, scope: !5760)
!5792 = distinct !DISubprogram(name: "kasan_check_write", scope: !5793, file: !5793, line: 38, type: !5794, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5793 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!486, !5724, !7}
!5796 = !DILocalVariable(name: "p", arg: 1, scope: !5792, file: !5793, line: 38, type: !5724)
!5797 = !DILocation(line: 38, column: 59, scope: !5792)
!5798 = !DILocalVariable(name: "size", arg: 2, scope: !5792, file: !5793, line: 38, type: !7)
!5799 = !DILocation(line: 38, column: 75, scope: !5792)
!5800 = !DILocation(line: 40, column: 2, scope: !5792)
!5801 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5802, file: !5802, line: 178, type: !5803, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5802 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5803 = !DISubroutineType(types: !5804)
!5804 = !{null, !5724, !320, !134}
!5805 = !DILocalVariable(name: "ptr", arg: 1, scope: !5801, file: !5802, line: 178, type: !5724)
!5806 = !DILocation(line: 178, column: 60, scope: !5801)
!5807 = !DILocalVariable(name: "size", arg: 2, scope: !5801, file: !5802, line: 178, type: !320)
!5808 = !DILocation(line: 178, column: 72, scope: !5801)
!5809 = !DILocalVariable(name: "type", arg: 3, scope: !5801, file: !5802, line: 179, type: !134)
!5810 = !DILocation(line: 179, column: 15, scope: !5801)
!5811 = !DILocation(line: 179, column: 23, scope: !5801)
!5812 = distinct !DISubprogram(name: "clear_bit", scope: !5708, file: !5708, line: 39, type: !5709, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5813 = !DILocalVariable(name: "nr", arg: 1, scope: !5814, file: !5300, line: 72, type: !309)
!5814 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5300, file: !5300, line: 72, type: !5709, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !248)
!5815 = !DILocation(line: 72, column: 21, scope: !5814, inlinedAt: !5816)
!5816 = distinct !DILocation(line: 42, column: 2, scope: !5812)
!5817 = !DILocalVariable(name: "addr", arg: 2, scope: !5814, file: !5300, line: 72, type: !5711)
!5818 = !DILocation(line: 72, column: 49, scope: !5814, inlinedAt: !5816)
!5819 = !DILocation(line: 84, column: 74, scope: !5720, inlinedAt: !5820)
!5820 = distinct !DILocation(line: 41, column: 2, scope: !5812)
!5821 = !DILocation(line: 84, column: 84, scope: !5720, inlinedAt: !5820)
!5822 = !DILocalVariable(name: "nr", arg: 1, scope: !5812, file: !5708, line: 39, type: !309)
!5823 = !DILocation(line: 39, column: 35, scope: !5812)
!5824 = !DILocalVariable(name: "addr", arg: 2, scope: !5812, file: !5708, line: 39, type: !5711)
!5825 = !DILocation(line: 39, column: 63, scope: !5812)
!5826 = !DILocation(line: 41, column: 26, scope: !5812)
!5827 = !DILocation(line: 41, column: 33, scope: !5812)
!5828 = !DILocation(line: 41, column: 31, scope: !5812)
!5829 = !DILocation(line: 86, column: 20, scope: !5720, inlinedAt: !5820)
!5830 = !DILocation(line: 86, column: 23, scope: !5720, inlinedAt: !5820)
!5831 = !DILocation(line: 86, column: 2, scope: !5720, inlinedAt: !5820)
!5832 = !DILocation(line: 87, column: 2, scope: !5720, inlinedAt: !5820)
!5833 = !DILocation(line: 42, column: 17, scope: !5812)
!5834 = !DILocation(line: 42, column: 21, scope: !5812)
!5835 = !DILocation(line: 74, column: 27, scope: !5836, inlinedAt: !5816)
!5836 = distinct !DILexicalBlock(scope: !5814, file: !5300, line: 74, column: 6)
!5837 = !DILocation(line: 74, column: 6, scope: !5836, inlinedAt: !5816)
!5838 = !DILocation(line: 74, column: 6, scope: !5814, inlinedAt: !5816)
!5839 = !DILocation(line: 76, column: 6, scope: !5840, inlinedAt: !5816)
!5840 = distinct !DILexicalBlock(scope: !5836, file: !5300, line: 74, column: 32)
!5841 = !DILocation(line: 77, column: 13, scope: !5840, inlinedAt: !5816)
!5842 = !DILocation(line: 77, column: 12, scope: !5840, inlinedAt: !5816)
!5843 = !DILocation(line: 75, column: 3, scope: !5840, inlinedAt: !5816)
!5844 = !{i32 -2147034157}
!5845 = !DILocation(line: 78, column: 2, scope: !5840, inlinedAt: !5816)
!5846 = !DILocation(line: 80, column: 8, scope: !5847, inlinedAt: !5816)
!5847 = distinct !DILexicalBlock(scope: !5836, file: !5300, line: 78, column: 9)
!5848 = !DILocation(line: 80, column: 32, scope: !5847, inlinedAt: !5816)
!5849 = !DILocation(line: 79, column: 3, scope: !5847, inlinedAt: !5816)
!5850 = !{i32 -2147034025}
!5851 = !DILocation(line: 43, column: 1, scope: !5812)
