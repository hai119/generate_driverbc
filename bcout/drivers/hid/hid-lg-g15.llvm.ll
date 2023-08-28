; ModuleID = '../bcout/drivers/hid/hid-lg-g15.llvm.bc'
source_filename = "drivers/hid/hid-lg-g15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_lg_g15_driver_init6:\09\09\09"
module asm ".long\09lg_g15_driver_init - .\09\09\09"
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
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.lg_g15_data = type { [20 x i8], %struct.mutex, %struct.work_struct, %struct.input_dev*, %struct.hid_device*, i32, [6 x %struct.lg_g15_led], i8 }
%struct.lg_g15_led = type { %struct.led_classdev, i32, i32, i8, i8, i8 }
%struct.led_classdev = type { i8*, i32, i32, i32, i64, void (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*, i32)*, i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*, i64*, i64*)*, i32 (%struct.led_classdev*, %struct.led_pattern*, i32, i32)*, i32 (%struct.led_classdev*)*, %struct.device*, %struct.attribute_group**, %struct.list_head, i8*, i64, i64, %struct.timer_list, i32, i32, void (%struct.led_classdev*)*, %struct.work_struct, i32, %struct.mutex }
%struct.led_pattern = type { i32, i32 }
%struct.led_init_data = type { %struct.fwnode_handle*, i8*, i8*, i8 }

@__UNIQUE_ID___addressable_lg_g15_driver_init230 = internal global i8* bitcast (i32 ()* @lg_g15_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@lg_g15_driver = internal global %struct.hid_driver { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct.hid_device_id* getelementptr inbounds ([6 x %struct.hid_device_id], [6 x %struct.hid_device_id]* @lg_g15_devices, i32 0, i32 0), %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i1 (%struct.hid_device*, i1)* null, i32 (%struct.hid_device*, %struct.hid_device_id*)* @lg_g15_probe, void (%struct.hid_device*)* null, %struct.hid_report_id* null, i32 (%struct.hid_device*, %struct.hid_report*, i8*, i32)* @lg_g15_raw_event, %struct.hid_usage_id* null, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* null, void (%struct.hid_device*, %struct.hid_report*)* null, i8* (%struct.hid_device*, i8*, i32*)* null, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* null, i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* null, i32 (%struct.hid_device*, %struct.hid_input*)* null, void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* null, i32 (%struct.hid_device*, i32)* null, i32 (%struct.hid_device*)* null, i32 (%struct.hid_device*)* null, %struct.device_driver zeroinitializer }, align 8, !dbg !4150
@__exitcall_lg_g15_driver_exit = internal global void ()* @lg_g15_driver_exit, section ".exitcall.exit", align 8, !dbg !4135
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"hid_lg_g15.file=drivers/hid/hid-lg-g15\00", section ".modinfo", align 1, !dbg !4140
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"hid_lg_g15.license=GPL\00", section ".modinfo", align 1, !dbg !4145
@.str = private unnamed_addr constant [11 x i8] c"hid_lg_g15\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"lg-g15\00", align 1
@lg_g15_devices = internal constant [6 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49701, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49698, i64 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49703, i64 1 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49709, i64 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49710, i64 3 }, %struct.hid_device_id zeroinitializer], align 16, !dbg !4152
@lg_g15_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4155
@.str.2 = private unnamed_addr constant [12 x i8] c"&g15->mutex\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"Error %d disabling keyboard emulation for the G-keys, falling back to generic hid-input driver\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Logitech Gaming Keyboard Gaming Keys\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Error getting LED brightness: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Error setting LED brightness: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"g15::kbd_backlight\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"g15::lcd_backlight\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"g15::macro_preset1\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"g15::macro_preset2\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"g15::macro_preset3\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"g15::macro_record\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"g15::power_on_backlight_val\00", align 1
@lg_g510_kbd_led_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @lg_g510_kbd_led_group, %struct.attribute_group* null], align 16, !dbg !4158
@lg_g510_kbd_led_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @lg_g510_kbd_led_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4161
@lg_g510_kbd_led_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_color, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4163
@dev_attr_color = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @color_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @color_store }, align 8, !dbg !4166
@.str.14 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"#%02x%02x%02x\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@.str.16 = private unnamed_addr constant [52 x i8] c"Game Mode enabled, Windows (super) key is disabled\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Game Mode disabled\0A\00", align 1
@llvm.used = appending global [5 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_lg_g15_driver_init230 to i8*), i8* bitcast (void ()* @lg_g15_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_lg_g15_driver_exit to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_file231, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license232, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_driver_init() #0 section ".init.text" !dbg !4185 {
entry:
  %call = call i32 @__hid_register_driver(%struct.hid_driver* @lg_g15_driver, %struct.module* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4188
  ret i32 %call, !dbg !4188
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @lg_g15_driver_exit() #0 section ".exit.text" !dbg !4189 {
entry:
  call void @hid_unregister_driver(%struct.hid_driver* @lg_g15_driver) #6, !dbg !4190
  ret void, !dbg !4190
}

; Function Attrs: noredzone
declare dso_local void @hid_unregister_driver(%struct.hid_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__hid_register_driver(%struct.hid_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_probe(%struct.hid_device* %hdev, %struct.hid_device_id* %id) #2 !dbg !4157 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %id.addr = alloca %struct.hid_device_id*, align 8
  %gkeys_settings_output_report = alloca i8, align 1
  %gkeys_settings_feature_report = alloca i8, align 1
  %rep_enum = alloca %struct.hid_report_enum*, align 8
  %connect_mask = alloca i32, align 4
  %has_ff000000 = alloca i8, align 1
  %g15 = alloca %struct.lg_g15_data*, align 8
  %input = alloca %struct.input_dev*, align 8
  %rep = alloca %struct.hid_report*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %gkeys = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hid_report*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp13 = alloca %struct.hid_report*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  %.compoundliteral44 = alloca %struct.atomic64_t, align 8
  %.compoundliteral56 = alloca %struct.atomic64_t, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4191, metadata !DIExpression()), !dbg !4192
  store %struct.hid_device_id* %id, %struct.hid_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device_id** %id.addr, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.declare(metadata i8* %gkeys_settings_output_report, metadata !4195, metadata !DIExpression()), !dbg !4196
  store i8 0, i8* %gkeys_settings_output_report, align 1, !dbg !4196
  call void @llvm.dbg.declare(metadata i8* %gkeys_settings_feature_report, metadata !4197, metadata !DIExpression()), !dbg !4198
  store i8 0, i8* %gkeys_settings_feature_report, align 1, !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.hid_report_enum** %rep_enum, metadata !4199, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.declare(metadata i32* %connect_mask, metadata !4202, metadata !DIExpression()), !dbg !4203
  store i32 0, i32* %connect_mask, align 4, !dbg !4203
  call void @llvm.dbg.declare(metadata i8* %has_ff000000, metadata !4204, metadata !DIExpression()), !dbg !4205
  store i8 0, i8* %has_ff000000, align 1, !dbg !4205
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !4206, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.declare(metadata %struct.input_dev** %input, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.declare(metadata %struct.hid_report** %rep, metadata !4210, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4212, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4214, metadata !DIExpression()), !dbg !4215
  call void @llvm.dbg.declare(metadata i32* %gkeys, metadata !4216, metadata !DIExpression()), !dbg !4217
  store i32 0, i32* %gkeys, align 4, !dbg !4217
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4218
  %quirks = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 25, !dbg !4219
  %1 = load i32, i32* %quirks, align 4, !dbg !4220
  %conv = zext i32 %1 to i64, !dbg !4220
  %or = or i64 %conv, 2048, !dbg !4220
  %conv1 = trunc i64 %or to i32, !dbg !4220
  store i32 %conv1, i32* %quirks, align 4, !dbg !4220
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4221
  %call = call i32 @hid_parse(%struct.hid_device* %2) #6, !dbg !4222
  store i32 %call, i32* %ret, align 4, !dbg !4223
  %3 = load i32, i32* %ret, align 4, !dbg !4224
  %tobool = icmp ne i32 %3, 0, !dbg !4224
  br i1 %tobool, label %if.then, label %if.end, !dbg !4226

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %ret, align 4, !dbg !4227
  store i32 %4, i32* %retval, align 4, !dbg !4228
  br label %return, !dbg !4228

if.end:                                           ; preds = %entry
  %5 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4229
  %report_enum = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 15, !dbg !4230
  %arrayidx = getelementptr [3 x %struct.hid_report_enum], [3 x %struct.hid_report_enum]* %report_enum, i64 0, i64 0, !dbg !4229
  store %struct.hid_report_enum* %arrayidx, %struct.hid_report_enum** %rep_enum, align 8, !dbg !4231
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4232, metadata !DIExpression()), !dbg !4235
  %6 = load %struct.hid_report_enum*, %struct.hid_report_enum** %rep_enum, align 8, !dbg !4235
  %report_list = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %6, i32 0, i32 1, !dbg !4235
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %report_list, i32 0, i32 0, !dbg !4235
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4235
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4235
  store i8* %8, i8** %__mptr, align 8, !dbg !4235
  br label %do.body, !dbg !4235

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4236

do.end:                                           ; preds = %do.body
  %9 = load i8*, i8** %__mptr, align 8, !dbg !4235
  %add.ptr = getelementptr i8, i8* %9, i64 0, !dbg !4235
  %10 = bitcast i8* %add.ptr to %struct.hid_report*, !dbg !4235
  store %struct.hid_report* %10, %struct.hid_report** %tmp, align 8, !dbg !4236
  %11 = load %struct.hid_report*, %struct.hid_report** %tmp, align 8, !dbg !4235
  store %struct.hid_report* %11, %struct.hid_report** %rep, align 8, !dbg !4238
  br label %for.cond, !dbg !4238

for.cond:                                         ; preds = %do.end12, %do.end
  %12 = load %struct.hid_report*, %struct.hid_report** %rep, align 8, !dbg !4239
  %list = getelementptr inbounds %struct.hid_report, %struct.hid_report* %12, i32 0, i32 0, !dbg !4239
  %13 = load %struct.hid_report_enum*, %struct.hid_report_enum** %rep_enum, align 8, !dbg !4239
  %report_list2 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %13, i32 0, i32 1, !dbg !4239
  %cmp = icmp eq %struct.list_head* %list, %report_list2, !dbg !4239
  %lnot = xor i1 %cmp, true, !dbg !4239
  br i1 %lnot, label %for.body, label %for.end, !dbg !4238

for.body:                                         ; preds = %for.cond
  %14 = load %struct.hid_report*, %struct.hid_report** %rep, align 8, !dbg !4241
  %application = getelementptr inbounds %struct.hid_report, %struct.hid_report* %14, i32 0, i32 4, !dbg !4244
  %15 = load i32, i32* %application, align 8, !dbg !4244
  %cmp4 = icmp eq i32 %15, -16777216, !dbg !4245
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4246

if.then6:                                         ; preds = %for.body
  store i8 1, i8* %has_ff000000, align 1, !dbg !4247
  br label %if.end7, !dbg !4248

if.end7:                                          ; preds = %if.then6, %for.body
  br label %for.inc, !dbg !4249

for.inc:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !4250, metadata !DIExpression()), !dbg !4252
  %16 = load %struct.hid_report*, %struct.hid_report** %rep, align 8, !dbg !4252
  %list9 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %16, i32 0, i32 0, !dbg !4252
  %next10 = getelementptr inbounds %struct.list_head, %struct.list_head* %list9, i32 0, i32 0, !dbg !4252
  %17 = load %struct.list_head*, %struct.list_head** %next10, align 8, !dbg !4252
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4252
  store i8* %18, i8** %__mptr8, align 8, !dbg !4252
  br label %do.body11, !dbg !4252

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !4253

do.end12:                                         ; preds = %do.body11
  %19 = load i8*, i8** %__mptr8, align 8, !dbg !4252
  %add.ptr14 = getelementptr i8, i8* %19, i64 0, !dbg !4252
  %20 = bitcast i8* %add.ptr14 to %struct.hid_report*, !dbg !4252
  store %struct.hid_report* %20, %struct.hid_report** %tmp13, align 8, !dbg !4253
  %21 = load %struct.hid_report*, %struct.hid_report** %tmp13, align 8, !dbg !4252
  store %struct.hid_report* %21, %struct.hid_report** %rep, align 8, !dbg !4239
  br label %for.cond, !dbg !4239, !llvm.loop !4255

for.end:                                          ; preds = %for.cond
  %22 = load i8, i8* %has_ff000000, align 1, !dbg !4257
  %tobool15 = trunc i8 %22 to i1, !dbg !4257
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !4259

if.then16:                                        ; preds = %for.end
  %23 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4260
  %call17 = call i32 @hid_hw_start(%struct.hid_device* %23, i32 45) #6, !dbg !4261
  store i32 %call17, i32* %retval, align 4, !dbg !4262
  br label %return, !dbg !4262

if.end18:                                         ; preds = %for.end
  %24 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4263
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 18, !dbg !4264
  %call19 = call i8* @devm_kzalloc(%struct.device* %dev, i64 1744, i32 3264) #6, !dbg !4265
  %25 = bitcast i8* %call19 to %struct.lg_g15_data*, !dbg !4265
  store %struct.lg_g15_data* %25, %struct.lg_g15_data** %g15, align 8, !dbg !4266
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4267
  %tobool20 = icmp ne %struct.lg_g15_data* %26, null, !dbg !4267
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4269

if.then21:                                        ; preds = %if.end18
  store i32 -12, i32* %retval, align 4, !dbg !4270
  br label %return, !dbg !4270

if.end22:                                         ; preds = %if.end18
  br label %do.body23, !dbg !4271

do.body23:                                        ; preds = %if.end22
  %27 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4272
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %27, i32 0, i32 1, !dbg !4272
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @lg_g15_probe.__key) #6, !dbg !4272
  br label %do.end24, !dbg !4272

do.end24:                                         ; preds = %do.body23
  %28 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4274
  %dev25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 18, !dbg !4275
  %call26 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %dev25) #6, !dbg !4276
  store %struct.input_dev* %call26, %struct.input_dev** %input, align 8, !dbg !4277
  %29 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4278
  %tobool27 = icmp ne %struct.input_dev* %29, null, !dbg !4278
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4280

if.then28:                                        ; preds = %do.end24
  store i32 -12, i32* %retval, align 4, !dbg !4281
  br label %return, !dbg !4281

if.end29:                                         ; preds = %do.end24
  %30 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4282
  %31 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4283
  %hdev30 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %31, i32 0, i32 4, !dbg !4284
  store %struct.hid_device* %30, %struct.hid_device** %hdev30, align 8, !dbg !4285
  %32 = load %struct.hid_device_id*, %struct.hid_device_id** %id.addr, align 8, !dbg !4286
  %driver_data = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %32, i32 0, i32 4, !dbg !4287
  %33 = load i64, i64* %driver_data, align 8, !dbg !4287
  %conv31 = trunc i64 %33 to i32, !dbg !4286
  %34 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4288
  %model = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %34, i32 0, i32 5, !dbg !4289
  store i32 %conv31, i32* %model, align 8, !dbg !4290
  %35 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4291
  %36 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4292
  %37 = bitcast %struct.lg_g15_data* %36 to i8*, !dbg !4293
  call void @hid_set_drvdata(%struct.hid_device* %35, i8* %37) #6, !dbg !4294
  %38 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4295
  %model32 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %38, i32 0, i32 5, !dbg !4296
  %39 = load i32, i32* %model32, align 8, !dbg !4296
  switch i32 %39, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
    i32 2, label %sw.bb51
    i32 3, label %sw.bb51
  ], !dbg !4297

sw.bb:                                            ; preds = %if.end29
  br label %do.body33, !dbg !4298

do.body33:                                        ; preds = %sw.bb
  %40 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4300
  %work = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %40, i32 0, i32 2, !dbg !4300
  call void @__init_work(%struct.work_struct* %work, i32 0) #6, !dbg !4300
  %41 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4300
  %work34 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %41, i32 0, i32 2, !dbg !4300
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work34, i32 0, i32 0, !dbg !4300
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4300
  store i64 68719476704, i64* %counter, align 8, !dbg !4300
  %42 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4300
  %43 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false), !dbg !4300
  %44 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4300
  %work35 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %44, i32 0, i32 2, !dbg !4300
  %entry36 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work35, i32 0, i32 1, !dbg !4300
  call void @INIT_LIST_HEAD(%struct.list_head* %entry36) #6, !dbg !4300
  %45 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4300
  %work37 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %45, i32 0, i32 2, !dbg !4300
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work37, i32 0, i32 2, !dbg !4300
  store void (%struct.work_struct*)* @lg_g15_leds_changed_work, void (%struct.work_struct*)** %func, align 8, !dbg !4300
  br label %do.end38, !dbg !4300

do.end38:                                         ; preds = %do.body33
  store i32 4, i32* %connect_mask, align 4, !dbg !4302
  store i8 2, i8* %gkeys_settings_output_report, align 1, !dbg !4303
  store i32 18, i32* %gkeys, align 4, !dbg !4304
  br label %sw.epilog, !dbg !4305

sw.bb39:                                          ; preds = %if.end29
  br label %do.body40, !dbg !4306

do.body40:                                        ; preds = %sw.bb39
  %46 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4307
  %work41 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %46, i32 0, i32 2, !dbg !4307
  call void @__init_work(%struct.work_struct* %work41, i32 0) #6, !dbg !4307
  %47 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4307
  %work42 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %47, i32 0, i32 2, !dbg !4307
  %data43 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work42, i32 0, i32 0, !dbg !4307
  %counter45 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral44, i32 0, i32 0, !dbg !4307
  store i64 68719476704, i64* %counter45, align 8, !dbg !4307
  %48 = bitcast %struct.atomic64_t* %data43 to i8*, !dbg !4307
  %49 = bitcast %struct.atomic64_t* %.compoundliteral44 to i8*, !dbg !4307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false), !dbg !4307
  %50 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4307
  %work46 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %50, i32 0, i32 2, !dbg !4307
  %entry47 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work46, i32 0, i32 1, !dbg !4307
  call void @INIT_LIST_HEAD(%struct.list_head* %entry47) #6, !dbg !4307
  %51 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4307
  %work48 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %51, i32 0, i32 2, !dbg !4307
  %func49 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work48, i32 0, i32 2, !dbg !4307
  store void (%struct.work_struct*)* @lg_g15_leds_changed_work, void (%struct.work_struct*)** %func49, align 8, !dbg !4307
  br label %do.end50, !dbg !4307

do.end50:                                         ; preds = %do.body40
  store i32 4, i32* %connect_mask, align 4, !dbg !4309
  store i8 2, i8* %gkeys_settings_output_report, align 1, !dbg !4310
  store i32 6, i32* %gkeys, align 4, !dbg !4311
  br label %sw.epilog, !dbg !4312

sw.bb51:                                          ; preds = %if.end29, %if.end29
  br label %do.body52, !dbg !4313

do.body52:                                        ; preds = %sw.bb51
  %52 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4314
  %work53 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %52, i32 0, i32 2, !dbg !4314
  call void @__init_work(%struct.work_struct* %work53, i32 0) #6, !dbg !4314
  %53 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4314
  %work54 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %53, i32 0, i32 2, !dbg !4314
  %data55 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work54, i32 0, i32 0, !dbg !4314
  %counter57 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral56, i32 0, i32 0, !dbg !4314
  store i64 68719476704, i64* %counter57, align 8, !dbg !4314
  %54 = bitcast %struct.atomic64_t* %data55 to i8*, !dbg !4314
  %55 = bitcast %struct.atomic64_t* %.compoundliteral56 to i8*, !dbg !4314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 8, i1 false), !dbg !4314
  %56 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4314
  %work58 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %56, i32 0, i32 2, !dbg !4314
  %entry59 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work58, i32 0, i32 1, !dbg !4314
  call void @INIT_LIST_HEAD(%struct.list_head* %entry59) #6, !dbg !4314
  %57 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4314
  %work60 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %57, i32 0, i32 2, !dbg !4314
  %func61 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work60, i32 0, i32 2, !dbg !4314
  store void (%struct.work_struct*)* @lg_g510_leds_sync_work, void (%struct.work_struct*)** %func61, align 8, !dbg !4314
  br label %do.end62, !dbg !4314

do.end62:                                         ; preds = %do.body52
  store i32 5, i32* %connect_mask, align 4, !dbg !4316
  store i8 1, i8* %gkeys_settings_feature_report, align 1, !dbg !4317
  store i32 18, i32* %gkeys, align 4, !dbg !4318
  br label %sw.epilog, !dbg !4319

sw.epilog:                                        ; preds = %if.end29, %do.end62, %do.end50, %do.end38
  %58 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4320
  %59 = load i32, i32* %connect_mask, align 4, !dbg !4321
  %call63 = call i32 @hid_hw_start(%struct.hid_device* %58, i32 %59) #6, !dbg !4322
  store i32 %call63, i32* %ret, align 4, !dbg !4323
  %60 = load i32, i32* %ret, align 4, !dbg !4324
  %tobool64 = icmp ne i32 %60, 0, !dbg !4324
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !4326

if.then65:                                        ; preds = %sw.epilog
  %61 = load i32, i32* %ret, align 4, !dbg !4327
  store i32 %61, i32* %retval, align 4, !dbg !4328
  br label %return, !dbg !4328

if.end66:                                         ; preds = %sw.epilog
  %62 = load i8, i8* %gkeys_settings_output_report, align 1, !dbg !4329
  %tobool67 = icmp ne i8 %62, 0, !dbg !4329
  br i1 %tobool67, label %if.then68, label %if.end81, !dbg !4331

if.then68:                                        ; preds = %if.end66
  %63 = load i8, i8* %gkeys_settings_output_report, align 1, !dbg !4332
  %64 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4334
  %transfer_buf = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %64, i32 0, i32 0, !dbg !4335
  %arrayidx69 = getelementptr [20 x i8], [20 x i8]* %transfer_buf, i64 0, i64 0, !dbg !4334
  store i8 %63, i8* %arrayidx69, align 8, !dbg !4336
  %65 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4337
  %transfer_buf70 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %65, i32 0, i32 0, !dbg !4338
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf70, i64 0, i64 0, !dbg !4337
  %add.ptr71 = getelementptr i8, i8* %arraydecay, i64 1, !dbg !4339
  %66 = load i32, i32* %gkeys, align 4, !dbg !4340
  %conv72 = sext i32 %66 to i64, !dbg !4340
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr71, i8 0, i64 %conv72, i1 false), !dbg !4341
  %67 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4342
  %call73 = call i32 @hid_hw_open(%struct.hid_device* %67) #6, !dbg !4343
  store i32 %call73, i32* %ret, align 4, !dbg !4344
  %68 = load i32, i32* %ret, align 4, !dbg !4345
  %tobool74 = icmp ne i32 %68, 0, !dbg !4345
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !4347

if.then75:                                        ; preds = %if.then68
  br label %error_hw_stop, !dbg !4348

if.end76:                                         ; preds = %if.then68
  %69 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4349
  %70 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4350
  %transfer_buf77 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %70, i32 0, i32 0, !dbg !4351
  %arraydecay78 = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf77, i64 0, i64 0, !dbg !4350
  %71 = load i32, i32* %gkeys, align 4, !dbg !4352
  %add = add i32 %71, 1, !dbg !4353
  %conv79 = sext i32 %add to i64, !dbg !4352
  %call80 = call i32 @hid_hw_output_report(%struct.hid_device* %69, i8* %arraydecay78, i64 %conv79) #6, !dbg !4354
  store i32 %call80, i32* %ret, align 4, !dbg !4355
  %72 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4356
  call void @hid_hw_close(%struct.hid_device* %72) #6, !dbg !4357
  br label %if.end81, !dbg !4358

if.end81:                                         ; preds = %if.end76, %if.end66
  %73 = load i8, i8* %gkeys_settings_feature_report, align 1, !dbg !4359
  %tobool82 = icmp ne i8 %73, 0, !dbg !4359
  br i1 %tobool82, label %if.then83, label %if.end96, !dbg !4361

if.then83:                                        ; preds = %if.end81
  %74 = load i8, i8* %gkeys_settings_feature_report, align 1, !dbg !4362
  %75 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4364
  %transfer_buf84 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %75, i32 0, i32 0, !dbg !4365
  %arrayidx85 = getelementptr [20 x i8], [20 x i8]* %transfer_buf84, i64 0, i64 0, !dbg !4364
  store i8 %74, i8* %arrayidx85, align 8, !dbg !4366
  %76 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4367
  %transfer_buf86 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %76, i32 0, i32 0, !dbg !4368
  %arraydecay87 = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf86, i64 0, i64 0, !dbg !4367
  %add.ptr88 = getelementptr i8, i8* %arraydecay87, i64 1, !dbg !4369
  %77 = load i32, i32* %gkeys, align 4, !dbg !4370
  %conv89 = sext i32 %77 to i64, !dbg !4370
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr88, i8 0, i64 %conv89, i1 false), !dbg !4371
  %78 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4372
  %hdev90 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %78, i32 0, i32 4, !dbg !4373
  %79 = load %struct.hid_device*, %struct.hid_device** %hdev90, align 8, !dbg !4373
  %80 = load i8, i8* %gkeys_settings_feature_report, align 1, !dbg !4374
  %81 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4375
  %transfer_buf91 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %81, i32 0, i32 0, !dbg !4376
  %arraydecay92 = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf91, i64 0, i64 0, !dbg !4375
  %82 = load i32, i32* %gkeys, align 4, !dbg !4377
  %add93 = add i32 %82, 1, !dbg !4378
  %conv94 = sext i32 %add93 to i64, !dbg !4377
  %call95 = call i32 @hid_hw_raw_request(%struct.hid_device* %79, i8 zeroext %80, i8* %arraydecay92, i64 %conv94, i8 zeroext 2, i32 9) #6, !dbg !4379
  store i32 %call95, i32* %ret, align 4, !dbg !4380
  br label %if.end96, !dbg !4381

if.end96:                                         ; preds = %if.then83, %if.end81
  %83 = load i32, i32* %ret, align 4, !dbg !4382
  %cmp97 = icmp slt i32 %83, 0, !dbg !4384
  br i1 %cmp97, label %if.then99, label %if.end101, !dbg !4385

if.then99:                                        ; preds = %if.end96
  %84 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4386
  %dev100 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %84, i32 0, i32 18, !dbg !4386
  %85 = load i32, i32* %ret, align 4, !dbg !4386
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev100, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0), i32 %85) #7, !dbg !4386
  %86 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4388
  call void @hid_set_drvdata(%struct.hid_device* %86, i8* null) #6, !dbg !4389
  store i32 0, i32* %retval, align 4, !dbg !4390
  br label %return, !dbg !4390

if.end101:                                        ; preds = %if.end96
  %87 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4391
  %call102 = call i32 @lg_g15_get_initial_led_brightness(%struct.lg_g15_data* %87) #6, !dbg !4392
  store i32 %call102, i32* %ret, align 4, !dbg !4393
  %88 = load i32, i32* %ret, align 4, !dbg !4394
  %tobool103 = icmp ne i32 %88, 0, !dbg !4394
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !4396

if.then104:                                       ; preds = %if.end101
  br label %error_hw_stop, !dbg !4397

if.end105:                                        ; preds = %if.end101
  %89 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4398
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0, !dbg !4399
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8** %name, align 8, !dbg !4400
  %90 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4401
  %phys = getelementptr inbounds %struct.hid_device, %struct.hid_device* %90, i32 0, i32 31, !dbg !4402
  %arraydecay106 = getelementptr inbounds [64 x i8], [64 x i8]* %phys, i64 0, i64 0, !dbg !4401
  %91 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4403
  %phys107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 1, !dbg !4404
  store i8* %arraydecay106, i8** %phys107, align 8, !dbg !4405
  %92 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4406
  %uniq = getelementptr inbounds %struct.hid_device, %struct.hid_device* %92, i32 0, i32 32, !dbg !4407
  %arraydecay108 = getelementptr inbounds [64 x i8], [64 x i8]* %uniq, i64 0, i64 0, !dbg !4406
  %93 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4408
  %uniq109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 2, !dbg !4409
  store i8* %arraydecay108, i8** %uniq109, align 8, !dbg !4410
  %94 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4411
  %bus = getelementptr inbounds %struct.hid_device, %struct.hid_device* %94, i32 0, i32 8, !dbg !4412
  %95 = load i16, i16* %bus, align 4, !dbg !4412
  %96 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4413
  %id110 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 3, !dbg !4414
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %id110, i32 0, i32 0, !dbg !4415
  store i16 %95, i16* %bustype, align 8, !dbg !4416
  %97 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4417
  %vendor = getelementptr inbounds %struct.hid_device, %struct.hid_device* %97, i32 0, i32 10, !dbg !4418
  %98 = load i32, i32* %vendor, align 8, !dbg !4418
  %conv111 = trunc i32 %98 to i16, !dbg !4417
  %99 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4419
  %id112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 3, !dbg !4420
  %vendor113 = getelementptr inbounds %struct.input_id, %struct.input_id* %id112, i32 0, i32 1, !dbg !4421
  store i16 %conv111, i16* %vendor113, align 2, !dbg !4422
  %100 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4423
  %product = getelementptr inbounds %struct.hid_device, %struct.hid_device* %100, i32 0, i32 11, !dbg !4424
  %101 = load i32, i32* %product, align 4, !dbg !4424
  %conv114 = trunc i32 %101 to i16, !dbg !4423
  %102 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4425
  %id115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %102, i32 0, i32 3, !dbg !4426
  %product116 = getelementptr inbounds %struct.input_id, %struct.input_id* %id115, i32 0, i32 2, !dbg !4427
  store i16 %conv114, i16* %product116, align 4, !dbg !4428
  %103 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4429
  %version = getelementptr inbounds %struct.hid_device, %struct.hid_device* %103, i32 0, i32 12, !dbg !4430
  %104 = load i32, i32* %version, align 8, !dbg !4430
  %conv117 = trunc i32 %104 to i16, !dbg !4429
  %105 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4431
  %id118 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %105, i32 0, i32 3, !dbg !4432
  %version119 = getelementptr inbounds %struct.input_id, %struct.input_id* %id118, i32 0, i32 3, !dbg !4433
  store i16 %conv117, i16* %version119, align 2, !dbg !4434
  %106 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4435
  %dev120 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %106, i32 0, i32 18, !dbg !4436
  %107 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4437
  %dev121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 40, !dbg !4438
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev121, i32 0, i32 1, !dbg !4439
  store %struct.device* %dev120, %struct.device** %parent, align 8, !dbg !4440
  %108 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4441
  %open = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 31, !dbg !4442
  store i32 (%struct.input_dev*)* @lg_g15_input_open, i32 (%struct.input_dev*)** %open, align 8, !dbg !4443
  %109 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4444
  %close = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 32, !dbg !4445
  store void (%struct.input_dev*)* @lg_g15_input_close, void (%struct.input_dev*)** %close, align 8, !dbg !4446
  store i32 0, i32* %i, align 4, !dbg !4447
  br label %for.cond122, !dbg !4449

for.cond122:                                      ; preds = %for.inc127, %if.end105
  %110 = load i32, i32* %i, align 4, !dbg !4450
  %111 = load i32, i32* %gkeys, align 4, !dbg !4452
  %cmp123 = icmp slt i32 %110, %111, !dbg !4453
  br i1 %cmp123, label %for.body125, label %for.end128, !dbg !4454

for.body125:                                      ; preds = %for.cond122
  %112 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4455
  %113 = load i32, i32* %i, align 4, !dbg !4456
  %add126 = add i32 656, %113, !dbg !4457
  call void @input_set_capability(%struct.input_dev* %112, i32 1, i32 %add126) #6, !dbg !4458
  br label %for.inc127, !dbg !4458

for.inc127:                                       ; preds = %for.body125
  %114 = load i32, i32* %i, align 4, !dbg !4459
  %inc = add i32 %114, 1, !dbg !4459
  store i32 %inc, i32* %i, align 4, !dbg !4459
  br label %for.cond122, !dbg !4460, !llvm.loop !4461

for.end128:                                       ; preds = %for.cond122
  store i32 0, i32* %i, align 4, !dbg !4463
  br label %for.cond129, !dbg !4465

for.cond129:                                      ; preds = %for.inc134, %for.end128
  %115 = load i32, i32* %i, align 4, !dbg !4466
  %cmp130 = icmp slt i32 %115, 3, !dbg !4468
  br i1 %cmp130, label %for.body132, label %for.end136, !dbg !4469

for.body132:                                      ; preds = %for.cond129
  %116 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4470
  %117 = load i32, i32* %i, align 4, !dbg !4471
  %add133 = add i32 691, %117, !dbg !4472
  call void @input_set_capability(%struct.input_dev* %116, i32 1, i32 %add133) #6, !dbg !4473
  br label %for.inc134, !dbg !4473

for.inc134:                                       ; preds = %for.body132
  %118 = load i32, i32* %i, align 4, !dbg !4474
  %inc135 = add i32 %118, 1, !dbg !4474
  store i32 %inc135, i32* %i, align 4, !dbg !4474
  br label %for.cond129, !dbg !4475, !llvm.loop !4476

for.end136:                                       ; preds = %for.cond129
  %119 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4478
  call void @input_set_capability(%struct.input_dev* %119, i32 1, i32 688) #6, !dbg !4479
  store i32 0, i32* %i, align 4, !dbg !4480
  br label %for.cond137, !dbg !4482

for.cond137:                                      ; preds = %for.inc142, %for.end136
  %120 = load i32, i32* %i, align 4, !dbg !4483
  %cmp138 = icmp slt i32 %120, 5, !dbg !4485
  br i1 %cmp138, label %for.body140, label %for.end144, !dbg !4486

for.body140:                                      ; preds = %for.cond137
  %121 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4487
  %122 = load i32, i32* %i, align 4, !dbg !4488
  %add141 = add i32 696, %122, !dbg !4489
  call void @input_set_capability(%struct.input_dev* %121, i32 1, i32 %add141) #6, !dbg !4490
  br label %for.inc142, !dbg !4490

for.inc142:                                       ; preds = %for.body140
  %123 = load i32, i32* %i, align 4, !dbg !4491
  %inc143 = add i32 %123, 1, !dbg !4491
  store i32 %inc143, i32* %i, align 4, !dbg !4491
  br label %for.cond137, !dbg !4492, !llvm.loop !4493

for.end144:                                       ; preds = %for.cond137
  %124 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4495
  %model145 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %124, i32 0, i32 5, !dbg !4497
  %125 = load i32, i32* %model145, align 8, !dbg !4497
  %cmp146 = icmp eq i32 %125, 2, !dbg !4498
  br i1 %cmp146, label %if.then148, label %if.end149, !dbg !4499

if.then148:                                       ; preds = %for.end144
  %126 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4500
  call void @input_set_capability(%struct.input_dev* %126, i32 1, i32 113) #6, !dbg !4502
  %127 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4503
  call void @input_set_capability(%struct.input_dev* %127, i32 1, i32 190) #6, !dbg !4504
  br label %if.end149, !dbg !4505

if.end149:                                        ; preds = %if.then148, %for.end144
  %128 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4506
  %129 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4507
  %input150 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %129, i32 0, i32 3, !dbg !4508
  store %struct.input_dev* %128, %struct.input_dev** %input150, align 8, !dbg !4509
  %130 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4510
  %131 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4511
  %132 = bitcast %struct.hid_device* %131 to i8*, !dbg !4511
  call void @input_set_drvdata(%struct.input_dev* %130, i8* %132) #6, !dbg !4512
  %133 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !4513
  %call151 = call i32 @input_register_device(%struct.input_dev* %133) #6, !dbg !4514
  store i32 %call151, i32* %ret, align 4, !dbg !4515
  %134 = load i32, i32* %ret, align 4, !dbg !4516
  %tobool152 = icmp ne i32 %134, 0, !dbg !4516
  br i1 %tobool152, label %if.then153, label %if.end154, !dbg !4518

if.then153:                                       ; preds = %if.end149
  br label %error_hw_stop, !dbg !4519

if.end154:                                        ; preds = %if.end149
  store i32 0, i32* %i, align 4, !dbg !4520
  br label %for.cond155, !dbg !4522

for.cond155:                                      ; preds = %for.inc163, %if.end154
  %135 = load i32, i32* %i, align 4, !dbg !4523
  %cmp156 = icmp slt i32 %135, 6, !dbg !4525
  br i1 %cmp156, label %for.body158, label %for.end165, !dbg !4526

for.body158:                                      ; preds = %for.cond155
  %136 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4527
  %137 = load i32, i32* %i, align 4, !dbg !4529
  %call159 = call i32 @lg_g15_register_led(%struct.lg_g15_data* %136, i32 %137) #6, !dbg !4530
  store i32 %call159, i32* %ret, align 4, !dbg !4531
  %138 = load i32, i32* %ret, align 4, !dbg !4532
  %tobool160 = icmp ne i32 %138, 0, !dbg !4532
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !4534

if.then161:                                       ; preds = %for.body158
  br label %error_hw_stop, !dbg !4535

if.end162:                                        ; preds = %for.body158
  br label %for.inc163, !dbg !4536

for.inc163:                                       ; preds = %if.end162
  %139 = load i32, i32* %i, align 4, !dbg !4537
  %inc164 = add i32 %139, 1, !dbg !4537
  store i32 %inc164, i32* %i, align 4, !dbg !4537
  br label %for.cond155, !dbg !4538, !llvm.loop !4539

for.end165:                                       ; preds = %for.cond155
  store i32 0, i32* %retval, align 4, !dbg !4541
  br label %return, !dbg !4541

error_hw_stop:                                    ; preds = %if.then161, %if.then153, %if.then104, %if.then75
  call void @llvm.dbg.label(metadata !4542), !dbg !4543
  %140 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4544
  call void @hid_hw_stop(%struct.hid_device* %140) #6, !dbg !4545
  %141 = load i32, i32* %ret, align 4, !dbg !4546
  store i32 %141, i32* %retval, align 4, !dbg !4547
  br label %return, !dbg !4547

return:                                           ; preds = %error_hw_stop, %for.end165, %if.then99, %if.then65, %if.then28, %if.then21, %if.then16, %if.then
  %142 = load i32, i32* %retval, align 4, !dbg !4548
  ret i32 %142, !dbg !4548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_raw_event(%struct.hid_device* %hdev, %struct.hid_report* %report, i8* %data, i32 %size) #2 !dbg !4549 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %report.addr = alloca %struct.hid_report*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %g15 = alloca %struct.lg_g15_data*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  store %struct.hid_report* %report, %struct.hid_report** %report.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_report** %report.addr, metadata !4552, metadata !DIExpression()), !dbg !4553
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4554, metadata !DIExpression()), !dbg !4555
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4556, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !4558, metadata !DIExpression()), !dbg !4559
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4560
  %call = call i8* @hid_get_drvdata(%struct.hid_device* %0) #6, !dbg !4561
  %1 = bitcast i8* %call to %struct.lg_g15_data*, !dbg !4561
  store %struct.lg_g15_data* %1, %struct.lg_g15_data** %g15, align 8, !dbg !4559
  %2 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4562
  %tobool = icmp ne %struct.lg_g15_data* %2, null, !dbg !4562
  br i1 %tobool, label %if.end, label %if.then, !dbg !4564

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4565
  br label %return, !dbg !4565

if.end:                                           ; preds = %entry
  %3 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4566
  %model = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %3, i32 0, i32 5, !dbg !4567
  %4 = load i32, i32* %model, align 8, !dbg !4567
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb18
    i32 3, label %sw.bb18
  ], !dbg !4568

sw.bb:                                            ; preds = %if.end
  %5 = load i8*, i8** %data.addr, align 8, !dbg !4569
  %arrayidx = getelementptr i8, i8* %5, i64 0, !dbg !4569
  %6 = load i8, i8* %arrayidx, align 1, !dbg !4569
  %conv = zext i8 %6 to i32, !dbg !4569
  %cmp = icmp eq i32 %conv, 2, !dbg !4572
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !4573

land.lhs.true:                                    ; preds = %sw.bb
  %7 = load i32, i32* %size.addr, align 4, !dbg !4574
  %cmp2 = icmp eq i32 %7, 9, !dbg !4575
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !4576

if.then4:                                         ; preds = %land.lhs.true
  %8 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4577
  %9 = load i8*, i8** %data.addr, align 8, !dbg !4578
  %10 = load i32, i32* %size.addr, align 4, !dbg !4579
  %call5 = call i32 @lg_g15_event(%struct.lg_g15_data* %8, i8* %9, i32 %10) #6, !dbg !4580
  store i32 %call5, i32* %retval, align 4, !dbg !4581
  br label %return, !dbg !4581

if.end6:                                          ; preds = %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !4582

sw.bb7:                                           ; preds = %if.end
  %11 = load i8*, i8** %data.addr, align 8, !dbg !4583
  %arrayidx8 = getelementptr i8, i8* %11, i64 0, !dbg !4583
  %12 = load i8, i8* %arrayidx8, align 1, !dbg !4583
  %conv9 = zext i8 %12 to i32, !dbg !4583
  %cmp10 = icmp eq i32 %conv9, 2, !dbg !4585
  br i1 %cmp10, label %land.lhs.true12, label %if.end17, !dbg !4586

land.lhs.true12:                                  ; preds = %sw.bb7
  %13 = load i32, i32* %size.addr, align 4, !dbg !4587
  %cmp13 = icmp eq i32 %13, 5, !dbg !4588
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !4589

if.then15:                                        ; preds = %land.lhs.true12
  %14 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4590
  %15 = load i8*, i8** %data.addr, align 8, !dbg !4591
  %16 = load i32, i32* %size.addr, align 4, !dbg !4592
  %call16 = call i32 @lg_g15_v2_event(%struct.lg_g15_data* %14, i8* %15, i32 %16) #6, !dbg !4593
  store i32 %call16, i32* %retval, align 4, !dbg !4594
  br label %return, !dbg !4594

if.end17:                                         ; preds = %land.lhs.true12, %sw.bb7
  br label %sw.epilog, !dbg !4595

sw.bb18:                                          ; preds = %if.end, %if.end
  %17 = load i8*, i8** %data.addr, align 8, !dbg !4596
  %arrayidx19 = getelementptr i8, i8* %17, i64 0, !dbg !4596
  %18 = load i8, i8* %arrayidx19, align 1, !dbg !4596
  %conv20 = zext i8 %18 to i32, !dbg !4596
  %cmp21 = icmp eq i32 %conv20, 3, !dbg !4598
  br i1 %cmp21, label %land.lhs.true23, label %if.end28, !dbg !4599

land.lhs.true23:                                  ; preds = %sw.bb18
  %19 = load i32, i32* %size.addr, align 4, !dbg !4600
  %cmp24 = icmp eq i32 %19, 5, !dbg !4601
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !4602

if.then26:                                        ; preds = %land.lhs.true23
  %20 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4603
  %21 = load i8*, i8** %data.addr, align 8, !dbg !4604
  %22 = load i32, i32* %size.addr, align 4, !dbg !4605
  %call27 = call i32 @lg_g510_event(%struct.lg_g15_data* %20, i8* %21, i32 %22) #6, !dbg !4606
  store i32 %call27, i32* %retval, align 4, !dbg !4607
  br label %return, !dbg !4607

if.end28:                                         ; preds = %land.lhs.true23, %sw.bb18
  %23 = load i8*, i8** %data.addr, align 8, !dbg !4608
  %arrayidx29 = getelementptr i8, i8* %23, i64 0, !dbg !4608
  %24 = load i8, i8* %arrayidx29, align 1, !dbg !4608
  %conv30 = zext i8 %24 to i32, !dbg !4608
  %cmp31 = icmp eq i32 %conv30, 4, !dbg !4610
  br i1 %cmp31, label %land.lhs.true33, label %if.end38, !dbg !4611

land.lhs.true33:                                  ; preds = %if.end28
  %25 = load i32, i32* %size.addr, align 4, !dbg !4612
  %cmp34 = icmp eq i32 %25, 2, !dbg !4613
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !4614

if.then36:                                        ; preds = %land.lhs.true33
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4615
  %27 = load i8*, i8** %data.addr, align 8, !dbg !4616
  %28 = load i32, i32* %size.addr, align 4, !dbg !4617
  %call37 = call i32 @lg_g510_leds_event(%struct.lg_g15_data* %26, i8* %27, i32 %28) #6, !dbg !4618
  store i32 %call37, i32* %retval, align 4, !dbg !4619
  br label %return, !dbg !4619

if.end38:                                         ; preds = %land.lhs.true33, %if.end28
  br label %sw.epilog, !dbg !4620

sw.epilog:                                        ; preds = %if.end, %if.end38, %if.end17, %if.end6
  store i32 0, i32* %retval, align 4, !dbg !4621
  br label %return, !dbg !4621

return:                                           ; preds = %sw.epilog, %if.then36, %if.then26, %if.then15, %if.then4, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4622
  ret i32 %29, !dbg !4622
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_parse(%struct.hid_device* %hdev) #2 !dbg !4623 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4624, metadata !DIExpression()), !dbg !4625
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4626
  %call = call i32 @hid_open_report(%struct.hid_device* %0) #6, !dbg !4627
  ret i32 %call, !dbg !4628
}

; Function Attrs: noredzone
declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4629 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4638
  %1 = load i64, i64* %size.addr, align 8, !dbg !4639
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4640
  %or = or i32 %2, 256, !dbg !4641
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !4642
  ret i8* %call, !dbg !4643
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hid_set_drvdata(%struct.hid_device* %hdev, i8* %data) #2 !dbg !4644 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4651
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !4652
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4653
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !4654
  ret void, !dbg !4655
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #2 !dbg !4656 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  ret void, !dbg !4663
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !4664 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4668, metadata !DIExpression()), !dbg !4669
  br label %do.body, !dbg !4670

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4671

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4673

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4671

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4675
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4675
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4675
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4675
  br label %do.end3, !dbg !4675

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4671

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4677
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4678
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4679
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4680
  ret void, !dbg !4681
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lg_g15_leds_changed_work(%struct.work_struct* %work) #2 !dbg !4682 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_data*, align 8
  %old_brightness = alloca [2 x i32], align 4
  %brightness = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !4685, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4687, metadata !DIExpression()), !dbg !4689
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4689
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4689
  store i8* %1, i8** %__mptr, align 8, !dbg !4689
  br label %do.body, !dbg !4689

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4690

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4689
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !4689
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_data*, !dbg !4689
  store %struct.lg_g15_data* %3, %struct.lg_g15_data** %tmp, align 8, !dbg !4690
  %4 = load %struct.lg_g15_data*, %struct.lg_g15_data** %tmp, align 8, !dbg !4689
  store %struct.lg_g15_data* %4, %struct.lg_g15_data** %g15, align 8, !dbg !4686
  call void @llvm.dbg.declare(metadata [2 x i32]* %old_brightness, metadata !4692, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.declare(metadata [2 x i32]* %brightness, metadata !4695, metadata !DIExpression()), !dbg !4696
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4699, metadata !DIExpression()), !dbg !4700
  %5 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4701
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %5, i32 0, i32 1, !dbg !4702
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !4703
  store i32 0, i32* %i, align 4, !dbg !4704
  br label %for.cond, !dbg !4706

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, i32* %i, align 4, !dbg !4707
  %cmp = icmp slt i32 %6, 2, !dbg !4709
  br i1 %cmp, label %for.body, label %for.end, !dbg !4710

for.body:                                         ; preds = %for.cond
  %7 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4711
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %7, i32 0, i32 6, !dbg !4712
  %8 = load i32, i32* %i, align 4, !dbg !4713
  %idxprom = sext i32 %8 to i64, !dbg !4711
  %arrayidx = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 %idxprom, !dbg !4711
  %brightness1 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx, i32 0, i32 1, !dbg !4714
  %9 = load i32, i32* %brightness1, align 8, !dbg !4714
  %10 = load i32, i32* %i, align 4, !dbg !4715
  %idxprom2 = sext i32 %10 to i64, !dbg !4716
  %arrayidx3 = getelementptr [2 x i32], [2 x i32]* %old_brightness, i64 0, i64 %idxprom2, !dbg !4716
  store i32 %9, i32* %arrayidx3, align 4, !dbg !4717
  br label %for.inc, !dbg !4716

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !4718
  %inc = add i32 %11, 1, !dbg !4718
  store i32 %inc, i32* %i, align 4, !dbg !4718
  br label %for.cond, !dbg !4719, !llvm.loop !4720

for.end:                                          ; preds = %for.cond
  %12 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4722
  %call = call i32 @lg_g15_update_led_brightness(%struct.lg_g15_data* %12) #6, !dbg !4723
  store i32 %call, i32* %ret, align 4, !dbg !4724
  store i32 0, i32* %i, align 4, !dbg !4725
  br label %for.cond4, !dbg !4727

for.cond4:                                        ; preds = %for.inc13, %for.end
  %13 = load i32, i32* %i, align 4, !dbg !4728
  %cmp5 = icmp slt i32 %13, 2, !dbg !4730
  br i1 %cmp5, label %for.body6, label %for.end15, !dbg !4731

for.body6:                                        ; preds = %for.cond4
  %14 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4732
  %leds7 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %14, i32 0, i32 6, !dbg !4733
  %15 = load i32, i32* %i, align 4, !dbg !4734
  %idxprom8 = sext i32 %15 to i64, !dbg !4732
  %arrayidx9 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds7, i64 0, i64 %idxprom8, !dbg !4732
  %brightness10 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx9, i32 0, i32 1, !dbg !4735
  %16 = load i32, i32* %brightness10, align 8, !dbg !4735
  %17 = load i32, i32* %i, align 4, !dbg !4736
  %idxprom11 = sext i32 %17 to i64, !dbg !4737
  %arrayidx12 = getelementptr [2 x i32], [2 x i32]* %brightness, i64 0, i64 %idxprom11, !dbg !4737
  store i32 %16, i32* %arrayidx12, align 4, !dbg !4738
  br label %for.inc13, !dbg !4737

for.inc13:                                        ; preds = %for.body6
  %18 = load i32, i32* %i, align 4, !dbg !4739
  %inc14 = add i32 %18, 1, !dbg !4739
  store i32 %inc14, i32* %i, align 4, !dbg !4739
  br label %for.cond4, !dbg !4740, !llvm.loop !4741

for.end15:                                        ; preds = %for.cond4
  %19 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4743
  %mutex16 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %19, i32 0, i32 1, !dbg !4744
  call void @mutex_unlock(%struct.mutex* %mutex16) #6, !dbg !4745
  %20 = load i32, i32* %ret, align 4, !dbg !4746
  %tobool = icmp ne i32 %20, 0, !dbg !4746
  br i1 %tobool, label %if.then, label %if.end, !dbg !4748

if.then:                                          ; preds = %for.end15
  br label %for.end34, !dbg !4749

if.end:                                           ; preds = %for.end15
  store i32 0, i32* %i, align 4, !dbg !4750
  br label %for.cond17, !dbg !4752

for.cond17:                                       ; preds = %for.inc32, %if.end
  %21 = load i32, i32* %i, align 4, !dbg !4753
  %cmp18 = icmp slt i32 %21, 2, !dbg !4755
  br i1 %cmp18, label %for.body19, label %for.end34, !dbg !4756

for.body19:                                       ; preds = %for.cond17
  %22 = load i32, i32* %i, align 4, !dbg !4757
  %idxprom20 = sext i32 %22 to i64, !dbg !4760
  %arrayidx21 = getelementptr [2 x i32], [2 x i32]* %brightness, i64 0, i64 %idxprom20, !dbg !4760
  %23 = load i32, i32* %arrayidx21, align 4, !dbg !4760
  %24 = load i32, i32* %i, align 4, !dbg !4761
  %idxprom22 = sext i32 %24 to i64, !dbg !4762
  %arrayidx23 = getelementptr [2 x i32], [2 x i32]* %old_brightness, i64 0, i64 %idxprom22, !dbg !4762
  %25 = load i32, i32* %arrayidx23, align 4, !dbg !4762
  %cmp24 = icmp eq i32 %23, %25, !dbg !4763
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4764

if.then25:                                        ; preds = %for.body19
  br label %for.inc32, !dbg !4765

if.end26:                                         ; preds = %for.body19
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4766
  %leds27 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %26, i32 0, i32 6, !dbg !4767
  %27 = load i32, i32* %i, align 4, !dbg !4768
  %idxprom28 = sext i32 %27 to i64, !dbg !4766
  %arrayidx29 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds27, i64 0, i64 %idxprom28, !dbg !4766
  %cdev = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx29, i32 0, i32 0, !dbg !4769
  %28 = load i32, i32* %i, align 4, !dbg !4770
  %idxprom30 = sext i32 %28 to i64, !dbg !4771
  %arrayidx31 = getelementptr [2 x i32], [2 x i32]* %brightness, i64 0, i64 %idxprom30, !dbg !4771
  %29 = load i32, i32* %arrayidx31, align 4, !dbg !4771
  call void @led_classdev_notify_brightness_hw_changed(%struct.led_classdev* %cdev, i32 %29) #6, !dbg !4772
  br label %for.inc32, !dbg !4773

for.inc32:                                        ; preds = %if.end26, %if.then25
  %30 = load i32, i32* %i, align 4, !dbg !4774
  %inc33 = add i32 %30, 1, !dbg !4774
  store i32 %inc33, i32* %i, align 4, !dbg !4774
  br label %for.cond17, !dbg !4775, !llvm.loop !4776

for.end34:                                        ; preds = %if.then, %for.cond17
  ret void, !dbg !4778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lg_g510_leds_sync_work(%struct.work_struct* %work) #2 !dbg !4779 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_data*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4780, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4784, metadata !DIExpression()), !dbg !4786
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4786
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4786
  store i8* %1, i8** %__mptr, align 8, !dbg !4786
  br label %do.body, !dbg !4786

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4787

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4786
  %add.ptr = getelementptr i8, i8* %2, i64 -48, !dbg !4786
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_data*, !dbg !4786
  store %struct.lg_g15_data* %3, %struct.lg_g15_data** %tmp, align 8, !dbg !4787
  %4 = load %struct.lg_g15_data*, %struct.lg_g15_data** %tmp, align 8, !dbg !4786
  store %struct.lg_g15_data* %4, %struct.lg_g15_data** %g15, align 8, !dbg !4783
  %5 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4789
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %5, i32 0, i32 1, !dbg !4790
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !4791
  %6 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4792
  %7 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4793
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %7, i32 0, i32 6, !dbg !4794
  %arrayidx = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 0, !dbg !4793
  %8 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4795
  %leds1 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %8, i32 0, i32 6, !dbg !4796
  %arrayidx2 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds1, i64 0, i64 0, !dbg !4795
  %brightness = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx2, i32 0, i32 1, !dbg !4797
  %9 = load i32, i32* %brightness, align 8, !dbg !4797
  %call = call i32 @lg_g510_kbd_led_write(%struct.lg_g15_data* %6, %struct.lg_g15_led* %arrayidx, i32 %9) #6, !dbg !4798
  %10 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !4799
  %mutex3 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %10, i32 0, i32 1, !dbg !4800
  call void @mutex_unlock(%struct.mutex* %mutex3) #6, !dbg !4801
  ret void, !dbg !4802
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_hw_output_report(%struct.hid_device* %hdev, i8* %buf, i64 %len) #2 !dbg !4803 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  %0 = load i64, i64* %len.addr, align 8, !dbg !4810
  %cmp = icmp ult i64 %0, 1, !dbg !4812
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4813

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8, !dbg !4814
  %cmp1 = icmp ugt i64 %1, 8192, !dbg !4815
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4816

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4817
  %tobool = icmp ne i8* %2, null, !dbg !4817
  br i1 %tobool, label %if.end, label %if.then, !dbg !4818

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4819
  br label %return, !dbg !4819

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4820
  %ll_driver = getelementptr inbounds %struct.hid_device, %struct.hid_device* %3, i32 0, i32 20, !dbg !4822
  %4 = load %struct.hid_ll_driver*, %struct.hid_ll_driver** %ll_driver, align 8, !dbg !4822
  %output_report = getelementptr inbounds %struct.hid_ll_driver, %struct.hid_ll_driver* %4, i32 0, i32 9, !dbg !4823
  %5 = load i32 (%struct.hid_device*, i8*, i64)*, i32 (%struct.hid_device*, i8*, i64)** %output_report, align 8, !dbg !4823
  %tobool3 = icmp ne i32 (%struct.hid_device*, i8*, i64)* %5, null, !dbg !4820
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !4824

if.then4:                                         ; preds = %if.end
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4825
  %ll_driver5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 20, !dbg !4826
  %7 = load %struct.hid_ll_driver*, %struct.hid_ll_driver** %ll_driver5, align 8, !dbg !4826
  %output_report6 = getelementptr inbounds %struct.hid_ll_driver, %struct.hid_ll_driver* %7, i32 0, i32 9, !dbg !4827
  %8 = load i32 (%struct.hid_device*, i8*, i64)*, i32 (%struct.hid_device*, i8*, i64)** %output_report6, align 8, !dbg !4827
  %9 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4828
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4829
  %11 = load i64, i64* %len.addr, align 8, !dbg !4830
  %call = call i32 %8(%struct.hid_device* %9, i8* %10, i64 %11) #6, !dbg !4825
  store i32 %call, i32* %retval, align 4, !dbg !4831
  br label %return, !dbg !4831

if.end7:                                          ; preds = %if.end
  store i32 -38, i32* %retval, align 4, !dbg !4832
  br label %return, !dbg !4832

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4833
  ret i32 %12, !dbg !4833
}

; Function Attrs: noredzone
declare dso_local void @hid_hw_close(%struct.hid_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hid_hw_raw_request(%struct.hid_device* %hdev, i8 zeroext %reportnum, i8* %buf, i64 %len, i8 zeroext %rtype, i32 %reqtype) #2 !dbg !4834 {
entry:
  %retval = alloca i32, align 4
  %hdev.addr = alloca %struct.hid_device*, align 8
  %reportnum.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %rtype.addr = alloca i8, align 1
  %reqtype.addr = alloca i32, align 4
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !4835, metadata !DIExpression()), !dbg !4836
  store i8 %reportnum, i8* %reportnum.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reportnum.addr, metadata !4837, metadata !DIExpression()), !dbg !4838
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  store i8 %rtype, i8* %rtype.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rtype.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  store i32 %reqtype, i32* %reqtype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reqtype.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = load i64, i64* %len.addr, align 8, !dbg !4847
  %cmp = icmp ult i64 %0, 1, !dbg !4849
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4850

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8, !dbg !4851
  %cmp1 = icmp ugt i64 %1, 8192, !dbg !4852
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4853

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4854
  %tobool = icmp ne i8* %2, null, !dbg !4854
  br i1 %tobool, label %if.end, label %if.then, !dbg !4855

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4856
  br label %return, !dbg !4856

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4857
  %ll_driver = getelementptr inbounds %struct.hid_device, %struct.hid_device* %3, i32 0, i32 20, !dbg !4858
  %4 = load %struct.hid_ll_driver*, %struct.hid_ll_driver** %ll_driver, align 8, !dbg !4858
  %raw_request = getelementptr inbounds %struct.hid_ll_driver, %struct.hid_ll_driver* %4, i32 0, i32 8, !dbg !4859
  %5 = load i32 (%struct.hid_device*, i8, i8*, i64, i8, i32)*, i32 (%struct.hid_device*, i8, i8*, i64, i8, i32)** %raw_request, align 8, !dbg !4859
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !4860
  %7 = load i8, i8* %reportnum.addr, align 1, !dbg !4861
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4862
  %9 = load i64, i64* %len.addr, align 8, !dbg !4863
  %10 = load i8, i8* %rtype.addr, align 1, !dbg !4864
  %11 = load i32, i32* %reqtype.addr, align 4, !dbg !4865
  %call = call i32 %5(%struct.hid_device* %6, i8 zeroext %7, i8* %8, i64 %9, i8 zeroext %10, i32 %11) #6, !dbg !4857
  store i32 %call, i32* %retval, align 4, !dbg !4866
  br label %return, !dbg !4866

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4867
  ret i32 %12, !dbg !4867
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_get_initial_led_brightness(%struct.lg_g15_data* %g15) #2 !dbg !4868 {
entry:
  %retval = alloca i32, align 4
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %ret = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !4871, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4873, metadata !DIExpression()), !dbg !4874
  %0 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4875
  %model = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %0, i32 0, i32 5, !dbg !4876
  %1 = load i32, i32* %model, align 8, !dbg !4876
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !4877

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4878
  %call = call i32 @lg_g15_update_led_brightness(%struct.lg_g15_data* %2) #6, !dbg !4880
  store i32 %call, i32* %retval, align 4, !dbg !4881
  br label %return, !dbg !4881

sw.bb1:                                           ; preds = %entry, %entry
  %3 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4882
  %call2 = call i32 @lg_g510_get_initial_led_brightness(%struct.lg_g15_data* %3, i32 0) #6, !dbg !4883
  store i32 %call2, i32* %ret, align 4, !dbg !4884
  %4 = load i32, i32* %ret, align 4, !dbg !4885
  %tobool = icmp ne i32 %4, 0, !dbg !4885
  br i1 %tobool, label %if.then, label %if.end, !dbg !4887

if.then:                                          ; preds = %sw.bb1
  %5 = load i32, i32* %ret, align 4, !dbg !4888
  store i32 %5, i32* %retval, align 4, !dbg !4889
  br label %return, !dbg !4889

if.end:                                           ; preds = %sw.bb1
  %6 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4890
  %call3 = call i32 @lg_g510_get_initial_led_brightness(%struct.lg_g15_data* %6, i32 1) #6, !dbg !4891
  store i32 %call3, i32* %ret, align 4, !dbg !4892
  %7 = load i32, i32* %ret, align 4, !dbg !4893
  %tobool4 = icmp ne i32 %7, 0, !dbg !4893
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4895

if.then5:                                         ; preds = %if.end
  %8 = load i32, i32* %ret, align 4, !dbg !4896
  store i32 %8, i32* %retval, align 4, !dbg !4897
  br label %return, !dbg !4897

if.end6:                                          ; preds = %if.end
  %9 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4898
  %call7 = call i32 @lg_g510_update_mkey_led_brightness(%struct.lg_g15_data* %9) #6, !dbg !4899
  store i32 %call7, i32* %retval, align 4, !dbg !4900
  br label %return, !dbg !4900

sw.epilog:                                        ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4901
  br label %return, !dbg !4901

return:                                           ; preds = %sw.epilog, %if.end6, %if.then5, %if.then, %sw.bb
  %10 = load i32, i32* %retval, align 4, !dbg !4902
  ret i32 %10, !dbg !4902
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_input_open(%struct.input_dev* %dev) #2 !dbg !4903 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %hdev = alloca %struct.hid_device*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev, metadata !4906, metadata !DIExpression()), !dbg !4907
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4908
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4909
  %1 = bitcast i8* %call to %struct.hid_device*, !dbg !4909
  store %struct.hid_device* %1, %struct.hid_device** %hdev, align 8, !dbg !4907
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4910
  %call1 = call i32 @hid_hw_open(%struct.hid_device* %2) #6, !dbg !4911
  ret i32 %call1, !dbg !4912
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @lg_g15_input_close(%struct.input_dev* %dev) #2 !dbg !4913 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %hdev = alloca %struct.hid_device*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev, metadata !4916, metadata !DIExpression()), !dbg !4917
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4918
  %call = call i8* @input_get_drvdata(%struct.input_dev* %0) #6, !dbg !4919
  %1 = bitcast i8* %call to %struct.hid_device*, !dbg !4919
  store %struct.hid_device* %1, %struct.hid_device** %hdev, align 8, !dbg !4917
  %2 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !4920
  call void @hid_hw_close(%struct.hid_device* %2) #6, !dbg !4921
  ret void, !dbg !4922
}

; Function Attrs: noredzone
declare dso_local void @input_set_capability(%struct.input_dev*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_set_drvdata(%struct.input_dev* %dev, i8* %data) #2 !dbg !4923 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4930
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !4931
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4932
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %1) #6, !dbg !4933
  ret void, !dbg !4934
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_register_led(%struct.lg_g15_data* %g15, i32 %i) #2 !dbg !4935 {
entry:
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %i.addr = alloca i32, align 4
  %led_names = alloca [6 x i8*], align 16
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !4940, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.declare(metadata [6 x i8*]* %led_names, metadata !4942, metadata !DIExpression()), !dbg !4945
  %0 = bitcast [6 x i8*]* %led_names to i8*, !dbg !4945
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 48, i1 false), !dbg !4945
  %1 = bitcast i8* %0 to [6 x i8*]*, !dbg !4945
  %2 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 0, !dbg !4945
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8** %2, align 16, !dbg !4945
  %3 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 1, !dbg !4945
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8, !dbg !4945
  %4 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 2, !dbg !4945
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8** %4, align 16, !dbg !4945
  %5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 3, !dbg !4945
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8** %5, align 8, !dbg !4945
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 4, !dbg !4945
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8** %6, align 16, !dbg !4945
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i32 0, i32 5, !dbg !4945
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i8** %7, align 8, !dbg !4945
  %8 = load i32, i32* %i.addr, align 4, !dbg !4946
  %9 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4947
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %9, i32 0, i32 6, !dbg !4948
  %10 = load i32, i32* %i.addr, align 4, !dbg !4949
  %idxprom = sext i32 %10 to i64, !dbg !4947
  %arrayidx = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 %idxprom, !dbg !4947
  %led = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx, i32 0, i32 2, !dbg !4950
  store i32 %8, i32* %led, align 4, !dbg !4951
  %11 = load i32, i32* %i.addr, align 4, !dbg !4952
  %idxprom1 = sext i32 %11 to i64, !dbg !4953
  %arrayidx2 = getelementptr [6 x i8*], [6 x i8*]* %led_names, i64 0, i64 %idxprom1, !dbg !4953
  %12 = load i8*, i8** %arrayidx2, align 8, !dbg !4953
  %13 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4954
  %leds3 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %13, i32 0, i32 6, !dbg !4955
  %14 = load i32, i32* %i.addr, align 4, !dbg !4956
  %idxprom4 = sext i32 %14 to i64, !dbg !4954
  %arrayidx5 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds3, i64 0, i64 %idxprom4, !dbg !4954
  %cdev = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx5, i32 0, i32 0, !dbg !4957
  %name = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev, i32 0, i32 0, !dbg !4958
  store i8* %12, i8** %name, align 8, !dbg !4959
  %15 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4960
  %model = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %15, i32 0, i32 5, !dbg !4961
  %16 = load i32, i32* %model, align 8, !dbg !4961
  switch i32 %16, label %sw.epilog69 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb27
  ], !dbg !4962

sw.bb:                                            ; preds = %entry, %entry
  %17 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4963
  %leds6 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %17, i32 0, i32 6, !dbg !4965
  %18 = load i32, i32* %i.addr, align 4, !dbg !4966
  %idxprom7 = sext i32 %18 to i64, !dbg !4963
  %arrayidx8 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds6, i64 0, i64 %idxprom7, !dbg !4963
  %cdev9 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx8, i32 0, i32 0, !dbg !4967
  %brightness_set_blocking = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev9, i32 0, i32 6, !dbg !4968
  store i32 (%struct.led_classdev*, i32)* @lg_g15_led_set, i32 (%struct.led_classdev*, i32)** %brightness_set_blocking, align 8, !dbg !4969
  %19 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4970
  %leds10 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %19, i32 0, i32 6, !dbg !4971
  %20 = load i32, i32* %i.addr, align 4, !dbg !4972
  %idxprom11 = sext i32 %20 to i64, !dbg !4970
  %arrayidx12 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds10, i64 0, i64 %idxprom11, !dbg !4970
  %cdev13 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx12, i32 0, i32 0, !dbg !4973
  %brightness_get = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev13, i32 0, i32 7, !dbg !4974
  store i32 (%struct.led_classdev*)* @lg_g15_led_get, i32 (%struct.led_classdev*)** %brightness_get, align 8, !dbg !4975
  %21 = load i32, i32* %i.addr, align 4, !dbg !4976
  %cmp = icmp slt i32 %21, 2, !dbg !4978
  br i1 %cmp, label %if.then, label %if.else, !dbg !4979

if.then:                                          ; preds = %sw.bb
  %22 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4980
  %leds14 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %22, i32 0, i32 6, !dbg !4982
  %23 = load i32, i32* %i.addr, align 4, !dbg !4983
  %idxprom15 = sext i32 %23 to i64, !dbg !4980
  %arrayidx16 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds14, i64 0, i64 %idxprom15, !dbg !4980
  %cdev17 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx16, i32 0, i32 0, !dbg !4984
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev17, i32 0, i32 3, !dbg !4985
  store i32 2097152, i32* %flags, align 8, !dbg !4986
  %24 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4987
  %leds18 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %24, i32 0, i32 6, !dbg !4988
  %25 = load i32, i32* %i.addr, align 4, !dbg !4989
  %idxprom19 = sext i32 %25 to i64, !dbg !4987
  %arrayidx20 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds18, i64 0, i64 %idxprom19, !dbg !4987
  %cdev21 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx20, i32 0, i32 0, !dbg !4990
  %max_brightness = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev21, i32 0, i32 2, !dbg !4991
  store i32 2, i32* %max_brightness, align 4, !dbg !4992
  br label %if.end, !dbg !4993

if.else:                                          ; preds = %sw.bb
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !4994
  %leds22 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %26, i32 0, i32 6, !dbg !4996
  %27 = load i32, i32* %i.addr, align 4, !dbg !4997
  %idxprom23 = sext i32 %27 to i64, !dbg !4994
  %arrayidx24 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds22, i64 0, i64 %idxprom23, !dbg !4994
  %cdev25 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx24, i32 0, i32 0, !dbg !4998
  %max_brightness26 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev25, i32 0, i32 2, !dbg !4999
  store i32 1, i32* %max_brightness26, align 4, !dbg !5000
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog69, !dbg !5001

sw.bb27:                                          ; preds = %entry, %entry
  %28 = load i32, i32* %i.addr, align 4, !dbg !5002
  switch i32 %28, label %sw.default [
    i32 1, label %sw.bb28
    i32 0, label %sw.bb34
  ], !dbg !5003

sw.bb28:                                          ; preds = %sw.bb27
  %29 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5004
  %leds29 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %29, i32 0, i32 6, !dbg !5006
  %30 = load i32, i32* %i.addr, align 4, !dbg !5007
  %idxprom30 = sext i32 %30 to i64, !dbg !5004
  %arrayidx31 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds29, i64 0, i64 %idxprom30, !dbg !5004
  %cdev32 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx31, i32 0, i32 0, !dbg !5008
  %name33 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev32, i32 0, i32 0, !dbg !5009
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8** %name33, align 8, !dbg !5010
  br label %sw.bb34, !dbg !5004

sw.bb34:                                          ; preds = %sw.bb27, %sw.bb28
  %31 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5011
  %leds35 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %31, i32 0, i32 6, !dbg !5012
  %32 = load i32, i32* %i.addr, align 4, !dbg !5013
  %idxprom36 = sext i32 %32 to i64, !dbg !5011
  %arrayidx37 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds35, i64 0, i64 %idxprom36, !dbg !5011
  %cdev38 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx37, i32 0, i32 0, !dbg !5014
  %brightness_set_blocking39 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev38, i32 0, i32 6, !dbg !5015
  store i32 (%struct.led_classdev*, i32)* @lg_g510_kbd_led_set, i32 (%struct.led_classdev*, i32)** %brightness_set_blocking39, align 8, !dbg !5016
  %33 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5017
  %leds40 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %33, i32 0, i32 6, !dbg !5018
  %34 = load i32, i32* %i.addr, align 4, !dbg !5019
  %idxprom41 = sext i32 %34 to i64, !dbg !5017
  %arrayidx42 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds40, i64 0, i64 %idxprom41, !dbg !5017
  %cdev43 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx42, i32 0, i32 0, !dbg !5020
  %brightness_get44 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev43, i32 0, i32 7, !dbg !5021
  store i32 (%struct.led_classdev*)* @lg_g510_kbd_led_get, i32 (%struct.led_classdev*)** %brightness_get44, align 8, !dbg !5022
  %35 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5023
  %leds45 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %35, i32 0, i32 6, !dbg !5024
  %36 = load i32, i32* %i.addr, align 4, !dbg !5025
  %idxprom46 = sext i32 %36 to i64, !dbg !5023
  %arrayidx47 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds45, i64 0, i64 %idxprom46, !dbg !5023
  %cdev48 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx47, i32 0, i32 0, !dbg !5026
  %max_brightness49 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev48, i32 0, i32 2, !dbg !5027
  store i32 255, i32* %max_brightness49, align 4, !dbg !5028
  %37 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5029
  %leds50 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %37, i32 0, i32 6, !dbg !5030
  %38 = load i32, i32* %i.addr, align 4, !dbg !5031
  %idxprom51 = sext i32 %38 to i64, !dbg !5029
  %arrayidx52 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds50, i64 0, i64 %idxprom51, !dbg !5029
  %cdev53 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx52, i32 0, i32 0, !dbg !5032
  %groups = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev53, i32 0, i32 12, !dbg !5033
  store %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @lg_g510_kbd_led_groups, i64 0, i64 0), %struct.attribute_group*** %groups, align 8, !dbg !5034
  br label %sw.epilog, !dbg !5035

sw.default:                                       ; preds = %sw.bb27
  %39 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5036
  %leds54 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %39, i32 0, i32 6, !dbg !5037
  %40 = load i32, i32* %i.addr, align 4, !dbg !5038
  %idxprom55 = sext i32 %40 to i64, !dbg !5036
  %arrayidx56 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds54, i64 0, i64 %idxprom55, !dbg !5036
  %cdev57 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx56, i32 0, i32 0, !dbg !5039
  %brightness_set_blocking58 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev57, i32 0, i32 6, !dbg !5040
  store i32 (%struct.led_classdev*, i32)* @lg_g510_mkey_led_set, i32 (%struct.led_classdev*, i32)** %brightness_set_blocking58, align 8, !dbg !5041
  %41 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5042
  %leds59 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %41, i32 0, i32 6, !dbg !5043
  %42 = load i32, i32* %i.addr, align 4, !dbg !5044
  %idxprom60 = sext i32 %42 to i64, !dbg !5042
  %arrayidx61 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds59, i64 0, i64 %idxprom60, !dbg !5042
  %cdev62 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx61, i32 0, i32 0, !dbg !5045
  %brightness_get63 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev62, i32 0, i32 7, !dbg !5046
  store i32 (%struct.led_classdev*)* @lg_g510_mkey_led_get, i32 (%struct.led_classdev*)** %brightness_get63, align 8, !dbg !5047
  %43 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5048
  %leds64 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %43, i32 0, i32 6, !dbg !5049
  %44 = load i32, i32* %i.addr, align 4, !dbg !5050
  %idxprom65 = sext i32 %44 to i64, !dbg !5048
  %arrayidx66 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds64, i64 0, i64 %idxprom65, !dbg !5048
  %cdev67 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx66, i32 0, i32 0, !dbg !5051
  %max_brightness68 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %cdev67, i32 0, i32 2, !dbg !5052
  store i32 1, i32* %max_brightness68, align 4, !dbg !5053
  br label %sw.epilog, !dbg !5054

sw.epilog:                                        ; preds = %sw.default, %sw.bb34
  br label %sw.epilog69, !dbg !5055

sw.epilog69:                                      ; preds = %entry, %sw.epilog, %if.end
  %45 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5056
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %45, i32 0, i32 4, !dbg !5057
  %46 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !5057
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 18, !dbg !5058
  %47 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5059
  %leds70 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %47, i32 0, i32 6, !dbg !5060
  %48 = load i32, i32* %i.addr, align 4, !dbg !5061
  %idxprom71 = sext i32 %48 to i64, !dbg !5059
  %arrayidx72 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds70, i64 0, i64 %idxprom71, !dbg !5059
  %cdev73 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx72, i32 0, i32 0, !dbg !5062
  %call = call i32 @devm_led_classdev_register(%struct.device* %dev, %struct.led_classdev* %cdev73) #6, !dbg !5063
  ret i32 %call, !dbg !5064
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @hid_hw_stop(%struct.hid_device*) #1

; Function Attrs: noredzone
declare dso_local i32 @hid_open_report(%struct.hid_device*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5065 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5072
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5073
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5074
  store i8* %0, i8** %driver_data, align 8, !dbg !5075
  ret void, !dbg !5076
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_update_led_brightness(%struct.lg_g15_data* %g15) #2 !dbg !5077 {
entry:
  %retval = alloca i32, align 4
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %ret = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5080, metadata !DIExpression()), !dbg !5081
  %0 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5082
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %0, i32 0, i32 4, !dbg !5083
  %1 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !5083
  %2 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5084
  %transfer_buf = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %2, i32 0, i32 0, !dbg !5085
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf, i64 0, i64 0, !dbg !5084
  %call = call i32 @hid_hw_raw_request(%struct.hid_device* %1, i8 zeroext 2, i8* %arraydecay, i64 4, i8 zeroext 2, i32 1) #6, !dbg !5086
  store i32 %call, i32* %ret, align 4, !dbg !5087
  %3 = load i32, i32* %ret, align 4, !dbg !5088
  %cmp = icmp ne i32 %3, 4, !dbg !5090
  br i1 %cmp, label %if.then, label %if.end, !dbg !5091

if.then:                                          ; preds = %entry
  %4 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5092
  %hdev1 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %4, i32 0, i32 4, !dbg !5092
  %5 = load %struct.hid_device*, %struct.hid_device** %hdev1, align 8, !dbg !5092
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 18, !dbg !5092
  %6 = load i32, i32* %ret, align 4, !dbg !5092
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %6) #7, !dbg !5092
  %7 = load i32, i32* %ret, align 4, !dbg !5094
  %cmp2 = icmp slt i32 %7, 0, !dbg !5095
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5096

cond.true:                                        ; preds = %if.then
  %8 = load i32, i32* %ret, align 4, !dbg !5097
  br label %cond.end, !dbg !5096

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5096

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -5, %cond.false ], !dbg !5096
  store i32 %cond, i32* %retval, align 4, !dbg !5098
  br label %return, !dbg !5098

if.end:                                           ; preds = %entry
  %9 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5099
  %transfer_buf3 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %9, i32 0, i32 0, !dbg !5100
  %arrayidx = getelementptr [20 x i8], [20 x i8]* %transfer_buf3, i64 0, i64 1, !dbg !5099
  %10 = load i8, i8* %arrayidx, align 1, !dbg !5099
  %conv = zext i8 %10 to i32, !dbg !5099
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5101
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 6, !dbg !5102
  %arrayidx4 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 0, !dbg !5101
  %brightness = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx4, i32 0, i32 1, !dbg !5103
  store i32 %conv, i32* %brightness, align 8, !dbg !5104
  %12 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5105
  %transfer_buf5 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %12, i32 0, i32 0, !dbg !5106
  %arrayidx6 = getelementptr [20 x i8], [20 x i8]* %transfer_buf5, i64 0, i64 2, !dbg !5105
  %13 = load i8, i8* %arrayidx6, align 2, !dbg !5105
  %conv7 = zext i8 %13 to i32, !dbg !5105
  %14 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5107
  %leds8 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %14, i32 0, i32 6, !dbg !5108
  %arrayidx9 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds8, i64 0, i64 1, !dbg !5107
  %brightness10 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx9, i32 0, i32 1, !dbg !5109
  store i32 %conv7, i32* %brightness10, align 8, !dbg !5110
  %15 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5111
  %transfer_buf11 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %15, i32 0, i32 0, !dbg !5112
  %arrayidx12 = getelementptr [20 x i8], [20 x i8]* %transfer_buf11, i64 0, i64 3, !dbg !5111
  %16 = load i8, i8* %arrayidx12, align 1, !dbg !5111
  %conv13 = zext i8 %16 to i32, !dbg !5111
  %and = and i32 %conv13, 1, !dbg !5113
  %tobool = icmp ne i32 %and, 0, !dbg !5114
  %lnot = xor i1 %tobool, true, !dbg !5114
  %lnot.ext = zext i1 %lnot to i32, !dbg !5114
  %17 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5115
  %leds14 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %17, i32 0, i32 6, !dbg !5116
  %arrayidx15 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds14, i64 0, i64 2, !dbg !5115
  %brightness16 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx15, i32 0, i32 1, !dbg !5117
  store i32 %lnot.ext, i32* %brightness16, align 8, !dbg !5118
  %18 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5119
  %transfer_buf17 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %18, i32 0, i32 0, !dbg !5120
  %arrayidx18 = getelementptr [20 x i8], [20 x i8]* %transfer_buf17, i64 0, i64 3, !dbg !5119
  %19 = load i8, i8* %arrayidx18, align 1, !dbg !5119
  %conv19 = zext i8 %19 to i32, !dbg !5119
  %and20 = and i32 %conv19, 2, !dbg !5121
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5122
  %lnot22 = xor i1 %tobool21, true, !dbg !5122
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5122
  %20 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5123
  %leds24 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %20, i32 0, i32 6, !dbg !5124
  %arrayidx25 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds24, i64 0, i64 3, !dbg !5123
  %brightness26 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx25, i32 0, i32 1, !dbg !5125
  store i32 %lnot.ext23, i32* %brightness26, align 8, !dbg !5126
  %21 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5127
  %transfer_buf27 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %21, i32 0, i32 0, !dbg !5128
  %arrayidx28 = getelementptr [20 x i8], [20 x i8]* %transfer_buf27, i64 0, i64 3, !dbg !5127
  %22 = load i8, i8* %arrayidx28, align 1, !dbg !5127
  %conv29 = zext i8 %22 to i32, !dbg !5127
  %and30 = and i32 %conv29, 4, !dbg !5129
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5130
  %lnot32 = xor i1 %tobool31, true, !dbg !5130
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !5130
  %23 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5131
  %leds34 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %23, i32 0, i32 6, !dbg !5132
  %arrayidx35 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds34, i64 0, i64 4, !dbg !5131
  %brightness36 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx35, i32 0, i32 1, !dbg !5133
  store i32 %lnot.ext33, i32* %brightness36, align 8, !dbg !5134
  %24 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5135
  %transfer_buf37 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %24, i32 0, i32 0, !dbg !5136
  %arrayidx38 = getelementptr [20 x i8], [20 x i8]* %transfer_buf37, i64 0, i64 3, !dbg !5135
  %25 = load i8, i8* %arrayidx38, align 1, !dbg !5135
  %conv39 = zext i8 %25 to i32, !dbg !5135
  %and40 = and i32 %conv39, 8, !dbg !5137
  %tobool41 = icmp ne i32 %and40, 0, !dbg !5138
  %lnot42 = xor i1 %tobool41, true, !dbg !5138
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !5138
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5139
  %leds44 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %26, i32 0, i32 6, !dbg !5140
  %arrayidx45 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds44, i64 0, i64 5, !dbg !5139
  %brightness46 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx45, i32 0, i32 1, !dbg !5141
  store i32 %lnot.ext43, i32* %brightness46, align 8, !dbg !5142
  store i32 0, i32* %retval, align 4, !dbg !5143
  br label %return, !dbg !5143

return:                                           ; preds = %if.end, %cond.end
  %27 = load i32, i32* %retval, align 4, !dbg !5144
  ret i32 %27, !dbg !5144
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @led_classdev_notify_brightness_hw_changed(%struct.led_classdev* %led_cdev, i32 %brightness) #2 !dbg !5145 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %brightness.addr = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  ret void, !dbg !5150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_kbd_led_write(%struct.lg_g15_data* %g15, %struct.lg_g15_led* %g15_led, i32 %brightness) #2 !dbg !5151 {
entry:
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %g15_led.addr = alloca %struct.lg_g15_led*, align 8
  %brightness.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__x7 = alloca i32, align 4
  %__d10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__x18 = alloca i32, align 4
  %__d21 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store %struct.lg_g15_led* %g15_led, %struct.lg_g15_led** %g15_led.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5160, metadata !DIExpression()), !dbg !5161
  %0 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led.addr, align 8, !dbg !5162
  %led = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %0, i32 0, i32 2, !dbg !5163
  %1 = load i32, i32* %led, align 4, !dbg !5163
  %add = add i32 5, %1, !dbg !5164
  %conv = trunc i32 %add to i8, !dbg !5165
  %2 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5166
  %transfer_buf = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %2, i32 0, i32 0, !dbg !5167
  %arrayidx = getelementptr [20 x i8], [20 x i8]* %transfer_buf, i64 0, i64 0, !dbg !5166
  store i8 %conv, i8* %arrayidx, align 8, !dbg !5168
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5169, metadata !DIExpression()), !dbg !5171
  %3 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led.addr, align 8, !dbg !5171
  %red = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %3, i32 0, i32 3, !dbg !5171
  %4 = load i8, i8* %red, align 8, !dbg !5171
  %conv1 = zext i8 %4 to i32, !dbg !5171
  %5 = load i32, i32* %brightness.addr, align 4, !dbg !5171
  %mul = mul i32 %conv1, %5, !dbg !5171
  store i32 %mul, i32* %__x, align 4, !dbg !5171
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5172, metadata !DIExpression()), !dbg !5171
  store i32 255, i32* %__d, align 4, !dbg !5171
  %6 = load i32, i32* %__x, align 4, !dbg !5171
  %7 = load i32, i32* %__d, align 4, !dbg !5171
  %div = sdiv i32 %7, 2, !dbg !5171
  %add2 = add i32 %6, %div, !dbg !5171
  %8 = load i32, i32* %__d, align 4, !dbg !5171
  %div3 = udiv i32 %add2, %8, !dbg !5171
  store i32 %div3, i32* %tmp, align 4, !dbg !5171
  %9 = load i32, i32* %tmp, align 4, !dbg !5171
  %conv4 = trunc i32 %9 to i8, !dbg !5173
  %10 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5174
  %transfer_buf5 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %10, i32 0, i32 0, !dbg !5175
  %arrayidx6 = getelementptr [20 x i8], [20 x i8]* %transfer_buf5, i64 0, i64 1, !dbg !5174
  store i8 %conv4, i8* %arrayidx6, align 1, !dbg !5176
  call void @llvm.dbg.declare(metadata i32* %__x7, metadata !5177, metadata !DIExpression()), !dbg !5179
  %11 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led.addr, align 8, !dbg !5179
  %green = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %11, i32 0, i32 4, !dbg !5179
  %12 = load i8, i8* %green, align 1, !dbg !5179
  %conv8 = zext i8 %12 to i32, !dbg !5179
  %13 = load i32, i32* %brightness.addr, align 4, !dbg !5179
  %mul9 = mul i32 %conv8, %13, !dbg !5179
  store i32 %mul9, i32* %__x7, align 4, !dbg !5179
  call void @llvm.dbg.declare(metadata i32* %__d10, metadata !5180, metadata !DIExpression()), !dbg !5179
  store i32 255, i32* %__d10, align 4, !dbg !5179
  %14 = load i32, i32* %__x7, align 4, !dbg !5179
  %15 = load i32, i32* %__d10, align 4, !dbg !5179
  %div12 = sdiv i32 %15, 2, !dbg !5179
  %add13 = add i32 %14, %div12, !dbg !5179
  %16 = load i32, i32* %__d10, align 4, !dbg !5179
  %div14 = udiv i32 %add13, %16, !dbg !5179
  store i32 %div14, i32* %tmp11, align 4, !dbg !5179
  %17 = load i32, i32* %tmp11, align 4, !dbg !5179
  %conv15 = trunc i32 %17 to i8, !dbg !5181
  %18 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5182
  %transfer_buf16 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %18, i32 0, i32 0, !dbg !5183
  %arrayidx17 = getelementptr [20 x i8], [20 x i8]* %transfer_buf16, i64 0, i64 2, !dbg !5182
  store i8 %conv15, i8* %arrayidx17, align 2, !dbg !5184
  call void @llvm.dbg.declare(metadata i32* %__x18, metadata !5185, metadata !DIExpression()), !dbg !5187
  %19 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led.addr, align 8, !dbg !5187
  %blue = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %19, i32 0, i32 5, !dbg !5187
  %20 = load i8, i8* %blue, align 2, !dbg !5187
  %conv19 = zext i8 %20 to i32, !dbg !5187
  %21 = load i32, i32* %brightness.addr, align 4, !dbg !5187
  %mul20 = mul i32 %conv19, %21, !dbg !5187
  store i32 %mul20, i32* %__x18, align 4, !dbg !5187
  call void @llvm.dbg.declare(metadata i32* %__d21, metadata !5188, metadata !DIExpression()), !dbg !5187
  store i32 255, i32* %__d21, align 4, !dbg !5187
  %22 = load i32, i32* %__x18, align 4, !dbg !5187
  %23 = load i32, i32* %__d21, align 4, !dbg !5187
  %div23 = sdiv i32 %23, 2, !dbg !5187
  %add24 = add i32 %22, %div23, !dbg !5187
  %24 = load i32, i32* %__d21, align 4, !dbg !5187
  %div25 = udiv i32 %add24, %24, !dbg !5187
  store i32 %div25, i32* %tmp22, align 4, !dbg !5187
  %25 = load i32, i32* %tmp22, align 4, !dbg !5187
  %conv26 = trunc i32 %25 to i8, !dbg !5189
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5190
  %transfer_buf27 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %26, i32 0, i32 0, !dbg !5191
  %arrayidx28 = getelementptr [20 x i8], [20 x i8]* %transfer_buf27, i64 0, i64 3, !dbg !5190
  store i8 %conv26, i8* %arrayidx28, align 1, !dbg !5192
  %27 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5193
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %27, i32 0, i32 4, !dbg !5194
  %28 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !5194
  %29 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led.addr, align 8, !dbg !5195
  %led29 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %29, i32 0, i32 2, !dbg !5196
  %30 = load i32, i32* %led29, align 4, !dbg !5196
  %add30 = add i32 5, %30, !dbg !5197
  %conv31 = trunc i32 %add30 to i8, !dbg !5198
  %31 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5199
  %transfer_buf32 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %31, i32 0, i32 0, !dbg !5200
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf32, i64 0, i64 0, !dbg !5199
  %call = call i32 @hid_hw_raw_request(%struct.hid_device* %28, i8 zeroext %conv31, i8* %arraydecay, i64 4, i8 zeroext 2, i32 9) #6, !dbg !5201
  store i32 %call, i32* %ret, align 4, !dbg !5202
  %32 = load i32, i32* %ret, align 4, !dbg !5203
  %cmp = icmp eq i32 %32, 4, !dbg !5205
  br i1 %cmp, label %if.then, label %if.else, !dbg !5206

if.then:                                          ; preds = %entry
  %33 = load i32, i32* %brightness.addr, align 4, !dbg !5207
  %34 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led.addr, align 8, !dbg !5209
  %brightness34 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %34, i32 0, i32 1, !dbg !5210
  store i32 %33, i32* %brightness34, align 8, !dbg !5211
  store i32 0, i32* %ret, align 4, !dbg !5212
  br label %if.end, !dbg !5213

if.else:                                          ; preds = %entry
  %35 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5214
  %hdev35 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %35, i32 0, i32 4, !dbg !5214
  %36 = load %struct.hid_device*, %struct.hid_device** %hdev35, align 8, !dbg !5214
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %36, i32 0, i32 18, !dbg !5214
  %37 = load i32, i32* %ret, align 4, !dbg !5214
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %37) #7, !dbg !5214
  %38 = load i32, i32* %ret, align 4, !dbg !5216
  %cmp36 = icmp slt i32 %38, 0, !dbg !5217
  br i1 %cmp36, label %cond.true, label %cond.false, !dbg !5218

cond.true:                                        ; preds = %if.else
  %39 = load i32, i32* %ret, align 4, !dbg !5219
  br label %cond.end, !dbg !5218

cond.false:                                       ; preds = %if.else
  br label %cond.end, !dbg !5218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ -5, %cond.false ], !dbg !5218
  store i32 %cond, i32* %ret, align 4, !dbg !5220
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %40 = load i32, i32* %ret, align 4, !dbg !5221
  ret i32 %40, !dbg !5222
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_get_initial_led_brightness(%struct.lg_g15_data* %g15, i32 %i) #2 !dbg !5223 {
entry:
  %retval = alloca i32, align 4
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %i.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %high = alloca i32, align 4
  %__UNIQUE_ID___x219 = alloca i8, align 1
  %__UNIQUE_ID___x217 = alloca i8, align 1
  %__UNIQUE_ID___y218 = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y220 = alloca i8, align 1
  %tmp21 = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %__x53 = alloca i32, align 4
  %__d58 = alloca i32, align 4
  %tmp59 = alloca i32, align 4
  %__x80 = alloca i32, align 4
  %__d85 = alloca i32, align 4
  %tmp86 = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !5224, metadata !DIExpression()), !dbg !5225
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5228, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.declare(metadata i32* %high, metadata !5230, metadata !DIExpression()), !dbg !5231
  %0 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5232
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %0, i32 0, i32 4, !dbg !5233
  %1 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !5233
  %2 = load i32, i32* %i.addr, align 4, !dbg !5234
  %add = add i32 5, %2, !dbg !5235
  %conv = trunc i32 %add to i8, !dbg !5236
  %3 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5237
  %transfer_buf = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %3, i32 0, i32 0, !dbg !5238
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf, i64 0, i64 0, !dbg !5237
  %call = call i32 @hid_hw_raw_request(%struct.hid_device* %1, i8 zeroext %conv, i8* %arraydecay, i64 4, i8 zeroext 2, i32 1) #6, !dbg !5239
  store i32 %call, i32* %ret, align 4, !dbg !5240
  %4 = load i32, i32* %ret, align 4, !dbg !5241
  %cmp = icmp ne i32 %4, 4, !dbg !5243
  br i1 %cmp, label %if.then, label %if.end, !dbg !5244

if.then:                                          ; preds = %entry
  %5 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5245
  %hdev2 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %5, i32 0, i32 4, !dbg !5245
  %6 = load %struct.hid_device*, %struct.hid_device** %hdev2, align 8, !dbg !5245
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 18, !dbg !5245
  %7 = load i32, i32* %ret, align 4, !dbg !5245
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %7) #7, !dbg !5245
  %8 = load i32, i32* %ret, align 4, !dbg !5247
  %cmp3 = icmp slt i32 %8, 0, !dbg !5248
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !5249

cond.true:                                        ; preds = %if.then
  %9 = load i32, i32* %ret, align 4, !dbg !5250
  br label %cond.end, !dbg !5249

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ -5, %cond.false ], !dbg !5249
  store i32 %cond, i32* %retval, align 4, !dbg !5251
  br label %return, !dbg !5251

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___x219, metadata !5252, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___x217, metadata !5255, metadata !DIExpression()), !dbg !5257
  %10 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5257
  %transfer_buf5 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %10, i32 0, i32 0, !dbg !5257
  %arrayidx = getelementptr [20 x i8], [20 x i8]* %transfer_buf5, i64 0, i64 1, !dbg !5257
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5257
  store i8 %11, i8* %__UNIQUE_ID___x217, align 1, !dbg !5257
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___y218, metadata !5258, metadata !DIExpression()), !dbg !5257
  %12 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5257
  %transfer_buf6 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %12, i32 0, i32 0, !dbg !5257
  %arrayidx7 = getelementptr [20 x i8], [20 x i8]* %transfer_buf6, i64 0, i64 2, !dbg !5257
  %13 = load i8, i8* %arrayidx7, align 2, !dbg !5257
  store i8 %13, i8* %__UNIQUE_ID___y218, align 1, !dbg !5257
  %14 = load i8, i8* %__UNIQUE_ID___x217, align 1, !dbg !5257
  %conv8 = zext i8 %14 to i32, !dbg !5257
  %15 = load i8, i8* %__UNIQUE_ID___y218, align 1, !dbg !5257
  %conv9 = zext i8 %15 to i32, !dbg !5257
  %cmp10 = icmp sgt i32 %conv8, %conv9, !dbg !5257
  br i1 %cmp10, label %cond.true12, label %cond.false14, !dbg !5257

cond.true12:                                      ; preds = %if.end
  %16 = load i8, i8* %__UNIQUE_ID___x217, align 1, !dbg !5257
  %conv13 = zext i8 %16 to i32, !dbg !5257
  br label %cond.end16, !dbg !5257

cond.false14:                                     ; preds = %if.end
  %17 = load i8, i8* %__UNIQUE_ID___y218, align 1, !dbg !5257
  %conv15 = zext i8 %17 to i32, !dbg !5257
  br label %cond.end16, !dbg !5257

cond.end16:                                       ; preds = %cond.false14, %cond.true12
  %cond17 = phi i32 [ %conv13, %cond.true12 ], [ %conv15, %cond.false14 ], !dbg !5257
  store i32 %cond17, i32* %tmp, align 4, !dbg !5257
  %18 = load i32, i32* %tmp, align 4, !dbg !5257
  %conv18 = trunc i32 %18 to i8, !dbg !5254
  store i8 %conv18, i8* %__UNIQUE_ID___x219, align 1, !dbg !5254
  call void @llvm.dbg.declare(metadata i8* %__UNIQUE_ID___y220, metadata !5259, metadata !DIExpression()), !dbg !5254
  %19 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5254
  %transfer_buf19 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %19, i32 0, i32 0, !dbg !5254
  %arrayidx20 = getelementptr [20 x i8], [20 x i8]* %transfer_buf19, i64 0, i64 3, !dbg !5254
  %20 = load i8, i8* %arrayidx20, align 1, !dbg !5254
  store i8 %20, i8* %__UNIQUE_ID___y220, align 1, !dbg !5254
  %21 = load i8, i8* %__UNIQUE_ID___x219, align 1, !dbg !5254
  %conv22 = zext i8 %21 to i32, !dbg !5254
  %22 = load i8, i8* %__UNIQUE_ID___y220, align 1, !dbg !5254
  %conv23 = zext i8 %22 to i32, !dbg !5254
  %cmp24 = icmp sgt i32 %conv22, %conv23, !dbg !5254
  br i1 %cmp24, label %cond.true26, label %cond.false28, !dbg !5254

cond.true26:                                      ; preds = %cond.end16
  %23 = load i8, i8* %__UNIQUE_ID___x219, align 1, !dbg !5254
  %conv27 = zext i8 %23 to i32, !dbg !5254
  br label %cond.end30, !dbg !5254

cond.false28:                                     ; preds = %cond.end16
  %24 = load i8, i8* %__UNIQUE_ID___y220, align 1, !dbg !5254
  %conv29 = zext i8 %24 to i32, !dbg !5254
  br label %cond.end30, !dbg !5254

cond.end30:                                       ; preds = %cond.false28, %cond.true26
  %cond31 = phi i32 [ %conv27, %cond.true26 ], [ %conv29, %cond.false28 ], !dbg !5254
  store i32 %cond31, i32* %tmp21, align 4, !dbg !5254
  %25 = load i32, i32* %tmp21, align 4, !dbg !5254
  store i32 %25, i32* %high, align 4, !dbg !5260
  %26 = load i32, i32* %high, align 4, !dbg !5261
  %tobool = icmp ne i32 %26, 0, !dbg !5261
  br i1 %tobool, label %if.then32, label %if.else, !dbg !5263

if.then32:                                        ; preds = %cond.end30
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5264, metadata !DIExpression()), !dbg !5267
  %27 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5267
  %transfer_buf33 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %27, i32 0, i32 0, !dbg !5267
  %arrayidx34 = getelementptr [20 x i8], [20 x i8]* %transfer_buf33, i64 0, i64 1, !dbg !5267
  %28 = load i8, i8* %arrayidx34, align 1, !dbg !5267
  %conv35 = zext i8 %28 to i32, !dbg !5267
  %mul = mul i32 %conv35, 255, !dbg !5267
  store i32 %mul, i32* %__x, align 4, !dbg !5267
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5268, metadata !DIExpression()), !dbg !5267
  %29 = load i32, i32* %high, align 4, !dbg !5267
  store i32 %29, i32* %__d, align 4, !dbg !5267
  %30 = load i32, i32* %__x, align 4, !dbg !5267
  %cmp37 = icmp sgt i32 %30, 0, !dbg !5267
  %conv38 = zext i1 %cmp37 to i32, !dbg !5267
  %31 = load i32, i32* %__d, align 4, !dbg !5267
  %cmp39 = icmp sgt i32 %31, 0, !dbg !5267
  %conv40 = zext i1 %cmp39 to i32, !dbg !5267
  %cmp41 = icmp eq i32 %conv38, %conv40, !dbg !5267
  br i1 %cmp41, label %cond.true43, label %cond.false46, !dbg !5267

cond.true43:                                      ; preds = %if.then32
  %32 = load i32, i32* %__x, align 4, !dbg !5267
  %33 = load i32, i32* %__d, align 4, !dbg !5267
  %div = sdiv i32 %33, 2, !dbg !5267
  %add44 = add i32 %32, %div, !dbg !5267
  %34 = load i32, i32* %__d, align 4, !dbg !5267
  %div45 = sdiv i32 %add44, %34, !dbg !5267
  br label %cond.end49, !dbg !5267

cond.false46:                                     ; preds = %if.then32
  %35 = load i32, i32* %__x, align 4, !dbg !5267
  %36 = load i32, i32* %__d, align 4, !dbg !5267
  %div47 = sdiv i32 %36, 2, !dbg !5267
  %sub = sub i32 %35, %div47, !dbg !5267
  %37 = load i32, i32* %__d, align 4, !dbg !5267
  %div48 = sdiv i32 %sub, %37, !dbg !5267
  br label %cond.end49, !dbg !5267

cond.end49:                                       ; preds = %cond.false46, %cond.true43
  %cond50 = phi i32 [ %div45, %cond.true43 ], [ %div48, %cond.false46 ], !dbg !5267
  store i32 %cond50, i32* %tmp36, align 4, !dbg !5267
  %38 = load i32, i32* %tmp36, align 4, !dbg !5267
  %conv51 = trunc i32 %38 to i8, !dbg !5269
  %39 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5270
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %39, i32 0, i32 6, !dbg !5271
  %40 = load i32, i32* %i.addr, align 4, !dbg !5272
  %idxprom = sext i32 %40 to i64, !dbg !5270
  %arrayidx52 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 %idxprom, !dbg !5270
  %red = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx52, i32 0, i32 3, !dbg !5273
  store i8 %conv51, i8* %red, align 8, !dbg !5274
  call void @llvm.dbg.declare(metadata i32* %__x53, metadata !5275, metadata !DIExpression()), !dbg !5277
  %41 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5277
  %transfer_buf54 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %41, i32 0, i32 0, !dbg !5277
  %arrayidx55 = getelementptr [20 x i8], [20 x i8]* %transfer_buf54, i64 0, i64 2, !dbg !5277
  %42 = load i8, i8* %arrayidx55, align 2, !dbg !5277
  %conv56 = zext i8 %42 to i32, !dbg !5277
  %mul57 = mul i32 %conv56, 255, !dbg !5277
  store i32 %mul57, i32* %__x53, align 4, !dbg !5277
  call void @llvm.dbg.declare(metadata i32* %__d58, metadata !5278, metadata !DIExpression()), !dbg !5277
  %43 = load i32, i32* %high, align 4, !dbg !5277
  store i32 %43, i32* %__d58, align 4, !dbg !5277
  %44 = load i32, i32* %__x53, align 4, !dbg !5277
  %cmp60 = icmp sgt i32 %44, 0, !dbg !5277
  %conv61 = zext i1 %cmp60 to i32, !dbg !5277
  %45 = load i32, i32* %__d58, align 4, !dbg !5277
  %cmp62 = icmp sgt i32 %45, 0, !dbg !5277
  %conv63 = zext i1 %cmp62 to i32, !dbg !5277
  %cmp64 = icmp eq i32 %conv61, %conv63, !dbg !5277
  br i1 %cmp64, label %cond.true66, label %cond.false70, !dbg !5277

cond.true66:                                      ; preds = %cond.end49
  %46 = load i32, i32* %__x53, align 4, !dbg !5277
  %47 = load i32, i32* %__d58, align 4, !dbg !5277
  %div67 = sdiv i32 %47, 2, !dbg !5277
  %add68 = add i32 %46, %div67, !dbg !5277
  %48 = load i32, i32* %__d58, align 4, !dbg !5277
  %div69 = sdiv i32 %add68, %48, !dbg !5277
  br label %cond.end74, !dbg !5277

cond.false70:                                     ; preds = %cond.end49
  %49 = load i32, i32* %__x53, align 4, !dbg !5277
  %50 = load i32, i32* %__d58, align 4, !dbg !5277
  %div71 = sdiv i32 %50, 2, !dbg !5277
  %sub72 = sub i32 %49, %div71, !dbg !5277
  %51 = load i32, i32* %__d58, align 4, !dbg !5277
  %div73 = sdiv i32 %sub72, %51, !dbg !5277
  br label %cond.end74, !dbg !5277

cond.end74:                                       ; preds = %cond.false70, %cond.true66
  %cond75 = phi i32 [ %div69, %cond.true66 ], [ %div73, %cond.false70 ], !dbg !5277
  store i32 %cond75, i32* %tmp59, align 4, !dbg !5277
  %52 = load i32, i32* %tmp59, align 4, !dbg !5277
  %conv76 = trunc i32 %52 to i8, !dbg !5279
  %53 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5280
  %leds77 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %53, i32 0, i32 6, !dbg !5281
  %54 = load i32, i32* %i.addr, align 4, !dbg !5282
  %idxprom78 = sext i32 %54 to i64, !dbg !5280
  %arrayidx79 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds77, i64 0, i64 %idxprom78, !dbg !5280
  %green = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx79, i32 0, i32 4, !dbg !5283
  store i8 %conv76, i8* %green, align 1, !dbg !5284
  call void @llvm.dbg.declare(metadata i32* %__x80, metadata !5285, metadata !DIExpression()), !dbg !5287
  %55 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5287
  %transfer_buf81 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %55, i32 0, i32 0, !dbg !5287
  %arrayidx82 = getelementptr [20 x i8], [20 x i8]* %transfer_buf81, i64 0, i64 3, !dbg !5287
  %56 = load i8, i8* %arrayidx82, align 1, !dbg !5287
  %conv83 = zext i8 %56 to i32, !dbg !5287
  %mul84 = mul i32 %conv83, 255, !dbg !5287
  store i32 %mul84, i32* %__x80, align 4, !dbg !5287
  call void @llvm.dbg.declare(metadata i32* %__d85, metadata !5288, metadata !DIExpression()), !dbg !5287
  %57 = load i32, i32* %high, align 4, !dbg !5287
  store i32 %57, i32* %__d85, align 4, !dbg !5287
  %58 = load i32, i32* %__x80, align 4, !dbg !5287
  %cmp87 = icmp sgt i32 %58, 0, !dbg !5287
  %conv88 = zext i1 %cmp87 to i32, !dbg !5287
  %59 = load i32, i32* %__d85, align 4, !dbg !5287
  %cmp89 = icmp sgt i32 %59, 0, !dbg !5287
  %conv90 = zext i1 %cmp89 to i32, !dbg !5287
  %cmp91 = icmp eq i32 %conv88, %conv90, !dbg !5287
  br i1 %cmp91, label %cond.true93, label %cond.false97, !dbg !5287

cond.true93:                                      ; preds = %cond.end74
  %60 = load i32, i32* %__x80, align 4, !dbg !5287
  %61 = load i32, i32* %__d85, align 4, !dbg !5287
  %div94 = sdiv i32 %61, 2, !dbg !5287
  %add95 = add i32 %60, %div94, !dbg !5287
  %62 = load i32, i32* %__d85, align 4, !dbg !5287
  %div96 = sdiv i32 %add95, %62, !dbg !5287
  br label %cond.end101, !dbg !5287

cond.false97:                                     ; preds = %cond.end74
  %63 = load i32, i32* %__x80, align 4, !dbg !5287
  %64 = load i32, i32* %__d85, align 4, !dbg !5287
  %div98 = sdiv i32 %64, 2, !dbg !5287
  %sub99 = sub i32 %63, %div98, !dbg !5287
  %65 = load i32, i32* %__d85, align 4, !dbg !5287
  %div100 = sdiv i32 %sub99, %65, !dbg !5287
  br label %cond.end101, !dbg !5287

cond.end101:                                      ; preds = %cond.false97, %cond.true93
  %cond102 = phi i32 [ %div96, %cond.true93 ], [ %div100, %cond.false97 ], !dbg !5287
  store i32 %cond102, i32* %tmp86, align 4, !dbg !5287
  %66 = load i32, i32* %tmp86, align 4, !dbg !5287
  %conv103 = trunc i32 %66 to i8, !dbg !5289
  %67 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5290
  %leds104 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %67, i32 0, i32 6, !dbg !5291
  %68 = load i32, i32* %i.addr, align 4, !dbg !5292
  %idxprom105 = sext i32 %68 to i64, !dbg !5290
  %arrayidx106 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds104, i64 0, i64 %idxprom105, !dbg !5290
  %blue = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx106, i32 0, i32 5, !dbg !5293
  store i8 %conv103, i8* %blue, align 2, !dbg !5294
  %69 = load i32, i32* %high, align 4, !dbg !5295
  %70 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5296
  %leds107 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %70, i32 0, i32 6, !dbg !5297
  %71 = load i32, i32* %i.addr, align 4, !dbg !5298
  %idxprom108 = sext i32 %71 to i64, !dbg !5296
  %arrayidx109 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds107, i64 0, i64 %idxprom108, !dbg !5296
  %brightness = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx109, i32 0, i32 1, !dbg !5299
  store i32 %69, i32* %brightness, align 8, !dbg !5300
  br label %if.end126, !dbg !5301

if.else:                                          ; preds = %cond.end30
  %72 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5302
  %leds110 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %72, i32 0, i32 6, !dbg !5304
  %73 = load i32, i32* %i.addr, align 4, !dbg !5305
  %idxprom111 = sext i32 %73 to i64, !dbg !5302
  %arrayidx112 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds110, i64 0, i64 %idxprom111, !dbg !5302
  %red113 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx112, i32 0, i32 3, !dbg !5306
  store i8 -1, i8* %red113, align 8, !dbg !5307
  %74 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5308
  %leds114 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %74, i32 0, i32 6, !dbg !5309
  %75 = load i32, i32* %i.addr, align 4, !dbg !5310
  %idxprom115 = sext i32 %75 to i64, !dbg !5308
  %arrayidx116 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds114, i64 0, i64 %idxprom115, !dbg !5308
  %green117 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx116, i32 0, i32 4, !dbg !5311
  store i8 -1, i8* %green117, align 1, !dbg !5312
  %76 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5313
  %leds118 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %76, i32 0, i32 6, !dbg !5314
  %77 = load i32, i32* %i.addr, align 4, !dbg !5315
  %idxprom119 = sext i32 %77 to i64, !dbg !5313
  %arrayidx120 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds118, i64 0, i64 %idxprom119, !dbg !5313
  %blue121 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx120, i32 0, i32 5, !dbg !5316
  store i8 -1, i8* %blue121, align 2, !dbg !5317
  %78 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5318
  %leds122 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %78, i32 0, i32 6, !dbg !5319
  %79 = load i32, i32* %i.addr, align 4, !dbg !5320
  %idxprom123 = sext i32 %79 to i64, !dbg !5318
  %arrayidx124 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds122, i64 0, i64 %idxprom123, !dbg !5318
  %brightness125 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx124, i32 0, i32 1, !dbg !5321
  store i32 0, i32* %brightness125, align 8, !dbg !5322
  br label %if.end126

if.end126:                                        ; preds = %if.else, %cond.end101
  store i32 0, i32* %retval, align 4, !dbg !5323
  br label %return, !dbg !5323

return:                                           ; preds = %if.end126, %cond.end
  %80 = load i32, i32* %retval, align 4, !dbg !5324
  ret i32 %80, !dbg !5324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_update_mkey_led_brightness(%struct.lg_g15_data* %g15) #2 !dbg !5325 {
entry:
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %ret = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5328, metadata !DIExpression()), !dbg !5329
  %0 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5330
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %0, i32 0, i32 4, !dbg !5331
  %1 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !5331
  %2 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5332
  %transfer_buf = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %2, i32 0, i32 0, !dbg !5333
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf, i64 0, i64 0, !dbg !5332
  %call = call i32 @hid_hw_raw_request(%struct.hid_device* %1, i8 zeroext 4, i8* %arraydecay, i64 2, i8 zeroext 2, i32 1) #6, !dbg !5334
  store i32 %call, i32* %ret, align 4, !dbg !5335
  %3 = load i32, i32* %ret, align 4, !dbg !5336
  %cmp = icmp ne i32 %3, 2, !dbg !5338
  br i1 %cmp, label %if.then, label %if.end, !dbg !5339

if.then:                                          ; preds = %entry
  %4 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5340
  %hdev1 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %4, i32 0, i32 4, !dbg !5340
  %5 = load %struct.hid_device*, %struct.hid_device** %hdev1, align 8, !dbg !5340
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 18, !dbg !5340
  %6 = load i32, i32* %ret, align 4, !dbg !5340
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %6) #7, !dbg !5340
  %7 = load i32, i32* %ret, align 4, !dbg !5342
  %cmp2 = icmp slt i32 %7, 0, !dbg !5343
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !5344

cond.true:                                        ; preds = %if.then
  %8 = load i32, i32* %ret, align 4, !dbg !5345
  br label %cond.end, !dbg !5344

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !5344

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ -5, %cond.false ], !dbg !5344
  store i32 %cond, i32* %ret, align 4, !dbg !5346
  br label %if.end, !dbg !5347

if.end:                                           ; preds = %cond.end, %entry
  %9 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5348
  %transfer_buf3 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %9, i32 0, i32 0, !dbg !5349
  %arrayidx = getelementptr [20 x i8], [20 x i8]* %transfer_buf3, i64 0, i64 1, !dbg !5348
  %10 = load i8, i8* %arrayidx, align 1, !dbg !5348
  %conv = zext i8 %10 to i32, !dbg !5348
  %and = and i32 %conv, 128, !dbg !5350
  %tobool = icmp ne i32 %and, 0, !dbg !5351
  %lnot = xor i1 %tobool, true, !dbg !5351
  %lnot4 = xor i1 %lnot, true, !dbg !5352
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5352
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5353
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 6, !dbg !5354
  %arrayidx5 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 2, !dbg !5353
  %brightness = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx5, i32 0, i32 1, !dbg !5355
  store i32 %lnot.ext, i32* %brightness, align 8, !dbg !5356
  %12 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5357
  %transfer_buf6 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %12, i32 0, i32 0, !dbg !5358
  %arrayidx7 = getelementptr [20 x i8], [20 x i8]* %transfer_buf6, i64 0, i64 1, !dbg !5357
  %13 = load i8, i8* %arrayidx7, align 1, !dbg !5357
  %conv8 = zext i8 %13 to i32, !dbg !5357
  %and9 = and i32 %conv8, 64, !dbg !5359
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5360
  %lnot11 = xor i1 %tobool10, true, !dbg !5360
  %lnot13 = xor i1 %lnot11, true, !dbg !5361
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !5361
  %14 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5362
  %leds15 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %14, i32 0, i32 6, !dbg !5363
  %arrayidx16 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds15, i64 0, i64 3, !dbg !5362
  %brightness17 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx16, i32 0, i32 1, !dbg !5364
  store i32 %lnot.ext14, i32* %brightness17, align 8, !dbg !5365
  %15 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5366
  %transfer_buf18 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %15, i32 0, i32 0, !dbg !5367
  %arrayidx19 = getelementptr [20 x i8], [20 x i8]* %transfer_buf18, i64 0, i64 1, !dbg !5366
  %16 = load i8, i8* %arrayidx19, align 1, !dbg !5366
  %conv20 = zext i8 %16 to i32, !dbg !5366
  %and21 = and i32 %conv20, 32, !dbg !5368
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5369
  %lnot23 = xor i1 %tobool22, true, !dbg !5369
  %lnot25 = xor i1 %lnot23, true, !dbg !5370
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5370
  %17 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5371
  %leds27 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %17, i32 0, i32 6, !dbg !5372
  %arrayidx28 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds27, i64 0, i64 4, !dbg !5371
  %brightness29 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx28, i32 0, i32 1, !dbg !5373
  store i32 %lnot.ext26, i32* %brightness29, align 8, !dbg !5374
  %18 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5375
  %transfer_buf30 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %18, i32 0, i32 0, !dbg !5376
  %arrayidx31 = getelementptr [20 x i8], [20 x i8]* %transfer_buf30, i64 0, i64 1, !dbg !5375
  %19 = load i8, i8* %arrayidx31, align 1, !dbg !5375
  %conv32 = zext i8 %19 to i32, !dbg !5375
  %and33 = and i32 %conv32, 16, !dbg !5377
  %tobool34 = icmp ne i32 %and33, 0, !dbg !5378
  %lnot35 = xor i1 %tobool34, true, !dbg !5378
  %lnot37 = xor i1 %lnot35, true, !dbg !5379
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5379
  %20 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5380
  %leds39 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %20, i32 0, i32 6, !dbg !5381
  %arrayidx40 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds39, i64 0, i64 5, !dbg !5380
  %brightness41 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx40, i32 0, i32 1, !dbg !5382
  store i32 %lnot.ext38, i32* %brightness41, align 8, !dbg !5383
  ret i32 0, !dbg !5384
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @input_get_drvdata(%struct.input_dev* %dev) #2 !dbg !5385 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !5390
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 40, !dbg !5391
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #6, !dbg !5392
  ret i8* %call, !dbg !5393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5394 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5401
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5402
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5402
  ret i8* %1, !dbg !5403
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_led_set(%struct.led_classdev* %led_cdev, i32 %brightness) #2 !dbg !5404 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %brightness.addr = alloca i32, align 4
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %val = alloca i8, align 1
  %mask = alloca i8, align 1
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5409, metadata !DIExpression()), !dbg !5410
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5411, metadata !DIExpression()), !dbg !5413
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5413
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5413
  store i8* %1, i8** %__mptr, align 8, !dbg !5413
  br label %do.body, !dbg !5413

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5414

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5413
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5413
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5413
  store %struct.lg_g15_led* %3, %struct.lg_g15_led** %tmp, align 8, !dbg !5414
  %4 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5413
  store %struct.lg_g15_led* %4, %struct.lg_g15_led** %g15_led, align 8, !dbg !5410
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !5416, metadata !DIExpression()), !dbg !5417
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5418
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 11, !dbg !5419
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5419
  %parent = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !5420
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5420
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #6, !dbg !5421
  %8 = bitcast i8* %call to %struct.lg_g15_data*, !dbg !5421
  store %struct.lg_g15_data* %8, %struct.lg_g15_data** %g15, align 8, !dbg !5417
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5422, metadata !DIExpression()), !dbg !5423
  call void @llvm.dbg.declare(metadata i8* %mask, metadata !5424, metadata !DIExpression()), !dbg !5425
  store i8 0, i8* %mask, align 1, !dbg !5425
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5426, metadata !DIExpression()), !dbg !5427
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5428, metadata !DIExpression()), !dbg !5429
  %9 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5430
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 3, !dbg !5432
  %10 = load i32, i32* %flags, align 8, !dbg !5432
  %conv = sext i32 %10 to i64, !dbg !5430
  %and = and i64 %conv, 2, !dbg !5433
  %tobool = icmp ne i64 %and, 0, !dbg !5433
  br i1 %tobool, label %if.then, label %if.end, !dbg !5434

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5435
  br label %return, !dbg !5435

if.end:                                           ; preds = %do.end
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5436
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 1, !dbg !5437
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !5438
  %12 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5439
  %transfer_buf = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %12, i32 0, i32 0, !dbg !5440
  %arrayidx = getelementptr [20 x i8], [20 x i8]* %transfer_buf, i64 0, i64 0, !dbg !5439
  store i8 2, i8* %arrayidx, align 8, !dbg !5441
  %13 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5442
  %transfer_buf1 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %13, i32 0, i32 0, !dbg !5443
  %arrayidx2 = getelementptr [20 x i8], [20 x i8]* %transfer_buf1, i64 0, i64 3, !dbg !5442
  store i8 0, i8* %arrayidx2, align 1, !dbg !5444
  %14 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5445
  %led = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %14, i32 0, i32 2, !dbg !5447
  %15 = load i32, i32* %led, align 4, !dbg !5447
  %cmp = icmp ult i32 %15, 2, !dbg !5448
  br i1 %cmp, label %if.then4, label %if.else, !dbg !5449

if.then4:                                         ; preds = %if.end
  %16 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5450
  %led5 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %16, i32 0, i32 2, !dbg !5452
  %17 = load i32, i32* %led5, align 4, !dbg !5452
  %add = add i32 %17, 1, !dbg !5453
  %conv6 = trunc i32 %add to i8, !dbg !5450
  %18 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5454
  %transfer_buf7 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %18, i32 0, i32 0, !dbg !5455
  %arrayidx8 = getelementptr [20 x i8], [20 x i8]* %transfer_buf7, i64 0, i64 1, !dbg !5454
  store i8 %conv6, i8* %arrayidx8, align 1, !dbg !5456
  %19 = load i32, i32* %brightness.addr, align 4, !dbg !5457
  %20 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5458
  %led9 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %20, i32 0, i32 2, !dbg !5459
  %21 = load i32, i32* %led9, align 4, !dbg !5459
  %mul = mul i32 %21, 4, !dbg !5460
  %shl = shl i32 %19, %mul, !dbg !5461
  %conv10 = trunc i32 %shl to i8, !dbg !5457
  %22 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5462
  %transfer_buf11 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %22, i32 0, i32 0, !dbg !5463
  %arrayidx12 = getelementptr [20 x i8], [20 x i8]* %transfer_buf11, i64 0, i64 2, !dbg !5462
  store i8 %conv10, i8* %arrayidx12, align 2, !dbg !5464
  br label %if.end37, !dbg !5465

if.else:                                          ; preds = %if.end
  store i32 2, i32* %i, align 4, !dbg !5466
  br label %for.cond, !dbg !5469

for.cond:                                         ; preds = %for.inc, %if.else
  %23 = load i32, i32* %i, align 4, !dbg !5470
  %cmp13 = icmp slt i32 %23, 6, !dbg !5472
  br i1 %cmp13, label %for.body, label %for.end, !dbg !5473

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4, !dbg !5474
  %25 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5477
  %led15 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %25, i32 0, i32 2, !dbg !5478
  %26 = load i32, i32* %led15, align 4, !dbg !5478
  %cmp16 = icmp eq i32 %24, %26, !dbg !5479
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !5480

if.then18:                                        ; preds = %for.body
  %27 = load i32, i32* %brightness.addr, align 4, !dbg !5481
  %conv19 = trunc i32 %27 to i8, !dbg !5481
  store i8 %conv19, i8* %val, align 1, !dbg !5482
  br label %if.end24, !dbg !5483

if.else20:                                        ; preds = %for.body
  %28 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5484
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %28, i32 0, i32 6, !dbg !5485
  %29 = load i32, i32* %i, align 4, !dbg !5486
  %idxprom = sext i32 %29 to i64, !dbg !5484
  %arrayidx21 = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 %idxprom, !dbg !5484
  %brightness22 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx21, i32 0, i32 1, !dbg !5487
  %30 = load i32, i32* %brightness22, align 8, !dbg !5487
  %conv23 = trunc i32 %30 to i8, !dbg !5484
  store i8 %conv23, i8* %val, align 1, !dbg !5488
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then18
  %31 = load i8, i8* %val, align 1, !dbg !5489
  %tobool25 = icmp ne i8 %31, 0, !dbg !5489
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !5491

if.then26:                                        ; preds = %if.end24
  %32 = load i32, i32* %i, align 4, !dbg !5492
  %sub = sub i32 %32, 2, !dbg !5493
  %shl27 = shl i32 1, %sub, !dbg !5494
  %33 = load i8, i8* %mask, align 1, !dbg !5495
  %conv28 = zext i8 %33 to i32, !dbg !5495
  %or = or i32 %conv28, %shl27, !dbg !5495
  %conv29 = trunc i32 %or to i8, !dbg !5495
  store i8 %conv29, i8* %mask, align 1, !dbg !5495
  br label %if.end30, !dbg !5496

if.end30:                                         ; preds = %if.then26, %if.end24
  br label %for.inc, !dbg !5497

for.inc:                                          ; preds = %if.end30
  %34 = load i32, i32* %i, align 4, !dbg !5498
  %inc = add i32 %34, 1, !dbg !5498
  store i32 %inc, i32* %i, align 4, !dbg !5498
  br label %for.cond, !dbg !5499, !llvm.loop !5500

for.end:                                          ; preds = %for.cond
  %35 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5502
  %transfer_buf31 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %35, i32 0, i32 0, !dbg !5503
  %arrayidx32 = getelementptr [20 x i8], [20 x i8]* %transfer_buf31, i64 0, i64 1, !dbg !5502
  store i8 4, i8* %arrayidx32, align 1, !dbg !5504
  %36 = load i8, i8* %mask, align 1, !dbg !5505
  %conv33 = zext i8 %36 to i32, !dbg !5505
  %neg = xor i32 %conv33, -1, !dbg !5506
  %conv34 = trunc i32 %neg to i8, !dbg !5506
  %37 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5507
  %transfer_buf35 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %37, i32 0, i32 0, !dbg !5508
  %arrayidx36 = getelementptr [20 x i8], [20 x i8]* %transfer_buf35, i64 0, i64 2, !dbg !5507
  store i8 %conv34, i8* %arrayidx36, align 2, !dbg !5509
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.then4
  %38 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5510
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %38, i32 0, i32 4, !dbg !5511
  %39 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !5511
  %40 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5512
  %transfer_buf38 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %40, i32 0, i32 0, !dbg !5513
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf38, i64 0, i64 0, !dbg !5512
  %call39 = call i32 @hid_hw_raw_request(%struct.hid_device* %39, i8 zeroext 2, i8* %arraydecay, i64 4, i8 zeroext 2, i32 9) #6, !dbg !5514
  store i32 %call39, i32* %ret, align 4, !dbg !5515
  %41 = load i32, i32* %ret, align 4, !dbg !5516
  %cmp40 = icmp eq i32 %41, 4, !dbg !5518
  br i1 %cmp40, label %if.then42, label %if.else44, !dbg !5519

if.then42:                                        ; preds = %if.end37
  %42 = load i32, i32* %brightness.addr, align 4, !dbg !5520
  %43 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5522
  %brightness43 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %43, i32 0, i32 1, !dbg !5523
  store i32 %42, i32* %brightness43, align 8, !dbg !5524
  store i32 0, i32* %ret, align 4, !dbg !5525
  br label %if.end49, !dbg !5526

if.else44:                                        ; preds = %if.end37
  %44 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5527
  %hdev45 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %44, i32 0, i32 4, !dbg !5527
  %45 = load %struct.hid_device*, %struct.hid_device** %hdev45, align 8, !dbg !5527
  %dev46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 18, !dbg !5527
  %46 = load i32, i32* %ret, align 4, !dbg !5527
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %46) #7, !dbg !5527
  %47 = load i32, i32* %ret, align 4, !dbg !5529
  %cmp47 = icmp slt i32 %47, 0, !dbg !5530
  br i1 %cmp47, label %cond.true, label %cond.false, !dbg !5531

cond.true:                                        ; preds = %if.else44
  %48 = load i32, i32* %ret, align 4, !dbg !5532
  br label %cond.end, !dbg !5531

cond.false:                                       ; preds = %if.else44
  br label %cond.end, !dbg !5531

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %48, %cond.true ], [ -5, %cond.false ], !dbg !5531
  store i32 %cond, i32* %ret, align 4, !dbg !5533
  br label %if.end49

if.end49:                                         ; preds = %cond.end, %if.then42
  %49 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5534
  %mutex50 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %49, i32 0, i32 1, !dbg !5535
  call void @mutex_unlock(%struct.mutex* %mutex50) #6, !dbg !5536
  %50 = load i32, i32* %ret, align 4, !dbg !5537
  store i32 %50, i32* %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

return:                                           ; preds = %if.end49, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !5539
  ret i32 %51, !dbg !5539
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_led_get(%struct.led_classdev* %led_cdev) #2 !dbg !5540 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %brightness = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5543, metadata !DIExpression()), !dbg !5544
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5545, metadata !DIExpression()), !dbg !5547
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5547
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5547
  store i8* %1, i8** %__mptr, align 8, !dbg !5547
  br label %do.body, !dbg !5547

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5548

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5547
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5547
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5547
  store %struct.lg_g15_led* %3, %struct.lg_g15_led** %tmp, align 8, !dbg !5548
  %4 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5547
  store %struct.lg_g15_led* %4, %struct.lg_g15_led** %g15_led, align 8, !dbg !5544
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !5550, metadata !DIExpression()), !dbg !5551
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5552
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 11, !dbg !5553
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5553
  %parent = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !5554
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5554
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #6, !dbg !5555
  %8 = bitcast i8* %call to %struct.lg_g15_data*, !dbg !5555
  store %struct.lg_g15_data* %8, %struct.lg_g15_data** %g15, align 8, !dbg !5551
  call void @llvm.dbg.declare(metadata i32* %brightness, metadata !5556, metadata !DIExpression()), !dbg !5557
  %9 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5558
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %9, i32 0, i32 1, !dbg !5559
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !5560
  %10 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5561
  %call1 = call i32 @lg_g15_update_led_brightness(%struct.lg_g15_data* %10) #6, !dbg !5562
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5563
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 6, !dbg !5564
  %12 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5565
  %led = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %12, i32 0, i32 2, !dbg !5566
  %13 = load i32, i32* %led, align 4, !dbg !5566
  %idxprom = zext i32 %13 to i64, !dbg !5563
  %arrayidx = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 %idxprom, !dbg !5563
  %brightness2 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx, i32 0, i32 1, !dbg !5567
  %14 = load i32, i32* %brightness2, align 8, !dbg !5567
  store i32 %14, i32* %brightness, align 4, !dbg !5568
  %15 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5569
  %mutex3 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %15, i32 0, i32 1, !dbg !5570
  call void @mutex_unlock(%struct.mutex* %mutex3) #6, !dbg !5571
  %16 = load i32, i32* %brightness, align 4, !dbg !5572
  ret i32 %16, !dbg !5573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_kbd_led_set(%struct.led_classdev* %led_cdev, i32 %brightness) #2 !dbg !5574 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %brightness.addr = alloca i32, align 4
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %ret = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5579, metadata !DIExpression()), !dbg !5580
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5581, metadata !DIExpression()), !dbg !5583
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5583
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5583
  store i8* %1, i8** %__mptr, align 8, !dbg !5583
  br label %do.body, !dbg !5583

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5584

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5583
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5583
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5583
  store %struct.lg_g15_led* %3, %struct.lg_g15_led** %tmp, align 8, !dbg !5584
  %4 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5583
  store %struct.lg_g15_led* %4, %struct.lg_g15_led** %g15_led, align 8, !dbg !5580
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !5586, metadata !DIExpression()), !dbg !5587
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5588
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 11, !dbg !5589
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5589
  %parent = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !5590
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5590
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #6, !dbg !5591
  %8 = bitcast i8* %call to %struct.lg_g15_data*, !dbg !5591
  store %struct.lg_g15_data* %8, %struct.lg_g15_data** %g15, align 8, !dbg !5587
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5592, metadata !DIExpression()), !dbg !5593
  %9 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5594
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 3, !dbg !5596
  %10 = load i32, i32* %flags, align 8, !dbg !5596
  %conv = sext i32 %10 to i64, !dbg !5594
  %and = and i64 %conv, 2, !dbg !5597
  %tobool = icmp ne i64 %and, 0, !dbg !5597
  br i1 %tobool, label %if.then, label %if.end, !dbg !5598

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5599
  br label %return, !dbg !5599

if.end:                                           ; preds = %do.end
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5600
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 1, !dbg !5601
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !5602
  %12 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5603
  %13 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5604
  %14 = load i32, i32* %brightness.addr, align 4, !dbg !5605
  %call1 = call i32 @lg_g510_kbd_led_write(%struct.lg_g15_data* %12, %struct.lg_g15_led* %13, i32 %14) #6, !dbg !5606
  store i32 %call1, i32* %ret, align 4, !dbg !5607
  %15 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5608
  %mutex2 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %15, i32 0, i32 1, !dbg !5609
  call void @mutex_unlock(%struct.mutex* %mutex2) #6, !dbg !5610
  %16 = load i32, i32* %ret, align 4, !dbg !5611
  store i32 %16, i32* %retval, align 4, !dbg !5612
  br label %return, !dbg !5612

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5613
  ret i32 %17, !dbg !5613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_kbd_led_get(%struct.led_classdev* %led_cdev) #2 !dbg !5614 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5617, metadata !DIExpression()), !dbg !5618
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5619, metadata !DIExpression()), !dbg !5621
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5621
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5621
  store i8* %1, i8** %__mptr, align 8, !dbg !5621
  br label %do.body, !dbg !5621

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5622

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5621
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5621
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5621
  store %struct.lg_g15_led* %3, %struct.lg_g15_led** %tmp, align 8, !dbg !5622
  %4 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5621
  store %struct.lg_g15_led* %4, %struct.lg_g15_led** %g15_led, align 8, !dbg !5618
  %5 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5624
  %brightness = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %5, i32 0, i32 1, !dbg !5625
  %6 = load i32, i32* %brightness, align 8, !dbg !5625
  ret i32 %6, !dbg !5626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_mkey_led_set(%struct.led_classdev* %led_cdev, i32 %brightness) #2 !dbg !5627 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %brightness.addr = alloca i32, align 4
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %val = alloca i8, align 1
  %mask = alloca i8, align 1
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  store i32 %brightness, i32* %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %brightness.addr, metadata !5630, metadata !DIExpression()), !dbg !5631
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5632, metadata !DIExpression()), !dbg !5633
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5634, metadata !DIExpression()), !dbg !5636
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5636
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5636
  store i8* %1, i8** %__mptr, align 8, !dbg !5636
  br label %do.body, !dbg !5636

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5637

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5636
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5636
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5636
  store %struct.lg_g15_led* %3, %struct.lg_g15_led** %tmp, align 8, !dbg !5637
  %4 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5636
  store %struct.lg_g15_led* %4, %struct.lg_g15_led** %g15_led, align 8, !dbg !5633
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !5639, metadata !DIExpression()), !dbg !5640
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5641
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 11, !dbg !5642
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5642
  %parent = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !5643
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5643
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #6, !dbg !5644
  %8 = bitcast i8* %call to %struct.lg_g15_data*, !dbg !5644
  store %struct.lg_g15_data* %8, %struct.lg_g15_data** %g15, align 8, !dbg !5640
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5645, metadata !DIExpression()), !dbg !5646
  call void @llvm.dbg.declare(metadata i8* %mask, metadata !5647, metadata !DIExpression()), !dbg !5648
  store i8 0, i8* %mask, align 1, !dbg !5648
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5649, metadata !DIExpression()), !dbg !5650
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5651, metadata !DIExpression()), !dbg !5652
  %9 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5653
  %flags = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %9, i32 0, i32 3, !dbg !5655
  %10 = load i32, i32* %flags, align 8, !dbg !5655
  %conv = sext i32 %10 to i64, !dbg !5653
  %and = and i64 %conv, 2, !dbg !5656
  %tobool = icmp ne i64 %and, 0, !dbg !5656
  br i1 %tobool, label %if.then, label %if.end, !dbg !5657

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5658
  br label %return, !dbg !5658

if.end:                                           ; preds = %do.end
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5659
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 1, !dbg !5660
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !5661
  store i32 2, i32* %i, align 4, !dbg !5662
  br label %for.cond, !dbg !5664

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !dbg !5665
  %cmp = icmp slt i32 %12, 6, !dbg !5667
  br i1 %cmp, label %for.body, label %for.end, !dbg !5668

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !5669
  %14 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5672
  %led = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %14, i32 0, i32 2, !dbg !5673
  %15 = load i32, i32* %led, align 4, !dbg !5673
  %cmp2 = icmp eq i32 %13, %15, !dbg !5674
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !5675

if.then4:                                         ; preds = %for.body
  %16 = load i32, i32* %brightness.addr, align 4, !dbg !5676
  %conv5 = trunc i32 %16 to i8, !dbg !5676
  store i8 %conv5, i8* %val, align 1, !dbg !5677
  br label %if.end8, !dbg !5678

if.else:                                          ; preds = %for.body
  %17 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5679
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %17, i32 0, i32 6, !dbg !5680
  %18 = load i32, i32* %i, align 4, !dbg !5681
  %idxprom = sext i32 %18 to i64, !dbg !5679
  %arrayidx = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 %idxprom, !dbg !5679
  %brightness6 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx, i32 0, i32 1, !dbg !5682
  %19 = load i32, i32* %brightness6, align 8, !dbg !5682
  %conv7 = trunc i32 %19 to i8, !dbg !5679
  store i8 %conv7, i8* %val, align 1, !dbg !5683
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %20 = load i8, i8* %val, align 1, !dbg !5684
  %tobool9 = icmp ne i8 %20, 0, !dbg !5684
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5686

if.then10:                                        ; preds = %if.end8
  %21 = load i32, i32* %i, align 4, !dbg !5687
  %sub = sub i32 %21, 2, !dbg !5688
  %shr = ashr i32 128, %sub, !dbg !5689
  %22 = load i8, i8* %mask, align 1, !dbg !5690
  %conv11 = zext i8 %22 to i32, !dbg !5690
  %or = or i32 %conv11, %shr, !dbg !5690
  %conv12 = trunc i32 %or to i8, !dbg !5690
  store i8 %conv12, i8* %mask, align 1, !dbg !5690
  br label %if.end13, !dbg !5691

if.end13:                                         ; preds = %if.then10, %if.end8
  br label %for.inc, !dbg !5692

for.inc:                                          ; preds = %if.end13
  %23 = load i32, i32* %i, align 4, !dbg !5693
  %inc = add i32 %23, 1, !dbg !5693
  store i32 %inc, i32* %i, align 4, !dbg !5693
  br label %for.cond, !dbg !5694, !llvm.loop !5695

for.end:                                          ; preds = %for.cond
  %24 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5697
  %transfer_buf = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %24, i32 0, i32 0, !dbg !5698
  %arrayidx14 = getelementptr [20 x i8], [20 x i8]* %transfer_buf, i64 0, i64 0, !dbg !5697
  store i8 4, i8* %arrayidx14, align 8, !dbg !5699
  %25 = load i8, i8* %mask, align 1, !dbg !5700
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5701
  %transfer_buf15 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %26, i32 0, i32 0, !dbg !5702
  %arrayidx16 = getelementptr [20 x i8], [20 x i8]* %transfer_buf15, i64 0, i64 1, !dbg !5701
  store i8 %25, i8* %arrayidx16, align 1, !dbg !5703
  %27 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5704
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %27, i32 0, i32 4, !dbg !5705
  %28 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !5705
  %29 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5706
  %transfer_buf17 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %29, i32 0, i32 0, !dbg !5707
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %transfer_buf17, i64 0, i64 0, !dbg !5706
  %call18 = call i32 @hid_hw_raw_request(%struct.hid_device* %28, i8 zeroext 4, i8* %arraydecay, i64 2, i8 zeroext 2, i32 9) #6, !dbg !5708
  store i32 %call18, i32* %ret, align 4, !dbg !5709
  %30 = load i32, i32* %ret, align 4, !dbg !5710
  %cmp19 = icmp eq i32 %30, 2, !dbg !5712
  br i1 %cmp19, label %if.then21, label %if.else23, !dbg !5713

if.then21:                                        ; preds = %for.end
  %31 = load i32, i32* %brightness.addr, align 4, !dbg !5714
  %32 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5716
  %brightness22 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %32, i32 0, i32 1, !dbg !5717
  store i32 %31, i32* %brightness22, align 8, !dbg !5718
  store i32 0, i32* %ret, align 4, !dbg !5719
  br label %if.end28, !dbg !5720

if.else23:                                        ; preds = %for.end
  %33 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5721
  %hdev24 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %33, i32 0, i32 4, !dbg !5721
  %34 = load %struct.hid_device*, %struct.hid_device** %hdev24, align 8, !dbg !5721
  %dev25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 18, !dbg !5721
  %35 = load i32, i32* %ret, align 4, !dbg !5721
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %35) #7, !dbg !5721
  %36 = load i32, i32* %ret, align 4, !dbg !5723
  %cmp26 = icmp slt i32 %36, 0, !dbg !5724
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !5725

cond.true:                                        ; preds = %if.else23
  %37 = load i32, i32* %ret, align 4, !dbg !5726
  br label %cond.end, !dbg !5725

cond.false:                                       ; preds = %if.else23
  br label %cond.end, !dbg !5725

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ -5, %cond.false ], !dbg !5725
  store i32 %cond, i32* %ret, align 4, !dbg !5727
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.then21
  %38 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5728
  %mutex29 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %38, i32 0, i32 1, !dbg !5729
  call void @mutex_unlock(%struct.mutex* %mutex29) #6, !dbg !5730
  %39 = load i32, i32* %ret, align 4, !dbg !5731
  store i32 %39, i32* %retval, align 4, !dbg !5732
  br label %return, !dbg !5732

return:                                           ; preds = %if.end28, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !5733
  ret i32 %40, !dbg !5733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_mkey_led_get(%struct.led_classdev* %led_cdev) #2 !dbg !5734 {
entry:
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %brightness = alloca i32, align 4
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5735, metadata !DIExpression()), !dbg !5736
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5737, metadata !DIExpression()), !dbg !5738
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5739, metadata !DIExpression()), !dbg !5741
  %0 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5741
  %1 = bitcast %struct.led_classdev* %0 to i8*, !dbg !5741
  store i8* %1, i8** %__mptr, align 8, !dbg !5741
  br label %do.body, !dbg !5741

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5742

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5741
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5741
  %3 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5741
  store %struct.lg_g15_led* %3, %struct.lg_g15_led** %tmp, align 8, !dbg !5742
  %4 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5741
  store %struct.lg_g15_led* %4, %struct.lg_g15_led** %g15_led, align 8, !dbg !5738
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !5744, metadata !DIExpression()), !dbg !5745
  %5 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5746
  %dev = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 11, !dbg !5747
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5747
  %parent = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !5748
  %7 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5748
  %call = call i8* @dev_get_drvdata(%struct.device* %7) #6, !dbg !5749
  %8 = bitcast i8* %call to %struct.lg_g15_data*, !dbg !5749
  store %struct.lg_g15_data* %8, %struct.lg_g15_data** %g15, align 8, !dbg !5745
  call void @llvm.dbg.declare(metadata i32* %brightness, metadata !5750, metadata !DIExpression()), !dbg !5751
  %9 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5752
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %9, i32 0, i32 1, !dbg !5753
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !5754
  %10 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5755
  %call1 = call i32 @lg_g510_update_mkey_led_brightness(%struct.lg_g15_data* %10) #6, !dbg !5756
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5757
  %leds = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 6, !dbg !5758
  %12 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5759
  %led = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %12, i32 0, i32 2, !dbg !5760
  %13 = load i32, i32* %led, align 4, !dbg !5760
  %idxprom = zext i32 %13 to i64, !dbg !5757
  %arrayidx = getelementptr [6 x %struct.lg_g15_led], [6 x %struct.lg_g15_led]* %leds, i64 0, i64 %idxprom, !dbg !5757
  %brightness2 = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %arrayidx, i32 0, i32 1, !dbg !5761
  %14 = load i32, i32* %brightness2, align 8, !dbg !5761
  store i32 %14, i32* %brightness, align 4, !dbg !5762
  %15 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5763
  %mutex3 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %15, i32 0, i32 1, !dbg !5764
  call void @mutex_unlock(%struct.mutex* %mutex3) #6, !dbg !5765
  %16 = load i32, i32* %brightness, align 4, !dbg !5766
  ret i32 %16, !dbg !5767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_led_classdev_register(%struct.device* %parent, %struct.led_classdev* %led_cdev) #2 !dbg !5768 {
entry:
  %parent.addr = alloca %struct.device*, align 8
  %led_cdev.addr = alloca %struct.led_classdev*, align 8
  store %struct.device* %parent, %struct.device** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %parent.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  store %struct.led_classdev* %led_cdev, %struct.led_classdev** %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.device*, %struct.device** %parent.addr, align 8, !dbg !5775
  %1 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev.addr, align 8, !dbg !5776
  %call = call i32 @devm_led_classdev_register_ext(%struct.device* %0, %struct.led_classdev* %1, %struct.led_init_data* null) #6, !dbg !5777
  ret i32 %call, !dbg !5778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @color_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5779 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %ret = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !5786, metadata !DIExpression()), !dbg !5787
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5788
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !5789
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !5789
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !5787
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5790, metadata !DIExpression()), !dbg !5791
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5792, metadata !DIExpression()), !dbg !5794
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !5794
  %3 = bitcast %struct.led_classdev* %2 to i8*, !dbg !5794
  store i8* %3, i8** %__mptr, align 8, !dbg !5794
  br label %do.body, !dbg !5794

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5795

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5794
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5794
  %5 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5794
  store %struct.lg_g15_led* %5, %struct.lg_g15_led** %tmp, align 8, !dbg !5795
  %6 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5794
  store %struct.lg_g15_led* %6, %struct.lg_g15_led** %g15_led, align 8, !dbg !5791
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !5797, metadata !DIExpression()), !dbg !5798
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !5799
  %dev1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %7, i32 0, i32 11, !dbg !5800
  %8 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !5800
  %parent = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1, !dbg !5801
  %9 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5801
  %call2 = call i8* @dev_get_drvdata(%struct.device* %9) #6, !dbg !5802
  %10 = bitcast i8* %call2 to %struct.lg_g15_data*, !dbg !5802
  store %struct.lg_g15_data* %10, %struct.lg_g15_data** %g15, align 8, !dbg !5798
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5803, metadata !DIExpression()), !dbg !5804
  %11 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5805
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %11, i32 0, i32 1, !dbg !5806
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !5807
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !5808
  %13 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5809
  %red = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %13, i32 0, i32 3, !dbg !5810
  %14 = load i8, i8* %red, align 8, !dbg !5810
  %conv = zext i8 %14 to i32, !dbg !5809
  %15 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5811
  %green = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %15, i32 0, i32 4, !dbg !5812
  %16 = load i8, i8* %green, align 1, !dbg !5812
  %conv3 = zext i8 %16 to i32, !dbg !5811
  %17 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5813
  %blue = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %17, i32 0, i32 5, !dbg !5814
  %18 = load i8, i8* %blue, align 2, !dbg !5814
  %conv4 = zext i8 %18 to i32, !dbg !5813
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %conv4) #6, !dbg !5815
  %conv6 = sext i32 %call5 to i64, !dbg !5815
  store i64 %conv6, i64* %ret, align 8, !dbg !5816
  %19 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5817
  %mutex7 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %19, i32 0, i32 1, !dbg !5818
  call void @mutex_unlock(%struct.mutex* %mutex7) #6, !dbg !5819
  %20 = load i64, i64* %ret, align 8, !dbg !5820
  ret i64 %20, !dbg !5821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @color_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5822 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %led_cdev = alloca %struct.led_classdev*, align 8
  %g15_led = alloca %struct.lg_g15_led*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.lg_g15_led*, align 8
  %g15 = alloca %struct.lg_g15_data*, align 8
  %value = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5823, metadata !DIExpression()), !dbg !5824
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5829, metadata !DIExpression()), !dbg !5830
  call void @llvm.dbg.declare(metadata %struct.led_classdev** %led_cdev, metadata !5831, metadata !DIExpression()), !dbg !5832
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5833
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !5834
  %1 = bitcast i8* %call to %struct.led_classdev*, !dbg !5834
  store %struct.led_classdev* %1, %struct.led_classdev** %led_cdev, align 8, !dbg !5832
  call void @llvm.dbg.declare(metadata %struct.lg_g15_led** %g15_led, metadata !5835, metadata !DIExpression()), !dbg !5836
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5837, metadata !DIExpression()), !dbg !5839
  %2 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !5839
  %3 = bitcast %struct.led_classdev* %2 to i8*, !dbg !5839
  store i8* %3, i8** %__mptr, align 8, !dbg !5839
  br label %do.body, !dbg !5839

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5840

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5839
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5839
  %5 = bitcast i8* %add.ptr to %struct.lg_g15_led*, !dbg !5839
  store %struct.lg_g15_led* %5, %struct.lg_g15_led** %tmp, align 8, !dbg !5840
  %6 = load %struct.lg_g15_led*, %struct.lg_g15_led** %tmp, align 8, !dbg !5839
  store %struct.lg_g15_led* %6, %struct.lg_g15_led** %g15_led, align 8, !dbg !5836
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15, metadata !5842, metadata !DIExpression()), !dbg !5843
  %7 = load %struct.led_classdev*, %struct.led_classdev** %led_cdev, align 8, !dbg !5844
  %dev1 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %7, i32 0, i32 11, !dbg !5845
  %8 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !5845
  %parent = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1, !dbg !5846
  %9 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5846
  %call2 = call i8* @dev_get_drvdata(%struct.device* %9) #6, !dbg !5847
  %10 = bitcast i8* %call2 to %struct.lg_g15_data*, !dbg !5847
  store %struct.lg_g15_data* %10, %struct.lg_g15_data** %g15, align 8, !dbg !5843
  call void @llvm.dbg.declare(metadata i64* %value, metadata !5848, metadata !DIExpression()), !dbg !5849
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5850, metadata !DIExpression()), !dbg !5851
  %11 = load i64, i64* %count.addr, align 8, !dbg !5852
  %cmp = icmp ult i64 %11, 7, !dbg !5854
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5855

lor.lhs.false:                                    ; preds = %do.end
  %12 = load i64, i64* %count.addr, align 8, !dbg !5856
  %cmp3 = icmp eq i64 %12, 8, !dbg !5857
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false6, !dbg !5858

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !5859
  %arrayidx = getelementptr i8, i8* %13, i64 7, !dbg !5859
  %14 = load i8, i8* %arrayidx, align 1, !dbg !5859
  %conv = sext i8 %14 to i32, !dbg !5859
  %cmp4 = icmp ne i32 %conv, 10, !dbg !5860
  br i1 %cmp4, label %if.then, label %lor.lhs.false6, !dbg !5861

lor.lhs.false6:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %15 = load i64, i64* %count.addr, align 8, !dbg !5862
  %cmp7 = icmp ugt i64 %15, 8, !dbg !5863
  br i1 %cmp7, label %if.then, label %if.end, !dbg !5864

if.then:                                          ; preds = %lor.lhs.false6, %land.lhs.true, %do.end
  store i64 -22, i64* %retval, align 8, !dbg !5865
  br label %return, !dbg !5865

if.end:                                           ; preds = %lor.lhs.false6
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !5866
  %arrayidx9 = getelementptr i8, i8* %16, i64 0, !dbg !5866
  %17 = load i8, i8* %arrayidx9, align 1, !dbg !5866
  %conv10 = sext i8 %17 to i32, !dbg !5866
  %cmp11 = icmp ne i32 %conv10, 35, !dbg !5868
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5869

if.then13:                                        ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5870
  br label %return, !dbg !5870

if.end14:                                         ; preds = %if.end
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !5871
  %add.ptr15 = getelementptr i8, i8* %18, i64 1, !dbg !5872
  %call16 = call i32 @kstrtoul(i8* %add.ptr15, i32 16, i64* %value) #6, !dbg !5873
  store i32 %call16, i32* %ret, align 4, !dbg !5874
  %19 = load i32, i32* %ret, align 4, !dbg !5875
  %tobool = icmp ne i32 %19, 0, !dbg !5875
  br i1 %tobool, label %if.then17, label %if.end19, !dbg !5877

if.then17:                                        ; preds = %if.end14
  %20 = load i32, i32* %ret, align 4, !dbg !5878
  %conv18 = sext i32 %20 to i64, !dbg !5878
  store i64 %conv18, i64* %retval, align 8, !dbg !5879
  br label %return, !dbg !5879

if.end19:                                         ; preds = %if.end14
  %21 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5880
  %mutex = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %21, i32 0, i32 1, !dbg !5881
  call void @mutex_lock(%struct.mutex* %mutex) #6, !dbg !5882
  %22 = load i64, i64* %value, align 8, !dbg !5883
  %and = and i64 %22, 16711680, !dbg !5884
  %shr = lshr i64 %and, 16, !dbg !5885
  %conv20 = trunc i64 %shr to i8, !dbg !5886
  %23 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5887
  %red = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %23, i32 0, i32 3, !dbg !5888
  store i8 %conv20, i8* %red, align 8, !dbg !5889
  %24 = load i64, i64* %value, align 8, !dbg !5890
  %and21 = and i64 %24, 65280, !dbg !5891
  %shr22 = lshr i64 %and21, 8, !dbg !5892
  %conv23 = trunc i64 %shr22 to i8, !dbg !5893
  %25 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5894
  %green = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %25, i32 0, i32 4, !dbg !5895
  store i8 %conv23, i8* %green, align 1, !dbg !5896
  %26 = load i64, i64* %value, align 8, !dbg !5897
  %and24 = and i64 %26, 255, !dbg !5898
  %conv25 = trunc i64 %and24 to i8, !dbg !5899
  %27 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5900
  %blue = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %27, i32 0, i32 5, !dbg !5901
  store i8 %conv25, i8* %blue, align 2, !dbg !5902
  %28 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5903
  %29 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5904
  %30 = load %struct.lg_g15_led*, %struct.lg_g15_led** %g15_led, align 8, !dbg !5905
  %brightness = getelementptr inbounds %struct.lg_g15_led, %struct.lg_g15_led* %30, i32 0, i32 1, !dbg !5906
  %31 = load i32, i32* %brightness, align 8, !dbg !5906
  %call26 = call i32 @lg_g510_kbd_led_write(%struct.lg_g15_data* %28, %struct.lg_g15_led* %29, i32 %31) #6, !dbg !5907
  store i32 %call26, i32* %ret, align 4, !dbg !5908
  %32 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15, align 8, !dbg !5909
  %mutex27 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %32, i32 0, i32 1, !dbg !5910
  call void @mutex_unlock(%struct.mutex* %mutex27) #6, !dbg !5911
  %33 = load i32, i32* %ret, align 4, !dbg !5912
  %cmp28 = icmp slt i32 %33, 0, !dbg !5913
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !5914

cond.true:                                        ; preds = %if.end19
  %34 = load i32, i32* %ret, align 4, !dbg !5915
  %conv30 = sext i32 %34 to i64, !dbg !5915
  br label %cond.end, !dbg !5914

cond.false:                                       ; preds = %if.end19
  %35 = load i64, i64* %count.addr, align 8, !dbg !5916
  br label %cond.end, !dbg !5914

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv30, %cond.true ], [ %35, %cond.false ], !dbg !5914
  store i64 %cond, i64* %retval, align 8, !dbg !5917
  br label %return, !dbg !5917

return:                                           ; preds = %cond.end, %if.then17, %if.then13, %if.then
  %36 = load i64, i64* %retval, align 8, !dbg !5918
  ret i64 %36, !dbg !5918
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !5919 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5929
  %1 = load i32, i32* %base.addr, align 4, !dbg !5931
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5932
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #6, !dbg !5933
  ret i32 %call, !dbg !5934
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_led_classdev_register_ext(%struct.device*, %struct.led_classdev*, %struct.led_init_data*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hid_get_drvdata(%struct.hid_device* %hdev) #2 !dbg !5935 {
entry:
  %hdev.addr = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %hdev, %struct.hid_device** %hdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hid_device** %hdev.addr, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load %struct.hid_device*, %struct.hid_device** %hdev.addr, align 8, !dbg !5940
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %0, i32 0, i32 18, !dbg !5941
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !5942
  ret i8* %call, !dbg !5943
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_event(%struct.lg_g15_data* %g15, i8* %data, i32 %size) #2 !dbg !5944 {
entry:
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !5947, metadata !DIExpression()), !dbg !5948
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5949, metadata !DIExpression()), !dbg !5950
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5951, metadata !DIExpression()), !dbg !5952
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5953, metadata !DIExpression()), !dbg !5954
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5955, metadata !DIExpression()), !dbg !5956
  store i32 0, i32* %i, align 4, !dbg !5957
  br label %for.cond, !dbg !5959

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5960
  %cmp = icmp slt i32 %0, 6, !dbg !5962
  br i1 %cmp, label %for.body, label %for.end, !dbg !5963

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5964
  %2 = load i32, i32* %i, align 4, !dbg !5966
  %add = add i32 %2, 1, !dbg !5967
  %idxprom = sext i32 %add to i64, !dbg !5964
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !5964
  %3 = load i8, i8* %arrayidx, align 1, !dbg !5964
  %conv = zext i8 %3 to i32, !dbg !5964
  %4 = load i32, i32* %i, align 4, !dbg !5968
  %shl = shl i32 1, %4, !dbg !5969
  %and = and i32 %conv, %shl, !dbg !5970
  store i32 %and, i32* %val, align 4, !dbg !5971
  %5 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5972
  %input = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %5, i32 0, i32 3, !dbg !5973
  %6 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !5973
  %7 = load i32, i32* %i, align 4, !dbg !5974
  %add1 = add i32 656, %7, !dbg !5975
  %8 = load i32, i32* %val, align 4, !dbg !5976
  call void @input_report_key(%struct.input_dev* %6, i32 %add1, i32 %8) #6, !dbg !5977
  br label %for.inc, !dbg !5978

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !5979
  %inc = add i32 %9, 1, !dbg !5979
  store i32 %inc, i32* %i, align 4, !dbg !5979
  br label %for.cond, !dbg !5980, !llvm.loop !5981

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5983
  br label %for.cond2, !dbg !5985

for.cond2:                                        ; preds = %for.inc14, %for.end
  %10 = load i32, i32* %i, align 4, !dbg !5986
  %cmp3 = icmp slt i32 %10, 6, !dbg !5988
  br i1 %cmp3, label %for.body5, label %for.end16, !dbg !5989

for.body5:                                        ; preds = %for.cond2
  %11 = load i8*, i8** %data.addr, align 8, !dbg !5990
  %12 = load i32, i32* %i, align 4, !dbg !5992
  %add6 = add i32 %12, 2, !dbg !5993
  %idxprom7 = sext i32 %add6 to i64, !dbg !5990
  %arrayidx8 = getelementptr i8, i8* %11, i64 %idxprom7, !dbg !5990
  %13 = load i8, i8* %arrayidx8, align 1, !dbg !5990
  %conv9 = zext i8 %13 to i32, !dbg !5990
  %14 = load i32, i32* %i, align 4, !dbg !5994
  %shl10 = shl i32 1, %14, !dbg !5995
  %and11 = and i32 %conv9, %shl10, !dbg !5996
  store i32 %and11, i32* %val, align 4, !dbg !5997
  %15 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !5998
  %input12 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %15, i32 0, i32 3, !dbg !5999
  %16 = load %struct.input_dev*, %struct.input_dev** %input12, align 8, !dbg !5999
  %17 = load i32, i32* %i, align 4, !dbg !6000
  %add13 = add i32 662, %17, !dbg !6001
  %18 = load i32, i32* %val, align 4, !dbg !6002
  call void @input_report_key(%struct.input_dev* %16, i32 %add13, i32 %18) #6, !dbg !6003
  br label %for.inc14, !dbg !6004

for.inc14:                                        ; preds = %for.body5
  %19 = load i32, i32* %i, align 4, !dbg !6005
  %inc15 = add i32 %19, 1, !dbg !6005
  store i32 %inc15, i32* %i, align 4, !dbg !6005
  br label %for.cond2, !dbg !6006, !llvm.loop !6007

for.end16:                                        ; preds = %for.cond2
  store i32 0, i32* %i, align 4, !dbg !6009
  br label %for.cond17, !dbg !6011

for.cond17:                                       ; preds = %for.inc29, %for.end16
  %20 = load i32, i32* %i, align 4, !dbg !6012
  %cmp18 = icmp slt i32 %20, 5, !dbg !6014
  br i1 %cmp18, label %for.body20, label %for.end31, !dbg !6015

for.body20:                                       ; preds = %for.cond17
  %21 = load i8*, i8** %data.addr, align 8, !dbg !6016
  %22 = load i32, i32* %i, align 4, !dbg !6018
  %add21 = add i32 %22, 1, !dbg !6019
  %idxprom22 = sext i32 %add21 to i64, !dbg !6016
  %arrayidx23 = getelementptr i8, i8* %21, i64 %idxprom22, !dbg !6016
  %23 = load i8, i8* %arrayidx23, align 1, !dbg !6016
  %conv24 = zext i8 %23 to i32, !dbg !6016
  %24 = load i32, i32* %i, align 4, !dbg !6020
  %shl25 = shl i32 4, %24, !dbg !6021
  %and26 = and i32 %conv24, %shl25, !dbg !6022
  store i32 %and26, i32* %val, align 4, !dbg !6023
  %25 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6024
  %input27 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %25, i32 0, i32 3, !dbg !6025
  %26 = load %struct.input_dev*, %struct.input_dev** %input27, align 8, !dbg !6025
  %27 = load i32, i32* %i, align 4, !dbg !6026
  %add28 = add i32 668, %27, !dbg !6027
  %28 = load i32, i32* %val, align 4, !dbg !6028
  call void @input_report_key(%struct.input_dev* %26, i32 %add28, i32 %28) #6, !dbg !6029
  br label %for.inc29, !dbg !6030

for.inc29:                                        ; preds = %for.body20
  %29 = load i32, i32* %i, align 4, !dbg !6031
  %inc30 = add i32 %29, 1, !dbg !6031
  store i32 %inc30, i32* %i, align 4, !dbg !6031
  br label %for.cond17, !dbg !6032, !llvm.loop !6033

for.end31:                                        ; preds = %for.cond17
  %30 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6035
  %input32 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %30, i32 0, i32 3, !dbg !6036
  %31 = load %struct.input_dev*, %struct.input_dev** %input32, align 8, !dbg !6036
  %32 = load i8*, i8** %data.addr, align 8, !dbg !6037
  %arrayidx33 = getelementptr i8, i8* %32, i64 8, !dbg !6037
  %33 = load i8, i8* %arrayidx33, align 1, !dbg !6037
  %conv34 = zext i8 %33 to i32, !dbg !6037
  %and35 = and i32 %conv34, 64, !dbg !6038
  call void @input_report_key(%struct.input_dev* %31, i32 673, i32 %and35) #6, !dbg !6039
  store i32 0, i32* %i, align 4, !dbg !6040
  br label %for.cond36, !dbg !6042

for.cond36:                                       ; preds = %for.inc48, %for.end31
  %34 = load i32, i32* %i, align 4, !dbg !6043
  %cmp37 = icmp slt i32 %34, 3, !dbg !6045
  br i1 %cmp37, label %for.body39, label %for.end50, !dbg !6046

for.body39:                                       ; preds = %for.cond36
  %35 = load i8*, i8** %data.addr, align 8, !dbg !6047
  %36 = load i32, i32* %i, align 4, !dbg !6049
  %add40 = add i32 %36, 6, !dbg !6050
  %idxprom41 = sext i32 %add40 to i64, !dbg !6047
  %arrayidx42 = getelementptr i8, i8* %35, i64 %idxprom41, !dbg !6047
  %37 = load i8, i8* %arrayidx42, align 1, !dbg !6047
  %conv43 = zext i8 %37 to i32, !dbg !6047
  %38 = load i32, i32* %i, align 4, !dbg !6051
  %shl44 = shl i32 1, %38, !dbg !6052
  %and45 = and i32 %conv43, %shl44, !dbg !6053
  store i32 %and45, i32* %val, align 4, !dbg !6054
  %39 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6055
  %input46 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %39, i32 0, i32 3, !dbg !6056
  %40 = load %struct.input_dev*, %struct.input_dev** %input46, align 8, !dbg !6056
  %41 = load i32, i32* %i, align 4, !dbg !6057
  %add47 = add i32 691, %41, !dbg !6058
  %42 = load i32, i32* %val, align 4, !dbg !6059
  call void @input_report_key(%struct.input_dev* %40, i32 %add47, i32 %42) #6, !dbg !6060
  br label %for.inc48, !dbg !6061

for.inc48:                                        ; preds = %for.body39
  %43 = load i32, i32* %i, align 4, !dbg !6062
  %inc49 = add i32 %43, 1, !dbg !6062
  store i32 %inc49, i32* %i, align 4, !dbg !6062
  br label %for.cond36, !dbg !6063, !llvm.loop !6064

for.end50:                                        ; preds = %for.cond36
  %44 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6066
  %input51 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %44, i32 0, i32 3, !dbg !6067
  %45 = load %struct.input_dev*, %struct.input_dev** %input51, align 8, !dbg !6067
  %46 = load i8*, i8** %data.addr, align 8, !dbg !6068
  %arrayidx52 = getelementptr i8, i8* %46, i64 7, !dbg !6068
  %47 = load i8, i8* %arrayidx52, align 1, !dbg !6068
  %conv53 = zext i8 %47 to i32, !dbg !6068
  %and54 = and i32 %conv53, 64, !dbg !6069
  call void @input_report_key(%struct.input_dev* %45, i32 688, i32 %and54) #6, !dbg !6070
  %48 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6071
  %input55 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %48, i32 0, i32 3, !dbg !6072
  %49 = load %struct.input_dev*, %struct.input_dev** %input55, align 8, !dbg !6072
  %50 = load i8*, i8** %data.addr, align 8, !dbg !6073
  %arrayidx56 = getelementptr i8, i8* %50, i64 8, !dbg !6073
  %51 = load i8, i8* %arrayidx56, align 1, !dbg !6073
  %conv57 = zext i8 %51 to i32, !dbg !6073
  %and58 = and i32 %conv57, 128, !dbg !6074
  call void @input_report_key(%struct.input_dev* %49, i32 696, i32 %and58) #6, !dbg !6075
  store i32 0, i32* %i, align 4, !dbg !6076
  br label %for.cond59, !dbg !6078

for.cond59:                                       ; preds = %for.inc70, %for.end50
  %52 = load i32, i32* %i, align 4, !dbg !6079
  %cmp60 = icmp slt i32 %52, 4, !dbg !6081
  br i1 %cmp60, label %for.body62, label %for.end72, !dbg !6082

for.body62:                                       ; preds = %for.cond59
  %53 = load i8*, i8** %data.addr, align 8, !dbg !6083
  %54 = load i32, i32* %i, align 4, !dbg !6085
  %add63 = add i32 %54, 2, !dbg !6086
  %idxprom64 = sext i32 %add63 to i64, !dbg !6083
  %arrayidx65 = getelementptr i8, i8* %53, i64 %idxprom64, !dbg !6083
  %55 = load i8, i8* %arrayidx65, align 1, !dbg !6083
  %conv66 = zext i8 %55 to i32, !dbg !6083
  %and67 = and i32 %conv66, 128, !dbg !6087
  store i32 %and67, i32* %val, align 4, !dbg !6088
  %56 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6089
  %input68 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %56, i32 0, i32 3, !dbg !6090
  %57 = load %struct.input_dev*, %struct.input_dev** %input68, align 8, !dbg !6090
  %58 = load i32, i32* %i, align 4, !dbg !6091
  %add69 = add i32 697, %58, !dbg !6092
  %59 = load i32, i32* %val, align 4, !dbg !6093
  call void @input_report_key(%struct.input_dev* %57, i32 %add69, i32 %59) #6, !dbg !6094
  br label %for.inc70, !dbg !6095

for.inc70:                                        ; preds = %for.body62
  %60 = load i32, i32* %i, align 4, !dbg !6096
  %inc71 = add i32 %60, 1, !dbg !6096
  store i32 %inc71, i32* %i, align 4, !dbg !6096
  br label %for.cond59, !dbg !6097, !llvm.loop !6098

for.end72:                                        ; preds = %for.cond59
  %61 = load i8*, i8** %data.addr, align 8, !dbg !6100
  %arrayidx73 = getelementptr i8, i8* %61, i64 1, !dbg !6100
  %62 = load i8, i8* %arrayidx73, align 1, !dbg !6100
  %conv74 = zext i8 %62 to i32, !dbg !6100
  %and75 = and i32 %conv74, 128, !dbg !6102
  %tobool = icmp ne i32 %and75, 0, !dbg !6102
  br i1 %tobool, label %if.then, label %if.end, !dbg !6103

if.then:                                          ; preds = %for.end72
  %63 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6104
  %work = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %63, i32 0, i32 2, !dbg !6105
  %call = call zeroext i1 @schedule_work(%struct.work_struct* %work) #6, !dbg !6106
  br label %if.end, !dbg !6106

if.end:                                           ; preds = %if.then, %for.end72
  %64 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6107
  %input76 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %64, i32 0, i32 3, !dbg !6108
  %65 = load %struct.input_dev*, %struct.input_dev** %input76, align 8, !dbg !6108
  call void @input_sync(%struct.input_dev* %65) #6, !dbg !6109
  ret i32 0, !dbg !6110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g15_v2_event(%struct.lg_g15_data* %g15, i8* %data, i32 %size) #2 !dbg !6111 {
entry:
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !6112, metadata !DIExpression()), !dbg !6113
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6114, metadata !DIExpression()), !dbg !6115
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6118, metadata !DIExpression()), !dbg !6119
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6120, metadata !DIExpression()), !dbg !6121
  store i32 0, i32* %i, align 4, !dbg !6122
  br label %for.cond, !dbg !6124

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6125
  %cmp = icmp slt i32 %0, 6, !dbg !6127
  br i1 %cmp, label %for.body, label %for.end, !dbg !6128

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6129
  %arrayidx = getelementptr i8, i8* %1, i64 1, !dbg !6129
  %2 = load i8, i8* %arrayidx, align 1, !dbg !6129
  %conv = zext i8 %2 to i32, !dbg !6129
  %3 = load i32, i32* %i, align 4, !dbg !6131
  %shl = shl i32 1, %3, !dbg !6132
  %and = and i32 %conv, %shl, !dbg !6133
  store i32 %and, i32* %val, align 4, !dbg !6134
  %4 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6135
  %input = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %4, i32 0, i32 3, !dbg !6136
  %5 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !6136
  %6 = load i32, i32* %i, align 4, !dbg !6137
  %add = add i32 656, %6, !dbg !6138
  %7 = load i32, i32* %val, align 4, !dbg !6139
  call void @input_report_key(%struct.input_dev* %5, i32 %add, i32 %7) #6, !dbg !6140
  br label %for.inc, !dbg !6141

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !6142
  %inc = add i32 %8, 1, !dbg !6142
  store i32 %inc, i32* %i, align 4, !dbg !6142
  br label %for.cond, !dbg !6143, !llvm.loop !6144

for.end:                                          ; preds = %for.cond
  %9 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6146
  %input1 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %9, i32 0, i32 3, !dbg !6147
  %10 = load %struct.input_dev*, %struct.input_dev** %input1, align 8, !dbg !6147
  %11 = load i8*, i8** %data.addr, align 8, !dbg !6148
  %arrayidx2 = getelementptr i8, i8* %11, i64 1, !dbg !6148
  %12 = load i8, i8* %arrayidx2, align 1, !dbg !6148
  %conv3 = zext i8 %12 to i32, !dbg !6148
  %and4 = and i32 %conv3, 64, !dbg !6149
  call void @input_report_key(%struct.input_dev* %10, i32 691, i32 %and4) #6, !dbg !6150
  %13 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6151
  %input5 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %13, i32 0, i32 3, !dbg !6152
  %14 = load %struct.input_dev*, %struct.input_dev** %input5, align 8, !dbg !6152
  %15 = load i8*, i8** %data.addr, align 8, !dbg !6153
  %arrayidx6 = getelementptr i8, i8* %15, i64 1, !dbg !6153
  %16 = load i8, i8* %arrayidx6, align 1, !dbg !6153
  %conv7 = zext i8 %16 to i32, !dbg !6153
  %and8 = and i32 %conv7, 128, !dbg !6154
  call void @input_report_key(%struct.input_dev* %14, i32 692, i32 %and8) #6, !dbg !6155
  %17 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6156
  %input9 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %17, i32 0, i32 3, !dbg !6157
  %18 = load %struct.input_dev*, %struct.input_dev** %input9, align 8, !dbg !6157
  %19 = load i8*, i8** %data.addr, align 8, !dbg !6158
  %arrayidx10 = getelementptr i8, i8* %19, i64 2, !dbg !6158
  %20 = load i8, i8* %arrayidx10, align 1, !dbg !6158
  %conv11 = zext i8 %20 to i32, !dbg !6158
  %and12 = and i32 %conv11, 32, !dbg !6159
  call void @input_report_key(%struct.input_dev* %18, i32 693, i32 %and12) #6, !dbg !6160
  %21 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6161
  %input13 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %21, i32 0, i32 3, !dbg !6162
  %22 = load %struct.input_dev*, %struct.input_dev** %input13, align 8, !dbg !6162
  %23 = load i8*, i8** %data.addr, align 8, !dbg !6163
  %arrayidx14 = getelementptr i8, i8* %23, i64 2, !dbg !6163
  %24 = load i8, i8* %arrayidx14, align 1, !dbg !6163
  %conv15 = zext i8 %24 to i32, !dbg !6163
  %and16 = and i32 %conv15, 64, !dbg !6164
  call void @input_report_key(%struct.input_dev* %22, i32 688, i32 %and16) #6, !dbg !6165
  %25 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6166
  %input17 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %25, i32 0, i32 3, !dbg !6167
  %26 = load %struct.input_dev*, %struct.input_dev** %input17, align 8, !dbg !6167
  %27 = load i8*, i8** %data.addr, align 8, !dbg !6168
  %arrayidx18 = getelementptr i8, i8* %27, i64 2, !dbg !6168
  %28 = load i8, i8* %arrayidx18, align 1, !dbg !6168
  %conv19 = zext i8 %28 to i32, !dbg !6168
  %and20 = and i32 %conv19, 128, !dbg !6169
  call void @input_report_key(%struct.input_dev* %26, i32 696, i32 %and20) #6, !dbg !6170
  store i32 0, i32* %i, align 4, !dbg !6171
  br label %for.cond21, !dbg !6173

for.cond21:                                       ; preds = %for.inc31, %for.end
  %29 = load i32, i32* %i, align 4, !dbg !6174
  %cmp22 = icmp slt i32 %29, 4, !dbg !6176
  br i1 %cmp22, label %for.body24, label %for.end33, !dbg !6177

for.body24:                                       ; preds = %for.cond21
  %30 = load i8*, i8** %data.addr, align 8, !dbg !6178
  %arrayidx25 = getelementptr i8, i8* %30, i64 2, !dbg !6178
  %31 = load i8, i8* %arrayidx25, align 1, !dbg !6178
  %conv26 = zext i8 %31 to i32, !dbg !6178
  %32 = load i32, i32* %i, align 4, !dbg !6180
  %shl27 = shl i32 2, %32, !dbg !6181
  %and28 = and i32 %conv26, %shl27, !dbg !6182
  store i32 %and28, i32* %val, align 4, !dbg !6183
  %33 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6184
  %input29 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %33, i32 0, i32 3, !dbg !6185
  %34 = load %struct.input_dev*, %struct.input_dev** %input29, align 8, !dbg !6185
  %35 = load i32, i32* %i, align 4, !dbg !6186
  %add30 = add i32 697, %35, !dbg !6187
  %36 = load i32, i32* %val, align 4, !dbg !6188
  call void @input_report_key(%struct.input_dev* %34, i32 %add30, i32 %36) #6, !dbg !6189
  br label %for.inc31, !dbg !6190

for.inc31:                                        ; preds = %for.body24
  %37 = load i32, i32* %i, align 4, !dbg !6191
  %inc32 = add i32 %37, 1, !dbg !6191
  store i32 %inc32, i32* %i, align 4, !dbg !6191
  br label %for.cond21, !dbg !6192, !llvm.loop !6193

for.end33:                                        ; preds = %for.cond21
  %38 = load i8*, i8** %data.addr, align 8, !dbg !6195
  %arrayidx34 = getelementptr i8, i8* %38, i64 2, !dbg !6195
  %39 = load i8, i8* %arrayidx34, align 1, !dbg !6195
  %conv35 = zext i8 %39 to i32, !dbg !6195
  %and36 = and i32 %conv35, 1, !dbg !6197
  %tobool = icmp ne i32 %and36, 0, !dbg !6197
  br i1 %tobool, label %if.then, label %if.end, !dbg !6198

if.then:                                          ; preds = %for.end33
  %40 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6199
  %work = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %40, i32 0, i32 2, !dbg !6200
  %call = call zeroext i1 @schedule_work(%struct.work_struct* %work) #6, !dbg !6201
  br label %if.end, !dbg !6201

if.end:                                           ; preds = %if.then, %for.end33
  %41 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6202
  %input37 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %41, i32 0, i32 3, !dbg !6203
  %42 = load %struct.input_dev*, %struct.input_dev** %input37, align 8, !dbg !6203
  call void @input_sync(%struct.input_dev* %42) #6, !dbg !6204
  ret i32 0, !dbg !6205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_event(%struct.lg_g15_data* %g15, i8* %data, i32 %size) #2 !dbg !6206 {
entry:
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %game_mode_enabled = alloca i8, align 1
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  call void @llvm.dbg.declare(metadata i8* %game_mode_enabled, metadata !6213, metadata !DIExpression()), !dbg !6214
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6215, metadata !DIExpression()), !dbg !6216
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6217, metadata !DIExpression()), !dbg !6218
  store i32 0, i32* %i, align 4, !dbg !6219
  br label %for.cond, !dbg !6221

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !6222
  %cmp = icmp slt i32 %0, 18, !dbg !6224
  br i1 %cmp, label %for.body, label %for.end, !dbg !6225

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %data.addr, align 8, !dbg !6226
  %2 = load i32, i32* %i, align 4, !dbg !6228
  %div = sdiv i32 %2, 8, !dbg !6229
  %add = add i32 %div, 1, !dbg !6230
  %idxprom = sext i32 %add to i64, !dbg !6226
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !6226
  %3 = load i8, i8* %arrayidx, align 1, !dbg !6226
  %conv = zext i8 %3 to i32, !dbg !6226
  %4 = load i32, i32* %i, align 4, !dbg !6231
  %rem = srem i32 %4, 8, !dbg !6232
  %shl = shl i32 1, %rem, !dbg !6233
  %and = and i32 %conv, %shl, !dbg !6234
  store i32 %and, i32* %val, align 4, !dbg !6235
  %5 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6236
  %input = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %5, i32 0, i32 3, !dbg !6237
  %6 = load %struct.input_dev*, %struct.input_dev** %input, align 8, !dbg !6237
  %7 = load i32, i32* %i, align 4, !dbg !6238
  %add1 = add i32 656, %7, !dbg !6239
  %8 = load i32, i32* %val, align 4, !dbg !6240
  call void @input_report_key(%struct.input_dev* %6, i32 %add1, i32 %8) #6, !dbg !6241
  br label %for.inc, !dbg !6242

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !6243
  %inc = add i32 %9, 1, !dbg !6243
  store i32 %inc, i32* %i, align 4, !dbg !6243
  br label %for.cond, !dbg !6244, !llvm.loop !6245

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %data.addr, align 8, !dbg !6247
  %arrayidx2 = getelementptr i8, i8* %10, i64 3, !dbg !6247
  %11 = load i8, i8* %arrayidx2, align 1, !dbg !6247
  %conv3 = zext i8 %11 to i32, !dbg !6247
  %and4 = and i32 %conv3, 4, !dbg !6248
  %tobool = icmp ne i32 %and4, 0, !dbg !6247
  %frombool = zext i1 %tobool to i8, !dbg !6249
  store i8 %frombool, i8* %game_mode_enabled, align 1, !dbg !6249
  %12 = load i8, i8* %game_mode_enabled, align 1, !dbg !6250
  %tobool5 = trunc i8 %12 to i1, !dbg !6250
  %conv6 = zext i1 %tobool5 to i32, !dbg !6250
  %13 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6252
  %game_mode_enabled7 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %13, i32 0, i32 7, !dbg !6253
  %14 = load i8, i8* %game_mode_enabled7, align 8, !dbg !6253
  %tobool8 = trunc i8 %14 to i1, !dbg !6253
  %conv9 = zext i1 %tobool8 to i32, !dbg !6252
  %cmp10 = icmp ne i32 %conv6, %conv9, !dbg !6254
  br i1 %cmp10, label %if.then, label %if.end19, !dbg !6255

if.then:                                          ; preds = %for.end
  %15 = load i8, i8* %game_mode_enabled, align 1, !dbg !6256
  %tobool12 = trunc i8 %15 to i1, !dbg !6256
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !6259

if.then13:                                        ; preds = %if.then
  %16 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6260
  %hdev = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %16, i32 0, i32 4, !dbg !6260
  %17 = load %struct.hid_device*, %struct.hid_device** %hdev, align 8, !dbg !6260
  %dev = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 18, !dbg !6260
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !6260
  br label %if.end, !dbg !6260

if.else:                                          ; preds = %if.then
  %18 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6261
  %hdev14 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %18, i32 0, i32 4, !dbg !6261
  %19 = load %struct.hid_device*, %struct.hid_device** %hdev14, align 8, !dbg !6261
  %dev15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 18, !dbg !6261
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !6261
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  %20 = load i8, i8* %game_mode_enabled, align 1, !dbg !6262
  %tobool16 = trunc i8 %20 to i1, !dbg !6262
  %21 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6263
  %game_mode_enabled17 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %21, i32 0, i32 7, !dbg !6264
  %frombool18 = zext i1 %tobool16 to i8, !dbg !6265
  store i8 %frombool18, i8* %game_mode_enabled17, align 8, !dbg !6265
  br label %if.end19, !dbg !6266

if.end19:                                         ; preds = %if.end, %for.end
  store i32 0, i32* %i, align 4, !dbg !6267
  br label %for.cond20, !dbg !6269

for.cond20:                                       ; preds = %for.inc30, %if.end19
  %22 = load i32, i32* %i, align 4, !dbg !6270
  %cmp21 = icmp slt i32 %22, 3, !dbg !6272
  br i1 %cmp21, label %for.body23, label %for.end32, !dbg !6273

for.body23:                                       ; preds = %for.cond20
  %23 = load i8*, i8** %data.addr, align 8, !dbg !6274
  %arrayidx24 = getelementptr i8, i8* %23, i64 3, !dbg !6274
  %24 = load i8, i8* %arrayidx24, align 1, !dbg !6274
  %conv25 = zext i8 %24 to i32, !dbg !6274
  %25 = load i32, i32* %i, align 4, !dbg !6276
  %shl26 = shl i32 16, %25, !dbg !6277
  %and27 = and i32 %conv25, %shl26, !dbg !6278
  store i32 %and27, i32* %val, align 4, !dbg !6279
  %26 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6280
  %input28 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %26, i32 0, i32 3, !dbg !6281
  %27 = load %struct.input_dev*, %struct.input_dev** %input28, align 8, !dbg !6281
  %28 = load i32, i32* %i, align 4, !dbg !6282
  %add29 = add i32 691, %28, !dbg !6283
  %29 = load i32, i32* %val, align 4, !dbg !6284
  call void @input_report_key(%struct.input_dev* %27, i32 %add29, i32 %29) #6, !dbg !6285
  br label %for.inc30, !dbg !6286

for.inc30:                                        ; preds = %for.body23
  %30 = load i32, i32* %i, align 4, !dbg !6287
  %inc31 = add i32 %30, 1, !dbg !6287
  store i32 %inc31, i32* %i, align 4, !dbg !6287
  br label %for.cond20, !dbg !6288, !llvm.loop !6289

for.end32:                                        ; preds = %for.cond20
  %31 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6291
  %input33 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %31, i32 0, i32 3, !dbg !6292
  %32 = load %struct.input_dev*, %struct.input_dev** %input33, align 8, !dbg !6292
  %33 = load i8*, i8** %data.addr, align 8, !dbg !6293
  %arrayidx34 = getelementptr i8, i8* %33, i64 3, !dbg !6293
  %34 = load i8, i8* %arrayidx34, align 1, !dbg !6293
  %conv35 = zext i8 %34 to i32, !dbg !6293
  %and36 = and i32 %conv35, 128, !dbg !6294
  call void @input_report_key(%struct.input_dev* %32, i32 688, i32 %and36) #6, !dbg !6295
  store i32 0, i32* %i, align 4, !dbg !6296
  br label %for.cond37, !dbg !6298

for.cond37:                                       ; preds = %for.inc47, %for.end32
  %35 = load i32, i32* %i, align 4, !dbg !6299
  %cmp38 = icmp slt i32 %35, 5, !dbg !6301
  br i1 %cmp38, label %for.body40, label %for.end49, !dbg !6302

for.body40:                                       ; preds = %for.cond37
  %36 = load i8*, i8** %data.addr, align 8, !dbg !6303
  %arrayidx41 = getelementptr i8, i8* %36, i64 4, !dbg !6303
  %37 = load i8, i8* %arrayidx41, align 1, !dbg !6303
  %conv42 = zext i8 %37 to i32, !dbg !6303
  %38 = load i32, i32* %i, align 4, !dbg !6305
  %shl43 = shl i32 1, %38, !dbg !6306
  %and44 = and i32 %conv42, %shl43, !dbg !6307
  store i32 %and44, i32* %val, align 4, !dbg !6308
  %39 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6309
  %input45 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %39, i32 0, i32 3, !dbg !6310
  %40 = load %struct.input_dev*, %struct.input_dev** %input45, align 8, !dbg !6310
  %41 = load i32, i32* %i, align 4, !dbg !6311
  %add46 = add i32 696, %41, !dbg !6312
  %42 = load i32, i32* %val, align 4, !dbg !6313
  call void @input_report_key(%struct.input_dev* %40, i32 %add46, i32 %42) #6, !dbg !6314
  br label %for.inc47, !dbg !6315

for.inc47:                                        ; preds = %for.body40
  %43 = load i32, i32* %i, align 4, !dbg !6316
  %inc48 = add i32 %43, 1, !dbg !6316
  store i32 %inc48, i32* %i, align 4, !dbg !6316
  br label %for.cond37, !dbg !6317, !llvm.loop !6318

for.end49:                                        ; preds = %for.cond37
  %44 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6320
  %input50 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %44, i32 0, i32 3, !dbg !6321
  %45 = load %struct.input_dev*, %struct.input_dev** %input50, align 8, !dbg !6321
  %46 = load i8*, i8** %data.addr, align 8, !dbg !6322
  %arrayidx51 = getelementptr i8, i8* %46, i64 4, !dbg !6322
  %47 = load i8, i8* %arrayidx51, align 1, !dbg !6322
  %conv52 = zext i8 %47 to i32, !dbg !6322
  %and53 = and i32 %conv52, 32, !dbg !6323
  call void @input_report_key(%struct.input_dev* %45, i32 113, i32 %and53) #6, !dbg !6324
  %48 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6325
  %input54 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %48, i32 0, i32 3, !dbg !6326
  %49 = load %struct.input_dev*, %struct.input_dev** %input54, align 8, !dbg !6326
  %50 = load i8*, i8** %data.addr, align 8, !dbg !6327
  %arrayidx55 = getelementptr i8, i8* %50, i64 4, !dbg !6327
  %51 = load i8, i8* %arrayidx55, align 1, !dbg !6327
  %conv56 = zext i8 %51 to i32, !dbg !6327
  %and57 = and i32 %conv56, 64, !dbg !6328
  call void @input_report_key(%struct.input_dev* %49, i32 190, i32 %and57) #6, !dbg !6329
  %52 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6330
  %input58 = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %52, i32 0, i32 3, !dbg !6331
  %53 = load %struct.input_dev*, %struct.input_dev** %input58, align 8, !dbg !6331
  call void @input_sync(%struct.input_dev* %53) #6, !dbg !6332
  ret i32 0, !dbg !6333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @lg_g510_leds_event(%struct.lg_g15_data* %g15, i8* %data, i32 %size) #2 !dbg !6334 {
entry:
  %g15.addr = alloca %struct.lg_g15_data*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %backlight_disabled = alloca i8, align 1
  store %struct.lg_g15_data* %g15, %struct.lg_g15_data** %g15.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lg_g15_data** %g15.addr, metadata !6335, metadata !DIExpression()), !dbg !6336
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6337, metadata !DIExpression()), !dbg !6338
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6339, metadata !DIExpression()), !dbg !6340
  call void @llvm.dbg.declare(metadata i8* %backlight_disabled, metadata !6341, metadata !DIExpression()), !dbg !6342
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6343
  %arrayidx = getelementptr i8, i8* %0, i64 1, !dbg !6343
  %1 = load i8, i8* %arrayidx, align 1, !dbg !6343
  %conv = zext i8 %1 to i32, !dbg !6343
  %and = and i32 %conv, 4, !dbg !6344
  %tobool = icmp ne i32 %and, 0, !dbg !6343
  %frombool = zext i1 %tobool to i8, !dbg !6345
  store i8 %frombool, i8* %backlight_disabled, align 1, !dbg !6345
  %2 = load i8, i8* %backlight_disabled, align 1, !dbg !6346
  %tobool1 = trunc i8 %2 to i1, !dbg !6346
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6348

if.then:                                          ; preds = %entry
  %3 = load %struct.lg_g15_data*, %struct.lg_g15_data** %g15.addr, align 8, !dbg !6349
  %work = getelementptr inbounds %struct.lg_g15_data, %struct.lg_g15_data* %3, i32 0, i32 2, !dbg !6350
  %call = call zeroext i1 @schedule_work(%struct.work_struct* %work) #6, !dbg !6351
  br label %if.end, !dbg !6351

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !6352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !6353 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !6358, metadata !DIExpression()), !dbg !6359
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !6360, metadata !DIExpression()), !dbg !6361
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6362
  %1 = load i32, i32* %code.addr, align 4, !dbg !6363
  %2 = load i32, i32* %value.addr, align 4, !dbg !6364
  %tobool = icmp ne i32 %2, 0, !dbg !6365
  %lnot = xor i1 %tobool, true, !dbg !6365
  %lnot1 = xor i1 %lnot, true, !dbg !6366
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6366
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #6, !dbg !6367
  ret void, !dbg !6368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #2 !dbg !6369 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !6374
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6375
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #6, !dbg !6376
  ret i1 %call, !dbg !6377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !6378 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6379, metadata !DIExpression()), !dbg !6380
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6381
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #6, !dbg !6382
  ret void, !dbg !6383
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #2 !dbg !6384 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !6387, metadata !DIExpression()), !dbg !6388
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6389, metadata !DIExpression()), !dbg !6390
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !6391
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !6392
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #6, !dbg !6393
  ret i1 %call, !dbg !6394
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #5

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4180, !4181, !4182, !4183}
!llvm.ident = !{!4184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_lg_g15_driver_init230", scope: !2, file: !3, line: 903, type: !151, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !147, globals: !4134, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hid/hid-lg-g15.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !65, !72, !80, !86, !91, !97, !104, !114}
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
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lg_g15_model", file: !3, line: 26, baseType: !7, size: 32, elements: !92)
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "LG_G15", value: 0, isUnsigned: true)
!94 = !DIEnumerator(name: "LG_G15_V2", value: 1, isUnsigned: true)
!95 = !DIEnumerator(name: "LG_G510", value: 2, isUnsigned: true)
!96 = !DIEnumerator(name: "LG_G510_USB_AUDIO", value: 3, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !98, line: 29, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "LED_OFF", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "LED_ON", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "LED_HALF", value: 127, isUnsigned: true)
!103 = !DIEnumerator(name: "LED_FULL", value: 255, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lg_g15_led_type", file: !3, line: 33, baseType: !7, size: 32, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DIEnumerator(name: "LG_G15_KBD_BRIGHTNESS", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "LG_G15_LCD_BRIGHTNESS", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "LG_G15_BRIGHTNESS_MAX", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "LG_G15_MACRO_PRESET1", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "LG_G15_MACRO_PRESET2", value: 3, isUnsigned: true)
!111 = !DIEnumerator(name: "LG_G15_MACRO_PRESET3", value: 4, isUnsigned: true)
!112 = !DIEnumerator(name: "LG_G15_MACRO_RECORD", value: 5, isUnsigned: true)
!113 = !DIEnumerator(name: "LG_G15_LED_MAX", value: 6, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 30, baseType: !116, size: 64, elements: !117)
!115 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!116 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!118 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!119 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!120 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!121 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!122 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!123 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!124 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!125 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!126 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!127 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!128 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!129 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!130 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!131 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!132 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!133 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!134 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!135 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!136 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!137 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!138 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!139 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!140 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!141 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!142 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!143 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!144 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!145 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!146 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!147 = !{!148, !151, !152, !812, !243, !4056, !4058, !1324, !4132, !4133}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !150, line: 76, flags: DIFlagFwdDecl)
!150 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report", file: !6, line: 476, size: 16896, elements: !154)
!154 = !{!155, !162, !163, !164, !165, !166, !3863, !3864, !3865}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !153, file: !6, line: 477, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !157, line: 178, size: 128, elements: !158)
!157 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!158 = !{!159, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !156, file: !157, line: 179, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !156, file: !157, line: 179, baseType: !160, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput_list", scope: !153, file: !6, line: 478, baseType: !156, size: 128, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !153, file: !6, line: 479, baseType: !7, size: 32, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !6, line: 480, baseType: !7, size: 32, offset: 288)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !153, file: !6, line: 481, baseType: !7, size: 32, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !153, file: !6, line: 482, baseType: !167, size: 16384, offset: 384)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 16384, elements: !3861)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_field", file: !6, line: 449, size: 896, elements: !170)
!170 = !{!171, !172, !173, !174, !198, !199, !200, !201, !202, !203, !204, !208, !209, !210, !211, !212, !213, !214, !215, !216, !3860}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !169, file: !6, line: 450, baseType: !7, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "logical", scope: !169, file: !6, line: 451, baseType: !7, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !169, file: !6, line: 452, baseType: !7, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !169, file: !6, line: 453, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage", file: !6, line: 431, size: 192, elements: !177)
!177 = !{!178, !179, !180, !181, !185, !186, !189, !192, !193, !194, !195}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !176, file: !6, line: 432, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "collection_index", scope: !176, file: !6, line: 433, baseType: !7, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "usage_index", scope: !176, file: !6, line: 434, baseType: !7, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "resolution_multiplier", scope: !176, file: !6, line: 435, baseType: !182, size: 8, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !183, line: 20, baseType: !184)
!183 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!184 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_factor", scope: !176, file: !6, line: 438, baseType: !182, size: 8, offset: 104)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !176, file: !6, line: 439, baseType: !187, size: 16, offset: 112)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !183, line: 24, baseType: !188)
!188 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !6, line: 440, baseType: !190, size: 8, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !183, line: 21, baseType: !191)
!191 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "hat_min", scope: !176, file: !6, line: 441, baseType: !182, size: 8, offset: 136)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "hat_max", scope: !176, file: !6, line: 442, baseType: !182, size: 8, offset: 144)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hat_dir", scope: !176, file: !6, line: 443, baseType: !182, size: 8, offset: 152)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "wheel_accumulated", scope: !176, file: !6, line: 444, baseType: !196, size: 16, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !183, line: 23, baseType: !197)
!197 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "maxusage", scope: !169, file: !6, line: 454, baseType: !7, size: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !6, line: 455, baseType: !7, size: 32, offset: 224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "report_offset", scope: !169, file: !6, line: 456, baseType: !7, size: 32, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "report_size", scope: !169, file: !6, line: 457, baseType: !7, size: 32, offset: 288)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "report_count", scope: !169, file: !6, line: 458, baseType: !7, size: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !169, file: !6, line: 459, baseType: !7, size: 32, offset: 352)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !169, file: !6, line: 460, baseType: !205, size: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !183, line: 26, baseType: !207)
!207 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "logical_minimum", scope: !169, file: !6, line: 461, baseType: !206, size: 32, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "logical_maximum", scope: !169, file: !6, line: 462, baseType: !206, size: 32, offset: 480)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "physical_minimum", scope: !169, file: !6, line: 463, baseType: !206, size: 32, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "physical_maximum", scope: !169, file: !6, line: 464, baseType: !206, size: 32, offset: 544)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "unit_exponent", scope: !169, file: !6, line: 465, baseType: !206, size: 32, offset: 576)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !169, file: !6, line: 466, baseType: !7, size: 32, offset: 608)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !169, file: !6, line: 467, baseType: !152, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !169, file: !6, line: 468, baseType: !7, size: 32, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "hidinput", scope: !169, file: !6, line: 470, baseType: !217, size: 64, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_input", file: !6, line: 522, size: 576, elements: !219)
!219 = !{!220, !221, !222, !3856, !3857, !3858, !3859}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !218, file: !6, line: 523, baseType: !156, size: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !218, file: !6, line: 524, baseType: !152, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !218, file: !6, line: 525, baseType: !223, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !225, line: 131, size: 10432, elements: !226)
!225 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !231, !232, !233, !241, !246, !247, !251, !252, !253, !254, !255, !256, !260, !261, !262, !263, !264, !265, !283, !288, !3065, !3068, !3069, !3081, !3083, !3086, !3096, !3097, !3098, !3099, !3100, !3104, !3108, !3112, !3116, !3194, !3195, !3196, !3197, !3198, !3847, !3848, !3849, !3850, !3851, !3853, !3854}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !225, line: 132, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !224, file: !225, line: 133, baseType: !228, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !224, file: !225, line: 134, baseType: !228, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !224, file: !225, line: 135, baseType: !234, size: 64, offset: 192)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !235, line: 59, size: 64, elements: !236)
!235 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!236 = !{!237, !238, !239, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !234, file: !235, line: 60, baseType: !187, size: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !234, file: !235, line: 61, baseType: !187, size: 16, offset: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !234, file: !235, line: 62, baseType: !187, size: 16, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !234, file: !235, line: 63, baseType: !187, size: 16, offset: 48)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !224, file: !225, line: 137, baseType: !242, size: 64, offset: 256)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 64, elements: !244)
!243 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!244 = !{!245}
!245 = !DISubrange(count: 1)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !224, file: !225, line: 139, baseType: !242, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !224, file: !225, line: 140, baseType: !248, size: 768, offset: 384)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 768, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 12)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !224, file: !225, line: 141, baseType: !242, size: 64, offset: 1152)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !224, file: !225, line: 142, baseType: !242, size: 64, offset: 1216)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !224, file: !225, line: 143, baseType: !242, size: 64, offset: 1280)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !224, file: !225, line: 144, baseType: !242, size: 64, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !224, file: !225, line: 145, baseType: !242, size: 64, offset: 1408)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !224, file: !225, line: 146, baseType: !257, size: 128, offset: 1472)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 128, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 2)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !224, file: !225, line: 147, baseType: !242, size: 64, offset: 1600)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !224, file: !225, line: 149, baseType: !7, size: 32, offset: 1664)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !224, file: !225, line: 151, baseType: !7, size: 32, offset: 1696)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !224, file: !225, line: 152, baseType: !7, size: 32, offset: 1728)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !224, file: !225, line: 153, baseType: !151, size: 64, offset: 1792)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !224, file: !225, line: 155, baseType: !266, size: 64, offset: 1856)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!207, !223, !269, !282}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !235, line: 114, size: 320, elements: !272)
!272 = !{!273, !274, !275, !276, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !235, line: 116, baseType: !190, size: 8)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !271, file: !235, line: 117, baseType: !190, size: 8, offset: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !271, file: !235, line: 118, baseType: !187, size: 16, offset: 16)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !271, file: !235, line: 119, baseType: !277, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !183, line: 27, baseType: !7)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !271, file: !235, line: 120, baseType: !279, size: 256, offset: 64)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 32)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !224, file: !225, line: 158, baseType: !284, size: 64, offset: 1920)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!207, !223, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !224, file: !225, line: 161, baseType: !289, size: 64, offset: 1984)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !225, line: 534, size: 896, elements: !291)
!291 = !{!292, !359, !363, !367, !373, !374, !378, !379, !380, !411, !412, !413}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !290, file: !225, line: 535, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!207, !223, !296, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !235, line: 450, size: 384, elements: !298)
!298 = !{!299, !300, !301, !302, !307, !312}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !297, file: !235, line: 451, baseType: !187, size: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !297, file: !235, line: 452, baseType: !196, size: 16, offset: 16)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !297, file: !235, line: 453, baseType: !187, size: 16, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !297, file: !235, line: 454, baseType: !303, size: 32, offset: 48)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !235, line: 316, size: 32, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !303, file: !235, line: 317, baseType: !187, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !303, file: !235, line: 318, baseType: !187, size: 16, offset: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !297, file: !235, line: 455, baseType: !308, size: 32, offset: 80)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !235, line: 306, size: 32, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !308, file: !235, line: 307, baseType: !187, size: 16)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !308, file: !235, line: 308, baseType: !187, size: 16, offset: 16)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !297, file: !235, line: 463, baseType: !313, size: 256, offset: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !235, line: 457, size: 256, elements: !314)
!314 = !{!315, !326, !332, !344, !354}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !313, file: !235, line: 458, baseType: !316, size: 80)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !235, line: 345, size: 80, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !316, file: !235, line: 346, baseType: !196, size: 16)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !316, file: !235, line: 347, baseType: !320, size: 64, offset: 16)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !235, line: 333, size: 64, elements: !321)
!321 = !{!322, !323, !324, !325}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !320, file: !235, line: 334, baseType: !187, size: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !320, file: !235, line: 335, baseType: !187, size: 16, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !320, file: !235, line: 336, baseType: !187, size: 16, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !320, file: !235, line: 337, baseType: !187, size: 16, offset: 48)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !313, file: !235, line: 459, baseType: !327, size: 96)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !235, line: 356, size: 96, elements: !328)
!328 = !{!329, !330, !331}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !327, file: !235, line: 357, baseType: !196, size: 16)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !327, file: !235, line: 358, baseType: !196, size: 16, offset: 16)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !327, file: !235, line: 359, baseType: !320, size: 64, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !313, file: !235, line: 460, baseType: !333, size: 256)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !235, line: 401, size: 256, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !333, file: !235, line: 402, baseType: !187, size: 16)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !333, file: !235, line: 403, baseType: !187, size: 16, offset: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !333, file: !235, line: 404, baseType: !196, size: 16, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !333, file: !235, line: 405, baseType: !196, size: 16, offset: 48)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !333, file: !235, line: 406, baseType: !187, size: 16, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !333, file: !235, line: 408, baseType: !320, size: 64, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !333, file: !235, line: 410, baseType: !277, size: 32, offset: 160)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !333, file: !235, line: 411, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !313, file: !235, line: 461, baseType: !345, size: 192)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 192, elements: !258)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !235, line: 372, size: 96, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !346, file: !235, line: 373, baseType: !187, size: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !346, file: !235, line: 374, baseType: !187, size: 16, offset: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !346, file: !235, line: 376, baseType: !196, size: 16, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !346, file: !235, line: 377, baseType: !196, size: 16, offset: 48)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !346, file: !235, line: 379, baseType: !187, size: 16, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !346, file: !235, line: 380, baseType: !196, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !313, file: !235, line: 462, baseType: !355, size: 32)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !235, line: 422, size: 32, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !355, file: !235, line: 423, baseType: !187, size: 16)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !355, file: !235, line: 424, baseType: !187, size: 16, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !290, file: !225, line: 537, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!207, !223, !207}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !290, file: !225, line: 539, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!207, !223, !207, !207}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !290, file: !225, line: 540, baseType: !368, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !223, !371}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !372, line: 19, baseType: !187)
!372 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !290, file: !225, line: 541, baseType: !368, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !290, file: !225, line: 543, baseType: !375, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !289}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !290, file: !225, line: 545, baseType: !151, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !290, file: !225, line: 547, baseType: !257, size: 128, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !290, file: !225, line: 549, baseType: !381, size: 192, offset: 576)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !382, line: 53, size: 192, elements: !383)
!382 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!383 = !{!384, !394, !410}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !381, file: !382, line: 54, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !386, line: 13, baseType: !387)
!386 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !157, line: 175, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 173, size: 64, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !388, file: !157, line: 174, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !372, line: 22, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !183, line: 30, baseType: !393)
!393 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !381, file: !382, line: 55, baseType: !395, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !396, line: 83, baseType: !397)
!396 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !396, line: 71, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !396, line: 72, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !396, line: 72, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !400, file: !396, line: 73, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !396, line: 20, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !403, file: !396, line: 21, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !407, line: 25, baseType: !408)
!407 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 25, elements: !409)
!409 = !{}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !381, file: !382, line: 59, baseType: !156, size: 128, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !290, file: !225, line: 551, baseType: !207, size: 32, offset: 768)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !290, file: !225, line: 552, baseType: !296, size: 64, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !290, file: !225, line: 553, baseType: !414, offset: 896)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, elements: !2281)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !417)
!417 = !{!418, !436, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3048, !3049, !3058, !3059, !3060, !3061, !3062, !3063, !3064}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !416, file: !37, line: 920, baseType: !419, size: 128)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !37, line: 917, size: 128, elements: !420)
!420 = !{!421, !427}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !419, file: !37, line: 918, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !423, line: 58, size: 64, elements: !424)
!423 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !423, line: 59, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !419, file: !37, line: 919, baseType: !428, size: 128, align: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !157, line: 216, size: 128, align: 64, elements: !429)
!429 = !{!430, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !157, line: 217, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !428, file: !157, line: 218, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !431}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !416, file: !37, line: 921, baseType: !437, size: 128, offset: 128)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !438, line: 8, size: 128, elements: !439)
!438 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440, !444}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !437, file: !438, line: 9, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !443, line: 18, flags: DIFlagFwdDecl)
!443 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !437, file: !438, line: 10, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !443, line: 89, size: 1536, elements: !447)
!447 = !{!448, !449, !459, !467, !468, !487, !2998, !3000, !3012, !3013, !3014, !3015, !3016, !3022, !3023, !3024}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !446, file: !443, line: 91, baseType: !7, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !446, file: !443, line: 92, baseType: !450, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !451, line: 277, baseType: !452)
!451 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !451, line: 277, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !452, file: !451, line: 277, baseType: !455, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !451, line: 70, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !451, line: 65, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !456, file: !451, line: 66, baseType: !7, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !446, file: !443, line: 93, baseType: !460, size: 128, offset: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !461, line: 38, size: 128, elements: !462)
!461 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!462 = !{!463, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !461, line: 39, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !460, file: !461, line: 39, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !446, file: !443, line: 94, baseType: !445, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !446, file: !443, line: 95, baseType: !469, size: 128, offset: 256)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !443, line: 47, size: 128, elements: !470)
!470 = !{!471, !484}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !443, line: 48, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !443, line: 48, size: 64, elements: !473)
!473 = !{!474, !480}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !443, line: 49, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !472, file: !443, line: 49, size: 64, elements: !476)
!476 = !{!477, !479}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !475, file: !443, line: 50, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !372, line: 21, baseType: !277)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !475, file: !443, line: 50, baseType: !478, size: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !472, file: !443, line: 52, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !372, line: 23, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !183, line: 31, baseType: !483)
!483 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !469, file: !443, line: 54, baseType: !485, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !446, file: !443, line: 96, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !490)
!490 = !{!491, !493, !494, !503, !510, !511, !664, !2709, !2710, !2711, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2974, !2982, !2983, !2984, !2994, !2995, !2996, !2997}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !489, file: !37, line: 611, baseType: !492, size: 16)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !157, line: 19, baseType: !188)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !489, file: !37, line: 612, baseType: !188, size: 16, offset: 16)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !489, file: !37, line: 613, baseType: !495, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !496, line: 23, baseType: !497)
!496 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !496, line: 21, size: 32, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !497, file: !496, line: 22, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !157, line: 32, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !502, line: 49, baseType: !7)
!502 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !489, file: !37, line: 614, baseType: !504, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !496, line: 28, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !496, line: 26, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !505, file: !496, line: 27, baseType: !508, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !157, line: 33, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !502, line: 50, baseType: !7)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !489, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !489, file: !37, line: 622, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !515)
!515 = !{!516, !520, !533, !537, !543, !548, !554, !558, !562, !566, !570, !571, !577, !581, !605, !634, !644, !650, !655, !659, !660}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !514, file: !37, line: 1865, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!445, !488, !445, !7}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !514, file: !37, line: 1866, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!228, !445, !488, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !526, line: 10, size: 128, elements: !527)
!526 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!527 = !{!528, !532}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !525, file: !526, line: 11, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !151}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !525, file: !526, line: 12, baseType: !151, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !514, file: !37, line: 1867, baseType: !534, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!207, !488, !207}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !514, file: !37, line: 1868, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!541, !488, !207}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !514, file: !37, line: 1870, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!207, !445, !547, !207}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !514, file: !37, line: 1872, baseType: !549, size: 64, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!207, !488, !445, !492, !552}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !157, line: 30, baseType: !553)
!553 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !514, file: !37, line: 1873, baseType: !555, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!207, !445, !488, !445}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !514, file: !37, line: 1874, baseType: !559, size: 64, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!207, !488, !445}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !514, file: !37, line: 1875, baseType: !563, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!207, !488, !445, !228}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !514, file: !37, line: 1876, baseType: !567, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!207, !488, !445, !492}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !514, file: !37, line: 1877, baseType: !559, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !514, file: !37, line: 1878, baseType: !572, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!207, !488, !445, !492, !575}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !157, line: 16, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !157, line: 13, baseType: !478)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !514, file: !37, line: 1879, baseType: !578, size: 64, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!207, !488, !445, !488, !445, !7}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !514, file: !37, line: 1881, baseType: !582, size: 64, offset: 832)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!207, !445, !585}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !595, !602, !603, !604}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !586, file: !37, line: 220, baseType: !7, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !586, file: !37, line: 221, baseType: !492, size: 16, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !586, file: !37, line: 222, baseType: !495, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !586, file: !37, line: 223, baseType: !504, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !586, file: !37, line: 224, baseType: !593, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !157, line: 46, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !502, line: 88, baseType: !393)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !586, file: !37, line: 225, baseType: !596, size: 128, offset: 192)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !597, line: 13, size: 128, elements: !598)
!597 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!598 = !{!599, !601}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !596, file: !597, line: 14, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !597, line: 8, baseType: !392)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !596, file: !597, line: 15, baseType: !116, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !586, file: !37, line: 226, baseType: !596, size: 128, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !586, file: !37, line: 227, baseType: !596, size: 128, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !586, file: !37, line: 234, baseType: !415, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !514, file: !37, line: 1882, baseType: !606, size: 64, offset: 896)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!207, !609, !611, !478, !7}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !613, line: 22, size: 1152, elements: !614)
!613 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!614 = !{!615, !616, !617, !618, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !612, file: !613, line: 23, baseType: !478, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !612, file: !613, line: 24, baseType: !492, size: 16, offset: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !612, file: !613, line: 25, baseType: !7, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !612, file: !613, line: 26, baseType: !619, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !157, line: 104, baseType: !478)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !612, file: !613, line: 27, baseType: !481, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !612, file: !613, line: 28, baseType: !481, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !612, file: !613, line: 37, baseType: !481, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !612, file: !613, line: 38, baseType: !575, size: 32, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !612, file: !613, line: 39, baseType: !575, size: 32, offset: 352)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !612, file: !613, line: 40, baseType: !495, size: 32, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !612, file: !613, line: 41, baseType: !504, size: 32, offset: 416)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !612, file: !613, line: 42, baseType: !593, size: 64, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !612, file: !613, line: 43, baseType: !596, size: 128, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !612, file: !613, line: 44, baseType: !596, size: 128, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !612, file: !613, line: 45, baseType: !596, size: 128, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !612, file: !613, line: 46, baseType: !596, size: 128, offset: 896)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !612, file: !613, line: 47, baseType: !481, size: 64, offset: 1024)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !612, file: !613, line: 48, baseType: !481, size: 64, offset: 1088)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !514, file: !37, line: 1883, baseType: !635, size: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!638, !445, !547, !641}
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !157, line: 60, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !502, line: 73, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !502, line: 15, baseType: !116)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !157, line: 55, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !502, line: 72, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !502, line: 16, baseType: !243)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !514, file: !37, line: 1884, baseType: !645, size: 64, offset: 1024)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!207, !488, !648, !481, !481}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !514, file: !37, line: 1886, baseType: !651, size: 64, offset: 1088)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!207, !488, !654, !207}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !514, file: !37, line: 1887, baseType: !656, size: 64, offset: 1152)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!207, !488, !445, !415, !7, !492}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !514, file: !37, line: 1890, baseType: !567, size: 64, offset: 1216)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !514, file: !37, line: 1891, baseType: !661, size: 64, offset: 1280)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!207, !488, !541, !207}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !489, file: !37, line: 623, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !667)
!667 = !{!668, !669, !670, !671, !672, !673, !722, !2317, !2399, !2482, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2498, !2502, !2503, !2506, !2507, !2510, !2511, !2512, !2553, !2579, !2580, !2581, !2582, !2583, !2584, !2587, !2589, !2596, !2597, !2599, !2600, !2601, !2660, !2661, !2676, !2677, !2678, !2679, !2680, !2683, !2684, !2685, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !666, file: !37, line: 1417, baseType: !156, size: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !666, file: !37, line: 1418, baseType: !575, size: 32, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !666, file: !37, line: 1419, baseType: !191, size: 8, offset: 160)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !666, file: !37, line: 1420, baseType: !243, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !666, file: !37, line: 1421, baseType: !593, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !666, file: !37, line: 1422, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !676)
!676 = !{!677, !678, !679, !686, !690, !694, !698, !699, !700, !710, !713, !714, !715, !719, !720, !721}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !675, file: !37, line: 2229, baseType: !228, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !675, file: !37, line: 2230, baseType: !207, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !675, file: !37, line: 2238, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!207, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !685, line: 28, flags: DIFlagFwdDecl)
!685 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!686 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !675, file: !37, line: 2239, baseType: !687, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !675, file: !37, line: 2240, baseType: !691, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!445, !674, !207, !228, !151}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !675, file: !37, line: 2242, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !665}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !675, file: !37, line: 2243, baseType: !148, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !675, file: !37, line: 2244, baseType: !674, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !675, file: !37, line: 2245, baseType: !701, size: 64, offset: 512)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !157, line: 182, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !701, file: !157, line: 183, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !157, line: 186, size: 128, elements: !706)
!706 = !{!707, !708}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !157, line: 187, baseType: !704, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !705, file: !157, line: 187, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !675, file: !37, line: 2247, baseType: !711, offset: 576)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !712, line: 187, elements: !409)
!712 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !675, file: !37, line: 2248, baseType: !711, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !675, file: !37, line: 2249, baseType: !711, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !675, file: !37, line: 2250, baseType: !716, offset: 576)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !711, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 3)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !675, file: !37, line: 2252, baseType: !711, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !675, file: !37, line: 2253, baseType: !711, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !675, file: !37, line: 2254, baseType: !711, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !666, file: !37, line: 1423, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !726)
!726 = !{!727, !731, !735, !736, !740, !746, !750, !751, !752, !756, !760, !761, !762, !763, !769, !774, !775, !782, !783, !784, !785, !2301, !2316}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !725, file: !37, line: 1936, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!488, !665}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !725, file: !37, line: 1937, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{null, !488}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !725, file: !37, line: 1938, baseType: !732, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !725, file: !37, line: 1940, baseType: !737, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !488, !207}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !725, file: !37, line: 1941, baseType: !741, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!207, !488, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !725, file: !37, line: 1942, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!207, !488}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !725, file: !37, line: 1943, baseType: !732, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !725, file: !37, line: 1944, baseType: !695, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !725, file: !37, line: 1945, baseType: !753, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!207, !665, !207}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !725, file: !37, line: 1946, baseType: !757, size: 64, offset: 576)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!207, !665}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !725, file: !37, line: 1947, baseType: !757, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !725, file: !37, line: 1948, baseType: !757, size: 64, offset: 704)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !725, file: !37, line: 1949, baseType: !757, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !725, file: !37, line: 1950, baseType: !764, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!207, !445, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !725, file: !37, line: 1951, baseType: !770, size: 64, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!207, !665, !773, !547}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !725, file: !37, line: 1952, baseType: !695, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !725, file: !37, line: 1954, baseType: !776, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!207, !779, !445}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !781, line: 539, flags: DIFlagFwdDecl)
!781 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !725, file: !37, line: 1955, baseType: !776, size: 64, offset: 1088)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !725, file: !37, line: 1956, baseType: !776, size: 64, offset: 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !725, file: !37, line: 1957, baseType: !776, size: 64, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !725, file: !37, line: 1963, baseType: !786, size: 64, offset: 1280)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!207, !665, !789, !812}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !791, line: 68, size: 512, align: 128, elements: !792)
!791 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793, !794, !2293, !2300}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !791, line: 69, baseType: !243, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 77, baseType: !795, size: 320, offset: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 77, size: 320, elements: !796)
!796 = !{!797, !976, !981, !1009, !1017, !1023, !2285, !2292}
!797 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 78, baseType: !798, size: 320)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 78, size: 320, elements: !799)
!799 = !{!800, !801, !974, !975}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !798, file: !791, line: 84, baseType: !156, size: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !798, file: !791, line: 86, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !804)
!804 = !{!805, !806, !814, !815, !820, !835, !844, !845, !846, !847, !967, !968, !971, !972, !973}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !803, file: !37, line: 452, baseType: !488, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !803, file: !37, line: 453, baseType: !807, size: 128, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !808, line: 292, size: 128, elements: !809)
!808 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !811, !813}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !807, file: !808, line: 293, baseType: !395)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !807, file: !808, line: 295, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !157, line: 148, baseType: !7)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !807, file: !808, line: 296, baseType: !151, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !803, file: !37, line: 454, baseType: !812, size: 32, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !803, file: !37, line: 455, baseType: !816, size: 32, offset: 224)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !157, line: 168, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !157, line: 166, size: 32, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !817, file: !157, line: 167, baseType: !207, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !803, file: !37, line: 460, baseType: !821, size: 128, offset: 256)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !822, line: 125, size: 128, elements: !823)
!822 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!823 = !{!824, !834}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !821, file: !822, line: 126, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !822, line: 31, size: 64, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !825, file: !822, line: 32, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !822, line: 24, size: 192, align: 64, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !829, file: !822, line: 25, baseType: !243, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !829, file: !822, line: 26, baseType: !828, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !829, file: !822, line: 27, baseType: !828, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !821, file: !822, line: 127, baseType: !828, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !803, file: !37, line: 461, baseType: !836, size: 256, offset: 384)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !837, line: 35, size: 256, elements: !838)
!837 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!838 = !{!839, !840, !841, !843}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !836, file: !837, line: 36, baseType: !385, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !836, file: !837, line: 42, baseType: !385, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !836, file: !837, line: 46, baseType: !842, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !396, line: 29, baseType: !403)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !836, file: !837, line: 47, baseType: !156, size: 128, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !803, file: !37, line: 462, baseType: !243, size: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !803, file: !37, line: 463, baseType: !243, size: 64, offset: 704)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !803, file: !37, line: 464, baseType: !243, size: 64, offset: 768)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !803, file: !37, line: 465, baseType: !848, size: 64, offset: 832)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !851)
!851 = !{!852, !856, !860, !864, !868, !872, !878, !884, !888, !893, !897, !901, !905, !931, !935, !941, !942, !943, !947, !952, !956, !963}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !850, file: !37, line: 368, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!207, !789, !744}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !850, file: !37, line: 369, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!207, !415, !789}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !850, file: !37, line: 372, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!207, !802, !744}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !850, file: !37, line: 375, baseType: !865, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!207, !789}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !850, file: !37, line: 381, baseType: !869, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!207, !415, !802, !160, !7}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !850, file: !37, line: 383, baseType: !873, size: 64, offset: 320)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !850, file: !37, line: 385, baseType: !879, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!207, !415, !802, !593, !7, !7, !882, !883}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !850, file: !37, line: 388, baseType: !885, size: 64, offset: 448)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!207, !415, !802, !593, !7, !7, !789, !151}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !850, file: !37, line: 393, baseType: !889, size: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!892, !802, !892}
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !157, line: 125, baseType: !481)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !850, file: !37, line: 394, baseType: !894, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !789, !7, !7}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !850, file: !37, line: 395, baseType: !898, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!207, !789, !812}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !850, file: !37, line: 396, baseType: !902, size: 64, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !789}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !850, file: !37, line: 397, baseType: !906, size: 64, offset: 768)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!638, !909, !929}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !911)
!911 = !{!912, !913, !914, !918, !919, !920, !921, !922}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !910, file: !37, line: 321, baseType: !415, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !910, file: !37, line: 326, baseType: !593, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !910, file: !37, line: 327, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !909, !116, !116}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !910, file: !37, line: 328, baseType: !151, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !910, file: !37, line: 329, baseType: !207, size: 32, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !910, file: !37, line: 330, baseType: !371, size: 16, offset: 288)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !910, file: !37, line: 331, baseType: !371, size: 16, offset: 304)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !37, line: 332, baseType: !923, size: 64, offset: 320)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !37, line: 332, size: 64, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !923, file: !37, line: 333, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !923, file: !37, line: 334, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !850, file: !37, line: 402, baseType: !932, size: 64, offset: 832)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!207, !802, !789, !789, !12}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !850, file: !37, line: 404, baseType: !936, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!552, !789, !939}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !940, line: 305, baseType: !7)
!940 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!941 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !850, file: !37, line: 405, baseType: !902, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !850, file: !37, line: 406, baseType: !865, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !850, file: !37, line: 407, baseType: !944, size: 64, offset: 1088)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!207, !789, !243, !243}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !850, file: !37, line: 409, baseType: !948, size: 64, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !789, !951, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !850, file: !37, line: 410, baseType: !953, size: 64, offset: 1216)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!207, !802, !789}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !850, file: !37, line: 413, baseType: !957, size: 64, offset: 1280)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!207, !960, !415, !962}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !850, file: !37, line: 415, baseType: !964, size: 64, offset: 1344)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null, !415}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !37, line: 466, baseType: !243, size: 64, offset: 896)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !803, file: !37, line: 467, baseType: !969, size: 32, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !970, line: 8, baseType: !478)
!970 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!971 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !803, file: !37, line: 468, baseType: !395, offset: 992)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !803, file: !37, line: 469, baseType: !156, size: 128, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !803, file: !37, line: 470, baseType: !151, size: 64, offset: 1152)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !798, file: !791, line: 87, baseType: !243, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !798, file: !791, line: 94, baseType: !243, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 96, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 96, size: 64, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !977, file: !791, line: 101, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !157, line: 143, baseType: !481)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 103, baseType: !982, size: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 103, size: 320, elements: !983)
!983 = !{!984, !994, !997, !998}
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !791, line: 104, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !791, line: 104, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !985, file: !791, line: 105, baseType: !156, size: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !791, line: 106, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !791, line: 106, size: 128, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !989, file: !791, line: 107, baseType: !789, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !989, file: !791, line: 109, baseType: !207, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !989, file: !791, line: 110, baseType: !207, size: 32, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !982, file: !791, line: 117, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !791, line: 117, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !982, file: !791, line: 119, baseType: !151, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !791, line: 120, baseType: !999, size: 64, offset: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !791, line: 120, size: 64, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !999, file: !791, line: 121, baseType: !151, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !999, file: !791, line: 122, baseType: !243, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !791, line: 123, baseType: !1004, size: 32)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !999, file: !791, line: 123, size: 32, elements: !1005)
!1005 = !{!1006, !1007, !1008}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1004, file: !791, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1004, file: !791, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1004, file: !791, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 130, baseType: !1010, size: 192)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 130, size: 192, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1010, file: !791, line: 131, baseType: !243, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1010, file: !791, line: 134, baseType: !191, size: 8, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1010, file: !791, line: 135, baseType: !191, size: 8, offset: 72)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1010, file: !791, line: 136, baseType: !816, size: 32, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1010, file: !791, line: 137, baseType: !7, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 139, baseType: !1018, size: 256)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 139, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1018, file: !791, line: 140, baseType: !243, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1018, file: !791, line: 141, baseType: !816, size: 32, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1018, file: !791, line: 143, baseType: !156, size: 128, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 145, baseType: !1024, size: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 145, size: 256, elements: !1025)
!1025 = !{!1026, !1027, !1029, !1030, !2284}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1024, file: !791, line: 146, baseType: !243, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1024, file: !791, line: 147, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !781, line: 509, baseType: !789)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1024, file: !791, line: 148, baseType: !243, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !791, line: 149, baseType: !1031, size: 64, offset: 192)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !791, line: 149, size: 64, elements: !1032)
!1032 = !{!1033, !2283}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1031, file: !791, line: 150, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !791, line: 388, size: 7296, elements: !1036)
!1036 = !{!1037, !2279}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !791, line: 389, baseType: !1038, size: 7296)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !791, line: 389, size: 7296, elements: !1039)
!1039 = !{!1040, !1078, !1079, !1080, !1084, !1085, !1086, !1087, !1088, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1129, !1137, !1140, !1178, !1179, !2263, !2264, !2267, !2268, !2269, !2272, !2273, !2274, !2277, !2278}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1038, file: !791, line: 390, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !791, line: 305, size: 1472, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1058, !1059, !1064, !1065, !1068, !1072, !1073, !1074, !1075, !1076}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1042, file: !791, line: 308, baseType: !243, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1042, file: !791, line: 309, baseType: !243, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1042, file: !791, line: 313, baseType: !1041, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1042, file: !791, line: 313, baseType: !1041, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1042, file: !791, line: 315, baseType: !829, size: 192, align: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1042, file: !791, line: 323, baseType: !243, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1042, file: !791, line: 327, baseType: !1034, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1042, file: !791, line: 333, baseType: !1052, size: 64, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !781, line: 284, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !781, line: 284, size: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1053, file: !781, line: 284, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1057, line: 19, baseType: !243)
!1057 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1042, file: !791, line: 334, baseType: !243, size: 64, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1042, file: !791, line: 343, baseType: !1060, size: 256, offset: 704)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !791, line: 340, size: 256, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1060, file: !791, line: 341, baseType: !829, size: 192, align: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1060, file: !791, line: 342, baseType: !243, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1042, file: !791, line: 351, baseType: !156, size: 128, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1042, file: !791, line: 353, baseType: !1066, size: 64, offset: 1088)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !791, line: 353, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1042, file: !791, line: 356, baseType: !1069, size: 64, offset: 1152)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1071)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !791, line: 356, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1042, file: !791, line: 359, baseType: !243, size: 64, offset: 1216)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1042, file: !791, line: 361, baseType: !415, size: 64, offset: 1280)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1042, file: !791, line: 362, baseType: !151, size: 64, offset: 1344)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1042, file: !791, line: 365, baseType: !385, size: 64, offset: 1408)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1042, file: !791, line: 373, baseType: !1077, offset: 1472)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !791, line: 296, elements: !409)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1038, file: !791, line: 391, baseType: !825, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1038, file: !791, line: 392, baseType: !481, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1038, file: !791, line: 394, baseType: !1081, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!243, !415, !243, !243, !243, !243}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1038, file: !791, line: 398, baseType: !243, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1038, file: !791, line: 399, baseType: !243, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1038, file: !791, line: 405, baseType: !243, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1038, file: !791, line: 406, baseType: !243, size: 64, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1038, file: !791, line: 407, baseType: !1089, size: 64, offset: 512)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !781, line: 286, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 286, size: 64, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1091, file: !781, line: 286, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1057, line: 18, baseType: !243)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1038, file: !791, line: 416, baseType: !816, size: 32, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1038, file: !791, line: 428, baseType: !816, size: 32, offset: 608)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1038, file: !791, line: 437, baseType: !816, size: 32, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1038, file: !791, line: 447, baseType: !816, size: 32, offset: 672)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1038, file: !791, line: 450, baseType: !385, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1038, file: !791, line: 452, baseType: !207, size: 32, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1038, file: !791, line: 454, baseType: !395, offset: 800)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1038, file: !791, line: 457, baseType: !836, size: 256, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1038, file: !791, line: 459, baseType: !156, size: 128, offset: 1088)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1038, file: !791, line: 466, baseType: !243, size: 64, offset: 1216)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1038, file: !791, line: 467, baseType: !243, size: 64, offset: 1280)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1038, file: !791, line: 469, baseType: !243, size: 64, offset: 1344)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1038, file: !791, line: 470, baseType: !243, size: 64, offset: 1408)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1038, file: !791, line: 471, baseType: !387, size: 64, offset: 1472)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1038, file: !791, line: 472, baseType: !243, size: 64, offset: 1536)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1038, file: !791, line: 473, baseType: !243, size: 64, offset: 1600)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1038, file: !791, line: 474, baseType: !243, size: 64, offset: 1664)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1038, file: !791, line: 475, baseType: !243, size: 64, offset: 1728)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1038, file: !791, line: 477, baseType: !395, offset: 1792)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1038, file: !791, line: 478, baseType: !243, size: 64, offset: 1792)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1038, file: !791, line: 478, baseType: !243, size: 64, offset: 1856)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1038, file: !791, line: 478, baseType: !243, size: 64, offset: 1920)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1038, file: !791, line: 478, baseType: !243, size: 64, offset: 1984)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1038, file: !791, line: 479, baseType: !243, size: 64, offset: 2048)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1038, file: !791, line: 479, baseType: !243, size: 64, offset: 2112)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1038, file: !791, line: 479, baseType: !243, size: 64, offset: 2176)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1038, file: !791, line: 480, baseType: !243, size: 64, offset: 2240)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1038, file: !791, line: 480, baseType: !243, size: 64, offset: 2304)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1038, file: !791, line: 480, baseType: !243, size: 64, offset: 2368)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1038, file: !791, line: 480, baseType: !243, size: 64, offset: 2432)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1038, file: !791, line: 482, baseType: !1126, size: 2816, offset: 2496)
!1126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 2816, elements: !1127)
!1127 = !{!1128}
!1128 = !DISubrange(count: 44)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1038, file: !791, line: 488, baseType: !1130, size: 256, offset: 5312)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1131, line: 60, size: 256, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1130, file: !1131, line: 61, baseType: !1134, size: 256)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !1135)
!1135 = !{!1136}
!1136 = !DISubrange(count: 4)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1038, file: !791, line: 490, baseType: !1138, size: 64, offset: 5568)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !791, line: 490, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1038, file: !791, line: 493, baseType: !1141, size: 896, offset: 5632)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1142, line: 53, baseType: !1143)
!1142 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1142, line: 13, size: 896, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1151, !1152, !1153, !1154, !1174, !1175, !1176}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1143, file: !1142, line: 18, baseType: !481, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1143, file: !1142, line: 28, baseType: !387, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1143, file: !1142, line: 31, baseType: !836, size: 256, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1143, file: !1142, line: 32, baseType: !1149, size: 64, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1142, line: 32, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1143, file: !1142, line: 37, baseType: !188, size: 16, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1143, file: !1142, line: 40, baseType: !381, size: 192, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1143, file: !1142, line: 41, baseType: !151, size: 64, offset: 704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1143, file: !1142, line: 42, baseType: !1155, size: 64, offset: 768)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1158, line: 13, size: 896, elements: !1159)
!1158 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1157, file: !1158, line: 14, baseType: !151, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1157, file: !1158, line: 15, baseType: !243, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1157, file: !1158, line: 17, baseType: !243, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1157, file: !1158, line: 17, baseType: !243, size: 64, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1157, file: !1158, line: 19, baseType: !116, size: 64, offset: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1157, file: !1158, line: 21, baseType: !116, size: 64, offset: 320)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1157, file: !1158, line: 22, baseType: !116, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1157, file: !1158, line: 23, baseType: !116, size: 64, offset: 448)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1157, file: !1158, line: 24, baseType: !116, size: 64, offset: 512)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1157, file: !1158, line: 25, baseType: !116, size: 64, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1157, file: !1158, line: 26, baseType: !116, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1157, file: !1158, line: 27, baseType: !116, size: 64, offset: 704)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1157, file: !1158, line: 28, baseType: !116, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1157, file: !1158, line: 29, baseType: !116, size: 64, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1143, file: !1142, line: 44, baseType: !816, size: 32, offset: 832)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1143, file: !1142, line: 50, baseType: !371, size: 16, offset: 864)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1143, file: !1142, line: 51, baseType: !1177, size: 16, offset: 880)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !372, line: 18, baseType: !196)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !791, line: 495, baseType: !243, size: 64, offset: 6528)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1038, file: !791, line: 497, baseType: !1180, size: 64, offset: 6592)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !791, line: 381, size: 384, elements: !1182)
!1182 = !{!1183, !1184, !2262}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1181, file: !791, line: 382, baseType: !816, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1181, file: !791, line: 383, baseType: !1185, size: 128, offset: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !791, line: 376, size: 128, elements: !1186)
!1186 = !{!1187, !2260}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1185, file: !791, line: 377, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1190, line: 640, size: 48640, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192, !1198, !1200, !1201, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1218, !1236, !1247, !1331, !1332, !1333, !1341, !1342, !1344, !1345, !1346, !1347, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1425, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1463, !1465, !1466, !1467, !1479, !1480, !1481, !1482, !1483, !1484, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1508, !1513, !1695, !1696, !1697, !1698, !1702, !1705, !1708, !1711, !1714, !1717, !1818, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1866, !1867, !1868, !1869, !1870, !1875, !1876, !1877, !1880, !1881, !1884, !1887, !1890, !1893, !1935, !1938, !1939, !2018, !2019, !2022, !2023, !2026, !2027, !2028, !2032, !2033, !2034, !2047, !2048, !2049, !2059, !2064, !2067, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1189, file: !1190, line: 646, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1194, line: 56, size: 128, elements: !1195)
!1194 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !1194, line: 57, baseType: !243, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1193, file: !1194, line: 58, baseType: !478, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1189, file: !1190, line: 649, baseType: !1199, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1189, file: !1190, line: 657, baseType: !151, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1189, file: !1190, line: 658, baseType: !1202, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1203, line: 113, baseType: !1204)
!1203 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1203, line: 111, size: 32, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1204, file: !1203, line: 112, baseType: !816, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1189, file: !1190, line: 660, baseType: !7, size: 32, offset: 288)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1189, file: !1190, line: 661, baseType: !7, size: 32, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1189, file: !1190, line: 684, baseType: !207, size: 32, offset: 352)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1189, file: !1190, line: 686, baseType: !207, size: 32, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1189, file: !1190, line: 687, baseType: !207, size: 32, offset: 416)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1189, file: !1190, line: 688, baseType: !207, size: 32, offset: 448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1189, file: !1190, line: 689, baseType: !7, size: 32, offset: 480)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1189, file: !1190, line: 691, baseType: !1215, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1190, line: 691, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1189, file: !1190, line: 692, baseType: !1219, size: 832, offset: 576)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1190, line: 451, size: 832, elements: !1220)
!1220 = !{!1221, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1219, file: !1190, line: 453, baseType: !1222, size: 128)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1190, line: 325, size: 128, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1222, file: !1190, line: 326, baseType: !243, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1222, file: !1190, line: 327, baseType: !478, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1219, file: !1190, line: 454, baseType: !829, size: 192, align: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1219, file: !1190, line: 455, baseType: !156, size: 128, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1219, file: !1190, line: 456, baseType: !7, size: 32, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1219, file: !1190, line: 458, baseType: !481, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1219, file: !1190, line: 459, baseType: !481, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1219, file: !1190, line: 460, baseType: !481, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1219, file: !1190, line: 461, baseType: !481, size: 64, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1219, file: !1190, line: 463, baseType: !481, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1219, file: !1190, line: 465, baseType: !1235, offset: 832)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1190, line: 415, elements: !409)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1189, file: !1190, line: 693, baseType: !1237, size: 384, offset: 1408)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1190, line: 489, size: 384, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1237, file: !1190, line: 490, baseType: !156, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1237, file: !1190, line: 491, baseType: !243, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1237, file: !1190, line: 492, baseType: !243, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1237, file: !1190, line: 493, baseType: !7, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1237, file: !1190, line: 494, baseType: !188, size: 16, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1237, file: !1190, line: 495, baseType: !188, size: 16, offset: 304)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1237, file: !1190, line: 497, baseType: !1246, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1189, file: !1190, line: 697, baseType: !1248, size: 1792, offset: 1792)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1190, line: 507, size: 1792, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1328, !1329}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1248, file: !1190, line: 508, baseType: !829, size: 192, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1248, file: !1190, line: 515, baseType: !481, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1248, file: !1190, line: 516, baseType: !481, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1248, file: !1190, line: 517, baseType: !481, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1248, file: !1190, line: 518, baseType: !481, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1248, file: !1190, line: 519, baseType: !481, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1248, file: !1190, line: 526, baseType: !391, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1248, file: !1190, line: 527, baseType: !481, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1190, line: 528, baseType: !7, size: 32, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1248, file: !1190, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1248, file: !1190, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1248, file: !1190, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1248, file: !1190, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1248, file: !1190, line: 563, baseType: !1264, size: 512, offset: 704)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1265)
!1265 = !{!1266, !1274, !1275, !1280, !1323, !1325, !1326, !1327}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1264, file: !20, line: 119, baseType: !1267, size: 256)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1268, line: 9, size: 256, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1267, file: !1268, line: 10, baseType: !829, size: 192, align: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1267, file: !1268, line: 11, baseType: !1272, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1273, line: 29, baseType: !391)
!1273 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1264, file: !20, line: 120, baseType: !1272, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1264, file: !20, line: 121, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!19, !1279}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1264, file: !20, line: 122, baseType: !1281, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1283)
!1283 = !{!1284, !1304, !1305, !1308, !1313, !1314, !1318, !1322}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1282, file: !20, line: 160, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1286, file: !20, line: 215, baseType: !842)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1286, file: !20, line: 216, baseType: !7, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1286, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1286, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1286, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1286, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1286, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1286, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1286, file: !20, line: 233, baseType: !1272, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1286, file: !20, line: 234, baseType: !1279, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1286, file: !20, line: 235, baseType: !1272, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1286, file: !20, line: 236, baseType: !1279, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1286, file: !20, line: 237, baseType: !1301, size: 4096, offset: 512)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 4096, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 8)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1282, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1282, file: !20, line: 162, baseType: !1306, size: 32, offset: 96)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !157, line: 27, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !502, line: 96, baseType: !207)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1282, file: !20, line: 163, baseType: !1309, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !451, line: 276, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !451, line: 276, size: 32, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1310, file: !451, line: 276, baseType: !455, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1282, file: !20, line: 164, baseType: !1279, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1282, file: !20, line: 165, baseType: !1315, size: 128, offset: 256)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1268, line: 14, size: 128, elements: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1315, file: !1268, line: 15, baseType: !821, size: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1282, file: !20, line: 166, baseType: !1319, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1272}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1282, file: !20, line: 167, baseType: !1272, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1264, file: !20, line: 123, baseType: !1324, size: 8, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !372, line: 17, baseType: !190)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1264, file: !20, line: 124, baseType: !1324, size: 8, offset: 456)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1264, file: !20, line: 125, baseType: !1324, size: 8, offset: 464)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1264, file: !20, line: 126, baseType: !1324, size: 8, offset: 472)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1248, file: !1190, line: 572, baseType: !1264, size: 512, offset: 1216)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1248, file: !1190, line: 580, baseType: !1330, size: 64, offset: 1728)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1189, file: !1190, line: 721, baseType: !7, size: 32, offset: 3584)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1189, file: !1190, line: 722, baseType: !207, size: 32, offset: 3616)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1189, file: !1190, line: 723, baseType: !1334, size: 64, offset: 3648)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1337, line: 17, baseType: !1338)
!1337 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1337, line: 17, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1338, file: !1337, line: 17, baseType: !242, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1189, file: !1190, line: 724, baseType: !1336, size: 64, offset: 3712)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1189, file: !1190, line: 749, baseType: !1343, offset: 3776)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1190, line: 290, elements: !409)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1189, file: !1190, line: 751, baseType: !156, size: 128, offset: 3776)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1189, file: !1190, line: 757, baseType: !1034, size: 64, offset: 3904)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1189, file: !1190, line: 758, baseType: !1034, size: 64, offset: 3968)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1189, file: !1190, line: 761, baseType: !1348, size: 320, offset: 4032)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1131, line: 34, size: 320, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1348, file: !1131, line: 35, baseType: !481, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1348, file: !1131, line: 36, baseType: !1352, size: 256, offset: 64)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1041, size: 256, elements: !1135)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1189, file: !1190, line: 766, baseType: !207, size: 32, offset: 4352)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1189, file: !1190, line: 767, baseType: !207, size: 32, offset: 4384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1189, file: !1190, line: 768, baseType: !207, size: 32, offset: 4416)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1189, file: !1190, line: 770, baseType: !207, size: 32, offset: 4448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1189, file: !1190, line: 772, baseType: !243, size: 64, offset: 4480)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1189, file: !1190, line: 775, baseType: !7, size: 32, offset: 4544)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1189, file: !1190, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1189, file: !1190, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1189, file: !1190, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1189, file: !1190, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1189, file: !1190, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1189, file: !1190, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1189, file: !1190, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1189, file: !1190, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1189, file: !1190, line: 831, baseType: !243, size: 64, offset: 4672)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1189, file: !1190, line: 833, baseType: !1369, size: 384, offset: 4736)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1370)
!1370 = !{!1371, !1376}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1369, file: !25, line: 26, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!116, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !25, line: 27, baseType: !1377, size: 320, offset: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1369, file: !25, line: 27, size: 320, elements: !1378)
!1378 = !{!1379, !1389, !1415}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1377, file: !25, line: 36, baseType: !1380, size: 320)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 29, size: 320, elements: !1381)
!1381 = !{!1382, !1384, !1385, !1386, !1387, !1388}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1380, file: !25, line: 30, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1380, file: !25, line: 31, baseType: !478, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !25, line: 32, baseType: !478, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1380, file: !25, line: 33, baseType: !478, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1380, file: !25, line: 34, baseType: !481, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1380, file: !25, line: 35, baseType: !1383, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1377, file: !25, line: 46, baseType: !1390, size: 192)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 38, size: 192, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1414}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1390, file: !25, line: 39, baseType: !1306, size: 32)
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
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !502, line: 93, baseType: !393)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1399, file: !1400, line: 9, baseType: !393, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1395, file: !25, line: 43, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1408, line: 7, size: 64, elements: !1409)
!1408 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1413}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1407, file: !1408, line: 8, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1408, line: 5, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !372, line: 20, baseType: !206)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1407, file: !1408, line: 9, baseType: !1412, size: 32, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1390, file: !25, line: 45, baseType: !481, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1377, file: !25, line: 54, baseType: !1416, size: 256)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 48, size: 256, elements: !1417)
!1417 = !{!1418, !1421, !1422, !1423, !1424}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1416, file: !25, line: 49, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1416, file: !25, line: 50, baseType: !207, size: 32, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1416, file: !25, line: 51, baseType: !207, size: 32, offset: 96)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1416, file: !25, line: 52, baseType: !243, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1416, file: !25, line: 53, baseType: !243, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1189, file: !1190, line: 835, baseType: !1426, size: 32, offset: 5120)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !157, line: 22, baseType: !1427)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !502, line: 28, baseType: !207)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1189, file: !1190, line: 836, baseType: !1426, size: 32, offset: 5152)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1189, file: !1190, line: 840, baseType: !243, size: 64, offset: 5184)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1189, file: !1190, line: 849, baseType: !1188, size: 64, offset: 5248)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1189, file: !1190, line: 852, baseType: !1188, size: 64, offset: 5312)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1189, file: !1190, line: 857, baseType: !156, size: 128, offset: 5376)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1189, file: !1190, line: 858, baseType: !156, size: 128, offset: 5504)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1189, file: !1190, line: 859, baseType: !1188, size: 64, offset: 5632)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1189, file: !1190, line: 867, baseType: !156, size: 128, offset: 5696)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1189, file: !1190, line: 868, baseType: !156, size: 128, offset: 5824)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1189, file: !1190, line: 871, baseType: !1438, size: 64, offset: 5952)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1446, !1447, !1454, !1455}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1439, file: !46, line: 61, baseType: !1202, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1439, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1439, file: !46, line: 63, baseType: !395, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1439, file: !46, line: 65, baseType: !1445, size: 256, offset: 64)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 256, elements: !1135)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1439, file: !46, line: 66, baseType: !701, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1439, file: !46, line: 68, baseType: !1448, size: 128, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1449, line: 40, baseType: !1450)
!1449 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1449, line: 36, size: 128, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1450, file: !1449, line: 37, baseType: !395)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1450, file: !1449, line: 38, baseType: !156, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1439, file: !46, line: 69, baseType: !428, size: 128, align: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1439, file: !46, line: 70, baseType: !1456, size: 128, offset: 640)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1457, size: 128, elements: !244)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1457, file: !46, line: 55, baseType: !207, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1457, file: !46, line: 56, baseType: !1461, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1189, file: !1190, line: 872, baseType: !1464, size: 512, offset: 6016)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !705, size: 512, elements: !1135)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1189, file: !1190, line: 873, baseType: !156, size: 128, offset: 6528)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1189, file: !1190, line: 874, baseType: !156, size: 128, offset: 6656)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1189, file: !1190, line: 876, baseType: !1468, size: 64, offset: 6784)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1470, line: 26, size: 192, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1469, file: !1470, line: 27, baseType: !7, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1469, file: !1470, line: 28, baseType: !1474, size: 128, offset: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1475, line: 43, size: 128, elements: !1476)
!1475 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1474, file: !1475, line: 44, baseType: !842)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1474, file: !1475, line: 45, baseType: !156, size: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1189, file: !1190, line: 879, baseType: !773, size: 64, offset: 6848)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1189, file: !1190, line: 882, baseType: !773, size: 64, offset: 6912)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1189, file: !1190, line: 884, baseType: !481, size: 64, offset: 6976)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1189, file: !1190, line: 885, baseType: !481, size: 64, offset: 7040)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1189, file: !1190, line: 890, baseType: !481, size: 64, offset: 7104)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1189, file: !1190, line: 891, baseType: !1485, size: 128, offset: 7168)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1190, line: 242, size: 128, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1485, file: !1190, line: 244, baseType: !481, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1485, file: !1190, line: 245, baseType: !481, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1485, file: !1190, line: 246, baseType: !842, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1189, file: !1190, line: 900, baseType: !243, size: 64, offset: 7296)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1189, file: !1190, line: 901, baseType: !243, size: 64, offset: 7360)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1189, file: !1190, line: 904, baseType: !481, size: 64, offset: 7424)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1189, file: !1190, line: 907, baseType: !481, size: 64, offset: 7488)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1189, file: !1190, line: 910, baseType: !243, size: 64, offset: 7552)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1189, file: !1190, line: 911, baseType: !243, size: 64, offset: 7616)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1189, file: !1190, line: 914, baseType: !1497, size: 640, offset: 7680)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1498, line: 123, size: 640, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1506, !1507}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1497, file: !1498, line: 124, baseType: !1501, size: 576)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 576, elements: !717)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1498, line: 108, size: 192, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1502, file: !1498, line: 109, baseType: !481, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1502, file: !1498, line: 110, baseType: !1315, size: 128, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1497, file: !1498, line: 125, baseType: !7, size: 32, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1497, file: !1498, line: 126, baseType: !7, size: 32, offset: 608)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1189, file: !1190, line: 917, baseType: !1509, size: 192, offset: 8320)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1498, line: 134, size: 192, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1509, file: !1498, line: 135, baseType: !428, size: 128, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1509, file: !1498, line: 136, baseType: !7, size: 32, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1189, file: !1190, line: 923, baseType: !1514, size: 64, offset: 8512)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1517, line: 111, size: 1280, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1536, !1537, !1538, !1539, !1540, !1541, !1648, !1649, !1650, !1651, !1677, !1680, !1690}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1516, file: !1517, line: 112, baseType: !816, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1516, file: !1517, line: 120, baseType: !495, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1516, file: !1517, line: 121, baseType: !504, size: 32, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1516, file: !1517, line: 122, baseType: !495, size: 32, offset: 96)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1516, file: !1517, line: 123, baseType: !504, size: 32, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1516, file: !1517, line: 124, baseType: !495, size: 32, offset: 160)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1516, file: !1517, line: 125, baseType: !504, size: 32, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1516, file: !1517, line: 126, baseType: !495, size: 32, offset: 224)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1516, file: !1517, line: 127, baseType: !504, size: 32, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1516, file: !1517, line: 128, baseType: !7, size: 32, offset: 288)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1516, file: !1517, line: 129, baseType: !1530, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1531, line: 26, baseType: !1532)
!1531 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1531, line: 24, size: 64, elements: !1533)
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1532, file: !1531, line: 25, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !258)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1516, file: !1517, line: 130, baseType: !1530, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1516, file: !1517, line: 131, baseType: !1530, size: 64, offset: 448)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1516, file: !1517, line: 132, baseType: !1530, size: 64, offset: 512)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1516, file: !1517, line: 133, baseType: !1530, size: 64, offset: 576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1516, file: !1517, line: 135, baseType: !191, size: 8, offset: 640)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1516, file: !1517, line: 137, baseType: !1542, size: 64, offset: 704)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1544, line: 189, size: 1664, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !{!1546, !1547, !1550, !1555, !1556, !1559, !1560, !1565, !1566, !1567, !1568, !1570, !1571, !1572, !1573, !1574, !1612, !1633}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1543, file: !1544, line: 190, baseType: !1202, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1543, file: !1544, line: 191, baseType: !1548, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1544, line: 28, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !157, line: 98, baseType: !1412)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1544, line: 192, baseType: !1551, size: 192, offset: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !1544, line: 192, size: 192, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1551, file: !1544, line: 193, baseType: !156, size: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1551, file: !1544, line: 194, baseType: !829, size: 192, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1543, file: !1544, line: 199, baseType: !836, size: 256, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1543, file: !1544, line: 200, baseType: !1557, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1544, line: 200, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1543, file: !1544, line: 201, baseType: !151, size: 64, offset: 576)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1544, line: 202, baseType: !1561, size: 64, offset: 640)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !1544, line: 202, size: 64, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1561, file: !1544, line: 203, baseType: !600, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1561, file: !1544, line: 204, baseType: !600, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1543, file: !1544, line: 206, baseType: !600, size: 64, offset: 704)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1543, file: !1544, line: 207, baseType: !495, size: 32, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1543, file: !1544, line: 208, baseType: !504, size: 32, offset: 800)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1543, file: !1544, line: 209, baseType: !1569, size: 32, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1544, line: 31, baseType: !619)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1543, file: !1544, line: 210, baseType: !188, size: 16, offset: 864)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1543, file: !1544, line: 211, baseType: !188, size: 16, offset: 880)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1543, file: !1544, line: 215, baseType: !197, size: 16, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !1544, line: 222, baseType: !243, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1544, line: 239, baseType: !1575, size: 320, offset: 1024)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !1544, line: 239, size: 320, elements: !1576)
!1576 = !{!1577, !1604}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1575, file: !1544, line: 240, baseType: !1578, size: 320)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1544, line: 108, size: 320, elements: !1579)
!1579 = !{!1580, !1581, !1593, !1596, !1603}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1578, file: !1544, line: 110, baseType: !243, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1544, line: 111, baseType: !1582, size: 64, offset: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1578, file: !1544, line: 111, size: 64, elements: !1583)
!1583 = !{!1584, !1592}
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1544, line: 112, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1582, file: !1544, line: 112, size: 64, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1585, file: !1544, line: 114, baseType: !371, size: 16)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1585, file: !1544, line: 115, baseType: !1589, size: 48, offset: 16)
!1589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 48, elements: !1590)
!1590 = !{!1591}
!1591 = !DISubrange(count: 6)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1582, file: !1544, line: 121, baseType: !243, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1578, file: !1544, line: 123, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1544, line: 96, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1578, file: !1544, line: 124, baseType: !1597, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1544, line: 102, size: 192, elements: !1599)
!1599 = !{!1600, !1601, !1602}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1598, file: !1544, line: 103, baseType: !428, size: 128, align: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1598, file: !1544, line: 104, baseType: !1202, size: 32, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1598, file: !1544, line: 105, baseType: !552, size: 8, offset: 160)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1578, file: !1544, line: 125, baseType: !228, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1544, line: 241, baseType: !1605, size: 320)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !1544, line: 241, size: 320, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1605, file: !1544, line: 242, baseType: !243, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1605, file: !1544, line: 243, baseType: !243, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1605, file: !1544, line: 244, baseType: !1594, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1605, file: !1544, line: 245, baseType: !1597, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1605, file: !1544, line: 246, baseType: !547, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !1544, line: 254, baseType: !1613, size: 256, offset: 1344)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !1544, line: 254, size: 256, elements: !1614)
!1614 = !{!1615, !1621}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1613, file: !1544, line: 255, baseType: !1616, size: 256)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1544, line: 128, size: 256, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1616, file: !1544, line: 129, baseType: !151, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1616, file: !1544, line: 130, baseType: !1620, size: 256)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !1135)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !1544, line: 256, baseType: !1622, size: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1613, file: !1544, line: 256, size: 256, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1622, file: !1544, line: 258, baseType: !156, size: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1622, file: !1544, line: 259, baseType: !1626, size: 128, offset: 128)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1627, line: 22, size: 128, elements: !1628)
!1627 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !{!1629, !1632}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1626, file: !1627, line: 23, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1627, line: 23, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1626, file: !1627, line: 24, baseType: !243, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1543, file: !1544, line: 274, baseType: !1634, size: 64, offset: 1600)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1544, line: 170, size: 192, elements: !1636)
!1636 = !{!1637, !1646, !1647}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1635, file: !1544, line: 171, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1544, line: 165, baseType: !1639)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!207, !1542, !1642, !1644, !1542}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1616)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1635, file: !1544, line: 172, baseType: !1542, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1635, file: !1544, line: 173, baseType: !1594, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1516, file: !1517, line: 138, baseType: !1542, size: 64, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1516, file: !1517, line: 139, baseType: !1542, size: 64, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1516, file: !1517, line: 140, baseType: !1542, size: 64, offset: 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1516, file: !1517, line: 145, baseType: !1652, size: 64, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1654, line: 13, size: 896, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1653, file: !1654, line: 14, baseType: !1202, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1653, file: !1654, line: 15, baseType: !816, size: 32, offset: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1653, file: !1654, line: 16, baseType: !816, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1653, file: !1654, line: 21, baseType: !385, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1653, file: !1654, line: 27, baseType: !243, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1653, file: !1654, line: 28, baseType: !243, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1653, file: !1654, line: 29, baseType: !385, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1653, file: !1654, line: 32, baseType: !705, size: 128, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1653, file: !1654, line: 33, baseType: !495, size: 32, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1653, file: !1654, line: 37, baseType: !385, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1653, file: !1654, line: 44, baseType: !1667, size: 256, offset: 640)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1668, line: 15, size: 256, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !{!1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1667, file: !1668, line: 16, baseType: !842)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1667, file: !1668, line: 18, baseType: !207, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1667, file: !1668, line: 19, baseType: !207, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1667, file: !1668, line: 20, baseType: !207, size: 32, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1667, file: !1668, line: 21, baseType: !207, size: 32, offset: 96)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1667, file: !1668, line: 22, baseType: !243, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1667, file: !1668, line: 23, baseType: !243, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1516, file: !1517, line: 146, baseType: !1678, size: 64, offset: 1024)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !496, line: 18, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1516, file: !1517, line: 147, baseType: !1681, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1517, line: 25, size: 64, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1682, file: !1517, line: 26, baseType: !816, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1682, file: !1517, line: 27, baseType: !207, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1682, file: !1517, line: 28, baseType: !1687, offset: 64)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, elements: !1688)
!1688 = !{!1689}
!1689 = !DISubrange(count: 0)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1516, file: !1517, line: 149, baseType: !1691, size: 128, offset: 1152)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1516, file: !1517, line: 149, size: 128, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1691, file: !1517, line: 150, baseType: !207, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1691, file: !1517, line: 151, baseType: !428, size: 128, align: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1189, file: !1190, line: 926, baseType: !1514, size: 64, offset: 8576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1189, file: !1190, line: 929, baseType: !1514, size: 64, offset: 8640)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1189, file: !1190, line: 933, baseType: !1542, size: 64, offset: 8704)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1189, file: !1190, line: 943, baseType: !1699, size: 128, offset: 8768)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 128, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 16)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1189, file: !1190, line: 945, baseType: !1703, size: 64, offset: 8896)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1190, line: 49, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1189, file: !1190, line: 956, baseType: !1706, size: 64, offset: 8960)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1190, line: 45, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1189, file: !1190, line: 959, baseType: !1709, size: 64, offset: 9024)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1190, line: 959, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1189, file: !1190, line: 962, baseType: !1712, size: 64, offset: 9088)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1190, line: 66, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1189, file: !1190, line: 966, baseType: !1715, size: 64, offset: 9152)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1190, line: 50, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1189, file: !1190, line: 969, baseType: !1718, size: 64, offset: 9216)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1720, line: 82, size: 7296, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1757, !1766, !1767, !1769, !1770, !1771, !1774, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1804, !1805, !1812, !1813, !1814, !1815, !1816, !1817}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1719, file: !1720, line: 83, baseType: !1202, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1719, file: !1720, line: 84, baseType: !816, size: 32, offset: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1719, file: !1720, line: 85, baseType: !207, size: 32, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1719, file: !1720, line: 86, baseType: !156, size: 128, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1719, file: !1720, line: 88, baseType: !1448, size: 128, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1719, file: !1720, line: 91, baseType: !1188, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1719, file: !1720, line: 94, baseType: !1729, size: 192, offset: 448)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1730, line: 30, size: 192, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1729, file: !1730, line: 31, baseType: !156, size: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1729, file: !1730, line: 32, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1735, line: 25, baseType: !1736)
!1735 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1735, line: 23, size: 64, elements: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1736, file: !1735, line: 24, baseType: !242, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1719, file: !1720, line: 97, baseType: !701, size: 64, offset: 640)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1719, file: !1720, line: 100, baseType: !207, size: 32, offset: 704)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1719, file: !1720, line: 106, baseType: !207, size: 32, offset: 736)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1719, file: !1720, line: 107, baseType: !1188, size: 64, offset: 768)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1719, file: !1720, line: 110, baseType: !207, size: 32, offset: 832)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1719, file: !1720, line: 111, baseType: !7, size: 32, offset: 864)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1719, file: !1720, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1719, file: !1720, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1719, file: !1720, line: 128, baseType: !207, size: 32, offset: 928)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1719, file: !1720, line: 129, baseType: !156, size: 128, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1719, file: !1720, line: 132, baseType: !1264, size: 512, offset: 1088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1719, file: !1720, line: 133, baseType: !1272, size: 64, offset: 1600)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1719, file: !1720, line: 140, baseType: !1752, size: 256, offset: 1664)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1753, size: 256, elements: !258)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1720, line: 38, size: 128, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1753, file: !1720, line: 39, baseType: !481, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1753, file: !1720, line: 40, baseType: !481, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1719, file: !1720, line: 146, baseType: !1758, size: 192, offset: 1920)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1720, line: 66, size: 192, elements: !1759)
!1759 = !{!1760}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1758, file: !1720, line: 67, baseType: !1761, size: 192)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1720, line: 47, size: 192, elements: !1762)
!1762 = !{!1763, !1764, !1765}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1761, file: !1720, line: 48, baseType: !387, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1761, file: !1720, line: 49, baseType: !387, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1761, file: !1720, line: 50, baseType: !387, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1719, file: !1720, line: 150, baseType: !1497, size: 640, offset: 2112)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1719, file: !1720, line: 153, baseType: !1768, size: 256, offset: 2752)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1438, size: 256, elements: !1135)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1719, file: !1720, line: 159, baseType: !1438, size: 64, offset: 3008)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1719, file: !1720, line: 162, baseType: !207, size: 32, offset: 3072)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1719, file: !1720, line: 164, baseType: !1772, size: 64, offset: 3136)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1720, line: 164, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1719, file: !1720, line: 175, baseType: !1775, size: 32, offset: 3200)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !451, line: 805, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 798, size: 32, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1776, file: !451, line: 803, baseType: !450, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1776, file: !451, line: 804, baseType: !395, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1719, file: !1720, line: 176, baseType: !481, size: 64, offset: 3264)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1719, file: !1720, line: 176, baseType: !481, size: 64, offset: 3328)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1719, file: !1720, line: 176, baseType: !481, size: 64, offset: 3392)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1719, file: !1720, line: 176, baseType: !481, size: 64, offset: 3456)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1719, file: !1720, line: 177, baseType: !481, size: 64, offset: 3520)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1719, file: !1720, line: 178, baseType: !481, size: 64, offset: 3584)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1719, file: !1720, line: 179, baseType: !1485, size: 128, offset: 3648)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1719, file: !1720, line: 180, baseType: !243, size: 64, offset: 3776)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1719, file: !1720, line: 180, baseType: !243, size: 64, offset: 3840)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1719, file: !1720, line: 180, baseType: !243, size: 64, offset: 3904)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1719, file: !1720, line: 180, baseType: !243, size: 64, offset: 3968)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1719, file: !1720, line: 181, baseType: !243, size: 64, offset: 4032)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1719, file: !1720, line: 181, baseType: !243, size: 64, offset: 4096)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1719, file: !1720, line: 181, baseType: !243, size: 64, offset: 4160)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1719, file: !1720, line: 181, baseType: !243, size: 64, offset: 4224)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1719, file: !1720, line: 182, baseType: !243, size: 64, offset: 4288)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1719, file: !1720, line: 182, baseType: !243, size: 64, offset: 4352)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1719, file: !1720, line: 182, baseType: !243, size: 64, offset: 4416)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1719, file: !1720, line: 182, baseType: !243, size: 64, offset: 4480)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1719, file: !1720, line: 183, baseType: !243, size: 64, offset: 4544)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1719, file: !1720, line: 183, baseType: !243, size: 64, offset: 4608)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1719, file: !1720, line: 184, baseType: !1802, offset: 4672)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1803, line: 12, elements: !409)
!1803 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1719, file: !1720, line: 192, baseType: !483, size: 64, offset: 4672)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1719, file: !1720, line: 203, baseType: !1806, size: 2048, offset: 4736)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1807, size: 2048, elements: !1700)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1808, line: 43, size: 128, elements: !1809)
!1808 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1807, file: !1808, line: 44, baseType: !643, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1807, file: !1808, line: 45, baseType: !643, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1719, file: !1720, line: 220, baseType: !552, size: 8, offset: 6784)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1719, file: !1720, line: 221, baseType: !197, size: 16, offset: 6800)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1719, file: !1720, line: 222, baseType: !197, size: 16, offset: 6816)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1719, file: !1720, line: 224, baseType: !1034, size: 64, offset: 6848)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1719, file: !1720, line: 227, baseType: !381, size: 192, offset: 6912)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1719, file: !1720, line: 233, baseType: !381, size: 192, offset: 7104)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1189, file: !1190, line: 970, baseType: !1819, size: 64, offset: 9280)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1720, line: 20, size: 16576, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1820, file: !1720, line: 21, baseType: !395)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1820, file: !1720, line: 22, baseType: !1202, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1820, file: !1720, line: 23, baseType: !1448, size: 128, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1820, file: !1720, line: 24, baseType: !1826, size: 16384, offset: 192)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1827, size: 16384, elements: !1847)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1730, line: 49, size: 256, elements: !1828)
!1828 = !{!1829}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1827, file: !1730, line: 50, baseType: !1830, size: 256)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1730, line: 35, size: 256, elements: !1831)
!1831 = !{!1832, !1839, !1840, !1846}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1830, file: !1730, line: 37, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1834, line: 19, baseType: !1835)
!1834 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1834, line: 18, baseType: !1837)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !207}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1830, file: !1730, line: 38, baseType: !243, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1830, file: !1730, line: 44, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1834, line: 22, baseType: !1842)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1834, line: 21, baseType: !1844)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1830, file: !1730, line: 46, baseType: !1734, size: 64, offset: 192)
!1847 = !{!1848}
!1848 = !DISubrange(count: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1189, file: !1190, line: 971, baseType: !1734, size: 64, offset: 9344)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1189, file: !1190, line: 972, baseType: !1734, size: 64, offset: 9408)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1189, file: !1190, line: 974, baseType: !1734, size: 64, offset: 9472)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1189, file: !1190, line: 975, baseType: !1729, size: 192, offset: 9536)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1189, file: !1190, line: 976, baseType: !243, size: 64, offset: 9728)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1189, file: !1190, line: 977, baseType: !641, size: 64, offset: 9792)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1189, file: !1190, line: 978, baseType: !7, size: 32, offset: 9856)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1189, file: !1190, line: 980, baseType: !431, size: 64, offset: 9920)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1189, file: !1190, line: 989, baseType: !1858, size: 128, offset: 9984)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1859, line: 35, size: 128, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1862, !1863}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1858, file: !1859, line: 36, baseType: !207, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1858, file: !1859, line: 37, baseType: !816, size: 32, offset: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1858, file: !1859, line: 38, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1859, line: 23, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1189, file: !1190, line: 992, baseType: !481, size: 64, offset: 10112)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1189, file: !1190, line: 993, baseType: !481, size: 64, offset: 10176)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1189, file: !1190, line: 996, baseType: !395, offset: 10240)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1189, file: !1190, line: 999, baseType: !842, offset: 10240)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1189, file: !1190, line: 1001, baseType: !1871, size: 64, offset: 10240)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1190, line: 636, size: 64, elements: !1872)
!1872 = !{!1873}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1871, file: !1190, line: 637, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1189, file: !1190, line: 1005, baseType: !821, size: 128, offset: 10304)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1189, file: !1190, line: 1007, baseType: !1188, size: 64, offset: 10432)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1189, file: !1190, line: 1009, baseType: !1878, size: 64, offset: 10496)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1190, line: 1009, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1189, file: !1190, line: 1043, baseType: !151, size: 64, offset: 10560)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1189, file: !1190, line: 1046, baseType: !1882, size: 64, offset: 10624)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1190, line: 41, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1189, file: !1190, line: 1050, baseType: !1885, size: 64, offset: 10688)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1190, line: 42, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1189, file: !1190, line: 1054, baseType: !1888, size: 64, offset: 10752)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1190, line: 55, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1189, file: !1190, line: 1056, baseType: !1891, size: 64, offset: 10816)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1190, line: 40, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1189, file: !1190, line: 1058, baseType: !1894, size: 64, offset: 10880)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1896, line: 99, size: 704, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1923, !1924}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1895, file: !1896, line: 100, baseType: !385, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1895, file: !1896, line: 101, baseType: !816, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1895, file: !1896, line: 102, baseType: !816, size: 32, offset: 96)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !1896, line: 105, baseType: !395, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1895, file: !1896, line: 107, baseType: !188, size: 16, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1895, file: !1896, line: 109, baseType: !807, size: 128, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1895, file: !1896, line: 110, baseType: !1905, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1896, line: 73, size: 448, elements: !1907)
!1907 = !{!1908, !1911, !1912, !1917, !1922}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1906, file: !1896, line: 74, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1896, line: 74, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1906, file: !1896, line: 75, baseType: !1894, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1896, line: 83, baseType: !1913, size: 128, offset: 128)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1896, line: 83, size: 128, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1913, file: !1896, line: 84, baseType: !156, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1913, file: !1896, line: 85, baseType: !995, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1896, line: 87, baseType: !1918, size: 128, offset: 256)
!1918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1906, file: !1896, line: 87, size: 128, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1918, file: !1896, line: 88, baseType: !705, size: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1918, file: !1896, line: 89, baseType: !428, size: 128, align: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1906, file: !1896, line: 92, baseType: !7, size: 32, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1895, file: !1896, line: 111, baseType: !701, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1895, file: !1896, line: 113, baseType: !1925, size: 256, offset: 448)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !115, line: 102, size: 256, elements: !1926)
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1925, file: !115, line: 103, baseType: !385, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1925, file: !115, line: 104, baseType: !156, size: 128, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1925, file: !115, line: 105, baseType: !1930, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !115, line: 21, baseType: !1931)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1934}
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1189, file: !1190, line: 1061, baseType: !1936, size: 64, offset: 10944)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1190, line: 43, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1189, file: !1190, line: 1064, baseType: !243, size: 64, offset: 11008)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1189, file: !1190, line: 1065, baseType: !1940, size: 64, offset: 11072)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1730, line: 14, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1730, line: 12, size: 384, elements: !1943)
!1943 = !{!1944}
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1730, line: 13, baseType: !1945, size: 384)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1942, file: !1730, line: 13, size: 384, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1950}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1945, file: !1730, line: 13, baseType: !207, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1945, file: !1730, line: 13, baseType: !207, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1945, file: !1730, line: 13, baseType: !207, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1945, file: !1730, line: 13, baseType: !1951, size: 256, offset: 128)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1952, line: 32, size: 256, elements: !1953)
!1952 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1953 = !{!1954, !1959, !1972, !1978, !1987, !2007, !2012}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1951, file: !1952, line: 37, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 34, size: 64, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1955, file: !1952, line: 35, baseType: !1427, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1955, file: !1952, line: 36, baseType: !501, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1951, file: !1952, line: 45, baseType: !1960, size: 192)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 40, size: 192, elements: !1961)
!1961 = !{!1962, !1964, !1965, !1971}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1960, file: !1952, line: 41, baseType: !1963, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !502, line: 95, baseType: !207)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1960, file: !1952, line: 42, baseType: !207, size: 32, offset: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1960, file: !1952, line: 43, baseType: !1966, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1952, line: 11, baseType: !1967)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1952, line: 8, size: 64, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1967, file: !1952, line: 9, baseType: !207, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1967, file: !1952, line: 10, baseType: !151, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1960, file: !1952, line: 44, baseType: !207, size: 32, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1951, file: !1952, line: 52, baseType: !1973, size: 128)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 48, size: 128, elements: !1974)
!1974 = !{!1975, !1976, !1977}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1973, file: !1952, line: 49, baseType: !1427, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1973, file: !1952, line: 50, baseType: !501, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1973, file: !1952, line: 51, baseType: !1966, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1951, file: !1952, line: 61, baseType: !1979, size: 256)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 55, size: 256, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1986}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1979, file: !1952, line: 56, baseType: !1427, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1979, file: !1952, line: 57, baseType: !501, size: 32, offset: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1979, file: !1952, line: 58, baseType: !207, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1979, file: !1952, line: 59, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !502, line: 94, baseType: !640)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1979, file: !1952, line: 60, baseType: !1985, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1951, file: !1952, line: 95, baseType: !1988, size: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 64, size: 256, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1988, file: !1952, line: 65, baseType: !151, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !1952, line: 77, baseType: !1992, size: 192, offset: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1988, file: !1952, line: 77, size: 192, elements: !1993)
!1993 = !{!1994, !1995, !2002}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1992, file: !1952, line: 82, baseType: !197, size: 16)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1992, file: !1952, line: 88, baseType: !1996, size: 192)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1952, line: 84, size: 192, elements: !1997)
!1997 = !{!1998, !2000, !2001}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1996, file: !1952, line: 85, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 64, elements: !1302)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1996, file: !1952, line: 86, baseType: !151, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1996, file: !1952, line: 87, baseType: !151, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1992, file: !1952, line: 93, baseType: !2003, size: 96)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1952, line: 90, size: 96, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2003, file: !1952, line: 91, baseType: !1999, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2003, file: !1952, line: 92, baseType: !277, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1951, file: !1952, line: 101, baseType: !2008, size: 128)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 98, size: 128, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2008, file: !1952, line: 99, baseType: !116, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2008, file: !1952, line: 100, baseType: !207, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1951, file: !1952, line: 108, baseType: !2013, size: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 104, size: 128, elements: !2014)
!2014 = !{!2015, !2016, !2017}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2013, file: !1952, line: 105, baseType: !151, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2013, file: !1952, line: 106, baseType: !207, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2013, file: !1952, line: 107, baseType: !7, size: 32, offset: 96)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1189, file: !1190, line: 1067, baseType: !1802, offset: 11136)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1189, file: !1190, line: 1099, baseType: !2020, size: 64, offset: 11136)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1190, line: 56, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1189, file: !1190, line: 1103, baseType: !156, size: 128, offset: 11200)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1189, file: !1190, line: 1104, baseType: !2024, size: 64, offset: 11328)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1190, line: 46, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1189, file: !1190, line: 1105, baseType: !381, size: 192, offset: 11392)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1189, file: !1190, line: 1106, baseType: !7, size: 32, offset: 11584)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1189, file: !1190, line: 1109, baseType: !2029, size: 128, offset: 11648)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2030, size: 128, elements: !258)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1190, line: 51, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1189, file: !1190, line: 1110, baseType: !381, size: 192, offset: 11776)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1189, file: !1190, line: 1111, baseType: !156, size: 128, offset: 11968)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1189, file: !1190, line: 1173, baseType: !2035, size: 64, offset: 12096)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2037, line: 62, size: 256, align: 256, elements: !2038)
!2037 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040, !2041, !2046}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2036, file: !2037, line: 75, baseType: !277, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2036, file: !2037, line: 90, baseType: !277, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2036, file: !2037, line: 124, baseType: !2042, size: 64, offset: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2036, file: !2037, line: 109, size: 64, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2042, file: !2037, line: 110, baseType: !482, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2042, file: !2037, line: 112, baseType: !482, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2037, line: 144, baseType: !277, size: 32, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1189, file: !1190, line: 1174, baseType: !478, size: 32, offset: 12160)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1189, file: !1190, line: 1179, baseType: !243, size: 64, offset: 12224)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1189, file: !1190, line: 1182, baseType: !2050, size: 128, offset: 12288)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1131, line: 76, size: 128, elements: !2051)
!2051 = !{!2052, !2057, !2058}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2050, file: !1131, line: 85, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2054, line: 7, size: 64, elements: !2055)
!2054 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !{!2056}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2053, file: !2054, line: 12, baseType: !1338, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2050, file: !1131, line: 88, baseType: !552, size: 8, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2050, file: !1131, line: 95, baseType: !552, size: 8, offset: 72)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !1190, line: 1184, baseType: !2060, size: 128, offset: 12416)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !1190, line: 1184, size: 128, elements: !2061)
!2061 = !{!2062, !2063}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2060, file: !1190, line: 1185, baseType: !1202, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2060, file: !1190, line: 1186, baseType: !428, size: 128, align: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1189, file: !1190, line: 1190, baseType: !2065, size: 64, offset: 12544)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1190, line: 53, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1189, file: !1190, line: 1192, baseType: !2068, size: 128, offset: 12608)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1131, line: 64, size: 128, elements: !2069)
!2069 = !{!2070, !2071, !2072}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2068, file: !1131, line: 65, baseType: !789, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2068, file: !1131, line: 67, baseType: !277, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2068, file: !1131, line: 68, baseType: !277, size: 32, offset: 96)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1189, file: !1190, line: 1206, baseType: !207, size: 32, offset: 12736)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1189, file: !1190, line: 1207, baseType: !207, size: 32, offset: 12768)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1189, file: !1190, line: 1209, baseType: !243, size: 64, offset: 12800)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1189, file: !1190, line: 1219, baseType: !481, size: 64, offset: 12864)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1189, file: !1190, line: 1220, baseType: !481, size: 64, offset: 12928)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1189, file: !1190, line: 1317, baseType: !207, size: 32, offset: 12992)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1189, file: !1190, line: 1319, baseType: !1188, size: 64, offset: 13056)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1189, file: !1190, line: 1322, baseType: !2081, size: 64, offset: 13120)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1190, line: 1322, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1189, file: !1190, line: 1326, baseType: !1202, size: 32, offset: 13184)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1189, file: !1190, line: 1342, baseType: !151, size: 64, offset: 13248)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1189, file: !1190, line: 1343, baseType: !482, size: 64, offset: 13312)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1189, file: !1190, line: 1344, baseType: !481, size: 64, offset: 13376)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1189, file: !1190, line: 1345, baseType: !482, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1189, file: !1190, line: 1346, baseType: !482, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1189, file: !1190, line: 1347, baseType: !482, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1189, file: !1190, line: 1348, baseType: !428, size: 128, align: 64, offset: 13504)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1189, file: !1190, line: 1358, baseType: !2092, size: 34816, offset: 13824)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2093, line: 485, size: 34816, elements: !2094)
!2093 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2094 = !{!2095, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2124, !2125, !2126, !2127, !2128, !2129, !2132, !2133, !2134}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2092, file: !2093, line: 487, baseType: !2096, size: 192)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2097, size: 192, elements: !717)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2098, line: 16, size: 64, elements: !2099)
!2098 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2097, file: !2098, line: 17, baseType: !371, size: 16)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2097, file: !2098, line: 18, baseType: !371, size: 16, offset: 16)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2097, file: !2098, line: 19, baseType: !371, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2097, file: !2098, line: 19, baseType: !371, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2097, file: !2098, line: 19, baseType: !371, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2097, file: !2098, line: 19, baseType: !371, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2097, file: !2098, line: 19, baseType: !371, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2097, file: !2098, line: 20, baseType: !371, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2097, file: !2098, line: 20, baseType: !371, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2097, file: !2098, line: 20, baseType: !371, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2097, file: !2098, line: 20, baseType: !371, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2097, file: !2098, line: 20, baseType: !371, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2097, file: !2098, line: 20, baseType: !371, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2092, file: !2093, line: 491, baseType: !243, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2092, file: !2093, line: 495, baseType: !188, size: 16, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2092, file: !2093, line: 496, baseType: !188, size: 16, offset: 272)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2092, file: !2093, line: 497, baseType: !188, size: 16, offset: 288)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2092, file: !2093, line: 498, baseType: !188, size: 16, offset: 304)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2092, file: !2093, line: 502, baseType: !243, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2092, file: !2093, line: 503, baseType: !243, size: 64, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2092, file: !2093, line: 514, baseType: !2121, size: 256, offset: 448)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2122, size: 256, elements: !1135)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2093, line: 483, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2092, file: !2093, line: 516, baseType: !243, size: 64, offset: 704)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2092, file: !2093, line: 518, baseType: !243, size: 64, offset: 768)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2092, file: !2093, line: 520, baseType: !243, size: 64, offset: 832)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2092, file: !2093, line: 521, baseType: !243, size: 64, offset: 896)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2092, file: !2093, line: 522, baseType: !243, size: 64, offset: 960)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2092, file: !2093, line: 528, baseType: !2130, size: 64, offset: 1024)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2093, line: 10, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2092, file: !2093, line: 535, baseType: !243, size: 64, offset: 1088)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2092, file: !2093, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2092, file: !2093, line: 540, baseType: !2135, size: 33280, offset: 1536)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2136, line: 317, size: 33280, elements: !2137)
!2136 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2139, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2135, file: !2136, line: 330, baseType: !7, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2135, file: !2136, line: 337, baseType: !243, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2135, file: !2136, line: 348, baseType: !2141, size: 32768, offset: 512)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2136, line: 304, size: 32768, elements: !2142)
!2142 = !{!2143, !2158, !2193, !2243, !2256}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2141, file: !2136, line: 305, baseType: !2144, size: 896)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2136, line: 12, size: 896, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2157}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2144, file: !2136, line: 13, baseType: !478, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2144, file: !2136, line: 14, baseType: !478, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2144, file: !2136, line: 15, baseType: !478, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2144, file: !2136, line: 16, baseType: !478, size: 32, offset: 96)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2144, file: !2136, line: 17, baseType: !478, size: 32, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2144, file: !2136, line: 18, baseType: !478, size: 32, offset: 160)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2144, file: !2136, line: 19, baseType: !478, size: 32, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2144, file: !2136, line: 22, baseType: !2154, size: 640, offset: 224)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 640, elements: !2155)
!2155 = !{!2156}
!2156 = !DISubrange(count: 20)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2144, file: !2136, line: 25, baseType: !478, size: 32, offset: 864)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2141, file: !2136, line: 306, baseType: !2159, size: 4096, align: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2136, line: 34, size: 4096, align: 128, elements: !2160)
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2180, !2181, !2182, !2184, !2186, !2188}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2159, file: !2136, line: 35, baseType: !371, size: 16)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2159, file: !2136, line: 36, baseType: !371, size: 16, offset: 16)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2159, file: !2136, line: 37, baseType: !371, size: 16, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2159, file: !2136, line: 38, baseType: !371, size: 16, offset: 48)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !2136, line: 39, baseType: !2166, size: 128, offset: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !2136, line: 39, size: 128, elements: !2167)
!2167 = !{!2168, !2173}
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !2136, line: 40, baseType: !2169, size: 128)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !2136, line: 40, size: 128, elements: !2170)
!2170 = !{!2171, !2172}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2169, file: !2136, line: 41, baseType: !481, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2169, file: !2136, line: 42, baseType: !481, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !2136, line: 44, baseType: !2174, size: 128)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !2136, line: 44, size: 128, elements: !2175)
!2175 = !{!2176, !2177, !2178, !2179}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2174, file: !2136, line: 45, baseType: !478, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2174, file: !2136, line: 46, baseType: !478, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2174, file: !2136, line: 47, baseType: !478, size: 32, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2174, file: !2136, line: 48, baseType: !478, size: 32, offset: 96)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2159, file: !2136, line: 51, baseType: !478, size: 32, offset: 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2159, file: !2136, line: 52, baseType: !478, size: 32, offset: 224)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2159, file: !2136, line: 55, baseType: !2183, size: 1024, offset: 256)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 1024, elements: !280)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2159, file: !2136, line: 58, baseType: !2185, size: 2048, offset: 1280)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 2048, elements: !1847)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2159, file: !2136, line: 60, baseType: !2187, size: 384, offset: 3328)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, size: 384, elements: !249)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !2136, line: 62, baseType: !2189, size: 384, offset: 3712)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !2136, line: 62, size: 384, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2189, file: !2136, line: 63, baseType: !2187, size: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2189, file: !2136, line: 64, baseType: !2187, size: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2141, file: !2136, line: 307, baseType: !2194, size: 1088)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2136, line: 79, size: 1088, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2242}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2194, file: !2136, line: 80, baseType: !478, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2194, file: !2136, line: 81, baseType: !478, size: 32, offset: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2194, file: !2136, line: 82, baseType: !478, size: 32, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2194, file: !2136, line: 83, baseType: !478, size: 32, offset: 96)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2194, file: !2136, line: 84, baseType: !478, size: 32, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2194, file: !2136, line: 85, baseType: !478, size: 32, offset: 160)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2194, file: !2136, line: 86, baseType: !478, size: 32, offset: 192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2194, file: !2136, line: 88, baseType: !2154, size: 640, offset: 224)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2194, file: !2136, line: 89, baseType: !1324, size: 8, offset: 864)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2194, file: !2136, line: 90, baseType: !1324, size: 8, offset: 872)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2194, file: !2136, line: 91, baseType: !1324, size: 8, offset: 880)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2194, file: !2136, line: 92, baseType: !1324, size: 8, offset: 888)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2194, file: !2136, line: 93, baseType: !1324, size: 8, offset: 896)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2194, file: !2136, line: 94, baseType: !1324, size: 8, offset: 904)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2194, file: !2136, line: 95, baseType: !2211, size: 64, offset: 960)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2213, line: 11, size: 128, elements: !2214)
!2213 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2212, file: !2213, line: 12, baseType: !116, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2212, file: !2213, line: 13, baseType: !2217, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2219, line: 56, size: 1344, elements: !2220)
!2219 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2218, file: !2219, line: 61, baseType: !243, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2218, file: !2219, line: 62, baseType: !243, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2218, file: !2219, line: 63, baseType: !243, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2218, file: !2219, line: 64, baseType: !243, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2218, file: !2219, line: 65, baseType: !243, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2218, file: !2219, line: 66, baseType: !243, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2218, file: !2219, line: 68, baseType: !243, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2218, file: !2219, line: 69, baseType: !243, size: 64, offset: 448)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2218, file: !2219, line: 70, baseType: !243, size: 64, offset: 512)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2218, file: !2219, line: 71, baseType: !243, size: 64, offset: 576)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2218, file: !2219, line: 72, baseType: !243, size: 64, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2218, file: !2219, line: 73, baseType: !243, size: 64, offset: 704)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2218, file: !2219, line: 74, baseType: !243, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2218, file: !2219, line: 75, baseType: !243, size: 64, offset: 832)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2218, file: !2219, line: 76, baseType: !243, size: 64, offset: 896)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2218, file: !2219, line: 81, baseType: !243, size: 64, offset: 960)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2218, file: !2219, line: 83, baseType: !243, size: 64, offset: 1024)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2218, file: !2219, line: 84, baseType: !243, size: 64, offset: 1088)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2218, file: !2219, line: 85, baseType: !243, size: 64, offset: 1152)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2218, file: !2219, line: 86, baseType: !243, size: 64, offset: 1216)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2218, file: !2219, line: 87, baseType: !243, size: 64, offset: 1280)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2194, file: !2136, line: 96, baseType: !478, size: 32, offset: 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2141, file: !2136, line: 308, baseType: !2244, size: 4608, align: 512)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2136, line: 289, size: 4608, align: 512, elements: !2245)
!2245 = !{!2246, !2247, !2254}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2244, file: !2136, line: 290, baseType: !2159, size: 4096, align: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2244, file: !2136, line: 291, baseType: !2248, size: 512, offset: 4096)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2136, line: 268, size: 512, elements: !2249)
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2248, file: !2136, line: 269, baseType: !481, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2248, file: !2136, line: 270, baseType: !481, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2248, file: !2136, line: 271, baseType: !2253, size: 384, offset: 128)
!2253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 384, elements: !1590)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2244, file: !2136, line: 292, baseType: !2255, offset: 4608)
!2255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, elements: !1688)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2141, file: !2136, line: 309, baseType: !2257, size: 32768)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 32768, elements: !2258)
!2258 = !{!2259}
!2259 = !DISubrange(count: 4096)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1185, file: !791, line: 378, baseType: !2261, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1181, file: !791, line: 384, baseType: !1469, size: 192, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1038, file: !791, line: 500, baseType: !395, offset: 6656)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1038, file: !791, line: 501, baseType: !2265, size: 64, offset: 6656)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !791, line: 387, flags: DIFlagFwdDecl)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1038, file: !791, line: 516, baseType: !1678, size: 64, offset: 6720)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1038, file: !791, line: 519, baseType: !415, size: 64, offset: 6784)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1038, file: !791, line: 521, baseType: !2270, size: 64, offset: 6848)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !791, line: 521, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1038, file: !791, line: 545, baseType: !816, size: 32, offset: 6912)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1038, file: !791, line: 548, baseType: !552, size: 8, offset: 6944)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1038, file: !791, line: 550, baseType: !2275, offset: 6952)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2276, line: 142, elements: !409)
!2276 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1038, file: !791, line: 554, baseType: !1925, size: 256, offset: 6976)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1038, file: !791, line: 557, baseType: !478, size: 32, offset: 7232)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1035, file: !791, line: 565, baseType: !2280, offset: 7296)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !2281)
!2281 = !{!2282}
!2282 = !DISubrange(count: -1)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1031, file: !791, line: 151, baseType: !816, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1024, file: !791, line: 156, baseType: !395, offset: 256)
!2285 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !791, line: 159, baseType: !2286, size: 128)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !795, file: !791, line: 159, size: 128, elements: !2287)
!2287 = !{!2288, !2291}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2286, file: !791, line: 161, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !791, line: 161, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2286, file: !791, line: 162, baseType: !151, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !795, file: !791, line: 176, baseType: !428, size: 128, align: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 179, baseType: !2294, size: 32, offset: 384)
!2294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 179, size: 32, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2294, file: !791, line: 184, baseType: !816, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2294, file: !791, line: 192, baseType: !7, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2294, file: !791, line: 194, baseType: !7, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2294, file: !791, line: 195, baseType: !207, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !790, file: !791, line: 199, baseType: !816, size: 32, offset: 416)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !725, file: !37, line: 1964, baseType: !2302, size: 64, offset: 1344)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!116, !665, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2307, line: 12, size: 256, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2306, file: !2307, line: 13, baseType: !812, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2306, file: !2307, line: 16, baseType: !207, size: 32, offset: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2306, file: !2307, line: 23, baseType: !243, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2306, file: !2307, line: 30, baseType: !243, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2306, file: !2307, line: 33, baseType: !2314, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !791, line: 27, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !725, file: !37, line: 1966, baseType: !2302, size: 64, offset: 1408)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !666, file: !37, line: 1424, baseType: !2318, size: 64, offset: 448)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2320)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2321)
!2321 = !{!2322, !2368, !2372, !2376, !2377, !2378, !2379, !2380, !2385, !2390, !2394}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2320, file: !31, line: 323, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!207, !2326}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2353, !2354, !2355}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2327, file: !31, line: 295, baseType: !705, size: 128)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2327, file: !31, line: 296, baseType: !156, size: 128, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2327, file: !31, line: 297, baseType: !156, size: 128, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2327, file: !31, line: 298, baseType: !156, size: 128, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2327, file: !31, line: 299, baseType: !381, size: 192, offset: 512)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2327, file: !31, line: 300, baseType: !395, offset: 704)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2327, file: !31, line: 301, baseType: !816, size: 32, offset: 704)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2327, file: !31, line: 302, baseType: !665, size: 64, offset: 768)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2327, file: !31, line: 303, baseType: !2338, size: 64, offset: 832)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2339)
!2339 = !{!2340, !2352}
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !31, line: 69, baseType: !2341, size: 32)
!2341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2338, file: !31, line: 69, size: 32, elements: !2342)
!2342 = !{!2343, !2344, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2341, file: !31, line: 70, baseType: !495, size: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2341, file: !31, line: 71, baseType: !504, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2341, file: !31, line: 72, baseType: !2346, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2347, line: 24, baseType: !2348)
!2347 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2347, line: 22, size: 32, elements: !2349)
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2348, file: !2347, line: 23, baseType: !2351, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2347, line: 20, baseType: !501)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2338, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2327, file: !31, line: 304, baseType: !593, size: 64, offset: 896)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2327, file: !31, line: 305, baseType: !243, size: 64, offset: 960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2327, file: !31, line: 306, baseType: !2356, size: 576, offset: 1024)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2357)
!2357 = !{!2358, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2356, file: !31, line: 206, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !393)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2356, file: !31, line: 207, baseType: !2359, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2356, file: !31, line: 208, baseType: !2359, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2356, file: !31, line: 209, baseType: !2359, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2356, file: !31, line: 210, baseType: !2359, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2356, file: !31, line: 211, baseType: !2359, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2356, file: !31, line: 212, baseType: !2359, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2356, file: !31, line: 213, baseType: !600, size: 64, offset: 448)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2356, file: !31, line: 214, baseType: !600, size: 64, offset: 512)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2320, file: !31, line: 324, baseType: !2369, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!2326, !665, !207}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2320, file: !31, line: 325, baseType: !2373, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !2326}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2320, file: !31, line: 326, baseType: !2323, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2320, file: !31, line: 327, baseType: !2323, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2320, file: !31, line: 328, baseType: !2323, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2320, file: !31, line: 329, baseType: !753, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2320, file: !31, line: 332, baseType: !2381, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2384, !488}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2320, file: !31, line: 333, baseType: !2386, size: 64, offset: 512)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!207, !488, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2320, file: !31, line: 335, baseType: !2391, size: 64, offset: 576)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!207, !488, !2384}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2320, file: !31, line: 337, baseType: !2395, size: 64, offset: 640)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!207, !665, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !666, file: !37, line: 1425, baseType: !2400, size: 64, offset: 512)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2403)
!2403 = !{!2404, !2408, !2409, !2413, !2414, !2415, !2430, !2453, !2457, !2458, !2481}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2402, file: !31, line: 429, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!207, !665, !207, !207, !609}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2402, file: !31, line: 430, baseType: !753, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2402, file: !31, line: 431, baseType: !2410, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!207, !665, !7}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2402, file: !31, line: 432, baseType: !2410, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2402, file: !31, line: 433, baseType: !753, size: 64, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2402, file: !31, line: 434, baseType: !2416, size: 64, offset: 320)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!207, !665, !207, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2421)
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2420, file: !31, line: 416, baseType: !207, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2420, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2420, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2420, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2420, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2420, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2420, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2420, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2402, file: !31, line: 435, baseType: !2431, size: 64, offset: 384)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!207, !665, !2338, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2435, file: !31, line: 344, baseType: !207, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2435, file: !31, line: 345, baseType: !481, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2435, file: !31, line: 346, baseType: !481, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2435, file: !31, line: 347, baseType: !481, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2435, file: !31, line: 348, baseType: !481, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2435, file: !31, line: 349, baseType: !481, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2435, file: !31, line: 350, baseType: !481, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2435, file: !31, line: 351, baseType: !391, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2435, file: !31, line: 353, baseType: !391, size: 64, offset: 512)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2435, file: !31, line: 354, baseType: !207, size: 32, offset: 576)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2435, file: !31, line: 355, baseType: !207, size: 32, offset: 608)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2435, file: !31, line: 356, baseType: !481, size: 64, offset: 640)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2435, file: !31, line: 357, baseType: !481, size: 64, offset: 704)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2435, file: !31, line: 358, baseType: !481, size: 64, offset: 768)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2435, file: !31, line: 359, baseType: !391, size: 64, offset: 832)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2435, file: !31, line: 360, baseType: !207, size: 32, offset: 896)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2402, file: !31, line: 436, baseType: !2454, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!207, !665, !2398, !2434}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2402, file: !31, line: 438, baseType: !2431, size: 64, offset: 512)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2402, file: !31, line: 439, baseType: !2459, size: 64, offset: 576)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!207, !665, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2464)
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2463, file: !31, line: 410, baseType: !7, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2463, file: !31, line: 411, baseType: !2467, size: 1344, offset: 64)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 1344, elements: !717)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2480}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2468, file: !31, line: 396, baseType: !7, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2468, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2468, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2468, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2468, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2468, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2468, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2468, file: !31, line: 404, baseType: !483, size: 64, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2468, file: !31, line: 405, baseType: !2479, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !157, line: 126, baseType: !481)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2468, file: !31, line: 406, baseType: !2479, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2402, file: !31, line: 440, baseType: !2410, size: 64, offset: 640)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !666, file: !37, line: 1426, baseType: !2483, size: 64, offset: 576)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !666, file: !37, line: 1427, baseType: !243, size: 64, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !666, file: !37, line: 1428, baseType: !243, size: 64, offset: 704)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !666, file: !37, line: 1429, baseType: !243, size: 64, offset: 768)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !666, file: !37, line: 1430, baseType: !445, size: 64, offset: 832)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !666, file: !37, line: 1431, baseType: !836, size: 256, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !666, file: !37, line: 1432, baseType: !207, size: 32, offset: 1152)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !666, file: !37, line: 1433, baseType: !816, size: 32, offset: 1184)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !666, file: !37, line: 1437, baseType: !2494, size: 64, offset: 1216)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2497)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !666, file: !37, line: 1449, baseType: !2499, size: 64, offset: 1280)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !461, line: 34, size: 64, elements: !2500)
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2499, file: !461, line: 35, baseType: !464, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !666, file: !37, line: 1450, baseType: !156, size: 128, offset: 1344)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !666, file: !37, line: 1451, baseType: !2504, size: 64, offset: 1472)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !666, file: !37, line: 1452, baseType: !1891, size: 64, offset: 1536)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !666, file: !37, line: 1453, baseType: !2508, size: 64, offset: 1600)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !666, file: !37, line: 1454, baseType: !705, size: 128, offset: 1664)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !666, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !666, file: !37, line: 1456, baseType: !2513, size: 2432, offset: 1856)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2514)
!2514 = !{!2515, !2516, !2517, !2519, !2551}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2513, file: !31, line: 519, baseType: !7, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2513, file: !31, line: 520, baseType: !836, size: 256, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2513, file: !31, line: 521, baseType: !2518, size: 192, offset: 320)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 192, elements: !717)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2513, file: !31, line: 522, baseType: !2520, size: 1728, offset: 512)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2521, size: 1728, elements: !717)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2522)
!2522 = !{!2523, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2521, file: !31, line: 223, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2526)
!2526 = !{!2527, !2528, !2541, !2542}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2525, file: !31, line: 444, baseType: !207, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2525, file: !31, line: 445, baseType: !2529, size: 64, offset: 64)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2531)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2531, file: !31, line: 311, baseType: !753, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2531, file: !31, line: 312, baseType: !753, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2531, file: !31, line: 313, baseType: !753, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2531, file: !31, line: 314, baseType: !753, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2531, file: !31, line: 315, baseType: !2323, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2531, file: !31, line: 316, baseType: !2323, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2531, file: !31, line: 317, baseType: !2323, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2531, file: !31, line: 318, baseType: !2395, size: 64, offset: 448)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2525, file: !31, line: 446, baseType: !148, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2525, file: !31, line: 447, baseType: !2524, size: 64, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2521, file: !31, line: 224, baseType: !207, size: 32, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2521, file: !31, line: 226, baseType: !156, size: 128, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2521, file: !31, line: 227, baseType: !243, size: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2521, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2521, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2521, file: !31, line: 230, baseType: !2359, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2521, file: !31, line: 231, baseType: !2359, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2521, file: !31, line: 232, baseType: !151, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2513, file: !31, line: 523, baseType: !2552, size: 192, offset: 2240)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2529, size: 192, elements: !717)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !666, file: !37, line: 1458, baseType: !2554, size: 2112, offset: 4288)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2555)
!2555 = !{!2556, !2557, !2558}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2554, file: !37, line: 1411, baseType: !207, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2554, file: !37, line: 1412, baseType: !1448, size: 128, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2554, file: !37, line: 1413, baseType: !2559, size: 1920, offset: 192)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2560, size: 1920, elements: !717)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2561, line: 12, size: 640, elements: !2562)
!2561 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2562 = !{!2563, !2571, !2572, !2577, !2578}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2560, file: !2561, line: 13, baseType: !2564, size: 320)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2565, line: 17, size: 320, elements: !2566)
!2565 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2566 = !{!2567, !2568, !2569, !2570}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2564, file: !2565, line: 18, baseType: !207, size: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2564, file: !2565, line: 19, baseType: !207, size: 32, offset: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2564, file: !2565, line: 20, baseType: !1448, size: 128, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2564, file: !2565, line: 22, baseType: !428, size: 128, align: 64, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2560, file: !2561, line: 14, baseType: !282, size: 64, offset: 320)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2560, file: !2561, line: 15, baseType: !2573, size: 64, offset: 384)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2574, line: 16, size: 64, elements: !2575)
!2574 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2575 = !{!2576}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2573, file: !2574, line: 17, baseType: !1188, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2560, file: !2561, line: 16, baseType: !1448, size: 128, offset: 448)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2560, file: !2561, line: 17, baseType: !816, size: 32, offset: 576)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !666, file: !37, line: 1465, baseType: !151, size: 64, offset: 6400)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !666, file: !37, line: 1468, baseType: !478, size: 32, offset: 6464)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !666, file: !37, line: 1470, baseType: !600, size: 64, offset: 6528)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !666, file: !37, line: 1471, baseType: !600, size: 64, offset: 6592)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !666, file: !37, line: 1473, baseType: !277, size: 32, offset: 6656)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !666, file: !37, line: 1474, baseType: !2585, size: 64, offset: 6720)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !666, file: !37, line: 1477, baseType: !2588, size: 256, offset: 6784)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !280)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !666, file: !37, line: 1478, baseType: !2590, size: 128, offset: 7040)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2591, line: 18, baseType: !2592)
!2591 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2591, line: 16, size: 128, elements: !2593)
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2592, file: !2591, line: 17, baseType: !2595, size: 128)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !1700)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !666, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !666, file: !37, line: 1481, baseType: !2598, size: 32, offset: 7200)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !157, line: 150, baseType: !7)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !666, file: !37, line: 1487, baseType: !381, size: 192, offset: 7232)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !666, file: !37, line: 1493, baseType: !228, size: 64, offset: 7424)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !666, file: !37, line: 1495, baseType: !2602, size: 64, offset: 7488)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !443, line: 135, size: 1024, align: 512, elements: !2605)
!2605 = !{!2606, !2610, !2611, !2618, !2624, !2628, !2632, !2636, !2637, !2641, !2645, !2650, !2654}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2604, file: !443, line: 136, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!207, !445, !7}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2604, file: !443, line: 137, baseType: !2607, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2604, file: !443, line: 138, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!207, !2615, !2617}
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2604, file: !443, line: 139, baseType: !2619, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!207, !2615, !7, !228, !2622}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2604, file: !443, line: 141, baseType: !2625, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!207, !2615}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2604, file: !443, line: 142, baseType: !2629, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!207, !445}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2604, file: !443, line: 143, baseType: !2633, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !445}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2604, file: !443, line: 144, baseType: !2633, size: 64, offset: 448)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2604, file: !443, line: 145, baseType: !2638, size: 64, offset: 512)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !445, !488}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2604, file: !443, line: 146, baseType: !2642, size: 64, offset: 576)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!547, !445, !547, !207}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2604, file: !443, line: 147, baseType: !2646, size: 64, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!441, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2604, file: !443, line: 148, baseType: !2651, size: 64, offset: 704)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!207, !609, !552}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2604, file: !443, line: 149, baseType: !2655, size: 64, offset: 768)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!445, !445, !2658}
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !666, file: !37, line: 1500, baseType: !207, size: 32, offset: 7552)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !666, file: !37, line: 1502, baseType: !2662, size: 448, offset: 7616)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2307, line: 60, size: 448, elements: !2663)
!2663 = !{!2664, !2669, !2670, !2671, !2672, !2673, !2674}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2662, file: !2307, line: 61, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!243, !2668, !2305}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2662, file: !2307, line: 63, baseType: !2665, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2662, file: !2307, line: 66, baseType: !116, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2662, file: !2307, line: 67, baseType: !207, size: 32, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !2307, line: 68, baseType: !7, size: 32, offset: 224)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2662, file: !2307, line: 71, baseType: !156, size: 128, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2662, file: !2307, line: 77, baseType: !2675, size: 64, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !666, file: !37, line: 1505, baseType: !385, size: 64, offset: 8064)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !666, file: !37, line: 1508, baseType: !385, size: 64, offset: 8128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !666, file: !37, line: 1511, baseType: !207, size: 32, offset: 8192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !666, file: !37, line: 1514, baseType: !969, size: 32, offset: 8224)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !666, file: !37, line: 1517, baseType: !2681, size: 64, offset: 8256)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !115, line: 18, flags: DIFlagFwdDecl)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !666, file: !37, line: 1518, baseType: !701, size: 64, offset: 8320)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !666, file: !37, line: 1525, baseType: !1678, size: 64, offset: 8384)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !666, file: !37, line: 1532, baseType: !2686, size: 64, offset: 8448)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2687, line: 52, size: 64, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2686, file: !2687, line: 53, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2687, line: 40, size: 256, elements: !2692)
!2692 = !{!2693, !2694, !2699}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2691, file: !2687, line: 42, baseType: !395)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2691, file: !2687, line: 44, baseType: !2695, size: 192)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2687, line: 28, size: 192, elements: !2696)
!2696 = !{!2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2695, file: !2687, line: 29, baseType: !156, size: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2695, file: !2687, line: 31, baseType: !116, size: 64, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2691, file: !2687, line: 49, baseType: !116, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !666, file: !37, line: 1533, baseType: !2686, size: 64, offset: 8512)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !666, file: !37, line: 1534, baseType: !428, size: 128, align: 64, offset: 8576)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !666, file: !37, line: 1535, baseType: !1925, size: 256, offset: 8704)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !666, file: !37, line: 1537, baseType: !381, size: 192, offset: 8960)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !666, file: !37, line: 1542, baseType: !207, size: 32, offset: 9152)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !666, file: !37, line: 1545, baseType: !395, offset: 9184)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !666, file: !37, line: 1546, baseType: !156, size: 128, offset: 9216)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !666, file: !37, line: 1548, baseType: !395, offset: 9344)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !666, file: !37, line: 1549, baseType: !156, size: 128, offset: 9344)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !489, file: !37, line: 624, baseType: !802, size: 64, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !489, file: !37, line: 631, baseType: !243, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !37, line: 639, baseType: !2712, size: 32, offset: 384)
!2712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !37, line: 639, size: 32, elements: !2713)
!2713 = !{!2714, !2716}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2712, file: !37, line: 640, baseType: !2715, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2712, file: !37, line: 641, baseType: !7, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !489, file: !37, line: 643, baseType: !575, size: 32, offset: 416)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !489, file: !37, line: 644, baseType: !593, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !489, file: !37, line: 645, baseType: !596, size: 128, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !489, file: !37, line: 646, baseType: !596, size: 128, offset: 640)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !489, file: !37, line: 647, baseType: !596, size: 128, offset: 768)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !489, file: !37, line: 648, baseType: !395, offset: 896)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !489, file: !37, line: 649, baseType: !188, size: 16, offset: 896)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !489, file: !37, line: 650, baseType: !1324, size: 8, offset: 912)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !489, file: !37, line: 651, baseType: !1324, size: 8, offset: 920)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !489, file: !37, line: 652, baseType: !2479, size: 64, offset: 960)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !489, file: !37, line: 659, baseType: !243, size: 64, offset: 1024)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !489, file: !37, line: 660, baseType: !836, size: 256, offset: 1088)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !489, file: !37, line: 662, baseType: !243, size: 64, offset: 1344)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !489, file: !37, line: 663, baseType: !243, size: 64, offset: 1408)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !489, file: !37, line: 665, baseType: !705, size: 128, offset: 1472)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !489, file: !37, line: 666, baseType: !156, size: 128, offset: 1600)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !489, file: !37, line: 675, baseType: !156, size: 128, offset: 1728)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !489, file: !37, line: 676, baseType: !156, size: 128, offset: 1856)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !489, file: !37, line: 677, baseType: !156, size: 128, offset: 1984)
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !37, line: 678, baseType: !2737, size: 128, offset: 2112)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !37, line: 678, size: 128, elements: !2738)
!2738 = !{!2739, !2740}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2737, file: !37, line: 679, baseType: !701, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2737, file: !37, line: 680, baseType: !428, size: 128, align: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !489, file: !37, line: 682, baseType: !387, size: 64, offset: 2240)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !489, file: !37, line: 683, baseType: !387, size: 64, offset: 2304)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !489, file: !37, line: 684, baseType: !816, size: 32, offset: 2368)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !489, file: !37, line: 685, baseType: !816, size: 32, offset: 2400)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !489, file: !37, line: 686, baseType: !816, size: 32, offset: 2432)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !489, file: !37, line: 688, baseType: !816, size: 32, offset: 2464)
!2747 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !37, line: 690, baseType: !2748, size: 64, offset: 2496)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !37, line: 690, size: 64, elements: !2749)
!2749 = !{!2750, !2973}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2748, file: !37, line: 691, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2754)
!2754 = !{!2755, !2756, !2760, !2765, !2769, !2770, !2771, !2775, !2788, !2789, !2797, !2801, !2802, !2806, !2807, !2811, !2816, !2817, !2821, !2825, !2933, !2937, !2938, !2942, !2943, !2947, !2951, !2956, !2960, !2964, !2968, !2972}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2753, file: !37, line: 1823, baseType: !148, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2753, file: !37, line: 1824, baseType: !2757, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!593, !415, !593, !207}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2753, file: !37, line: 1825, baseType: !2761, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!638, !415, !547, !641, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2753, file: !37, line: 1826, baseType: !2766, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!638, !415, !228, !641, !2764}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2753, file: !37, line: 1827, baseType: !906, size: 64, offset: 256)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2753, file: !37, line: 1828, baseType: !906, size: 64, offset: 320)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2753, file: !37, line: 1829, baseType: !2772, size: 64, offset: 384)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!207, !909, !552}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2753, file: !37, line: 1830, baseType: !2776, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!207, !415, !2779}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2781)
!2781 = !{!2782, !2787}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2780, file: !37, line: 1777, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2784)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!207, !2779, !228, !207, !593, !481, !7}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2780, file: !37, line: 1778, baseType: !593, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2753, file: !37, line: 1831, baseType: !2776, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2753, file: !37, line: 1832, baseType: !2790, size: 64, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!2793, !415, !2795}
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2794, line: 52, baseType: !7)
!2794 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !685, line: 27, flags: DIFlagFwdDecl)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2753, file: !37, line: 1833, baseType: !2798, size: 64, offset: 640)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!116, !415, !7, !243}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2753, file: !37, line: 1834, baseType: !2798, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2753, file: !37, line: 1835, baseType: !2803, size: 64, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!207, !415, !1041}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2753, file: !37, line: 1836, baseType: !243, size: 64, offset: 832)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2753, file: !37, line: 1837, baseType: !2808, size: 64, offset: 896)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{!207, !488, !415}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2753, file: !37, line: 1838, baseType: !2812, size: 64, offset: 960)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!207, !415, !2815}
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !151)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2753, file: !37, line: 1839, baseType: !2808, size: 64, offset: 1024)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2753, file: !37, line: 1840, baseType: !2818, size: 64, offset: 1088)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!207, !415, !593, !593, !207}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2753, file: !37, line: 1841, baseType: !2822, size: 64, offset: 1152)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!207, !207, !415, !207}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2753, file: !37, line: 1842, baseType: !2826, size: 64, offset: 1216)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!207, !415, !207, !2829}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2831)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2863, !2864, !2865, !2878, !2909}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2830, file: !37, line: 1063, baseType: !2829, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2830, file: !37, line: 1064, baseType: !156, size: 128, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2830, file: !37, line: 1065, baseType: !705, size: 128, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2830, file: !37, line: 1066, baseType: !156, size: 128, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2830, file: !37, line: 1069, baseType: !156, size: 128, offset: 448)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2830, file: !37, line: 1072, baseType: !2815, size: 64, offset: 576)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2830, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2830, file: !37, line: 1074, baseType: !191, size: 8, offset: 672)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2830, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2830, file: !37, line: 1076, baseType: !207, size: 32, offset: 736)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2830, file: !37, line: 1077, baseType: !1448, size: 128, offset: 768)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2830, file: !37, line: 1078, baseType: !415, size: 64, offset: 896)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2830, file: !37, line: 1079, baseType: !593, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2830, file: !37, line: 1080, baseType: !593, size: 64, offset: 1024)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2830, file: !37, line: 1082, baseType: !2847, size: 64, offset: 1088)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2849)
!2849 = !{!2850, !2858, !2859, !2860, !2861, !2862}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2848, file: !37, line: 1315, baseType: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2852, line: 20, baseType: !2853)
!2852 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2852, line: 11, elements: !2854)
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2853, file: !2852, line: 12, baseType: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !407, line: 33, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !407, line: 31, elements: !409)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2848, file: !37, line: 1316, baseType: !207, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2848, file: !37, line: 1317, baseType: !207, size: 32, offset: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2848, file: !37, line: 1318, baseType: !2847, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2848, file: !37, line: 1319, baseType: !415, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2848, file: !37, line: 1320, baseType: !428, size: 128, align: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2830, file: !37, line: 1084, baseType: !243, size: 64, offset: 1152)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2830, file: !37, line: 1085, baseType: !243, size: 64, offset: 1216)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2830, file: !37, line: 1087, baseType: !2866, size: 64, offset: 1280)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2868)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2869)
!2869 = !{!2870, !2874}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2868, file: !37, line: 1012, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2829, !2829}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2868, file: !37, line: 1013, baseType: !2875, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2829}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2830, file: !37, line: 1088, baseType: !2879, size: 64, offset: 1344)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2881)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2882)
!2882 = !{!2883, !2887, !2891, !2892, !2896, !2900, !2904, !2908}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2881, file: !37, line: 1017, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!2815, !2815}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2881, file: !37, line: 1018, baseType: !2888, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !2815}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2881, file: !37, line: 1019, baseType: !2875, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2881, file: !37, line: 1020, baseType: !2893, size: 64, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!207, !2829, !207}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2881, file: !37, line: 1021, baseType: !2897, size: 64, offset: 256)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!552, !2829}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2881, file: !37, line: 1022, baseType: !2901, size: 64, offset: 320)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!207, !2829, !207, !160}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2881, file: !37, line: 1023, baseType: !2905, size: 64, offset: 384)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2829, !883}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2881, file: !37, line: 1024, baseType: !2897, size: 64, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2830, file: !37, line: 1097, baseType: !2910, size: 256, offset: 1408)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !37, line: 1089, size: 256, elements: !2911)
!2911 = !{!2912, !2921, !2927}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2910, file: !37, line: 1090, baseType: !2913, size: 256)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2914, line: 10, size: 256, elements: !2915)
!2914 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2915 = !{!2916, !2917, !2920}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2913, file: !2914, line: 11, baseType: !478, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2913, file: !2914, line: 12, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2914, line: 5, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2913, file: !2914, line: 13, baseType: !156, size: 128, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2910, file: !37, line: 1091, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2914, line: 17, size: 64, elements: !2923)
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2922, file: !2914, line: 18, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2914, line: 16, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2910, file: !37, line: 1096, baseType: !2928, size: 192)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2910, file: !37, line: 1092, size: 192, elements: !2929)
!2929 = !{!2930, !2931, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2928, file: !37, line: 1093, baseType: !156, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2928, file: !37, line: 1094, baseType: !207, size: 32, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2928, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2753, file: !37, line: 1843, baseType: !2934, size: 64, offset: 1280)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!638, !415, !789, !207, !641, !2764, !207}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2753, file: !37, line: 1844, baseType: !1081, size: 64, offset: 1344)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2753, file: !37, line: 1845, baseType: !2939, size: 64, offset: 1408)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!207, !207}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2753, file: !37, line: 1846, baseType: !2826, size: 64, offset: 1472)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2753, file: !37, line: 1847, baseType: !2944, size: 64, offset: 1536)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!638, !2065, !415, !2764, !641, !7}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2753, file: !37, line: 1848, baseType: !2948, size: 64, offset: 1600)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!638, !415, !2764, !2065, !641, !7}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2753, file: !37, line: 1849, baseType: !2952, size: 64, offset: 1664)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!207, !415, !116, !2955, !883}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2753, file: !37, line: 1850, baseType: !2957, size: 64, offset: 1728)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!116, !415, !207, !593, !593}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2753, file: !37, line: 1852, baseType: !2961, size: 64, offset: 1792)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !779, !415}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2753, file: !37, line: 1856, baseType: !2965, size: 64, offset: 1856)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!638, !415, !593, !415, !593, !641, !7}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2753, file: !37, line: 1858, baseType: !2969, size: 64, offset: 1920)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!593, !415, !593, !415, !593, !593, !7}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2753, file: !37, line: 1861, baseType: !2818, size: 64, offset: 1984)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2748, file: !37, line: 692, baseType: !732, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !489, file: !37, line: 694, baseType: !2975, size: 64, offset: 2560)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !2977)
!2977 = !{!2978, !2979, !2980, !2981}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2976, file: !37, line: 1101, baseType: !395)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2976, file: !37, line: 1102, baseType: !156, size: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2976, file: !37, line: 1103, baseType: !156, size: 128, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2976, file: !37, line: 1104, baseType: !156, size: 128, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !489, file: !37, line: 695, baseType: !803, size: 1216, align: 64, offset: 2624)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !489, file: !37, line: 696, baseType: !156, size: 128, offset: 3840)
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !37, line: 697, baseType: !2985, size: 64, offset: 3968)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !37, line: 697, size: 64, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2992, !2993}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2985, file: !37, line: 698, baseType: !2065, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2985, file: !37, line: 699, baseType: !2504, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2985, file: !37, line: 700, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2985, file: !37, line: 701, baseType: !547, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2985, file: !37, line: 702, baseType: !7, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !489, file: !37, line: 705, baseType: !277, size: 32, offset: 4032)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !489, file: !37, line: 708, baseType: !277, size: 32, offset: 4064)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !489, file: !37, line: 709, baseType: !2585, size: 64, offset: 4096)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !489, file: !37, line: 720, baseType: !151, size: 64, offset: 4160)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !446, file: !443, line: 98, baseType: !2999, size: 256, offset: 448)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !280)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !446, file: !443, line: 101, baseType: !3001, size: 32, offset: 704)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3002, line: 25, size: 32, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, scope: !3001, file: !3002, line: 26, baseType: !3005, size: 32)
!3005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3001, file: !3002, line: 26, size: 32, elements: !3006)
!3006 = !{!3007}
!3007 = !DIDerivedType(tag: DW_TAG_member, scope: !3005, file: !3002, line: 30, baseType: !3008, size: 32)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !3002, line: 30, size: 32, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3008, file: !3002, line: 31, baseType: !395)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3008, file: !3002, line: 32, baseType: !207, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !446, file: !443, line: 102, baseType: !2602, size: 64, offset: 768)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !446, file: !443, line: 103, baseType: !665, size: 64, offset: 832)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !446, file: !443, line: 104, baseType: !243, size: 64, offset: 896)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !446, file: !443, line: 105, baseType: !151, size: 64, offset: 960)
!3016 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !443, line: 107, baseType: !3017, size: 128, offset: 1024)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !443, line: 107, size: 128, elements: !3018)
!3018 = !{!3019, !3020}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3017, file: !443, line: 108, baseType: !156, size: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3017, file: !443, line: 109, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !446, file: !443, line: 111, baseType: !156, size: 128, offset: 1152)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !446, file: !443, line: 112, baseType: !156, size: 128, offset: 1280)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !446, file: !443, line: 120, baseType: !3025, size: 128, offset: 1408)
!3025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !443, line: 116, size: 128, elements: !3026)
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3025, file: !443, line: 117, baseType: !705, size: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3025, file: !443, line: 118, baseType: !460, size: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3025, file: !443, line: 119, baseType: !428, size: 128, align: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !416, file: !37, line: 922, baseType: !488, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !416, file: !37, line: 923, baseType: !2751, size: 64, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !416, file: !37, line: 929, baseType: !395, offset: 384)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !416, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !416, file: !37, line: 931, baseType: !385, size: 64, offset: 448)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !416, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !416, file: !37, line: 933, baseType: !2598, size: 32, offset: 544)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !416, file: !37, line: 934, baseType: !381, size: 192, offset: 576)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !416, file: !37, line: 935, baseType: !593, size: 64, offset: 768)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !416, file: !37, line: 936, baseType: !3040, size: 192, offset: 832)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3040, file: !37, line: 886, baseType: !2851)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3040, file: !37, line: 887, baseType: !1438, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3040, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3040, file: !37, line: 889, baseType: !495, size: 32, offset: 96)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3040, file: !37, line: 889, baseType: !495, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3040, file: !37, line: 890, baseType: !207, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !416, file: !37, line: 937, baseType: !1514, size: 64, offset: 1024)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !416, file: !37, line: 938, baseType: !3050, size: 256, offset: 1088)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3055, !3056, !3057}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3050, file: !37, line: 897, baseType: !243, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3050, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3050, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3050, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3050, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3050, file: !37, line: 904, baseType: !593, size: 64, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !416, file: !37, line: 940, baseType: !481, size: 64, offset: 1344)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !416, file: !37, line: 945, baseType: !151, size: 64, offset: 1408)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !416, file: !37, line: 949, baseType: !156, size: 128, offset: 1472)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !416, file: !37, line: 950, baseType: !156, size: 128, offset: 1600)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !416, file: !37, line: 952, baseType: !802, size: 64, offset: 1728)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !416, file: !37, line: 953, baseType: !969, size: 32, offset: 1792)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !416, file: !37, line: 954, baseType: !969, size: 32, offset: 1824)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !224, file: !225, line: 163, baseType: !3066, size: 64, offset: 2048)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !225, line: 24, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !224, file: !225, line: 165, baseType: !7, size: 32, offset: 2112)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !224, file: !225, line: 166, baseType: !3070, size: 320, offset: 2176)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3071, line: 11, size: 320, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3072 = !{!3073, !3074, !3075, !3080}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3070, file: !3071, line: 16, baseType: !705, size: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3070, file: !3071, line: 17, baseType: !243, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3070, file: !3071, line: 18, baseType: !3076, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3079}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3070, file: !3071, line: 19, baseType: !478, size: 32, offset: 256)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !224, file: !225, line: 168, baseType: !3082, size: 64, offset: 2496)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 64, elements: !258)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !224, file: !225, line: 170, baseType: !3084, size: 64, offset: 2560)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !225, line: 170, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !224, file: !225, line: 172, baseType: !3087, size: 64, offset: 2624)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !235, line: 90, size: 192, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3093, !3094, !3095}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3088, file: !235, line: 91, baseType: !206, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !3088, file: !235, line: 92, baseType: !206, size: 32, offset: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !3088, file: !235, line: 93, baseType: !206, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !3088, file: !235, line: 94, baseType: !206, size: 32, offset: 96)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !3088, file: !235, line: 95, baseType: !206, size: 32, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !3088, file: !235, line: 96, baseType: !206, size: 32, offset: 160)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !224, file: !225, line: 174, baseType: !248, size: 768, offset: 2688)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !224, file: !225, line: 175, baseType: !242, size: 64, offset: 3456)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !224, file: !225, line: 176, baseType: !242, size: 64, offset: 3520)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !224, file: !225, line: 177, baseType: !242, size: 64, offset: 3584)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !224, file: !225, line: 179, baseType: !3101, size: 64, offset: 3648)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!207, !223}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !224, file: !225, line: 180, baseType: !3105, size: 64, offset: 3712)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !223}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !224, file: !225, line: 181, baseType: !3109, size: 64, offset: 3776)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!207, !223, !415}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !224, file: !225, line: 182, baseType: !3113, size: 64, offset: 3840)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!207, !223, !7, !7, !207}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !224, file: !225, line: 184, baseType: !3117, size: 64, offset: 3904)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !225, line: 337, size: 576, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3192, !3193}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3118, file: !225, line: 339, baseType: !151, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3118, file: !225, line: 341, baseType: !207, size: 32, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3118, file: !225, line: 342, baseType: !228, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3118, file: !225, line: 344, baseType: !223, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3118, file: !225, line: 345, baseType: !3125, size: 64, offset: 256)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !225, line: 302, size: 960, elements: !3127)
!3127 = !{!3128, !3129, !3133, !3144, !3148, !3152, !3181, !3185, !3186, !3187, !3188, !3189, !3190, !3191}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3126, file: !225, line: 304, baseType: !151, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3126, file: !225, line: 306, baseType: !3130, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{null, !3117, !7, !7, !207}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3126, file: !225, line: 307, baseType: !3134, size: 64, offset: 128)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !3117, !3137, !7}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3139)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !225, line: 32, size: 64, elements: !3140)
!3140 = !{!3141, !3142, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3139, file: !225, line: 33, baseType: !187, size: 16)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3139, file: !225, line: 34, baseType: !187, size: 16, offset: 16)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3139, file: !225, line: 35, baseType: !206, size: 32, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3126, file: !225, line: 309, baseType: !3145, size: 64, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!552, !3117, !7, !7, !207}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3126, file: !225, line: 310, baseType: !3149, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!552, !3125, !223}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3126, file: !225, line: 311, baseType: !3153, size: 64, offset: 320)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!207, !3125, !223, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3158)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3159, line: 342, size: 1600, elements: !3160)
!3159 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3160 = !{!3161, !3163, !3164, !3165, !3166, !3167, !3169, !3171, !3172, !3173, !3174, !3175, !3176, !3178, !3179, !3180}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3158, file: !3159, line: 344, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3159, line: 14, baseType: !243)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3158, file: !3159, line: 346, baseType: !187, size: 16, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3158, file: !3159, line: 347, baseType: !187, size: 16, offset: 80)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3158, file: !3159, line: 348, baseType: !187, size: 16, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3158, file: !3159, line: 349, baseType: !187, size: 16, offset: 112)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3158, file: !3159, line: 351, baseType: !3168, size: 64, offset: 128)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3162, size: 64, elements: !244)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3158, file: !3159, line: 352, baseType: !3170, size: 768, offset: 192)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3162, size: 768, elements: !249)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3158, file: !3159, line: 353, baseType: !3168, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3158, file: !3159, line: 354, baseType: !3168, size: 64, offset: 1024)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3158, file: !3159, line: 355, baseType: !3168, size: 64, offset: 1088)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3158, file: !3159, line: 356, baseType: !3168, size: 64, offset: 1152)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3158, file: !3159, line: 357, baseType: !3168, size: 64, offset: 1216)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3158, file: !3159, line: 358, baseType: !3177, size: 128, offset: 1280)
!3177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3162, size: 128, elements: !258)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3158, file: !3159, line: 359, baseType: !3168, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3158, file: !3159, line: 360, baseType: !3168, size: 64, offset: 1472)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3158, file: !3159, line: 362, baseType: !3162, size: 64, offset: 1536)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3126, file: !225, line: 312, baseType: !3182, size: 64, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !3117}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3126, file: !225, line: 313, baseType: !3182, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3126, file: !225, line: 315, baseType: !552, size: 8, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3126, file: !225, line: 316, baseType: !207, size: 32, offset: 544)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3126, file: !225, line: 317, baseType: !228, size: 64, offset: 576)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3126, file: !225, line: 319, baseType: !3156, size: 64, offset: 640)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3126, file: !225, line: 321, baseType: !156, size: 128, offset: 704)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3126, file: !225, line: 322, baseType: !156, size: 128, offset: 832)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3118, file: !225, line: 347, baseType: !156, size: 128, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3118, file: !225, line: 348, baseType: !156, size: 128, offset: 448)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !224, file: !225, line: 186, baseType: !395, offset: 3968)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !224, file: !225, line: 187, baseType: !381, size: 192, offset: 3968)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !224, file: !225, line: 189, baseType: !7, size: 32, offset: 4160)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !224, file: !225, line: 190, baseType: !552, size: 8, offset: 4192)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !224, file: !225, line: 192, baseType: !3199, size: 5568, offset: 4224)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !66, line: 461, size: 5568, elements: !3200)
!3200 = !{!3201, !3500, !3502, !3505, !3506, !3557, !3646, !3647, !3648, !3649, !3650, !3659, !3753, !3766, !3769, !3770, !3774, !3776, !3777, !3778, !3782, !3788, !3789, !3792, !3796, !3799, !3800, !3801, !3802, !3803, !3835, !3836, !3837, !3840, !3843, !3844, !3845, !3846}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3199, file: !66, line: 462, baseType: !3202, size: 512)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3203, line: 64, size: 512, elements: !3204)
!3203 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3204 = !{!3205, !3206, !3207, !3209, !3249, !3351, !3490, !3495, !3496, !3497, !3498, !3499}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3202, file: !3203, line: 65, baseType: !228, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3202, file: !3203, line: 66, baseType: !156, size: 128, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3202, file: !3203, line: 67, baseType: !3208, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3202, file: !3203, line: 68, baseType: !3210, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3203, line: 192, size: 704, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3211, file: !3203, line: 193, baseType: !156, size: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3211, file: !3203, line: 194, baseType: !395, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3211, file: !3203, line: 195, baseType: !3202, size: 512, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3211, file: !3203, line: 196, baseType: !3217, size: 64, offset: 640)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3203, line: 156, size: 192, elements: !3220)
!3220 = !{!3221, !3226, !3231}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3219, file: !3203, line: 157, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3223)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!207, !3210, !3208}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3219, file: !3203, line: 158, baseType: !3227, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3228)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!228, !3210, !3208}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3219, file: !3203, line: 159, baseType: !3232, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3233)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!207, !3210, !3208, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3203, line: 148, size: 20736, elements: !3238)
!3238 = !{!3239, !3241, !3243, !3244, !3248}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3237, file: !3203, line: 149, baseType: !3240, size: 192)
!3240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 192, elements: !717)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3237, file: !3203, line: 150, baseType: !3242, size: 4096, offset: 192)
!3242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 4096, elements: !1847)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3237, file: !3203, line: 151, baseType: !207, size: 32, offset: 4288)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3237, file: !3203, line: 152, baseType: !3245, size: 16384, offset: 4320)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 16384, elements: !3246)
!3246 = !{!3247}
!3247 = !DISubrange(count: 2048)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3237, file: !3203, line: 153, baseType: !207, size: 32, offset: 20704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3202, file: !3203, line: 69, baseType: !3250, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3203, line: 138, size: 448, elements: !3252)
!3252 = !{!3253, !3257, !3276, !3278, !3311, !3341, !3345}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3251, file: !3203, line: 139, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{null, !3208}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3251, file: !3203, line: 140, baseType: !3258, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3260)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3261, line: 230, size: 128, elements: !3262)
!3261 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3262 = !{!3263, !3272}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3260, file: !3261, line: 231, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!638, !3208, !3267, !547}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3261, line: 30, size: 128, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3268, file: !3261, line: 31, baseType: !228, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3268, file: !3261, line: 32, baseType: !492, size: 16, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3260, file: !3261, line: 232, baseType: !3273, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!638, !3208, !3267, !228, !641}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3251, file: !3203, line: 141, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3251, file: !3203, line: 142, baseType: !3279, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3261, line: 84, size: 320, elements: !3283)
!3283 = !{!3284, !3285, !3289, !3308, !3309}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3282, file: !3261, line: 85, baseType: !228, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3282, file: !3261, line: 86, baseType: !3286, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!492, !3208, !3267, !207}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3282, file: !3261, line: 88, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!492, !3208, !3293, !207}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3261, line: 168, size: 448, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3303, !3304}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3294, file: !3261, line: 169, baseType: !3268, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3294, file: !3261, line: 170, baseType: !641, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3294, file: !3261, line: 171, baseType: !151, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3294, file: !3261, line: 172, baseType: !3300, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!638, !415, !3208, !3293, !547, !593, !641}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3294, file: !3261, line: 174, baseType: !3300, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3294, file: !3261, line: 176, baseType: !3305, size: 64, offset: 384)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!207, !415, !3208, !3293, !1041}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3282, file: !3261, line: 90, baseType: !3277, size: 64, offset: 192)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3282, file: !3261, line: 91, baseType: !3310, size: 64, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3251, file: !3203, line: 143, baseType: !3312, size: 64, offset: 256)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!3315, !3208}
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3317)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !54, line: 39, size: 384, elements: !3318)
!3318 = !{!3319, !3320, !3324, !3328, !3336, !3340}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3317, file: !54, line: 40, baseType: !53, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3317, file: !54, line: 41, baseType: !3321, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!552}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3317, file: !54, line: 42, baseType: !3325, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!151}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3317, file: !54, line: 43, baseType: !3329, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!3332, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !54, line: 19, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3317, file: !54, line: 44, baseType: !3337, size: 64, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!3332}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3317, file: !54, line: 45, baseType: !529, size: 64, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3251, file: !3203, line: 144, baseType: !3342, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!3332, !3208}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3251, file: !3203, line: 145, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{null, !3208, !3349, !3350}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3202, file: !3203, line: 70, baseType: !3352, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !685, line: 123, size: 1024, elements: !3354)
!3354 = !{!3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3483, !3484, !3485, !3486, !3487}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3353, file: !685, line: 124, baseType: !816, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3353, file: !685, line: 125, baseType: !816, size: 32, offset: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3353, file: !685, line: 135, baseType: !3352, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3353, file: !685, line: 136, baseType: !228, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3353, file: !685, line: 138, baseType: !829, size: 192, align: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3353, file: !685, line: 140, baseType: !3332, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3353, file: !685, line: 141, baseType: !7, size: 32, offset: 448)
!3362 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !685, line: 142, baseType: !3363, size: 256, offset: 512)
!3363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3353, file: !685, line: 142, size: 256, elements: !3364)
!3364 = !{!3365, !3411, !3415}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3363, file: !685, line: 143, baseType: !3366, size: 192)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !685, line: 91, size: 192, elements: !3367)
!3367 = !{!3368, !3369, !3370}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3366, file: !685, line: 92, baseType: !243, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3366, file: !685, line: 94, baseType: !825, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3366, file: !685, line: 100, baseType: !3371, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !685, line: 180, size: 704, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3383, !3384, !3385, !3409, !3410}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3372, file: !685, line: 182, baseType: !3352, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3372, file: !685, line: 183, baseType: !7, size: 32, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3372, file: !685, line: 186, baseType: !3377, size: 192, offset: 128)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3378, line: 19, size: 192, elements: !3379)
!3378 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3379 = !{!3380, !3381, !3382}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3377, file: !3378, line: 20, baseType: !807, size: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3377, file: !3378, line: 21, baseType: !7, size: 32, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3377, file: !3378, line: 22, baseType: !7, size: 32, offset: 160)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3372, file: !685, line: 187, baseType: !478, size: 32, offset: 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3372, file: !685, line: 188, baseType: !478, size: 32, offset: 352)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3372, file: !685, line: 189, baseType: !3386, size: 64, offset: 384)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !685, line: 168, size: 320, elements: !3388)
!3388 = !{!3389, !3393, !3397, !3401, !3405}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3387, file: !685, line: 169, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!207, !779, !3371}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3387, file: !685, line: 171, baseType: !3394, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!207, !3352, !228, !492}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3387, file: !685, line: 173, baseType: !3398, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!207, !3352}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3387, file: !685, line: 174, baseType: !3402, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!207, !3352, !3352, !228}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3387, file: !685, line: 176, baseType: !3406, size: 64, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!207, !779, !3352, !3371}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3372, file: !685, line: 192, baseType: !156, size: 128, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3372, file: !685, line: 194, baseType: !1448, size: 128, offset: 576)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3363, file: !685, line: 144, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !685, line: 103, size: 64, elements: !3413)
!3413 = !{!3414}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3412, file: !685, line: 104, baseType: !3352, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3363, file: !685, line: 145, baseType: !3416, size: 256)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !685, line: 107, size: 256, elements: !3417)
!3417 = !{!3418, !3478, !3481, !3482}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3416, file: !685, line: 108, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !685, line: 217, size: 768, elements: !3422)
!3422 = !{!3423, !3443, !3447, !3451, !3455, !3459, !3463, !3467, !3468, !3469, !3470, !3474}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3421, file: !685, line: 222, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!207, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !685, line: 197, size: 1088, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3428, file: !685, line: 199, baseType: !3352, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3428, file: !685, line: 200, baseType: !415, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3428, file: !685, line: 201, baseType: !779, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3428, file: !685, line: 202, baseType: !151, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3428, file: !685, line: 205, baseType: !381, size: 192, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3428, file: !685, line: 206, baseType: !381, size: 192, offset: 448)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3428, file: !685, line: 207, baseType: !207, size: 32, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3428, file: !685, line: 208, baseType: !156, size: 128, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3428, file: !685, line: 209, baseType: !547, size: 64, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3428, file: !685, line: 211, baseType: !641, size: 64, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3428, file: !685, line: 212, baseType: !552, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3428, file: !685, line: 213, baseType: !552, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3428, file: !685, line: 214, baseType: !1069, size: 64, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3421, file: !685, line: 223, baseType: !3444, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{null, !3427}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3421, file: !685, line: 236, baseType: !3448, size: 64, offset: 128)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!207, !779, !151}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3421, file: !685, line: 238, baseType: !3452, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!151, !779, !2764}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3421, file: !685, line: 239, baseType: !3456, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!151, !779, !151, !2764}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3421, file: !685, line: 240, baseType: !3460, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !779, !151}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3421, file: !685, line: 242, baseType: !3464, size: 64, offset: 384)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!638, !3427, !547, !641, !593}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3421, file: !685, line: 252, baseType: !641, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3421, file: !685, line: 259, baseType: !552, size: 8, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3421, file: !685, line: 260, baseType: !3464, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3421, file: !685, line: 263, baseType: !3471, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!2793, !3427, !2795}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3421, file: !685, line: 266, baseType: !3475, size: 64, offset: 704)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!207, !3427, !1041}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3416, file: !685, line: 109, baseType: !3479, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !685, line: 31, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3416, file: !685, line: 110, baseType: !593, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3416, file: !685, line: 111, baseType: !3352, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3353, file: !685, line: 148, baseType: !151, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3353, file: !685, line: 154, baseType: !481, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3353, file: !685, line: 156, baseType: !188, size: 16, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3353, file: !685, line: 157, baseType: !492, size: 16, offset: 912)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3353, file: !685, line: 158, baseType: !3488, size: 64, offset: 960)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !685, line: 32, flags: DIFlagFwdDecl)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3202, file: !3203, line: 71, baseType: !3491, size: 32, offset: 448)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3492, line: 19, size: 32, elements: !3493)
!3492 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3493 = !{!3494}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3491, file: !3492, line: 20, baseType: !1202, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3202, file: !3203, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3202, file: !3203, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3202, file: !3203, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3202, file: !3203, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3202, file: !3203, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3199, file: !66, line: 463, baseType: !3501, size: 64, offset: 512)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3199, file: !66, line: 465, baseType: !3503, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !66, line: 36, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3199, file: !66, line: 467, baseType: !228, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3199, file: !66, line: 468, baseType: !3507, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !66, line: 87, size: 384, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3517, !3522, !3526}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3509, file: !66, line: 88, baseType: !228, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3509, file: !66, line: 89, baseType: !3279, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3509, file: !66, line: 90, baseType: !3514, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!207, !3501, !3236}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3509, file: !66, line: 91, baseType: !3518, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!547, !3501, !3521, !3349, !3350}
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3509, file: !66, line: 93, baseType: !3523, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !3501}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3509, file: !66, line: 95, baseType: !3527, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3529)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !73, line: 278, size: 1472, elements: !3530)
!3530 = !{!3531, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3529, file: !73, line: 279, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!207, !3501}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3529, file: !73, line: 280, baseType: !3523, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3529, file: !73, line: 281, baseType: !3532, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3529, file: !73, line: 282, baseType: !3532, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3529, file: !73, line: 283, baseType: !3532, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3529, file: !73, line: 284, baseType: !3532, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3529, file: !73, line: 285, baseType: !3532, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3529, file: !73, line: 286, baseType: !3532, size: 64, offset: 448)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3529, file: !73, line: 287, baseType: !3532, size: 64, offset: 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3529, file: !73, line: 288, baseType: !3532, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3529, file: !73, line: 289, baseType: !3532, size: 64, offset: 640)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3529, file: !73, line: 290, baseType: !3532, size: 64, offset: 704)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3529, file: !73, line: 291, baseType: !3532, size: 64, offset: 768)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3529, file: !73, line: 292, baseType: !3532, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3529, file: !73, line: 293, baseType: !3532, size: 64, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3529, file: !73, line: 294, baseType: !3532, size: 64, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3529, file: !73, line: 295, baseType: !3532, size: 64, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3529, file: !73, line: 296, baseType: !3532, size: 64, offset: 1088)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3529, file: !73, line: 297, baseType: !3532, size: 64, offset: 1152)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3529, file: !73, line: 298, baseType: !3532, size: 64, offset: 1216)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3529, file: !73, line: 299, baseType: !3532, size: 64, offset: 1280)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3529, file: !73, line: 300, baseType: !3532, size: 64, offset: 1344)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3529, file: !73, line: 301, baseType: !3532, size: 64, offset: 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3199, file: !66, line: 470, baseType: !3558, size: 64, offset: 768)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3560, line: 82, size: 1408, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567, !3568, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3641, !3644, !3645}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3559, file: !3560, line: 83, baseType: !228, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3559, file: !3560, line: 84, baseType: !228, size: 64, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3559, file: !3560, line: 85, baseType: !3501, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3559, file: !3560, line: 86, baseType: !3279, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3559, file: !3560, line: 87, baseType: !3279, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3559, file: !3560, line: 88, baseType: !3279, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3559, file: !3560, line: 90, baseType: !3569, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!207, !3501, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !60, line: 95, size: 1152, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3593, !3605, !3606, !3607, !3608, !3609, !3617, !3618, !3619, !3620, !3621, !3622}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3573, file: !60, line: 96, baseType: !228, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3573, file: !60, line: 97, baseType: !3558, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3573, file: !60, line: 99, baseType: !148, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3573, file: !60, line: 100, baseType: !228, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3573, file: !60, line: 102, baseType: !552, size: 8, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3573, file: !60, line: 103, baseType: !59, size: 32, offset: 288)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3573, file: !60, line: 105, baseType: !3582, size: 64, offset: 320)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3584)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3159, line: 262, size: 1600, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3592}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3584, file: !3159, line: 263, baseType: !2588, size: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3584, file: !3159, line: 264, baseType: !2588, size: 256, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3584, file: !3159, line: 265, baseType: !3589, size: 1024, offset: 512)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 1024, elements: !3590)
!3590 = !{!3591}
!3591 = !DISubrange(count: 128)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3584, file: !3159, line: 266, baseType: !3332, size: 64, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3573, file: !60, line: 106, baseType: !3594, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3596)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3159, line: 210, size: 256, elements: !3597)
!3597 = !{!3598, !3602, !3603, !3604}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3596, file: !3159, line: 211, baseType: !3599, size: 72)
!3599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 72, elements: !3600)
!3600 = !{!3601}
!3601 = !DISubrange(count: 9)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3596, file: !3159, line: 212, baseType: !3162, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3596, file: !3159, line: 213, baseType: !277, size: 32, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3596, file: !3159, line: 214, baseType: !277, size: 32, offset: 224)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3573, file: !60, line: 108, baseType: !3532, size: 64, offset: 448)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3573, file: !60, line: 109, baseType: !3523, size: 64, offset: 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3573, file: !60, line: 110, baseType: !3532, size: 64, offset: 576)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3573, file: !60, line: 111, baseType: !3523, size: 64, offset: 640)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3573, file: !60, line: 112, baseType: !3610, size: 64, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!207, !3501, !3613}
!3613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !73, line: 52, baseType: !3614)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !73, line: 50, size: 32, elements: !3615)
!3615 = !{!3616}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3614, file: !73, line: 51, baseType: !207, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3573, file: !60, line: 113, baseType: !3532, size: 64, offset: 768)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3573, file: !60, line: 114, baseType: !3279, size: 64, offset: 832)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3573, file: !60, line: 115, baseType: !3279, size: 64, offset: 896)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3573, file: !60, line: 117, baseType: !3527, size: 64, offset: 960)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3573, file: !60, line: 118, baseType: !3523, size: 64, offset: 1024)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3573, file: !60, line: 120, baseType: !3623, size: 64, offset: 1088)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !60, line: 120, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3559, file: !3560, line: 91, baseType: !3514, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3559, file: !3560, line: 92, baseType: !3532, size: 64, offset: 512)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3559, file: !3560, line: 93, baseType: !3523, size: 64, offset: 576)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3559, file: !3560, line: 94, baseType: !3532, size: 64, offset: 640)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3559, file: !3560, line: 95, baseType: !3523, size: 64, offset: 704)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3559, file: !3560, line: 97, baseType: !3532, size: 64, offset: 768)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3559, file: !3560, line: 98, baseType: !3532, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3559, file: !3560, line: 100, baseType: !3610, size: 64, offset: 896)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3559, file: !3560, line: 101, baseType: !3532, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3559, file: !3560, line: 103, baseType: !3532, size: 64, offset: 1024)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3559, file: !3560, line: 105, baseType: !3532, size: 64, offset: 1088)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3559, file: !3560, line: 107, baseType: !3527, size: 64, offset: 1152)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3559, file: !3560, line: 109, baseType: !3638, size: 64, offset: 1216)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3560, line: 109, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3559, file: !3560, line: 111, baseType: !3642, size: 64, offset: 1280)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3560, line: 111, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3559, file: !3560, line: 112, baseType: !711, offset: 1344)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3559, file: !3560, line: 114, baseType: !552, size: 8, offset: 1344)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3199, file: !66, line: 471, baseType: !3572, size: 64, offset: 832)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3199, file: !66, line: 473, baseType: !151, size: 64, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3199, file: !66, line: 475, baseType: !151, size: 64, offset: 960)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3199, file: !66, line: 480, baseType: !381, size: 192, offset: 1024)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3199, file: !66, line: 484, baseType: !3651, size: 576, offset: 1216)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !66, line: 361, size: 576, elements: !3652)
!3652 = !{!3653, !3654, !3655, !3656, !3657, !3658}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3651, file: !66, line: 362, baseType: !156, size: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3651, file: !66, line: 363, baseType: !156, size: 128, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3651, file: !66, line: 364, baseType: !156, size: 128, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3651, file: !66, line: 365, baseType: !156, size: 128, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3651, file: !66, line: 366, baseType: !552, size: 8, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3651, file: !66, line: 367, baseType: !65, size: 32, offset: 544)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3199, file: !66, line: 485, baseType: !3660, size: 2304, offset: 1792)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !73, line: 565, size: 2304, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3746, !3750}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3660, file: !73, line: 566, baseType: !3613, size: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3660, file: !73, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3660, file: !73, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3660, file: !73, line: 569, baseType: !552, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3660, file: !73, line: 570, baseType: !552, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3660, file: !73, line: 571, baseType: !552, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3660, file: !73, line: 572, baseType: !552, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3660, file: !73, line: 573, baseType: !552, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3660, file: !73, line: 574, baseType: !552, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3660, file: !73, line: 575, baseType: !552, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3660, file: !73, line: 576, baseType: !552, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3660, file: !73, line: 577, baseType: !478, size: 32, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3660, file: !73, line: 578, baseType: !395, offset: 96)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3660, file: !73, line: 580, baseType: !156, size: 128, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3660, file: !73, line: 581, baseType: !1469, size: 192, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3660, file: !73, line: 582, baseType: !3678, size: 64, offset: 448)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3680, line: 43, size: 1472, elements: !3681)
!3680 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3681 = !{!3682, !3683, !3684, !3685, !3686, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3679, file: !3680, line: 44, baseType: !228, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3679, file: !3680, line: 45, baseType: !207, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3679, file: !3680, line: 46, baseType: !156, size: 128, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3679, file: !3680, line: 47, baseType: !395, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3679, file: !3680, line: 48, baseType: !3687, size: 64, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !73, line: 533, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3679, file: !3680, line: 49, baseType: !3070, size: 320, offset: 320)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3679, file: !3680, line: 50, baseType: !243, size: 64, offset: 640)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3679, file: !3680, line: 51, baseType: !1272, size: 64, offset: 704)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3679, file: !3680, line: 52, baseType: !1272, size: 64, offset: 768)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3679, file: !3680, line: 53, baseType: !1272, size: 64, offset: 832)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3679, file: !3680, line: 54, baseType: !1272, size: 64, offset: 896)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3679, file: !3680, line: 55, baseType: !1272, size: 64, offset: 960)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3679, file: !3680, line: 56, baseType: !243, size: 64, offset: 1024)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3679, file: !3680, line: 57, baseType: !243, size: 64, offset: 1088)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3679, file: !3680, line: 58, baseType: !243, size: 64, offset: 1152)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3679, file: !3680, line: 59, baseType: !243, size: 64, offset: 1216)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3679, file: !3680, line: 60, baseType: !243, size: 64, offset: 1280)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3679, file: !3680, line: 61, baseType: !3501, size: 64, offset: 1344)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3679, file: !3680, line: 62, baseType: !552, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3679, file: !3680, line: 63, baseType: !552, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3660, file: !73, line: 583, baseType: !552, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3660, file: !73, line: 584, baseType: !552, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3660, file: !73, line: 585, baseType: !552, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3660, file: !73, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3660, file: !73, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3660, file: !73, line: 592, baseType: !1264, size: 512, offset: 576)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3660, file: !73, line: 593, baseType: !481, size: 64, offset: 1088)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3660, file: !73, line: 594, baseType: !1925, size: 256, offset: 1152)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3660, file: !73, line: 595, baseType: !1448, size: 128, offset: 1408)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3660, file: !73, line: 596, baseType: !3687, size: 64, offset: 1536)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3660, file: !73, line: 597, baseType: !816, size: 32, offset: 1600)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3660, file: !73, line: 598, baseType: !816, size: 32, offset: 1632)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3660, file: !73, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3660, file: !73, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3660, file: !73, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3660, file: !73, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3660, file: !73, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3660, file: !73, line: 604, baseType: !552, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3660, file: !73, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3660, file: !73, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3660, file: !73, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3660, file: !73, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3660, file: !73, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3660, file: !73, line: 610, baseType: !7, size: 32, offset: 1696)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3660, file: !73, line: 611, baseType: !72, size: 32, offset: 1728)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3660, file: !73, line: 612, baseType: !80, size: 32, offset: 1760)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3660, file: !73, line: 613, baseType: !207, size: 32, offset: 1792)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3660, file: !73, line: 614, baseType: !207, size: 32, offset: 1824)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3660, file: !73, line: 615, baseType: !481, size: 64, offset: 1856)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3660, file: !73, line: 616, baseType: !481, size: 64, offset: 1920)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3660, file: !73, line: 617, baseType: !481, size: 64, offset: 1984)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3660, file: !73, line: 618, baseType: !481, size: 64, offset: 2048)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3660, file: !73, line: 620, baseType: !3737, size: 64, offset: 2112)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !73, line: 536, size: 256, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3743}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3738, file: !73, line: 537, baseType: !395)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3738, file: !73, line: 538, baseType: !7, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3738, file: !73, line: 540, baseType: !156, size: 128, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3738, file: !73, line: 543, baseType: !3744, size: 64, offset: 192)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !73, line: 534, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3660, file: !73, line: 621, baseType: !3747, size: 64, offset: 2176)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{null, !3501, !1412}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3660, file: !73, line: 622, baseType: !3751, size: 64, offset: 2240)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !73, line: 622, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3199, file: !66, line: 486, baseType: !3754, size: 64, offset: 4096)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !73, line: 642, size: 1792, elements: !3756)
!3756 = !{!3757, !3758, !3759, !3763, !3764, !3765}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3755, file: !73, line: 643, baseType: !3529, size: 1472)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3755, file: !73, line: 644, baseType: !3532, size: 64, offset: 1472)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3755, file: !73, line: 645, baseType: !3760, size: 64, offset: 1536)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{null, !3501, !552}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3755, file: !73, line: 646, baseType: !3532, size: 64, offset: 1600)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3755, file: !73, line: 647, baseType: !3523, size: 64, offset: 1664)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3755, file: !73, line: 648, baseType: !3523, size: 64, offset: 1728)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3199, file: !66, line: 493, baseType: !3767, size: 64, offset: 4160)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !66, line: 493, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3199, file: !66, line: 499, baseType: !156, size: 128, offset: 4224)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3199, file: !66, line: 502, baseType: !3771, size: 64, offset: 4352)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3773)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !66, line: 502, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3199, file: !66, line: 504, baseType: !3775, size: 64, offset: 4416)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3199, file: !66, line: 505, baseType: !481, size: 64, offset: 4480)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3199, file: !66, line: 510, baseType: !481, size: 64, offset: 4544)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3199, file: !66, line: 511, baseType: !3779, size: 64, offset: 4608)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3781)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !66, line: 511, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3199, file: !66, line: 513, baseType: !3783, size: 64, offset: 4672)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !66, line: 288, size: 128, elements: !3785)
!3785 = !{!3786, !3787}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3784, file: !66, line: 293, baseType: !7, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3784, file: !66, line: 294, baseType: !243, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3199, file: !66, line: 515, baseType: !156, size: 128, offset: 4736)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3199, file: !66, line: 526, baseType: !3790, offset: 4864)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3791, line: 5, elements: !409)
!3791 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3199, file: !66, line: 528, baseType: !3793, size: 64, offset: 4864)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3795, line: 14, flags: DIFlagFwdDecl)
!3795 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3199, file: !66, line: 529, baseType: !3797, size: 64, offset: 4928)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3560, line: 22, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3199, file: !66, line: 534, baseType: !575, size: 32, offset: 4992)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3199, file: !66, line: 535, baseType: !478, size: 32, offset: 5024)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3199, file: !66, line: 537, baseType: !395, offset: 5056)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3199, file: !66, line: 538, baseType: !156, size: 128, offset: 5056)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3199, file: !66, line: 540, baseType: !3804, size: 64, offset: 5184)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3806, line: 54, size: 960, elements: !3807)
!3806 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813, !3814, !3818, !3822, !3823, !3824, !3825, !3829, !3833, !3834}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3805, file: !3806, line: 55, baseType: !228, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3805, file: !3806, line: 56, baseType: !148, size: 64, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3805, file: !3806, line: 58, baseType: !3279, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3805, file: !3806, line: 59, baseType: !3279, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3805, file: !3806, line: 60, baseType: !3208, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3805, file: !3806, line: 62, baseType: !3514, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3805, file: !3806, line: 63, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!547, !3501, !3521}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3805, file: !3806, line: 65, baseType: !3819, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !3804}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3805, file: !3806, line: 66, baseType: !3523, size: 64, offset: 512)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3805, file: !3806, line: 68, baseType: !3532, size: 64, offset: 576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3805, file: !3806, line: 70, baseType: !3315, size: 64, offset: 640)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3805, file: !3806, line: 71, baseType: !3826, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!3332, !3501}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3805, file: !3806, line: 73, baseType: !3830, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3501, !3349, !3350}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3805, file: !3806, line: 75, baseType: !3527, size: 64, offset: 832)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3805, file: !3806, line: 77, baseType: !3642, size: 64, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3199, file: !66, line: 541, baseType: !3279, size: 64, offset: 5248)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3199, file: !66, line: 543, baseType: !3523, size: 64, offset: 5312)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3199, file: !66, line: 544, baseType: !3838, size: 64, offset: 5376)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !66, line: 45, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3199, file: !66, line: 545, baseType: !3841, size: 64, offset: 5440)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !66, line: 47, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3199, file: !66, line: 547, baseType: !552, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3199, file: !66, line: 548, baseType: !552, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3199, file: !66, line: 549, baseType: !552, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3199, file: !66, line: 550, baseType: !552, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !224, file: !225, line: 194, baseType: !156, size: 128, offset: 9792)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !225, line: 195, baseType: !156, size: 128, offset: 9920)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !224, file: !225, line: 197, baseType: !7, size: 32, offset: 10048)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !224, file: !225, line: 198, baseType: !7, size: 32, offset: 10080)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !224, file: !225, line: 199, baseType: !3852, size: 64, offset: 10112)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !224, file: !225, line: 201, baseType: !552, size: 8, offset: 10176)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !224, file: !225, line: 203, baseType: !3855, size: 192, offset: 10240)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 192, elements: !717)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !6, line: 526, baseType: !228, size: 64, offset: 256)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !218, file: !6, line: 527, baseType: !552, size: 8, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "reports", scope: !218, file: !6, line: 528, baseType: !156, size: 128, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "application", scope: !218, file: !6, line: 529, baseType: !7, size: 32, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "dpad", scope: !169, file: !6, line: 471, baseType: !187, size: 16, offset: 832)
!3861 = !{!3862}
!3862 = !DISubrange(count: 256)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "maxfield", scope: !153, file: !6, line: 483, baseType: !7, size: 32, offset: 16768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !153, file: !6, line: 484, baseType: !7, size: 32, offset: 16800)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !153, file: !6, line: 485, baseType: !3866, size: 64, offset: 16832)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device", file: !6, line: 547, size: 60160, elements: !3868)
!3868 = !{!3869, !3871, !3872, !3873, !3874, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3900, !3901, !3908, !3909, !3994, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4036, !4037, !4038, !4039, !4043, !4044, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rdesc", scope: !3867, file: !6, line: 548, baseType: !3870, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dev_rsize", scope: !3867, file: !6, line: 549, baseType: !7, size: 32, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "rdesc", scope: !3867, file: !6, line: 550, baseType: !3870, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "rsize", scope: !3867, file: !6, line: 551, baseType: !7, size: 32, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !3867, file: !6, line: 552, baseType: !3875, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_collection", file: !6, line: 424, size: 128, elements: !3877)
!3877 = !{!3878, !3879, !3880, !3881}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "parent_idx", scope: !3876, file: !6, line: 425, baseType: !207, size: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3876, file: !6, line: 426, baseType: !7, size: 32, offset: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3876, file: !6, line: 427, baseType: !7, size: 32, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3876, file: !6, line: 428, baseType: !7, size: 32, offset: 96)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "collection_size", scope: !3867, file: !6, line: 553, baseType: !7, size: 32, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "maxcollection", scope: !3867, file: !6, line: 554, baseType: !7, size: 32, offset: 352)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "maxapplication", scope: !3867, file: !6, line: 555, baseType: !7, size: 32, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3867, file: !6, line: 556, baseType: !187, size: 16, offset: 416)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !3867, file: !6, line: 557, baseType: !187, size: 16, offset: 432)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3867, file: !6, line: 558, baseType: !277, size: 32, offset: 448)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3867, file: !6, line: 559, baseType: !277, size: 32, offset: 480)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3867, file: !6, line: 560, baseType: !277, size: 32, offset: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3867, file: !6, line: 561, baseType: !5, size: 32, offset: 544)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !3867, file: !6, line: 562, baseType: !7, size: 32, offset: 576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "report_enum", scope: !3867, file: !6, line: 563, baseType: !3893, size: 49728, offset: 640)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3894, size: 49728, elements: !717)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_enum", file: !6, line: 490, size: 16576, elements: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "numbered", scope: !3894, file: !6, line: 491, baseType: !7, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "report_list", scope: !3894, file: !6, line: 492, baseType: !156, size: 128, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "report_id_hash", scope: !3894, file: !6, line: 493, baseType: !3899, size: 16384, offset: 192)
!3899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16384, elements: !3861)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "led_work", scope: !3867, file: !6, line: 564, baseType: !1925, size: 256, offset: 50368)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "driver_input_lock", scope: !3867, file: !6, line: 566, baseType: !3902, size: 192, offset: 50624)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !3903, line: 15, size: 192, elements: !3904)
!3903 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!3904 = !{!3905, !3906, !3907}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3902, file: !3903, line: 16, baseType: !842)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3902, file: !3903, line: 17, baseType: !7, size: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !3902, file: !3903, line: 18, baseType: !156, size: 128, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3867, file: !6, line: 567, baseType: !3199, size: 5568, offset: 50816)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3867, file: !6, line: 568, baseType: !3910, size: 64, offset: 56384)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_driver", file: !6, line: 738, size: 2432, elements: !3912)
!3912 = !{!3913, !3914, !3924, !3925, !3926, !3930, !3934, !3938, !3944, !3949, !3957, !3961, !3965, !3969, !3975, !3976, !3980, !3984, !3988, !3992, !3993}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3911, file: !6, line: 739, baseType: !547, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3911, file: !6, line: 740, baseType: !3915, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3917)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_device_id", file: !3159, line: 166, size: 192, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3917, file: !3159, line: 167, baseType: !187, size: 16)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !3917, file: !3159, line: 168, baseType: !187, size: 16, offset: 16)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3917, file: !3159, line: 169, baseType: !277, size: 32, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3917, file: !3159, line: 170, baseType: !277, size: 32, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3917, file: !3159, line: 171, baseType: !3162, size: 64, offset: 128)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_list", scope: !3911, file: !6, line: 742, baseType: !156, size: 128, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_lock", scope: !3911, file: !6, line: 743, baseType: !395, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3911, file: !6, line: 745, baseType: !3927, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!552, !3866, !552}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3911, file: !6, line: 746, baseType: !3931, size: 64, offset: 320)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!207, !3866, !3915}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3911, file: !6, line: 747, baseType: !3935, size: 64, offset: 384)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3866}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "report_table", scope: !3911, file: !6, line: 749, baseType: !3939, size: 64, offset: 448)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3941)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_report_id", file: !6, line: 688, size: 32, elements: !3942)
!3942 = !{!3943}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "report_type", scope: !3941, file: !6, line: 689, baseType: !277, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "raw_event", scope: !3911, file: !6, line: 750, baseType: !3945, size: 64, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!207, !3866, !152, !3948, !207}
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "usage_table", scope: !3911, file: !6, line: 752, baseType: !3950, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_usage_id", file: !6, line: 691, size: 96, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "usage_hid", scope: !3952, file: !6, line: 692, baseType: !277, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "usage_type", scope: !3952, file: !6, line: 693, baseType: !277, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "usage_code", scope: !3952, file: !6, line: 694, baseType: !277, size: 32, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3911, file: !6, line: 753, baseType: !3958, size: 64, offset: 640)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!207, !3866, !168, !175, !206}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "report", scope: !3911, file: !6, line: 755, baseType: !3962, size: 64, offset: 704)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3866, !152}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "report_fixup", scope: !3911, file: !6, line: 757, baseType: !3966, size: 64, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!3870, !3866, !3870, !282}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapping", scope: !3911, file: !6, line: 760, baseType: !3970, size: 64, offset: 832)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!207, !3866, !217, !168, !175, !3973, !773}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "input_mapped", scope: !3911, file: !6, line: 763, baseType: !3970, size: 64, offset: 896)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "input_configured", scope: !3911, file: !6, line: 766, baseType: !3977, size: 64, offset: 960)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!207, !3866, !217}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "feature_mapping", scope: !3911, file: !6, line: 768, baseType: !3981, size: 64, offset: 1024)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3866, !168, !175}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3911, file: !6, line: 772, baseType: !3985, size: 64, offset: 1088)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!207, !3866, !3613}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3911, file: !6, line: 773, baseType: !3989, size: 64, offset: 1152)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!207, !3866}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3911, file: !6, line: 774, baseType: !3989, size: 64, offset: 1216)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3911, file: !6, line: 777, baseType: !3573, size: 1152, offset: 1280)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "ll_driver", scope: !3867, file: !6, line: 570, baseType: !3995, size: 64, offset: 56448)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hid_ll_driver", file: !6, line: 798, size: 704, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4001, !4002, !4006, !4007, !4011, !4012, !4016, !4020}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3996, file: !6, line: 799, baseType: !3989, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3996, file: !6, line: 800, baseType: !3935, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3996, file: !6, line: 802, baseType: !3989, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3996, file: !6, line: 803, baseType: !3935, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3996, file: !6, line: 805, baseType: !4003, size: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!207, !3866, !207}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "parse", scope: !3996, file: !6, line: 807, baseType: !3989, size: 64, offset: 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3996, file: !6, line: 809, baseType: !4008, size: 64, offset: 384)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !3866, !152, !207}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3996, file: !6, line: 812, baseType: !3989, size: 64, offset: 448)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "raw_request", scope: !3996, file: !6, line: 814, baseType: !4013, size: 64, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!207, !3866, !191, !3870, !641, !191, !207}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "output_report", scope: !3996, file: !6, line: 818, baseType: !4017, size: 64, offset: 576)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!207, !3866, !3870, !641}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !3996, file: !6, line: 820, baseType: !4021, size: 64, offset: 640)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!207, !3866, !207, !207, !207}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_lock", scope: !3867, file: !6, line: 571, baseType: !381, size: 192, offset: 56512)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ll_open_count", scope: !3867, file: !6, line: 572, baseType: !7, size: 32, offset: 56704)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3867, file: !6, line: 590, baseType: !243, size: 64, offset: 56768)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "claimed", scope: !3867, file: !6, line: 591, baseType: !7, size: 32, offset: 56832)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3867, file: !6, line: 592, baseType: !7, size: 32, offset: 56864)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "io_started", scope: !3867, file: !6, line: 593, baseType: !552, size: 8, offset: 56896)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !3867, file: !6, line: 595, baseType: !156, size: 128, offset: 56960)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev", scope: !3867, file: !6, line: 596, baseType: !151, size: 64, offset: 57088)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "hidraw", scope: !3867, file: !6, line: 597, baseType: !151, size: 64, offset: 57152)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3867, file: !6, line: 599, baseType: !3589, size: 1024, offset: 57216)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3867, file: !6, line: 600, baseType: !4035, size: 512, offset: 58240)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 512, elements: !1847)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !3867, file: !6, line: 601, baseType: !4035, size: 512, offset: 58752)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3867, file: !6, line: 603, baseType: !151, size: 64, offset: 59264)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ff_init", scope: !3867, file: !6, line: 606, baseType: !3989, size: 64, offset: 59328)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_connect", scope: !3867, file: !6, line: 609, baseType: !4040, size: 64, offset: 59392)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DISubroutineType(types: !4042)
!4042 = !{!207, !3866, !7}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_disconnect", scope: !3867, file: !6, line: 610, baseType: !3935, size: 64, offset: 59456)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_hid_event", scope: !3867, file: !6, line: 611, baseType: !4045, size: 64, offset: 59520)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !3866, !168, !175, !206}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "hiddev_report_event", scope: !3867, file: !6, line: 613, baseType: !3962, size: 64, offset: 59584)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !3867, file: !6, line: 616, baseType: !188, size: 16, offset: 59648)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3867, file: !6, line: 617, baseType: !445, size: 64, offset: 59712)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "debug_rdesc", scope: !3867, file: !6, line: 618, baseType: !445, size: 64, offset: 59776)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "debug_events", scope: !3867, file: !6, line: 619, baseType: !445, size: 64, offset: 59840)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list", scope: !3867, file: !6, line: 620, baseType: !156, size: 128, offset: 59904)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "debug_list_lock", scope: !3867, file: !6, line: 621, baseType: !395, offset: 60032)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "debug_wait", scope: !3867, file: !6, line: 622, baseType: !1448, size: 128, offset: 60032)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !160)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lg_g15_data", file: !3, line: 51, size: 13952, elements: !4060)
!4060 = !{!4061, !4063, !4064, !4065, !4066, !4067, !4068, !4131}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buf", scope: !4059, file: !3, line: 53, baseType: !4062, size: 160)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 160, elements: !2155)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4059, file: !3, line: 55, baseType: !381, size: 192, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4059, file: !3, line: 56, baseType: !1925, size: 256, offset: 384)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4059, file: !3, line: 57, baseType: !223, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "hdev", scope: !4059, file: !3, line: 58, baseType: !3866, size: 64, offset: 704)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4059, file: !3, line: 59, baseType: !91, size: 32, offset: 768)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "leds", scope: !4059, file: !3, line: 60, baseType: !4069, size: 13056, offset: 832)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4070, size: 13056, elements: !1590)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lg_g15_led", file: !3, line: 44, size: 2176, elements: !4071)
!4071 = !{!4072, !4126, !4127, !4128, !4129, !4130}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !4070, file: !3, line: 45, baseType: !4073, size: 2048)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !98, line: 64, size: 2048, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4085, !4089, !4093, !4097, !4106, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4123, !4124, !4125}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4073, file: !98, line: 65, baseType: !228, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4073, file: !98, line: 66, baseType: !97, size: 32, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4073, file: !98, line: 67, baseType: !97, size: 32, offset: 96)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !98, line: 68, baseType: !207, size: 32, offset: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !4073, file: !98, line: 84, baseType: !243, size: 64, offset: 192)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !4073, file: !98, line: 97, baseType: !4081, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !4084, !97}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !4073, file: !98, line: 103, baseType: !4086, size: 64, offset: 320)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!207, !4084, !97}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !4073, file: !98, line: 106, baseType: !4090, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!97, !4084}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !4073, file: !98, line: 116, baseType: !4094, size: 64, offset: 448)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!207, !4084, !3974, !3974}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !4073, file: !98, line: 120, baseType: !4098, size: 64, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!207, !4084, !4101, !478, !207}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !98, line: 579, size: 64, elements: !4103)
!4103 = !{!4104, !4105}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !4102, file: !98, line: 580, baseType: !478, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4102, file: !98, line: 581, baseType: !207, size: 32, offset: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !4073, file: !98, line: 122, baseType: !4107, size: 64, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!207, !4084}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4073, file: !98, line: 124, baseType: !3501, size: 64, offset: 640)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4073, file: !98, line: 125, baseType: !3279, size: 64, offset: 704)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4073, file: !98, line: 127, baseType: !156, size: 128, offset: 768)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !4073, file: !98, line: 128, baseType: !228, size: 64, offset: 896)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !4073, file: !98, line: 130, baseType: !243, size: 64, offset: 960)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !4073, file: !98, line: 130, baseType: !243, size: 64, offset: 1024)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !4073, file: !98, line: 131, baseType: !3070, size: 320, offset: 1088)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !4073, file: !98, line: 132, baseType: !207, size: 32, offset: 1408)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !4073, file: !98, line: 133, baseType: !207, size: 32, offset: 1440)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !4073, file: !98, line: 134, baseType: !4120, size: 64, offset: 1472)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !4084}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !4073, file: !98, line: 136, baseType: !1925, size: 256, offset: 1536)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !4073, file: !98, line: 137, baseType: !207, size: 32, offset: 1792)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !4073, file: !98, line: 159, baseType: !381, size: 192, offset: 1856)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4070, file: !3, line: 46, baseType: !97, size: 32, offset: 2048)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4070, file: !3, line: 47, baseType: !104, size: 32, offset: 2080)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4070, file: !3, line: 48, baseType: !1324, size: 8, offset: 2112)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4070, file: !3, line: 48, baseType: !1324, size: 8, offset: 2120)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4070, file: !3, line: 48, baseType: !1324, size: 8, offset: 2128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "game_mode_enabled", scope: !4059, file: !3, line: 61, baseType: !552, size: 8, offset: 13888)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!4134 = !{!0, !4135, !4140, !4145, !4150, !4152, !4155, !4158, !4161, !4163, !4166}
!4135 = !DIGlobalVariableExpression(var: !4136, expr: !DIExpression())
!4136 = distinct !DIGlobalVariable(name: "__exitcall_lg_g15_driver_exit", scope: !2, file: !3, line: 903, type: !4137, isLocal: true, isDefinition: true)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4138, line: 117, baseType: !4139)
!4138 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!4140 = !DIGlobalVariableExpression(var: !4141, expr: !DIExpression())
!4141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file231", scope: !2, file: !3, line: 905, type: !4142, isLocal: true, isDefinition: true, align: 8)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 312, elements: !4143)
!4143 = !{!4144}
!4144 = !DISubrange(count: 39)
!4145 = !DIGlobalVariableExpression(var: !4146, expr: !DIExpression())
!4146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license232", scope: !2, file: !3, line: 905, type: !4147, isLocal: true, isDefinition: true, align: 8)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 184, elements: !4148)
!4148 = !{!4149}
!4149 = !DISubrange(count: 23)
!4150 = !DIGlobalVariableExpression(var: !4151, expr: !DIExpression())
!4151 = distinct !DIGlobalVariable(name: "lg_g15_driver", scope: !2, file: !3, line: 897, type: !3911, isLocal: true, isDefinition: true)
!4152 = !DIGlobalVariableExpression(var: !4153, expr: !DIExpression())
!4153 = distinct !DIGlobalVariable(name: "lg_g15_devices", scope: !2, file: !3, line: 874, type: !4154, isLocal: true, isDefinition: true)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3916, size: 1152, elements: !1590)
!4155 = !DIGlobalVariableExpression(var: !4156, expr: !DIExpression())
!4156 = distinct !DIGlobalVariable(name: "__key", scope: !4157, file: !3, line: 739, type: !711, isLocal: true, isDefinition: true)
!4157 = distinct !DISubprogram(name: "lg_g15_probe", scope: !3, file: !3, line: 705, type: !3932, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4158 = !DIGlobalVariableExpression(var: !4159, expr: !DIExpression())
!4159 = distinct !DIGlobalVariable(name: "lg_g510_kbd_led_groups", scope: !2, file: !3, line: 341, type: !4160, isLocal: true, isDefinition: true)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3280, size: 128, elements: !258)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "lg_g510_kbd_led_group", scope: !2, file: !3, line: 337, type: !3281, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(name: "lg_g510_kbd_led_attrs", scope: !2, file: !3, line: 332, type: !4165, isLocal: true, isDefinition: true)
!4165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3267, size: 128, elements: !258)
!4166 = !DIGlobalVariableExpression(var: !4167, expr: !DIExpression())
!4167 = distinct !DIGlobalVariable(name: "dev_attr_color", scope: !2, file: !3, line: 330, type: !4168, isLocal: true, isDefinition: true)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !66, line: 99, size: 256, elements: !4169)
!4169 = !{!4170, !4171, !4176}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4168, file: !66, line: 100, baseType: !3268, size: 128)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4168, file: !66, line: 101, baseType: !4172, size: 64, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!638, !3501, !4175, !547}
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4168, file: !66, line: 103, baseType: !4177, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!638, !3501, !4175, !228, !641}
!4180 = !{i32 7, !"Dwarf Version", i32 4}
!4181 = !{i32 2, !"Debug Info Version", i32 3}
!4182 = !{i32 1, !"wchar_size", i32 2}
!4183 = !{i32 1, !"Code Model", i32 2}
!4184 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4185 = distinct !DISubprogram(name: "lg_g15_driver_init", scope: !3, file: !3, line: 903, type: !4186, scopeLine: 903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!207}
!4188 = !DILocation(line: 903, column: 1, scope: !4185)
!4189 = distinct !DISubprogram(name: "lg_g15_driver_exit", scope: !3, file: !3, line: 903, type: !1844, scopeLine: 903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4190 = !DILocation(line: 903, column: 1, scope: !4189)
!4191 = !DILocalVariable(name: "hdev", arg: 1, scope: !4157, file: !3, line: 705, type: !3866)
!4192 = !DILocation(line: 705, column: 44, scope: !4157)
!4193 = !DILocalVariable(name: "id", arg: 2, scope: !4157, file: !3, line: 705, type: !3915)
!4194 = !DILocation(line: 705, column: 78, scope: !4157)
!4195 = !DILocalVariable(name: "gkeys_settings_output_report", scope: !4157, file: !3, line: 707, type: !1324)
!4196 = !DILocation(line: 707, column: 5, scope: !4157)
!4197 = !DILocalVariable(name: "gkeys_settings_feature_report", scope: !4157, file: !3, line: 708, type: !1324)
!4198 = !DILocation(line: 708, column: 5, scope: !4157)
!4199 = !DILocalVariable(name: "rep_enum", scope: !4157, file: !3, line: 709, type: !4200)
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!4201 = !DILocation(line: 709, column: 26, scope: !4157)
!4202 = !DILocalVariable(name: "connect_mask", scope: !4157, file: !3, line: 710, type: !7)
!4203 = !DILocation(line: 710, column: 15, scope: !4157)
!4204 = !DILocalVariable(name: "has_ff000000", scope: !4157, file: !3, line: 711, type: !552)
!4205 = !DILocation(line: 711, column: 7, scope: !4157)
!4206 = !DILocalVariable(name: "g15", scope: !4157, file: !3, line: 712, type: !4058)
!4207 = !DILocation(line: 712, column: 22, scope: !4157)
!4208 = !DILocalVariable(name: "input", scope: !4157, file: !3, line: 713, type: !223)
!4209 = !DILocation(line: 713, column: 20, scope: !4157)
!4210 = !DILocalVariable(name: "rep", scope: !4157, file: !3, line: 714, type: !152)
!4211 = !DILocation(line: 714, column: 21, scope: !4157)
!4212 = !DILocalVariable(name: "ret", scope: !4157, file: !3, line: 715, type: !207)
!4213 = !DILocation(line: 715, column: 6, scope: !4157)
!4214 = !DILocalVariable(name: "i", scope: !4157, file: !3, line: 715, type: !207)
!4215 = !DILocation(line: 715, column: 11, scope: !4157)
!4216 = !DILocalVariable(name: "gkeys", scope: !4157, file: !3, line: 715, type: !207)
!4217 = !DILocation(line: 715, column: 14, scope: !4157)
!4218 = !DILocation(line: 717, column: 2, scope: !4157)
!4219 = !DILocation(line: 717, column: 8, scope: !4157)
!4220 = !DILocation(line: 717, column: 15, scope: !4157)
!4221 = !DILocation(line: 719, column: 18, scope: !4157)
!4222 = !DILocation(line: 719, column: 8, scope: !4157)
!4223 = !DILocation(line: 719, column: 6, scope: !4157)
!4224 = !DILocation(line: 720, column: 6, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 720, column: 6)
!4226 = !DILocation(line: 720, column: 6, scope: !4157)
!4227 = !DILocation(line: 721, column: 10, scope: !4225)
!4228 = !DILocation(line: 721, column: 3, scope: !4225)
!4229 = !DILocation(line: 727, column: 14, scope: !4157)
!4230 = !DILocation(line: 727, column: 20, scope: !4157)
!4231 = !DILocation(line: 727, column: 11, scope: !4157)
!4232 = !DILocalVariable(name: "__mptr", scope: !4233, file: !3, line: 728, type: !151)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 728, column: 2)
!4234 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 728, column: 2)
!4235 = !DILocation(line: 728, column: 2, scope: !4233)
!4236 = !DILocation(line: 728, column: 2, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 728, column: 2)
!4238 = !DILocation(line: 728, column: 2, scope: !4234)
!4239 = !DILocation(line: 728, column: 2, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4234, file: !3, line: 728, column: 2)
!4241 = !DILocation(line: 729, column: 7, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !3, line: 729, column: 7)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 728, column: 57)
!4244 = !DILocation(line: 729, column: 12, scope: !4242)
!4245 = !DILocation(line: 729, column: 24, scope: !4242)
!4246 = !DILocation(line: 729, column: 7, scope: !4243)
!4247 = !DILocation(line: 730, column: 17, scope: !4242)
!4248 = !DILocation(line: 730, column: 4, scope: !4242)
!4249 = !DILocation(line: 731, column: 2, scope: !4243)
!4250 = !DILocalVariable(name: "__mptr", scope: !4251, file: !3, line: 728, type: !151)
!4251 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 728, column: 2)
!4252 = !DILocation(line: 728, column: 2, scope: !4251)
!4253 = !DILocation(line: 728, column: 2, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 728, column: 2)
!4255 = distinct !{!4255, !4238, !4256}
!4256 = !DILocation(line: 731, column: 2, scope: !4234)
!4257 = !DILocation(line: 732, column: 7, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 732, column: 6)
!4259 = !DILocation(line: 732, column: 6, scope: !4157)
!4260 = !DILocation(line: 733, column: 23, scope: !4258)
!4261 = !DILocation(line: 733, column: 10, scope: !4258)
!4262 = !DILocation(line: 733, column: 3, scope: !4258)
!4263 = !DILocation(line: 735, column: 22, scope: !4157)
!4264 = !DILocation(line: 735, column: 28, scope: !4157)
!4265 = !DILocation(line: 735, column: 8, scope: !4157)
!4266 = !DILocation(line: 735, column: 6, scope: !4157)
!4267 = !DILocation(line: 736, column: 7, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 736, column: 6)
!4269 = !DILocation(line: 736, column: 6, scope: !4157)
!4270 = !DILocation(line: 737, column: 3, scope: !4268)
!4271 = !DILocation(line: 739, column: 2, scope: !4157)
!4272 = !DILocation(line: 739, column: 2, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 739, column: 2)
!4274 = !DILocation(line: 741, column: 38, scope: !4157)
!4275 = !DILocation(line: 741, column: 44, scope: !4157)
!4276 = !DILocation(line: 741, column: 10, scope: !4157)
!4277 = !DILocation(line: 741, column: 8, scope: !4157)
!4278 = !DILocation(line: 742, column: 7, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 742, column: 6)
!4280 = !DILocation(line: 742, column: 6, scope: !4157)
!4281 = !DILocation(line: 743, column: 3, scope: !4279)
!4282 = !DILocation(line: 745, column: 14, scope: !4157)
!4283 = !DILocation(line: 745, column: 2, scope: !4157)
!4284 = !DILocation(line: 745, column: 7, scope: !4157)
!4285 = !DILocation(line: 745, column: 12, scope: !4157)
!4286 = !DILocation(line: 746, column: 15, scope: !4157)
!4287 = !DILocation(line: 746, column: 19, scope: !4157)
!4288 = !DILocation(line: 746, column: 2, scope: !4157)
!4289 = !DILocation(line: 746, column: 7, scope: !4157)
!4290 = !DILocation(line: 746, column: 13, scope: !4157)
!4291 = !DILocation(line: 747, column: 18, scope: !4157)
!4292 = !DILocation(line: 747, column: 32, scope: !4157)
!4293 = !DILocation(line: 747, column: 24, scope: !4157)
!4294 = !DILocation(line: 747, column: 2, scope: !4157)
!4295 = !DILocation(line: 749, column: 10, scope: !4157)
!4296 = !DILocation(line: 749, column: 15, scope: !4157)
!4297 = !DILocation(line: 749, column: 2, scope: !4157)
!4298 = !DILocation(line: 751, column: 3, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 749, column: 22)
!4300 = !DILocation(line: 751, column: 3, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 751, column: 3)
!4302 = !DILocation(line: 758, column: 16, scope: !4299)
!4303 = !DILocation(line: 759, column: 32, scope: !4299)
!4304 = !DILocation(line: 760, column: 9, scope: !4299)
!4305 = !DILocation(line: 761, column: 3, scope: !4299)
!4306 = !DILocation(line: 763, column: 3, scope: !4299)
!4307 = !DILocation(line: 763, column: 3, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 763, column: 3)
!4309 = !DILocation(line: 764, column: 16, scope: !4299)
!4310 = !DILocation(line: 765, column: 32, scope: !4299)
!4311 = !DILocation(line: 766, column: 9, scope: !4299)
!4312 = !DILocation(line: 767, column: 3, scope: !4299)
!4313 = !DILocation(line: 770, column: 3, scope: !4299)
!4314 = !DILocation(line: 770, column: 3, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 770, column: 3)
!4316 = !DILocation(line: 771, column: 16, scope: !4299)
!4317 = !DILocation(line: 772, column: 33, scope: !4299)
!4318 = !DILocation(line: 773, column: 9, scope: !4299)
!4319 = !DILocation(line: 774, column: 3, scope: !4299)
!4320 = !DILocation(line: 777, column: 21, scope: !4157)
!4321 = !DILocation(line: 777, column: 27, scope: !4157)
!4322 = !DILocation(line: 777, column: 8, scope: !4157)
!4323 = !DILocation(line: 777, column: 6, scope: !4157)
!4324 = !DILocation(line: 778, column: 6, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 778, column: 6)
!4326 = !DILocation(line: 778, column: 6, scope: !4157)
!4327 = !DILocation(line: 779, column: 10, scope: !4325)
!4328 = !DILocation(line: 779, column: 3, scope: !4325)
!4329 = !DILocation(line: 782, column: 6, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 782, column: 6)
!4331 = !DILocation(line: 782, column: 6, scope: !4157)
!4332 = !DILocation(line: 783, column: 26, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 782, column: 36)
!4334 = !DILocation(line: 783, column: 3, scope: !4333)
!4335 = !DILocation(line: 783, column: 8, scope: !4333)
!4336 = !DILocation(line: 783, column: 24, scope: !4333)
!4337 = !DILocation(line: 784, column: 10, scope: !4333)
!4338 = !DILocation(line: 784, column: 15, scope: !4333)
!4339 = !DILocation(line: 784, column: 28, scope: !4333)
!4340 = !DILocation(line: 784, column: 36, scope: !4333)
!4341 = !DILocation(line: 784, column: 3, scope: !4333)
!4342 = !DILocation(line: 789, column: 21, scope: !4333)
!4343 = !DILocation(line: 789, column: 9, scope: !4333)
!4344 = !DILocation(line: 789, column: 7, scope: !4333)
!4345 = !DILocation(line: 790, column: 7, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 790, column: 7)
!4347 = !DILocation(line: 790, column: 7, scope: !4333)
!4348 = !DILocation(line: 791, column: 4, scope: !4346)
!4349 = !DILocation(line: 792, column: 30, scope: !4333)
!4350 = !DILocation(line: 792, column: 36, scope: !4333)
!4351 = !DILocation(line: 792, column: 41, scope: !4333)
!4352 = !DILocation(line: 792, column: 55, scope: !4333)
!4353 = !DILocation(line: 792, column: 61, scope: !4333)
!4354 = !DILocation(line: 792, column: 9, scope: !4333)
!4355 = !DILocation(line: 792, column: 7, scope: !4333)
!4356 = !DILocation(line: 793, column: 16, scope: !4333)
!4357 = !DILocation(line: 793, column: 3, scope: !4333)
!4358 = !DILocation(line: 794, column: 2, scope: !4333)
!4359 = !DILocation(line: 796, column: 6, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 796, column: 6)
!4361 = !DILocation(line: 796, column: 6, scope: !4157)
!4362 = !DILocation(line: 797, column: 26, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 796, column: 37)
!4364 = !DILocation(line: 797, column: 3, scope: !4363)
!4365 = !DILocation(line: 797, column: 8, scope: !4363)
!4366 = !DILocation(line: 797, column: 24, scope: !4363)
!4367 = !DILocation(line: 798, column: 10, scope: !4363)
!4368 = !DILocation(line: 798, column: 15, scope: !4363)
!4369 = !DILocation(line: 798, column: 28, scope: !4363)
!4370 = !DILocation(line: 798, column: 36, scope: !4363)
!4371 = !DILocation(line: 798, column: 3, scope: !4363)
!4372 = !DILocation(line: 799, column: 28, scope: !4363)
!4373 = !DILocation(line: 799, column: 33, scope: !4363)
!4374 = !DILocation(line: 800, column: 5, scope: !4363)
!4375 = !DILocation(line: 801, column: 5, scope: !4363)
!4376 = !DILocation(line: 801, column: 10, scope: !4363)
!4377 = !DILocation(line: 801, column: 24, scope: !4363)
!4378 = !DILocation(line: 801, column: 30, scope: !4363)
!4379 = !DILocation(line: 799, column: 9, scope: !4363)
!4380 = !DILocation(line: 799, column: 7, scope: !4363)
!4381 = !DILocation(line: 803, column: 2, scope: !4363)
!4382 = !DILocation(line: 805, column: 6, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 805, column: 6)
!4384 = !DILocation(line: 805, column: 10, scope: !4383)
!4385 = !DILocation(line: 805, column: 6, scope: !4157)
!4386 = !DILocation(line: 806, column: 3, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4383, file: !3, line: 805, column: 15)
!4388 = !DILocation(line: 808, column: 19, scope: !4387)
!4389 = !DILocation(line: 808, column: 3, scope: !4387)
!4390 = !DILocation(line: 809, column: 3, scope: !4387)
!4391 = !DILocation(line: 813, column: 42, scope: !4157)
!4392 = !DILocation(line: 813, column: 8, scope: !4157)
!4393 = !DILocation(line: 813, column: 6, scope: !4157)
!4394 = !DILocation(line: 814, column: 6, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 814, column: 6)
!4396 = !DILocation(line: 814, column: 6, scope: !4157)
!4397 = !DILocation(line: 815, column: 3, scope: !4395)
!4398 = !DILocation(line: 818, column: 2, scope: !4157)
!4399 = !DILocation(line: 818, column: 9, scope: !4157)
!4400 = !DILocation(line: 818, column: 14, scope: !4157)
!4401 = !DILocation(line: 819, column: 16, scope: !4157)
!4402 = !DILocation(line: 819, column: 22, scope: !4157)
!4403 = !DILocation(line: 819, column: 2, scope: !4157)
!4404 = !DILocation(line: 819, column: 9, scope: !4157)
!4405 = !DILocation(line: 819, column: 14, scope: !4157)
!4406 = !DILocation(line: 820, column: 16, scope: !4157)
!4407 = !DILocation(line: 820, column: 22, scope: !4157)
!4408 = !DILocation(line: 820, column: 2, scope: !4157)
!4409 = !DILocation(line: 820, column: 9, scope: !4157)
!4410 = !DILocation(line: 820, column: 14, scope: !4157)
!4411 = !DILocation(line: 821, column: 22, scope: !4157)
!4412 = !DILocation(line: 821, column: 28, scope: !4157)
!4413 = !DILocation(line: 821, column: 2, scope: !4157)
!4414 = !DILocation(line: 821, column: 9, scope: !4157)
!4415 = !DILocation(line: 821, column: 12, scope: !4157)
!4416 = !DILocation(line: 821, column: 20, scope: !4157)
!4417 = !DILocation(line: 822, column: 22, scope: !4157)
!4418 = !DILocation(line: 822, column: 28, scope: !4157)
!4419 = !DILocation(line: 822, column: 2, scope: !4157)
!4420 = !DILocation(line: 822, column: 9, scope: !4157)
!4421 = !DILocation(line: 822, column: 12, scope: !4157)
!4422 = !DILocation(line: 822, column: 20, scope: !4157)
!4423 = !DILocation(line: 823, column: 22, scope: !4157)
!4424 = !DILocation(line: 823, column: 28, scope: !4157)
!4425 = !DILocation(line: 823, column: 2, scope: !4157)
!4426 = !DILocation(line: 823, column: 9, scope: !4157)
!4427 = !DILocation(line: 823, column: 12, scope: !4157)
!4428 = !DILocation(line: 823, column: 20, scope: !4157)
!4429 = !DILocation(line: 824, column: 22, scope: !4157)
!4430 = !DILocation(line: 824, column: 28, scope: !4157)
!4431 = !DILocation(line: 824, column: 2, scope: !4157)
!4432 = !DILocation(line: 824, column: 9, scope: !4157)
!4433 = !DILocation(line: 824, column: 12, scope: !4157)
!4434 = !DILocation(line: 824, column: 20, scope: !4157)
!4435 = !DILocation(line: 825, column: 23, scope: !4157)
!4436 = !DILocation(line: 825, column: 29, scope: !4157)
!4437 = !DILocation(line: 825, column: 2, scope: !4157)
!4438 = !DILocation(line: 825, column: 9, scope: !4157)
!4439 = !DILocation(line: 825, column: 13, scope: !4157)
!4440 = !DILocation(line: 825, column: 20, scope: !4157)
!4441 = !DILocation(line: 826, column: 2, scope: !4157)
!4442 = !DILocation(line: 826, column: 9, scope: !4157)
!4443 = !DILocation(line: 826, column: 14, scope: !4157)
!4444 = !DILocation(line: 827, column: 2, scope: !4157)
!4445 = !DILocation(line: 827, column: 9, scope: !4157)
!4446 = !DILocation(line: 827, column: 15, scope: !4157)
!4447 = !DILocation(line: 830, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 830, column: 2)
!4449 = !DILocation(line: 830, column: 7, scope: !4448)
!4450 = !DILocation(line: 830, column: 14, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 830, column: 2)
!4452 = !DILocation(line: 830, column: 18, scope: !4451)
!4453 = !DILocation(line: 830, column: 16, scope: !4451)
!4454 = !DILocation(line: 830, column: 2, scope: !4448)
!4455 = !DILocation(line: 831, column: 24, scope: !4451)
!4456 = !DILocation(line: 831, column: 52, scope: !4451)
!4457 = !DILocation(line: 831, column: 50, scope: !4451)
!4458 = !DILocation(line: 831, column: 3, scope: !4451)
!4459 = !DILocation(line: 830, column: 26, scope: !4451)
!4460 = !DILocation(line: 830, column: 2, scope: !4451)
!4461 = distinct !{!4461, !4454, !4462}
!4462 = !DILocation(line: 831, column: 53, scope: !4448)
!4463 = !DILocation(line: 834, column: 9, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 834, column: 2)
!4465 = !DILocation(line: 834, column: 7, scope: !4464)
!4466 = !DILocation(line: 834, column: 14, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 834, column: 2)
!4468 = !DILocation(line: 834, column: 16, scope: !4467)
!4469 = !DILocation(line: 834, column: 2, scope: !4464)
!4470 = !DILocation(line: 835, column: 24, scope: !4467)
!4471 = !DILocation(line: 835, column: 59, scope: !4467)
!4472 = !DILocation(line: 835, column: 57, scope: !4467)
!4473 = !DILocation(line: 835, column: 3, scope: !4467)
!4474 = !DILocation(line: 834, column: 22, scope: !4467)
!4475 = !DILocation(line: 834, column: 2, scope: !4467)
!4476 = distinct !{!4476, !4469, !4477}
!4477 = !DILocation(line: 835, column: 60, scope: !4464)
!4478 = !DILocation(line: 836, column: 23, scope: !4157)
!4479 = !DILocation(line: 836, column: 2, scope: !4157)
!4480 = !DILocation(line: 839, column: 9, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 839, column: 2)
!4482 = !DILocation(line: 839, column: 7, scope: !4481)
!4483 = !DILocation(line: 839, column: 14, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 839, column: 2)
!4485 = !DILocation(line: 839, column: 16, scope: !4484)
!4486 = !DILocation(line: 839, column: 2, scope: !4481)
!4487 = !DILocation(line: 840, column: 24, scope: !4484)
!4488 = !DILocation(line: 840, column: 59, scope: !4484)
!4489 = !DILocation(line: 840, column: 57, scope: !4484)
!4490 = !DILocation(line: 840, column: 3, scope: !4484)
!4491 = !DILocation(line: 839, column: 22, scope: !4484)
!4492 = !DILocation(line: 839, column: 2, scope: !4484)
!4493 = distinct !{!4493, !4486, !4494}
!4494 = !DILocation(line: 840, column: 60, scope: !4481)
!4495 = !DILocation(line: 847, column: 6, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 847, column: 6)
!4497 = !DILocation(line: 847, column: 11, scope: !4496)
!4498 = !DILocation(line: 847, column: 17, scope: !4496)
!4499 = !DILocation(line: 847, column: 6, scope: !4157)
!4500 = !DILocation(line: 848, column: 24, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 847, column: 29)
!4502 = !DILocation(line: 848, column: 3, scope: !4501)
!4503 = !DILocation(line: 850, column: 24, scope: !4501)
!4504 = !DILocation(line: 850, column: 3, scope: !4501)
!4505 = !DILocation(line: 851, column: 2, scope: !4501)
!4506 = !DILocation(line: 853, column: 15, scope: !4157)
!4507 = !DILocation(line: 853, column: 2, scope: !4157)
!4508 = !DILocation(line: 853, column: 7, scope: !4157)
!4509 = !DILocation(line: 853, column: 13, scope: !4157)
!4510 = !DILocation(line: 854, column: 20, scope: !4157)
!4511 = !DILocation(line: 854, column: 27, scope: !4157)
!4512 = !DILocation(line: 854, column: 2, scope: !4157)
!4513 = !DILocation(line: 856, column: 30, scope: !4157)
!4514 = !DILocation(line: 856, column: 8, scope: !4157)
!4515 = !DILocation(line: 856, column: 6, scope: !4157)
!4516 = !DILocation(line: 857, column: 6, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 857, column: 6)
!4518 = !DILocation(line: 857, column: 6, scope: !4157)
!4519 = !DILocation(line: 858, column: 3, scope: !4517)
!4520 = !DILocation(line: 861, column: 9, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 861, column: 2)
!4522 = !DILocation(line: 861, column: 7, scope: !4521)
!4523 = !DILocation(line: 861, column: 14, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 861, column: 2)
!4525 = !DILocation(line: 861, column: 16, scope: !4524)
!4526 = !DILocation(line: 861, column: 2, scope: !4521)
!4527 = !DILocation(line: 862, column: 29, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 861, column: 39)
!4529 = !DILocation(line: 862, column: 34, scope: !4528)
!4530 = !DILocation(line: 862, column: 9, scope: !4528)
!4531 = !DILocation(line: 862, column: 7, scope: !4528)
!4532 = !DILocation(line: 863, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 863, column: 7)
!4534 = !DILocation(line: 863, column: 7, scope: !4528)
!4535 = !DILocation(line: 864, column: 4, scope: !4533)
!4536 = !DILocation(line: 865, column: 2, scope: !4528)
!4537 = !DILocation(line: 861, column: 35, scope: !4524)
!4538 = !DILocation(line: 861, column: 2, scope: !4524)
!4539 = distinct !{!4539, !4526, !4540}
!4540 = !DILocation(line: 865, column: 2, scope: !4521)
!4541 = !DILocation(line: 867, column: 2, scope: !4157)
!4542 = !DILabel(scope: !4157, name: "error_hw_stop", file: !3, line: 869)
!4543 = !DILocation(line: 869, column: 1, scope: !4157)
!4544 = !DILocation(line: 870, column: 14, scope: !4157)
!4545 = !DILocation(line: 870, column: 2, scope: !4157)
!4546 = !DILocation(line: 871, column: 9, scope: !4157)
!4547 = !DILocation(line: 871, column: 2, scope: !4157)
!4548 = !DILocation(line: 872, column: 1, scope: !4157)
!4549 = distinct !DISubprogram(name: "lg_g15_raw_event", scope: !3, file: !3, line: 605, type: !3946, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4550 = !DILocalVariable(name: "hdev", arg: 1, scope: !4549, file: !3, line: 605, type: !3866)
!4551 = !DILocation(line: 605, column: 48, scope: !4549)
!4552 = !DILocalVariable(name: "report", arg: 2, scope: !4549, file: !3, line: 605, type: !152)
!4553 = !DILocation(line: 605, column: 73, scope: !4549)
!4554 = !DILocalVariable(name: "data", arg: 3, scope: !4549, file: !3, line: 606, type: !3948)
!4555 = !DILocation(line: 606, column: 12, scope: !4549)
!4556 = !DILocalVariable(name: "size", arg: 4, scope: !4549, file: !3, line: 606, type: !207)
!4557 = !DILocation(line: 606, column: 22, scope: !4549)
!4558 = !DILocalVariable(name: "g15", scope: !4549, file: !3, line: 608, type: !4058)
!4559 = !DILocation(line: 608, column: 22, scope: !4549)
!4560 = !DILocation(line: 608, column: 44, scope: !4549)
!4561 = !DILocation(line: 608, column: 28, scope: !4549)
!4562 = !DILocation(line: 610, column: 7, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 610, column: 6)
!4564 = !DILocation(line: 610, column: 6, scope: !4549)
!4565 = !DILocation(line: 611, column: 3, scope: !4563)
!4566 = !DILocation(line: 613, column: 10, scope: !4549)
!4567 = !DILocation(line: 613, column: 15, scope: !4549)
!4568 = !DILocation(line: 613, column: 2, scope: !4549)
!4569 = !DILocation(line: 615, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 615, column: 7)
!4571 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 613, column: 22)
!4572 = !DILocation(line: 615, column: 15, scope: !4570)
!4573 = !DILocation(line: 615, column: 23, scope: !4570)
!4574 = !DILocation(line: 615, column: 26, scope: !4570)
!4575 = !DILocation(line: 615, column: 31, scope: !4570)
!4576 = !DILocation(line: 615, column: 7, scope: !4571)
!4577 = !DILocation(line: 616, column: 24, scope: !4570)
!4578 = !DILocation(line: 616, column: 29, scope: !4570)
!4579 = !DILocation(line: 616, column: 35, scope: !4570)
!4580 = !DILocation(line: 616, column: 11, scope: !4570)
!4581 = !DILocation(line: 616, column: 4, scope: !4570)
!4582 = !DILocation(line: 617, column: 3, scope: !4571)
!4583 = !DILocation(line: 619, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 619, column: 7)
!4585 = !DILocation(line: 619, column: 15, scope: !4584)
!4586 = !DILocation(line: 619, column: 23, scope: !4584)
!4587 = !DILocation(line: 619, column: 26, scope: !4584)
!4588 = !DILocation(line: 619, column: 31, scope: !4584)
!4589 = !DILocation(line: 619, column: 7, scope: !4571)
!4590 = !DILocation(line: 620, column: 27, scope: !4584)
!4591 = !DILocation(line: 620, column: 32, scope: !4584)
!4592 = !DILocation(line: 620, column: 38, scope: !4584)
!4593 = !DILocation(line: 620, column: 11, scope: !4584)
!4594 = !DILocation(line: 620, column: 4, scope: !4584)
!4595 = !DILocation(line: 621, column: 3, scope: !4571)
!4596 = !DILocation(line: 624, column: 7, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 624, column: 7)
!4598 = !DILocation(line: 624, column: 15, scope: !4597)
!4599 = !DILocation(line: 624, column: 23, scope: !4597)
!4600 = !DILocation(line: 624, column: 26, scope: !4597)
!4601 = !DILocation(line: 624, column: 31, scope: !4597)
!4602 = !DILocation(line: 624, column: 7, scope: !4571)
!4603 = !DILocation(line: 625, column: 25, scope: !4597)
!4604 = !DILocation(line: 625, column: 30, scope: !4597)
!4605 = !DILocation(line: 625, column: 36, scope: !4597)
!4606 = !DILocation(line: 625, column: 11, scope: !4597)
!4607 = !DILocation(line: 625, column: 4, scope: !4597)
!4608 = !DILocation(line: 626, column: 7, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 626, column: 7)
!4610 = !DILocation(line: 626, column: 15, scope: !4609)
!4611 = !DILocation(line: 626, column: 23, scope: !4609)
!4612 = !DILocation(line: 626, column: 26, scope: !4609)
!4613 = !DILocation(line: 626, column: 31, scope: !4609)
!4614 = !DILocation(line: 626, column: 7, scope: !4571)
!4615 = !DILocation(line: 627, column: 30, scope: !4609)
!4616 = !DILocation(line: 627, column: 35, scope: !4609)
!4617 = !DILocation(line: 627, column: 41, scope: !4609)
!4618 = !DILocation(line: 627, column: 11, scope: !4609)
!4619 = !DILocation(line: 627, column: 4, scope: !4609)
!4620 = !DILocation(line: 628, column: 3, scope: !4571)
!4621 = !DILocation(line: 631, column: 2, scope: !4549)
!4622 = !DILocation(line: 632, column: 1, scope: !4549)
!4623 = distinct !DISubprogram(name: "hid_parse", scope: !6, file: !6, line: 1033, type: !3990, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4624 = !DILocalVariable(name: "hdev", arg: 1, scope: !4623, file: !6, line: 1033, type: !3866)
!4625 = !DILocation(line: 1033, column: 61, scope: !4623)
!4626 = !DILocation(line: 1035, column: 25, scope: !4623)
!4627 = !DILocation(line: 1035, column: 9, scope: !4623)
!4628 = !DILocation(line: 1035, column: 2, scope: !4623)
!4629 = distinct !DISubprogram(name: "devm_kzalloc", scope: !66, file: !66, line: 215, type: !4630, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{!151, !3501, !641, !812}
!4632 = !DILocalVariable(name: "dev", arg: 1, scope: !4629, file: !66, line: 215, type: !3501)
!4633 = !DILocation(line: 215, column: 49, scope: !4629)
!4634 = !DILocalVariable(name: "size", arg: 2, scope: !4629, file: !66, line: 215, type: !641)
!4635 = !DILocation(line: 215, column: 61, scope: !4629)
!4636 = !DILocalVariable(name: "gfp", arg: 3, scope: !4629, file: !66, line: 215, type: !812)
!4637 = !DILocation(line: 215, column: 73, scope: !4629)
!4638 = !DILocation(line: 217, column: 22, scope: !4629)
!4639 = !DILocation(line: 217, column: 27, scope: !4629)
!4640 = !DILocation(line: 217, column: 33, scope: !4629)
!4641 = !DILocation(line: 217, column: 37, scope: !4629)
!4642 = !DILocation(line: 217, column: 9, scope: !4629)
!4643 = !DILocation(line: 217, column: 2, scope: !4629)
!4644 = distinct !DISubprogram(name: "hid_set_drvdata", scope: !6, file: !6, line: 633, type: !4645, scopeLine: 634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{null, !3866, !151}
!4647 = !DILocalVariable(name: "hdev", arg: 1, scope: !4644, file: !6, line: 633, type: !3866)
!4648 = !DILocation(line: 633, column: 55, scope: !4644)
!4649 = !DILocalVariable(name: "data", arg: 2, scope: !4644, file: !6, line: 633, type: !151)
!4650 = !DILocation(line: 633, column: 67, scope: !4644)
!4651 = !DILocation(line: 635, column: 19, scope: !4644)
!4652 = !DILocation(line: 635, column: 25, scope: !4644)
!4653 = !DILocation(line: 635, column: 30, scope: !4644)
!4654 = !DILocation(line: 635, column: 2, scope: !4644)
!4655 = !DILocation(line: 636, column: 1, scope: !4644)
!4656 = distinct !DISubprogram(name: "__init_work", scope: !115, file: !115, line: 215, type: !4657, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{null, !1934, !207}
!4659 = !DILocalVariable(name: "work", arg: 1, scope: !4656, file: !115, line: 215, type: !1934)
!4660 = !DILocation(line: 215, column: 52, scope: !4656)
!4661 = !DILocalVariable(name: "onstack", arg: 2, scope: !4656, file: !115, line: 215, type: !207)
!4662 = !DILocation(line: 215, column: 62, scope: !4656)
!4663 = !DILocation(line: 215, column: 73, scope: !4656)
!4664 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4665, file: !4665, line: 33, type: !4666, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4665 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !160}
!4668 = !DILocalVariable(name: "list", arg: 1, scope: !4664, file: !4665, line: 33, type: !160)
!4669 = !DILocation(line: 33, column: 53, scope: !4664)
!4670 = !DILocation(line: 35, column: 2, scope: !4664)
!4671 = !DILocation(line: 35, column: 2, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4664, file: !4665, line: 35, column: 2)
!4673 = !DILocation(line: 35, column: 2, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4672, file: !4665, line: 35, column: 2)
!4675 = !DILocation(line: 35, column: 2, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4672, file: !4665, line: 35, column: 2)
!4677 = !DILocation(line: 36, column: 15, scope: !4664)
!4678 = !DILocation(line: 36, column: 2, scope: !4664)
!4679 = !DILocation(line: 36, column: 8, scope: !4664)
!4680 = !DILocation(line: 36, column: 13, scope: !4664)
!4681 = !DILocation(line: 37, column: 1, scope: !4664)
!4682 = distinct !DISubprogram(name: "lg_g15_leds_changed_work", scope: !3, file: !3, line: 161, type: !1932, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4683 = !DILocalVariable(name: "work", arg: 1, scope: !4682, file: !3, line: 161, type: !1934)
!4684 = !DILocation(line: 161, column: 58, scope: !4682)
!4685 = !DILocalVariable(name: "g15", scope: !4682, file: !3, line: 163, type: !4058)
!4686 = !DILocation(line: 163, column: 22, scope: !4682)
!4687 = !DILocalVariable(name: "__mptr", scope: !4688, file: !3, line: 163, type: !151)
!4688 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 163, column: 28)
!4689 = !DILocation(line: 163, column: 28, scope: !4688)
!4690 = !DILocation(line: 163, column: 28, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 163, column: 28)
!4692 = !DILocalVariable(name: "old_brightness", scope: !4682, file: !3, line: 164, type: !4693)
!4693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !258)
!4694 = !DILocation(line: 164, column: 22, scope: !4682)
!4695 = !DILocalVariable(name: "brightness", scope: !4682, file: !3, line: 165, type: !4693)
!4696 = !DILocation(line: 165, column: 22, scope: !4682)
!4697 = !DILocalVariable(name: "i", scope: !4682, file: !3, line: 166, type: !207)
!4698 = !DILocation(line: 166, column: 6, scope: !4682)
!4699 = !DILocalVariable(name: "ret", scope: !4682, file: !3, line: 166, type: !207)
!4700 = !DILocation(line: 166, column: 9, scope: !4682)
!4701 = !DILocation(line: 168, column: 14, scope: !4682)
!4702 = !DILocation(line: 168, column: 19, scope: !4682)
!4703 = !DILocation(line: 168, column: 2, scope: !4682)
!4704 = !DILocation(line: 169, column: 9, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 169, column: 2)
!4706 = !DILocation(line: 169, column: 7, scope: !4705)
!4707 = !DILocation(line: 169, column: 14, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 169, column: 2)
!4709 = !DILocation(line: 169, column: 16, scope: !4708)
!4710 = !DILocation(line: 169, column: 2, scope: !4705)
!4711 = !DILocation(line: 170, column: 23, scope: !4708)
!4712 = !DILocation(line: 170, column: 28, scope: !4708)
!4713 = !DILocation(line: 170, column: 33, scope: !4708)
!4714 = !DILocation(line: 170, column: 36, scope: !4708)
!4715 = !DILocation(line: 170, column: 18, scope: !4708)
!4716 = !DILocation(line: 170, column: 3, scope: !4708)
!4717 = !DILocation(line: 170, column: 21, scope: !4708)
!4718 = !DILocation(line: 169, column: 42, scope: !4708)
!4719 = !DILocation(line: 169, column: 2, scope: !4708)
!4720 = distinct !{!4720, !4710, !4721}
!4721 = !DILocation(line: 170, column: 36, scope: !4705)
!4722 = !DILocation(line: 172, column: 37, scope: !4682)
!4723 = !DILocation(line: 172, column: 8, scope: !4682)
!4724 = !DILocation(line: 172, column: 6, scope: !4682)
!4725 = !DILocation(line: 174, column: 9, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 174, column: 2)
!4727 = !DILocation(line: 174, column: 7, scope: !4726)
!4728 = !DILocation(line: 174, column: 14, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 174, column: 2)
!4730 = !DILocation(line: 174, column: 16, scope: !4729)
!4731 = !DILocation(line: 174, column: 2, scope: !4726)
!4732 = !DILocation(line: 175, column: 19, scope: !4729)
!4733 = !DILocation(line: 175, column: 24, scope: !4729)
!4734 = !DILocation(line: 175, column: 29, scope: !4729)
!4735 = !DILocation(line: 175, column: 32, scope: !4729)
!4736 = !DILocation(line: 175, column: 14, scope: !4729)
!4737 = !DILocation(line: 175, column: 3, scope: !4729)
!4738 = !DILocation(line: 175, column: 17, scope: !4729)
!4739 = !DILocation(line: 174, column: 42, scope: !4729)
!4740 = !DILocation(line: 174, column: 2, scope: !4729)
!4741 = distinct !{!4741, !4731, !4742}
!4742 = !DILocation(line: 175, column: 32, scope: !4726)
!4743 = !DILocation(line: 176, column: 16, scope: !4682)
!4744 = !DILocation(line: 176, column: 21, scope: !4682)
!4745 = !DILocation(line: 176, column: 2, scope: !4682)
!4746 = !DILocation(line: 178, column: 6, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 178, column: 6)
!4748 = !DILocation(line: 178, column: 6, scope: !4682)
!4749 = !DILocation(line: 179, column: 3, scope: !4747)
!4750 = !DILocation(line: 181, column: 9, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 181, column: 2)
!4752 = !DILocation(line: 181, column: 7, scope: !4751)
!4753 = !DILocation(line: 181, column: 14, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 181, column: 2)
!4755 = !DILocation(line: 181, column: 16, scope: !4754)
!4756 = !DILocation(line: 181, column: 2, scope: !4751)
!4757 = !DILocation(line: 182, column: 18, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 182, column: 7)
!4759 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 181, column: 46)
!4760 = !DILocation(line: 182, column: 7, scope: !4758)
!4761 = !DILocation(line: 182, column: 39, scope: !4758)
!4762 = !DILocation(line: 182, column: 24, scope: !4758)
!4763 = !DILocation(line: 182, column: 21, scope: !4758)
!4764 = !DILocation(line: 182, column: 7, scope: !4759)
!4765 = !DILocation(line: 183, column: 4, scope: !4758)
!4766 = !DILocation(line: 185, column: 46, scope: !4759)
!4767 = !DILocation(line: 185, column: 51, scope: !4759)
!4768 = !DILocation(line: 185, column: 56, scope: !4759)
!4769 = !DILocation(line: 185, column: 59, scope: !4759)
!4770 = !DILocation(line: 186, column: 21, scope: !4759)
!4771 = !DILocation(line: 186, column: 10, scope: !4759)
!4772 = !DILocation(line: 185, column: 3, scope: !4759)
!4773 = !DILocation(line: 187, column: 2, scope: !4759)
!4774 = !DILocation(line: 181, column: 42, scope: !4754)
!4775 = !DILocation(line: 181, column: 2, scope: !4754)
!4776 = distinct !{!4776, !4756, !4777}
!4777 = !DILocation(line: 187, column: 2, scope: !4751)
!4778 = !DILocation(line: 188, column: 1, scope: !4682)
!4779 = distinct !DISubprogram(name: "lg_g510_leds_sync_work", scope: !3, file: !3, line: 346, type: !1932, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4780 = !DILocalVariable(name: "work", arg: 1, scope: !4779, file: !3, line: 346, type: !1934)
!4781 = !DILocation(line: 346, column: 56, scope: !4779)
!4782 = !DILocalVariable(name: "g15", scope: !4779, file: !3, line: 348, type: !4058)
!4783 = !DILocation(line: 348, column: 22, scope: !4779)
!4784 = !DILocalVariable(name: "__mptr", scope: !4785, file: !3, line: 348, type: !151)
!4785 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 348, column: 28)
!4786 = !DILocation(line: 348, column: 28, scope: !4785)
!4787 = !DILocation(line: 348, column: 28, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 348, column: 28)
!4789 = !DILocation(line: 350, column: 14, scope: !4779)
!4790 = !DILocation(line: 350, column: 19, scope: !4779)
!4791 = !DILocation(line: 350, column: 2, scope: !4779)
!4792 = !DILocation(line: 351, column: 24, scope: !4779)
!4793 = !DILocation(line: 351, column: 30, scope: !4779)
!4794 = !DILocation(line: 351, column: 35, scope: !4779)
!4795 = !DILocation(line: 352, column: 10, scope: !4779)
!4796 = !DILocation(line: 352, column: 15, scope: !4779)
!4797 = !DILocation(line: 352, column: 43, scope: !4779)
!4798 = !DILocation(line: 351, column: 2, scope: !4779)
!4799 = !DILocation(line: 353, column: 16, scope: !4779)
!4800 = !DILocation(line: 353, column: 21, scope: !4779)
!4801 = !DILocation(line: 353, column: 2, scope: !4779)
!4802 = !DILocation(line: 354, column: 1, scope: !4779)
!4803 = distinct !DISubprogram(name: "hid_hw_output_report", scope: !6, file: !6, line: 1110, type: !4018, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4804 = !DILocalVariable(name: "hdev", arg: 1, scope: !4803, file: !6, line: 1110, type: !3866)
!4805 = !DILocation(line: 1110, column: 59, scope: !4803)
!4806 = !DILocalVariable(name: "buf", arg: 2, scope: !4803, file: !6, line: 1110, type: !3870)
!4807 = !DILocation(line: 1110, column: 71, scope: !4803)
!4808 = !DILocalVariable(name: "len", arg: 3, scope: !4803, file: !6, line: 1111, type: !641)
!4809 = !DILocation(line: 1111, column: 13, scope: !4803)
!4810 = !DILocation(line: 1113, column: 6, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4803, file: !6, line: 1113, column: 6)
!4812 = !DILocation(line: 1113, column: 10, scope: !4811)
!4813 = !DILocation(line: 1113, column: 14, scope: !4811)
!4814 = !DILocation(line: 1113, column: 17, scope: !4811)
!4815 = !DILocation(line: 1113, column: 21, scope: !4811)
!4816 = !DILocation(line: 1113, column: 43, scope: !4811)
!4817 = !DILocation(line: 1113, column: 47, scope: !4811)
!4818 = !DILocation(line: 1113, column: 6, scope: !4803)
!4819 = !DILocation(line: 1114, column: 3, scope: !4811)
!4820 = !DILocation(line: 1116, column: 6, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4803, file: !6, line: 1116, column: 6)
!4822 = !DILocation(line: 1116, column: 12, scope: !4821)
!4823 = !DILocation(line: 1116, column: 23, scope: !4821)
!4824 = !DILocation(line: 1116, column: 6, scope: !4803)
!4825 = !DILocation(line: 1117, column: 10, scope: !4821)
!4826 = !DILocation(line: 1117, column: 16, scope: !4821)
!4827 = !DILocation(line: 1117, column: 27, scope: !4821)
!4828 = !DILocation(line: 1117, column: 41, scope: !4821)
!4829 = !DILocation(line: 1117, column: 47, scope: !4821)
!4830 = !DILocation(line: 1117, column: 52, scope: !4821)
!4831 = !DILocation(line: 1117, column: 3, scope: !4821)
!4832 = !DILocation(line: 1119, column: 2, scope: !4803)
!4833 = !DILocation(line: 1120, column: 1, scope: !4803)
!4834 = distinct !DISubprogram(name: "hid_hw_raw_request", scope: !6, file: !6, line: 1090, type: !4014, scopeLine: 1093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4835 = !DILocalVariable(name: "hdev", arg: 1, scope: !4834, file: !6, line: 1090, type: !3866)
!4836 = !DILocation(line: 1090, column: 57, scope: !4834)
!4837 = !DILocalVariable(name: "reportnum", arg: 2, scope: !4834, file: !6, line: 1091, type: !191)
!4838 = !DILocation(line: 1091, column: 21, scope: !4834)
!4839 = !DILocalVariable(name: "buf", arg: 3, scope: !4834, file: !6, line: 1091, type: !3870)
!4840 = !DILocation(line: 1091, column: 38, scope: !4834)
!4841 = !DILocalVariable(name: "len", arg: 4, scope: !4834, file: !6, line: 1092, type: !641)
!4842 = !DILocation(line: 1092, column: 14, scope: !4834)
!4843 = !DILocalVariable(name: "rtype", arg: 5, scope: !4834, file: !6, line: 1092, type: !191)
!4844 = !DILocation(line: 1092, column: 33, scope: !4834)
!4845 = !DILocalVariable(name: "reqtype", arg: 6, scope: !4834, file: !6, line: 1092, type: !207)
!4846 = !DILocation(line: 1092, column: 44, scope: !4834)
!4847 = !DILocation(line: 1094, column: 6, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4834, file: !6, line: 1094, column: 6)
!4849 = !DILocation(line: 1094, column: 10, scope: !4848)
!4850 = !DILocation(line: 1094, column: 14, scope: !4848)
!4851 = !DILocation(line: 1094, column: 17, scope: !4848)
!4852 = !DILocation(line: 1094, column: 21, scope: !4848)
!4853 = !DILocation(line: 1094, column: 43, scope: !4848)
!4854 = !DILocation(line: 1094, column: 47, scope: !4848)
!4855 = !DILocation(line: 1094, column: 6, scope: !4834)
!4856 = !DILocation(line: 1095, column: 3, scope: !4848)
!4857 = !DILocation(line: 1097, column: 9, scope: !4834)
!4858 = !DILocation(line: 1097, column: 15, scope: !4834)
!4859 = !DILocation(line: 1097, column: 26, scope: !4834)
!4860 = !DILocation(line: 1097, column: 38, scope: !4834)
!4861 = !DILocation(line: 1097, column: 44, scope: !4834)
!4862 = !DILocation(line: 1097, column: 55, scope: !4834)
!4863 = !DILocation(line: 1097, column: 60, scope: !4834)
!4864 = !DILocation(line: 1098, column: 11, scope: !4834)
!4865 = !DILocation(line: 1098, column: 18, scope: !4834)
!4866 = !DILocation(line: 1097, column: 2, scope: !4834)
!4867 = !DILocation(line: 1099, column: 1, scope: !4834)
!4868 = distinct !DISubprogram(name: "lg_g15_get_initial_led_brightness", scope: !3, file: !3, line: 441, type: !4869, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!207, !4058}
!4871 = !DILocalVariable(name: "g15", arg: 1, scope: !4868, file: !3, line: 441, type: !4058)
!4872 = !DILocation(line: 441, column: 66, scope: !4868)
!4873 = !DILocalVariable(name: "ret", scope: !4868, file: !3, line: 443, type: !207)
!4874 = !DILocation(line: 443, column: 6, scope: !4868)
!4875 = !DILocation(line: 445, column: 10, scope: !4868)
!4876 = !DILocation(line: 445, column: 15, scope: !4868)
!4877 = !DILocation(line: 445, column: 2, scope: !4868)
!4878 = !DILocation(line: 448, column: 39, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 445, column: 22)
!4880 = !DILocation(line: 448, column: 10, scope: !4879)
!4881 = !DILocation(line: 448, column: 3, scope: !4879)
!4882 = !DILocation(line: 451, column: 44, scope: !4879)
!4883 = !DILocation(line: 451, column: 9, scope: !4879)
!4884 = !DILocation(line: 451, column: 7, scope: !4879)
!4885 = !DILocation(line: 452, column: 7, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 452, column: 7)
!4887 = !DILocation(line: 452, column: 7, scope: !4879)
!4888 = !DILocation(line: 453, column: 11, scope: !4886)
!4889 = !DILocation(line: 453, column: 4, scope: !4886)
!4890 = !DILocation(line: 455, column: 44, scope: !4879)
!4891 = !DILocation(line: 455, column: 9, scope: !4879)
!4892 = !DILocation(line: 455, column: 7, scope: !4879)
!4893 = !DILocation(line: 456, column: 7, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 456, column: 7)
!4895 = !DILocation(line: 456, column: 7, scope: !4879)
!4896 = !DILocation(line: 457, column: 11, scope: !4894)
!4897 = !DILocation(line: 457, column: 4, scope: !4894)
!4898 = !DILocation(line: 459, column: 45, scope: !4879)
!4899 = !DILocation(line: 459, column: 10, scope: !4879)
!4900 = !DILocation(line: 459, column: 3, scope: !4879)
!4901 = !DILocation(line: 461, column: 2, scope: !4868)
!4902 = !DILocation(line: 462, column: 1, scope: !4868)
!4903 = distinct !DISubprogram(name: "lg_g15_input_open", scope: !3, file: !3, line: 634, type: !3102, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4904 = !DILocalVariable(name: "dev", arg: 1, scope: !4903, file: !3, line: 634, type: !223)
!4905 = !DILocation(line: 634, column: 48, scope: !4903)
!4906 = !DILocalVariable(name: "hdev", scope: !4903, file: !3, line: 636, type: !3866)
!4907 = !DILocation(line: 636, column: 21, scope: !4903)
!4908 = !DILocation(line: 636, column: 46, scope: !4903)
!4909 = !DILocation(line: 636, column: 28, scope: !4903)
!4910 = !DILocation(line: 638, column: 21, scope: !4903)
!4911 = !DILocation(line: 638, column: 9, scope: !4903)
!4912 = !DILocation(line: 638, column: 2, scope: !4903)
!4913 = distinct !DISubprogram(name: "lg_g15_input_close", scope: !3, file: !3, line: 641, type: !3106, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4914 = !DILocalVariable(name: "dev", arg: 1, scope: !4913, file: !3, line: 641, type: !223)
!4915 = !DILocation(line: 641, column: 50, scope: !4913)
!4916 = !DILocalVariable(name: "hdev", scope: !4913, file: !3, line: 643, type: !3866)
!4917 = !DILocation(line: 643, column: 21, scope: !4913)
!4918 = !DILocation(line: 643, column: 46, scope: !4913)
!4919 = !DILocation(line: 643, column: 28, scope: !4913)
!4920 = !DILocation(line: 645, column: 15, scope: !4913)
!4921 = !DILocation(line: 645, column: 2, scope: !4913)
!4922 = !DILocation(line: 646, column: 1, scope: !4913)
!4923 = distinct !DISubprogram(name: "input_set_drvdata", scope: !225, file: !225, line: 371, type: !4924, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{null, !223, !151}
!4926 = !DILocalVariable(name: "dev", arg: 1, scope: !4923, file: !225, line: 371, type: !223)
!4927 = !DILocation(line: 371, column: 56, scope: !4923)
!4928 = !DILocalVariable(name: "data", arg: 2, scope: !4923, file: !225, line: 371, type: !151)
!4929 = !DILocation(line: 371, column: 67, scope: !4923)
!4930 = !DILocation(line: 373, column: 19, scope: !4923)
!4931 = !DILocation(line: 373, column: 24, scope: !4923)
!4932 = !DILocation(line: 373, column: 29, scope: !4923)
!4933 = !DILocation(line: 373, column: 2, scope: !4923)
!4934 = !DILocation(line: 374, column: 1, scope: !4923)
!4935 = distinct !DISubprogram(name: "lg_g15_register_led", scope: !3, file: !3, line: 648, type: !4936, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!207, !4058, !207}
!4938 = !DILocalVariable(name: "g15", arg: 1, scope: !4935, file: !3, line: 648, type: !4058)
!4939 = !DILocation(line: 648, column: 52, scope: !4935)
!4940 = !DILocalVariable(name: "i", arg: 2, scope: !4935, file: !3, line: 648, type: !207)
!4941 = !DILocation(line: 648, column: 61, scope: !4935)
!4942 = !DILocalVariable(name: "led_names", scope: !4935, file: !3, line: 650, type: !4943)
!4943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4944, size: 384, elements: !1590)
!4944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!4945 = !DILocation(line: 650, column: 21, scope: !4935)
!4946 = !DILocation(line: 659, column: 21, scope: !4935)
!4947 = !DILocation(line: 659, column: 2, scope: !4935)
!4948 = !DILocation(line: 659, column: 7, scope: !4935)
!4949 = !DILocation(line: 659, column: 12, scope: !4935)
!4950 = !DILocation(line: 659, column: 15, scope: !4935)
!4951 = !DILocation(line: 659, column: 19, scope: !4935)
!4952 = !DILocation(line: 660, column: 37, scope: !4935)
!4953 = !DILocation(line: 660, column: 27, scope: !4935)
!4954 = !DILocation(line: 660, column: 2, scope: !4935)
!4955 = !DILocation(line: 660, column: 7, scope: !4935)
!4956 = !DILocation(line: 660, column: 12, scope: !4935)
!4957 = !DILocation(line: 660, column: 15, scope: !4935)
!4958 = !DILocation(line: 660, column: 20, scope: !4935)
!4959 = !DILocation(line: 660, column: 25, scope: !4935)
!4960 = !DILocation(line: 662, column: 10, scope: !4935)
!4961 = !DILocation(line: 662, column: 15, scope: !4935)
!4962 = !DILocation(line: 662, column: 2, scope: !4935)
!4963 = !DILocation(line: 665, column: 3, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 662, column: 22)
!4965 = !DILocation(line: 665, column: 8, scope: !4964)
!4966 = !DILocation(line: 665, column: 13, scope: !4964)
!4967 = !DILocation(line: 665, column: 16, scope: !4964)
!4968 = !DILocation(line: 665, column: 21, scope: !4964)
!4969 = !DILocation(line: 665, column: 45, scope: !4964)
!4970 = !DILocation(line: 666, column: 3, scope: !4964)
!4971 = !DILocation(line: 666, column: 8, scope: !4964)
!4972 = !DILocation(line: 666, column: 13, scope: !4964)
!4973 = !DILocation(line: 666, column: 16, scope: !4964)
!4974 = !DILocation(line: 666, column: 21, scope: !4964)
!4975 = !DILocation(line: 666, column: 36, scope: !4964)
!4976 = !DILocation(line: 667, column: 7, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 667, column: 7)
!4978 = !DILocation(line: 667, column: 9, scope: !4977)
!4979 = !DILocation(line: 667, column: 7, scope: !4964)
!4980 = !DILocation(line: 668, column: 4, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 667, column: 34)
!4982 = !DILocation(line: 668, column: 9, scope: !4981)
!4983 = !DILocation(line: 668, column: 14, scope: !4981)
!4984 = !DILocation(line: 668, column: 17, scope: !4981)
!4985 = !DILocation(line: 668, column: 22, scope: !4981)
!4986 = !DILocation(line: 668, column: 28, scope: !4981)
!4987 = !DILocation(line: 669, column: 4, scope: !4981)
!4988 = !DILocation(line: 669, column: 9, scope: !4981)
!4989 = !DILocation(line: 669, column: 14, scope: !4981)
!4990 = !DILocation(line: 669, column: 17, scope: !4981)
!4991 = !DILocation(line: 669, column: 22, scope: !4981)
!4992 = !DILocation(line: 669, column: 37, scope: !4981)
!4993 = !DILocation(line: 670, column: 3, scope: !4981)
!4994 = !DILocation(line: 671, column: 4, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 670, column: 10)
!4996 = !DILocation(line: 671, column: 9, scope: !4995)
!4997 = !DILocation(line: 671, column: 14, scope: !4995)
!4998 = !DILocation(line: 671, column: 17, scope: !4995)
!4999 = !DILocation(line: 671, column: 22, scope: !4995)
!5000 = !DILocation(line: 671, column: 37, scope: !4995)
!5001 = !DILocation(line: 673, column: 3, scope: !4964)
!5002 = !DILocation(line: 676, column: 11, scope: !4964)
!5003 = !DILocation(line: 676, column: 3, scope: !4964)
!5004 = !DILocation(line: 682, column: 4, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 676, column: 14)
!5006 = !DILocation(line: 682, column: 9, scope: !5005)
!5007 = !DILocation(line: 682, column: 14, scope: !5005)
!5008 = !DILocation(line: 682, column: 17, scope: !5005)
!5009 = !DILocation(line: 682, column: 22, scope: !5005)
!5010 = !DILocation(line: 682, column: 27, scope: !5005)
!5011 = !DILocation(line: 685, column: 4, scope: !5005)
!5012 = !DILocation(line: 685, column: 9, scope: !5005)
!5013 = !DILocation(line: 685, column: 14, scope: !5005)
!5014 = !DILocation(line: 685, column: 17, scope: !5005)
!5015 = !DILocation(line: 685, column: 22, scope: !5005)
!5016 = !DILocation(line: 685, column: 46, scope: !5005)
!5017 = !DILocation(line: 687, column: 4, scope: !5005)
!5018 = !DILocation(line: 687, column: 9, scope: !5005)
!5019 = !DILocation(line: 687, column: 14, scope: !5005)
!5020 = !DILocation(line: 687, column: 17, scope: !5005)
!5021 = !DILocation(line: 687, column: 22, scope: !5005)
!5022 = !DILocation(line: 687, column: 37, scope: !5005)
!5023 = !DILocation(line: 689, column: 4, scope: !5005)
!5024 = !DILocation(line: 689, column: 9, scope: !5005)
!5025 = !DILocation(line: 689, column: 14, scope: !5005)
!5026 = !DILocation(line: 689, column: 17, scope: !5005)
!5027 = !DILocation(line: 689, column: 22, scope: !5005)
!5028 = !DILocation(line: 689, column: 37, scope: !5005)
!5029 = !DILocation(line: 690, column: 4, scope: !5005)
!5030 = !DILocation(line: 690, column: 9, scope: !5005)
!5031 = !DILocation(line: 690, column: 14, scope: !5005)
!5032 = !DILocation(line: 690, column: 17, scope: !5005)
!5033 = !DILocation(line: 690, column: 22, scope: !5005)
!5034 = !DILocation(line: 690, column: 29, scope: !5005)
!5035 = !DILocation(line: 691, column: 4, scope: !5005)
!5036 = !DILocation(line: 693, column: 4, scope: !5005)
!5037 = !DILocation(line: 693, column: 9, scope: !5005)
!5038 = !DILocation(line: 693, column: 14, scope: !5005)
!5039 = !DILocation(line: 693, column: 17, scope: !5005)
!5040 = !DILocation(line: 693, column: 22, scope: !5005)
!5041 = !DILocation(line: 693, column: 46, scope: !5005)
!5042 = !DILocation(line: 695, column: 4, scope: !5005)
!5043 = !DILocation(line: 695, column: 9, scope: !5005)
!5044 = !DILocation(line: 695, column: 14, scope: !5005)
!5045 = !DILocation(line: 695, column: 17, scope: !5005)
!5046 = !DILocation(line: 695, column: 22, scope: !5005)
!5047 = !DILocation(line: 695, column: 37, scope: !5005)
!5048 = !DILocation(line: 697, column: 4, scope: !5005)
!5049 = !DILocation(line: 697, column: 9, scope: !5005)
!5050 = !DILocation(line: 697, column: 14, scope: !5005)
!5051 = !DILocation(line: 697, column: 17, scope: !5005)
!5052 = !DILocation(line: 697, column: 22, scope: !5005)
!5053 = !DILocation(line: 697, column: 37, scope: !5005)
!5054 = !DILocation(line: 698, column: 3, scope: !5005)
!5055 = !DILocation(line: 699, column: 3, scope: !4964)
!5056 = !DILocation(line: 702, column: 37, scope: !4935)
!5057 = !DILocation(line: 702, column: 42, scope: !4935)
!5058 = !DILocation(line: 702, column: 48, scope: !4935)
!5059 = !DILocation(line: 702, column: 54, scope: !4935)
!5060 = !DILocation(line: 702, column: 59, scope: !4935)
!5061 = !DILocation(line: 702, column: 64, scope: !4935)
!5062 = !DILocation(line: 702, column: 67, scope: !4935)
!5063 = !DILocation(line: 702, column: 9, scope: !4935)
!5064 = !DILocation(line: 702, column: 2, scope: !4935)
!5065 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !66, file: !66, line: 660, type: !5066, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{null, !3501, !151}
!5068 = !DILocalVariable(name: "dev", arg: 1, scope: !5065, file: !66, line: 660, type: !3501)
!5069 = !DILocation(line: 660, column: 51, scope: !5065)
!5070 = !DILocalVariable(name: "data", arg: 2, scope: !5065, file: !66, line: 660, type: !151)
!5071 = !DILocation(line: 660, column: 62, scope: !5065)
!5072 = !DILocation(line: 662, column: 21, scope: !5065)
!5073 = !DILocation(line: 662, column: 2, scope: !5065)
!5074 = !DILocation(line: 662, column: 7, scope: !5065)
!5075 = !DILocation(line: 662, column: 19, scope: !5065)
!5076 = !DILocation(line: 663, column: 1, scope: !5065)
!5077 = distinct !DISubprogram(name: "lg_g15_update_led_brightness", scope: !3, file: !3, line: 66, type: !4869, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5078 = !DILocalVariable(name: "g15", arg: 1, scope: !5077, file: !3, line: 66, type: !4058)
!5079 = !DILocation(line: 66, column: 61, scope: !5077)
!5080 = !DILocalVariable(name: "ret", scope: !5077, file: !3, line: 68, type: !207)
!5081 = !DILocation(line: 68, column: 6, scope: !5077)
!5082 = !DILocation(line: 70, column: 27, scope: !5077)
!5083 = !DILocation(line: 70, column: 32, scope: !5077)
!5084 = !DILocation(line: 71, column: 6, scope: !5077)
!5085 = !DILocation(line: 71, column: 11, scope: !5077)
!5086 = !DILocation(line: 70, column: 8, scope: !5077)
!5087 = !DILocation(line: 70, column: 6, scope: !5077)
!5088 = !DILocation(line: 73, column: 6, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 73, column: 6)
!5090 = !DILocation(line: 73, column: 10, scope: !5089)
!5091 = !DILocation(line: 73, column: 6, scope: !5077)
!5092 = !DILocation(line: 74, column: 3, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 73, column: 16)
!5094 = !DILocation(line: 75, column: 11, scope: !5093)
!5095 = !DILocation(line: 75, column: 15, scope: !5093)
!5096 = !DILocation(line: 75, column: 10, scope: !5093)
!5097 = !DILocation(line: 75, column: 22, scope: !5093)
!5098 = !DILocation(line: 75, column: 3, scope: !5093)
!5099 = !DILocation(line: 78, column: 48, scope: !5077)
!5100 = !DILocation(line: 78, column: 53, scope: !5077)
!5101 = !DILocation(line: 78, column: 2, scope: !5077)
!5102 = !DILocation(line: 78, column: 7, scope: !5077)
!5103 = !DILocation(line: 78, column: 35, scope: !5077)
!5104 = !DILocation(line: 78, column: 46, scope: !5077)
!5105 = !DILocation(line: 79, column: 48, scope: !5077)
!5106 = !DILocation(line: 79, column: 53, scope: !5077)
!5107 = !DILocation(line: 79, column: 2, scope: !5077)
!5108 = !DILocation(line: 79, column: 7, scope: !5077)
!5109 = !DILocation(line: 79, column: 35, scope: !5077)
!5110 = !DILocation(line: 79, column: 46, scope: !5077)
!5111 = !DILocation(line: 82, column: 5, scope: !5077)
!5112 = !DILocation(line: 82, column: 10, scope: !5077)
!5113 = !DILocation(line: 82, column: 26, scope: !5077)
!5114 = !DILocation(line: 82, column: 3, scope: !5077)
!5115 = !DILocation(line: 81, column: 2, scope: !5077)
!5116 = !DILocation(line: 81, column: 7, scope: !5077)
!5117 = !DILocation(line: 81, column: 34, scope: !5077)
!5118 = !DILocation(line: 81, column: 45, scope: !5077)
!5119 = !DILocation(line: 84, column: 5, scope: !5077)
!5120 = !DILocation(line: 84, column: 10, scope: !5077)
!5121 = !DILocation(line: 84, column: 26, scope: !5077)
!5122 = !DILocation(line: 84, column: 3, scope: !5077)
!5123 = !DILocation(line: 83, column: 2, scope: !5077)
!5124 = !DILocation(line: 83, column: 7, scope: !5077)
!5125 = !DILocation(line: 83, column: 34, scope: !5077)
!5126 = !DILocation(line: 83, column: 45, scope: !5077)
!5127 = !DILocation(line: 86, column: 5, scope: !5077)
!5128 = !DILocation(line: 86, column: 10, scope: !5077)
!5129 = !DILocation(line: 86, column: 26, scope: !5077)
!5130 = !DILocation(line: 86, column: 3, scope: !5077)
!5131 = !DILocation(line: 85, column: 2, scope: !5077)
!5132 = !DILocation(line: 85, column: 7, scope: !5077)
!5133 = !DILocation(line: 85, column: 34, scope: !5077)
!5134 = !DILocation(line: 85, column: 45, scope: !5077)
!5135 = !DILocation(line: 88, column: 5, scope: !5077)
!5136 = !DILocation(line: 88, column: 10, scope: !5077)
!5137 = !DILocation(line: 88, column: 26, scope: !5077)
!5138 = !DILocation(line: 88, column: 3, scope: !5077)
!5139 = !DILocation(line: 87, column: 2, scope: !5077)
!5140 = !DILocation(line: 87, column: 7, scope: !5077)
!5141 = !DILocation(line: 87, column: 33, scope: !5077)
!5142 = !DILocation(line: 87, column: 44, scope: !5077)
!5143 = !DILocation(line: 90, column: 2, scope: !5077)
!5144 = !DILocation(line: 91, column: 1, scope: !5077)
!5145 = distinct !DISubprogram(name: "led_classdev_notify_brightness_hw_changed", scope: !98, file: !98, line: 570, type: !4082, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5146 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5145, file: !98, line: 571, type: !4084)
!5147 = !DILocation(line: 571, column: 23, scope: !5145)
!5148 = !DILocalVariable(name: "brightness", arg: 2, scope: !5145, file: !98, line: 571, type: !97)
!5149 = !DILocation(line: 571, column: 53, scope: !5145)
!5150 = !DILocation(line: 571, column: 67, scope: !5145)
!5151 = distinct !DISubprogram(name: "lg_g510_kbd_led_write", scope: !3, file: !3, line: 226, type: !5152, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!207, !4058, !4132, !97}
!5154 = !DILocalVariable(name: "g15", arg: 1, scope: !5151, file: !3, line: 226, type: !4058)
!5155 = !DILocation(line: 226, column: 54, scope: !5151)
!5156 = !DILocalVariable(name: "g15_led", arg: 2, scope: !5151, file: !3, line: 227, type: !4132)
!5157 = !DILocation(line: 227, column: 25, scope: !5151)
!5158 = !DILocalVariable(name: "brightness", arg: 3, scope: !5151, file: !3, line: 228, type: !97)
!5159 = !DILocation(line: 228, column: 26, scope: !5151)
!5160 = !DILocalVariable(name: "ret", scope: !5151, file: !3, line: 230, type: !207)
!5161 = !DILocation(line: 230, column: 6, scope: !5151)
!5162 = !DILocation(line: 232, column: 29, scope: !5151)
!5163 = !DILocation(line: 232, column: 38, scope: !5151)
!5164 = !DILocation(line: 232, column: 27, scope: !5151)
!5165 = !DILocation(line: 232, column: 25, scope: !5151)
!5166 = !DILocation(line: 232, column: 2, scope: !5151)
!5167 = !DILocation(line: 232, column: 7, scope: !5151)
!5168 = !DILocation(line: 232, column: 23, scope: !5151)
!5169 = !DILocalVariable(name: "__x", scope: !5170, file: !3, line: 234, type: !7)
!5170 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 234, column: 3)
!5171 = !DILocation(line: 234, column: 3, scope: !5170)
!5172 = !DILocalVariable(name: "__d", scope: !5170, file: !3, line: 234, type: !207)
!5173 = !DILocation(line: 234, column: 3, scope: !5151)
!5174 = !DILocation(line: 233, column: 2, scope: !5151)
!5175 = !DILocation(line: 233, column: 7, scope: !5151)
!5176 = !DILocation(line: 233, column: 23, scope: !5151)
!5177 = !DILocalVariable(name: "__x", scope: !5178, file: !3, line: 236, type: !7)
!5178 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 236, column: 3)
!5179 = !DILocation(line: 236, column: 3, scope: !5178)
!5180 = !DILocalVariable(name: "__d", scope: !5178, file: !3, line: 236, type: !207)
!5181 = !DILocation(line: 236, column: 3, scope: !5151)
!5182 = !DILocation(line: 235, column: 2, scope: !5151)
!5183 = !DILocation(line: 235, column: 7, scope: !5151)
!5184 = !DILocation(line: 235, column: 23, scope: !5151)
!5185 = !DILocalVariable(name: "__x", scope: !5186, file: !3, line: 238, type: !7)
!5186 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 238, column: 3)
!5187 = !DILocation(line: 238, column: 3, scope: !5186)
!5188 = !DILocalVariable(name: "__d", scope: !5186, file: !3, line: 238, type: !207)
!5189 = !DILocation(line: 238, column: 3, scope: !5151)
!5190 = !DILocation(line: 237, column: 2, scope: !5151)
!5191 = !DILocation(line: 237, column: 7, scope: !5151)
!5192 = !DILocation(line: 237, column: 23, scope: !5151)
!5193 = !DILocation(line: 240, column: 27, scope: !5151)
!5194 = !DILocation(line: 240, column: 32, scope: !5151)
!5195 = !DILocation(line: 241, column: 38, scope: !5151)
!5196 = !DILocation(line: 241, column: 47, scope: !5151)
!5197 = !DILocation(line: 241, column: 36, scope: !5151)
!5198 = !DILocation(line: 241, column: 6, scope: !5151)
!5199 = !DILocation(line: 242, column: 6, scope: !5151)
!5200 = !DILocation(line: 242, column: 11, scope: !5151)
!5201 = !DILocation(line: 240, column: 8, scope: !5151)
!5202 = !DILocation(line: 240, column: 6, scope: !5151)
!5203 = !DILocation(line: 244, column: 6, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 244, column: 6)
!5205 = !DILocation(line: 244, column: 10, scope: !5204)
!5206 = !DILocation(line: 244, column: 6, scope: !5151)
!5207 = !DILocation(line: 246, column: 25, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 244, column: 16)
!5209 = !DILocation(line: 246, column: 3, scope: !5208)
!5210 = !DILocation(line: 246, column: 12, scope: !5208)
!5211 = !DILocation(line: 246, column: 23, scope: !5208)
!5212 = !DILocation(line: 247, column: 7, scope: !5208)
!5213 = !DILocation(line: 248, column: 2, scope: !5208)
!5214 = !DILocation(line: 249, column: 3, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 248, column: 9)
!5216 = !DILocation(line: 250, column: 10, scope: !5215)
!5217 = !DILocation(line: 250, column: 14, scope: !5215)
!5218 = !DILocation(line: 250, column: 9, scope: !5215)
!5219 = !DILocation(line: 250, column: 21, scope: !5215)
!5220 = !DILocation(line: 250, column: 7, scope: !5215)
!5221 = !DILocation(line: 253, column: 9, scope: !5151)
!5222 = !DILocation(line: 253, column: 2, scope: !5151)
!5223 = distinct !DISubprogram(name: "lg_g510_get_initial_led_brightness", scope: !3, file: !3, line: 192, type: !4936, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5224 = !DILocalVariable(name: "g15", arg: 1, scope: !5223, file: !3, line: 192, type: !4058)
!5225 = !DILocation(line: 192, column: 67, scope: !5223)
!5226 = !DILocalVariable(name: "i", arg: 2, scope: !5223, file: !3, line: 192, type: !207)
!5227 = !DILocation(line: 192, column: 76, scope: !5223)
!5228 = !DILocalVariable(name: "ret", scope: !5223, file: !3, line: 194, type: !207)
!5229 = !DILocation(line: 194, column: 6, scope: !5223)
!5230 = !DILocalVariable(name: "high", scope: !5223, file: !3, line: 194, type: !207)
!5231 = !DILocation(line: 194, column: 11, scope: !5223)
!5232 = !DILocation(line: 196, column: 27, scope: !5223)
!5233 = !DILocation(line: 196, column: 32, scope: !5223)
!5234 = !DILocation(line: 196, column: 70, scope: !5223)
!5235 = !DILocation(line: 196, column: 68, scope: !5223)
!5236 = !DILocation(line: 196, column: 38, scope: !5223)
!5237 = !DILocation(line: 197, column: 6, scope: !5223)
!5238 = !DILocation(line: 197, column: 11, scope: !5223)
!5239 = !DILocation(line: 196, column: 8, scope: !5223)
!5240 = !DILocation(line: 196, column: 6, scope: !5223)
!5241 = !DILocation(line: 199, column: 6, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 199, column: 6)
!5243 = !DILocation(line: 199, column: 10, scope: !5242)
!5244 = !DILocation(line: 199, column: 6, scope: !5223)
!5245 = !DILocation(line: 200, column: 3, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 199, column: 16)
!5247 = !DILocation(line: 201, column: 11, scope: !5246)
!5248 = !DILocation(line: 201, column: 15, scope: !5246)
!5249 = !DILocation(line: 201, column: 10, scope: !5246)
!5250 = !DILocation(line: 201, column: 22, scope: !5246)
!5251 = !DILocation(line: 201, column: 3, scope: !5246)
!5252 = !DILocalVariable(name: "__UNIQUE_ID___x219", scope: !5253, file: !3, line: 204, type: !1324)
!5253 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 204, column: 9)
!5254 = !DILocation(line: 204, column: 9, scope: !5253)
!5255 = !DILocalVariable(name: "__UNIQUE_ID___x217", scope: !5256, file: !3, line: 204, type: !1324)
!5256 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 204, column: 9)
!5257 = !DILocation(line: 204, column: 9, scope: !5256)
!5258 = !DILocalVariable(name: "__UNIQUE_ID___y218", scope: !5256, file: !3, line: 204, type: !1324)
!5259 = !DILocalVariable(name: "__UNIQUE_ID___y220", scope: !5253, file: !3, line: 204, type: !1324)
!5260 = !DILocation(line: 204, column: 7, scope: !5223)
!5261 = !DILocation(line: 207, column: 6, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 207, column: 6)
!5263 = !DILocation(line: 207, column: 6, scope: !5223)
!5264 = !DILocalVariable(name: "__x", scope: !5265, file: !3, line: 209, type: !207)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 209, column: 4)
!5266 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 207, column: 12)
!5267 = !DILocation(line: 209, column: 4, scope: !5265)
!5268 = !DILocalVariable(name: "__d", scope: !5265, file: !3, line: 209, type: !207)
!5269 = !DILocation(line: 209, column: 4, scope: !5266)
!5270 = !DILocation(line: 208, column: 3, scope: !5266)
!5271 = !DILocation(line: 208, column: 8, scope: !5266)
!5272 = !DILocation(line: 208, column: 13, scope: !5266)
!5273 = !DILocation(line: 208, column: 16, scope: !5266)
!5274 = !DILocation(line: 208, column: 20, scope: !5266)
!5275 = !DILocalVariable(name: "__x", scope: !5276, file: !3, line: 211, type: !207)
!5276 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 211, column: 4)
!5277 = !DILocation(line: 211, column: 4, scope: !5276)
!5278 = !DILocalVariable(name: "__d", scope: !5276, file: !3, line: 211, type: !207)
!5279 = !DILocation(line: 211, column: 4, scope: !5266)
!5280 = !DILocation(line: 210, column: 3, scope: !5266)
!5281 = !DILocation(line: 210, column: 8, scope: !5266)
!5282 = !DILocation(line: 210, column: 13, scope: !5266)
!5283 = !DILocation(line: 210, column: 16, scope: !5266)
!5284 = !DILocation(line: 210, column: 22, scope: !5266)
!5285 = !DILocalVariable(name: "__x", scope: !5286, file: !3, line: 213, type: !207)
!5286 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 213, column: 4)
!5287 = !DILocation(line: 213, column: 4, scope: !5286)
!5288 = !DILocalVariable(name: "__d", scope: !5286, file: !3, line: 213, type: !207)
!5289 = !DILocation(line: 213, column: 4, scope: !5266)
!5290 = !DILocation(line: 212, column: 3, scope: !5266)
!5291 = !DILocation(line: 212, column: 8, scope: !5266)
!5292 = !DILocation(line: 212, column: 13, scope: !5266)
!5293 = !DILocation(line: 212, column: 16, scope: !5266)
!5294 = !DILocation(line: 212, column: 21, scope: !5266)
!5295 = !DILocation(line: 214, column: 29, scope: !5266)
!5296 = !DILocation(line: 214, column: 3, scope: !5266)
!5297 = !DILocation(line: 214, column: 8, scope: !5266)
!5298 = !DILocation(line: 214, column: 13, scope: !5266)
!5299 = !DILocation(line: 214, column: 16, scope: !5266)
!5300 = !DILocation(line: 214, column: 27, scope: !5266)
!5301 = !DILocation(line: 215, column: 2, scope: !5266)
!5302 = !DILocation(line: 216, column: 3, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 215, column: 9)
!5304 = !DILocation(line: 216, column: 8, scope: !5303)
!5305 = !DILocation(line: 216, column: 13, scope: !5303)
!5306 = !DILocation(line: 216, column: 16, scope: !5303)
!5307 = !DILocation(line: 216, column: 22, scope: !5303)
!5308 = !DILocation(line: 217, column: 3, scope: !5303)
!5309 = !DILocation(line: 217, column: 8, scope: !5303)
!5310 = !DILocation(line: 217, column: 13, scope: !5303)
!5311 = !DILocation(line: 217, column: 16, scope: !5303)
!5312 = !DILocation(line: 217, column: 22, scope: !5303)
!5313 = !DILocation(line: 218, column: 3, scope: !5303)
!5314 = !DILocation(line: 218, column: 8, scope: !5303)
!5315 = !DILocation(line: 218, column: 13, scope: !5303)
!5316 = !DILocation(line: 218, column: 16, scope: !5303)
!5317 = !DILocation(line: 218, column: 22, scope: !5303)
!5318 = !DILocation(line: 219, column: 3, scope: !5303)
!5319 = !DILocation(line: 219, column: 8, scope: !5303)
!5320 = !DILocation(line: 219, column: 13, scope: !5303)
!5321 = !DILocation(line: 219, column: 16, scope: !5303)
!5322 = !DILocation(line: 219, column: 27, scope: !5303)
!5323 = !DILocation(line: 222, column: 2, scope: !5223)
!5324 = !DILocation(line: 223, column: 1, scope: !5223)
!5325 = distinct !DISubprogram(name: "lg_g510_update_mkey_led_brightness", scope: !3, file: !3, line: 356, type: !4869, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5326 = !DILocalVariable(name: "g15", arg: 1, scope: !5325, file: !3, line: 356, type: !4058)
!5327 = !DILocation(line: 356, column: 67, scope: !5325)
!5328 = !DILocalVariable(name: "ret", scope: !5325, file: !3, line: 358, type: !207)
!5329 = !DILocation(line: 358, column: 6, scope: !5325)
!5330 = !DILocation(line: 360, column: 27, scope: !5325)
!5331 = !DILocation(line: 360, column: 32, scope: !5325)
!5332 = !DILocation(line: 361, column: 6, scope: !5325)
!5333 = !DILocation(line: 361, column: 11, scope: !5325)
!5334 = !DILocation(line: 360, column: 8, scope: !5325)
!5335 = !DILocation(line: 360, column: 6, scope: !5325)
!5336 = !DILocation(line: 363, column: 6, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5325, file: !3, line: 363, column: 6)
!5338 = !DILocation(line: 363, column: 10, scope: !5337)
!5339 = !DILocation(line: 363, column: 6, scope: !5325)
!5340 = !DILocation(line: 364, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 363, column: 16)
!5342 = !DILocation(line: 365, column: 10, scope: !5341)
!5343 = !DILocation(line: 365, column: 14, scope: !5341)
!5344 = !DILocation(line: 365, column: 9, scope: !5341)
!5345 = !DILocation(line: 365, column: 21, scope: !5341)
!5346 = !DILocation(line: 365, column: 7, scope: !5341)
!5347 = !DILocation(line: 366, column: 2, scope: !5341)
!5348 = !DILocation(line: 369, column: 6, scope: !5325)
!5349 = !DILocation(line: 369, column: 11, scope: !5325)
!5350 = !DILocation(line: 369, column: 27, scope: !5325)
!5351 = !DILocation(line: 369, column: 4, scope: !5325)
!5352 = !DILocation(line: 369, column: 3, scope: !5325)
!5353 = !DILocation(line: 368, column: 2, scope: !5325)
!5354 = !DILocation(line: 368, column: 7, scope: !5325)
!5355 = !DILocation(line: 368, column: 34, scope: !5325)
!5356 = !DILocation(line: 368, column: 45, scope: !5325)
!5357 = !DILocation(line: 371, column: 6, scope: !5325)
!5358 = !DILocation(line: 371, column: 11, scope: !5325)
!5359 = !DILocation(line: 371, column: 27, scope: !5325)
!5360 = !DILocation(line: 371, column: 4, scope: !5325)
!5361 = !DILocation(line: 371, column: 3, scope: !5325)
!5362 = !DILocation(line: 370, column: 2, scope: !5325)
!5363 = !DILocation(line: 370, column: 7, scope: !5325)
!5364 = !DILocation(line: 370, column: 34, scope: !5325)
!5365 = !DILocation(line: 370, column: 45, scope: !5325)
!5366 = !DILocation(line: 373, column: 6, scope: !5325)
!5367 = !DILocation(line: 373, column: 11, scope: !5325)
!5368 = !DILocation(line: 373, column: 27, scope: !5325)
!5369 = !DILocation(line: 373, column: 4, scope: !5325)
!5370 = !DILocation(line: 373, column: 3, scope: !5325)
!5371 = !DILocation(line: 372, column: 2, scope: !5325)
!5372 = !DILocation(line: 372, column: 7, scope: !5325)
!5373 = !DILocation(line: 372, column: 34, scope: !5325)
!5374 = !DILocation(line: 372, column: 45, scope: !5325)
!5375 = !DILocation(line: 375, column: 6, scope: !5325)
!5376 = !DILocation(line: 375, column: 11, scope: !5325)
!5377 = !DILocation(line: 375, column: 27, scope: !5325)
!5378 = !DILocation(line: 375, column: 4, scope: !5325)
!5379 = !DILocation(line: 375, column: 3, scope: !5325)
!5380 = !DILocation(line: 374, column: 2, scope: !5325)
!5381 = !DILocation(line: 374, column: 7, scope: !5325)
!5382 = !DILocation(line: 374, column: 33, scope: !5325)
!5383 = !DILocation(line: 374, column: 44, scope: !5325)
!5384 = !DILocation(line: 377, column: 2, scope: !5325)
!5385 = distinct !DISubprogram(name: "input_get_drvdata", scope: !225, file: !225, line: 366, type: !5386, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5386 = !DISubroutineType(types: !5387)
!5387 = !{!151, !223}
!5388 = !DILocalVariable(name: "dev", arg: 1, scope: !5385, file: !225, line: 366, type: !223)
!5389 = !DILocation(line: 366, column: 57, scope: !5385)
!5390 = !DILocation(line: 368, column: 26, scope: !5385)
!5391 = !DILocation(line: 368, column: 31, scope: !5385)
!5392 = !DILocation(line: 368, column: 9, scope: !5385)
!5393 = !DILocation(line: 368, column: 2, scope: !5385)
!5394 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !66, file: !66, line: 655, type: !5395, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!151, !5397}
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!5399 = !DILocalVariable(name: "dev", arg: 1, scope: !5394, file: !66, line: 655, type: !5397)
!5400 = !DILocation(line: 655, column: 58, scope: !5394)
!5401 = !DILocation(line: 657, column: 9, scope: !5394)
!5402 = !DILocation(line: 657, column: 14, scope: !5394)
!5403 = !DILocation(line: 657, column: 2, scope: !5394)
!5404 = distinct !DISubprogram(name: "lg_g15_led_set", scope: !3, file: !3, line: 108, type: !4087, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5405 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5404, file: !3, line: 108, type: !4084)
!5406 = !DILocation(line: 108, column: 48, scope: !5404)
!5407 = !DILocalVariable(name: "brightness", arg: 2, scope: !5404, file: !3, line: 109, type: !97)
!5408 = !DILocation(line: 109, column: 26, scope: !5404)
!5409 = !DILocalVariable(name: "g15_led", scope: !5404, file: !3, line: 111, type: !4132)
!5410 = !DILocation(line: 111, column: 21, scope: !5404)
!5411 = !DILocalVariable(name: "__mptr", scope: !5412, file: !3, line: 112, type: !151)
!5412 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 112, column: 3)
!5413 = !DILocation(line: 112, column: 3, scope: !5412)
!5414 = !DILocation(line: 112, column: 3, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 112, column: 3)
!5416 = !DILocalVariable(name: "g15", scope: !5404, file: !3, line: 113, type: !4058)
!5417 = !DILocation(line: 113, column: 22, scope: !5404)
!5418 = !DILocation(line: 113, column: 44, scope: !5404)
!5419 = !DILocation(line: 113, column: 54, scope: !5404)
!5420 = !DILocation(line: 113, column: 59, scope: !5404)
!5421 = !DILocation(line: 113, column: 28, scope: !5404)
!5422 = !DILocalVariable(name: "val", scope: !5404, file: !3, line: 114, type: !1324)
!5423 = !DILocation(line: 114, column: 5, scope: !5404)
!5424 = !DILocalVariable(name: "mask", scope: !5404, file: !3, line: 114, type: !1324)
!5425 = !DILocation(line: 114, column: 10, scope: !5404)
!5426 = !DILocalVariable(name: "i", scope: !5404, file: !3, line: 115, type: !207)
!5427 = !DILocation(line: 115, column: 6, scope: !5404)
!5428 = !DILocalVariable(name: "ret", scope: !5404, file: !3, line: 115, type: !207)
!5429 = !DILocation(line: 115, column: 9, scope: !5404)
!5430 = !DILocation(line: 118, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 118, column: 6)
!5432 = !DILocation(line: 118, column: 16, scope: !5431)
!5433 = !DILocation(line: 118, column: 22, scope: !5431)
!5434 = !DILocation(line: 118, column: 6, scope: !5404)
!5435 = !DILocation(line: 119, column: 3, scope: !5431)
!5436 = !DILocation(line: 121, column: 14, scope: !5404)
!5437 = !DILocation(line: 121, column: 19, scope: !5404)
!5438 = !DILocation(line: 121, column: 2, scope: !5404)
!5439 = !DILocation(line: 123, column: 2, scope: !5404)
!5440 = !DILocation(line: 123, column: 7, scope: !5404)
!5441 = !DILocation(line: 123, column: 23, scope: !5404)
!5442 = !DILocation(line: 124, column: 2, scope: !5404)
!5443 = !DILocation(line: 124, column: 7, scope: !5404)
!5444 = !DILocation(line: 124, column: 23, scope: !5404)
!5445 = !DILocation(line: 126, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 126, column: 6)
!5447 = !DILocation(line: 126, column: 15, scope: !5446)
!5448 = !DILocation(line: 126, column: 19, scope: !5446)
!5449 = !DILocation(line: 126, column: 6, scope: !5404)
!5450 = !DILocation(line: 127, column: 26, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 126, column: 44)
!5452 = !DILocation(line: 127, column: 35, scope: !5451)
!5453 = !DILocation(line: 127, column: 39, scope: !5451)
!5454 = !DILocation(line: 127, column: 3, scope: !5451)
!5455 = !DILocation(line: 127, column: 8, scope: !5451)
!5456 = !DILocation(line: 127, column: 24, scope: !5451)
!5457 = !DILocation(line: 128, column: 26, scope: !5451)
!5458 = !DILocation(line: 128, column: 41, scope: !5451)
!5459 = !DILocation(line: 128, column: 50, scope: !5451)
!5460 = !DILocation(line: 128, column: 54, scope: !5451)
!5461 = !DILocation(line: 128, column: 37, scope: !5451)
!5462 = !DILocation(line: 128, column: 3, scope: !5451)
!5463 = !DILocation(line: 128, column: 8, scope: !5451)
!5464 = !DILocation(line: 128, column: 24, scope: !5451)
!5465 = !DILocation(line: 129, column: 2, scope: !5451)
!5466 = !DILocation(line: 130, column: 10, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 130, column: 3)
!5468 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 129, column: 9)
!5469 = !DILocation(line: 130, column: 8, scope: !5467)
!5470 = !DILocation(line: 130, column: 34, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 130, column: 3)
!5472 = !DILocation(line: 130, column: 36, scope: !5471)
!5473 = !DILocation(line: 130, column: 3, scope: !5467)
!5474 = !DILocation(line: 131, column: 8, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 131, column: 8)
!5476 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 130, column: 59)
!5477 = !DILocation(line: 131, column: 13, scope: !5475)
!5478 = !DILocation(line: 131, column: 22, scope: !5475)
!5479 = !DILocation(line: 131, column: 10, scope: !5475)
!5480 = !DILocation(line: 131, column: 8, scope: !5476)
!5481 = !DILocation(line: 132, column: 11, scope: !5475)
!5482 = !DILocation(line: 132, column: 9, scope: !5475)
!5483 = !DILocation(line: 132, column: 5, scope: !5475)
!5484 = !DILocation(line: 134, column: 11, scope: !5475)
!5485 = !DILocation(line: 134, column: 16, scope: !5475)
!5486 = !DILocation(line: 134, column: 21, scope: !5475)
!5487 = !DILocation(line: 134, column: 24, scope: !5475)
!5488 = !DILocation(line: 134, column: 9, scope: !5475)
!5489 = !DILocation(line: 136, column: 8, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 136, column: 8)
!5491 = !DILocation(line: 136, column: 8, scope: !5476)
!5492 = !DILocation(line: 137, column: 19, scope: !5490)
!5493 = !DILocation(line: 137, column: 21, scope: !5490)
!5494 = !DILocation(line: 137, column: 15, scope: !5490)
!5495 = !DILocation(line: 137, column: 10, scope: !5490)
!5496 = !DILocation(line: 137, column: 5, scope: !5490)
!5497 = !DILocation(line: 138, column: 3, scope: !5476)
!5498 = !DILocation(line: 130, column: 55, scope: !5471)
!5499 = !DILocation(line: 130, column: 3, scope: !5471)
!5500 = distinct !{!5500, !5473, !5501}
!5501 = !DILocation(line: 138, column: 3, scope: !5467)
!5502 = !DILocation(line: 140, column: 3, scope: !5468)
!5503 = !DILocation(line: 140, column: 8, scope: !5468)
!5504 = !DILocation(line: 140, column: 24, scope: !5468)
!5505 = !DILocation(line: 141, column: 27, scope: !5468)
!5506 = !DILocation(line: 141, column: 26, scope: !5468)
!5507 = !DILocation(line: 141, column: 3, scope: !5468)
!5508 = !DILocation(line: 141, column: 8, scope: !5468)
!5509 = !DILocation(line: 141, column: 24, scope: !5468)
!5510 = !DILocation(line: 144, column: 27, scope: !5404)
!5511 = !DILocation(line: 144, column: 32, scope: !5404)
!5512 = !DILocation(line: 145, column: 6, scope: !5404)
!5513 = !DILocation(line: 145, column: 11, scope: !5404)
!5514 = !DILocation(line: 144, column: 8, scope: !5404)
!5515 = !DILocation(line: 144, column: 6, scope: !5404)
!5516 = !DILocation(line: 147, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 147, column: 6)
!5518 = !DILocation(line: 147, column: 10, scope: !5517)
!5519 = !DILocation(line: 147, column: 6, scope: !5404)
!5520 = !DILocation(line: 149, column: 25, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 147, column: 16)
!5522 = !DILocation(line: 149, column: 3, scope: !5521)
!5523 = !DILocation(line: 149, column: 12, scope: !5521)
!5524 = !DILocation(line: 149, column: 23, scope: !5521)
!5525 = !DILocation(line: 150, column: 7, scope: !5521)
!5526 = !DILocation(line: 151, column: 2, scope: !5521)
!5527 = !DILocation(line: 152, column: 3, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 151, column: 9)
!5529 = !DILocation(line: 153, column: 10, scope: !5528)
!5530 = !DILocation(line: 153, column: 14, scope: !5528)
!5531 = !DILocation(line: 153, column: 9, scope: !5528)
!5532 = !DILocation(line: 153, column: 21, scope: !5528)
!5533 = !DILocation(line: 153, column: 7, scope: !5528)
!5534 = !DILocation(line: 156, column: 16, scope: !5404)
!5535 = !DILocation(line: 156, column: 21, scope: !5404)
!5536 = !DILocation(line: 156, column: 2, scope: !5404)
!5537 = !DILocation(line: 158, column: 9, scope: !5404)
!5538 = !DILocation(line: 158, column: 2, scope: !5404)
!5539 = !DILocation(line: 159, column: 1, scope: !5404)
!5540 = distinct !DISubprogram(name: "lg_g15_led_get", scope: !3, file: !3, line: 93, type: !4091, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5541 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5540, file: !3, line: 93, type: !4084)
!5542 = !DILocation(line: 93, column: 64, scope: !5540)
!5543 = !DILocalVariable(name: "g15_led", scope: !5540, file: !3, line: 95, type: !4132)
!5544 = !DILocation(line: 95, column: 21, scope: !5540)
!5545 = !DILocalVariable(name: "__mptr", scope: !5546, file: !3, line: 96, type: !151)
!5546 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 96, column: 3)
!5547 = !DILocation(line: 96, column: 3, scope: !5546)
!5548 = !DILocation(line: 96, column: 3, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 96, column: 3)
!5550 = !DILocalVariable(name: "g15", scope: !5540, file: !3, line: 97, type: !4058)
!5551 = !DILocation(line: 97, column: 22, scope: !5540)
!5552 = !DILocation(line: 97, column: 44, scope: !5540)
!5553 = !DILocation(line: 97, column: 54, scope: !5540)
!5554 = !DILocation(line: 97, column: 59, scope: !5540)
!5555 = !DILocation(line: 97, column: 28, scope: !5540)
!5556 = !DILocalVariable(name: "brightness", scope: !5540, file: !3, line: 98, type: !97)
!5557 = !DILocation(line: 98, column: 22, scope: !5540)
!5558 = !DILocation(line: 100, column: 14, scope: !5540)
!5559 = !DILocation(line: 100, column: 19, scope: !5540)
!5560 = !DILocation(line: 100, column: 2, scope: !5540)
!5561 = !DILocation(line: 101, column: 31, scope: !5540)
!5562 = !DILocation(line: 101, column: 2, scope: !5540)
!5563 = !DILocation(line: 102, column: 15, scope: !5540)
!5564 = !DILocation(line: 102, column: 20, scope: !5540)
!5565 = !DILocation(line: 102, column: 25, scope: !5540)
!5566 = !DILocation(line: 102, column: 34, scope: !5540)
!5567 = !DILocation(line: 102, column: 39, scope: !5540)
!5568 = !DILocation(line: 102, column: 13, scope: !5540)
!5569 = !DILocation(line: 103, column: 16, scope: !5540)
!5570 = !DILocation(line: 103, column: 21, scope: !5540)
!5571 = !DILocation(line: 103, column: 2, scope: !5540)
!5572 = !DILocation(line: 105, column: 9, scope: !5540)
!5573 = !DILocation(line: 105, column: 2, scope: !5540)
!5574 = distinct !DISubprogram(name: "lg_g510_kbd_led_set", scope: !3, file: !3, line: 256, type: !4087, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5575 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5574, file: !3, line: 256, type: !4084)
!5576 = !DILocation(line: 256, column: 53, scope: !5574)
!5577 = !DILocalVariable(name: "brightness", arg: 2, scope: !5574, file: !3, line: 257, type: !97)
!5578 = !DILocation(line: 257, column: 31, scope: !5574)
!5579 = !DILocalVariable(name: "g15_led", scope: !5574, file: !3, line: 259, type: !4132)
!5580 = !DILocation(line: 259, column: 21, scope: !5574)
!5581 = !DILocalVariable(name: "__mptr", scope: !5582, file: !3, line: 260, type: !151)
!5582 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 260, column: 3)
!5583 = !DILocation(line: 260, column: 3, scope: !5582)
!5584 = !DILocation(line: 260, column: 3, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 260, column: 3)
!5586 = !DILocalVariable(name: "g15", scope: !5574, file: !3, line: 261, type: !4058)
!5587 = !DILocation(line: 261, column: 22, scope: !5574)
!5588 = !DILocation(line: 261, column: 44, scope: !5574)
!5589 = !DILocation(line: 261, column: 54, scope: !5574)
!5590 = !DILocation(line: 261, column: 59, scope: !5574)
!5591 = !DILocation(line: 261, column: 28, scope: !5574)
!5592 = !DILocalVariable(name: "ret", scope: !5574, file: !3, line: 262, type: !207)
!5593 = !DILocation(line: 262, column: 6, scope: !5574)
!5594 = !DILocation(line: 265, column: 6, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 265, column: 6)
!5596 = !DILocation(line: 265, column: 16, scope: !5595)
!5597 = !DILocation(line: 265, column: 22, scope: !5595)
!5598 = !DILocation(line: 265, column: 6, scope: !5574)
!5599 = !DILocation(line: 266, column: 3, scope: !5595)
!5600 = !DILocation(line: 268, column: 14, scope: !5574)
!5601 = !DILocation(line: 268, column: 19, scope: !5574)
!5602 = !DILocation(line: 268, column: 2, scope: !5574)
!5603 = !DILocation(line: 269, column: 30, scope: !5574)
!5604 = !DILocation(line: 269, column: 35, scope: !5574)
!5605 = !DILocation(line: 269, column: 44, scope: !5574)
!5606 = !DILocation(line: 269, column: 8, scope: !5574)
!5607 = !DILocation(line: 269, column: 6, scope: !5574)
!5608 = !DILocation(line: 270, column: 16, scope: !5574)
!5609 = !DILocation(line: 270, column: 21, scope: !5574)
!5610 = !DILocation(line: 270, column: 2, scope: !5574)
!5611 = !DILocation(line: 272, column: 9, scope: !5574)
!5612 = !DILocation(line: 272, column: 2, scope: !5574)
!5613 = !DILocation(line: 273, column: 1, scope: !5574)
!5614 = distinct !DISubprogram(name: "lg_g510_kbd_led_get", scope: !3, file: !3, line: 275, type: !4091, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5615 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5614, file: !3, line: 275, type: !4084)
!5616 = !DILocation(line: 275, column: 69, scope: !5614)
!5617 = !DILocalVariable(name: "g15_led", scope: !5614, file: !3, line: 277, type: !4132)
!5618 = !DILocation(line: 277, column: 21, scope: !5614)
!5619 = !DILocalVariable(name: "__mptr", scope: !5620, file: !3, line: 278, type: !151)
!5620 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 278, column: 3)
!5621 = !DILocation(line: 278, column: 3, scope: !5620)
!5622 = !DILocation(line: 278, column: 3, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 278, column: 3)
!5624 = !DILocation(line: 280, column: 9, scope: !5614)
!5625 = !DILocation(line: 280, column: 18, scope: !5614)
!5626 = !DILocation(line: 280, column: 2, scope: !5614)
!5627 = distinct !DISubprogram(name: "lg_g510_mkey_led_set", scope: !3, file: !3, line: 395, type: !4087, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5628 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5627, file: !3, line: 395, type: !4084)
!5629 = !DILocation(line: 395, column: 54, scope: !5627)
!5630 = !DILocalVariable(name: "brightness", arg: 2, scope: !5627, file: !3, line: 396, type: !97)
!5631 = !DILocation(line: 396, column: 25, scope: !5627)
!5632 = !DILocalVariable(name: "g15_led", scope: !5627, file: !3, line: 398, type: !4132)
!5633 = !DILocation(line: 398, column: 21, scope: !5627)
!5634 = !DILocalVariable(name: "__mptr", scope: !5635, file: !3, line: 399, type: !151)
!5635 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 399, column: 3)
!5636 = !DILocation(line: 399, column: 3, scope: !5635)
!5637 = !DILocation(line: 399, column: 3, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 399, column: 3)
!5639 = !DILocalVariable(name: "g15", scope: !5627, file: !3, line: 400, type: !4058)
!5640 = !DILocation(line: 400, column: 22, scope: !5627)
!5641 = !DILocation(line: 400, column: 44, scope: !5627)
!5642 = !DILocation(line: 400, column: 54, scope: !5627)
!5643 = !DILocation(line: 400, column: 59, scope: !5627)
!5644 = !DILocation(line: 400, column: 28, scope: !5627)
!5645 = !DILocalVariable(name: "val", scope: !5627, file: !3, line: 401, type: !1324)
!5646 = !DILocation(line: 401, column: 5, scope: !5627)
!5647 = !DILocalVariable(name: "mask", scope: !5627, file: !3, line: 401, type: !1324)
!5648 = !DILocation(line: 401, column: 10, scope: !5627)
!5649 = !DILocalVariable(name: "i", scope: !5627, file: !3, line: 402, type: !207)
!5650 = !DILocation(line: 402, column: 6, scope: !5627)
!5651 = !DILocalVariable(name: "ret", scope: !5627, file: !3, line: 402, type: !207)
!5652 = !DILocation(line: 402, column: 9, scope: !5627)
!5653 = !DILocation(line: 405, column: 6, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 405, column: 6)
!5655 = !DILocation(line: 405, column: 16, scope: !5654)
!5656 = !DILocation(line: 405, column: 22, scope: !5654)
!5657 = !DILocation(line: 405, column: 6, scope: !5627)
!5658 = !DILocation(line: 406, column: 3, scope: !5654)
!5659 = !DILocation(line: 408, column: 14, scope: !5627)
!5660 = !DILocation(line: 408, column: 19, scope: !5627)
!5661 = !DILocation(line: 408, column: 2, scope: !5627)
!5662 = !DILocation(line: 410, column: 9, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 410, column: 2)
!5664 = !DILocation(line: 410, column: 7, scope: !5663)
!5665 = !DILocation(line: 410, column: 33, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 410, column: 2)
!5667 = !DILocation(line: 410, column: 35, scope: !5666)
!5668 = !DILocation(line: 410, column: 2, scope: !5663)
!5669 = !DILocation(line: 411, column: 7, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 411, column: 7)
!5671 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 410, column: 58)
!5672 = !DILocation(line: 411, column: 12, scope: !5670)
!5673 = !DILocation(line: 411, column: 21, scope: !5670)
!5674 = !DILocation(line: 411, column: 9, scope: !5670)
!5675 = !DILocation(line: 411, column: 7, scope: !5671)
!5676 = !DILocation(line: 412, column: 10, scope: !5670)
!5677 = !DILocation(line: 412, column: 8, scope: !5670)
!5678 = !DILocation(line: 412, column: 4, scope: !5670)
!5679 = !DILocation(line: 414, column: 10, scope: !5670)
!5680 = !DILocation(line: 414, column: 15, scope: !5670)
!5681 = !DILocation(line: 414, column: 20, scope: !5670)
!5682 = !DILocation(line: 414, column: 23, scope: !5670)
!5683 = !DILocation(line: 414, column: 8, scope: !5670)
!5684 = !DILocation(line: 416, column: 7, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 416, column: 7)
!5686 = !DILocation(line: 416, column: 7, scope: !5671)
!5687 = !DILocation(line: 417, column: 21, scope: !5685)
!5688 = !DILocation(line: 417, column: 23, scope: !5685)
!5689 = !DILocation(line: 417, column: 17, scope: !5685)
!5690 = !DILocation(line: 417, column: 9, scope: !5685)
!5691 = !DILocation(line: 417, column: 4, scope: !5685)
!5692 = !DILocation(line: 418, column: 2, scope: !5671)
!5693 = !DILocation(line: 410, column: 54, scope: !5666)
!5694 = !DILocation(line: 410, column: 2, scope: !5666)
!5695 = distinct !{!5695, !5668, !5696}
!5696 = !DILocation(line: 418, column: 2, scope: !5663)
!5697 = !DILocation(line: 420, column: 2, scope: !5627)
!5698 = !DILocation(line: 420, column: 7, scope: !5627)
!5699 = !DILocation(line: 420, column: 23, scope: !5627)
!5700 = !DILocation(line: 421, column: 25, scope: !5627)
!5701 = !DILocation(line: 421, column: 2, scope: !5627)
!5702 = !DILocation(line: 421, column: 7, scope: !5627)
!5703 = !DILocation(line: 421, column: 23, scope: !5627)
!5704 = !DILocation(line: 423, column: 27, scope: !5627)
!5705 = !DILocation(line: 423, column: 32, scope: !5627)
!5706 = !DILocation(line: 424, column: 6, scope: !5627)
!5707 = !DILocation(line: 424, column: 11, scope: !5627)
!5708 = !DILocation(line: 423, column: 8, scope: !5627)
!5709 = !DILocation(line: 423, column: 6, scope: !5627)
!5710 = !DILocation(line: 426, column: 6, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 426, column: 6)
!5712 = !DILocation(line: 426, column: 10, scope: !5711)
!5713 = !DILocation(line: 426, column: 6, scope: !5627)
!5714 = !DILocation(line: 428, column: 25, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 426, column: 16)
!5716 = !DILocation(line: 428, column: 3, scope: !5715)
!5717 = !DILocation(line: 428, column: 12, scope: !5715)
!5718 = !DILocation(line: 428, column: 23, scope: !5715)
!5719 = !DILocation(line: 429, column: 7, scope: !5715)
!5720 = !DILocation(line: 430, column: 2, scope: !5715)
!5721 = !DILocation(line: 431, column: 3, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5711, file: !3, line: 430, column: 9)
!5723 = !DILocation(line: 432, column: 10, scope: !5722)
!5724 = !DILocation(line: 432, column: 14, scope: !5722)
!5725 = !DILocation(line: 432, column: 9, scope: !5722)
!5726 = !DILocation(line: 432, column: 21, scope: !5722)
!5727 = !DILocation(line: 432, column: 7, scope: !5722)
!5728 = !DILocation(line: 435, column: 16, scope: !5627)
!5729 = !DILocation(line: 435, column: 21, scope: !5627)
!5730 = !DILocation(line: 435, column: 2, scope: !5627)
!5731 = !DILocation(line: 437, column: 9, scope: !5627)
!5732 = !DILocation(line: 437, column: 2, scope: !5627)
!5733 = !DILocation(line: 438, column: 1, scope: !5627)
!5734 = distinct !DISubprogram(name: "lg_g510_mkey_led_get", scope: !3, file: !3, line: 380, type: !4091, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5735 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5734, file: !3, line: 380, type: !4084)
!5736 = !DILocation(line: 380, column: 70, scope: !5734)
!5737 = !DILocalVariable(name: "g15_led", scope: !5734, file: !3, line: 382, type: !4132)
!5738 = !DILocation(line: 382, column: 21, scope: !5734)
!5739 = !DILocalVariable(name: "__mptr", scope: !5740, file: !3, line: 383, type: !151)
!5740 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 383, column: 3)
!5741 = !DILocation(line: 383, column: 3, scope: !5740)
!5742 = !DILocation(line: 383, column: 3, scope: !5743)
!5743 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 383, column: 3)
!5744 = !DILocalVariable(name: "g15", scope: !5734, file: !3, line: 384, type: !4058)
!5745 = !DILocation(line: 384, column: 22, scope: !5734)
!5746 = !DILocation(line: 384, column: 44, scope: !5734)
!5747 = !DILocation(line: 384, column: 54, scope: !5734)
!5748 = !DILocation(line: 384, column: 59, scope: !5734)
!5749 = !DILocation(line: 384, column: 28, scope: !5734)
!5750 = !DILocalVariable(name: "brightness", scope: !5734, file: !3, line: 385, type: !97)
!5751 = !DILocation(line: 385, column: 22, scope: !5734)
!5752 = !DILocation(line: 387, column: 14, scope: !5734)
!5753 = !DILocation(line: 387, column: 19, scope: !5734)
!5754 = !DILocation(line: 387, column: 2, scope: !5734)
!5755 = !DILocation(line: 388, column: 37, scope: !5734)
!5756 = !DILocation(line: 388, column: 2, scope: !5734)
!5757 = !DILocation(line: 389, column: 15, scope: !5734)
!5758 = !DILocation(line: 389, column: 20, scope: !5734)
!5759 = !DILocation(line: 389, column: 25, scope: !5734)
!5760 = !DILocation(line: 389, column: 34, scope: !5734)
!5761 = !DILocation(line: 389, column: 39, scope: !5734)
!5762 = !DILocation(line: 389, column: 13, scope: !5734)
!5763 = !DILocation(line: 390, column: 16, scope: !5734)
!5764 = !DILocation(line: 390, column: 21, scope: !5734)
!5765 = !DILocation(line: 390, column: 2, scope: !5734)
!5766 = !DILocation(line: 392, column: 9, scope: !5734)
!5767 = !DILocation(line: 392, column: 2, scope: !5734)
!5768 = distinct !DISubprogram(name: "devm_led_classdev_register", scope: !98, file: !98, line: 197, type: !5769, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!207, !3501, !4084}
!5771 = !DILocalVariable(name: "parent", arg: 1, scope: !5768, file: !98, line: 197, type: !3501)
!5772 = !DILocation(line: 197, column: 61, scope: !5768)
!5773 = !DILocalVariable(name: "led_cdev", arg: 2, scope: !5768, file: !98, line: 198, type: !4084)
!5774 = !DILocation(line: 198, column: 32, scope: !5768)
!5775 = !DILocation(line: 200, column: 40, scope: !5768)
!5776 = !DILocation(line: 200, column: 48, scope: !5768)
!5777 = !DILocation(line: 200, column: 9, scope: !5768)
!5778 = !DILocation(line: 200, column: 2, scope: !5768)
!5779 = distinct !DISubprogram(name: "color_show", scope: !3, file: !3, line: 313, type: !4173, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5780 = !DILocalVariable(name: "dev", arg: 1, scope: !5779, file: !3, line: 313, type: !3501)
!5781 = !DILocation(line: 313, column: 42, scope: !5779)
!5782 = !DILocalVariable(name: "attr", arg: 2, scope: !5779, file: !3, line: 313, type: !4175)
!5783 = !DILocation(line: 313, column: 72, scope: !5779)
!5784 = !DILocalVariable(name: "buf", arg: 3, scope: !5779, file: !3, line: 314, type: !547)
!5785 = !DILocation(line: 314, column: 12, scope: !5779)
!5786 = !DILocalVariable(name: "led_cdev", scope: !5779, file: !3, line: 316, type: !4084)
!5787 = !DILocation(line: 316, column: 23, scope: !5779)
!5788 = !DILocation(line: 316, column: 50, scope: !5779)
!5789 = !DILocation(line: 316, column: 34, scope: !5779)
!5790 = !DILocalVariable(name: "g15_led", scope: !5779, file: !3, line: 317, type: !4132)
!5791 = !DILocation(line: 317, column: 21, scope: !5779)
!5792 = !DILocalVariable(name: "__mptr", scope: !5793, file: !3, line: 318, type: !151)
!5793 = distinct !DILexicalBlock(scope: !5779, file: !3, line: 318, column: 3)
!5794 = !DILocation(line: 318, column: 3, scope: !5793)
!5795 = !DILocation(line: 318, column: 3, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 318, column: 3)
!5797 = !DILocalVariable(name: "g15", scope: !5779, file: !3, line: 319, type: !4058)
!5798 = !DILocation(line: 319, column: 22, scope: !5779)
!5799 = !DILocation(line: 319, column: 44, scope: !5779)
!5800 = !DILocation(line: 319, column: 54, scope: !5779)
!5801 = !DILocation(line: 319, column: 59, scope: !5779)
!5802 = !DILocation(line: 319, column: 28, scope: !5779)
!5803 = !DILocalVariable(name: "ret", scope: !5779, file: !3, line: 320, type: !638)
!5804 = !DILocation(line: 320, column: 10, scope: !5779)
!5805 = !DILocation(line: 322, column: 14, scope: !5779)
!5806 = !DILocation(line: 322, column: 19, scope: !5779)
!5807 = !DILocation(line: 322, column: 2, scope: !5779)
!5808 = !DILocation(line: 323, column: 16, scope: !5779)
!5809 = !DILocation(line: 324, column: 9, scope: !5779)
!5810 = !DILocation(line: 324, column: 18, scope: !5779)
!5811 = !DILocation(line: 324, column: 23, scope: !5779)
!5812 = !DILocation(line: 324, column: 32, scope: !5779)
!5813 = !DILocation(line: 324, column: 39, scope: !5779)
!5814 = !DILocation(line: 324, column: 48, scope: !5779)
!5815 = !DILocation(line: 323, column: 8, scope: !5779)
!5816 = !DILocation(line: 323, column: 6, scope: !5779)
!5817 = !DILocation(line: 325, column: 16, scope: !5779)
!5818 = !DILocation(line: 325, column: 21, scope: !5779)
!5819 = !DILocation(line: 325, column: 2, scope: !5779)
!5820 = !DILocation(line: 327, column: 9, scope: !5779)
!5821 = !DILocation(line: 327, column: 2, scope: !5779)
!5822 = distinct !DISubprogram(name: "color_store", scope: !3, file: !3, line: 283, type: !4178, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5823 = !DILocalVariable(name: "dev", arg: 1, scope: !5822, file: !3, line: 283, type: !3501)
!5824 = !DILocation(line: 283, column: 43, scope: !5822)
!5825 = !DILocalVariable(name: "attr", arg: 2, scope: !5822, file: !3, line: 283, type: !4175)
!5826 = !DILocation(line: 283, column: 73, scope: !5822)
!5827 = !DILocalVariable(name: "buf", arg: 3, scope: !5822, file: !3, line: 284, type: !228)
!5828 = !DILocation(line: 284, column: 19, scope: !5822)
!5829 = !DILocalVariable(name: "count", arg: 4, scope: !5822, file: !3, line: 284, type: !641)
!5830 = !DILocation(line: 284, column: 31, scope: !5822)
!5831 = !DILocalVariable(name: "led_cdev", scope: !5822, file: !3, line: 286, type: !4084)
!5832 = !DILocation(line: 286, column: 23, scope: !5822)
!5833 = !DILocation(line: 286, column: 50, scope: !5822)
!5834 = !DILocation(line: 286, column: 34, scope: !5822)
!5835 = !DILocalVariable(name: "g15_led", scope: !5822, file: !3, line: 287, type: !4132)
!5836 = !DILocation(line: 287, column: 21, scope: !5822)
!5837 = !DILocalVariable(name: "__mptr", scope: !5838, file: !3, line: 288, type: !151)
!5838 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 288, column: 3)
!5839 = !DILocation(line: 288, column: 3, scope: !5838)
!5840 = !DILocation(line: 288, column: 3, scope: !5841)
!5841 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 288, column: 3)
!5842 = !DILocalVariable(name: "g15", scope: !5822, file: !3, line: 289, type: !4058)
!5843 = !DILocation(line: 289, column: 22, scope: !5822)
!5844 = !DILocation(line: 289, column: 44, scope: !5822)
!5845 = !DILocation(line: 289, column: 54, scope: !5822)
!5846 = !DILocation(line: 289, column: 59, scope: !5822)
!5847 = !DILocation(line: 289, column: 28, scope: !5822)
!5848 = !DILocalVariable(name: "value", scope: !5822, file: !3, line: 290, type: !243)
!5849 = !DILocation(line: 290, column: 16, scope: !5822)
!5850 = !DILocalVariable(name: "ret", scope: !5822, file: !3, line: 291, type: !207)
!5851 = !DILocation(line: 291, column: 6, scope: !5822)
!5852 = !DILocation(line: 293, column: 6, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 293, column: 6)
!5854 = !DILocation(line: 293, column: 12, scope: !5853)
!5855 = !DILocation(line: 293, column: 16, scope: !5853)
!5856 = !DILocation(line: 293, column: 20, scope: !5853)
!5857 = !DILocation(line: 293, column: 26, scope: !5853)
!5858 = !DILocation(line: 293, column: 31, scope: !5853)
!5859 = !DILocation(line: 293, column: 34, scope: !5853)
!5860 = !DILocation(line: 293, column: 41, scope: !5853)
!5861 = !DILocation(line: 293, column: 50, scope: !5853)
!5862 = !DILocation(line: 293, column: 53, scope: !5853)
!5863 = !DILocation(line: 293, column: 59, scope: !5853)
!5864 = !DILocation(line: 293, column: 6, scope: !5822)
!5865 = !DILocation(line: 294, column: 3, scope: !5853)
!5866 = !DILocation(line: 296, column: 6, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 296, column: 6)
!5868 = !DILocation(line: 296, column: 13, scope: !5867)
!5869 = !DILocation(line: 296, column: 6, scope: !5822)
!5870 = !DILocation(line: 297, column: 3, scope: !5867)
!5871 = !DILocation(line: 299, column: 17, scope: !5822)
!5872 = !DILocation(line: 299, column: 21, scope: !5822)
!5873 = !DILocation(line: 299, column: 8, scope: !5822)
!5874 = !DILocation(line: 299, column: 6, scope: !5822)
!5875 = !DILocation(line: 300, column: 6, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 300, column: 6)
!5877 = !DILocation(line: 300, column: 6, scope: !5822)
!5878 = !DILocation(line: 301, column: 10, scope: !5876)
!5879 = !DILocation(line: 301, column: 3, scope: !5876)
!5880 = !DILocation(line: 303, column: 14, scope: !5822)
!5881 = !DILocation(line: 303, column: 19, scope: !5822)
!5882 = !DILocation(line: 303, column: 2, scope: !5822)
!5883 = !DILocation(line: 304, column: 20, scope: !5822)
!5884 = !DILocation(line: 304, column: 26, scope: !5822)
!5885 = !DILocation(line: 304, column: 38, scope: !5822)
!5886 = !DILocation(line: 304, column: 19, scope: !5822)
!5887 = !DILocation(line: 304, column: 2, scope: !5822)
!5888 = !DILocation(line: 304, column: 11, scope: !5822)
!5889 = !DILocation(line: 304, column: 17, scope: !5822)
!5890 = !DILocation(line: 305, column: 20, scope: !5822)
!5891 = !DILocation(line: 305, column: 26, scope: !5822)
!5892 = !DILocation(line: 305, column: 38, scope: !5822)
!5893 = !DILocation(line: 305, column: 19, scope: !5822)
!5894 = !DILocation(line: 305, column: 2, scope: !5822)
!5895 = !DILocation(line: 305, column: 11, scope: !5822)
!5896 = !DILocation(line: 305, column: 17, scope: !5822)
!5897 = !DILocation(line: 306, column: 20, scope: !5822)
!5898 = !DILocation(line: 306, column: 26, scope: !5822)
!5899 = !DILocation(line: 306, column: 19, scope: !5822)
!5900 = !DILocation(line: 306, column: 2, scope: !5822)
!5901 = !DILocation(line: 306, column: 11, scope: !5822)
!5902 = !DILocation(line: 306, column: 17, scope: !5822)
!5903 = !DILocation(line: 307, column: 30, scope: !5822)
!5904 = !DILocation(line: 307, column: 35, scope: !5822)
!5905 = !DILocation(line: 307, column: 44, scope: !5822)
!5906 = !DILocation(line: 307, column: 53, scope: !5822)
!5907 = !DILocation(line: 307, column: 8, scope: !5822)
!5908 = !DILocation(line: 307, column: 6, scope: !5822)
!5909 = !DILocation(line: 308, column: 16, scope: !5822)
!5910 = !DILocation(line: 308, column: 21, scope: !5822)
!5911 = !DILocation(line: 308, column: 2, scope: !5822)
!5912 = !DILocation(line: 310, column: 10, scope: !5822)
!5913 = !DILocation(line: 310, column: 14, scope: !5822)
!5914 = !DILocation(line: 310, column: 9, scope: !5822)
!5915 = !DILocation(line: 310, column: 21, scope: !5822)
!5916 = !DILocation(line: 310, column: 27, scope: !5822)
!5917 = !DILocation(line: 310, column: 2, scope: !5822)
!5918 = !DILocation(line: 311, column: 1, scope: !5822)
!5919 = distinct !DISubprogram(name: "kstrtoul", scope: !5920, file: !5920, line: 351, type: !5921, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5920 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5921 = !DISubroutineType(types: !5922)
!5922 = !{!207, !228, !7, !3974}
!5923 = !DILocalVariable(name: "s", arg: 1, scope: !5919, file: !5920, line: 351, type: !228)
!5924 = !DILocation(line: 351, column: 53, scope: !5919)
!5925 = !DILocalVariable(name: "base", arg: 2, scope: !5919, file: !5920, line: 351, type: !7)
!5926 = !DILocation(line: 351, column: 69, scope: !5919)
!5927 = !DILocalVariable(name: "res", arg: 3, scope: !5919, file: !5920, line: 351, type: !3974)
!5928 = !DILocation(line: 351, column: 90, scope: !5919)
!5929 = !DILocation(line: 359, column: 20, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5919, file: !5920, line: 357, column: 6)
!5931 = !DILocation(line: 359, column: 23, scope: !5930)
!5932 = !DILocation(line: 359, column: 51, scope: !5930)
!5933 = !DILocation(line: 359, column: 10, scope: !5930)
!5934 = !DILocation(line: 359, column: 3, scope: !5930)
!5935 = distinct !DISubprogram(name: "hid_get_drvdata", scope: !6, file: !6, line: 628, type: !5936, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!151, !3866}
!5938 = !DILocalVariable(name: "hdev", arg: 1, scope: !5935, file: !6, line: 628, type: !3866)
!5939 = !DILocation(line: 628, column: 56, scope: !5935)
!5940 = !DILocation(line: 630, column: 26, scope: !5935)
!5941 = !DILocation(line: 630, column: 32, scope: !5935)
!5942 = !DILocation(line: 630, column: 9, scope: !5935)
!5943 = !DILocation(line: 630, column: 2, scope: !5935)
!5944 = distinct !DISubprogram(name: "lg_g15_event", scope: !3, file: !3, line: 467, type: !5945, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!5945 = !DISubroutineType(types: !5946)
!5946 = !{!207, !4058, !3948, !207}
!5947 = !DILocalVariable(name: "g15", arg: 1, scope: !5944, file: !3, line: 467, type: !4058)
!5948 = !DILocation(line: 467, column: 45, scope: !5944)
!5949 = !DILocalVariable(name: "data", arg: 2, scope: !5944, file: !3, line: 467, type: !3948)
!5950 = !DILocation(line: 467, column: 54, scope: !5944)
!5951 = !DILocalVariable(name: "size", arg: 3, scope: !5944, file: !3, line: 467, type: !207)
!5952 = !DILocation(line: 467, column: 64, scope: !5944)
!5953 = !DILocalVariable(name: "i", scope: !5944, file: !3, line: 469, type: !207)
!5954 = !DILocation(line: 469, column: 6, scope: !5944)
!5955 = !DILocalVariable(name: "val", scope: !5944, file: !3, line: 469, type: !207)
!5956 = !DILocation(line: 469, column: 9, scope: !5944)
!5957 = !DILocation(line: 472, column: 9, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 472, column: 2)
!5959 = !DILocation(line: 472, column: 7, scope: !5958)
!5960 = !DILocation(line: 472, column: 14, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 472, column: 2)
!5962 = !DILocation(line: 472, column: 16, scope: !5961)
!5963 = !DILocation(line: 472, column: 2, scope: !5958)
!5964 = !DILocation(line: 473, column: 9, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5961, file: !3, line: 472, column: 26)
!5966 = !DILocation(line: 473, column: 14, scope: !5965)
!5967 = !DILocation(line: 473, column: 16, scope: !5965)
!5968 = !DILocation(line: 473, column: 29, scope: !5965)
!5969 = !DILocation(line: 473, column: 26, scope: !5965)
!5970 = !DILocation(line: 473, column: 21, scope: !5965)
!5971 = !DILocation(line: 473, column: 7, scope: !5965)
!5972 = !DILocation(line: 474, column: 20, scope: !5965)
!5973 = !DILocation(line: 474, column: 25, scope: !5965)
!5974 = !DILocation(line: 474, column: 45, scope: !5965)
!5975 = !DILocation(line: 474, column: 43, scope: !5965)
!5976 = !DILocation(line: 474, column: 48, scope: !5965)
!5977 = !DILocation(line: 474, column: 3, scope: !5965)
!5978 = !DILocation(line: 475, column: 2, scope: !5965)
!5979 = !DILocation(line: 472, column: 22, scope: !5961)
!5980 = !DILocation(line: 472, column: 2, scope: !5961)
!5981 = distinct !{!5981, !5963, !5982}
!5982 = !DILocation(line: 475, column: 2, scope: !5958)
!5983 = !DILocation(line: 477, column: 9, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 477, column: 2)
!5985 = !DILocation(line: 477, column: 7, scope: !5984)
!5986 = !DILocation(line: 477, column: 14, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 477, column: 2)
!5988 = !DILocation(line: 477, column: 16, scope: !5987)
!5989 = !DILocation(line: 477, column: 2, scope: !5984)
!5990 = !DILocation(line: 478, column: 9, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 477, column: 26)
!5992 = !DILocation(line: 478, column: 14, scope: !5991)
!5993 = !DILocation(line: 478, column: 16, scope: !5991)
!5994 = !DILocation(line: 478, column: 29, scope: !5991)
!5995 = !DILocation(line: 478, column: 26, scope: !5991)
!5996 = !DILocation(line: 478, column: 21, scope: !5991)
!5997 = !DILocation(line: 478, column: 7, scope: !5991)
!5998 = !DILocation(line: 479, column: 20, scope: !5991)
!5999 = !DILocation(line: 479, column: 25, scope: !5991)
!6000 = !DILocation(line: 479, column: 45, scope: !5991)
!6001 = !DILocation(line: 479, column: 43, scope: !5991)
!6002 = !DILocation(line: 479, column: 48, scope: !5991)
!6003 = !DILocation(line: 479, column: 3, scope: !5991)
!6004 = !DILocation(line: 480, column: 2, scope: !5991)
!6005 = !DILocation(line: 477, column: 22, scope: !5987)
!6006 = !DILocation(line: 477, column: 2, scope: !5987)
!6007 = distinct !{!6007, !5989, !6008}
!6008 = !DILocation(line: 480, column: 2, scope: !5984)
!6009 = !DILocation(line: 482, column: 9, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 482, column: 2)
!6011 = !DILocation(line: 482, column: 7, scope: !6010)
!6012 = !DILocation(line: 482, column: 14, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 482, column: 2)
!6014 = !DILocation(line: 482, column: 16, scope: !6013)
!6015 = !DILocation(line: 482, column: 2, scope: !6010)
!6016 = !DILocation(line: 483, column: 9, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 482, column: 26)
!6018 = !DILocation(line: 483, column: 14, scope: !6017)
!6019 = !DILocation(line: 483, column: 16, scope: !6017)
!6020 = !DILocation(line: 483, column: 29, scope: !6017)
!6021 = !DILocation(line: 483, column: 26, scope: !6017)
!6022 = !DILocation(line: 483, column: 21, scope: !6017)
!6023 = !DILocation(line: 483, column: 7, scope: !6017)
!6024 = !DILocation(line: 484, column: 20, scope: !6017)
!6025 = !DILocation(line: 484, column: 25, scope: !6017)
!6026 = !DILocation(line: 484, column: 46, scope: !6017)
!6027 = !DILocation(line: 484, column: 44, scope: !6017)
!6028 = !DILocation(line: 484, column: 49, scope: !6017)
!6029 = !DILocation(line: 484, column: 3, scope: !6017)
!6030 = !DILocation(line: 485, column: 2, scope: !6017)
!6031 = !DILocation(line: 482, column: 22, scope: !6013)
!6032 = !DILocation(line: 482, column: 2, scope: !6013)
!6033 = distinct !{!6033, !6015, !6034}
!6034 = !DILocation(line: 485, column: 2, scope: !6010)
!6035 = !DILocation(line: 487, column: 19, scope: !5944)
!6036 = !DILocation(line: 487, column: 24, scope: !5944)
!6037 = !DILocation(line: 487, column: 44, scope: !5944)
!6038 = !DILocation(line: 487, column: 52, scope: !5944)
!6039 = !DILocation(line: 487, column: 2, scope: !5944)
!6040 = !DILocation(line: 490, column: 9, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 490, column: 2)
!6042 = !DILocation(line: 490, column: 7, scope: !6041)
!6043 = !DILocation(line: 490, column: 14, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 490, column: 2)
!6045 = !DILocation(line: 490, column: 16, scope: !6044)
!6046 = !DILocation(line: 490, column: 2, scope: !6041)
!6047 = !DILocation(line: 491, column: 9, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 490, column: 26)
!6049 = !DILocation(line: 491, column: 14, scope: !6048)
!6050 = !DILocation(line: 491, column: 16, scope: !6048)
!6051 = !DILocation(line: 491, column: 29, scope: !6048)
!6052 = !DILocation(line: 491, column: 26, scope: !6048)
!6053 = !DILocation(line: 491, column: 21, scope: !6048)
!6054 = !DILocation(line: 491, column: 7, scope: !6048)
!6055 = !DILocation(line: 492, column: 20, scope: !6048)
!6056 = !DILocation(line: 492, column: 25, scope: !6048)
!6057 = !DILocation(line: 492, column: 52, scope: !6048)
!6058 = !DILocation(line: 492, column: 50, scope: !6048)
!6059 = !DILocation(line: 492, column: 55, scope: !6048)
!6060 = !DILocation(line: 492, column: 3, scope: !6048)
!6061 = !DILocation(line: 493, column: 2, scope: !6048)
!6062 = !DILocation(line: 490, column: 22, scope: !6044)
!6063 = !DILocation(line: 490, column: 2, scope: !6044)
!6064 = distinct !{!6064, !6046, !6065}
!6065 = !DILocation(line: 493, column: 2, scope: !6041)
!6066 = !DILocation(line: 495, column: 19, scope: !5944)
!6067 = !DILocation(line: 495, column: 24, scope: !5944)
!6068 = !DILocation(line: 495, column: 55, scope: !5944)
!6069 = !DILocation(line: 495, column: 63, scope: !5944)
!6070 = !DILocation(line: 495, column: 2, scope: !5944)
!6071 = !DILocation(line: 498, column: 19, scope: !5944)
!6072 = !DILocation(line: 498, column: 24, scope: !5944)
!6073 = !DILocation(line: 498, column: 50, scope: !5944)
!6074 = !DILocation(line: 498, column: 58, scope: !5944)
!6075 = !DILocation(line: 498, column: 2, scope: !5944)
!6076 = !DILocation(line: 500, column: 9, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 500, column: 2)
!6078 = !DILocation(line: 500, column: 7, scope: !6077)
!6079 = !DILocation(line: 500, column: 14, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 500, column: 2)
!6081 = !DILocation(line: 500, column: 16, scope: !6080)
!6082 = !DILocation(line: 500, column: 2, scope: !6077)
!6083 = !DILocation(line: 501, column: 9, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 500, column: 26)
!6085 = !DILocation(line: 501, column: 14, scope: !6084)
!6086 = !DILocation(line: 501, column: 16, scope: !6084)
!6087 = !DILocation(line: 501, column: 21, scope: !6084)
!6088 = !DILocation(line: 501, column: 7, scope: !6084)
!6089 = !DILocation(line: 502, column: 20, scope: !6084)
!6090 = !DILocation(line: 502, column: 25, scope: !6084)
!6091 = !DILocation(line: 502, column: 52, scope: !6084)
!6092 = !DILocation(line: 502, column: 50, scope: !6084)
!6093 = !DILocation(line: 502, column: 55, scope: !6084)
!6094 = !DILocation(line: 502, column: 3, scope: !6084)
!6095 = !DILocation(line: 503, column: 2, scope: !6084)
!6096 = !DILocation(line: 500, column: 22, scope: !6080)
!6097 = !DILocation(line: 500, column: 2, scope: !6080)
!6098 = distinct !{!6098, !6082, !6099}
!6099 = !DILocation(line: 503, column: 2, scope: !6077)
!6100 = !DILocation(line: 506, column: 6, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 506, column: 6)
!6102 = !DILocation(line: 506, column: 14, scope: !6101)
!6103 = !DILocation(line: 506, column: 6, scope: !5944)
!6104 = !DILocation(line: 507, column: 18, scope: !6101)
!6105 = !DILocation(line: 507, column: 23, scope: !6101)
!6106 = !DILocation(line: 507, column: 3, scope: !6101)
!6107 = !DILocation(line: 509, column: 13, scope: !5944)
!6108 = !DILocation(line: 509, column: 18, scope: !5944)
!6109 = !DILocation(line: 509, column: 2, scope: !5944)
!6110 = !DILocation(line: 510, column: 2, scope: !5944)
!6111 = distinct !DISubprogram(name: "lg_g15_v2_event", scope: !3, file: !3, line: 513, type: !5945, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!6112 = !DILocalVariable(name: "g15", arg: 1, scope: !6111, file: !3, line: 513, type: !4058)
!6113 = !DILocation(line: 513, column: 48, scope: !6111)
!6114 = !DILocalVariable(name: "data", arg: 2, scope: !6111, file: !3, line: 513, type: !3948)
!6115 = !DILocation(line: 513, column: 57, scope: !6111)
!6116 = !DILocalVariable(name: "size", arg: 3, scope: !6111, file: !3, line: 513, type: !207)
!6117 = !DILocation(line: 513, column: 67, scope: !6111)
!6118 = !DILocalVariable(name: "i", scope: !6111, file: !3, line: 515, type: !207)
!6119 = !DILocation(line: 515, column: 6, scope: !6111)
!6120 = !DILocalVariable(name: "val", scope: !6111, file: !3, line: 515, type: !207)
!6121 = !DILocation(line: 515, column: 9, scope: !6111)
!6122 = !DILocation(line: 518, column: 9, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 518, column: 2)
!6124 = !DILocation(line: 518, column: 7, scope: !6123)
!6125 = !DILocation(line: 518, column: 14, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6123, file: !3, line: 518, column: 2)
!6127 = !DILocation(line: 518, column: 16, scope: !6126)
!6128 = !DILocation(line: 518, column: 2, scope: !6123)
!6129 = !DILocation(line: 519, column: 9, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 518, column: 26)
!6131 = !DILocation(line: 519, column: 25, scope: !6130)
!6132 = !DILocation(line: 519, column: 22, scope: !6130)
!6133 = !DILocation(line: 519, column: 17, scope: !6130)
!6134 = !DILocation(line: 519, column: 7, scope: !6130)
!6135 = !DILocation(line: 520, column: 20, scope: !6130)
!6136 = !DILocation(line: 520, column: 25, scope: !6130)
!6137 = !DILocation(line: 520, column: 45, scope: !6130)
!6138 = !DILocation(line: 520, column: 43, scope: !6130)
!6139 = !DILocation(line: 520, column: 48, scope: !6130)
!6140 = !DILocation(line: 520, column: 3, scope: !6130)
!6141 = !DILocation(line: 521, column: 2, scope: !6130)
!6142 = !DILocation(line: 518, column: 22, scope: !6126)
!6143 = !DILocation(line: 518, column: 2, scope: !6126)
!6144 = distinct !{!6144, !6128, !6145}
!6145 = !DILocation(line: 521, column: 2, scope: !6123)
!6146 = !DILocation(line: 524, column: 19, scope: !6111)
!6147 = !DILocation(line: 524, column: 24, scope: !6111)
!6148 = !DILocation(line: 524, column: 50, scope: !6111)
!6149 = !DILocation(line: 524, column: 58, scope: !6111)
!6150 = !DILocation(line: 524, column: 2, scope: !6111)
!6151 = !DILocation(line: 525, column: 19, scope: !6111)
!6152 = !DILocation(line: 525, column: 24, scope: !6111)
!6153 = !DILocation(line: 525, column: 50, scope: !6111)
!6154 = !DILocation(line: 525, column: 58, scope: !6111)
!6155 = !DILocation(line: 525, column: 2, scope: !6111)
!6156 = !DILocation(line: 526, column: 19, scope: !6111)
!6157 = !DILocation(line: 526, column: 24, scope: !6111)
!6158 = !DILocation(line: 526, column: 50, scope: !6111)
!6159 = !DILocation(line: 526, column: 58, scope: !6111)
!6160 = !DILocation(line: 526, column: 2, scope: !6111)
!6161 = !DILocation(line: 527, column: 19, scope: !6111)
!6162 = !DILocation(line: 527, column: 24, scope: !6111)
!6163 = !DILocation(line: 527, column: 55, scope: !6111)
!6164 = !DILocation(line: 527, column: 63, scope: !6111)
!6165 = !DILocation(line: 527, column: 2, scope: !6111)
!6166 = !DILocation(line: 530, column: 19, scope: !6111)
!6167 = !DILocation(line: 530, column: 24, scope: !6111)
!6168 = !DILocation(line: 530, column: 50, scope: !6111)
!6169 = !DILocation(line: 530, column: 58, scope: !6111)
!6170 = !DILocation(line: 530, column: 2, scope: !6111)
!6171 = !DILocation(line: 532, column: 9, scope: !6172)
!6172 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 532, column: 2)
!6173 = !DILocation(line: 532, column: 7, scope: !6172)
!6174 = !DILocation(line: 532, column: 14, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6172, file: !3, line: 532, column: 2)
!6176 = !DILocation(line: 532, column: 16, scope: !6175)
!6177 = !DILocation(line: 532, column: 2, scope: !6172)
!6178 = !DILocation(line: 533, column: 9, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6175, file: !3, line: 532, column: 26)
!6180 = !DILocation(line: 533, column: 25, scope: !6179)
!6181 = !DILocation(line: 533, column: 22, scope: !6179)
!6182 = !DILocation(line: 533, column: 17, scope: !6179)
!6183 = !DILocation(line: 533, column: 7, scope: !6179)
!6184 = !DILocation(line: 534, column: 20, scope: !6179)
!6185 = !DILocation(line: 534, column: 25, scope: !6179)
!6186 = !DILocation(line: 534, column: 52, scope: !6179)
!6187 = !DILocation(line: 534, column: 50, scope: !6179)
!6188 = !DILocation(line: 534, column: 55, scope: !6179)
!6189 = !DILocation(line: 534, column: 3, scope: !6179)
!6190 = !DILocation(line: 535, column: 2, scope: !6179)
!6191 = !DILocation(line: 532, column: 22, scope: !6175)
!6192 = !DILocation(line: 532, column: 2, scope: !6175)
!6193 = distinct !{!6193, !6177, !6194}
!6194 = !DILocation(line: 535, column: 2, scope: !6172)
!6195 = !DILocation(line: 538, column: 6, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6111, file: !3, line: 538, column: 6)
!6197 = !DILocation(line: 538, column: 14, scope: !6196)
!6198 = !DILocation(line: 538, column: 6, scope: !6111)
!6199 = !DILocation(line: 539, column: 18, scope: !6196)
!6200 = !DILocation(line: 539, column: 23, scope: !6196)
!6201 = !DILocation(line: 539, column: 3, scope: !6196)
!6202 = !DILocation(line: 541, column: 13, scope: !6111)
!6203 = !DILocation(line: 541, column: 18, scope: !6111)
!6204 = !DILocation(line: 541, column: 2, scope: !6111)
!6205 = !DILocation(line: 542, column: 2, scope: !6111)
!6206 = distinct !DISubprogram(name: "lg_g510_event", scope: !3, file: !3, line: 545, type: !5945, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!6207 = !DILocalVariable(name: "g15", arg: 1, scope: !6206, file: !3, line: 545, type: !4058)
!6208 = !DILocation(line: 545, column: 46, scope: !6206)
!6209 = !DILocalVariable(name: "data", arg: 2, scope: !6206, file: !3, line: 545, type: !3948)
!6210 = !DILocation(line: 545, column: 55, scope: !6206)
!6211 = !DILocalVariable(name: "size", arg: 3, scope: !6206, file: !3, line: 545, type: !207)
!6212 = !DILocation(line: 545, column: 65, scope: !6206)
!6213 = !DILocalVariable(name: "game_mode_enabled", scope: !6206, file: !3, line: 547, type: !552)
!6214 = !DILocation(line: 547, column: 7, scope: !6206)
!6215 = !DILocalVariable(name: "i", scope: !6206, file: !3, line: 548, type: !207)
!6216 = !DILocation(line: 548, column: 6, scope: !6206)
!6217 = !DILocalVariable(name: "val", scope: !6206, file: !3, line: 548, type: !207)
!6218 = !DILocation(line: 548, column: 9, scope: !6206)
!6219 = !DILocation(line: 551, column: 9, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 551, column: 2)
!6221 = !DILocation(line: 551, column: 7, scope: !6220)
!6222 = !DILocation(line: 551, column: 14, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 551, column: 2)
!6224 = !DILocation(line: 551, column: 16, scope: !6223)
!6225 = !DILocation(line: 551, column: 2, scope: !6220)
!6226 = !DILocation(line: 552, column: 9, scope: !6227)
!6227 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 551, column: 27)
!6228 = !DILocation(line: 552, column: 14, scope: !6227)
!6229 = !DILocation(line: 552, column: 16, scope: !6227)
!6230 = !DILocation(line: 552, column: 20, scope: !6227)
!6231 = !DILocation(line: 552, column: 34, scope: !6227)
!6232 = !DILocation(line: 552, column: 36, scope: !6227)
!6233 = !DILocation(line: 552, column: 30, scope: !6227)
!6234 = !DILocation(line: 552, column: 25, scope: !6227)
!6235 = !DILocation(line: 552, column: 7, scope: !6227)
!6236 = !DILocation(line: 553, column: 20, scope: !6227)
!6237 = !DILocation(line: 553, column: 25, scope: !6227)
!6238 = !DILocation(line: 553, column: 45, scope: !6227)
!6239 = !DILocation(line: 553, column: 43, scope: !6227)
!6240 = !DILocation(line: 553, column: 48, scope: !6227)
!6241 = !DILocation(line: 553, column: 3, scope: !6227)
!6242 = !DILocation(line: 554, column: 2, scope: !6227)
!6243 = !DILocation(line: 551, column: 23, scope: !6223)
!6244 = !DILocation(line: 551, column: 2, scope: !6223)
!6245 = distinct !{!6245, !6225, !6246}
!6246 = !DILocation(line: 554, column: 2, scope: !6220)
!6247 = !DILocation(line: 557, column: 22, scope: !6206)
!6248 = !DILocation(line: 557, column: 30, scope: !6206)
!6249 = !DILocation(line: 557, column: 20, scope: !6206)
!6250 = !DILocation(line: 558, column: 6, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 558, column: 6)
!6252 = !DILocation(line: 558, column: 27, scope: !6251)
!6253 = !DILocation(line: 558, column: 32, scope: !6251)
!6254 = !DILocation(line: 558, column: 24, scope: !6251)
!6255 = !DILocation(line: 558, column: 6, scope: !6206)
!6256 = !DILocation(line: 559, column: 7, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 559, column: 7)
!6258 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 558, column: 51)
!6259 = !DILocation(line: 559, column: 7, scope: !6258)
!6260 = !DILocation(line: 560, column: 4, scope: !6257)
!6261 = !DILocation(line: 562, column: 4, scope: !6257)
!6262 = !DILocation(line: 563, column: 28, scope: !6258)
!6263 = !DILocation(line: 563, column: 3, scope: !6258)
!6264 = !DILocation(line: 563, column: 8, scope: !6258)
!6265 = !DILocation(line: 563, column: 26, scope: !6258)
!6266 = !DILocation(line: 564, column: 2, scope: !6258)
!6267 = !DILocation(line: 567, column: 9, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 567, column: 2)
!6269 = !DILocation(line: 567, column: 7, scope: !6268)
!6270 = !DILocation(line: 567, column: 14, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6268, file: !3, line: 567, column: 2)
!6272 = !DILocation(line: 567, column: 16, scope: !6271)
!6273 = !DILocation(line: 567, column: 2, scope: !6268)
!6274 = !DILocation(line: 568, column: 9, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 567, column: 26)
!6276 = !DILocation(line: 568, column: 28, scope: !6275)
!6277 = !DILocation(line: 568, column: 25, scope: !6275)
!6278 = !DILocation(line: 568, column: 17, scope: !6275)
!6279 = !DILocation(line: 568, column: 7, scope: !6275)
!6280 = !DILocation(line: 569, column: 20, scope: !6275)
!6281 = !DILocation(line: 569, column: 25, scope: !6275)
!6282 = !DILocation(line: 569, column: 52, scope: !6275)
!6283 = !DILocation(line: 569, column: 50, scope: !6275)
!6284 = !DILocation(line: 569, column: 55, scope: !6275)
!6285 = !DILocation(line: 569, column: 3, scope: !6275)
!6286 = !DILocation(line: 570, column: 2, scope: !6275)
!6287 = !DILocation(line: 567, column: 22, scope: !6271)
!6288 = !DILocation(line: 567, column: 2, scope: !6271)
!6289 = distinct !{!6289, !6273, !6290}
!6290 = !DILocation(line: 570, column: 2, scope: !6268)
!6291 = !DILocation(line: 572, column: 19, scope: !6206)
!6292 = !DILocation(line: 572, column: 24, scope: !6206)
!6293 = !DILocation(line: 572, column: 55, scope: !6206)
!6294 = !DILocation(line: 572, column: 63, scope: !6206)
!6295 = !DILocation(line: 572, column: 2, scope: !6206)
!6296 = !DILocation(line: 575, column: 9, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 575, column: 2)
!6298 = !DILocation(line: 575, column: 7, scope: !6297)
!6299 = !DILocation(line: 575, column: 14, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 575, column: 2)
!6301 = !DILocation(line: 575, column: 16, scope: !6300)
!6302 = !DILocation(line: 575, column: 2, scope: !6297)
!6303 = !DILocation(line: 576, column: 9, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6300, file: !3, line: 575, column: 26)
!6305 = !DILocation(line: 576, column: 25, scope: !6304)
!6306 = !DILocation(line: 576, column: 22, scope: !6304)
!6307 = !DILocation(line: 576, column: 17, scope: !6304)
!6308 = !DILocation(line: 576, column: 7, scope: !6304)
!6309 = !DILocation(line: 577, column: 20, scope: !6304)
!6310 = !DILocation(line: 577, column: 25, scope: !6304)
!6311 = !DILocation(line: 577, column: 52, scope: !6304)
!6312 = !DILocation(line: 577, column: 50, scope: !6304)
!6313 = !DILocation(line: 577, column: 55, scope: !6304)
!6314 = !DILocation(line: 577, column: 3, scope: !6304)
!6315 = !DILocation(line: 578, column: 2, scope: !6304)
!6316 = !DILocation(line: 575, column: 22, scope: !6300)
!6317 = !DILocation(line: 575, column: 2, scope: !6300)
!6318 = distinct !{!6318, !6302, !6319}
!6319 = !DILocation(line: 578, column: 2, scope: !6297)
!6320 = !DILocation(line: 581, column: 19, scope: !6206)
!6321 = !DILocation(line: 581, column: 24, scope: !6206)
!6322 = !DILocation(line: 581, column: 41, scope: !6206)
!6323 = !DILocation(line: 581, column: 49, scope: !6206)
!6324 = !DILocation(line: 581, column: 2, scope: !6206)
!6325 = !DILocation(line: 583, column: 19, scope: !6206)
!6326 = !DILocation(line: 583, column: 24, scope: !6206)
!6327 = !DILocation(line: 583, column: 40, scope: !6206)
!6328 = !DILocation(line: 583, column: 48, scope: !6206)
!6329 = !DILocation(line: 583, column: 2, scope: !6206)
!6330 = !DILocation(line: 585, column: 13, scope: !6206)
!6331 = !DILocation(line: 585, column: 18, scope: !6206)
!6332 = !DILocation(line: 585, column: 2, scope: !6206)
!6333 = !DILocation(line: 586, column: 2, scope: !6206)
!6334 = distinct !DISubprogram(name: "lg_g510_leds_event", scope: !3, file: !3, line: 589, type: !5945, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!6335 = !DILocalVariable(name: "g15", arg: 1, scope: !6334, file: !3, line: 589, type: !4058)
!6336 = !DILocation(line: 589, column: 51, scope: !6334)
!6337 = !DILocalVariable(name: "data", arg: 2, scope: !6334, file: !3, line: 589, type: !3948)
!6338 = !DILocation(line: 589, column: 60, scope: !6334)
!6339 = !DILocalVariable(name: "size", arg: 3, scope: !6334, file: !3, line: 589, type: !207)
!6340 = !DILocation(line: 589, column: 70, scope: !6334)
!6341 = !DILocalVariable(name: "backlight_disabled", scope: !6334, file: !3, line: 591, type: !552)
!6342 = !DILocation(line: 591, column: 7, scope: !6334)
!6343 = !DILocation(line: 598, column: 23, scope: !6334)
!6344 = !DILocation(line: 598, column: 31, scope: !6334)
!6345 = !DILocation(line: 598, column: 21, scope: !6334)
!6346 = !DILocation(line: 599, column: 7, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6334, file: !3, line: 599, column: 6)
!6348 = !DILocation(line: 599, column: 6, scope: !6334)
!6349 = !DILocation(line: 600, column: 18, scope: !6347)
!6350 = !DILocation(line: 600, column: 23, scope: !6347)
!6351 = !DILocation(line: 600, column: 3, scope: !6347)
!6352 = !DILocation(line: 602, column: 2, scope: !6334)
!6353 = distinct !DISubprogram(name: "input_report_key", scope: !225, file: !225, line: 415, type: !6354, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!6354 = !DISubroutineType(types: !6355)
!6355 = !{null, !223, !7, !207}
!6356 = !DILocalVariable(name: "dev", arg: 1, scope: !6353, file: !225, line: 415, type: !223)
!6357 = !DILocation(line: 415, column: 55, scope: !6353)
!6358 = !DILocalVariable(name: "code", arg: 2, scope: !6353, file: !225, line: 415, type: !7)
!6359 = !DILocation(line: 415, column: 73, scope: !6353)
!6360 = !DILocalVariable(name: "value", arg: 3, scope: !6353, file: !225, line: 415, type: !207)
!6361 = !DILocation(line: 415, column: 83, scope: !6353)
!6362 = !DILocation(line: 417, column: 14, scope: !6353)
!6363 = !DILocation(line: 417, column: 27, scope: !6353)
!6364 = !DILocation(line: 417, column: 35, scope: !6353)
!6365 = !DILocation(line: 417, column: 34, scope: !6353)
!6366 = !DILocation(line: 417, column: 33, scope: !6353)
!6367 = !DILocation(line: 417, column: 2, scope: !6353)
!6368 = !DILocation(line: 418, column: 1, scope: !6353)
!6369 = distinct !DISubprogram(name: "schedule_work", scope: !115, file: !115, line: 566, type: !6370, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!6370 = !DISubroutineType(types: !6371)
!6371 = !{!552, !1934}
!6372 = !DILocalVariable(name: "work", arg: 1, scope: !6369, file: !115, line: 566, type: !1934)
!6373 = !DILocation(line: 566, column: 54, scope: !6369)
!6374 = !DILocation(line: 568, column: 20, scope: !6369)
!6375 = !DILocation(line: 568, column: 31, scope: !6369)
!6376 = !DILocation(line: 568, column: 9, scope: !6369)
!6377 = !DILocation(line: 568, column: 2, scope: !6369)
!6378 = distinct !DISubprogram(name: "input_sync", scope: !225, file: !225, line: 440, type: !3106, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!6379 = !DILocalVariable(name: "dev", arg: 1, scope: !6378, file: !225, line: 440, type: !223)
!6380 = !DILocation(line: 440, column: 49, scope: !6378)
!6381 = !DILocation(line: 442, column: 14, scope: !6378)
!6382 = !DILocation(line: 442, column: 2, scope: !6378)
!6383 = !DILocation(line: 443, column: 1, scope: !6378)
!6384 = distinct !DISubprogram(name: "queue_work", scope: !115, file: !115, line: 504, type: !6385, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !409)
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!552, !2681, !1934}
!6387 = !DILocalVariable(name: "wq", arg: 1, scope: !6384, file: !115, line: 504, type: !2681)
!6388 = !DILocation(line: 504, column: 56, scope: !6384)
!6389 = !DILocalVariable(name: "work", arg: 2, scope: !6384, file: !115, line: 505, type: !1934)
!6390 = !DILocation(line: 505, column: 30, scope: !6384)
!6391 = !DILocation(line: 507, column: 41, scope: !6384)
!6392 = !DILocation(line: 507, column: 45, scope: !6384)
!6393 = !DILocation(line: 507, column: 9, scope: !6384)
!6394 = !DILocation(line: 507, column: 2, scope: !6384)
