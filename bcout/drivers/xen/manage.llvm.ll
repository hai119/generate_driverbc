; ModuleID = '../bcout/drivers/xen/manage.llvm.bc'
source_filename = "drivers/xen/manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_xen_setup_shutdown_event4:\09\09\09"
module asm ".long\09xen_setup_shutdown_event - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.raw_notifier_head = type { %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.shutdown_handler = type { [11 x i8], i8, void ()* }
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.1 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.1 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.59, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.4, %union.anon.39, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.13, %struct.list_head, %struct.list_head, %union.anon.14 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.8, i8* }
%union.anon.8 = type { i64 }
%struct.lockref = type { %union.anon.10 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.13 = type { %struct.list_head }
%union.anon.14 = type { %struct.hlist_node }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.12, i32 }
%union.anon.12 = type { %struct.kuid_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.61 = type { %struct.callback_head }
%union.anon.62 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.15 }
%union.anon.15 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.16 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.39 = type { %struct.atomic_t }
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.user_namespace = type opaque
%struct.file = type { %union.anon.7, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.26 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.26 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.18, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.19, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.20, %union.anon.24, %struct.key_restriction* }
%union.anon.18 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.21, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.21 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.24 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.45, %union.anon.46, i32 }
%struct.request_queue = type opaque
%union.anon.45 = type { %struct.list_head }
%union.anon.46 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.47 }
%struct.anon.47 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.58, i32, [12 x i8] }
%union.anon.58 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.59 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.start_info = type { [32 x i8], i64, i64, i32, i64, i32, %union.anon.65, i64, i64, i64, i64, i64, [1024 x i8], i64, i64 }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { i64, i32 }
%struct.sched_shutdown = type { i32 }
%struct.xenbus_transaction = type { i32 }
%struct.suspend_info = type { i32 }
%struct.pm_message = type { i32 }

@xen_resume_notifier = internal global %struct.raw_notifier_head zeroinitializer, align 8, !dbg !0
@xen_setup_shutdown_event.xenstore_notifier = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @shutdown_event, %struct.notifier_block* null, i32 0 }, align 8, !dbg !38
@xen_domain_type = external dso_local global i32, align 4
@xen_reboot_nb = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @poweroff_nb, %struct.notifier_block* null, i32 0 }, align 8, !dbg !97
@__UNIQUE_ID___addressable_xen_setup_shutdown_event239 = internal global i8* bitcast (i32 ()* @xen_setup_shutdown_event to i8*), section ".discard.addressable", align 8, !dbg !55
@shutdown_watch = internal global %struct.xenbus_watch { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), void (%struct.xenbus_watch*, i8*, i8*)* @shutdown_handler }, align 8, !dbg !57
@.str = private unnamed_addr constant [46 x i8] c"\013xen:manage: Failed to set shutdown watcher\0A\00", align 1
@shutdown_handlers = internal global [4 x %struct.shutdown_handler] [%struct.shutdown_handler { [11 x i8] c"poweroff\00\00\00", i8 1, void ()* @do_poweroff }, %struct.shutdown_handler { [11 x i8] c"halt\00\00\00\00\00\00\00", i8 0, void ()* @do_poweroff }, %struct.shutdown_handler { [11 x i8] c"reboot\00\00\00\00\00", i8 1, void ()* @do_reboot }, %struct.shutdown_handler { [11 x i8] c"suspend\00\00\00\00", i8 1, void ()* @do_suspend }], align 16, !dbg !79
@.str.1 = private unnamed_addr constant [11 x i8] c"feature-%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013xen:manage: %s: Error %d writing %s\0A\00", align 1
@__func__.setup_shutdown_watcher = private unnamed_addr constant [23 x i8] c"setup_shutdown_watcher\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"control/shutdown\00", align 1
@shutting_down = internal global i32 -1, align 4, !dbg !77
@.str.6 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\016xen:manage: Ignoring shutdown request: %s\0A\00", align 1
@system_state = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"\016xen:manage: Ignoring Xen toolstack shutdown.\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"\013xen:manage: %s: freeze processes failed %d\0A\00", align 1
@__func__.do_suspend = private unnamed_addr constant [11 x i8] c"do_suspend\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\013xen:manage: %s: freeze kernel threads failed %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"\013xen:manage: %s: dpm_suspend_start %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\017suspending xenstore...\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"\013xen:manage: dpm_suspend_end failed: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\013xen:manage: failed to start xen_suspend: %d\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"drivers/xen/manage.c\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\013xen:manage: %s: system core suspend failed: %d\0A\00", align 1
@__func__.xen_suspend = private unnamed_addr constant [12 x i8] c"xen_suspend\00", align 1
@xen_start_info = external dso_local global %struct.start_info*, align 8
@__const.HYPERVISOR_suspend.r = private unnamed_addr constant %struct.sched_shutdown { i32 2 }, align 4
@xen_features = external dso_local global [32 x i8], align 16
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_xen_setup_shutdown_event239 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_resume_notifier_register(%struct.notifier_block* %nb) #0 !dbg !108 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !111, metadata !DIExpression()), !dbg !112
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !113
  %call = call i32 @raw_notifier_chain_register(%struct.raw_notifier_head* @xen_resume_notifier, %struct.notifier_block* %0) #7, !dbg !114
  ret void, !dbg !115
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @raw_notifier_chain_register(%struct.raw_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_resume_notifier_unregister(%struct.notifier_block* %nb) #0 !dbg !116 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !119
  %call = call i32 @raw_notifier_chain_unregister(%struct.raw_notifier_head* @xen_resume_notifier, %struct.notifier_block* %0) #7, !dbg !120
  ret void, !dbg !121
}

; Function Attrs: noredzone
declare dso_local i32 @raw_notifier_chain_unregister(%struct.raw_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_setup_shutdown_event() #0 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !122
  %cmp = icmp ne i32 %0, 0, !dbg !122
  br i1 %cmp, label %if.end, label %if.then, !dbg !124

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !125
  br label %return, !dbg !125

if.end:                                           ; preds = %entry
  %call = call i32 @register_xenstore_notifier(%struct.notifier_block* @xen_setup_shutdown_event.xenstore_notifier) #7, !dbg !126
  %call1 = call i32 @register_reboot_notifier(%struct.notifier_block* @xen_reboot_nb) #7, !dbg !127
  store i32 0, i32* %retval, align 4, !dbg !128
  br label %return, !dbg !128

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !129
  ret i32 %1, !dbg !129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @shutdown_event(%struct.notifier_block* %notifier, i64 %event, i8* %data) #0 !dbg !130 {
entry:
  %notifier.addr = alloca %struct.notifier_block*, align 8
  %event.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  store %struct.notifier_block* %notifier, %struct.notifier_block** %notifier.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %notifier.addr, metadata !131, metadata !DIExpression()), !dbg !132
  store i64 %event, i64* %event.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %event.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %call = call i32 @setup_shutdown_watcher() #7, !dbg !137
  ret i32 0, !dbg !138
}

; Function Attrs: noredzone
declare dso_local i32 @register_xenstore_notifier(%struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local i32 @register_reboot_notifier(%struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @setup_shutdown_watcher() #0 !dbg !139 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %idx = alloca i32, align 4
  %node = alloca [20 x i8], align 16
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata [20 x i8]* %node, metadata !144, metadata !DIExpression()), !dbg !148
  %call = call i32 @register_xenbus_watch(%struct.xenbus_watch* @shutdown_watch) #7, !dbg !149
  store i32 %call, i32* %err, align 4, !dbg !150
  %0 = load i32, i32* %err, align 4, !dbg !151
  %tobool = icmp ne i32 %0, 0, !dbg !151
  br i1 %tobool, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0)) #8, !dbg !154
  %1 = load i32, i32* %err, align 4, !dbg !156
  store i32 %1, i32* %retval, align 4, !dbg !157
  br label %return, !dbg !157

if.end:                                           ; preds = %entry
  store i32 0, i32* %idx, align 4, !dbg !158
  br label %for.cond, !dbg !160

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %idx, align 4, !dbg !161
  %conv = sext i32 %2 to i64, !dbg !161
  %cmp = icmp ult i64 %conv, 4, !dbg !163
  br i1 %cmp, label %for.body, label %for.end, !dbg !164

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %idx, align 4, !dbg !165
  %idxprom = sext i32 %3 to i64, !dbg !168
  %arrayidx = getelementptr [4 x %struct.shutdown_handler], [4 x %struct.shutdown_handler]* @shutdown_handlers, i64 0, i64 %idxprom, !dbg !168
  %flag = getelementptr inbounds %struct.shutdown_handler, %struct.shutdown_handler* %arrayidx, i32 0, i32 1, !dbg !169
  %4 = load i8, i8* %flag, align 1, !dbg !169
  %tobool3 = trunc i8 %4 to i1, !dbg !169
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !170

if.then4:                                         ; preds = %for.body
  br label %for.inc, !dbg !171

if.end5:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %node, i64 0, i64 0, !dbg !172
  %5 = load i32, i32* %idx, align 4, !dbg !173
  %idxprom6 = sext i32 %5 to i64, !dbg !174
  %arrayidx7 = getelementptr [4 x %struct.shutdown_handler], [4 x %struct.shutdown_handler]* @shutdown_handlers, i64 0, i64 %idxprom6, !dbg !174
  %command = getelementptr inbounds %struct.shutdown_handler, %struct.shutdown_handler* %arrayidx7, i32 0, i32 0, !dbg !175
  %arraydecay8 = getelementptr inbounds [11 x i8], [11 x i8]* %command, i64 0, i64 0, !dbg !174
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay8) #7, !dbg !176
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !177
  store i32 0, i32* %id, align 4, !dbg !177
  %arraydecay10 = getelementptr inbounds [20 x i8], [20 x i8]* %node, i64 0, i64 0, !dbg !178
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !179
  %6 = load i32, i32* %coerce.dive, align 4, !dbg !179
  %call11 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1) #7, !dbg !179
  store i32 %call11, i32* %err, align 4, !dbg !180
  %7 = load i32, i32* %err, align 4, !dbg !181
  %tobool12 = icmp ne i32 %7, 0, !dbg !181
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !183

if.then13:                                        ; preds = %if.end5
  %8 = load i32, i32* %err, align 4, !dbg !184
  %arraydecay14 = getelementptr inbounds [20 x i8], [20 x i8]* %node, i64 0, i64 0, !dbg !184
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.setup_shutdown_watcher, i64 0, i64 0), i32 %8, i8* %arraydecay14) #8, !dbg !184
  %9 = load i32, i32* %err, align 4, !dbg !186
  store i32 %9, i32* %retval, align 4, !dbg !187
  br label %return, !dbg !187

if.end16:                                         ; preds = %if.end5
  br label %for.inc, !dbg !188

for.inc:                                          ; preds = %if.end16, %if.then4
  %10 = load i32, i32* %idx, align 4, !dbg !189
  %inc = add i32 %10, 1, !dbg !189
  store i32 %inc, i32* %idx, align 4, !dbg !189
  br label %for.cond, !dbg !190, !llvm.loop !191

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !193
  br label %return, !dbg !193

return:                                           ; preds = %for.end, %if.then13, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !194
  ret i32 %11, !dbg !194
}

; Function Attrs: noredzone
declare dso_local i32 @register_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @shutdown_handler(%struct.xenbus_watch* %watch, i8* %path, i8* %token) #0 !dbg !195 {
entry:
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %xbt = alloca %struct.xenbus_transaction, align 4
  %err = alloca i32, align 4
  %idx = alloca i32, align 4
  %tmp = alloca i8, align 1
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !196, metadata !DIExpression()), !dbg !197
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !198, metadata !DIExpression()), !dbg !199
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i8** %str, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %xbt, metadata !204, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %err, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i32, i32* @shutting_down, align 4, !dbg !217
  %cmp = icmp ne i32 %0, -1, !dbg !219
  br i1 %cmp, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  br label %return, !dbg !221

if.end:                                           ; preds = %entry
  br label %again, !dbg !222

again:                                            ; preds = %if.then34, %if.end
  call void @llvm.dbg.label(metadata !223), !dbg !224
  %call = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %xbt) #7, !dbg !225
  store i32 %call, i32* %err, align 4, !dbg !226
  %1 = load i32, i32* %err, align 4, !dbg !227
  %tobool = icmp ne i32 %1, 0, !dbg !227
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !229

if.then1:                                         ; preds = %again
  br label %return, !dbg !230

if.end2:                                          ; preds = %again
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !231
  %2 = load i32, i32* %coerce.dive, align 4, !dbg !231
  %call3 = call i8* @xenbus_read(i32 %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* null) #7, !dbg !231
  store i8* %call3, i8** %str, align 8, !dbg !232
  %3 = load i8*, i8** %str, align 8, !dbg !233
  %call4 = call zeroext i1 @IS_ERR(i8* %3) #7, !dbg !233
  br i1 %call4, label %if.end9, label %land.lhs.true, !dbg !233

land.lhs.true:                                    ; preds = %if.end2
  %4 = load i8*, i8** %str, align 8, !dbg !233
  %call5 = call i64 @strlen(i8* %4) #7, !dbg !233
  %cmp6 = icmp eq i64 %call5, 0, !dbg !233
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !237

if.then7:                                         ; preds = %land.lhs.true
  %5 = load i8*, i8** %str, align 8, !dbg !238
  call void @kfree(i8* %5) #7, !dbg !238
  %call8 = call i8* @ERR_PTR(i64 -34) #7, !dbg !238
  store i8* %call8, i8** %str, align 8, !dbg !238
  br label %if.end9, !dbg !238

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %if.end2
  %6 = load i8*, i8** %str, align 8, !dbg !237
  %call10 = call zeroext i1 @IS_ERR(i8* %6) #7, !dbg !237
  %frombool = zext i1 %call10 to i8, !dbg !233
  store i8 %frombool, i8* %tmp, align 1, !dbg !233
  %7 = load i8, i8* %tmp, align 1, !dbg !237
  %tobool11 = trunc i8 %7 to i1, !dbg !237
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !240

if.then12:                                        ; preds = %if.end9
  %coerce.dive13 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !241
  %8 = load i32, i32* %coerce.dive13, align 4, !dbg !241
  %call14 = call i32 @xenbus_transaction_end(i32 %8, i32 1) #7, !dbg !241
  br label %return, !dbg !243

if.end15:                                         ; preds = %if.end9
  store i32 0, i32* %idx, align 4, !dbg !244
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %for.inc, %if.end15
  %9 = load i32, i32* %idx, align 4, !dbg !247
  %conv = sext i32 %9 to i64, !dbg !247
  %cmp16 = icmp ult i64 %conv, 4, !dbg !249
  br i1 %cmp16, label %for.body, label %for.end, !dbg !250

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %str, align 8, !dbg !251
  %11 = load i32, i32* %idx, align 4, !dbg !254
  %idxprom = sext i32 %11 to i64, !dbg !255
  %arrayidx = getelementptr [4 x %struct.shutdown_handler], [4 x %struct.shutdown_handler]* @shutdown_handlers, i64 0, i64 %idxprom, !dbg !255
  %command = getelementptr inbounds %struct.shutdown_handler, %struct.shutdown_handler* %arrayidx, i32 0, i32 0, !dbg !256
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %command, i64 0, i64 0, !dbg !255
  %call18 = call i32 @strcmp(i8* %10, i8* %arraydecay) #7, !dbg !257
  %cmp19 = icmp eq i32 %call18, 0, !dbg !258
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !259

if.then21:                                        ; preds = %for.body
  br label %for.end, !dbg !260

if.end22:                                         ; preds = %for.body
  br label %for.inc, !dbg !261

for.inc:                                          ; preds = %if.end22
  %12 = load i32, i32* %idx, align 4, !dbg !262
  %inc = add i32 %12, 1, !dbg !262
  store i32 %inc, i32* %idx, align 4, !dbg !262
  br label %for.cond, !dbg !263, !llvm.loop !264

for.end:                                          ; preds = %if.then21, %for.cond
  %13 = load i32, i32* %idx, align 4, !dbg !266
  %conv23 = sext i32 %13 to i64, !dbg !266
  %cmp24 = icmp ult i64 %conv23, 4, !dbg !268
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !269

if.then26:                                        ; preds = %for.end
  %coerce.dive27 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !270
  %14 = load i32, i32* %coerce.dive27, align 4, !dbg !270
  %call28 = call i32 @xenbus_write(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !270
  br label %if.end29, !dbg !270

if.end29:                                         ; preds = %if.then26, %for.end
  %coerce.dive30 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !271
  %15 = load i32, i32* %coerce.dive30, align 4, !dbg !271
  %call31 = call i32 @xenbus_transaction_end(i32 %15, i32 0) #7, !dbg !271
  store i32 %call31, i32* %err, align 4, !dbg !272
  %16 = load i32, i32* %err, align 4, !dbg !273
  %cmp32 = icmp eq i32 %16, -11, !dbg !275
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !276

if.then34:                                        ; preds = %if.end29
  %17 = load i8*, i8** %str, align 8, !dbg !277
  call void @kfree(i8* %17) #7, !dbg !279
  br label %again, !dbg !280

if.end35:                                         ; preds = %if.end29
  %18 = load i32, i32* %idx, align 4, !dbg !281
  %conv36 = sext i32 %18 to i64, !dbg !281
  %cmp37 = icmp ult i64 %conv36, 4, !dbg !283
  br i1 %cmp37, label %if.then39, label %if.else, !dbg !284

if.then39:                                        ; preds = %if.end35
  %19 = load i32, i32* %idx, align 4, !dbg !285
  %idxprom40 = sext i32 %19 to i64, !dbg !287
  %arrayidx41 = getelementptr [4 x %struct.shutdown_handler], [4 x %struct.shutdown_handler]* @shutdown_handlers, i64 0, i64 %idxprom40, !dbg !287
  %cb = getelementptr inbounds %struct.shutdown_handler, %struct.shutdown_handler* %arrayidx41, i32 0, i32 2, !dbg !288
  %20 = load void ()*, void ()** %cb, align 8, !dbg !288
  call void %20() #7, !dbg !287
  br label %if.end43, !dbg !289

if.else:                                          ; preds = %if.end35
  %21 = load i8*, i8** %str, align 8, !dbg !290
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %21) #8, !dbg !290
  store i32 -1, i32* @shutting_down, align 4, !dbg !292
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then39
  %22 = load i8*, i8** %str, align 8, !dbg !293
  call void @kfree(i8* %22) #7, !dbg !294
  br label %return, !dbg !295

return:                                           ; preds = %if.end43, %if.then12, %if.then1, %if.then
  ret void, !dbg !295
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #2

; Function Attrs: noredzone
declare dso_local i8* @xenbus_read(i32, i8*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !296 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !304
  %1 = ptrtoint i8* %0 to i64, !dbg !304
  %2 = inttoptr i64 %1 to i8*, !dbg !304
  %3 = ptrtoint i8* %2 to i64, !dbg !304
  %cmp = icmp uge i64 %3, -4095, !dbg !304
  %lnot = xor i1 %cmp, true, !dbg !304
  %lnot1 = xor i1 %lnot, true, !dbg !304
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !304
  %conv = sext i32 %lnot.ext to i64, !dbg !304
  %tobool = icmp ne i64 %conv, 0, !dbg !304
  ret i1 %tobool, !dbg !305
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !306 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i64, i64* %error.addr, align 8, !dbg !312
  %1 = inttoptr i64 %0 to i8*, !dbg !313
  ret i8* %1, !dbg !314
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_end(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_write(i32, i8*, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @do_poweroff() #0 !dbg !315 {
entry:
  %0 = load i32, i32* @system_state, align 4, !dbg !316
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !317

sw.bb:                                            ; preds = %entry, %entry
  call void @orderly_poweroff(i1 zeroext true) #7, !dbg !318
  br label %sw.epilog, !dbg !320

sw.bb1:                                           ; preds = %entry
  call void @orderly_poweroff(i1 zeroext false) #7, !dbg !321
  br label %sw.epilog, !dbg !322

sw.default:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !323
  br label %sw.epilog, !dbg !324

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void, !dbg !325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @do_reboot() #0 !dbg !326 {
entry:
  store i32 0, i32* @shutting_down, align 4, !dbg !327
  call void @ctrl_alt_del() #7, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @do_suspend() #0 !dbg !330 {
entry:
  %err = alloca i32, align 4
  %si = alloca %struct.suspend_info, align 4
  %.compoundliteral = alloca %struct.pm_message, align 4
  %.compoundliteral13 = alloca %struct.pm_message, align 4
  %agg.tmp = alloca %struct.pm_message, align 4
  %agg.tmp43 = alloca %struct.pm_message, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata %struct.suspend_info* %si, metadata !333, metadata !DIExpression()), !dbg !337
  store i32 2, i32* @shutting_down, align 4, !dbg !338
  %call = call i32 @freeze_processes() #7, !dbg !339
  store i32 %call, i32* %err, align 4, !dbg !340
  %0 = load i32, i32* %err, align 4, !dbg !341
  %tobool = icmp ne i32 %0, 0, !dbg !341
  br i1 %tobool, label %if.then, label %if.end, !dbg !343

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err, align 4, !dbg !344
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_suspend, i64 0, i64 0), i32 %1) #8, !dbg !344
  br label %out, !dbg !346

if.end:                                           ; preds = %entry
  %call2 = call i32 @freeze_kernel_threads() #7, !dbg !347
  store i32 %call2, i32* %err, align 4, !dbg !348
  %2 = load i32, i32* %err, align 4, !dbg !349
  %tobool3 = icmp ne i32 %2, 0, !dbg !349
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !351

if.then4:                                         ; preds = %if.end
  %3 = load i32, i32* %err, align 4, !dbg !352
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_suspend, i64 0, i64 0), i32 %3) #8, !dbg !352
  br label %out_thaw, !dbg !354

if.end6:                                          ; preds = %if.end
  %event = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !355
  store i32 1, i32* %event, align 4, !dbg !355
  %coerce.dive = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral, i32 0, i32 0, !dbg !356
  %4 = load i32, i32* %coerce.dive, align 4, !dbg !356
  %call7 = call i32 @dpm_suspend_start(i32 %4) #7, !dbg !356
  store i32 %call7, i32* %err, align 4, !dbg !357
  %5 = load i32, i32* %err, align 4, !dbg !358
  %tobool8 = icmp ne i32 %5, 0, !dbg !358
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !360

if.then9:                                         ; preds = %if.end6
  %6 = load i32, i32* %err, align 4, !dbg !361
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.do_suspend, i64 0, i64 0), i32 %6) #8, !dbg !361
  br label %out_thaw, !dbg !363

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !364
  call void @xs_suspend() #7, !dbg !365
  %event14 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral13, i32 0, i32 0, !dbg !366
  store i32 1, i32* %event14, align 4, !dbg !366
  %coerce.dive15 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %.compoundliteral13, i32 0, i32 0, !dbg !367
  %7 = load i32, i32* %coerce.dive15, align 4, !dbg !367
  %call16 = call i32 @dpm_suspend_end(i32 %7) #7, !dbg !367
  store i32 %call16, i32* %err, align 4, !dbg !368
  %8 = load i32, i32* %err, align 4, !dbg !369
  %tobool17 = icmp ne i32 %8, 0, !dbg !369
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !371

if.then18:                                        ; preds = %if.end11
  %9 = load i32, i32* %err, align 4, !dbg !372
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %9) #8, !dbg !372
  %cancelled = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %si, i32 0, i32 0, !dbg !374
  store i32 0, i32* %cancelled, align 4, !dbg !375
  br label %out_resume, !dbg !376

if.end20:                                         ; preds = %if.end11
  call void @xen_arch_suspend() #7, !dbg !377
  %cancelled21 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %si, i32 0, i32 0, !dbg !378
  store i32 1, i32* %cancelled21, align 4, !dbg !379
  %10 = bitcast %struct.suspend_info* %si to i8*, !dbg !380
  %call22 = call %struct.cpumask* @get_cpu_mask(i32 0) #7, !dbg !381
  %call23 = call i32 @stop_machine(i32 (i8*)* @xen_suspend, i8* %10, %struct.cpumask* %call22) #7, !dbg !382
  store i32 %call23, i32* %err, align 4, !dbg !383
  %cancelled24 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %si, i32 0, i32 0, !dbg !384
  %11 = load i32, i32* %cancelled24, align 4, !dbg !384
  %tobool25 = icmp ne i32 %11, 0, !dbg !386
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !387

if.then26:                                        ; preds = %if.end20
  call void @xen_console_resume() #7, !dbg !388
  br label %if.end27, !dbg !388

if.end27:                                         ; preds = %if.then26, %if.end20
  %call28 = call i32 @raw_notifier_call_chain(%struct.raw_notifier_head* @xen_resume_notifier, i64 0, i8* null) #7, !dbg !389
  %cancelled29 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %si, i32 0, i32 0, !dbg !390
  %12 = load i32, i32* %cancelled29, align 4, !dbg !390
  %tobool30 = icmp ne i32 %12, 0, !dbg !391
  br i1 %tobool30, label %cond.true, label %cond.false, !dbg !391

cond.true:                                        ; preds = %if.end27
  %event31 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %agg.tmp, i32 0, i32 0, !dbg !392
  store i32 32, i32* %event31, align 4, !dbg !392
  br label %cond.end, !dbg !391

cond.false:                                       ; preds = %if.end27
  %event32 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %agg.tmp, i32 0, i32 0, !dbg !393
  store i32 64, i32* %event32, align 4, !dbg !393
  br label %cond.end, !dbg !391

cond.end:                                         ; preds = %cond.false, %cond.true
  %coerce.dive33 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %agg.tmp, i32 0, i32 0, !dbg !394
  %13 = load i32, i32* %coerce.dive33, align 4, !dbg !394
  call void @dpm_resume_start(i32 %13) #7, !dbg !394
  %14 = load i32, i32* %err, align 4, !dbg !395
  %tobool34 = icmp ne i32 %14, 0, !dbg !395
  br i1 %tobool34, label %if.then35, label %if.end38, !dbg !397

if.then35:                                        ; preds = %cond.end
  %15 = load i32, i32* %err, align 4, !dbg !398
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i32 %15) #8, !dbg !398
  %cancelled37 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %si, i32 0, i32 0, !dbg !400
  store i32 1, i32* %cancelled37, align 4, !dbg !401
  br label %if.end38, !dbg !402

if.end38:                                         ; preds = %if.then35, %cond.end
  call void @xen_arch_resume() #7, !dbg !403
  br label %out_resume, !dbg !403

out_resume:                                       ; preds = %if.end38, %if.then18
  call void @llvm.dbg.label(metadata !404), !dbg !405
  %cancelled39 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %si, i32 0, i32 0, !dbg !406
  %16 = load i32, i32* %cancelled39, align 4, !dbg !406
  %tobool40 = icmp ne i32 %16, 0, !dbg !408
  br i1 %tobool40, label %if.else, label %if.then41, !dbg !409

if.then41:                                        ; preds = %out_resume
  call void @xs_resume() #7, !dbg !410
  br label %if.end42, !dbg !410

if.else:                                          ; preds = %out_resume
  call void @xs_suspend_cancel() #7, !dbg !411
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then41
  %cancelled44 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %si, i32 0, i32 0, !dbg !412
  %17 = load i32, i32* %cancelled44, align 4, !dbg !412
  %tobool45 = icmp ne i32 %17, 0, !dbg !413
  br i1 %tobool45, label %cond.true46, label %cond.false48, !dbg !413

cond.true46:                                      ; preds = %if.end42
  %event47 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %agg.tmp43, i32 0, i32 0, !dbg !414
  store i32 32, i32* %event47, align 4, !dbg !414
  br label %cond.end50, !dbg !413

cond.false48:                                     ; preds = %if.end42
  %event49 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %agg.tmp43, i32 0, i32 0, !dbg !415
  store i32 64, i32* %event49, align 4, !dbg !415
  br label %cond.end50, !dbg !413

cond.end50:                                       ; preds = %cond.false48, %cond.true46
  %coerce.dive51 = getelementptr inbounds %struct.pm_message, %struct.pm_message* %agg.tmp43, i32 0, i32 0, !dbg !416
  %18 = load i32, i32* %coerce.dive51, align 4, !dbg !416
  call void @dpm_resume_end(i32 %18) #7, !dbg !416
  br label %out_thaw, !dbg !416

out_thaw:                                         ; preds = %cond.end50, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !417), !dbg !418
  call void @thaw_processes() #7, !dbg !419
  br label %out, !dbg !419

out:                                              ; preds = %out_thaw, %if.then
  call void @llvm.dbg.label(metadata !420), !dbg !421
  store i32 -1, i32* @shutting_down, align 4, !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noredzone
declare dso_local void @orderly_poweroff(i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @ctrl_alt_del() #2

; Function Attrs: noredzone
declare dso_local i32 @freeze_processes() #2

; Function Attrs: noredzone
declare dso_local i32 @freeze_kernel_threads() #2

; Function Attrs: noredzone
declare dso_local i32 @dpm_suspend_start(i32) #2

; Function Attrs: noredzone
declare dso_local void @xs_suspend() #2

; Function Attrs: noredzone
declare dso_local i32 @dpm_suspend_end(i32) #2

; Function Attrs: noredzone
declare dso_local void @xen_arch_suspend() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stop_machine(i32 (i8*)* %fn, i8* %data, %struct.cpumask* %cpus) #0 !dbg !424 {
entry:
  %fn.addr = alloca i32 (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %cpus.addr = alloca %struct.cpumask*, align 8
  store i32 (i8*)* %fn, i32 (i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %fn.addr, metadata !434, metadata !DIExpression()), !dbg !435
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !436, metadata !DIExpression()), !dbg !437
  store %struct.cpumask* %cpus, %struct.cpumask** %cpus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpus.addr, metadata !438, metadata !DIExpression()), !dbg !439
  %0 = load i32 (i8*)*, i32 (i8*)** %fn.addr, align 8, !dbg !440
  %1 = load i8*, i8** %data.addr, align 8, !dbg !441
  %2 = load %struct.cpumask*, %struct.cpumask** %cpus.addr, align 8, !dbg !442
  %call = call i32 @stop_machine_cpuslocked(i32 (i8*)* %0, i8* %1, %struct.cpumask* %2) #7, !dbg !443
  ret i32 %call, !dbg !444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_suspend(i8* %data) #0 !dbg !445 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !446, metadata !DIExpression()), !dbg !451
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %si = alloca %struct.suspend_info*, align 8
  %err = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata %struct.suspend_info** %si, metadata !459, metadata !DIExpression()), !dbg !461
  %0 = load i8*, i8** %data.addr, align 8, !dbg !462
  %1 = bitcast i8* %0 to %struct.suspend_info*, !dbg !462
  store %struct.suspend_info* %1, %struct.suspend_info** %si, align 8, !dbg !461
  call void @llvm.dbg.declare(metadata i32* %err, metadata !463, metadata !DIExpression()), !dbg !464
  br label %do.body, !dbg !465

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !466, metadata !DIExpression()), !dbg !467
  br label %do.body1, !dbg !467

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !468, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !472, metadata !DIExpression()), !dbg !471
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !471
  %conv = zext i1 %cmp to i32, !dbg !471
  store i32 1, i32* %tmp, align 4, !dbg !471
  %2 = load i32, i32* %tmp, align 4, !dbg !471
  %call = call i64 @arch_local_save_flags() #7, !dbg !473
  store i64 %call, i64* %_flags, align 8, !dbg !473
  br label %do.end, !dbg !473

do.end:                                           ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !474, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !477, metadata !DIExpression()), !dbg !476
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !476
  %conv6 = zext i1 %cmp5 to i32, !dbg !476
  store i32 1, i32* %tmp7, align 4, !dbg !476
  %3 = load i32, i32* %tmp7, align 4, !dbg !476
  %4 = load i64, i64* %_flags, align 8, !dbg !478
  store i64 %4, i64* %flags.addr.i, align 8
  %5 = load i64, i64* %flags.addr.i, align 8, !dbg !479
  %and.i = and i64 %5, 512, !dbg !480
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !481
  %lnot.i = xor i1 %tobool.i, true, !dbg !481
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !481
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !478
  %6 = load i32, i32* %tmp8, align 4, !dbg !478
  store i32 %6, i32* %tmp2, align 4, !dbg !473
  %7 = load i32, i32* %tmp2, align 4, !dbg !467
  %tobool = icmp ne i32 %7, 0, !dbg !482
  %lnot = xor i1 %tobool, true, !dbg !482
  %lnot10 = xor i1 %lnot, true, !dbg !482
  %lnot11 = xor i1 %lnot10, true, !dbg !482
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !482
  %conv12 = sext i32 %lnot.ext to i64, !dbg !482
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !482
  br i1 %tobool13, label %if.then, label %if.end, !dbg !483

if.then:                                          ; preds = %do.end
  br label %do.body14, !dbg !482

do.body14:                                        ; preds = %if.then
  br label %do.body15, !dbg !484

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !486

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !484

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 67, i32 0, i64 12) #5, !dbg !488, !srcloc !490
  br label %do.end18, !dbg !488

do.end18:                                         ; preds = %do.body17
  br label %do.body19, !dbg !484

do.body19:                                        ; preds = %do.end18
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #5, !dbg !491, !srcloc !494
  unreachable, !dbg !495

do.end20:                                         ; No predecessors!
  br label %do.end21, !dbg !484

do.end21:                                         ; preds = %do.end20
  br label %if.end, !dbg !484

if.end:                                           ; preds = %do.end21, %do.end
  br label %do.end22, !dbg !483

do.end22:                                         ; preds = %if.end
  %call23 = call i32 @syscore_suspend() #7, !dbg !496
  store i32 %call23, i32* %err, align 4, !dbg !497
  %8 = load i32, i32* %err, align 4, !dbg !498
  %tobool24 = icmp ne i32 %8, 0, !dbg !498
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !500

if.then25:                                        ; preds = %do.end22
  %9 = load i32, i32* %err, align 4, !dbg !501
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.xen_suspend, i64 0, i64 0), i32 %9) #8, !dbg !501
  %10 = load i32, i32* %err, align 4, !dbg !503
  store i32 %10, i32* %retval, align 4, !dbg !504
  br label %return, !dbg !504

if.end27:                                         ; preds = %do.end22
  %call28 = call i32 @gnttab_suspend() #7, !dbg !505
  call void @xen_manage_runstate_time(i32 -1) #7, !dbg !506
  call void @xen_arch_pre_suspend() #7, !dbg !507
  %11 = load i32, i32* @xen_domain_type, align 4, !dbg !508
  %cmp29 = icmp eq i32 %11, 1, !dbg !508
  br i1 %cmp29, label %cond.true, label %cond.false, !dbg !508

cond.true:                                        ; preds = %if.end27
  %12 = load %struct.start_info*, %struct.start_info** @xen_start_info, align 8, !dbg !509
  %13 = ptrtoint %struct.start_info* %12 to i64, !dbg !509
  %call31 = call i64 @__phys_addr_nodebug(i64 %13) #7, !dbg !509
  %shr = lshr i64 %call31, 12, !dbg !509
  %call32 = call i64 @pfn_to_gfn(i64 %shr) #7, !dbg !509
  br label %cond.end, !dbg !508

cond.false:                                       ; preds = %if.end27
  br label %cond.end, !dbg !508

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call32, %cond.true ], [ 0, %cond.false ], !dbg !508
  %call33 = call i32 @HYPERVISOR_suspend(i64 %cond) #7, !dbg !510
  %14 = load %struct.suspend_info*, %struct.suspend_info** %si, align 8, !dbg !511
  %cancelled = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %14, i32 0, i32 0, !dbg !512
  store i32 %call33, i32* %cancelled, align 4, !dbg !513
  %15 = load %struct.suspend_info*, %struct.suspend_info** %si, align 8, !dbg !514
  %cancelled34 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %15, i32 0, i32 0, !dbg !515
  %16 = load i32, i32* %cancelled34, align 4, !dbg !515
  call void @xen_arch_post_suspend(i32 %16) #7, !dbg !516
  %17 = load %struct.suspend_info*, %struct.suspend_info** %si, align 8, !dbg !517
  %cancelled35 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %17, i32 0, i32 0, !dbg !518
  %18 = load i32, i32* %cancelled35, align 4, !dbg !518
  %tobool36 = icmp ne i32 %18, 0, !dbg !517
  %19 = zext i1 %tobool36 to i64, !dbg !517
  %cond37 = select i1 %tobool36, i32 1, i32 0, !dbg !517
  call void @xen_manage_runstate_time(i32 %cond37) #7, !dbg !519
  %call38 = call i32 @gnttab_resume() #7, !dbg !520
  %20 = load %struct.suspend_info*, %struct.suspend_info** %si, align 8, !dbg !521
  %cancelled39 = getelementptr inbounds %struct.suspend_info, %struct.suspend_info* %20, i32 0, i32 0, !dbg !523
  %21 = load i32, i32* %cancelled39, align 4, !dbg !523
  %tobool40 = icmp ne i32 %21, 0, !dbg !521
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !524

if.then41:                                        ; preds = %cond.end
  call void @xen_irq_resume() #7, !dbg !525
  call void @xen_timer_resume() #7, !dbg !527
  br label %if.end42, !dbg !528

if.end42:                                         ; preds = %if.then41, %cond.end
  call void @syscore_resume() #7, !dbg !529
  store i32 0, i32* %retval, align 4, !dbg !530
  br label %return, !dbg !530

return:                                           ; preds = %if.end42, %if.then25
  %22 = load i32, i32* %retval, align 4, !dbg !531
  ret i32 %22, !dbg !531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpumask* @get_cpu_mask(i32 %cpu) #0 !dbg !532 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca i64*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata i64** %p, metadata !537, metadata !DIExpression()), !dbg !540
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !541
  %rem = urem i32 %0, 64, !dbg !542
  %add = add i32 1, %rem, !dbg !543
  %idxprom = zext i32 %add to i64, !dbg !544
  %arrayidx = getelementptr [65 x [1 x i64]], [65 x [1 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !544
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i64 0, i64 0, !dbg !544
  store i64* %arraydecay, i64** %p, align 8, !dbg !540
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !545
  %div = udiv i32 %1, 64, !dbg !546
  %2 = load i64*, i64** %p, align 8, !dbg !547
  %idx.ext = zext i32 %div to i64, !dbg !547
  %idx.neg = sub i64 0, %idx.ext, !dbg !547
  %add.ptr = getelementptr i64, i64* %2, i64 %idx.neg, !dbg !547
  store i64* %add.ptr, i64** %p, align 8, !dbg !547
  %3 = load i64*, i64** %p, align 8, !dbg !548
  %4 = bitcast i64* %3 to i8*, !dbg !548
  %5 = bitcast i8* %4 to %struct.cpumask*, !dbg !548
  ret %struct.cpumask* %5, !dbg !549
}

; Function Attrs: noredzone
declare dso_local void @xen_console_resume() #2

; Function Attrs: noredzone
declare dso_local i32 @raw_notifier_call_chain(%struct.raw_notifier_head*, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local void @dpm_resume_start(i32) #2

; Function Attrs: noredzone
declare dso_local void @xen_arch_resume() #2

; Function Attrs: noredzone
declare dso_local void @xs_resume() #2

; Function Attrs: noredzone
declare dso_local void @xs_suspend_cancel() #2

; Function Attrs: noredzone
declare dso_local void @dpm_resume_end(i32) #2

; Function Attrs: noredzone
declare dso_local void @thaw_processes() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @stop_machine_cpuslocked(i32 (i8*)* %fn, i8* %data, %struct.cpumask* %cpus) #0 !dbg !550 {
entry:
  %fn.addr = alloca i32 (i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %cpus.addr = alloca %struct.cpumask*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store i32 (i8*)* %fn, i32 (i8*)** %fn.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*)** %fn.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store %struct.cpumask* %cpus, %struct.cpumask** %cpus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpus.addr, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !559, metadata !DIExpression()), !dbg !560
  br label %do.body, !dbg !561

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !562

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !564, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !568, metadata !DIExpression()), !dbg !567
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !567
  %conv = zext i1 %cmp to i32, !dbg !567
  store i32 1, i32* %tmp, align 4, !dbg !567
  %0 = load i32, i32* %tmp, align 4, !dbg !567
  %call = call i64 @arch_local_irq_save() #7, !dbg !569
  store i64 %call, i64* %flags, align 8, !dbg !569
  br label %do.end, !dbg !569

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !562

do.end2:                                          ; preds = %do.end
  %1 = load i32 (i8*)*, i32 (i8*)** %fn.addr, align 8, !dbg !570
  %2 = load i8*, i8** %data.addr, align 8, !dbg !571
  %call3 = call i32 %1(i8* %2) #7, !dbg !570
  store i32 %call3, i32* %ret, align 4, !dbg !572
  br label %do.body4, !dbg !573

do.body4:                                         ; preds = %do.end2
  br label %do.body5, !dbg !574

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !576, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !580, metadata !DIExpression()), !dbg !579
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !579
  %conv9 = zext i1 %cmp8 to i32, !dbg !579
  store i32 1, i32* %tmp10, align 4, !dbg !579
  %3 = load i32, i32* %tmp10, align 4, !dbg !579
  %4 = load i64, i64* %flags, align 8, !dbg !581
  call void @arch_local_irq_restore(i64 %4) #7, !dbg !581
  br label %do.end11, !dbg !581

do.end11:                                         ; preds = %do.body5
  br label %do.end12, !dbg !574

do.end12:                                         ; preds = %do.end11
  %5 = load i32, i32* %ret, align 4, !dbg !582
  ret i32 %5, !dbg !583
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !584 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !588, metadata !DIExpression()), !dbg !589
  %call = call i64 @arch_local_save_flags() #7, !dbg !590
  store i64 %call, i64* %f, align 8, !dbg !591
  call void @arch_local_irq_disable() #7, !dbg !592
  %0 = load i64, i64* %f, align 8, !dbg !593
  ret i64 %0, !dbg !594
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !595 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !600, metadata !DIExpression()), !dbg !602
  %0 = load i64, i64* %__edi, align 8, !dbg !602
  store i64 %0, i64* %__edi, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !603, metadata !DIExpression()), !dbg !602
  %1 = load i64, i64* %__esi, align 8, !dbg !602
  store i64 %1, i64* %__esi, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !604, metadata !DIExpression()), !dbg !602
  %2 = load i64, i64* %__edx, align 8, !dbg !602
  store i64 %2, i64* %__edx, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !605, metadata !DIExpression()), !dbg !602
  %3 = load i64, i64* %__ecx, align 8, !dbg !602
  store i64 %3, i64* %__ecx, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !606, metadata !DIExpression()), !dbg !602
  %4 = load i64, i64* %__eax, align 8, !dbg !602
  store i64 %4, i64* %__eax, align 8, !dbg !602
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !602
  %6 = call i64 @llvm.read_register.i64(metadata !102), !dbg !602
  %7 = load i64, i64* %f.addr, align 8, !dbg !602
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !602, !srcloc !607
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !602
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !602
  store i64 %asmresult, i64* %__eax, align 8, !dbg !602
  call void @llvm.write_register.i64(metadata !102, i64 %asmresult1), !dbg !602
  ret void, !dbg !608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !609 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !610, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !613, metadata !DIExpression()), !dbg !612
  %0 = load i64, i64* %__edi, align 8, !dbg !612
  store i64 %0, i64* %__edi, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !614, metadata !DIExpression()), !dbg !612
  %1 = load i64, i64* %__esi, align 8, !dbg !612
  store i64 %1, i64* %__esi, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !615, metadata !DIExpression()), !dbg !612
  %2 = load i64, i64* %__edx, align 8, !dbg !612
  store i64 %2, i64* %__edx, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !616, metadata !DIExpression()), !dbg !612
  %3 = load i64, i64* %__ecx, align 8, !dbg !612
  store i64 %3, i64* %__ecx, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !617, metadata !DIExpression()), !dbg !612
  %4 = load i64, i64* %__eax, align 8, !dbg !612
  store i64 %4, i64* %__eax, align 8, !dbg !612
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !612
  %6 = call i64 @llvm.read_register.i64(metadata !102), !dbg !618
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !618, !srcloc !621
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !618
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !618
  store i64 %asmresult, i64* %__eax, align 8, !dbg !618
  call void @llvm.write_register.i64(metadata !102, i64 %asmresult1), !dbg !618
  %8 = load i64, i64* %__eax, align 8, !dbg !618
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !622, metadata !DIExpression()), !dbg !624
  store i64 -1, i64* %__mask, align 8, !dbg !624
  %9 = load i64, i64* %__mask, align 8, !dbg !624
  store i64 %9, i64* %tmp, align 8, !dbg !624
  %10 = load i64, i64* %tmp, align 8, !dbg !624
  %and = and i64 %8, %10, !dbg !618
  store i64 %and, i64* %__ret, align 8, !dbg !618
  %11 = load i64, i64* %__ret, align 8, !dbg !612
  store i64 %11, i64* %tmp2, align 8, !dbg !625
  %12 = load i64, i64* %tmp2, align 8, !dbg !612
  ret i64 %12, !dbg !626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !627 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !628, metadata !DIExpression()), !dbg !630
  %0 = load i64, i64* %__edi, align 8, !dbg !630
  store i64 %0, i64* %__edi, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !631, metadata !DIExpression()), !dbg !630
  %1 = load i64, i64* %__esi, align 8, !dbg !630
  store i64 %1, i64* %__esi, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !632, metadata !DIExpression()), !dbg !630
  %2 = load i64, i64* %__edx, align 8, !dbg !630
  store i64 %2, i64* %__edx, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !633, metadata !DIExpression()), !dbg !630
  %3 = load i64, i64* %__ecx, align 8, !dbg !630
  store i64 %3, i64* %__ecx, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !634, metadata !DIExpression()), !dbg !630
  %4 = load i64, i64* %__eax, align 8, !dbg !630
  store i64 %4, i64* %__eax, align 8, !dbg !630
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !630
  %6 = call i64 @llvm.read_register.i64(metadata !102), !dbg !630
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !630, !srcloc !635
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !630
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !630
  store i64 %asmresult, i64* %__eax, align 8, !dbg !630
  call void @llvm.write_register.i64(metadata !102, i64 %asmresult1), !dbg !630
  ret void, !dbg !636
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noredzone
declare dso_local i32 @syscore_suspend() #2

; Function Attrs: noredzone
declare dso_local i32 @gnttab_suspend() #2

; Function Attrs: noredzone
declare dso_local void @xen_manage_runstate_time(i32) #2

; Function Attrs: noredzone
declare dso_local void @xen_arch_pre_suspend() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_suspend(i64 %start_info_mfn) #0 !dbg !637 {
entry:
  %start_info_mfn.addr = alloca i64, align 8
  %r = alloca %struct.sched_shutdown, align 4
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i64 %start_info_mfn, i64* %start_info_mfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_info_mfn.addr, metadata !639, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.declare(metadata %struct.sched_shutdown* %r, metadata !641, metadata !DIExpression()), !dbg !646
  %0 = bitcast %struct.sched_shutdown* %r to i8*, !dbg !646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%struct.sched_shutdown* @__const.HYPERVISOR_suspend.r to i8*), i64 4, i1 false), !dbg !646
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !647, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !650, metadata !DIExpression()), !dbg !649
  %1 = load i64, i64* %__arg1, align 8, !dbg !649
  store i64 %1, i64* %__arg1, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !651, metadata !DIExpression()), !dbg !649
  %2 = load i64, i64* %__arg2, align 8, !dbg !649
  store i64 %2, i64* %__arg2, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !652, metadata !DIExpression()), !dbg !649
  %3 = load i64, i64* %__arg3, align 8, !dbg !649
  store i64 %3, i64* %__arg3, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !653, metadata !DIExpression()), !dbg !649
  %4 = load i64, i64* %__arg4, align 8, !dbg !649
  store i64 %4, i64* %__arg4, align 8, !dbg !649
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !654, metadata !DIExpression()), !dbg !649
  %5 = load i64, i64* %__arg5, align 8, !dbg !649
  store i64 %5, i64* %__arg5, align 8, !dbg !649
  store i64 2, i64* %__arg1, align 8, !dbg !649
  %6 = ptrtoint %struct.sched_shutdown* %r to i64, !dbg !649
  store i64 %6, i64* %__arg2, align 8, !dbg !649
  %7 = load i64, i64* %start_info_mfn.addr, align 8, !dbg !649
  store i64 %7, i64* %__arg3, align 8, !dbg !649
  %8 = call i64 @llvm.read_register.i64(metadata !102), !dbg !649
  %9 = load i64, i64* %__arg1, align 8, !dbg !649
  %10 = load i64, i64* %__arg2, align 8, !dbg !649
  %11 = load i64, i64* %__arg3, align 8, !dbg !649
  %12 = call { i64, i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${5:c}", "={rax},={rsp},={rdi},={rsi},={rdx},i,1,2,3,4,~{memory},~{r8},~{r10},~{dirflag},~{fpsr},~{flags}"(i64 928, i64 %8, i64 %9, i64 %10, i64 %11) #5, !dbg !649, !srcloc !655
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %12, 0, !dbg !649
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %12, 1, !dbg !649
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %12, 2, !dbg !649
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %12, 3, !dbg !649
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %12, 4, !dbg !649
  store i64 %asmresult, i64* %__res, align 8, !dbg !649
  call void @llvm.write_register.i64(metadata !102, i64 %asmresult1), !dbg !649
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !649
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !649
  store i64 %asmresult4, i64* %__arg3, align 8, !dbg !649
  %13 = load i64, i64* %__res, align 8, !dbg !649
  %conv = trunc i64 %13 to i32, !dbg !649
  store i32 %conv, i32* %tmp, align 4, !dbg !649
  %14 = load i32, i32* %tmp, align 4, !dbg !649
  ret i32 %14, !dbg !656
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #0 !dbg !657 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !661, metadata !DIExpression()), !dbg !662
  %call = call i32 @xen_feature(i32 2) #7, !dbg !663
  %tobool = icmp ne i32 %call, 0, !dbg !663
  br i1 %tobool, label %if.then, label %if.else, !dbg !665

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !666
  store i64 %0, i64* %retval, align 8, !dbg !667
  br label %return, !dbg !667

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !668
  %call1 = call i64 @pfn_to_mfn(i64 %1) #7, !dbg !669
  store i64 %call1, i64* %retval, align 8, !dbg !670
  br label %return, !dbg !670

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !671
  ret i64 %2, !dbg !671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !672 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !674, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.declare(metadata i64* %y, metadata !676, metadata !DIExpression()), !dbg !677
  %0 = load i64, i64* %x.addr, align 8, !dbg !678
  %sub = sub i64 %0, -2147483648, !dbg !679
  store i64 %sub, i64* %y, align 8, !dbg !677
  %1 = load i64, i64* %y, align 8, !dbg !680
  %2 = load i64, i64* %x.addr, align 8, !dbg !681
  %3 = load i64, i64* %y, align 8, !dbg !682
  %cmp = icmp ugt i64 %2, %3, !dbg !683
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !684

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !685
  br label %cond.end, !dbg !684

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !686
  %sub1 = sub i64 -2147483648, %5, !dbg !687
  br label %cond.end, !dbg !684

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !684
  %add = add i64 %1, %cond, !dbg !688
  store i64 %add, i64* %x.addr, align 8, !dbg !689
  %6 = load i64, i64* %x.addr, align 8, !dbg !690
  ret i64 %6, !dbg !691
}

; Function Attrs: noredzone
declare dso_local void @xen_arch_post_suspend(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @gnttab_resume() #2

; Function Attrs: noredzone
declare dso_local void @xen_irq_resume() #2

; Function Attrs: noredzone
declare dso_local void @xen_timer_resume() #2

; Function Attrs: noredzone
declare dso_local void @syscore_resume() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #0 !dbg !692 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !696, metadata !DIExpression()), !dbg !697
  %0 = load i32, i32* %flag.addr, align 4, !dbg !698
  %idxprom = sext i32 %0 to i64, !dbg !699
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !699
  %1 = load i8, i8* %arrayidx, align 1, !dbg !699
  %conv = zext i8 %1 to i32, !dbg !699
  ret i32 %conv, !dbg !700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #0 !dbg !701 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !702, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !704, metadata !DIExpression()), !dbg !705
  %call = call i32 @xen_feature(i32 2) #7, !dbg !706
  %tobool = icmp ne i32 %call, 0, !dbg !706
  br i1 %tobool, label %if.then, label %if.end, !dbg !708

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !709
  store i64 %0, i64* %retval, align 8, !dbg !710
  br label %return, !dbg !710

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !711
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #7, !dbg !712
  store i64 %call1, i64* %mfn, align 8, !dbg !713
  %2 = load i64, i64* %mfn, align 8, !dbg !714
  %cmp = icmp ne i64 %2, -1, !dbg !716
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !717

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !718
  %and = and i64 %3, 4611686018427387903, !dbg !718
  store i64 %and, i64* %mfn, align 8, !dbg !718
  br label %if.end3, !dbg !719

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !720
  store i64 %4, i64* %retval, align 8, !dbg !721
  br label %return, !dbg !721

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !722
  ret i64 %5, !dbg !722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #0 !dbg !723 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !724, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !726, metadata !DIExpression()), !dbg !727
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !728
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !730
  %cmp = icmp ult i64 %0, %1, !dbg !731
  br i1 %cmp, label %if.then, label %if.else, !dbg !732

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !733
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !734
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !733
  %4 = load i64, i64* %arrayidx, align 8, !dbg !733
  store i64 %4, i64* %mfn, align 8, !dbg !735
  br label %if.end, !dbg !736

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !737
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !737
  %cmp1 = icmp ult i64 %5, %6, !dbg !737
  %lnot = xor i1 %cmp1, true, !dbg !737
  %lnot2 = xor i1 %lnot, true, !dbg !737
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !737
  %conv = sext i32 %lnot.ext to i64, !dbg !737
  %tobool = icmp ne i64 %conv, 0, !dbg !737
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !739

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !740
  %call = call i64 @get_phys_to_machine(i64 %7) #7, !dbg !741
  store i64 %call, i64* %retval, align 8, !dbg !742
  br label %return, !dbg !742

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !743
  %or = or i64 %8, 4611686018427387904, !dbg !743
  store i64 %or, i64* %retval, align 8, !dbg !744
  br label %return, !dbg !744

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !745
  %cmp5 = icmp eq i64 %9, -1, !dbg !745
  %lnot7 = xor i1 %cmp5, true, !dbg !745
  %lnot9 = xor i1 %lnot7, true, !dbg !745
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !745
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !745
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !745
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !747

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !748
  %call14 = call i64 @get_phys_to_machine(i64 %10) #7, !dbg !749
  store i64 %call14, i64* %retval, align 8, !dbg !750
  br label %return, !dbg !750

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !751
  store i64 %11, i64* %retval, align 8, !dbg !752
  br label %return, !dbg !752

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !753
  ret i64 %12, !dbg !753
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @poweroff_nb(%struct.notifier_block* %cb, i64 %code, i8* %unused) #0 !dbg !754 {
entry:
  %cb.addr = alloca %struct.notifier_block*, align 8
  %code.addr = alloca i64, align 8
  %unused.addr = alloca i8*, align 8
  store %struct.notifier_block* %cb, %struct.notifier_block** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %cb.addr, metadata !755, metadata !DIExpression()), !dbg !756
  store i64 %code, i64* %code.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %code.addr, metadata !757, metadata !DIExpression()), !dbg !758
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !759, metadata !DIExpression()), !dbg !760
  %0 = load i64, i64* %code.addr, align 8, !dbg !761
  switch i64 %0, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb
    i64 3, label %sw.bb
  ], !dbg !762

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 0, i32* @shutting_down, align 4, !dbg !763
  br label %sw.default, !dbg !765

sw.default:                                       ; preds = %entry, %sw.bb
  br label %sw.epilog, !dbg !766

sw.epilog:                                        ; preds = %sw.default
  ret i32 0, !dbg !767
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xen_resume_notifier", scope: !2, file: !3, line: 47, type: !99, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/manage.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !6, line: 5, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "shutdown_state", file: !3, line: 29, baseType: !13, size: 32, elements: !14)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "SHUTDOWN_INVALID", value: -1)
!16 = !DIEnumerator(name: "SHUTDOWN_POWEROFF", value: 0)
!17 = !DIEnumerator(name: "SHUTDOWN_SUSPEND", value: 2)
!18 = !DIEnumerator(name: "SHUTDOWN_HALT", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 10, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!24 = !{!13, !25, !27, !28, !29}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !31, line: 17, size: 64, elements: !32)
!31 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !30, file: !31, line: 17, baseType: !34, size: 64)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !{!38, !55, !0, !57, !77, !79, !97}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "xenstore_notifier", scope: !40, file: !3, line: 376, type: !44, isLocal: true, isDefinition: true)
!40 = distinct !DISubprogram(name: "xen_setup_shutdown_event", scope: !3, file: !3, line: 374, type: !41, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{!13}
!43 = !{}
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !45, line: 54, size: 192, elements: !46)
!45 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !53, !54}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !44, file: !45, line: 55, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !45, line: 51, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!13, !52, !27, !28}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !45, line: 56, baseType: !52, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !44, file: !45, line: 57, baseType: !13, size: 32, offset: 128)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xen_setup_shutdown_event239", scope: !2, file: !3, line: 389, type: !28, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "shutdown_watch", scope: !2, file: !3, line: 319, type: !59, isLocal: true, isDefinition: true)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !60, line: 57, size: 256, elements: !61)
!60 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !69, !72}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !59, file: !60, line: 59, baseType: !63, size: 128)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 178, size: 128, elements: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !63, file: !64, line: 179, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !63, file: !64, line: 179, baseType: !67, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !59, file: !60, line: 62, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !59, file: !60, line: 65, baseType: !73, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !76, !70, !70}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "shutting_down", scope: !2, file: !3, line: 41, type: !12, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "shutdown_handlers", scope: !2, file: !3, line: 210, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 768, elements: !95)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shutdown_handler", file: !3, line: 168, size: 192, elements: !83)
!83 = !{!84, !88, !91}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !82, file: !3, line: 170, baseType: !85, size: 88)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 88, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 11)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !82, file: !3, line: 171, baseType: !89, size: 8, offset: 88)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 30, baseType: !90)
!90 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !82, file: !3, line: 172, baseType: !92, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null}
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "xen_reboot_nb", scope: !2, file: !3, line: 324, type: !44, isLocal: true, isDefinition: true)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_notifier_head", file: !45, line: 70, size: 64, elements: !100)
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !99, file: !45, line: 71, baseType: !52, size: 64)
!102 = !{!"rsp"}
!103 = !{i32 7, !"Dwarf Version", i32 4}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"Code Model", i32 2}
!107 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!108 = distinct !DISubprogram(name: "xen_resume_notifier_register", scope: !3, file: !3, line: 49, type: !109, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !52}
!111 = !DILocalVariable(name: "nb", arg: 1, scope: !108, file: !3, line: 49, type: !52)
!112 = !DILocation(line: 49, column: 58, scope: !108)
!113 = !DILocation(line: 51, column: 52, scope: !108)
!114 = !DILocation(line: 51, column: 2, scope: !108)
!115 = !DILocation(line: 52, column: 1, scope: !108)
!116 = distinct !DISubprogram(name: "xen_resume_notifier_unregister", scope: !3, file: !3, line: 55, type: !109, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!117 = !DILocalVariable(name: "nb", arg: 1, scope: !116, file: !3, line: 55, type: !52)
!118 = !DILocation(line: 55, column: 60, scope: !116)
!119 = !DILocation(line: 57, column: 54, scope: !116)
!120 = !DILocation(line: 57, column: 2, scope: !116)
!121 = !DILocation(line: 58, column: 1, scope: !116)
!122 = !DILocation(line: 380, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !40, file: !3, line: 380, column: 6)
!124 = !DILocation(line: 380, column: 6, scope: !40)
!125 = !DILocation(line: 381, column: 3, scope: !123)
!126 = !DILocation(line: 382, column: 2, scope: !40)
!127 = !DILocation(line: 383, column: 2, scope: !40)
!128 = !DILocation(line: 385, column: 2, scope: !40)
!129 = !DILocation(line: 386, column: 1, scope: !40)
!130 = distinct !DISubprogram(name: "shutdown_event", scope: !3, file: !3, line: 366, type: !50, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!131 = !DILocalVariable(name: "notifier", arg: 1, scope: !130, file: !3, line: 366, type: !52)
!132 = !DILocation(line: 366, column: 50, scope: !130)
!133 = !DILocalVariable(name: "event", arg: 2, scope: !130, file: !3, line: 367, type: !27)
!134 = !DILocation(line: 367, column: 20, scope: !130)
!135 = !DILocalVariable(name: "data", arg: 3, scope: !130, file: !3, line: 368, type: !28)
!136 = !DILocation(line: 368, column: 12, scope: !130)
!137 = !DILocation(line: 370, column: 2, scope: !130)
!138 = !DILocation(line: 371, column: 2, scope: !130)
!139 = distinct !DISubprogram(name: "setup_shutdown_watcher", scope: !3, file: !3, line: 328, type: !41, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!140 = !DILocalVariable(name: "err", scope: !139, file: !3, line: 330, type: !13)
!141 = !DILocation(line: 330, column: 6, scope: !139)
!142 = !DILocalVariable(name: "idx", scope: !139, file: !3, line: 331, type: !13)
!143 = !DILocation(line: 331, column: 6, scope: !139)
!144 = !DILocalVariable(name: "node", scope: !139, file: !3, line: 333, type: !145)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 20)
!148 = !DILocation(line: 333, column: 7, scope: !139)
!149 = !DILocation(line: 335, column: 8, scope: !139)
!150 = !DILocation(line: 335, column: 6, scope: !139)
!151 = !DILocation(line: 336, column: 6, scope: !152)
!152 = distinct !DILexicalBlock(scope: !139, file: !3, line: 336, column: 6)
!153 = !DILocation(line: 336, column: 6, scope: !139)
!154 = !DILocation(line: 337, column: 3, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 336, column: 11)
!156 = !DILocation(line: 338, column: 10, scope: !155)
!157 = !DILocation(line: 338, column: 3, scope: !155)
!158 = !DILocation(line: 350, column: 11, scope: !159)
!159 = distinct !DILexicalBlock(scope: !139, file: !3, line: 350, column: 2)
!160 = !DILocation(line: 350, column: 7, scope: !159)
!161 = !DILocation(line: 350, column: 16, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 350, column: 2)
!163 = !DILocation(line: 350, column: 20, scope: !162)
!164 = !DILocation(line: 350, column: 2, scope: !159)
!165 = !DILocation(line: 351, column: 26, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 351, column: 7)
!167 = distinct !DILexicalBlock(scope: !162, file: !3, line: 350, column: 60)
!168 = !DILocation(line: 351, column: 8, scope: !166)
!169 = !DILocation(line: 351, column: 31, scope: !166)
!170 = !DILocation(line: 351, column: 7, scope: !167)
!171 = !DILocation(line: 352, column: 4, scope: !166)
!172 = !DILocation(line: 353, column: 12, scope: !167)
!173 = !DILocation(line: 354, column: 23, scope: !167)
!174 = !DILocation(line: 354, column: 5, scope: !167)
!175 = !DILocation(line: 354, column: 28, scope: !167)
!176 = !DILocation(line: 353, column: 3, scope: !167)
!177 = !DILocation(line: 355, column: 23, scope: !167)
!178 = !DILocation(line: 355, column: 43, scope: !167)
!179 = !DILocation(line: 355, column: 9, scope: !167)
!180 = !DILocation(line: 355, column: 7, scope: !167)
!181 = !DILocation(line: 356, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !167, file: !3, line: 356, column: 7)
!183 = !DILocation(line: 356, column: 7, scope: !167)
!184 = !DILocation(line: 357, column: 4, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 356, column: 12)
!186 = !DILocation(line: 359, column: 11, scope: !185)
!187 = !DILocation(line: 359, column: 4, scope: !185)
!188 = !DILocation(line: 361, column: 2, scope: !167)
!189 = !DILocation(line: 350, column: 56, scope: !162)
!190 = !DILocation(line: 350, column: 2, scope: !162)
!191 = distinct !{!191, !164, !192}
!192 = !DILocation(line: 361, column: 2, scope: !159)
!193 = !DILocation(line: 363, column: 2, scope: !139)
!194 = !DILocation(line: 364, column: 1, scope: !139)
!195 = distinct !DISubprogram(name: "shutdown_handler", scope: !3, file: !3, line: 219, type: !74, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!196 = !DILocalVariable(name: "watch", arg: 1, scope: !195, file: !3, line: 219, type: !76)
!197 = !DILocation(line: 219, column: 51, scope: !195)
!198 = !DILocalVariable(name: "path", arg: 2, scope: !195, file: !3, line: 220, type: !70)
!199 = !DILocation(line: 220, column: 21, scope: !195)
!200 = !DILocalVariable(name: "token", arg: 3, scope: !195, file: !3, line: 220, type: !70)
!201 = !DILocation(line: 220, column: 39, scope: !195)
!202 = !DILocalVariable(name: "str", scope: !195, file: !3, line: 222, type: !25)
!203 = !DILocation(line: 222, column: 8, scope: !195)
!204 = !DILocalVariable(name: "xbt", scope: !195, file: !3, line: 223, type: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_transaction", file: !60, line: 133, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !205, file: !60, line: 135, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !209, line: 21, baseType: !210)
!209 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !211, line: 27, baseType: !7)
!211 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DILocation(line: 223, column: 28, scope: !195)
!213 = !DILocalVariable(name: "err", scope: !195, file: !3, line: 224, type: !13)
!214 = !DILocation(line: 224, column: 6, scope: !195)
!215 = !DILocalVariable(name: "idx", scope: !195, file: !3, line: 225, type: !13)
!216 = !DILocation(line: 225, column: 6, scope: !195)
!217 = !DILocation(line: 227, column: 6, scope: !218)
!218 = distinct !DILexicalBlock(scope: !195, file: !3, line: 227, column: 6)
!219 = !DILocation(line: 227, column: 20, scope: !218)
!220 = !DILocation(line: 227, column: 6, scope: !195)
!221 = !DILocation(line: 228, column: 3, scope: !218)
!222 = !DILocation(line: 227, column: 23, scope: !218)
!223 = !DILabel(scope: !195, name: "again", file: !3, line: 230)
!224 = !DILocation(line: 230, column: 2, scope: !195)
!225 = !DILocation(line: 231, column: 8, scope: !195)
!226 = !DILocation(line: 231, column: 6, scope: !195)
!227 = !DILocation(line: 232, column: 6, scope: !228)
!228 = distinct !DILexicalBlock(scope: !195, file: !3, line: 232, column: 6)
!229 = !DILocation(line: 232, column: 6, scope: !195)
!230 = !DILocation(line: 233, column: 3, scope: !228)
!231 = !DILocation(line: 235, column: 16, scope: !195)
!232 = !DILocation(line: 235, column: 6, scope: !195)
!233 = !DILocation(line: 237, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !235, file: !3, line: 237, column: 6)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 237, column: 6)
!236 = distinct !DILexicalBlock(scope: !195, file: !3, line: 237, column: 6)
!237 = !DILocation(line: 237, column: 6, scope: !235)
!238 = !DILocation(line: 237, column: 6, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 237, column: 6)
!240 = !DILocation(line: 237, column: 6, scope: !195)
!241 = !DILocation(line: 238, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !3, line: 237, column: 31)
!243 = !DILocation(line: 239, column: 3, scope: !242)
!244 = !DILocation(line: 242, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !195, file: !3, line: 242, column: 2)
!246 = !DILocation(line: 242, column: 7, scope: !245)
!247 = !DILocation(line: 242, column: 16, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 242, column: 2)
!249 = !DILocation(line: 242, column: 20, scope: !248)
!250 = !DILocation(line: 242, column: 2, scope: !245)
!251 = !DILocation(line: 243, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 243, column: 7)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 242, column: 60)
!254 = !DILocation(line: 243, column: 37, scope: !252)
!255 = !DILocation(line: 243, column: 19, scope: !252)
!256 = !DILocation(line: 243, column: 42, scope: !252)
!257 = !DILocation(line: 243, column: 7, scope: !252)
!258 = !DILocation(line: 243, column: 51, scope: !252)
!259 = !DILocation(line: 243, column: 7, scope: !253)
!260 = !DILocation(line: 244, column: 4, scope: !252)
!261 = !DILocation(line: 245, column: 2, scope: !253)
!262 = !DILocation(line: 242, column: 56, scope: !248)
!263 = !DILocation(line: 242, column: 2, scope: !248)
!264 = distinct !{!264, !250, !265}
!265 = !DILocation(line: 245, column: 2, scope: !245)
!266 = !DILocation(line: 248, column: 6, scope: !267)
!267 = distinct !DILexicalBlock(scope: !195, file: !3, line: 248, column: 6)
!268 = !DILocation(line: 248, column: 10, scope: !267)
!269 = !DILocation(line: 248, column: 6, scope: !195)
!270 = !DILocation(line: 249, column: 3, scope: !267)
!271 = !DILocation(line: 251, column: 8, scope: !195)
!272 = !DILocation(line: 251, column: 6, scope: !195)
!273 = !DILocation(line: 252, column: 6, scope: !274)
!274 = distinct !DILexicalBlock(scope: !195, file: !3, line: 252, column: 6)
!275 = !DILocation(line: 252, column: 10, scope: !274)
!276 = !DILocation(line: 252, column: 6, scope: !195)
!277 = !DILocation(line: 253, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 252, column: 22)
!279 = !DILocation(line: 253, column: 3, scope: !278)
!280 = !DILocation(line: 254, column: 3, scope: !278)
!281 = !DILocation(line: 257, column: 6, scope: !282)
!282 = distinct !DILexicalBlock(scope: !195, file: !3, line: 257, column: 6)
!283 = !DILocation(line: 257, column: 10, scope: !282)
!284 = !DILocation(line: 257, column: 6, scope: !195)
!285 = !DILocation(line: 258, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 257, column: 43)
!287 = !DILocation(line: 258, column: 3, scope: !286)
!288 = !DILocation(line: 258, column: 26, scope: !286)
!289 = !DILocation(line: 259, column: 2, scope: !286)
!290 = !DILocation(line: 260, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !282, file: !3, line: 259, column: 9)
!292 = !DILocation(line: 261, column: 17, scope: !291)
!293 = !DILocation(line: 264, column: 8, scope: !195)
!294 = !DILocation(line: 264, column: 2, scope: !195)
!295 = !DILocation(line: 265, column: 1, scope: !195)
!296 = distinct !DISubprogram(name: "IS_ERR", scope: !297, file: !297, line: 34, type: !298, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!297 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DISubroutineType(types: !299)
!299 = !{!89, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!302 = !DILocalVariable(name: "ptr", arg: 1, scope: !296, file: !297, line: 34, type: !300)
!303 = !DILocation(line: 34, column: 60, scope: !296)
!304 = !DILocation(line: 36, column: 9, scope: !296)
!305 = !DILocation(line: 36, column: 2, scope: !296)
!306 = distinct !DISubprogram(name: "ERR_PTR", scope: !297, file: !297, line: 24, type: !307, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!307 = !DISubroutineType(types: !308)
!308 = !{!28, !309}
!309 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!310 = !DILocalVariable(name: "error", arg: 1, scope: !306, file: !297, line: 24, type: !309)
!311 = !DILocation(line: 24, column: 48, scope: !306)
!312 = !DILocation(line: 26, column: 18, scope: !306)
!313 = !DILocation(line: 26, column: 9, scope: !306)
!314 = !DILocation(line: 26, column: 2, scope: !306)
!315 = distinct !DISubprogram(name: "do_poweroff", scope: !3, file: !3, line: 187, type: !93, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!316 = !DILocation(line: 189, column: 10, scope: !315)
!317 = !DILocation(line: 189, column: 2, scope: !315)
!318 = !DILocation(line: 192, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !3, line: 189, column: 24)
!320 = !DILocation(line: 193, column: 3, scope: !319)
!321 = !DILocation(line: 195, column: 3, scope: !319)
!322 = !DILocation(line: 196, column: 3, scope: !319)
!323 = !DILocation(line: 199, column: 3, scope: !319)
!324 = !DILocation(line: 200, column: 3, scope: !319)
!325 = !DILocation(line: 202, column: 1, scope: !315)
!326 = distinct !DISubprogram(name: "do_reboot", scope: !3, file: !3, line: 204, type: !93, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!327 = !DILocation(line: 206, column: 16, scope: !326)
!328 = !DILocation(line: 207, column: 2, scope: !326)
!329 = !DILocation(line: 208, column: 1, scope: !326)
!330 = distinct !DISubprogram(name: "do_suspend", scope: !3, file: !3, line: 97, type: !93, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!331 = !DILocalVariable(name: "err", scope: !330, file: !3, line: 99, type: !13)
!332 = !DILocation(line: 99, column: 6, scope: !330)
!333 = !DILocalVariable(name: "si", scope: !330, file: !3, line: 100, type: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "suspend_info", file: !3, line: 43, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled", scope: !334, file: !3, line: 44, baseType: !13, size: 32)
!337 = !DILocation(line: 100, column: 22, scope: !330)
!338 = !DILocation(line: 102, column: 16, scope: !330)
!339 = !DILocation(line: 104, column: 8, scope: !330)
!340 = !DILocation(line: 104, column: 6, scope: !330)
!341 = !DILocation(line: 105, column: 6, scope: !342)
!342 = distinct !DILexicalBlock(scope: !330, file: !3, line: 105, column: 6)
!343 = !DILocation(line: 105, column: 6, scope: !330)
!344 = !DILocation(line: 106, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !3, line: 105, column: 11)
!346 = !DILocation(line: 107, column: 3, scope: !345)
!347 = !DILocation(line: 110, column: 8, scope: !330)
!348 = !DILocation(line: 110, column: 6, scope: !330)
!349 = !DILocation(line: 111, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !330, file: !3, line: 111, column: 6)
!351 = !DILocation(line: 111, column: 6, scope: !330)
!352 = !DILocation(line: 112, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 111, column: 11)
!354 = !DILocation(line: 113, column: 3, scope: !353)
!355 = !DILocation(line: 116, column: 26, scope: !330)
!356 = !DILocation(line: 116, column: 8, scope: !330)
!357 = !DILocation(line: 116, column: 6, scope: !330)
!358 = !DILocation(line: 117, column: 6, scope: !359)
!359 = distinct !DILexicalBlock(scope: !330, file: !3, line: 117, column: 6)
!360 = !DILocation(line: 117, column: 6, scope: !330)
!361 = !DILocation(line: 118, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 117, column: 11)
!363 = !DILocation(line: 119, column: 3, scope: !362)
!364 = !DILocation(line: 122, column: 2, scope: !330)
!365 = !DILocation(line: 123, column: 2, scope: !330)
!366 = !DILocation(line: 125, column: 24, scope: !330)
!367 = !DILocation(line: 125, column: 8, scope: !330)
!368 = !DILocation(line: 125, column: 6, scope: !330)
!369 = !DILocation(line: 126, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !330, file: !3, line: 126, column: 6)
!371 = !DILocation(line: 126, column: 6, scope: !330)
!372 = !DILocation(line: 127, column: 3, scope: !373)
!373 = distinct !DILexicalBlock(scope: !370, file: !3, line: 126, column: 11)
!374 = !DILocation(line: 128, column: 6, scope: !373)
!375 = !DILocation(line: 128, column: 16, scope: !373)
!376 = !DILocation(line: 129, column: 3, scope: !373)
!377 = !DILocation(line: 132, column: 2, scope: !330)
!378 = !DILocation(line: 134, column: 5, scope: !330)
!379 = !DILocation(line: 134, column: 15, scope: !330)
!380 = !DILocation(line: 136, column: 34, scope: !330)
!381 = !DILocation(line: 136, column: 39, scope: !330)
!382 = !DILocation(line: 136, column: 8, scope: !330)
!383 = !DILocation(line: 136, column: 6, scope: !330)
!384 = !DILocation(line: 139, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !330, file: !3, line: 139, column: 6)
!386 = !DILocation(line: 139, column: 7, scope: !385)
!387 = !DILocation(line: 139, column: 6, scope: !330)
!388 = !DILocation(line: 140, column: 3, scope: !385)
!389 = !DILocation(line: 142, column: 2, scope: !330)
!390 = !DILocation(line: 144, column: 22, scope: !330)
!391 = !DILocation(line: 144, column: 19, scope: !330)
!392 = !DILocation(line: 144, column: 34, scope: !330)
!393 = !DILocation(line: 144, column: 46, scope: !330)
!394 = !DILocation(line: 144, column: 2, scope: !330)
!395 = !DILocation(line: 146, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !330, file: !3, line: 146, column: 6)
!397 = !DILocation(line: 146, column: 6, scope: !330)
!398 = !DILocation(line: 147, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !3, line: 146, column: 11)
!400 = !DILocation(line: 148, column: 6, scope: !399)
!401 = !DILocation(line: 148, column: 16, scope: !399)
!402 = !DILocation(line: 149, column: 2, scope: !399)
!403 = !DILocation(line: 151, column: 2, scope: !330)
!404 = !DILabel(scope: !330, name: "out_resume", file: !3, line: 153)
!405 = !DILocation(line: 153, column: 1, scope: !330)
!406 = !DILocation(line: 154, column: 10, scope: !407)
!407 = distinct !DILexicalBlock(scope: !330, file: !3, line: 154, column: 6)
!408 = !DILocation(line: 154, column: 7, scope: !407)
!409 = !DILocation(line: 154, column: 6, scope: !330)
!410 = !DILocation(line: 155, column: 3, scope: !407)
!411 = !DILocation(line: 157, column: 3, scope: !407)
!412 = !DILocation(line: 159, column: 20, scope: !330)
!413 = !DILocation(line: 159, column: 17, scope: !330)
!414 = !DILocation(line: 159, column: 32, scope: !330)
!415 = !DILocation(line: 159, column: 44, scope: !330)
!416 = !DILocation(line: 159, column: 2, scope: !330)
!417 = !DILabel(scope: !330, name: "out_thaw", file: !3, line: 161)
!418 = !DILocation(line: 161, column: 1, scope: !330)
!419 = !DILocation(line: 162, column: 2, scope: !330)
!420 = !DILabel(scope: !330, name: "out", file: !3, line: 163)
!421 = !DILocation(line: 163, column: 1, scope: !330)
!422 = !DILocation(line: 164, column: 16, scope: !330)
!423 = !DILocation(line: 165, column: 1, scope: !330)
!424 = distinct !DISubprogram(name: "stop_machine", scope: !425, file: !425, line: 137, type: !426, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!425 = !DIFile(filename: "./include/linux/stop_machine.h", directory: "/home/lizy2001/genbc/linux")
!426 = !DISubroutineType(types: !427)
!427 = !{!13, !428, !28, !432}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_stop_fn_t", file: !425, line: 20, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!13, !28}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!434 = !DILocalVariable(name: "fn", arg: 1, scope: !424, file: !425, line: 137, type: !428)
!435 = !DILocation(line: 137, column: 46, scope: !424)
!436 = !DILocalVariable(name: "data", arg: 2, scope: !424, file: !425, line: 137, type: !28)
!437 = !DILocation(line: 137, column: 56, scope: !424)
!438 = !DILocalVariable(name: "cpus", arg: 3, scope: !424, file: !425, line: 138, type: !432)
!439 = !DILocation(line: 138, column: 33, scope: !424)
!440 = !DILocation(line: 140, column: 33, scope: !424)
!441 = !DILocation(line: 140, column: 37, scope: !424)
!442 = !DILocation(line: 140, column: 43, scope: !424)
!443 = !DILocation(line: 140, column: 9, scope: !424)
!444 = !DILocation(line: 140, column: 2, scope: !424)
!445 = distinct !DISubprogram(name: "xen_suspend", scope: !3, file: !3, line: 62, type: !430, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!446 = !DILocalVariable(name: "flags", arg: 1, scope: !447, file: !448, line: 162, type: !27)
!447 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !448, file: !448, line: 162, type: !449, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!448 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!449 = !DISubroutineType(types: !450)
!450 = !{!13, !27}
!451 = !DILocation(line: 162, column: 67, scope: !447, inlinedAt: !452)
!452 = distinct !DILocation(line: 67, column: 2, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 67, column: 2)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 67, column: 2)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 67, column: 2)
!456 = distinct !DILexicalBlock(scope: !445, file: !3, line: 67, column: 2)
!457 = !DILocalVariable(name: "data", arg: 1, scope: !445, file: !3, line: 62, type: !28)
!458 = !DILocation(line: 62, column: 30, scope: !445)
!459 = !DILocalVariable(name: "si", scope: !445, file: !3, line: 64, type: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!461 = !DILocation(line: 64, column: 23, scope: !445)
!462 = !DILocation(line: 64, column: 28, scope: !445)
!463 = !DILocalVariable(name: "err", scope: !445, file: !3, line: 65, type: !13)
!464 = !DILocation(line: 65, column: 6, scope: !445)
!465 = !DILocation(line: 67, column: 2, scope: !445)
!466 = !DILocalVariable(name: "_flags", scope: !454, file: !3, line: 67, type: !27)
!467 = !DILocation(line: 67, column: 2, scope: !454)
!468 = !DILocalVariable(name: "__dummy", scope: !469, file: !3, line: 67, type: !27)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 67, column: 2)
!470 = distinct !DILexicalBlock(scope: !454, file: !3, line: 67, column: 2)
!471 = !DILocation(line: 67, column: 2, scope: !469)
!472 = !DILocalVariable(name: "__dummy2", scope: !469, file: !3, line: 67, type: !27)
!473 = !DILocation(line: 67, column: 2, scope: !470)
!474 = !DILocalVariable(name: "__dummy", scope: !475, file: !3, line: 67, type: !27)
!475 = distinct !DILexicalBlock(scope: !453, file: !3, line: 67, column: 2)
!476 = !DILocation(line: 67, column: 2, scope: !475)
!477 = !DILocalVariable(name: "__dummy2", scope: !475, file: !3, line: 67, type: !27)
!478 = !DILocation(line: 67, column: 2, scope: !453)
!479 = !DILocation(line: 164, column: 11, scope: !447, inlinedAt: !452)
!480 = !DILocation(line: 164, column: 17, scope: !447, inlinedAt: !452)
!481 = !DILocation(line: 164, column: 9, scope: !447, inlinedAt: !452)
!482 = !DILocation(line: 67, column: 2, scope: !455)
!483 = !DILocation(line: 67, column: 2, scope: !456)
!484 = !DILocation(line: 67, column: 2, scope: !485)
!485 = distinct !DILexicalBlock(scope: !455, file: !3, line: 67, column: 2)
!486 = !DILocation(line: 67, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !485, file: !3, line: 67, column: 2)
!488 = !DILocation(line: 67, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !3, line: 67, column: 2)
!490 = !{i32 -2141352164, i32 -2141352135, i32 -2141352089, i32 -2141352031, i32 -2141351977, i32 -2141351923, i32 -2141351868, i32 -2141351837}
!491 = !DILocation(line: 67, column: 2, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 67, column: 2)
!493 = distinct !DILexicalBlock(scope: !485, file: !3, line: 67, column: 2)
!494 = !{i32 -2141351395, i32 -2141351388, i32 -2141351334, i32 -2141351303, i32 -2141351273}
!495 = !DILocation(line: 67, column: 2, scope: !493)
!496 = !DILocation(line: 69, column: 8, scope: !445)
!497 = !DILocation(line: 69, column: 6, scope: !445)
!498 = !DILocation(line: 70, column: 6, scope: !499)
!499 = distinct !DILexicalBlock(scope: !445, file: !3, line: 70, column: 6)
!500 = !DILocation(line: 70, column: 6, scope: !445)
!501 = !DILocation(line: 71, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 70, column: 11)
!503 = !DILocation(line: 72, column: 10, scope: !502)
!504 = !DILocation(line: 72, column: 3, scope: !502)
!505 = !DILocation(line: 75, column: 2, scope: !445)
!506 = !DILocation(line: 76, column: 2, scope: !445)
!507 = !DILocation(line: 77, column: 2, scope: !445)
!508 = !DILocation(line: 79, column: 37, scope: !445)
!509 = !DILocation(line: 80, column: 46, scope: !445)
!510 = !DILocation(line: 79, column: 18, scope: !445)
!511 = !DILocation(line: 79, column: 2, scope: !445)
!512 = !DILocation(line: 79, column: 6, scope: !445)
!513 = !DILocation(line: 79, column: 16, scope: !445)
!514 = !DILocation(line: 83, column: 24, scope: !445)
!515 = !DILocation(line: 83, column: 28, scope: !445)
!516 = !DILocation(line: 83, column: 2, scope: !445)
!517 = !DILocation(line: 84, column: 27, scope: !445)
!518 = !DILocation(line: 84, column: 31, scope: !445)
!519 = !DILocation(line: 84, column: 2, scope: !445)
!520 = !DILocation(line: 85, column: 2, scope: !445)
!521 = !DILocation(line: 87, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !445, file: !3, line: 87, column: 6)
!523 = !DILocation(line: 87, column: 11, scope: !522)
!524 = !DILocation(line: 87, column: 6, scope: !445)
!525 = !DILocation(line: 88, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 87, column: 22)
!527 = !DILocation(line: 89, column: 3, scope: !526)
!528 = !DILocation(line: 90, column: 2, scope: !526)
!529 = !DILocation(line: 92, column: 2, scope: !445)
!530 = !DILocation(line: 94, column: 2, scope: !445)
!531 = !DILocation(line: 95, column: 1, scope: !445)
!532 = distinct !DISubprogram(name: "get_cpu_mask", scope: !31, file: !31, line: 884, type: !533, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!533 = !DISubroutineType(types: !534)
!534 = !{!432, !7}
!535 = !DILocalVariable(name: "cpu", arg: 1, scope: !532, file: !31, line: 884, type: !7)
!536 = !DILocation(line: 884, column: 63, scope: !532)
!537 = !DILocalVariable(name: "p", scope: !532, file: !31, line: 886, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!540 = !DILocation(line: 886, column: 23, scope: !532)
!541 = !DILocation(line: 886, column: 46, scope: !532)
!542 = !DILocation(line: 886, column: 50, scope: !532)
!543 = !DILocation(line: 886, column: 44, scope: !532)
!544 = !DILocation(line: 886, column: 27, scope: !532)
!545 = !DILocation(line: 887, column: 7, scope: !532)
!546 = !DILocation(line: 887, column: 11, scope: !532)
!547 = !DILocation(line: 887, column: 4, scope: !532)
!548 = !DILocation(line: 888, column: 9, scope: !532)
!549 = !DILocation(line: 888, column: 2, scope: !532)
!550 = distinct !DISubprogram(name: "stop_machine_cpuslocked", scope: !425, file: !425, line: 126, type: !426, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!551 = !DILocalVariable(name: "fn", arg: 1, scope: !550, file: !425, line: 126, type: !428)
!552 = !DILocation(line: 126, column: 57, scope: !550)
!553 = !DILocalVariable(name: "data", arg: 2, scope: !550, file: !425, line: 126, type: !28)
!554 = !DILocation(line: 126, column: 67, scope: !550)
!555 = !DILocalVariable(name: "cpus", arg: 3, scope: !550, file: !425, line: 127, type: !432)
!556 = !DILocation(line: 127, column: 30, scope: !550)
!557 = !DILocalVariable(name: "flags", scope: !550, file: !425, line: 129, type: !27)
!558 = !DILocation(line: 129, column: 16, scope: !550)
!559 = !DILocalVariable(name: "ret", scope: !550, file: !425, line: 130, type: !13)
!560 = !DILocation(line: 130, column: 6, scope: !550)
!561 = !DILocation(line: 131, column: 2, scope: !550)
!562 = !DILocation(line: 131, column: 2, scope: !563)
!563 = distinct !DILexicalBlock(scope: !550, file: !425, line: 131, column: 2)
!564 = !DILocalVariable(name: "__dummy", scope: !565, file: !425, line: 131, type: !27)
!565 = distinct !DILexicalBlock(scope: !566, file: !425, line: 131, column: 2)
!566 = distinct !DILexicalBlock(scope: !563, file: !425, line: 131, column: 2)
!567 = !DILocation(line: 131, column: 2, scope: !565)
!568 = !DILocalVariable(name: "__dummy2", scope: !565, file: !425, line: 131, type: !27)
!569 = !DILocation(line: 131, column: 2, scope: !566)
!570 = !DILocation(line: 132, column: 8, scope: !550)
!571 = !DILocation(line: 132, column: 11, scope: !550)
!572 = !DILocation(line: 132, column: 6, scope: !550)
!573 = !DILocation(line: 133, column: 2, scope: !550)
!574 = !DILocation(line: 133, column: 2, scope: !575)
!575 = distinct !DILexicalBlock(scope: !550, file: !425, line: 133, column: 2)
!576 = !DILocalVariable(name: "__dummy", scope: !577, file: !425, line: 133, type: !27)
!577 = distinct !DILexicalBlock(scope: !578, file: !425, line: 133, column: 2)
!578 = distinct !DILexicalBlock(scope: !575, file: !425, line: 133, column: 2)
!579 = !DILocation(line: 133, column: 2, scope: !577)
!580 = !DILocalVariable(name: "__dummy2", scope: !577, file: !425, line: 133, type: !27)
!581 = !DILocation(line: 133, column: 2, scope: !578)
!582 = !DILocation(line: 134, column: 9, scope: !550)
!583 = !DILocation(line: 134, column: 2, scope: !550)
!584 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !585, file: !585, line: 666, type: !586, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!585 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!586 = !DISubroutineType(types: !587)
!587 = !{!27}
!588 = !DILocalVariable(name: "f", scope: !584, file: !585, line: 668, type: !27)
!589 = !DILocation(line: 668, column: 16, scope: !584)
!590 = !DILocation(line: 670, column: 6, scope: !584)
!591 = !DILocation(line: 670, column: 4, scope: !584)
!592 = !DILocation(line: 671, column: 2, scope: !584)
!593 = !DILocation(line: 672, column: 9, scope: !584)
!594 = !DILocation(line: 672, column: 2, scope: !584)
!595 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !585, file: !585, line: 651, type: !596, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !27}
!598 = !DILocalVariable(name: "f", arg: 1, scope: !595, file: !585, line: 651, type: !27)
!599 = !DILocation(line: 651, column: 65, scope: !595)
!600 = !DILocalVariable(name: "__edi", scope: !601, file: !585, line: 653, type: !27)
!601 = distinct !DILexicalBlock(scope: !595, file: !585, line: 653, column: 2)
!602 = !DILocation(line: 653, column: 2, scope: !601)
!603 = !DILocalVariable(name: "__esi", scope: !601, file: !585, line: 653, type: !27)
!604 = !DILocalVariable(name: "__edx", scope: !601, file: !585, line: 653, type: !27)
!605 = !DILocalVariable(name: "__ecx", scope: !601, file: !585, line: 653, type: !27)
!606 = !DILocalVariable(name: "__eax", scope: !601, file: !585, line: 653, type: !27)
!607 = !{i32 -2145691217, i32 -2145690467, i32 -2145690233, i32 -2145690182, i32 -2145690154, i32 -2145690129, i32 -2145690445, i32 -2145690432, i32 -2145689994, i32 -2145689875, i32 -2145690340, i32 -2145690313, i32 -2145690285, i32 -2145690255}
!608 = !DILocation(line: 654, column: 1, scope: !595)
!609 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !585, file: !585, line: 646, type: !586, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!610 = !DILocalVariable(name: "__ret", scope: !611, file: !585, line: 648, type: !27)
!611 = distinct !DILexicalBlock(scope: !609, file: !585, line: 648, column: 9)
!612 = !DILocation(line: 648, column: 9, scope: !611)
!613 = !DILocalVariable(name: "__edi", scope: !611, file: !585, line: 648, type: !27)
!614 = !DILocalVariable(name: "__esi", scope: !611, file: !585, line: 648, type: !27)
!615 = !DILocalVariable(name: "__edx", scope: !611, file: !585, line: 648, type: !27)
!616 = !DILocalVariable(name: "__ecx", scope: !611, file: !585, line: 648, type: !27)
!617 = !DILocalVariable(name: "__eax", scope: !611, file: !585, line: 648, type: !27)
!618 = !DILocation(line: 648, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !585, line: 648, column: 9)
!620 = distinct !DILexicalBlock(scope: !611, file: !585, line: 648, column: 9)
!621 = !{i32 -2145695684, i32 -2145693369, i32 -2145693135, i32 -2145693084, i32 -2145693056, i32 -2145693031, i32 -2145693347, i32 -2145693334, i32 -2145692896, i32 -2145692777, i32 -2145693242, i32 -2145693215, i32 -2145693187, i32 -2145693157}
!622 = !DILocalVariable(name: "__mask", scope: !623, file: !585, line: 648, type: !27)
!623 = distinct !DILexicalBlock(scope: !619, file: !585, line: 648, column: 9)
!624 = !DILocation(line: 648, column: 9, scope: !623)
!625 = !DILocation(line: 648, column: 9, scope: !620)
!626 = !DILocation(line: 648, column: 2, scope: !609)
!627 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !585, file: !585, line: 656, type: !93, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!628 = !DILocalVariable(name: "__edi", scope: !629, file: !585, line: 658, type: !27)
!629 = distinct !DILexicalBlock(scope: !627, file: !585, line: 658, column: 2)
!630 = !DILocation(line: 658, column: 2, scope: !629)
!631 = !DILocalVariable(name: "__esi", scope: !629, file: !585, line: 658, type: !27)
!632 = !DILocalVariable(name: "__edx", scope: !629, file: !585, line: 658, type: !27)
!633 = !DILocalVariable(name: "__ecx", scope: !629, file: !585, line: 658, type: !27)
!634 = !DILocalVariable(name: "__eax", scope: !629, file: !585, line: 658, type: !27)
!635 = !{i32 -2145688590, i32 -2145687858, i32 -2145687624, i32 -2145687573, i32 -2145687545, i32 -2145687520, i32 -2145687836, i32 -2145687823, i32 -2145687385, i32 -2145687266, i32 -2145687731, i32 -2145687704, i32 -2145687676, i32 -2145687646}
!636 = !DILocation(line: 659, column: 1, scope: !627)
!637 = distinct !DISubprogram(name: "HYPERVISOR_suspend", scope: !638, file: !638, line: 406, type: !449, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!638 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!639 = !DILocalVariable(name: "start_info_mfn", arg: 1, scope: !637, file: !638, line: 406, type: !27)
!640 = !DILocation(line: 406, column: 34, scope: !637)
!641 = !DILocalVariable(name: "r", scope: !637, file: !638, line: 408, type: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_shutdown", file: !643, line: 133, size: 32, elements: !644)
!643 = !DIFile(filename: "./include/xen/interface/sched.h", directory: "/home/lizy2001/genbc/linux")
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !642, file: !643, line: 134, baseType: !7, size: 32)
!646 = !DILocation(line: 408, column: 24, scope: !637)
!647 = !DILocalVariable(name: "__res", scope: !648, file: !638, line: 416, type: !27)
!648 = distinct !DILexicalBlock(scope: !637, file: !638, line: 416, column: 9)
!649 = !DILocation(line: 416, column: 9, scope: !648)
!650 = !DILocalVariable(name: "__arg1", scope: !648, file: !638, line: 416, type: !27)
!651 = !DILocalVariable(name: "__arg2", scope: !648, file: !638, line: 416, type: !27)
!652 = !DILocalVariable(name: "__arg3", scope: !648, file: !638, line: 416, type: !27)
!653 = !DILocalVariable(name: "__arg4", scope: !648, file: !638, line: 416, type: !27)
!654 = !DILocalVariable(name: "__arg5", scope: !648, file: !638, line: 416, type: !27)
!655 = !{i32 -2141544836}
!656 = !DILocation(line: 416, column: 2, scope: !637)
!657 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !658, file: !658, line: 251, type: !659, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!658 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!659 = !DISubroutineType(types: !660)
!660 = !{!27, !27}
!661 = !DILocalVariable(name: "pfn", arg: 1, scope: !657, file: !658, line: 251, type: !27)
!662 = !DILocation(line: 251, column: 54, scope: !657)
!663 = !DILocation(line: 253, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !657, file: !658, line: 253, column: 6)
!665 = !DILocation(line: 253, column: 6, scope: !657)
!666 = !DILocation(line: 254, column: 10, scope: !664)
!667 = !DILocation(line: 254, column: 3, scope: !664)
!668 = !DILocation(line: 256, column: 21, scope: !664)
!669 = !DILocation(line: 256, column: 10, scope: !664)
!670 = !DILocation(line: 256, column: 3, scope: !664)
!671 = !DILocation(line: 257, column: 1, scope: !657)
!672 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !673, file: !673, line: 18, type: !659, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!673 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!674 = !DILocalVariable(name: "x", arg: 1, scope: !672, file: !673, line: 18, type: !27)
!675 = !DILocation(line: 18, column: 63, scope: !672)
!676 = !DILocalVariable(name: "y", scope: !672, file: !673, line: 20, type: !27)
!677 = !DILocation(line: 20, column: 16, scope: !672)
!678 = !DILocation(line: 20, column: 20, scope: !672)
!679 = !DILocation(line: 20, column: 22, scope: !672)
!680 = !DILocation(line: 23, column: 6, scope: !672)
!681 = !DILocation(line: 23, column: 12, scope: !672)
!682 = !DILocation(line: 23, column: 16, scope: !672)
!683 = !DILocation(line: 23, column: 14, scope: !672)
!684 = !DILocation(line: 23, column: 11, scope: !672)
!685 = !DILocation(line: 23, column: 21, scope: !672)
!686 = !DILocation(line: 23, column: 55, scope: !672)
!687 = !DILocation(line: 23, column: 53, scope: !672)
!688 = !DILocation(line: 23, column: 8, scope: !672)
!689 = !DILocation(line: 23, column: 4, scope: !672)
!690 = !DILocation(line: 25, column: 9, scope: !672)
!691 = !DILocation(line: 25, column: 2, scope: !672)
!692 = distinct !DISubprogram(name: "xen_feature", scope: !693, file: !693, line: 19, type: !694, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!693 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!694 = !DISubroutineType(types: !695)
!695 = !{!13, !13}
!696 = !DILocalVariable(name: "flag", arg: 1, scope: !692, file: !693, line: 19, type: !13)
!697 = !DILocation(line: 19, column: 35, scope: !692)
!698 = !DILocation(line: 21, column: 22, scope: !692)
!699 = !DILocation(line: 21, column: 9, scope: !692)
!700 = !DILocation(line: 21, column: 2, scope: !692)
!701 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !658, file: !658, line: 164, type: !659, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!702 = !DILocalVariable(name: "pfn", arg: 1, scope: !701, file: !658, line: 164, type: !27)
!703 = !DILocation(line: 164, column: 54, scope: !701)
!704 = !DILocalVariable(name: "mfn", scope: !701, file: !658, line: 166, type: !27)
!705 = !DILocation(line: 166, column: 16, scope: !701)
!706 = !DILocation(line: 173, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !658, line: 173, column: 6)
!708 = !DILocation(line: 173, column: 6, scope: !701)
!709 = !DILocation(line: 174, column: 10, scope: !707)
!710 = !DILocation(line: 174, column: 3, scope: !707)
!711 = !DILocation(line: 176, column: 21, scope: !701)
!712 = !DILocation(line: 176, column: 8, scope: !701)
!713 = !DILocation(line: 176, column: 6, scope: !701)
!714 = !DILocation(line: 178, column: 6, scope: !715)
!715 = distinct !DILexicalBlock(scope: !701, file: !658, line: 178, column: 6)
!716 = !DILocation(line: 178, column: 10, scope: !715)
!717 = !DILocation(line: 178, column: 6, scope: !701)
!718 = !DILocation(line: 179, column: 7, scope: !715)
!719 = !DILocation(line: 179, column: 3, scope: !715)
!720 = !DILocation(line: 181, column: 9, scope: !701)
!721 = !DILocation(line: 181, column: 2, scope: !701)
!722 = !DILocation(line: 182, column: 1, scope: !701)
!723 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !658, file: !658, line: 141, type: !659, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!724 = !DILocalVariable(name: "pfn", arg: 1, scope: !723, file: !658, line: 141, type: !27)
!725 = !DILocation(line: 141, column: 56, scope: !723)
!726 = !DILocalVariable(name: "mfn", scope: !723, file: !658, line: 143, type: !27)
!727 = !DILocation(line: 143, column: 16, scope: !723)
!728 = !DILocation(line: 145, column: 6, scope: !729)
!729 = distinct !DILexicalBlock(scope: !723, file: !658, line: 145, column: 6)
!730 = !DILocation(line: 145, column: 12, scope: !729)
!731 = !DILocation(line: 145, column: 10, scope: !729)
!732 = !DILocation(line: 145, column: 6, scope: !723)
!733 = !DILocation(line: 146, column: 9, scope: !729)
!734 = !DILocation(line: 146, column: 22, scope: !729)
!735 = !DILocation(line: 146, column: 7, scope: !729)
!736 = !DILocation(line: 146, column: 3, scope: !729)
!737 = !DILocation(line: 147, column: 11, scope: !738)
!738 = distinct !DILexicalBlock(scope: !729, file: !658, line: 147, column: 11)
!739 = !DILocation(line: 147, column: 11, scope: !729)
!740 = !DILocation(line: 148, column: 30, scope: !738)
!741 = !DILocation(line: 148, column: 10, scope: !738)
!742 = !DILocation(line: 148, column: 3, scope: !738)
!743 = !DILocation(line: 150, column: 10, scope: !738)
!744 = !DILocation(line: 150, column: 3, scope: !738)
!745 = !DILocation(line: 152, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !723, file: !658, line: 152, column: 6)
!747 = !DILocation(line: 152, column: 6, scope: !723)
!748 = !DILocation(line: 153, column: 30, scope: !746)
!749 = !DILocation(line: 153, column: 10, scope: !746)
!750 = !DILocation(line: 153, column: 3, scope: !746)
!751 = !DILocation(line: 155, column: 9, scope: !723)
!752 = !DILocation(line: 155, column: 2, scope: !723)
!753 = !DILocation(line: 156, column: 1, scope: !723)
!754 = distinct !DISubprogram(name: "poweroff_nb", scope: !3, file: !3, line: 175, type: !50, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !43)
!755 = !DILocalVariable(name: "cb", arg: 1, scope: !754, file: !3, line: 175, type: !52)
!756 = !DILocation(line: 175, column: 47, scope: !754)
!757 = !DILocalVariable(name: "code", arg: 2, scope: !754, file: !3, line: 175, type: !27)
!758 = !DILocation(line: 175, column: 65, scope: !754)
!759 = !DILocalVariable(name: "unused", arg: 3, scope: !754, file: !3, line: 175, type: !28)
!760 = !DILocation(line: 175, column: 77, scope: !754)
!761 = !DILocation(line: 177, column: 10, scope: !754)
!762 = !DILocation(line: 177, column: 2, scope: !754)
!763 = !DILocation(line: 181, column: 17, scope: !764)
!764 = distinct !DILexicalBlock(scope: !754, file: !3, line: 177, column: 16)
!765 = !DILocation(line: 181, column: 3, scope: !764)
!766 = !DILocation(line: 183, column: 3, scope: !764)
!767 = !DILocation(line: 185, column: 2, scope: !754)
