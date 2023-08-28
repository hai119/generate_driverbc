; ModuleID = '../bcout/drivers/ssb/driver_chipcommon.llvm.bc'
source_filename = "drivers/ssb/driver_chipcommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
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
%struct.seqcount = type { i32 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
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
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
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
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.52 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
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
%struct.ssb_chipcommon = type { %struct.ssb_device*, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_device = type { %struct.ssb_bus_ops*, %struct.device*, %struct.device*, %struct.ssb_bus*, %struct.ssb_device_id, i8, i32, i8*, i8* }
%struct.ssb_bus_ops = type { i8 (%struct.ssb_device*, i16)*, i16 (%struct.ssb_device*, i16)*, i32 (%struct.ssb_device*, i16)*, void (%struct.ssb_device*, i16, i8)*, void (%struct.ssb_device*, i16, i16)*, void (%struct.ssb_device*, i16, i32)* }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type opaque
%struct.irq_chip = type { %struct.device*, i8*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, i32 (%struct.irq_data*, %struct.cpumask*, i1)*, i32 (%struct.irq_data*)*, i32 (%struct.irq_data*, i32)*, i32 (%struct.irq_data*, i32)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.seq_file*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, void (%struct.irq_data*, %struct.msi_msg*)*, void (%struct.irq_data*, %struct.msi_msg*)*, i32 (%struct.irq_data*, i32, i8*)*, i32 (%struct.irq_data*, i32, i1)*, i32 (%struct.irq_data*, i8*)*, void (%struct.irq_data*, i32)*, void (%struct.irq_data*, %struct.cpumask*)*, i32 (%struct.irq_data*)*, void (%struct.irq_data*)*, i64 }
%struct.msi_msg = type opaque
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, [0 x %struct.irq_chip_generic*] }
%struct.irq_chip_generic = type { %struct.raw_spinlock, i8*, i32 (i8*)*, void (i32, i8*)*, void (%struct.irq_chip_generic*)*, void (%struct.irq_chip_generic*)*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, %struct.irq_domain*, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, void (%struct.irq_desc*)*, i32, i32, i32* }
%struct.irq_chip_regs = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, i32*, {}*, %struct.irqaction*, i32, i32, i32, i32, i32, i32, i64, i32, %struct.atomic_t, i32, %struct.raw_spinlock, %struct.cpumask*, %struct.cpumask*, i64, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, %struct.proc_dir_entry*, %struct.callback_head, %struct.kobject, %struct.mutex, i32, %struct.module*, i8* }
%struct.irqaction = type { i32 (i32, i8*)*, i8*, i8*, %struct.irqaction*, i32 (i32, i8*)*, %struct.task_struct*, %struct.irqaction*, i32, i32, i64, i64, i8*, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ssb_bus = type { i8*, %struct.ssb_bus_ops*, %struct.ssb_device*, %union.anon.65, %struct.spinlock, i32, %union.anon.66, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.list_head, i8, i32 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { %struct.pci_dev* }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.67, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.67 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.ssb_pcicore = type { %struct.ssb_device*, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.68, %struct.anon.69, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.68 = type { i8, i8, i8, i8 }
%struct.anon.69 = type { %struct.anon.70, %struct.anon.71 }
%struct.anon.70 = type { i8, i8, i8, i8, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.bcm47xx_wdt = type { {}*, {}*, i32, i8*, %struct.watchdog_device, %struct.timer_list, %struct.atomic_t }
%struct.watchdog_device = type { i32, %struct.device*, %struct.attribute_group**, %struct.watchdog_info*, %struct.watchdog_ops*, %struct.watchdog_governor*, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, i8*, %struct.watchdog_core_data*, i64, %struct.list_head }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { %struct.module*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*, i32)*, i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*, i64, i8*)*, i64 (%struct.watchdog_device*, i32, i64)* }
%struct.watchdog_governor = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.watchdog_core_data = type opaque

@.str = private unnamed_addr constant [32 x i8] c"drivers/ssb/driver_chipcommon.c\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %cc, i32 %mode) #0 !dbg !152 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mode.addr = alloca i32, align 4
  %ccdev = alloca %struct.ssb_device*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp31 = alloca i64, align 8
  %__ret_warn_on107 = alloca i32, align 4
  %tmp125 = alloca i64, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !4694, metadata !DIExpression()), !dbg !4695
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4696, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata %struct.ssb_device** %ccdev, metadata !4698, metadata !DIExpression()), !dbg !4699
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4700
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !4701
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !4701
  store %struct.ssb_device* %1, %struct.ssb_device** %ccdev, align 8, !dbg !4699
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !4704, metadata !DIExpression()), !dbg !4705
  %2 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4706
  %tobool = icmp ne %struct.ssb_device* %2, null, !dbg !4706
  br i1 %tobool, label %if.end, label %if.then, !dbg !4708

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !4709

if.end:                                           ; preds = %entry
  %3 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4710
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %3, i32 0, i32 3, !dbg !4711
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !4711
  store %struct.ssb_bus* %4, %struct.ssb_bus** %bus, align 8, !dbg !4712
  %5 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4713
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %5, i32 0, i32 4, !dbg !4715
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !4716
  %6 = load i8, i8* %revision, align 4, !dbg !4716
  %conv = zext i8 %6 to i32, !dbg !4713
  %cmp = icmp sge i32 %conv, 10, !dbg !4717
  br i1 %cmp, label %land.lhs.true, label %if.end6, !dbg !4718

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %mode.addr, align 4, !dbg !4719
  %cmp3 = icmp eq i32 %7, 0, !dbg !4720
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !4721

if.then5:                                         ; preds = %land.lhs.true
  store i32 2, i32* %mode.addr, align 4, !dbg !4722
  br label %if.end6, !dbg !4723

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4724
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 1, !dbg !4726
  %9 = load i32, i32* %capabilities, align 8, !dbg !4726
  %and = and i32 %9, 268435456, !dbg !4727
  %tobool7 = icmp ne i32 %and, 0, !dbg !4727
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4728

if.then8:                                         ; preds = %if.end6
  br label %sw.epilog, !dbg !4729

if.end9:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4730, metadata !DIExpression()), !dbg !4732
  %10 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4732
  %id10 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %10, i32 0, i32 4, !dbg !4732
  %revision11 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id10, i32 0, i32 2, !dbg !4732
  %11 = load i8, i8* %revision11, align 4, !dbg !4732
  %conv12 = zext i8 %11 to i32, !dbg !4732
  %cmp13 = icmp sge i32 %conv12, 20, !dbg !4732
  %lnot = xor i1 %cmp13, true, !dbg !4732
  %lnot15 = xor i1 %lnot, true, !dbg !4732
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !4732
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4732
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !4733
  %tobool16 = icmp ne i32 %12, 0, !dbg !4733
  %lnot17 = xor i1 %tobool16, true, !dbg !4733
  %lnot19 = xor i1 %lnot17, true, !dbg !4733
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4733
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4733
  %tobool22 = icmp ne i64 %conv21, 0, !dbg !4733
  br i1 %tobool22, label %if.then23, label %if.end30, !dbg !4732

if.then23:                                        ; preds = %if.end9
  br label %do.body, !dbg !4733

do.body:                                          ; preds = %if.then23
  br label %do.body24, !dbg !4735

do.body24:                                        ; preds = %do.body
  br label %do.end, !dbg !4737

do.end:                                           ; preds = %do.body24
  br label %do.body25, !dbg !4735

do.body25:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 59, i32 2305, i64 12) #5, !dbg !4739, !srcloc !4741
  br label %do.end26, !dbg !4739

do.end26:                                         ; preds = %do.body25
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 236) #5, !dbg !4742, !srcloc !4744
  br label %do.body27, !dbg !4735

do.body27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4745

do.end28:                                         ; preds = %do.body27
  br label %do.end29, !dbg !4735

do.end29:                                         ; preds = %do.end28
  br label %if.end30, !dbg !4735

if.end30:                                         ; preds = %do.end29, %if.end9
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !4732
  %tobool32 = icmp ne i32 %13, 0, !dbg !4732
  %lnot33 = xor i1 %tobool32, true, !dbg !4732
  %lnot35 = xor i1 %lnot33, true, !dbg !4732
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !4732
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !4732
  store i64 %conv37, i64* %tmp31, align 8, !dbg !4733
  %14 = load i64, i64* %tmp31, align 8, !dbg !4732
  %15 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4747
  %id38 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %15, i32 0, i32 4, !dbg !4749
  %revision39 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id38, i32 0, i32 2, !dbg !4750
  %16 = load i8, i8* %revision39, align 4, !dbg !4750
  %conv40 = zext i8 %16 to i32, !dbg !4747
  %cmp41 = icmp slt i32 %conv40, 6, !dbg !4751
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !4752

if.then43:                                        ; preds = %if.end30
  br label %sw.epilog, !dbg !4753

if.end44:                                         ; preds = %if.end30
  %17 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4754
  %id45 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %17, i32 0, i32 4, !dbg !4756
  %revision46 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id45, i32 0, i32 2, !dbg !4757
  %18 = load i8, i8* %revision46, align 4, !dbg !4757
  %conv47 = zext i8 %18 to i32, !dbg !4754
  %cmp48 = icmp sge i32 %conv47, 10, !dbg !4758
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !4759

if.then50:                                        ; preds = %if.end44
  br label %sw.epilog, !dbg !4760

if.end51:                                         ; preds = %if.end44
  %19 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4761
  %capabilities52 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %19, i32 0, i32 1, !dbg !4763
  %20 = load i32, i32* %capabilities52, align 8, !dbg !4763
  %and53 = and i32 %20, 262144, !dbg !4764
  %tobool54 = icmp ne i32 %and53, 0, !dbg !4764
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !4765

if.then55:                                        ; preds = %if.end51
  br label %sw.epilog, !dbg !4766

if.end56:                                         ; preds = %if.end51
  %21 = load i32, i32* %mode.addr, align 4, !dbg !4767
  switch i32 %21, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb59
    i32 2, label %sw.bb77
  ], !dbg !4768

sw.bb:                                            ; preds = %if.end56
  %22 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4769
  %dev57 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %22, i32 0, i32 0, !dbg !4769
  %23 = load %struct.ssb_device*, %struct.ssb_device** %dev57, align 8, !dbg !4769
  %call = call i32 @ssb_read32(%struct.ssb_device* %23, i16 zeroext 184) #6, !dbg !4769
  store i32 %call, i32* %tmp, align 4, !dbg !4771
  %24 = load i32, i32* %tmp, align 4, !dbg !4772
  %or = or i32 %24, 2048, !dbg !4772
  store i32 %or, i32* %tmp, align 4, !dbg !4772
  %25 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4773
  %dev58 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %25, i32 0, i32 0, !dbg !4773
  %26 = load %struct.ssb_device*, %struct.ssb_device** %dev58, align 8, !dbg !4773
  %27 = load i32, i32* %tmp, align 4, !dbg !4773
  call void @ssb_write32(%struct.ssb_device* %26, i16 zeroext 184, i32 %27) #6, !dbg !4773
  br label %sw.epilog, !dbg !4774

sw.bb59:                                          ; preds = %if.end56
  %28 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4775
  %id60 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %28, i32 0, i32 4, !dbg !4777
  %revision61 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id60, i32 0, i32 2, !dbg !4778
  %29 = load i8, i8* %revision61, align 4, !dbg !4778
  %conv62 = zext i8 %29 to i32, !dbg !4775
  %cmp63 = icmp slt i32 %conv62, 10, !dbg !4779
  br i1 %cmp63, label %if.then65, label %if.else, !dbg !4780

if.then65:                                        ; preds = %sw.bb59
  %30 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4781
  %call66 = call i32 @ssb_pci_xtal(%struct.ssb_bus* %30, i32 64, i32 1) #6, !dbg !4783
  %31 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4784
  %dev67 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %31, i32 0, i32 0, !dbg !4784
  %32 = load %struct.ssb_device*, %struct.ssb_device** %dev67, align 8, !dbg !4784
  %call68 = call i32 @ssb_read32(%struct.ssb_device* %32, i16 zeroext 184) #6, !dbg !4784
  store i32 %call68, i32* %tmp, align 4, !dbg !4785
  %33 = load i32, i32* %tmp, align 4, !dbg !4786
  %and69 = and i32 %33, -2049, !dbg !4786
  store i32 %and69, i32* %tmp, align 4, !dbg !4786
  %34 = load i32, i32* %tmp, align 4, !dbg !4787
  %or70 = or i32 %34, 4096, !dbg !4787
  store i32 %or70, i32* %tmp, align 4, !dbg !4787
  %35 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4788
  %dev71 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %35, i32 0, i32 0, !dbg !4788
  %36 = load %struct.ssb_device*, %struct.ssb_device** %dev71, align 8, !dbg !4788
  %37 = load i32, i32* %tmp, align 4, !dbg !4788
  call void @ssb_write32(%struct.ssb_device* %36, i16 zeroext 184, i32 %37) #6, !dbg !4788
  br label %if.end76, !dbg !4789

if.else:                                          ; preds = %sw.bb59
  %38 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4790
  %dev72 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %38, i32 0, i32 0, !dbg !4790
  %39 = load %struct.ssb_device*, %struct.ssb_device** %dev72, align 8, !dbg !4790
  %40 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4790
  %dev73 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %40, i32 0, i32 0, !dbg !4790
  %41 = load %struct.ssb_device*, %struct.ssb_device** %dev73, align 8, !dbg !4790
  %call74 = call i32 @ssb_read32(%struct.ssb_device* %41, i16 zeroext 192) #6, !dbg !4790
  %or75 = or i32 %call74, 16, !dbg !4790
  call void @ssb_write32(%struct.ssb_device* %39, i16 zeroext 192, i32 %or75) #6, !dbg !4790
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then65
  br label %sw.epilog, !dbg !4792

sw.bb77:                                          ; preds = %if.end56
  %42 = load %struct.ssb_device*, %struct.ssb_device** %ccdev, align 8, !dbg !4793
  %id78 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %42, i32 0, i32 4, !dbg !4795
  %revision79 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id78, i32 0, i32 2, !dbg !4796
  %43 = load i8, i8* %revision79, align 4, !dbg !4796
  %conv80 = zext i8 %43 to i32, !dbg !4793
  %cmp81 = icmp slt i32 %conv80, 10, !dbg !4797
  br i1 %cmp81, label %if.then83, label %if.else101, !dbg !4798

if.then83:                                        ; preds = %sw.bb77
  %44 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4799
  %dev84 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %44, i32 0, i32 0, !dbg !4799
  %45 = load %struct.ssb_device*, %struct.ssb_device** %dev84, align 8, !dbg !4799
  %call85 = call i32 @ssb_read32(%struct.ssb_device* %45, i16 zeroext 184) #6, !dbg !4799
  store i32 %call85, i32* %tmp, align 4, !dbg !4801
  %46 = load i32, i32* %tmp, align 4, !dbg !4802
  %and86 = and i32 %46, -2049, !dbg !4802
  store i32 %and86, i32* %tmp, align 4, !dbg !4802
  %47 = load i32, i32* %tmp, align 4, !dbg !4803
  %and87 = and i32 %47, -4097, !dbg !4803
  store i32 %and87, i32* %tmp, align 4, !dbg !4803
  %48 = load i32, i32* %tmp, align 4, !dbg !4804
  %and88 = and i32 %48, -8193, !dbg !4804
  store i32 %and88, i32* %tmp, align 4, !dbg !4804
  %49 = load i32, i32* %tmp, align 4, !dbg !4805
  %and89 = and i32 %49, 7, !dbg !4807
  %cmp90 = icmp ne i32 %and89, 1, !dbg !4808
  br i1 %cmp90, label %if.then92, label %if.end94, !dbg !4809

if.then92:                                        ; preds = %if.then83
  %50 = load i32, i32* %tmp, align 4, !dbg !4810
  %or93 = or i32 %50, 8192, !dbg !4810
  store i32 %or93, i32* %tmp, align 4, !dbg !4810
  br label %if.end94, !dbg !4811

if.end94:                                         ; preds = %if.then92, %if.then83
  %51 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4812
  %dev95 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %51, i32 0, i32 0, !dbg !4812
  %52 = load %struct.ssb_device*, %struct.ssb_device** %dev95, align 8, !dbg !4812
  %53 = load i32, i32* %tmp, align 4, !dbg !4812
  call void @ssb_write32(%struct.ssb_device* %52, i16 zeroext 184, i32 %53) #6, !dbg !4812
  %54 = load i32, i32* %tmp, align 4, !dbg !4813
  %and96 = and i32 %54, 8192, !dbg !4815
  %tobool97 = icmp ne i32 %and96, 0, !dbg !4815
  br i1 %tobool97, label %if.then98, label %if.end100, !dbg !4816

if.then98:                                        ; preds = %if.end94
  %55 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4817
  %call99 = call i32 @ssb_pci_xtal(%struct.ssb_bus* %55, i32 64, i32 0) #6, !dbg !4818
  br label %if.end100, !dbg !4818

if.end100:                                        ; preds = %if.then98, %if.end94
  br label %if.end106, !dbg !4819

if.else101:                                       ; preds = %sw.bb77
  %56 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4820
  %dev102 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %56, i32 0, i32 0, !dbg !4820
  %57 = load %struct.ssb_device*, %struct.ssb_device** %dev102, align 8, !dbg !4820
  %58 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4820
  %dev103 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %58, i32 0, i32 0, !dbg !4820
  %59 = load %struct.ssb_device*, %struct.ssb_device** %dev103, align 8, !dbg !4820
  %call104 = call i32 @ssb_read32(%struct.ssb_device* %59, i16 zeroext 192) #6, !dbg !4820
  %and105 = and i32 %call104, -17, !dbg !4820
  call void @ssb_write32(%struct.ssb_device* %57, i16 zeroext 192, i32 %and105) #6, !dbg !4820
  br label %if.end106

if.end106:                                        ; preds = %if.else101, %if.end100
  br label %sw.epilog, !dbg !4822

sw.default:                                       ; preds = %if.end56
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on107, metadata !4823, metadata !DIExpression()), !dbg !4825
  store i32 1, i32* %__ret_warn_on107, align 4, !dbg !4825
  %60 = load i32, i32* %__ret_warn_on107, align 4, !dbg !4826
  %tobool108 = icmp ne i32 %60, 0, !dbg !4826
  %lnot109 = xor i1 %tobool108, true, !dbg !4826
  %lnot111 = xor i1 %lnot109, true, !dbg !4826
  %lnot.ext112 = zext i1 %lnot111 to i32, !dbg !4826
  %conv113 = sext i32 %lnot.ext112 to i64, !dbg !4826
  %tobool114 = icmp ne i64 %conv113, 0, !dbg !4826
  br i1 %tobool114, label %if.then115, label %if.end124, !dbg !4825

if.then115:                                       ; preds = %sw.default
  br label %do.body116, !dbg !4826

do.body116:                                       ; preds = %if.then115
  br label %do.body117, !dbg !4828

do.body117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !4830

do.end118:                                        ; preds = %do.body117
  br label %do.body119, !dbg !4828

do.body119:                                       ; preds = %do.end118
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 114, i32 2305, i64 12) #5, !dbg !4832, !srcloc !4834
  br label %do.end120, !dbg !4832

do.end120:                                        ; preds = %do.body119
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 237) #5, !dbg !4835, !srcloc !4837
  br label %do.body121, !dbg !4828

do.body121:                                       ; preds = %do.end120
  br label %do.end122, !dbg !4838

do.end122:                                        ; preds = %do.body121
  br label %do.end123, !dbg !4828

do.end123:                                        ; preds = %do.end122
  br label %if.end124, !dbg !4828

if.end124:                                        ; preds = %do.end123, %sw.default
  %61 = load i32, i32* %__ret_warn_on107, align 4, !dbg !4825
  %tobool126 = icmp ne i32 %61, 0, !dbg !4825
  %lnot127 = xor i1 %tobool126, true, !dbg !4825
  %lnot129 = xor i1 %lnot127, true, !dbg !4825
  %lnot.ext130 = zext i1 %lnot129 to i32, !dbg !4825
  %conv131 = sext i32 %lnot.ext130 to i64, !dbg !4825
  store i64 %conv131, i64* %tmp125, align 8, !dbg !4826
  %62 = load i64, i64* %tmp125, align 8, !dbg !4825
  br label %sw.epilog, !dbg !4840

sw.epilog:                                        ; preds = %if.then, %if.then8, %if.then43, %if.then50, %if.then55, %if.end124, %if.end106, %if.end76, %sw.bb
  ret void, !dbg !4841
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ssb_read32(%struct.ssb_device* %dev, i16 zeroext %offset) #0 !dbg !4842 {
entry:
  %dev.addr = alloca %struct.ssb_device*, align 8
  %offset.addr = alloca i16, align 2
  store %struct.ssb_device* %dev, %struct.ssb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_device** %dev.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4847
  %ops = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %0, i32 0, i32 0, !dbg !4848
  %1 = load %struct.ssb_bus_ops*, %struct.ssb_bus_ops** %ops, align 8, !dbg !4848
  %read32 = getelementptr inbounds %struct.ssb_bus_ops, %struct.ssb_bus_ops* %1, i32 0, i32 2, !dbg !4849
  %2 = load i32 (%struct.ssb_device*, i16)*, i32 (%struct.ssb_device*, i16)** %read32, align 8, !dbg !4849
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4850
  %4 = load i16, i16* %offset.addr, align 2, !dbg !4851
  %call = call i32 %2(%struct.ssb_device* %3, i16 zeroext %4) #6, !dbg !4847
  ret i32 %call, !dbg !4852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssb_write32(%struct.ssb_device* %dev, i16 zeroext %offset, i32 %value) #0 !dbg !4853 {
entry:
  %dev.addr = alloca %struct.ssb_device*, align 8
  %offset.addr = alloca i16, align 2
  %value.addr = alloca i32, align 4
  store %struct.ssb_device* %dev, %struct.ssb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_device** %dev.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4860
  %ops = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %0, i32 0, i32 0, !dbg !4861
  %1 = load %struct.ssb_bus_ops*, %struct.ssb_bus_ops** %ops, align 8, !dbg !4861
  %write32 = getelementptr inbounds %struct.ssb_bus_ops, %struct.ssb_bus_ops* %1, i32 0, i32 5, !dbg !4862
  %2 = load void (%struct.ssb_device*, i16, i32)*, void (%struct.ssb_device*, i16, i32)** %write32, align 8, !dbg !4862
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev.addr, align 8, !dbg !4863
  %4 = load i16, i16* %offset.addr, align 2, !dbg !4864
  %5 = load i32, i32* %value.addr, align 4, !dbg !4865
  call void %2(%struct.ssb_device* %3, i16 zeroext %4, i32 %5) #6, !dbg !4860
  ret void, !dbg !4866
}

; Function Attrs: noredzone
declare dso_local i32 @ssb_pci_xtal(%struct.ssb_bus*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_watchdog_timer_set_wdt(%struct.bcm47xx_wdt* %wdt, i32 %ticks) #0 !dbg !4867 {
entry:
  %retval = alloca i32, align 4
  %wdt.addr = alloca %struct.bcm47xx_wdt*, align 8
  %ticks.addr = alloca i32, align 4
  %cc = alloca %struct.ssb_chipcommon*, align 8
  store %struct.bcm47xx_wdt* %wdt, %struct.bcm47xx_wdt** %wdt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm47xx_wdt** %wdt.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  store i32 %ticks, i32* %ticks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ticks.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc, metadata !4963, metadata !DIExpression()), !dbg !4964
  %0 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %wdt.addr, align 8, !dbg !4965
  %call = call i8* @bcm47xx_wdt_get_drvdata(%struct.bcm47xx_wdt* %0) #6, !dbg !4966
  %1 = bitcast i8* %call to %struct.ssb_chipcommon*, !dbg !4966
  store %struct.ssb_chipcommon* %1, %struct.ssb_chipcommon** %cc, align 8, !dbg !4964
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc, align 8, !dbg !4967
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 0, !dbg !4969
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !4969
  %bus = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %3, i32 0, i32 3, !dbg !4970
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !4970
  %bustype = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %4, i32 0, i32 5, !dbg !4971
  %5 = load i32, i32* %bustype, align 4, !dbg !4971
  %cmp = icmp ne i32 %5, 0, !dbg !4972
  br i1 %cmp, label %if.then, label %if.end, !dbg !4973

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4974
  br label %return, !dbg !4974

if.end:                                           ; preds = %entry
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc, align 8, !dbg !4975
  %7 = load i32, i32* %ticks.addr, align 4, !dbg !4976
  %call1 = call i32 @ssb_chipco_watchdog_timer_set(%struct.ssb_chipcommon* %6, i32 %7) #6, !dbg !4977
  store i32 %call1, i32* %retval, align 4, !dbg !4978
  br label %return, !dbg !4978

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4979
  ret i32 %8, !dbg !4979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @bcm47xx_wdt_get_drvdata(%struct.bcm47xx_wdt* %wdt) #0 !dbg !4980 {
entry:
  %wdt.addr = alloca %struct.bcm47xx_wdt*, align 8
  store %struct.bcm47xx_wdt* %wdt, %struct.bcm47xx_wdt** %wdt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm47xx_wdt** %wdt.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %wdt.addr, align 8, !dbg !4985
  %driver_data = getelementptr inbounds %struct.bcm47xx_wdt, %struct.bcm47xx_wdt* %0, i32 0, i32 3, !dbg !4986
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4986
  ret i8* %1, !dbg !4987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_watchdog_timer_set(%struct.ssb_chipcommon* %cc, i32 %ticks) #0 !dbg !4988 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %ticks.addr = alloca i32, align 4
  %maxt = alloca i32, align 4
  %clkmode = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i32 %ticks, i32* %ticks.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ticks.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.declare(metadata i32* %maxt, metadata !4995, metadata !DIExpression()), !dbg !4996
  call void @llvm.dbg.declare(metadata i32* %clkmode, metadata !4997, metadata !DIExpression()), !dbg !4998
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !4999
  %call = call i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon* %0) #6, !dbg !5000
  store i32 %call, i32* %maxt, align 4, !dbg !5001
  %1 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5002
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %1, i32 0, i32 1, !dbg !5004
  %2 = load i32, i32* %capabilities, align 8, !dbg !5004
  %and = and i32 %2, 268435456, !dbg !5005
  %tobool = icmp ne i32 %and, 0, !dbg !5005
  br i1 %tobool, label %if.then, label %if.else5, !dbg !5006

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ticks.addr, align 4, !dbg !5007
  %cmp = icmp eq i32 %3, 1, !dbg !5010
  br i1 %cmp, label %if.then1, label %if.else, !dbg !5011

if.then1:                                         ; preds = %if.then
  store i32 2, i32* %ticks.addr, align 4, !dbg !5012
  br label %if.end4, !dbg !5013

if.else:                                          ; preds = %if.then
  %4 = load i32, i32* %ticks.addr, align 4, !dbg !5014
  %5 = load i32, i32* %maxt, align 4, !dbg !5016
  %cmp2 = icmp ugt i32 %4, %5, !dbg !5017
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5018

if.then3:                                         ; preds = %if.else
  %6 = load i32, i32* %maxt, align 4, !dbg !5019
  store i32 %6, i32* %ticks.addr, align 4, !dbg !5020
  br label %if.end, !dbg !5021

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then1
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5022
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %7, i32 0, i32 0, !dbg !5022
  %8 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5022
  %9 = load i32, i32* %ticks.addr, align 4, !dbg !5022
  call void @ssb_write32(%struct.ssb_device* %8, i16 zeroext 1588, i32 %9) #6, !dbg !5022
  br label %if.end11, !dbg !5023

if.else5:                                         ; preds = %entry
  %10 = load i32, i32* %ticks.addr, align 4, !dbg !5024
  %tobool6 = icmp ne i32 %10, 0, !dbg !5024
  %11 = zext i1 %tobool6 to i64, !dbg !5024
  %cond = select i1 %tobool6, i32 1, i32 2, !dbg !5024
  store i32 %cond, i32* %clkmode, align 4, !dbg !5026
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5027
  %13 = load i32, i32* %clkmode, align 4, !dbg !5028
  call void @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %12, i32 %13) #6, !dbg !5029
  %14 = load i32, i32* %ticks.addr, align 4, !dbg !5030
  %15 = load i32, i32* %maxt, align 4, !dbg !5032
  %cmp7 = icmp ugt i32 %14, %15, !dbg !5033
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5034

if.then8:                                         ; preds = %if.else5
  %16 = load i32, i32* %maxt, align 4, !dbg !5035
  store i32 %16, i32* %ticks.addr, align 4, !dbg !5036
  br label %if.end9, !dbg !5037

if.end9:                                          ; preds = %if.then8, %if.else5
  %17 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5038
  %dev10 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %17, i32 0, i32 0, !dbg !5038
  %18 = load %struct.ssb_device*, %struct.ssb_device** %dev10, align 8, !dbg !5038
  %19 = load i32, i32* %ticks.addr, align 4, !dbg !5038
  call void @ssb_write32(%struct.ssb_device* %18, i16 zeroext 128, i32 %19) #6, !dbg !5038
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end4
  %20 = load i32, i32* %ticks.addr, align 4, !dbg !5039
  ret i32 %20, !dbg !5040
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_watchdog_timer_set_ms(%struct.bcm47xx_wdt* %wdt, i32 %ms) #0 !dbg !5041 {
entry:
  %retval = alloca i32, align 4
  %wdt.addr = alloca %struct.bcm47xx_wdt*, align 8
  %ms.addr = alloca i32, align 4
  %cc = alloca %struct.ssb_chipcommon*, align 8
  %ticks = alloca i32, align 4
  store %struct.bcm47xx_wdt* %wdt, %struct.bcm47xx_wdt** %wdt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bcm47xx_wdt** %wdt.addr, metadata !5042, metadata !DIExpression()), !dbg !5043
  store i32 %ms, i32* %ms.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ms.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc, metadata !5046, metadata !DIExpression()), !dbg !5047
  %0 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %wdt.addr, align 8, !dbg !5048
  %call = call i8* @bcm47xx_wdt_get_drvdata(%struct.bcm47xx_wdt* %0) #6, !dbg !5049
  %1 = bitcast i8* %call to %struct.ssb_chipcommon*, !dbg !5049
  store %struct.ssb_chipcommon* %1, %struct.ssb_chipcommon** %cc, align 8, !dbg !5047
  call void @llvm.dbg.declare(metadata i32* %ticks, metadata !5050, metadata !DIExpression()), !dbg !5051
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc, align 8, !dbg !5052
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 0, !dbg !5054
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5054
  %bus = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %3, i32 0, i32 3, !dbg !5055
  %4 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5055
  %bustype = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %4, i32 0, i32 5, !dbg !5056
  %5 = load i32, i32* %bustype, align 4, !dbg !5056
  %cmp = icmp ne i32 %5, 0, !dbg !5057
  br i1 %cmp, label %if.then, label %if.end, !dbg !5058

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5059
  br label %return, !dbg !5059

if.end:                                           ; preds = %entry
  %6 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc, align 8, !dbg !5060
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc, align 8, !dbg !5061
  %ticks_per_ms = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %7, i32 0, i32 6, !dbg !5062
  %8 = load i32, i32* %ticks_per_ms, align 4, !dbg !5062
  %9 = load i32, i32* %ms.addr, align 4, !dbg !5063
  %mul = mul i32 %8, %9, !dbg !5064
  %call1 = call i32 @ssb_chipco_watchdog_timer_set(%struct.ssb_chipcommon* %6, i32 %mul) #6, !dbg !5065
  store i32 %call1, i32* %ticks, align 4, !dbg !5066
  %10 = load i32, i32* %ticks, align 4, !dbg !5067
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc, align 8, !dbg !5068
  %ticks_per_ms2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 6, !dbg !5069
  %12 = load i32, i32* %ticks_per_ms2, align 4, !dbg !5069
  %div = udiv i32 %10, %12, !dbg !5070
  store i32 %div, i32* %retval, align 4, !dbg !5071
  br label %return, !dbg !5071

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5072
  ret i32 %13, !dbg !5072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipcommon_init(%struct.ssb_chipcommon* %cc) #0 !dbg !5073 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5082
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5087
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5089
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5089
  %tobool = icmp ne %struct.ssb_device* %1, null, !dbg !5087
  br i1 %tobool, label %if.end, label %if.then, !dbg !5090

if.then:                                          ; preds = %entry
  br label %if.end25, !dbg !5091

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5092

do.body:                                          ; preds = %if.end
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5093
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 4, !dbg !5093
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5094
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5095
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5095
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5093
  %gpio_lock1 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 4, !dbg !5093
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !5093
  %rlock = bitcast %union.anon.1* %6 to %struct.raw_spinlock*, !dbg !5093
  %7 = bitcast %struct.spinlock* %gpio_lock1 to i8*, !dbg !5093
  %8 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !5093
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %7, i8* align 1 %8, i64 0, i1 false), !dbg !5093
  br label %do.end, !dbg !5093

do.end:                                           ; preds = %do.body
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5096
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %9, i32 0, i32 0, !dbg !5098
  %10 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !5098
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %10, i32 0, i32 4, !dbg !5099
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !5100
  %11 = load i8, i8* %revision, align 4, !dbg !5100
  %conv = zext i8 %11 to i32, !dbg !5096
  %cmp = icmp sge i32 %conv, 11, !dbg !5101
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !5102

if.then4:                                         ; preds = %do.end
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5103
  %dev5 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 0, !dbg !5103
  %13 = load %struct.ssb_device*, %struct.ssb_device** %dev5, align 8, !dbg !5103
  %call6 = call i32 @ssb_read32(%struct.ssb_device* %13, i16 zeroext 44) #6, !dbg !5103
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5104
  %status = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %14, i32 0, i32 2, !dbg !5105
  store i32 %call6, i32* %status, align 4, !dbg !5106
  br label %if.end7, !dbg !5104

if.end7:                                          ; preds = %if.then4, %do.end
  %15 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5107
  %dev8 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %15, i32 0, i32 0, !dbg !5109
  %16 = load %struct.ssb_device*, %struct.ssb_device** %dev8, align 8, !dbg !5109
  %id9 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %16, i32 0, i32 4, !dbg !5110
  %revision10 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id9, i32 0, i32 2, !dbg !5111
  %17 = load i8, i8* %revision10, align 4, !dbg !5111
  %conv11 = zext i8 %17 to i32, !dbg !5107
  %cmp12 = icmp sge i32 %conv11, 20, !dbg !5112
  br i1 %cmp12, label %if.then14, label %if.end17, !dbg !5113

if.then14:                                        ; preds = %if.end7
  %18 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5114
  %dev15 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %18, i32 0, i32 0, !dbg !5114
  %19 = load %struct.ssb_device*, %struct.ssb_device** %dev15, align 8, !dbg !5114
  call void @ssb_write32(%struct.ssb_device* %19, i16 zeroext 88, i32 0) #6, !dbg !5114
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5116
  %dev16 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %20, i32 0, i32 0, !dbg !5116
  %21 = load %struct.ssb_device*, %struct.ssb_device** %dev16, align 8, !dbg !5116
  call void @ssb_write32(%struct.ssb_device* %21, i16 zeroext 92, i32 0) #6, !dbg !5116
  br label %if.end17, !dbg !5117

if.end17:                                         ; preds = %if.then14, %if.end7
  %22 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5118
  call void @ssb_pmu_init(%struct.ssb_chipcommon* %22) #6, !dbg !5119
  %23 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5120
  call void @chipco_powercontrol_init(%struct.ssb_chipcommon* %23) #6, !dbg !5121
  %24 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5122
  call void @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %24, i32 1) #6, !dbg !5123
  %25 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5124
  call void @calc_fast_powerup_delay(%struct.ssb_chipcommon* %25) #6, !dbg !5125
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5126
  %dev18 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %26, i32 0, i32 0, !dbg !5128
  %27 = load %struct.ssb_device*, %struct.ssb_device** %dev18, align 8, !dbg !5128
  %bus = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %27, i32 0, i32 3, !dbg !5129
  %28 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5129
  %bustype = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %28, i32 0, i32 5, !dbg !5130
  %29 = load i32, i32* %bustype, align 4, !dbg !5130
  %cmp19 = icmp eq i32 %29, 0, !dbg !5131
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !5132

if.then21:                                        ; preds = %if.end17
  %30 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5133
  %call22 = call i32 @ssb_chipco_watchdog_ticks_per_ms(%struct.ssb_chipcommon* %30) #6, !dbg !5135
  %31 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5136
  %ticks_per_ms = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %31, i32 0, i32 6, !dbg !5137
  store i32 %call22, i32* %ticks_per_ms, align 4, !dbg !5138
  %32 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5139
  %call23 = call i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon* %32) #6, !dbg !5140
  %33 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5141
  %ticks_per_ms24 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %33, i32 0, i32 6, !dbg !5142
  %34 = load i32, i32* %ticks_per_ms24, align 4, !dbg !5142
  %div = udiv i32 %call23, %34, !dbg !5143
  %35 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5144
  %max_timer_ms = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %35, i32 0, i32 7, !dbg !5145
  store i32 %div, i32* %max_timer_ms, align 8, !dbg !5146
  br label %if.end25, !dbg !5147

if.end25:                                         ; preds = %if.then, %if.then21, %if.end17
  ret void, !dbg !5148
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local void @ssb_pmu_init(%struct.ssb_chipcommon*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chipco_powercontrol_init(%struct.ssb_chipcommon* %cc) #0 !dbg !5149 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  %maxfreq = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5154
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5155
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5155
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5156
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5156
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5153
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5157
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !5159
  %4 = load i16, i16* %chip_id, align 8, !dbg !5159
  %conv = zext i16 %4 to i32, !dbg !5157
  %cmp = icmp eq i32 %conv, 17185, !dbg !5160
  br i1 %cmp, label %if.then, label %if.end15, !dbg !5161

if.then:                                          ; preds = %entry
  %5 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5162
  %chip_rev = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %5, i32 0, i32 10, !dbg !5165
  %6 = load i8, i8* %chip_rev, align 2, !dbg !5165
  %conv3 = zext i8 %6 to i32, !dbg !5162
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !5166
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !5167

if.then6:                                         ; preds = %if.then
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5168
  %dev7 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %7, i32 0, i32 0, !dbg !5168
  %8 = load %struct.ssb_device*, %struct.ssb_device** %dev7, align 8, !dbg !5168
  call void @ssb_write32(%struct.ssb_device* %8, i16 zeroext 40, i32 932) #6, !dbg !5168
  br label %if.end14, !dbg !5168

if.else:                                          ; preds = %if.then
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5169
  %chip_rev8 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %9, i32 0, i32 10, !dbg !5171
  %10 = load i8, i8* %chip_rev8, align 2, !dbg !5171
  %conv9 = zext i8 %10 to i32, !dbg !5169
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !5172
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !5173

if.then12:                                        ; preds = %if.else
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5174
  %dev13 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 0, !dbg !5174
  %12 = load %struct.ssb_device*, %struct.ssb_device** %dev13, align 8, !dbg !5174
  call void @ssb_write32(%struct.ssb_device* %12, i16 zeroext 40, i32 164) #6, !dbg !5174
  br label %if.end, !dbg !5174

if.end:                                           ; preds = %if.then12, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then6
  br label %if.end15, !dbg !5175

if.end15:                                         ; preds = %if.end14, %entry
  %13 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5176
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %13, i32 0, i32 1, !dbg !5178
  %14 = load i32, i32* %capabilities, align 8, !dbg !5178
  %and = and i32 %14, 262144, !dbg !5179
  %tobool = icmp ne i32 %and, 0, !dbg !5179
  br i1 %tobool, label %if.end17, label %if.then16, !dbg !5180

if.then16:                                        ; preds = %if.end15
  br label %if.end33, !dbg !5181

if.end17:                                         ; preds = %if.end15
  %15 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5182
  %dev18 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %15, i32 0, i32 0, !dbg !5184
  %16 = load %struct.ssb_device*, %struct.ssb_device** %dev18, align 8, !dbg !5184
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %16, i32 0, i32 4, !dbg !5185
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !5186
  %17 = load i8, i8* %revision, align 4, !dbg !5186
  %conv19 = zext i8 %17 to i32, !dbg !5182
  %cmp20 = icmp sge i32 %conv19, 10, !dbg !5187
  br i1 %cmp20, label %if.then22, label %if.else26, !dbg !5188

if.then22:                                        ; preds = %if.end17
  %18 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5189
  %dev23 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %18, i32 0, i32 0, !dbg !5189
  %19 = load %struct.ssb_device*, %struct.ssb_device** %dev23, align 8, !dbg !5189
  %20 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5189
  %dev24 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %20, i32 0, i32 0, !dbg !5189
  %21 = load %struct.ssb_device*, %struct.ssb_device** %dev24, align 8, !dbg !5189
  %call = call i32 @ssb_read32(%struct.ssb_device* %21, i16 zeroext 192) #6, !dbg !5189
  %and25 = and i32 %call, 65535, !dbg !5189
  %or = or i32 %and25, 262144, !dbg !5189
  call void @ssb_write32(%struct.ssb_device* %19, i16 zeroext 192, i32 %or) #6, !dbg !5189
  br label %if.end33, !dbg !5191

if.else26:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %maxfreq, metadata !5192, metadata !DIExpression()), !dbg !5194
  %22 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5195
  %call27 = call i32 @chipco_pctl_clockfreqlimit(%struct.ssb_chipcommon* %22, i32 1) #6, !dbg !5196
  store i32 %call27, i32* %maxfreq, align 4, !dbg !5197
  %23 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5198
  %dev28 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %23, i32 0, i32 0, !dbg !5198
  %24 = load %struct.ssb_device*, %struct.ssb_device** %dev28, align 8, !dbg !5198
  %25 = load i32, i32* %maxfreq, align 4, !dbg !5198
  %mul = mul i32 %25, 150, !dbg !5198
  %add = add i32 %mul, 999999, !dbg !5198
  %div = sdiv i32 %add, 1000000, !dbg !5198
  call void @ssb_write32(%struct.ssb_device* %24, i16 zeroext 176, i32 %div) #6, !dbg !5198
  %26 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5199
  %dev29 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %26, i32 0, i32 0, !dbg !5199
  %27 = load %struct.ssb_device*, %struct.ssb_device** %dev29, align 8, !dbg !5199
  %28 = load i32, i32* %maxfreq, align 4, !dbg !5199
  %mul30 = mul i32 %28, 15, !dbg !5199
  %add31 = add i32 %mul30, 999999, !dbg !5199
  %div32 = sdiv i32 %add31, 1000000, !dbg !5199
  call void @ssb_write32(%struct.ssb_device* %27, i16 zeroext 180, i32 %div32) #6, !dbg !5199
  br label %if.end33

if.end33:                                         ; preds = %if.then16, %if.else26, %if.then22
  ret void, !dbg !5200
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @calc_fast_powerup_delay(%struct.ssb_chipcommon* %cc) #0 !dbg !5201 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  %minfreq = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pll_on_delay = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp30 = alloca i64, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5204, metadata !DIExpression()), !dbg !5205
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5206
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5207
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5207
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5208
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5208
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5205
  call void @llvm.dbg.declare(metadata i32* %minfreq, metadata !5209, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5211, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.declare(metadata i32* %pll_on_delay, metadata !5213, metadata !DIExpression()), !dbg !5214
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5215
  %bustype = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 5, !dbg !5217
  %4 = load i32, i32* %bustype, align 4, !dbg !5217
  %cmp = icmp ne i32 %4, 1, !dbg !5218
  br i1 %cmp, label %if.then, label %if.end, !dbg !5219

if.then:                                          ; preds = %entry
  br label %return, !dbg !5220

if.end:                                           ; preds = %entry
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5221
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 1, !dbg !5223
  %6 = load i32, i32* %capabilities, align 8, !dbg !5223
  %and = and i32 %6, 268435456, !dbg !5224
  %tobool = icmp ne i32 %and, 0, !dbg !5224
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !5225

if.then2:                                         ; preds = %if.end
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5226
  %call = call zeroext i16 @pmu_fast_powerup_delay(%struct.ssb_chipcommon* %7) #6, !dbg !5228
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5229
  %fast_pwrup_delay = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 3, !dbg !5230
  store i16 %call, i16* %fast_pwrup_delay, align 8, !dbg !5231
  br label %return, !dbg !5232

if.end3:                                          ; preds = %if.end
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5233
  %capabilities4 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %9, i32 0, i32 1, !dbg !5235
  %10 = load i32, i32* %capabilities4, align 8, !dbg !5235
  %and5 = and i32 %10, 262144, !dbg !5236
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5236
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5237

if.then7:                                         ; preds = %if.end3
  br label %return, !dbg !5238

if.end8:                                          ; preds = %if.end3
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5239
  %call9 = call i32 @chipco_pctl_clockfreqlimit(%struct.ssb_chipcommon* %11, i32 0) #6, !dbg !5240
  store i32 %call9, i32* %minfreq, align 4, !dbg !5241
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5242
  %dev10 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 0, !dbg !5242
  %13 = load %struct.ssb_device*, %struct.ssb_device** %dev10, align 8, !dbg !5242
  %call11 = call i32 @ssb_read32(%struct.ssb_device* %13, i16 zeroext 176) #6, !dbg !5242
  store i32 %call11, i32* %pll_on_delay, align 4, !dbg !5243
  %14 = load i32, i32* %pll_on_delay, align 4, !dbg !5244
  %add = add i32 %14, 2, !dbg !5245
  %mul = mul i32 %add, 1000000, !dbg !5246
  %15 = load i32, i32* %minfreq, align 4, !dbg !5247
  %sub = sub i32 %15, 1, !dbg !5248
  %add12 = add i32 %mul, %sub, !dbg !5249
  %16 = load i32, i32* %minfreq, align 4, !dbg !5250
  %div = udiv i32 %add12, %16, !dbg !5251
  store i32 %div, i32* %tmp, align 4, !dbg !5252
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5253, metadata !DIExpression()), !dbg !5255
  %17 = load i32, i32* %tmp, align 4, !dbg !5255
  %and13 = and i32 %17, -65536, !dbg !5255
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5255
  %lnot = xor i1 %tobool14, true, !dbg !5255
  %lnot15 = xor i1 %lnot, true, !dbg !5255
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5255
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5255
  %18 = load i32, i32* %__ret_warn_on, align 4, !dbg !5256
  %tobool16 = icmp ne i32 %18, 0, !dbg !5256
  %lnot17 = xor i1 %tobool16, true, !dbg !5256
  %lnot19 = xor i1 %lnot17, true, !dbg !5256
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5256
  %conv = sext i32 %lnot.ext20 to i64, !dbg !5256
  %tobool21 = icmp ne i64 %conv, 0, !dbg !5256
  br i1 %tobool21, label %if.then22, label %if.end29, !dbg !5255

if.then22:                                        ; preds = %if.end8
  br label %do.body, !dbg !5256

do.body:                                          ; preds = %if.then22
  br label %do.body23, !dbg !5258

do.body23:                                        ; preds = %do.body
  br label %do.end, !dbg !5260

do.end:                                           ; preds = %do.body23
  br label %do.body24, !dbg !5258

do.body24:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 280, i32 2305, i64 12) #5, !dbg !5262, !srcloc !5264
  br label %do.end25, !dbg !5262

do.end25:                                         ; preds = %do.body24
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #5, !dbg !5265, !srcloc !5267
  br label %do.body26, !dbg !5258

do.body26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5268

do.end27:                                         ; preds = %do.body26
  br label %do.end28, !dbg !5258

do.end28:                                         ; preds = %do.end27
  br label %if.end29, !dbg !5258

if.end29:                                         ; preds = %do.end28, %if.end8
  %19 = load i32, i32* %__ret_warn_on, align 4, !dbg !5255
  %tobool31 = icmp ne i32 %19, 0, !dbg !5255
  %lnot32 = xor i1 %tobool31, true, !dbg !5255
  %lnot34 = xor i1 %lnot32, true, !dbg !5255
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !5255
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !5255
  store i64 %conv36, i64* %tmp30, align 8, !dbg !5256
  %20 = load i64, i64* %tmp30, align 8, !dbg !5255
  %21 = load i32, i32* %tmp, align 4, !dbg !5270
  %conv37 = trunc i32 %21 to i16, !dbg !5270
  %22 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5271
  %fast_pwrup_delay38 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %22, i32 0, i32 3, !dbg !5272
  store i16 %conv37, i16* %fast_pwrup_delay38, align 8, !dbg !5273
  br label %return, !dbg !5274

return:                                           ; preds = %if.end29, %if.then7, %if.then2, %if.then
  ret void, !dbg !5274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ssb_chipco_watchdog_ticks_per_ms(%struct.ssb_chipcommon* %cc) #0 !dbg !5275 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5280, metadata !DIExpression()), !dbg !5281
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5282
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5283
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5283
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !5284
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !5284
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !5281
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5285
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %3, i32 0, i32 1, !dbg !5287
  %4 = load i32, i32* %capabilities, align 8, !dbg !5287
  %and = and i32 %4, 268435456, !dbg !5288
  %tobool = icmp ne i32 %and, 0, !dbg !5288
  br i1 %tobool, label %if.then, label %if.else, !dbg !5289

if.then:                                          ; preds = %entry
  store i32 32, i32* %retval, align 4, !dbg !5290
  br label %return, !dbg !5290

if.else:                                          ; preds = %entry
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5292
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0, !dbg !5295
  %6 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !5295
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %6, i32 0, i32 4, !dbg !5296
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !5297
  %7 = load i8, i8* %revision, align 4, !dbg !5297
  %conv = zext i8 %7 to i32, !dbg !5292
  %cmp = icmp slt i32 %conv, 18, !dbg !5298
  br i1 %cmp, label %if.then4, label %if.else5, !dbg !5299

if.then4:                                         ; preds = %if.else
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5300
  %call = call i32 @ssb_clockspeed(%struct.ssb_bus* %8) #6, !dbg !5301
  %div = udiv i32 %call, 1000, !dbg !5302
  store i32 %div, i32* %retval, align 4, !dbg !5303
  br label %return, !dbg !5303

if.else5:                                         ; preds = %if.else
  %9 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5304
  %call6 = call i32 @ssb_chipco_alp_clock(%struct.ssb_chipcommon* %9) #6, !dbg !5305
  %div7 = udiv i32 %call6, 1000, !dbg !5306
  store i32 %div7, i32* %retval, align 4, !dbg !5307
  br label %return, !dbg !5307

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5308
  ret i32 %10, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ssb_chipco_watchdog_get_max_timer(%struct.ssb_chipcommon* %cc) #0 !dbg !5309 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %nb = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  call void @llvm.dbg.declare(metadata i32* %nb, metadata !5314, metadata !DIExpression()), !dbg !5315
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5316
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 1, !dbg !5318
  %1 = load i32, i32* %capabilities, align 8, !dbg !5318
  %and = and i32 %1, 268435456, !dbg !5319
  %tobool = icmp ne i32 %and, 0, !dbg !5319
  br i1 %tobool, label %if.then, label %if.else9, !dbg !5320

if.then:                                          ; preds = %entry
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5321
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 0, !dbg !5324
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5324
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %3, i32 0, i32 4, !dbg !5325
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !5326
  %4 = load i8, i8* %revision, align 4, !dbg !5326
  %conv = zext i8 %4 to i32, !dbg !5321
  %cmp = icmp slt i32 %conv, 26, !dbg !5327
  br i1 %cmp, label %if.then2, label %if.else, !dbg !5328

if.then2:                                         ; preds = %if.then
  store i32 16, i32* %nb, align 4, !dbg !5329
  br label %if.end, !dbg !5330

if.else:                                          ; preds = %if.then
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5331
  %dev3 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 0, !dbg !5332
  %6 = load %struct.ssb_device*, %struct.ssb_device** %dev3, align 8, !dbg !5332
  %id4 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %6, i32 0, i32 4, !dbg !5333
  %revision5 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id4, i32 0, i32 2, !dbg !5334
  %7 = load i8, i8* %revision5, align 4, !dbg !5334
  %conv6 = zext i8 %7 to i32, !dbg !5331
  %cmp7 = icmp sge i32 %conv6, 37, !dbg !5335
  %8 = zext i1 %cmp7 to i64, !dbg !5336
  %cond = select i1 %cmp7, i32 32, i32 24, !dbg !5336
  store i32 %cond, i32* %nb, align 4, !dbg !5337
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end10, !dbg !5338

if.else9:                                         ; preds = %entry
  store i32 28, i32* %nb, align 4, !dbg !5339
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.end
  %9 = load i32, i32* %nb, align 4, !dbg !5341
  %cmp11 = icmp eq i32 %9, 32, !dbg !5343
  br i1 %cmp11, label %if.then13, label %if.else14, !dbg !5344

if.then13:                                        ; preds = %if.end10
  store i32 -1, i32* %retval, align 4, !dbg !5345
  br label %return, !dbg !5345

if.else14:                                        ; preds = %if.end10
  %10 = load i32, i32* %nb, align 4, !dbg !5346
  %shl = shl i32 1, %10, !dbg !5347
  %sub = sub i32 %shl, 1, !dbg !5348
  store i32 %sub, i32* %retval, align 4, !dbg !5349
  br label %return, !dbg !5349

return:                                           ; preds = %if.else14, %if.then13
  %11 = load i32, i32* %retval, align 4, !dbg !5350
  ret i32 %11, !dbg !5350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipco_suspend(%struct.ssb_chipcommon* %cc) #0 !dbg !5351 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5354
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5356
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5356
  %tobool = icmp ne %struct.ssb_device* %1, null, !dbg !5354
  br i1 %tobool, label %if.end, label %if.then, !dbg !5357

if.then:                                          ; preds = %entry
  br label %return, !dbg !5358

if.end:                                           ; preds = %entry
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5359
  call void @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %2, i32 0) #6, !dbg !5360
  br label %return, !dbg !5361

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipco_resume(%struct.ssb_chipcommon* %cc) #0 !dbg !5362 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5365
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5367
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5367
  %tobool = icmp ne %struct.ssb_device* %1, null, !dbg !5365
  br i1 %tobool, label %if.end, label %if.then, !dbg !5368

if.then:                                          ; preds = %entry
  br label %return, !dbg !5369

if.end:                                           ; preds = %entry
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5370
  call void @chipco_powercontrol_init(%struct.ssb_chipcommon* %2) #6, !dbg !5371
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5372
  call void @ssb_chipco_set_clockmode(%struct.ssb_chipcommon* %3, i32 1) #6, !dbg !5373
  br label %return, !dbg !5374

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5374
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipco_get_clockcpu(%struct.ssb_chipcommon* %cc, i32* %plltype, i32* %n, i32* %m) #0 !dbg !5375 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %plltype.addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  store i32* %plltype, i32** %plltype.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %plltype.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !5384, metadata !DIExpression()), !dbg !5385
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5386
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5386
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5386
  %call = call i32 @ssb_read32(%struct.ssb_device* %1, i16 zeroext 144) #6, !dbg !5386
  %2 = load i32*, i32** %n.addr, align 8, !dbg !5387
  store i32 %call, i32* %2, align 4, !dbg !5388
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5389
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %3, i32 0, i32 1, !dbg !5390
  %4 = load i32, i32* %capabilities, align 8, !dbg !5390
  %and = and i32 %4, 229376, !dbg !5391
  %5 = load i32*, i32** %plltype.addr, align 8, !dbg !5392
  store i32 %and, i32* %5, align 4, !dbg !5393
  %6 = load i32*, i32** %plltype.addr, align 8, !dbg !5394
  %7 = load i32, i32* %6, align 4, !dbg !5395
  switch i32 %7, label %sw.default [
    i32 131072, label %sw.bb
    i32 32768, label %sw.bb
    i32 163840, label %sw.bb
    i32 229376, label %sw.bb
    i32 196608, label %sw.bb3
  ], !dbg !5396

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5397
  %dev1 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 0, !dbg !5397
  %9 = load %struct.ssb_device*, %struct.ssb_device** %dev1, align 8, !dbg !5397
  %call2 = call i32 @ssb_read32(%struct.ssb_device* %9, i16 zeroext 160) #6, !dbg !5397
  %10 = load i32*, i32** %m.addr, align 8, !dbg !5399
  store i32 %call2, i32* %10, align 4, !dbg !5400
  br label %sw.epilog, !dbg !5401

sw.bb3:                                           ; preds = %entry
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5402
  %dev4 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 0, !dbg !5402
  %12 = load %struct.ssb_device*, %struct.ssb_device** %dev4, align 8, !dbg !5402
  %call5 = call i32 @ssb_read32(%struct.ssb_device* %12, i16 zeroext 156) #6, !dbg !5402
  %13 = load i32*, i32** %m.addr, align 8, !dbg !5403
  store i32 %call5, i32* %13, align 4, !dbg !5404
  br label %sw.epilog, !dbg !5405

sw.default:                                       ; preds = %entry
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5406
  %dev6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %14, i32 0, i32 0, !dbg !5406
  %15 = load %struct.ssb_device*, %struct.ssb_device** %dev6, align 8, !dbg !5406
  %call7 = call i32 @ssb_read32(%struct.ssb_device* %15, i16 zeroext 148) #6, !dbg !5406
  %16 = load i32*, i32** %m.addr, align 8, !dbg !5407
  store i32 %call7, i32* %16, align 4, !dbg !5408
  br label %sw.epilog, !dbg !5409

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  ret void, !dbg !5410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipco_get_clockcontrol(%struct.ssb_chipcommon* %cc, i32* %plltype, i32* %n, i32* %m) #0 !dbg !5411 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %plltype.addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  store i32* %plltype, i32** %plltype.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %plltype.addr, metadata !5414, metadata !DIExpression()), !dbg !5415
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !5416, metadata !DIExpression()), !dbg !5417
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !5418, metadata !DIExpression()), !dbg !5419
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5420
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5420
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5420
  %call = call i32 @ssb_read32(%struct.ssb_device* %1, i16 zeroext 144) #6, !dbg !5420
  %2 = load i32*, i32** %n.addr, align 8, !dbg !5421
  store i32 %call, i32* %2, align 4, !dbg !5422
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5423
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %3, i32 0, i32 1, !dbg !5424
  %4 = load i32, i32* %capabilities, align 8, !dbg !5424
  %and = and i32 %4, 229376, !dbg !5425
  %5 = load i32*, i32** %plltype.addr, align 8, !dbg !5426
  store i32 %and, i32* %5, align 4, !dbg !5427
  %6 = load i32*, i32** %plltype.addr, align 8, !dbg !5428
  %7 = load i32, i32* %6, align 4, !dbg !5429
  switch i32 %7, label %sw.default [
    i32 163840, label %sw.bb
    i32 196608, label %sw.bb3
  ], !dbg !5430

sw.bb:                                            ; preds = %entry
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5431
  %dev1 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 0, !dbg !5431
  %9 = load %struct.ssb_device*, %struct.ssb_device** %dev1, align 8, !dbg !5431
  %call2 = call i32 @ssb_read32(%struct.ssb_device* %9, i16 zeroext 160) #6, !dbg !5431
  %10 = load i32*, i32** %m.addr, align 8, !dbg !5433
  store i32 %call2, i32* %10, align 4, !dbg !5434
  br label %sw.epilog, !dbg !5435

sw.bb3:                                           ; preds = %entry
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5436
  %dev4 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 0, !dbg !5438
  %12 = load %struct.ssb_device*, %struct.ssb_device** %dev4, align 8, !dbg !5438
  %bus = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %12, i32 0, i32 3, !dbg !5439
  %13 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5439
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %13, i32 0, i32 9, !dbg !5440
  %14 = load i16, i16* %chip_id, align 8, !dbg !5440
  %conv = zext i16 %14 to i32, !dbg !5436
  %cmp = icmp ne i32 %conv, 21349, !dbg !5441
  br i1 %cmp, label %if.then, label %if.end, !dbg !5442

if.then:                                          ; preds = %sw.bb3
  %15 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5443
  %dev6 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %15, i32 0, i32 0, !dbg !5443
  %16 = load %struct.ssb_device*, %struct.ssb_device** %dev6, align 8, !dbg !5443
  %call7 = call i32 @ssb_read32(%struct.ssb_device* %16, i16 zeroext 156) #6, !dbg !5443
  %17 = load i32*, i32** %m.addr, align 8, !dbg !5445
  store i32 %call7, i32* %17, align 4, !dbg !5446
  br label %sw.epilog, !dbg !5447

if.end:                                           ; preds = %sw.bb3
  br label %sw.default, !dbg !5448

sw.default:                                       ; preds = %entry, %if.end
  %18 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5449
  %dev8 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %18, i32 0, i32 0, !dbg !5449
  %19 = load %struct.ssb_device*, %struct.ssb_device** %dev8, align 8, !dbg !5449
  %call9 = call i32 @ssb_read32(%struct.ssb_device* %19, i16 zeroext 148) #6, !dbg !5449
  %20 = load i32*, i32** %m.addr, align 8, !dbg !5450
  store i32 %call9, i32* %20, align 4, !dbg !5451
  br label %sw.epilog, !dbg !5452

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb
  ret void, !dbg !5453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipco_timing_init(%struct.ssb_chipcommon* %cc, i64 %ns) #0 !dbg !5454 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %ns.addr = alloca i64, align 8
  %dev = alloca %struct.ssb_device*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  %tmp = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i64 %ns, i64* %ns.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ns.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata %struct.ssb_device** %dev, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5463
  %dev1 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5464
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev1, align 8, !dbg !5464
  store %struct.ssb_device* %1, %struct.ssb_device** %dev, align 8, !dbg !5462
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !5465, metadata !DIExpression()), !dbg !5466
  %2 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5467
  %bus2 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %2, i32 0, i32 3, !dbg !5468
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus2, align 8, !dbg !5468
  store %struct.ssb_bus* %3, %struct.ssb_bus** %bus, align 8, !dbg !5466
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5469, metadata !DIExpression()), !dbg !5470
  %4 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5471
  %dev3 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %4, i32 0, i32 0, !dbg !5471
  %5 = load %struct.ssb_device*, %struct.ssb_device** %dev3, align 8, !dbg !5471
  call void @ssb_write32(%struct.ssb_device* %5, i16 zeroext 288, i32 17) #6, !dbg !5471
  %6 = load i64, i64* %ns.addr, align 8, !dbg !5472
  %add = add i64 10, %6, !dbg !5472
  %sub = sub i64 %add, 1, !dbg !5472
  %7 = load i64, i64* %ns.addr, align 8, !dbg !5472
  %div = udiv i64 %sub, %7, !dbg !5472
  %shl = shl i64 %div, 24, !dbg !5473
  %conv = trunc i64 %shl to i32, !dbg !5472
  store i32 %conv, i32* %tmp, align 4, !dbg !5474
  %8 = load i64, i64* %ns.addr, align 8, !dbg !5475
  %add4 = add i64 40, %8, !dbg !5475
  %sub5 = sub i64 %add4, 1, !dbg !5475
  %9 = load i64, i64* %ns.addr, align 8, !dbg !5475
  %div6 = udiv i64 %sub5, %9, !dbg !5475
  %shl7 = shl i64 %div6, 8, !dbg !5476
  %10 = load i32, i32* %tmp, align 4, !dbg !5477
  %conv8 = zext i32 %10 to i64, !dbg !5477
  %or = or i64 %conv8, %shl7, !dbg !5477
  %conv9 = trunc i64 %or to i32, !dbg !5477
  store i32 %conv9, i32* %tmp, align 4, !dbg !5477
  %11 = load i64, i64* %ns.addr, align 8, !dbg !5478
  %add10 = add i64 240, %11, !dbg !5478
  %sub11 = sub i64 %add10, 1, !dbg !5478
  %12 = load i64, i64* %ns.addr, align 8, !dbg !5478
  %div12 = udiv i64 %sub11, %12, !dbg !5478
  %13 = load i32, i32* %tmp, align 4, !dbg !5479
  %conv13 = zext i32 %13 to i64, !dbg !5479
  %or14 = or i64 %conv13, %div12, !dbg !5479
  %conv15 = trunc i64 %or14 to i32, !dbg !5479
  store i32 %conv15, i32* %tmp, align 4, !dbg !5479
  %14 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5480
  %dev16 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %14, i32 0, i32 0, !dbg !5480
  %15 = load %struct.ssb_device*, %struct.ssb_device** %dev16, align 8, !dbg !5480
  %16 = load i32, i32* %tmp, align 4, !dbg !5480
  call void @ssb_write32(%struct.ssb_device* %15, i16 zeroext 292, i32 %16) #6, !dbg !5480
  %17 = load i64, i64* %ns.addr, align 8, !dbg !5481
  %add17 = add i64 10, %17, !dbg !5481
  %sub18 = sub i64 %add17, 1, !dbg !5481
  %18 = load i64, i64* %ns.addr, align 8, !dbg !5481
  %div19 = udiv i64 %sub18, %18, !dbg !5481
  %shl20 = shl i64 %div19, 24, !dbg !5482
  %conv21 = trunc i64 %shl20 to i32, !dbg !5481
  store i32 %conv21, i32* %tmp, align 4, !dbg !5483
  %19 = load i64, i64* %ns.addr, align 8, !dbg !5484
  %add22 = add i64 10, %19, !dbg !5484
  %sub23 = sub i64 %add22, 1, !dbg !5484
  %20 = load i64, i64* %ns.addr, align 8, !dbg !5484
  %div24 = udiv i64 %sub23, %20, !dbg !5484
  %shl25 = shl i64 %div24, 8, !dbg !5485
  %21 = load i32, i32* %tmp, align 4, !dbg !5486
  %conv26 = zext i32 %21 to i64, !dbg !5486
  %or27 = or i64 %conv26, %shl25, !dbg !5486
  %conv28 = trunc i64 %or27 to i32, !dbg !5486
  store i32 %conv28, i32* %tmp, align 4, !dbg !5486
  %22 = load i64, i64* %ns.addr, align 8, !dbg !5487
  %add29 = add i64 120, %22, !dbg !5487
  %sub30 = sub i64 %add29, 1, !dbg !5487
  %23 = load i64, i64* %ns.addr, align 8, !dbg !5487
  %div31 = udiv i64 %sub30, %23, !dbg !5487
  %24 = load i32, i32* %tmp, align 4, !dbg !5488
  %conv32 = zext i32 %24 to i64, !dbg !5488
  %or33 = or i64 %conv32, %div31, !dbg !5488
  %conv34 = trunc i64 %or33 to i32, !dbg !5488
  store i32 %conv34, i32* %tmp, align 4, !dbg !5488
  %25 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5489
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %25, i32 0, i32 9, !dbg !5491
  %26 = load i16, i16* %chip_id, align 8, !dbg !5491
  %conv35 = zext i16 %26 to i32, !dbg !5489
  %cmp = icmp eq i32 %conv35, 21349, !dbg !5492
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5493

lor.lhs.false:                                    ; preds = %entry
  %27 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5494
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %27, i32 0, i32 4, !dbg !5495
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !5496
  %28 = load i8, i8* %revision, align 4, !dbg !5496
  %conv37 = zext i8 %28 to i32, !dbg !5494
  %cmp38 = icmp slt i32 %conv37, 9, !dbg !5497
  br i1 %cmp38, label %if.then, label %if.end, !dbg !5498

if.then:                                          ; preds = %lor.lhs.false, %entry
  %29 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5499
  %dev40 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %29, i32 0, i32 0, !dbg !5499
  %30 = load %struct.ssb_device*, %struct.ssb_device** %dev40, align 8, !dbg !5499
  %31 = load i32, i32* %tmp, align 4, !dbg !5499
  call void @ssb_write32(%struct.ssb_device* %30, i16 zeroext 300, i32 %31) #6, !dbg !5499
  br label %if.end, !dbg !5499

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5500
  %chip_id41 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %32, i32 0, i32 9, !dbg !5502
  %33 = load i16, i16* %chip_id41, align 8, !dbg !5502
  %conv42 = zext i16 %33 to i32, !dbg !5500
  %cmp43 = icmp eq i32 %conv42, 21349, !dbg !5503
  br i1 %cmp43, label %if.then59, label %lor.lhs.false45, !dbg !5504

lor.lhs.false45:                                  ; preds = %if.end
  %34 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5505
  %id46 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %34, i32 0, i32 4, !dbg !5506
  %revision47 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id46, i32 0, i32 2, !dbg !5507
  %35 = load i8, i8* %revision47, align 4, !dbg !5507
  %conv48 = zext i8 %35 to i32, !dbg !5505
  %cmp49 = icmp slt i32 %conv48, 9, !dbg !5508
  br i1 %cmp49, label %if.then59, label %lor.lhs.false51, !dbg !5509

lor.lhs.false51:                                  ; preds = %lor.lhs.false45
  %36 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5510
  %chip_id52 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %36, i32 0, i32 9, !dbg !5511
  %37 = load i16, i16* %chip_id52, align 8, !dbg !5511
  %conv53 = zext i16 %37 to i32, !dbg !5510
  %cmp54 = icmp eq i32 %conv53, 21328, !dbg !5512
  br i1 %cmp54, label %land.lhs.true, label %if.end61, !dbg !5513

land.lhs.true:                                    ; preds = %lor.lhs.false51
  %38 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5514
  %chip_rev = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %38, i32 0, i32 10, !dbg !5515
  %39 = load i8, i8* %chip_rev, align 2, !dbg !5515
  %conv56 = zext i8 %39 to i32, !dbg !5514
  %cmp57 = icmp eq i32 %conv56, 0, !dbg !5516
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !5517

if.then59:                                        ; preds = %land.lhs.true, %lor.lhs.false45, %if.end
  %40 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5518
  %dev60 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %40, i32 0, i32 0, !dbg !5518
  %41 = load %struct.ssb_device*, %struct.ssb_device** %dev60, align 8, !dbg !5518
  %42 = load i32, i32* %tmp, align 4, !dbg !5518
  call void @ssb_write32(%struct.ssb_device* %41, i16 zeroext 260, i32 %42) #6, !dbg !5518
  br label %if.end61, !dbg !5518

if.end61:                                         ; preds = %if.then59, %land.lhs.true, %lor.lhs.false51
  %43 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !5519
  %chip_id62 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %43, i32 0, i32 9, !dbg !5521
  %44 = load i16, i16* %chip_id62, align 8, !dbg !5521
  %conv63 = zext i16 %44 to i32, !dbg !5519
  %cmp64 = icmp eq i32 %conv63, 21328, !dbg !5522
  br i1 %cmp64, label %if.then66, label %if.end93, !dbg !5523

if.then66:                                        ; preds = %if.end61
  %45 = load i64, i64* %ns.addr, align 8, !dbg !5524
  %add67 = add i64 10, %45, !dbg !5524
  %sub68 = sub i64 %add67, 1, !dbg !5524
  %46 = load i64, i64* %ns.addr, align 8, !dbg !5524
  %div69 = udiv i64 %sub68, %46, !dbg !5524
  %shl70 = shl i64 %div69, 24, !dbg !5526
  %conv71 = trunc i64 %shl70 to i32, !dbg !5524
  store i32 %conv71, i32* %tmp, align 4, !dbg !5527
  %47 = load i64, i64* %ns.addr, align 8, !dbg !5528
  %add72 = add i64 20, %47, !dbg !5528
  %sub73 = sub i64 %add72, 1, !dbg !5528
  %48 = load i64, i64* %ns.addr, align 8, !dbg !5528
  %div74 = udiv i64 %sub73, %48, !dbg !5528
  %shl75 = shl i64 %div74, 16, !dbg !5529
  %49 = load i32, i32* %tmp, align 4, !dbg !5530
  %conv76 = zext i32 %49 to i64, !dbg !5530
  %or77 = or i64 %conv76, %shl75, !dbg !5530
  %conv78 = trunc i64 %or77 to i32, !dbg !5530
  store i32 %conv78, i32* %tmp, align 4, !dbg !5530
  %50 = load i64, i64* %ns.addr, align 8, !dbg !5531
  %add79 = add i64 100, %50, !dbg !5531
  %sub80 = sub i64 %add79, 1, !dbg !5531
  %51 = load i64, i64* %ns.addr, align 8, !dbg !5531
  %div81 = udiv i64 %sub80, %51, !dbg !5531
  %shl82 = shl i64 %div81, 8, !dbg !5532
  %52 = load i32, i32* %tmp, align 4, !dbg !5533
  %conv83 = zext i32 %52 to i64, !dbg !5533
  %or84 = or i64 %conv83, %shl82, !dbg !5533
  %conv85 = trunc i64 %or84 to i32, !dbg !5533
  store i32 %conv85, i32* %tmp, align 4, !dbg !5533
  %53 = load i64, i64* %ns.addr, align 8, !dbg !5534
  %add86 = add i64 120, %53, !dbg !5534
  %sub87 = sub i64 %add86, 1, !dbg !5534
  %54 = load i64, i64* %ns.addr, align 8, !dbg !5534
  %div88 = udiv i64 %sub87, %54, !dbg !5534
  %55 = load i32, i32* %tmp, align 4, !dbg !5535
  %conv89 = zext i32 %55 to i64, !dbg !5535
  %or90 = or i64 %conv89, %div88, !dbg !5535
  %conv91 = trunc i64 %or90 to i32, !dbg !5535
  store i32 %conv91, i32* %tmp, align 4, !dbg !5535
  %56 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5536
  %dev92 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %56, i32 0, i32 0, !dbg !5536
  %57 = load %struct.ssb_device*, %struct.ssb_device** %dev92, align 8, !dbg !5536
  %58 = load i32, i32* %tmp, align 4, !dbg !5536
  call void @ssb_write32(%struct.ssb_device* %57, i16 zeroext 292, i32 %58) #6, !dbg !5536
  br label %if.end93, !dbg !5537

if.end93:                                         ; preds = %if.then66, %if.end61
  ret void, !dbg !5538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ssb_chipco_irq_mask(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5539 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5542, metadata !DIExpression()), !dbg !5543
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5546, metadata !DIExpression()), !dbg !5547
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5548
  %1 = load i32, i32* %mask.addr, align 4, !dbg !5549
  %2 = load i32, i32* %value.addr, align 4, !dbg !5550
  %call = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %0, i16 zeroext 36, i32 %1, i32 %2) #6, !dbg !5551
  ret void, !dbg !5552
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chipco_write32_masked(%struct.ssb_chipcommon* %cc, i16 zeroext %offset, i32 %mask, i32 %value) #0 !dbg !5553 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %offset.addr = alloca i16, align 2
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5556, metadata !DIExpression()), !dbg !5557
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !5558, metadata !DIExpression()), !dbg !5559
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load i32, i32* %mask.addr, align 4, !dbg !5564
  %1 = load i32, i32* %value.addr, align 4, !dbg !5565
  %and = and i32 %1, %0, !dbg !5565
  store i32 %and, i32* %value.addr, align 4, !dbg !5565
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5566
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 0, !dbg !5566
  %3 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5566
  %4 = load i16, i16* %offset.addr, align 2, !dbg !5566
  %call = call i32 @ssb_read32(%struct.ssb_device* %3, i16 zeroext %4) #6, !dbg !5566
  %5 = load i32, i32* %mask.addr, align 4, !dbg !5567
  %neg = xor i32 %5, -1, !dbg !5568
  %and1 = and i32 %call, %neg, !dbg !5569
  %6 = load i32, i32* %value.addr, align 4, !dbg !5570
  %or = or i32 %6, %and1, !dbg !5570
  store i32 %or, i32* %value.addr, align 4, !dbg !5570
  %7 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5571
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %7, i32 0, i32 0, !dbg !5571
  %8 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !5571
  %9 = load i16, i16* %offset.addr, align 2, !dbg !5571
  %10 = load i32, i32* %value.addr, align 4, !dbg !5571
  call void @ssb_write32(%struct.ssb_device* %8, i16 zeroext %9, i32 %10) #6, !dbg !5571
  %11 = load i32, i32* %value.addr, align 4, !dbg !5572
  ret i32 %11, !dbg !5573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_irq_status(%struct.ssb_chipcommon* %cc, i32 %mask) #0 !dbg !5574 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5579
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5579
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5579
  %call = call i32 @ssb_read32(%struct.ssb_device* %1, i16 zeroext 32) #6, !dbg !5579
  %2 = load i32, i32* %mask.addr, align 4, !dbg !5580
  %and = and i32 %call, %2, !dbg !5581
  ret i32 %and, !dbg !5582
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_in(%struct.ssb_chipcommon* %cc, i32 %mask) #0 !dbg !5583 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5584, metadata !DIExpression()), !dbg !5585
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5586, metadata !DIExpression()), !dbg !5587
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5588
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5588
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5588
  %call = call i32 @ssb_read32(%struct.ssb_device* %1, i16 zeroext 96) #6, !dbg !5588
  %2 = load i32, i32* %mask.addr, align 4, !dbg !5589
  %and = and i32 %call, %2, !dbg !5590
  ret i32 %and, !dbg !5591
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_out(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5592 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !5595, metadata !DIExpression()), !dbg !5599
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5601, metadata !DIExpression()), !dbg !5602
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5603
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %res = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5610, metadata !DIExpression()), !dbg !5611
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5612, metadata !DIExpression()), !dbg !5613
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5616, metadata !DIExpression()), !dbg !5617
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5618, metadata !DIExpression()), !dbg !5619
  store i32 0, i32* %res, align 4, !dbg !5619
  br label %do.body, !dbg !5620

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5621

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5622, metadata !DIExpression()), !dbg !5624
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5625, metadata !DIExpression()), !dbg !5624
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5624
  %conv = zext i1 %cmp to i32, !dbg !5624
  store i32 1, i32* %tmp, align 4, !dbg !5624
  %0 = load i32, i32* %tmp, align 4, !dbg !5624
  br label %do.body2, !dbg !5626

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5627

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5628

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5630, metadata !DIExpression()), !dbg !5633
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5634, metadata !DIExpression()), !dbg !5633
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5633
  %conv8 = zext i1 %cmp7 to i32, !dbg !5633
  store i32 1, i32* %tmp9, align 4, !dbg !5633
  %1 = load i32, i32* %tmp9, align 4, !dbg !5633
  %call = call i64 @arch_local_irq_save() #6, !dbg !5635
  store i64 %call, i64* %flags, align 8, !dbg !5635
  br label %do.end, !dbg !5635

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5628

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5627

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5636, !srcloc !5637
  br label %do.body12, !dbg !5636

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5638
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 4, !dbg !5638
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5639
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5640
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5640
  br label %do.end14, !dbg !5638

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5636

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5627

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5626

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5621

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5641
  %6 = load i32, i32* %mask.addr, align 4, !dbg !5642
  %7 = load i32, i32* %value.addr, align 4, !dbg !5643
  %call19 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %5, i16 zeroext 100, i32 %6, i32 %7) #6, !dbg !5644
  store i32 %call19, i32* %res, align 4, !dbg !5645
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5646
  %gpio_lock20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 4, !dbg !5647
  %9 = load i64, i64* %flags, align 8, !dbg !5648
  store %struct.spinlock* %gpio_lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !242, metadata !5649, metadata !DIExpression()) #5, !dbg !5652
  call void @llvm.dbg.declare(metadata !242, metadata !5653, metadata !DIExpression()) #5, !dbg !5652
  store i32 1, i32* %tmp.i, align 4, !dbg !5652
  %10 = load i32, i32* %tmp.i, align 4, !dbg !5652
  call void @llvm.dbg.declare(metadata !242, metadata !5654, metadata !DIExpression()) #5, !dbg !5659
  call void @llvm.dbg.declare(metadata !242, metadata !5660, metadata !DIExpression()) #5, !dbg !5659
  store i32 1, i32* %tmp8.i, align 4, !dbg !5659
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !5659
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !5661
  call void @arch_local_irq_restore(i64 %12) #7, !dbg !5661
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5662, !srcloc !5664
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5665
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !5665
  %rlock.i22 = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !5665
  %15 = load i32, i32* %res, align 4, !dbg !5667
  ret i32 %15, !dbg !5668
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5669 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5672, metadata !DIExpression()), !dbg !5673
  %call = call i64 @arch_local_save_flags() #6, !dbg !5674
  store i64 %call, i64* %f, align 8, !dbg !5675
  call void @arch_local_irq_disable() #6, !dbg !5676
  %0 = load i64, i64* %f, align 8, !dbg !5677
  ret i64 %0, !dbg !5678
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_outen(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5679 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !5595, metadata !DIExpression()), !dbg !5680
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5601, metadata !DIExpression()), !dbg !5682
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5683
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %res = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5696, metadata !DIExpression()), !dbg !5697
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5698, metadata !DIExpression()), !dbg !5699
  store i32 0, i32* %res, align 4, !dbg !5699
  br label %do.body, !dbg !5700

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5701

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5702, metadata !DIExpression()), !dbg !5704
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5705, metadata !DIExpression()), !dbg !5704
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5704
  %conv = zext i1 %cmp to i32, !dbg !5704
  store i32 1, i32* %tmp, align 4, !dbg !5704
  %0 = load i32, i32* %tmp, align 4, !dbg !5704
  br label %do.body2, !dbg !5706

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5707

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5708

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5710, metadata !DIExpression()), !dbg !5713
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5714, metadata !DIExpression()), !dbg !5713
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5713
  %conv8 = zext i1 %cmp7 to i32, !dbg !5713
  store i32 1, i32* %tmp9, align 4, !dbg !5713
  %1 = load i32, i32* %tmp9, align 4, !dbg !5713
  %call = call i64 @arch_local_irq_save() #6, !dbg !5715
  store i64 %call, i64* %flags, align 8, !dbg !5715
  br label %do.end, !dbg !5715

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5708

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5707

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5716, !srcloc !5717
  br label %do.body12, !dbg !5716

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5718
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 4, !dbg !5718
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5719
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5720
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5720
  br label %do.end14, !dbg !5718

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5716

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5707

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5706

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5701

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5721
  %6 = load i32, i32* %mask.addr, align 4, !dbg !5722
  %7 = load i32, i32* %value.addr, align 4, !dbg !5723
  %call19 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %5, i16 zeroext 104, i32 %6, i32 %7) #6, !dbg !5724
  store i32 %call19, i32* %res, align 4, !dbg !5725
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5726
  %gpio_lock20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 4, !dbg !5727
  %9 = load i64, i64* %flags, align 8, !dbg !5728
  store %struct.spinlock* %gpio_lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !242, metadata !5649, metadata !DIExpression()) #5, !dbg !5729
  call void @llvm.dbg.declare(metadata !242, metadata !5653, metadata !DIExpression()) #5, !dbg !5729
  store i32 1, i32* %tmp.i, align 4, !dbg !5729
  %10 = load i32, i32* %tmp.i, align 4, !dbg !5729
  call void @llvm.dbg.declare(metadata !242, metadata !5654, metadata !DIExpression()) #5, !dbg !5730
  call void @llvm.dbg.declare(metadata !242, metadata !5660, metadata !DIExpression()) #5, !dbg !5730
  store i32 1, i32* %tmp8.i, align 4, !dbg !5730
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !5730
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !5731
  call void @arch_local_irq_restore(i64 %12) #7, !dbg !5731
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5732, !srcloc !5664
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5733
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !5733
  %rlock.i22 = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !5733
  %15 = load i32, i32* %res, align 4, !dbg !5734
  ret i32 %15, !dbg !5735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_control(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5736 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !5595, metadata !DIExpression()), !dbg !5737
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5601, metadata !DIExpression()), !dbg !5739
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5740
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %res = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5747, metadata !DIExpression()), !dbg !5748
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5749, metadata !DIExpression()), !dbg !5750
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5753, metadata !DIExpression()), !dbg !5754
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5755, metadata !DIExpression()), !dbg !5756
  store i32 0, i32* %res, align 4, !dbg !5756
  br label %do.body, !dbg !5757

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5758

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5759, metadata !DIExpression()), !dbg !5761
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5762, metadata !DIExpression()), !dbg !5761
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5761
  %conv = zext i1 %cmp to i32, !dbg !5761
  store i32 1, i32* %tmp, align 4, !dbg !5761
  %0 = load i32, i32* %tmp, align 4, !dbg !5761
  br label %do.body2, !dbg !5763

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5764

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5765

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5767, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5771, metadata !DIExpression()), !dbg !5770
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5770
  %conv8 = zext i1 %cmp7 to i32, !dbg !5770
  store i32 1, i32* %tmp9, align 4, !dbg !5770
  %1 = load i32, i32* %tmp9, align 4, !dbg !5770
  %call = call i64 @arch_local_irq_save() #6, !dbg !5772
  store i64 %call, i64* %flags, align 8, !dbg !5772
  br label %do.end, !dbg !5772

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5765

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5764

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5773, !srcloc !5774
  br label %do.body12, !dbg !5773

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5775
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 4, !dbg !5775
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5776
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5777
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5777
  br label %do.end14, !dbg !5775

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5773

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5764

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5763

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5758

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5778
  %6 = load i32, i32* %mask.addr, align 4, !dbg !5779
  %7 = load i32, i32* %value.addr, align 4, !dbg !5780
  %call19 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %5, i16 zeroext 108, i32 %6, i32 %7) #6, !dbg !5781
  store i32 %call19, i32* %res, align 4, !dbg !5782
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5783
  %gpio_lock20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 4, !dbg !5784
  %9 = load i64, i64* %flags, align 8, !dbg !5785
  store %struct.spinlock* %gpio_lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !242, metadata !5649, metadata !DIExpression()) #5, !dbg !5786
  call void @llvm.dbg.declare(metadata !242, metadata !5653, metadata !DIExpression()) #5, !dbg !5786
  store i32 1, i32* %tmp.i, align 4, !dbg !5786
  %10 = load i32, i32* %tmp.i, align 4, !dbg !5786
  call void @llvm.dbg.declare(metadata !242, metadata !5654, metadata !DIExpression()) #5, !dbg !5787
  call void @llvm.dbg.declare(metadata !242, metadata !5660, metadata !DIExpression()) #5, !dbg !5787
  store i32 1, i32* %tmp8.i, align 4, !dbg !5787
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !5787
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !5788
  call void @arch_local_irq_restore(i64 %12) #7, !dbg !5788
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5789, !srcloc !5664
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5790
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !5790
  %rlock.i22 = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !5790
  %15 = load i32, i32* %res, align 4, !dbg !5791
  ret i32 %15, !dbg !5792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_intmask(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5793 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !5595, metadata !DIExpression()), !dbg !5794
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5601, metadata !DIExpression()), !dbg !5796
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5797
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %res = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5810, metadata !DIExpression()), !dbg !5811
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5812, metadata !DIExpression()), !dbg !5813
  store i32 0, i32* %res, align 4, !dbg !5813
  br label %do.body, !dbg !5814

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5815

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5816, metadata !DIExpression()), !dbg !5818
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5819, metadata !DIExpression()), !dbg !5818
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5818
  %conv = zext i1 %cmp to i32, !dbg !5818
  store i32 1, i32* %tmp, align 4, !dbg !5818
  %0 = load i32, i32* %tmp, align 4, !dbg !5818
  br label %do.body2, !dbg !5820

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5821

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5822

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5824, metadata !DIExpression()), !dbg !5827
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5828, metadata !DIExpression()), !dbg !5827
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5827
  %conv8 = zext i1 %cmp7 to i32, !dbg !5827
  store i32 1, i32* %tmp9, align 4, !dbg !5827
  %1 = load i32, i32* %tmp9, align 4, !dbg !5827
  %call = call i64 @arch_local_irq_save() #6, !dbg !5829
  store i64 %call, i64* %flags, align 8, !dbg !5829
  br label %do.end, !dbg !5829

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5822

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5821

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5830, !srcloc !5831
  br label %do.body12, !dbg !5830

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5832
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 4, !dbg !5832
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5833
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5834
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5834
  br label %do.end14, !dbg !5832

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5830

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5821

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5820

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5815

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5835
  %6 = load i32, i32* %mask.addr, align 4, !dbg !5836
  %7 = load i32, i32* %value.addr, align 4, !dbg !5837
  %call19 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %5, i16 zeroext 116, i32 %6, i32 %7) #6, !dbg !5838
  store i32 %call19, i32* %res, align 4, !dbg !5839
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5840
  %gpio_lock20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 4, !dbg !5841
  %9 = load i64, i64* %flags, align 8, !dbg !5842
  store %struct.spinlock* %gpio_lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !242, metadata !5649, metadata !DIExpression()) #5, !dbg !5843
  call void @llvm.dbg.declare(metadata !242, metadata !5653, metadata !DIExpression()) #5, !dbg !5843
  store i32 1, i32* %tmp.i, align 4, !dbg !5843
  %10 = load i32, i32* %tmp.i, align 4, !dbg !5843
  call void @llvm.dbg.declare(metadata !242, metadata !5654, metadata !DIExpression()) #5, !dbg !5844
  call void @llvm.dbg.declare(metadata !242, metadata !5660, metadata !DIExpression()) #5, !dbg !5844
  store i32 1, i32* %tmp8.i, align 4, !dbg !5844
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !5844
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !5845
  call void @arch_local_irq_restore(i64 %12) #7, !dbg !5845
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5846, !srcloc !5664
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5847
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !5847
  %rlock.i22 = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !5847
  %15 = load i32, i32* %res, align 4, !dbg !5848
  ret i32 %15, !dbg !5849
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_polarity(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5850 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !5595, metadata !DIExpression()), !dbg !5851
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5601, metadata !DIExpression()), !dbg !5853
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5854
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %res = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5861, metadata !DIExpression()), !dbg !5862
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5863, metadata !DIExpression()), !dbg !5864
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5865, metadata !DIExpression()), !dbg !5866
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5867, metadata !DIExpression()), !dbg !5868
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5869, metadata !DIExpression()), !dbg !5870
  store i32 0, i32* %res, align 4, !dbg !5870
  br label %do.body, !dbg !5871

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5872

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5873, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5876, metadata !DIExpression()), !dbg !5875
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5875
  %conv = zext i1 %cmp to i32, !dbg !5875
  store i32 1, i32* %tmp, align 4, !dbg !5875
  %0 = load i32, i32* %tmp, align 4, !dbg !5875
  br label %do.body2, !dbg !5877

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5878

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !5879

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !5881, metadata !DIExpression()), !dbg !5884
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5885, metadata !DIExpression()), !dbg !5884
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !5884
  %conv8 = zext i1 %cmp7 to i32, !dbg !5884
  store i32 1, i32* %tmp9, align 4, !dbg !5884
  %1 = load i32, i32* %tmp9, align 4, !dbg !5884
  %call = call i64 @arch_local_irq_save() #6, !dbg !5886
  store i64 %call, i64* %flags, align 8, !dbg !5886
  br label %do.end, !dbg !5886

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !5879

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !5878

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5887, !srcloc !5888
  br label %do.body12, !dbg !5887

do.body12:                                        ; preds = %do.body11
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5889
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %2, i32 0, i32 4, !dbg !5889
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5890
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !5891
  %rlock.i = bitcast %union.anon.1* %4 to %struct.raw_spinlock*, !dbg !5891
  br label %do.end14, !dbg !5889

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !5887

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5878

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5877

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5872

do.end18:                                         ; preds = %do.end17
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5892
  %6 = load i32, i32* %mask.addr, align 4, !dbg !5893
  %7 = load i32, i32* %value.addr, align 4, !dbg !5894
  %call19 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %5, i16 zeroext 112, i32 %6, i32 %7) #6, !dbg !5895
  store i32 %call19, i32* %res, align 4, !dbg !5896
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5897
  %gpio_lock20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 4, !dbg !5898
  %9 = load i64, i64* %flags, align 8, !dbg !5899
  store %struct.spinlock* %gpio_lock20, %struct.spinlock** %lock.addr.i21, align 8
  store i64 %9, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !242, metadata !5649, metadata !DIExpression()) #5, !dbg !5900
  call void @llvm.dbg.declare(metadata !242, metadata !5653, metadata !DIExpression()) #5, !dbg !5900
  store i32 1, i32* %tmp.i, align 4, !dbg !5900
  %10 = load i32, i32* %tmp.i, align 4, !dbg !5900
  call void @llvm.dbg.declare(metadata !242, metadata !5654, metadata !DIExpression()) #5, !dbg !5901
  call void @llvm.dbg.declare(metadata !242, metadata !5660, metadata !DIExpression()) #5, !dbg !5901
  store i32 1, i32* %tmp8.i, align 4, !dbg !5901
  %11 = load i32, i32* %tmp8.i, align 4, !dbg !5901
  %12 = load i64, i64* %flags.addr.i, align 8, !dbg !5902
  call void @arch_local_irq_restore(i64 %12) #7, !dbg !5902
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5903, !srcloc !5664
  %13 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !5904
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %13, i32 0, i32 0, !dbg !5904
  %rlock.i22 = bitcast %union.anon.1* %14 to %struct.raw_spinlock*, !dbg !5904
  %15 = load i32, i32* %res, align 4, !dbg !5905
  ret i32 %15, !dbg !5906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_pullup(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5907 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !5595, metadata !DIExpression()), !dbg !5908
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5601, metadata !DIExpression()), !dbg !5910
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5911
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %res = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5920, metadata !DIExpression()), !dbg !5921
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5924, metadata !DIExpression()), !dbg !5925
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5926, metadata !DIExpression()), !dbg !5927
  store i32 0, i32* %res, align 4, !dbg !5927
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5928
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5930
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5930
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 4, !dbg !5931
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !5932
  %2 = load i8, i8* %revision, align 4, !dbg !5932
  %conv = zext i8 %2 to i32, !dbg !5928
  %cmp = icmp slt i32 %conv, 20, !dbg !5933
  br i1 %cmp, label %if.then, label %if.end, !dbg !5934

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !5935
  br label %return, !dbg !5935

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5936

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5937

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5938, metadata !DIExpression()), !dbg !5940
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5941, metadata !DIExpression()), !dbg !5940
  %cmp3 = icmp eq i64* %__dummy, %__dummy2, !dbg !5940
  %conv4 = zext i1 %cmp3 to i32, !dbg !5940
  store i32 1, i32* %tmp, align 4, !dbg !5940
  %3 = load i32, i32* %tmp, align 4, !dbg !5940
  br label %do.body5, !dbg !5942

do.body5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !5943

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !5944

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !5946, metadata !DIExpression()), !dbg !5949
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !5950, metadata !DIExpression()), !dbg !5949
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !5949
  %conv11 = zext i1 %cmp10 to i32, !dbg !5949
  store i32 1, i32* %tmp12, align 4, !dbg !5949
  %4 = load i32, i32* %tmp12, align 4, !dbg !5949
  %call = call i64 @arch_local_irq_save() #6, !dbg !5951
  store i64 %call, i64* %flags, align 8, !dbg !5951
  br label %do.end, !dbg !5951

do.end:                                           ; preds = %do.body7
  br label %do.end13, !dbg !5944

do.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !5943

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5952, !srcloc !5953
  br label %do.body15, !dbg !5952

do.body15:                                        ; preds = %do.body14
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5954
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 4, !dbg !5954
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5955
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !5956
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !5956
  br label %do.end17, !dbg !5954

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !5952

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !5943

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !5942

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !5937

do.end21:                                         ; preds = %do.end20
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5957
  %9 = load i32, i32* %mask.addr, align 4, !dbg !5958
  %10 = load i32, i32* %value.addr, align 4, !dbg !5959
  %call22 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %8, i16 zeroext 88, i32 %9, i32 %10) #6, !dbg !5960
  store i32 %call22, i32* %res, align 4, !dbg !5961
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5962
  %gpio_lock23 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 4, !dbg !5963
  %12 = load i64, i64* %flags, align 8, !dbg !5964
  store %struct.spinlock* %gpio_lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !242, metadata !5649, metadata !DIExpression()) #5, !dbg !5965
  call void @llvm.dbg.declare(metadata !242, metadata !5653, metadata !DIExpression()) #5, !dbg !5965
  store i32 1, i32* %tmp.i, align 4, !dbg !5965
  %13 = load i32, i32* %tmp.i, align 4, !dbg !5965
  call void @llvm.dbg.declare(metadata !242, metadata !5654, metadata !DIExpression()) #5, !dbg !5966
  call void @llvm.dbg.declare(metadata !242, metadata !5660, metadata !DIExpression()) #5, !dbg !5966
  store i32 1, i32* %tmp8.i, align 4, !dbg !5966
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !5966
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !5967
  call void @arch_local_irq_restore(i64 %15) #7, !dbg !5967
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5968, !srcloc !5664
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !5969
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !5969
  %rlock.i25 = bitcast %union.anon.1* %17 to %struct.raw_spinlock*, !dbg !5969
  %18 = load i32, i32* %res, align 4, !dbg !5970
  store i32 %18, i32* %retval, align 4, !dbg !5971
  br label %return, !dbg !5971

return:                                           ; preds = %do.end21, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5972
  ret i32 %19, !dbg !5972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ssb_chipco_gpio_pulldown(%struct.ssb_chipcommon* %cc, i32 %mask, i32 %value) #0 !dbg !5973 {
entry:
  %lock.addr.i24 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i24, metadata !5595, metadata !DIExpression()), !dbg !5974
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !5601, metadata !DIExpression()), !dbg !5976
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5977
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %mask.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %res = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !5984, metadata !DIExpression()), !dbg !5985
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !5986, metadata !DIExpression()), !dbg !5987
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5988, metadata !DIExpression()), !dbg !5989
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5990, metadata !DIExpression()), !dbg !5991
  call void @llvm.dbg.declare(metadata i32* %res, metadata !5992, metadata !DIExpression()), !dbg !5993
  store i32 0, i32* %res, align 4, !dbg !5993
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !5994
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !5996
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !5996
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 4, !dbg !5997
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !5998
  %2 = load i8, i8* %revision, align 4, !dbg !5998
  %conv = zext i8 %2 to i32, !dbg !5994
  %cmp = icmp slt i32 %conv, 20, !dbg !5999
  br i1 %cmp, label %if.then, label %if.end, !dbg !6000

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !6001
  br label %return, !dbg !6001

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6002

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !6003

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6004, metadata !DIExpression()), !dbg !6006
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6007, metadata !DIExpression()), !dbg !6006
  %cmp3 = icmp eq i64* %__dummy, %__dummy2, !dbg !6006
  %conv4 = zext i1 %cmp3 to i32, !dbg !6006
  store i32 1, i32* %tmp, align 4, !dbg !6006
  %3 = load i32, i32* %tmp, align 4, !dbg !6006
  br label %do.body5, !dbg !6008

do.body5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !6009

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !6010

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !6012, metadata !DIExpression()), !dbg !6015
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !6016, metadata !DIExpression()), !dbg !6015
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !6015
  %conv11 = zext i1 %cmp10 to i32, !dbg !6015
  store i32 1, i32* %tmp12, align 4, !dbg !6015
  %4 = load i32, i32* %tmp12, align 4, !dbg !6015
  %call = call i64 @arch_local_irq_save() #6, !dbg !6017
  store i64 %call, i64* %flags, align 8, !dbg !6017
  br label %do.end, !dbg !6017

do.end:                                           ; preds = %do.body7
  br label %do.end13, !dbg !6010

do.end13:                                         ; preds = %do.end
  br label %do.body14, !dbg !6009

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6018, !srcloc !6019
  br label %do.body15, !dbg !6018

do.body15:                                        ; preds = %do.body14
  %5 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6020
  %gpio_lock = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %5, i32 0, i32 4, !dbg !6020
  store %struct.spinlock* %gpio_lock, %struct.spinlock** %lock.addr.i, align 8
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !6021
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !6022
  %rlock.i = bitcast %union.anon.1* %7 to %struct.raw_spinlock*, !dbg !6022
  br label %do.end17, !dbg !6020

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !6018

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !6009

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !6008

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !6003

do.end21:                                         ; preds = %do.end20
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6023
  %9 = load i32, i32* %mask.addr, align 4, !dbg !6024
  %10 = load i32, i32* %value.addr, align 4, !dbg !6025
  %call22 = call i32 @chipco_write32_masked(%struct.ssb_chipcommon* %8, i16 zeroext 92, i32 %9, i32 %10) #6, !dbg !6026
  store i32 %call22, i32* %res, align 4, !dbg !6027
  %11 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6028
  %gpio_lock23 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %11, i32 0, i32 4, !dbg !6029
  %12 = load i64, i64* %flags, align 8, !dbg !6030
  store %struct.spinlock* %gpio_lock23, %struct.spinlock** %lock.addr.i24, align 8
  store i64 %12, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !242, metadata !5649, metadata !DIExpression()) #5, !dbg !6031
  call void @llvm.dbg.declare(metadata !242, metadata !5653, metadata !DIExpression()) #5, !dbg !6031
  store i32 1, i32* %tmp.i, align 4, !dbg !6031
  %13 = load i32, i32* %tmp.i, align 4, !dbg !6031
  call void @llvm.dbg.declare(metadata !242, metadata !5654, metadata !DIExpression()) #5, !dbg !6032
  call void @llvm.dbg.declare(metadata !242, metadata !5660, metadata !DIExpression()) #5, !dbg !6032
  store i32 1, i32* %tmp8.i, align 4, !dbg !6032
  %14 = load i32, i32* %tmp8.i, align 4, !dbg !6032
  %15 = load i64, i64* %flags.addr.i, align 8, !dbg !6033
  call void @arch_local_irq_restore(i64 %15) #7, !dbg !6033
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !6034, !srcloc !5664
  %16 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i24, align 8, !dbg !6035
  %17 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %16, i32 0, i32 0, !dbg !6035
  %rlock.i25 = bitcast %union.anon.1* %17 to %struct.raw_spinlock*, !dbg !6035
  %18 = load i32, i32* %res, align 4, !dbg !6036
  store i32 %18, i32* %retval, align 4, !dbg !6037
  br label %return, !dbg !6037

return:                                           ; preds = %do.end21, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !6038
  ret i32 %19, !dbg !6038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chipco_pctl_clockfreqlimit(%struct.ssb_chipcommon* %cc, i32 %get_max) #0 !dbg !6039 {
entry:
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %get_max.addr = alloca i32, align 4
  %limit = alloca i32, align 4
  %clocksrc = alloca i32, align 4
  %divisor = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp13 = alloca i64, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  store i32 %get_max, i32* %get_max.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %get_max.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  call void @llvm.dbg.declare(metadata i32* %limit, metadata !6046, metadata !DIExpression()), !dbg !6047
  call void @llvm.dbg.declare(metadata i32* %clocksrc, metadata !6048, metadata !DIExpression()), !dbg !6049
  call void @llvm.dbg.declare(metadata i32* %divisor, metadata !6050, metadata !DIExpression()), !dbg !6051
  store i32 1, i32* %divisor, align 4, !dbg !6051
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6054
  %call = call i32 @chipco_pctl_get_slowclksrc(%struct.ssb_chipcommon* %0) #6, !dbg !6055
  store i32 %call, i32* %clocksrc, align 4, !dbg !6056
  %1 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6057
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %1, i32 0, i32 0, !dbg !6059
  %2 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !6059
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %2, i32 0, i32 4, !dbg !6060
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !6061
  %3 = load i8, i8* %revision, align 4, !dbg !6061
  %conv = zext i8 %3 to i32, !dbg !6057
  %cmp = icmp slt i32 %conv, 6, !dbg !6062
  br i1 %cmp, label %if.then, label %if.else, !dbg !6063

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %clocksrc, align 4, !dbg !6064
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !6066

sw.bb:                                            ; preds = %if.then
  store i32 64, i32* %divisor, align 4, !dbg !6067
  br label %sw.epilog, !dbg !6069

sw.bb2:                                           ; preds = %if.then
  store i32 32, i32* %divisor, align 4, !dbg !6070
  br label %sw.epilog, !dbg !6071

sw.default:                                       ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6072, metadata !DIExpression()), !dbg !6074
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6074
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !6075
  %tobool = icmp ne i32 %5, 0, !dbg !6075
  %lnot = xor i1 %tobool, true, !dbg !6075
  %lnot3 = xor i1 %lnot, true, !dbg !6075
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6075
  %conv4 = sext i32 %lnot.ext to i64, !dbg !6075
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !6075
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6074

if.then6:                                         ; preds = %sw.default
  br label %do.body, !dbg !6075

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !6077

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !6079

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !6077

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 167, i32 2305, i64 12) #5, !dbg !6081, !srcloc !6083
  br label %do.end9, !dbg !6081

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #5, !dbg !6084, !srcloc !6086
  br label %do.body10, !dbg !6077

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !6087

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !6077

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !6077

if.end:                                           ; preds = %do.end12, %sw.default
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !6074
  %tobool14 = icmp ne i32 %6, 0, !dbg !6074
  %lnot15 = xor i1 %tobool14, true, !dbg !6074
  %lnot17 = xor i1 %lnot15, true, !dbg !6074
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6074
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !6074
  store i64 %conv19, i64* %tmp13, align 8, !dbg !6075
  %7 = load i64, i64* %tmp13, align 8, !dbg !6074
  br label %sw.epilog, !dbg !6089

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb
  br label %if.end39, !dbg !6090

if.else:                                          ; preds = %entry
  %8 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6091
  %dev20 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %8, i32 0, i32 0, !dbg !6093
  %9 = load %struct.ssb_device*, %struct.ssb_device** %dev20, align 8, !dbg !6093
  %id21 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %9, i32 0, i32 4, !dbg !6094
  %revision22 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id21, i32 0, i32 2, !dbg !6095
  %10 = load i8, i8* %revision22, align 4, !dbg !6095
  %conv23 = zext i8 %10 to i32, !dbg !6091
  %cmp24 = icmp slt i32 %conv23, 10, !dbg !6096
  br i1 %cmp24, label %if.then26, label %if.else32, !dbg !6097

if.then26:                                        ; preds = %if.else
  %11 = load i32, i32* %clocksrc, align 4, !dbg !6098
  switch i32 %11, label %sw.epilog31 [
    i32 2, label %sw.bb27
    i32 1, label %sw.bb28
    i32 0, label %sw.bb28
  ], !dbg !6100

sw.bb27:                                          ; preds = %if.then26
  br label %sw.epilog31, !dbg !6101

sw.bb28:                                          ; preds = %if.then26, %if.then26
  %12 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6103
  %dev29 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %12, i32 0, i32 0, !dbg !6103
  %13 = load %struct.ssb_device*, %struct.ssb_device** %dev29, align 8, !dbg !6103
  %call30 = call i32 @ssb_read32(%struct.ssb_device* %13, i16 zeroext 184) #6, !dbg !6103
  store i32 %call30, i32* %tmp, align 4, !dbg !6104
  %14 = load i32, i32* %tmp, align 4, !dbg !6105
  %shr = lshr i32 %14, 16, !dbg !6106
  %add = add i32 %shr, 1, !dbg !6107
  store i32 %add, i32* %divisor, align 4, !dbg !6108
  %15 = load i32, i32* %divisor, align 4, !dbg !6109
  %mul = mul i32 %15, 4, !dbg !6109
  store i32 %mul, i32* %divisor, align 4, !dbg !6109
  br label %sw.epilog31, !dbg !6110

sw.epilog31:                                      ; preds = %if.then26, %sw.bb28, %sw.bb27
  br label %if.end38, !dbg !6111

if.else32:                                        ; preds = %if.else
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6112
  %dev33 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %16, i32 0, i32 0, !dbg !6112
  %17 = load %struct.ssb_device*, %struct.ssb_device** %dev33, align 8, !dbg !6112
  %call34 = call i32 @ssb_read32(%struct.ssb_device* %17, i16 zeroext 192) #6, !dbg !6112
  store i32 %call34, i32* %tmp, align 4, !dbg !6114
  %18 = load i32, i32* %tmp, align 4, !dbg !6115
  %shr35 = lshr i32 %18, 16, !dbg !6116
  %add36 = add i32 %shr35, 1, !dbg !6117
  store i32 %add36, i32* %divisor, align 4, !dbg !6118
  %19 = load i32, i32* %divisor, align 4, !dbg !6119
  %mul37 = mul i32 %19, 4, !dbg !6119
  store i32 %mul37, i32* %divisor, align 4, !dbg !6119
  br label %if.end38

if.end38:                                         ; preds = %if.else32, %sw.epilog31
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %sw.epilog
  %20 = load i32, i32* %clocksrc, align 4, !dbg !6120
  switch i32 %20, label %sw.epilog55 [
    i32 2, label %sw.bb40
    i32 1, label %sw.bb45
    i32 0, label %sw.bb50
  ], !dbg !6121

sw.bb40:                                          ; preds = %if.end39
  %21 = load i32, i32* %get_max.addr, align 4, !dbg !6122
  %tobool41 = icmp ne i32 %21, 0, !dbg !6122
  br i1 %tobool41, label %if.then42, label %if.else43, !dbg !6125

if.then42:                                        ; preds = %sw.bb40
  store i32 43000, i32* %limit, align 4, !dbg !6126
  br label %if.end44, !dbg !6127

if.else43:                                        ; preds = %sw.bb40
  store i32 25000, i32* %limit, align 4, !dbg !6128
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then42
  br label %sw.epilog55, !dbg !6129

sw.bb45:                                          ; preds = %if.end39
  %22 = load i32, i32* %get_max.addr, align 4, !dbg !6130
  %tobool46 = icmp ne i32 %22, 0, !dbg !6130
  br i1 %tobool46, label %if.then47, label %if.else48, !dbg !6132

if.then47:                                        ; preds = %sw.bb45
  store i32 20200000, i32* %limit, align 4, !dbg !6133
  br label %if.end49, !dbg !6134

if.else48:                                        ; preds = %sw.bb45
  store i32 19800000, i32* %limit, align 4, !dbg !6135
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.then47
  br label %sw.epilog55, !dbg !6136

sw.bb50:                                          ; preds = %if.end39
  %23 = load i32, i32* %get_max.addr, align 4, !dbg !6137
  %tobool51 = icmp ne i32 %23, 0, !dbg !6137
  br i1 %tobool51, label %if.then52, label %if.else53, !dbg !6139

if.then52:                                        ; preds = %sw.bb50
  store i32 34000000, i32* %limit, align 4, !dbg !6140
  br label %if.end54, !dbg !6141

if.else53:                                        ; preds = %sw.bb50
  store i32 25000000, i32* %limit, align 4, !dbg !6142
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.then52
  br label %sw.epilog55, !dbg !6143

sw.epilog55:                                      ; preds = %if.end39, %if.end54, %if.end49, %if.end44
  %24 = load i32, i32* %divisor, align 4, !dbg !6144
  %25 = load i32, i32* %limit, align 4, !dbg !6145
  %div = sdiv i32 %25, %24, !dbg !6145
  store i32 %div, i32* %limit, align 4, !dbg !6145
  %26 = load i32, i32* %limit, align 4, !dbg !6146
  ret i32 %26, !dbg !6147
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @chipco_pctl_get_slowclksrc(%struct.ssb_chipcommon* %cc) #0 !dbg !6148 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  %tmp = alloca i32, align 4
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !6151, metadata !DIExpression()), !dbg !6152
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !6153, metadata !DIExpression()), !dbg !6154
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6155
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !6156
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !6156
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !6157
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !6157
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !6154
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !6158, metadata !DIExpression()), !dbg !6159
  %3 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6160
  %dev2 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %3, i32 0, i32 0, !dbg !6162
  %4 = load %struct.ssb_device*, %struct.ssb_device** %dev2, align 8, !dbg !6162
  %id = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %4, i32 0, i32 4, !dbg !6163
  %revision = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id, i32 0, i32 2, !dbg !6164
  %5 = load i8, i8* %revision, align 4, !dbg !6164
  %conv = zext i8 %5 to i32, !dbg !6160
  %cmp = icmp slt i32 %conv, 6, !dbg !6165
  br i1 %cmp, label %if.then, label %if.end17, !dbg !6166

if.then:                                          ; preds = %entry
  %6 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !6167
  %bustype = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %6, i32 0, i32 5, !dbg !6170
  %7 = load i32, i32* %bustype, align 4, !dbg !6170
  %cmp4 = icmp eq i32 %7, 0, !dbg !6171
  br i1 %cmp4, label %if.then9, label %lor.lhs.false, !dbg !6172

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !6173
  %bustype6 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %8, i32 0, i32 5, !dbg !6174
  %9 = load i32, i32* %bustype6, align 4, !dbg !6174
  %cmp7 = icmp eq i32 %9, 2, !dbg !6175
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !6176

if.then9:                                         ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %retval, align 4, !dbg !6177
  br label %return, !dbg !6177

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !6178
  %bustype10 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %10, i32 0, i32 5, !dbg !6180
  %11 = load i32, i32* %bustype10, align 4, !dbg !6180
  %cmp11 = icmp eq i32 %11, 1, !dbg !6181
  br i1 %cmp11, label %if.then13, label %if.end16, !dbg !6182

if.then13:                                        ; preds = %if.end
  %12 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !6183
  %13 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %12, i32 0, i32 6, !dbg !6185
  %host_pci = bitcast %union.anon.66* %13 to %struct.pci_dev**, !dbg !6185
  %14 = load %struct.pci_dev*, %struct.pci_dev** %host_pci, align 8, !dbg !6185
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %14, i32 180, i32* %tmp) #6, !dbg !6186
  %15 = load i32, i32* %tmp, align 4, !dbg !6187
  %and = and i32 %15, 16, !dbg !6189
  %tobool = icmp ne i32 %and, 0, !dbg !6189
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !6190

if.then14:                                        ; preds = %if.then13
  store i32 0, i32* %retval, align 4, !dbg !6191
  br label %return, !dbg !6191

if.end15:                                         ; preds = %if.then13
  store i32 1, i32* %retval, align 4, !dbg !6192
  br label %return, !dbg !6192

if.end16:                                         ; preds = %if.end
  br label %if.end17, !dbg !6193

if.end17:                                         ; preds = %if.end16, %entry
  %16 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6194
  %dev18 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %16, i32 0, i32 0, !dbg !6196
  %17 = load %struct.ssb_device*, %struct.ssb_device** %dev18, align 8, !dbg !6196
  %id19 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %17, i32 0, i32 4, !dbg !6197
  %revision20 = getelementptr inbounds %struct.ssb_device_id, %struct.ssb_device_id* %id19, i32 0, i32 2, !dbg !6198
  %18 = load i8, i8* %revision20, align 4, !dbg !6198
  %conv21 = zext i8 %18 to i32, !dbg !6194
  %cmp22 = icmp slt i32 %conv21, 10, !dbg !6199
  br i1 %cmp22, label %if.then24, label %if.end40, !dbg !6200

if.then24:                                        ; preds = %if.end17
  %19 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6201
  %dev25 = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %19, i32 0, i32 0, !dbg !6201
  %20 = load %struct.ssb_device*, %struct.ssb_device** %dev25, align 8, !dbg !6201
  %call26 = call i32 @ssb_read32(%struct.ssb_device* %20, i16 zeroext 184) #6, !dbg !6201
  store i32 %call26, i32* %tmp, align 4, !dbg !6203
  %21 = load i32, i32* %tmp, align 4, !dbg !6204
  %and27 = and i32 %21, 7, !dbg !6204
  store i32 %and27, i32* %tmp, align 4, !dbg !6204
  %22 = load i32, i32* %tmp, align 4, !dbg !6205
  %cmp28 = icmp eq i32 %22, 0, !dbg !6207
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !6208

if.then30:                                        ; preds = %if.then24
  store i32 2, i32* %retval, align 4, !dbg !6209
  br label %return, !dbg !6209

if.end31:                                         ; preds = %if.then24
  %23 = load i32, i32* %tmp, align 4, !dbg !6210
  %cmp32 = icmp eq i32 %23, 1, !dbg !6212
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !6213

if.then34:                                        ; preds = %if.end31
  store i32 1, i32* %retval, align 4, !dbg !6214
  br label %return, !dbg !6214

if.end35:                                         ; preds = %if.end31
  %24 = load i32, i32* %tmp, align 4, !dbg !6215
  %cmp36 = icmp eq i32 %24, 2, !dbg !6217
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !6218

if.then38:                                        ; preds = %if.end35
  store i32 0, i32* %retval, align 4, !dbg !6219
  br label %return, !dbg !6219

if.end39:                                         ; preds = %if.end35
  br label %if.end40, !dbg !6220

if.end40:                                         ; preds = %if.end39, %if.end17
  store i32 1, i32* %retval, align 4, !dbg !6221
  br label %return, !dbg !6221

return:                                           ; preds = %if.end40, %if.then38, %if.then34, %if.then30, %if.end15, %if.then14, %if.then9
  %25 = load i32, i32* %retval, align 4, !dbg !6222
  ret i32 %25, !dbg !6222
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @pmu_fast_powerup_delay(%struct.ssb_chipcommon* %cc) #0 !dbg !6223 {
entry:
  %retval = alloca i16, align 2
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  %bus = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !6226, metadata !DIExpression()), !dbg !6227
  call void @llvm.dbg.declare(metadata %struct.ssb_bus** %bus, metadata !6228, metadata !DIExpression()), !dbg !6229
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6230
  %dev = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 0, !dbg !6231
  %1 = load %struct.ssb_device*, %struct.ssb_device** %dev, align 8, !dbg !6231
  %bus1 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %1, i32 0, i32 3, !dbg !6232
  %2 = load %struct.ssb_bus*, %struct.ssb_bus** %bus1, align 8, !dbg !6232
  store %struct.ssb_bus* %2, %struct.ssb_bus** %bus, align 8, !dbg !6229
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %bus, align 8, !dbg !6233
  %chip_id = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 9, !dbg !6234
  %4 = load i16, i16* %chip_id, align 8, !dbg !6234
  %conv = zext i16 %4 to i32, !dbg !6233
  switch i32 %conv, label %sw.default [
    i32 17170, label %sw.bb
    i32 17186, label %sw.bb
    i32 17192, label %sw.bb
    i32 17189, label %sw.bb2
  ], !dbg !6235

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i16 7000, i16* %retval, align 2, !dbg !6236
  br label %return, !dbg !6236

sw.bb2:                                           ; preds = %entry
  br label %sw.default, !dbg !6236

sw.default:                                       ; preds = %entry, %sw.bb2
  store i16 15000, i16* %retval, align 2, !dbg !6238
  br label %return, !dbg !6238

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load i16, i16* %retval, align 2, !dbg !6239
  ret i16 %5, !dbg !6239
}

; Function Attrs: noredzone
declare dso_local i32 @ssb_clockspeed(%struct.ssb_bus*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ssb_chipco_alp_clock(%struct.ssb_chipcommon* %cc) #0 !dbg !6240 {
entry:
  %retval = alloca i32, align 4
  %cc.addr = alloca %struct.ssb_chipcommon*, align 8
  store %struct.ssb_chipcommon* %cc, %struct.ssb_chipcommon** %cc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ssb_chipcommon** %cc.addr, metadata !6241, metadata !DIExpression()), !dbg !6242
  %0 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6243
  %capabilities = getelementptr inbounds %struct.ssb_chipcommon, %struct.ssb_chipcommon* %0, i32 0, i32 1, !dbg !6245
  %1 = load i32, i32* %capabilities, align 8, !dbg !6245
  %and = and i32 %1, 268435456, !dbg !6246
  %tobool = icmp ne i32 %and, 0, !dbg !6246
  br i1 %tobool, label %if.then, label %if.end, !dbg !6247

if.then:                                          ; preds = %entry
  %2 = load %struct.ssb_chipcommon*, %struct.ssb_chipcommon** %cc.addr, align 8, !dbg !6248
  %call = call i32 @ssb_pmu_get_alp_clock(%struct.ssb_chipcommon* %2) #6, !dbg !6249
  store i32 %call, i32* %retval, align 4, !dbg !6250
  br label %return, !dbg !6250

if.end:                                           ; preds = %entry
  store i32 20000000, i32* %retval, align 4, !dbg !6251
  br label %return, !dbg !6251

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !6252
  ret i32 %3, !dbg !6252
}

; Function Attrs: noredzone
declare dso_local i32 @ssb_pmu_get_alp_clock(%struct.ssb_chipcommon*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6253 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6254, metadata !DIExpression()), !dbg !6256
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6257, metadata !DIExpression()), !dbg !6256
  %0 = load i64, i64* %__edi, align 8, !dbg !6256
  store i64 %0, i64* %__edi, align 8, !dbg !6256
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6258, metadata !DIExpression()), !dbg !6256
  %1 = load i64, i64* %__esi, align 8, !dbg !6256
  store i64 %1, i64* %__esi, align 8, !dbg !6256
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6259, metadata !DIExpression()), !dbg !6256
  %2 = load i64, i64* %__edx, align 8, !dbg !6256
  store i64 %2, i64* %__edx, align 8, !dbg !6256
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6260, metadata !DIExpression()), !dbg !6256
  %3 = load i64, i64* %__ecx, align 8, !dbg !6256
  store i64 %3, i64* %__ecx, align 8, !dbg !6256
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6261, metadata !DIExpression()), !dbg !6256
  %4 = load i64, i64* %__eax, align 8, !dbg !6256
  store i64 %4, i64* %__eax, align 8, !dbg !6256
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6256
  %6 = call i64 @llvm.read_register.i64(metadata !146), !dbg !6262
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !6262, !srcloc !6265
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6262
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6262
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6262
  call void @llvm.write_register.i64(metadata !146, i64 %asmresult1), !dbg !6262
  %8 = load i64, i64* %__eax, align 8, !dbg !6262
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6266, metadata !DIExpression()), !dbg !6268
  store i64 -1, i64* %__mask, align 8, !dbg !6268
  %9 = load i64, i64* %__mask, align 8, !dbg !6268
  store i64 %9, i64* %tmp, align 8, !dbg !6268
  %10 = load i64, i64* %tmp, align 8, !dbg !6268
  %and = and i64 %8, %10, !dbg !6262
  store i64 %and, i64* %__ret, align 8, !dbg !6262
  %11 = load i64, i64* %__ret, align 8, !dbg !6256
  store i64 %11, i64* %tmp2, align 8, !dbg !6269
  %12 = load i64, i64* %tmp2, align 8, !dbg !6256
  ret i64 %12, !dbg !6270
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6271 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6272, metadata !DIExpression()), !dbg !6274
  %0 = load i64, i64* %__edi, align 8, !dbg !6274
  store i64 %0, i64* %__edi, align 8, !dbg !6274
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6275, metadata !DIExpression()), !dbg !6274
  %1 = load i64, i64* %__esi, align 8, !dbg !6274
  store i64 %1, i64* %__esi, align 8, !dbg !6274
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6276, metadata !DIExpression()), !dbg !6274
  %2 = load i64, i64* %__edx, align 8, !dbg !6274
  store i64 %2, i64* %__edx, align 8, !dbg !6274
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6277, metadata !DIExpression()), !dbg !6274
  %3 = load i64, i64* %__ecx, align 8, !dbg !6274
  store i64 %3, i64* %__ecx, align 8, !dbg !6274
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6278, metadata !DIExpression()), !dbg !6274
  %4 = load i64, i64* %__eax, align 8, !dbg !6274
  store i64 %4, i64* %__eax, align 8, !dbg !6274
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6274
  %6 = call i64 @llvm.read_register.i64(metadata !146), !dbg !6274
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !6274, !srcloc !6279
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6274
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6274
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6274
  call void @llvm.write_register.i64(metadata !146, i64 %asmresult1), !dbg !6274
  ret void, !dbg !6280
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6281 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6284, metadata !DIExpression()), !dbg !6285
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6286, metadata !DIExpression()), !dbg !6288
  %0 = load i64, i64* %__edi, align 8, !dbg !6288
  store i64 %0, i64* %__edi, align 8, !dbg !6288
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6289, metadata !DIExpression()), !dbg !6288
  %1 = load i64, i64* %__esi, align 8, !dbg !6288
  store i64 %1, i64* %__esi, align 8, !dbg !6288
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6290, metadata !DIExpression()), !dbg !6288
  %2 = load i64, i64* %__edx, align 8, !dbg !6288
  store i64 %2, i64* %__edx, align 8, !dbg !6288
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6291, metadata !DIExpression()), !dbg !6288
  %3 = load i64, i64* %__ecx, align 8, !dbg !6288
  store i64 %3, i64* %__ecx, align 8, !dbg !6288
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6292, metadata !DIExpression()), !dbg !6288
  %4 = load i64, i64* %__eax, align 8, !dbg !6288
  store i64 %4, i64* %__eax, align 8, !dbg !6288
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6288
  %6 = call i64 @llvm.read_register.i64(metadata !146), !dbg !6288
  %7 = load i64, i64* %f.addr, align 8, !dbg !6288
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !6288, !srcloc !6293
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6288
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6288
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6288
  call void @llvm.write_register.i64(metadata !146, i64 %asmresult1), !dbg !6288
  ret void, !dbg !6294
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!146}
!llvm.module.flags = !{!147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !144, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/ssb/driver_chipcommon.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91, !105, !112, !120, !126, !133, !139}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !92, line: 76, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!94 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!101 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!102 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqchip_irq_state", file: !106, line: 478, baseType: !5, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "IRQCHIP_STATE_PENDING", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "IRQCHIP_STATE_ACTIVE", value: 1, isUnsigned: true)
!110 = !DIEnumerator(name: "IRQCHIP_STATE_MASKED", value: 2, isUnsigned: true)
!111 = !DIEnumerator(name: "IRQCHIP_STATE_LINE_LEVEL", value: 3, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_gc_flags", file: !113, line: 1084, baseType: !5, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/irq.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "IRQ_GC_INIT_MASK_CACHE", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "IRQ_GC_INIT_NESTED_LOCK", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "IRQ_GC_MASK_CACHE_PER_TYPE", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "IRQ_GC_NO_MASK", value: 8, isUnsigned: true)
!119 = !DIEnumerator(name: "IRQ_GC_BE_IO", value: 16, isUnsigned: true)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !121, line: 11, baseType: !5, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!122 = !{!123, !124, !125}
!123 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!125 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssb_bustype", file: !127, line: 339, baseType: !5, size: 32, elements: !128)
!127 = !DIFile(filename: "./include/linux/ssb/ssb.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "SSB_BUSTYPE_SSB", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "SSB_BUSTYPE_PCI", value: 1, isUnsigned: true)
!131 = !DIEnumerator(name: "SSB_BUSTYPE_PCMCIA", value: 2, isUnsigned: true)
!132 = !DIEnumerator(name: "SSB_BUSTYPE_SDIO", value: 3, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssb_clkmode", file: !134, line: 627, baseType: !5, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/ssb/ssb_driver_chipcommon.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "SSB_CLKMODE_SLOW", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "SSB_CLKMODE_FAST", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "SSB_CLKMODE_DYNAMIC", value: 2, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssb_clksrc", file: !1, line: 22, baseType: !5, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "SSB_CHIPCO_CLKSRC_PCI", value: 0, isUnsigned: true)
!142 = !DIEnumerator(name: "SSB_CHIPCO_CLKSRC_XTALOS", value: 1, isUnsigned: true)
!143 = !DIEnumerator(name: "SSB_CHIPCO_CLKSRC_LOPWROS", value: 2, isUnsigned: true)
!144 = !{!145}
!145 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !{!"rsp"}
!147 = !{i32 7, !"Dwarf Version", i32 4}
!148 = !{i32 2, !"Debug Info Version", i32 3}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"Code Model", i32 2}
!151 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!152 = distinct !DISubprogram(name: "ssb_chipco_set_clockmode", scope: !1, file: !1, line: 42, type: !153, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155, !133}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_chipcommon", file: !134, line: 587, size: 320, elements: !157)
!157 = !{!158, !4683, !4684, !4685, !4686, !4687, !4692, !4693}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !156, file: !134, line: 588, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_device", file: !127, line: 268, size: 512, elements: !161)
!161 = !{!162, !201, !4146, !4147, !4672, !4679, !4680, !4681, !4682}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !160, file: !127, line: 271, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_bus_ops", file: !127, line: 207, size: 384, elements: !166)
!166 = !{!167, !179, !183, !189, !193, !197}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "read8", scope: !165, file: !127, line: 208, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !159, !176}
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !172, line: 17, baseType: !173)
!172 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !174, line: 21, baseType: !175)
!174 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !172, line: 19, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !174, line: 24, baseType: !178)
!178 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "read16", scope: !165, file: !127, line: 209, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!176, !159, !176}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "read32", scope: !165, file: !127, line: 210, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !159, !176}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !172, line: 21, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !174, line: 27, baseType: !5)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "write8", scope: !165, file: !127, line: 211, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !159, !176, !171}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "write16", scope: !165, file: !127, line: 212, baseType: !194, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !159, !176, !176}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "write32", scope: !165, file: !127, line: 213, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !159, !176, !187}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !160, file: !127, line: 273, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !204)
!204 = !{!205, !3379, !3380, !3383, !3384, !3435, !3526, !3527, !3528, !3529, !3530, !3539, !3644, !3657, !4073, !4074, !4078, !4080, !4081, !4082, !4086, !4092, !4093, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4134, !4135, !4136, !4139, !4142, !4143, !4144, !4145}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !203, file: !71, line: 462, baseType: !206, size: 512)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !207, line: 64, size: 512, elements: !208)
!207 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!208 = !{!209, !213, !220, !222, !283, !3242, !3369, !3374, !3375, !3376, !3377, !3378}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !207, line: 65, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !206, file: !207, line: 66, baseType: !214, size: 128, offset: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !215, line: 178, size: 128, elements: !216)
!215 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !215, line: 179, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !214, file: !215, line: 179, baseType: !218, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !207, line: 67, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !206, file: !207, line: 68, baseType: !223, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !207, line: 192, size: 704, elements: !225)
!225 = !{!226, !227, !243, !244}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !224, file: !207, line: 193, baseType: !214, size: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !224, file: !207, line: 194, baseType: !228, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !229, line: 83, baseType: !230)
!229 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !229, line: 71, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 72, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 72, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !233, file: !229, line: 73, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !229, line: 20, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !236, file: !229, line: 21, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !240, line: 25, baseType: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 25, elements: !242)
!242 = !{}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !224, file: !207, line: 195, baseType: !206, size: 512, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !224, file: !207, line: 196, baseType: !245, size: 64, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !207, line: 156, size: 192, elements: !248)
!248 = !{!249, !255, !260}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !247, file: !207, line: 157, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !223, !221}
!254 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !207, line: 158, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!210, !223, !221}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !247, file: !207, line: 159, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!254, !223, !221, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !207, line: 148, size: 20736, elements: !267)
!267 = !{!268, !273, !277, !278, !282}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !207, line: 149, baseType: !269, size: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 192, elements: !271)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!271 = !{!272}
!272 = !DISubrange(count: 3)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !266, file: !207, line: 150, baseType: !274, size: 4096, offset: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 4096, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !266, file: !207, line: 151, baseType: !254, size: 32, offset: 4288)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !266, file: !207, line: 152, baseType: !279, size: 16384, offset: 4320)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 16384, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2048)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !266, file: !207, line: 153, baseType: !254, size: 32, offset: 20704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !206, file: !207, line: 69, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !207, line: 138, size: 448, elements: !286)
!286 = !{!287, !291, !319, !321, !3204, !3232, !3236}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !207, line: 139, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !221}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !285, file: !207, line: 140, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !295, line: 230, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !294, file: !295, line: 231, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !221, !306, !270}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !215, line: 60, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !303, line: 73, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !303, line: 15, baseType: !305)
!305 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !295, line: 30, size: 128, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !295, line: 31, baseType: !210, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !307, file: !295, line: 32, baseType: !311, size: 16, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !215, line: 19, baseType: !178)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !294, file: !295, line: 232, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!301, !221, !306, !210, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !215, line: 55, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !303, line: 72, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !303, line: 16, baseType: !145)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !285, file: !207, line: 141, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !285, file: !207, line: 142, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !295, line: 84, size: 320, elements: !326)
!326 = !{!327, !328, !332, !3201, !3202}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !295, line: 85, baseType: !210, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !325, file: !295, line: 86, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!311, !221, !306, !254}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !325, file: !295, line: 88, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!311, !221, !336, !254}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !295, line: 168, size: 448, elements: !338)
!338 = !{!339, !340, !341, !343, !3196, !3197}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !337, file: !295, line: 169, baseType: !307, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !337, file: !295, line: 170, baseType: !316, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !337, file: !295, line: 171, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !337, file: !295, line: 172, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!301, !347, !221, !336, !270, !521, !316}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !349)
!349 = !{!350, !368, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3179, !3180, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !348, file: !42, line: 920, baseType: !351, size: 128)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !42, line: 917, size: 128, elements: !352)
!352 = !{!353, !359}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !351, file: !42, line: 918, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !355, line: 58, size: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 59, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !351, file: !42, line: 919, baseType: !360, size: 128, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !215, line: 216, size: 128, align: 64, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !215, line: 217, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !360, file: !215, line: 218, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !363}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !348, file: !42, line: 921, baseType: !369, size: 128, offset: 128)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !370, line: 8, size: 128, elements: !371)
!370 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!371 = !{!372, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !369, file: !370, line: 9, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !375, line: 18, flags: DIFlagFwdDecl)
!375 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !369, file: !370, line: 10, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !375, line: 89, size: 1536, elements: !379)
!379 = !{!380, !381, !391, !399, !400, !418, !3129, !3131, !3143, !3144, !3145, !3146, !3147, !3153, !3154, !3155}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !378, file: !375, line: 91, baseType: !5, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !378, file: !375, line: 92, baseType: !382, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !383, line: 277, baseType: !384)
!383 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !383, line: 277, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !384, file: !383, line: 277, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !383, line: 70, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !383, line: 65, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !388, file: !383, line: 66, baseType: !5, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !378, file: !375, line: 93, baseType: !392, size: 128, offset: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !393, line: 38, size: 128, elements: !394)
!393 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !393, line: 39, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !392, file: !393, line: 39, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !378, file: !375, line: 94, baseType: !377, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !378, file: !375, line: 95, baseType: !401, size: 128, offset: 256)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !375, line: 47, size: 128, elements: !402)
!402 = !{!403, !415}
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !401, file: !375, line: 48, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !375, line: 48, size: 64, elements: !405)
!405 = !{!406, !411}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !375, line: 49, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !404, file: !375, line: 49, size: 64, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !407, file: !375, line: 50, baseType: !187, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !407, file: !375, line: 50, baseType: !187, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !404, file: !375, line: 52, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !172, line: 23, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !174, line: 31, baseType: !414)
!414 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !375, line: 54, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !378, file: !375, line: 96, baseType: !419, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !421)
!421 = !{!422, !423, !424, !432, !439, !440, !588, !2833, !2834, !2835, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !3097, !3105, !3106, !3107, !3125, !3126, !3127, !3128}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !420, file: !42, line: 611, baseType: !311, size: 16)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !420, file: !42, line: 612, baseType: !178, size: 16, offset: 16)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !420, file: !42, line: 613, baseType: !425, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !426, line: 23, baseType: !427)
!426 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !426, line: 21, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !427, file: !426, line: 22, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !215, line: 32, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !303, line: 49, baseType: !5)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !420, file: !42, line: 614, baseType: !433, size: 32, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !426, line: 28, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !426, line: 26, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !426, line: 27, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !215, line: 33, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !303, line: 50, baseType: !5)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !420, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !420, file: !42, line: 622, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !444)
!444 = !{!445, !449, !462, !466, !472, !476, !482, !486, !490, !494, !498, !499, !505, !509, !535, !564, !568, !574, !579, !583, !584}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !443, file: !42, line: 1865, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!377, !419, !377, !5}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !443, file: !42, line: 1866, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!210, !377, !419, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !455, line: 10, size: 128, elements: !456)
!455 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !461}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !454, file: !455, line: 11, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !342}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !454, file: !455, line: 12, baseType: !342, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !443, file: !42, line: 1867, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!254, !419, !254}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !443, file: !42, line: 1868, baseType: !467, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !419, !254}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !443, file: !42, line: 1870, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!254, !377, !270, !254}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !443, file: !42, line: 1872, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!254, !419, !377, !311, !480}
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !215, line: 30, baseType: !481)
!481 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !443, file: !42, line: 1873, baseType: !483, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!254, !377, !419, !377}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !443, file: !42, line: 1874, baseType: !487, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!254, !419, !377}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !443, file: !42, line: 1875, baseType: !491, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!254, !419, !377, !210}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !443, file: !42, line: 1876, baseType: !495, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!254, !419, !377, !311}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !443, file: !42, line: 1877, baseType: !487, size: 64, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !443, file: !42, line: 1878, baseType: !500, size: 64, offset: 704)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!254, !419, !377, !311, !503}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !215, line: 16, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !215, line: 13, baseType: !187)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !443, file: !42, line: 1879, baseType: !506, size: 64, offset: 768)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!254, !419, !377, !419, !377, !5}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !443, file: !42, line: 1881, baseType: !510, size: 64, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!254, !377, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !515)
!515 = !{!516, !517, !518, !519, !520, !524, !532, !533, !534}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !514, file: !42, line: 220, baseType: !5, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !514, file: !42, line: 221, baseType: !311, size: 16, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !514, file: !42, line: 222, baseType: !425, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !514, file: !42, line: 223, baseType: !433, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !514, file: !42, line: 224, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !215, line: 46, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !303, line: 88, baseType: !523)
!523 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !514, file: !42, line: 225, baseType: !525, size: 128, offset: 192)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !526, line: 13, size: 128, elements: !527)
!526 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!527 = !{!528, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !525, file: !526, line: 14, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !526, line: 8, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !174, line: 30, baseType: !523)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !525, file: !526, line: 15, baseType: !305, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !514, file: !42, line: 226, baseType: !525, size: 128, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !514, file: !42, line: 227, baseType: !525, size: 128, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !514, file: !42, line: 234, baseType: !347, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !443, file: !42, line: 1882, baseType: !536, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!254, !539, !541, !187, !5}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !543, line: 22, size: 1152, elements: !544)
!543 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545, !546, !547, !548, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !542, file: !543, line: 23, baseType: !187, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !542, file: !543, line: 24, baseType: !311, size: 16, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !542, file: !543, line: 25, baseType: !5, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !542, file: !543, line: 26, baseType: !549, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !215, line: 104, baseType: !187)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !542, file: !543, line: 27, baseType: !412, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !542, file: !543, line: 28, baseType: !412, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !542, file: !543, line: 37, baseType: !412, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !542, file: !543, line: 38, baseType: !503, size: 32, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !542, file: !543, line: 39, baseType: !503, size: 32, offset: 352)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !542, file: !543, line: 40, baseType: !425, size: 32, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !542, file: !543, line: 41, baseType: !433, size: 32, offset: 416)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !542, file: !543, line: 42, baseType: !521, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !542, file: !543, line: 43, baseType: !525, size: 128, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !542, file: !543, line: 44, baseType: !525, size: 128, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !542, file: !543, line: 45, baseType: !525, size: 128, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !542, file: !543, line: 46, baseType: !525, size: 128, offset: 896)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !542, file: !543, line: 47, baseType: !412, size: 64, offset: 1024)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !542, file: !543, line: 48, baseType: !412, size: 64, offset: 1088)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !443, file: !42, line: 1883, baseType: !565, size: 64, offset: 960)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!301, !377, !270, !316}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !443, file: !42, line: 1884, baseType: !569, size: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!254, !419, !572, !412, !412}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !443, file: !42, line: 1886, baseType: !575, size: 64, offset: 1088)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!254, !419, !578, !254}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !443, file: !42, line: 1887, baseType: !580, size: 64, offset: 1152)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!254, !419, !377, !347, !5, !311}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !443, file: !42, line: 1890, baseType: !495, size: 64, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !443, file: !42, line: 1891, baseType: !585, size: 64, offset: 1280)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!254, !419, !470, !254}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !420, file: !42, line: 623, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !647, !2440, !2522, !2605, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2621, !2625, !2626, !2629, !2630, !2633, !2634, !2635, !2676, !2703, !2704, !2705, !2706, !2707, !2708, !2711, !2713, !2720, !2721, !2723, !2724, !2725, !2784, !2785, !2800, !2801, !2802, !2803, !2804, !2807, !2808, !2809, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !590, file: !42, line: 1417, baseType: !214, size: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !590, file: !42, line: 1418, baseType: !503, size: 32, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !590, file: !42, line: 1419, baseType: !175, size: 8, offset: 160)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !590, file: !42, line: 1420, baseType: !145, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !590, file: !42, line: 1421, baseType: !521, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !590, file: !42, line: 1422, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !600)
!600 = !{!601, !602, !603, !610, !614, !618, !622, !626, !627, !637, !640, !641, !642, !644, !645, !646}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !42, line: 2229, baseType: !210, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !599, file: !42, line: 2230, baseType: !254, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !599, file: !42, line: 2238, baseType: !604, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!254, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !609, line: 28, flags: DIFlagFwdDecl)
!609 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!610 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !599, file: !42, line: 2239, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !599, file: !42, line: 2240, baseType: !615, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!377, !598, !254, !210, !342}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !599, file: !42, line: 2242, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !589}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !599, file: !42, line: 2243, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !625, line: 76, flags: DIFlagFwdDecl)
!625 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !42, line: 2244, baseType: !598, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !599, file: !42, line: 2245, baseType: !628, size: 64, offset: 512)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !215, line: 182, size: 64, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !628, file: !215, line: 183, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !215, line: 186, size: 128, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !632, file: !215, line: 187, baseType: !631, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !632, file: !215, line: 187, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !599, file: !42, line: 2247, baseType: !638, offset: 576)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !639, line: 187, elements: !242)
!639 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !599, file: !42, line: 2248, baseType: !638, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !599, file: !42, line: 2249, baseType: !638, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !599, file: !42, line: 2250, baseType: !643, offset: 576)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, elements: !271)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !599, file: !42, line: 2252, baseType: !638, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !599, file: !42, line: 2253, baseType: !638, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !599, file: !42, line: 2254, baseType: !638, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !590, file: !42, line: 1423, baseType: !648, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !651)
!651 = !{!652, !656, !660, !661, !665, !671, !675, !676, !677, !681, !685, !686, !687, !688, !694, !699, !700, !756, !757, !758, !759, !2424, !2439}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !650, file: !42, line: 1936, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!419, !589}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !650, file: !42, line: 1937, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !419}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !650, file: !42, line: 1938, baseType: !657, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !650, file: !42, line: 1940, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !419, !254}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !650, file: !42, line: 1941, baseType: !666, size: 64, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!254, !419, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !650, file: !42, line: 1942, baseType: !672, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!254, !419}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !650, file: !42, line: 1943, baseType: !657, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !650, file: !42, line: 1944, baseType: !619, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !650, file: !42, line: 1945, baseType: !678, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!254, !589, !254}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !650, file: !42, line: 1946, baseType: !682, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!254, !589}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !650, file: !42, line: 1947, baseType: !682, size: 64, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !650, file: !42, line: 1948, baseType: !682, size: 64, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !650, file: !42, line: 1949, baseType: !682, size: 64, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !650, file: !42, line: 1950, baseType: !689, size: 64, offset: 832)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!254, !377, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !650, file: !42, line: 1951, baseType: !695, size: 64, offset: 896)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!254, !589, !698, !270}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !650, file: !42, line: 1952, baseType: !619, size: 64, offset: 960)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !650, file: !42, line: 1954, baseType: !701, size: 64, offset: 1024)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!254, !704, !377}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !706, line: 16, size: 896, elements: !707)
!706 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !729, !751, !752, !755}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !705, file: !706, line: 17, baseType: !270, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !705, file: !706, line: 18, baseType: !316, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !705, file: !706, line: 19, baseType: !316, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !705, file: !706, line: 20, baseType: !316, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !705, file: !706, line: 21, baseType: !316, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !705, file: !706, line: 22, baseType: !521, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !705, file: !706, line: 23, baseType: !521, size: 64, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !705, file: !706, line: 24, baseType: !716, size: 192, offset: 448)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !717, line: 53, size: 192, elements: !718)
!717 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !727, !728}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !716, file: !717, line: 54, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !721, line: 13, baseType: !722)
!721 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !215, line: 175, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 173, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !723, file: !215, line: 174, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !172, line: 22, baseType: !530)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !716, file: !717, line: 55, baseType: !228, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !716, file: !717, line: 59, baseType: !214, size: 128, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !705, file: !706, line: 25, baseType: !730, size: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !706, line: 31, size: 256, elements: !733)
!733 = !{!734, !739, !743, !747}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !732, file: !706, line: 32, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!342, !704, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !732, file: !706, line: 33, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !704, !342}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !706, line: 34, baseType: !744, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!342, !704, !342, !738}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !732, file: !706, line: 35, baseType: !748, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!254, !704, !342}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !705, file: !706, line: 26, baseType: !254, size: 32, offset: 704)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !705, file: !706, line: 27, baseType: !753, size: 64, offset: 768)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !705, file: !706, line: 28, baseType: !342, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !650, file: !42, line: 1955, baseType: !701, size: 64, offset: 1088)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !650, file: !42, line: 1956, baseType: !701, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !650, file: !42, line: 1957, baseType: !701, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !650, file: !42, line: 1963, baseType: !760, size: 64, offset: 1280)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!254, !589, !763, !786}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !765, line: 68, size: 512, align: 128, elements: !766)
!765 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !2416, !2423}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !765, line: 69, baseType: !145, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 77, baseType: !769, size: 320, offset: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 77, size: 320, elements: !770)
!770 = !{!771, !950, !955, !983, !991, !997, !2347, !2415}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 78, baseType: !772, size: 320)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 78, size: 320, elements: !773)
!773 = !{!774, !775, !948, !949}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !772, file: !765, line: 84, baseType: !214, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !772, file: !765, line: 86, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !778)
!778 = !{!779, !780, !788, !789, !794, !809, !818, !819, !820, !821, !941, !942, !945, !946, !947}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !777, file: !42, line: 452, baseType: !419, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !777, file: !42, line: 453, baseType: !781, size: 128, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !782, line: 292, size: 128, elements: !783)
!782 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !785, !787}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !781, file: !782, line: 293, baseType: !228)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !781, file: !782, line: 295, baseType: !786, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !215, line: 148, baseType: !5)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !781, file: !782, line: 296, baseType: !342, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !777, file: !42, line: 454, baseType: !786, size: 32, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !777, file: !42, line: 455, baseType: !790, size: 32, offset: 224)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !215, line: 168, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !215, line: 166, size: 32, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !791, file: !215, line: 167, baseType: !254, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !777, file: !42, line: 460, baseType: !795, size: 128, offset: 256)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !796, line: 125, size: 128, elements: !797)
!796 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!797 = !{!798, !808}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !795, file: !796, line: 126, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !796, line: 31, size: 64, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !799, file: !796, line: 32, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !796, line: 24, size: 192, align: 64, elements: !804)
!804 = !{!805, !806, !807}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !803, file: !796, line: 25, baseType: !145, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !803, file: !796, line: 26, baseType: !802, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !803, file: !796, line: 27, baseType: !802, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !795, file: !796, line: 127, baseType: !802, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !777, file: !42, line: 461, baseType: !810, size: 256, offset: 384)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !811, line: 35, size: 256, elements: !812)
!811 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!812 = !{!813, !814, !815, !817}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !810, file: !811, line: 36, baseType: !720, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !810, file: !811, line: 42, baseType: !720, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !810, file: !811, line: 46, baseType: !816, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !229, line: 29, baseType: !236)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !810, file: !811, line: 47, baseType: !214, size: 128, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !777, file: !42, line: 462, baseType: !145, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !777, file: !42, line: 463, baseType: !145, size: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !777, file: !42, line: 464, baseType: !145, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !777, file: !42, line: 465, baseType: !822, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !825)
!825 = !{!826, !830, !834, !838, !842, !846, !852, !858, !862, !867, !871, !875, !879, !905, !909, !915, !916, !917, !921, !926, !930, !937}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !824, file: !42, line: 368, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!254, !763, !669}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !824, file: !42, line: 369, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!254, !347, !763}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !824, file: !42, line: 372, baseType: !835, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!254, !776, !669}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !824, file: !42, line: 375, baseType: !839, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!254, !763}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !824, file: !42, line: 381, baseType: !843, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!254, !347, !776, !218, !5}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !824, file: !42, line: 383, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !824, file: !42, line: 385, baseType: !853, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!254, !347, !776, !521, !5, !5, !856, !857}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !824, file: !42, line: 388, baseType: !859, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!254, !347, !776, !521, !5, !5, !763, !342}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !824, file: !42, line: 393, baseType: !863, size: 64, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!866, !776, !866}
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !215, line: 125, baseType: !412)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !824, file: !42, line: 394, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !763, !5, !5}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !824, file: !42, line: 395, baseType: !872, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!254, !763, !786}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !824, file: !42, line: 396, baseType: !876, size: 64, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !763}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !824, file: !42, line: 397, baseType: !880, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!301, !883, !903}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !885)
!885 = !{!886, !887, !888, !892, !893, !894, !895, !896}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !884, file: !42, line: 321, baseType: !347, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !884, file: !42, line: 326, baseType: !521, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !884, file: !42, line: 327, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !883, !305, !305}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !884, file: !42, line: 328, baseType: !342, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !884, file: !42, line: 329, baseType: !254, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !884, file: !42, line: 330, baseType: !176, size: 16, offset: 288)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !884, file: !42, line: 331, baseType: !176, size: 16, offset: 304)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !42, line: 332, baseType: !897, size: 64, offset: 320)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !42, line: 332, size: 64, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !897, file: !42, line: 333, baseType: !5, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !897, file: !42, line: 334, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !824, file: !42, line: 402, baseType: !906, size: 64, offset: 832)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!254, !776, !763, !763, !3}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !824, file: !42, line: 404, baseType: !910, size: 64, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!480, !763, !913}
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !914, line: 305, baseType: !5)
!914 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!915 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !824, file: !42, line: 405, baseType: !876, size: 64, offset: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !824, file: !42, line: 406, baseType: !839, size: 64, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !824, file: !42, line: 407, baseType: !918, size: 64, offset: 1088)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!254, !763, !145, !145}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !824, file: !42, line: 409, baseType: !922, size: 64, offset: 1152)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !763, !925, !925}
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !824, file: !42, line: 410, baseType: !927, size: 64, offset: 1216)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!254, !776, !763}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !824, file: !42, line: 413, baseType: !931, size: 64, offset: 1280)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!254, !934, !347, !936}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !824, file: !42, line: 415, baseType: !938, size: 64, offset: 1344)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !347}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !42, line: 466, baseType: !145, size: 64, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !777, file: !42, line: 467, baseType: !943, size: 32, offset: 960)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !944, line: 8, baseType: !187)
!944 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!945 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !777, file: !42, line: 468, baseType: !228, offset: 992)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !777, file: !42, line: 469, baseType: !214, size: 128, offset: 1024)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !777, file: !42, line: 470, baseType: !342, size: 64, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !772, file: !765, line: 87, baseType: !145, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !772, file: !765, line: 94, baseType: !145, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 96, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 96, size: 64, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !951, file: !765, line: 101, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !215, line: 143, baseType: !412)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 103, baseType: !956, size: 320)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 103, size: 320, elements: !957)
!957 = !{!958, !968, !971, !972}
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !956, file: !765, line: 104, baseType: !959, size: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !956, file: !765, line: 104, size: 128, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !959, file: !765, line: 105, baseType: !214, size: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !765, line: 106, baseType: !963, size: 128)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !959, file: !765, line: 106, size: 128, elements: !964)
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !963, file: !765, line: 107, baseType: !763, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !963, file: !765, line: 109, baseType: !254, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !963, file: !765, line: 110, baseType: !254, size: 32, offset: 96)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !956, file: !765, line: 117, baseType: !969, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !765, line: 117, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !956, file: !765, line: 119, baseType: !342, size: 64, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !956, file: !765, line: 120, baseType: !973, size: 64, offset: 256)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !956, file: !765, line: 120, size: 64, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !973, file: !765, line: 121, baseType: !342, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !973, file: !765, line: 122, baseType: !145, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !765, line: 123, baseType: !978, size: 32)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !973, file: !765, line: 123, size: 32, elements: !979)
!979 = !{!980, !981, !982}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !978, file: !765, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !978, file: !765, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !978, file: !765, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 130, baseType: !984, size: 192)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 130, size: 192, elements: !985)
!985 = !{!986, !987, !988, !989, !990}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !984, file: !765, line: 131, baseType: !145, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !984, file: !765, line: 134, baseType: !175, size: 8, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !984, file: !765, line: 135, baseType: !175, size: 8, offset: 72)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !984, file: !765, line: 136, baseType: !790, size: 32, offset: 96)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !984, file: !765, line: 137, baseType: !5, size: 32, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 139, baseType: !992, size: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 139, size: 256, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !992, file: !765, line: 140, baseType: !145, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !992, file: !765, line: 141, baseType: !790, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !992, file: !765, line: 143, baseType: !214, size: 128, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 145, baseType: !998, size: 256)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 145, size: 256, elements: !999)
!999 = !{!1000, !1001, !1004, !1005, !2346}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !998, file: !765, line: 146, baseType: !145, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !998, file: !765, line: 147, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1003, line: 509, baseType: !763)
!1003 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !998, file: !765, line: 148, baseType: !145, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !765, line: 149, baseType: !1006, size: 64, offset: 192)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !998, file: !765, line: 149, size: 64, elements: !1007)
!1007 = !{!1008, !2345}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1006, file: !765, line: 150, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !765, line: 388, size: 7296, elements: !1011)
!1011 = !{!1012, !2341}
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1010, file: !765, line: 389, baseType: !1013, size: 7296)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1010, file: !765, line: 389, size: 7296, elements: !1014)
!1014 = !{!1015, !1133, !1134, !1135, !1139, !1140, !1141, !1142, !1143, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1184, !1192, !1195, !1219, !1220, !2325, !2326, !2329, !2330, !2331, !2334, !2335, !2336, !2339, !2340}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1013, file: !765, line: 390, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !765, line: 305, size: 1472, elements: !1018)
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1033, !1034, !1039, !1040, !1043, !1127, !1128, !1129, !1130, !1131}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1017, file: !765, line: 308, baseType: !145, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1017, file: !765, line: 309, baseType: !145, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1017, file: !765, line: 313, baseType: !1016, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1017, file: !765, line: 313, baseType: !1016, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1017, file: !765, line: 315, baseType: !803, size: 192, align: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1017, file: !765, line: 323, baseType: !145, size: 64, offset: 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1017, file: !765, line: 327, baseType: !1009, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1017, file: !765, line: 333, baseType: !1027, size: 64, offset: 576)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1003, line: 284, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1003, line: 284, size: 64, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1028, file: !1003, line: 284, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1032, line: 19, baseType: !145)
!1032 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1017, file: !765, line: 334, baseType: !145, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1017, file: !765, line: 343, baseType: !1035, size: 256, offset: 704)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !765, line: 340, size: 256, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1035, file: !765, line: 341, baseType: !803, size: 192, align: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1035, file: !765, line: 342, baseType: !145, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1017, file: !765, line: 351, baseType: !214, size: 128, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1017, file: !765, line: 353, baseType: !1041, size: 64, offset: 1088)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !765, line: 353, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1017, file: !765, line: 356, baseType: !1044, size: 64, offset: 1152)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1047)
!1047 = !{!1048, !1052, !1053, !1057, !1061, !1101, !1105, !1109, !1113, !1114, !1115, !1119, !1123}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1046, file: !12, line: 558, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !1016}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1046, file: !12, line: 559, baseType: !1049, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1046, file: !12, line: 560, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!254, !1016, !145}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1046, file: !12, line: 561, baseType: !1058, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!254, !1016}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1046, file: !12, line: 562, baseType: !1062, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !765, line: 682, baseType: !5)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074, !1081, !1088, !1094, !1095, !1096, !1098, !1100}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1067, file: !12, line: 509, baseType: !1016, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1067, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1067, file: !12, line: 511, baseType: !786, size: 32, offset: 96)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1067, file: !12, line: 512, baseType: !145, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1067, file: !12, line: 513, baseType: !145, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1067, file: !12, line: 514, baseType: !1075, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1003, line: 385, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 385, size: 64, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1077, file: !1003, line: 385, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1032, line: 15, baseType: !145)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1067, file: !12, line: 516, baseType: !1082, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1003, line: 359, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 359, size: 64, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1084, file: !1003, line: 359, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1032, line: 16, baseType: !145)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1067, file: !12, line: 519, baseType: !1089, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1032, line: 21, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1032, line: 21, size: 64, elements: !1091)
!1091 = !{!1092}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1090, file: !1032, line: 21, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1032, line: 14, baseType: !145)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1067, file: !12, line: 521, baseType: !763, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1067, file: !12, line: 522, baseType: !763, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1067, file: !12, line: 528, baseType: !1097, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1067, file: !12, line: 532, baseType: !1099, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1067, file: !12, line: 536, baseType: !1002, size: 64, offset: 704)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1046, file: !12, line: 563, baseType: !1102, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!1065, !1066, !11}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1046, file: !12, line: 565, baseType: !1106, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !1066, !145, !145}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1046, file: !12, line: 567, baseType: !1110, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!145, !1016}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1046, file: !12, line: 571, baseType: !1062, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1046, file: !12, line: 574, baseType: !1062, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1046, file: !12, line: 579, baseType: !1116, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!254, !1016, !145, !342, !254, !254}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1046, file: !12, line: 585, baseType: !1120, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!210, !1016}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1046, file: !12, line: 615, baseType: !1124, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!763, !1016, !145}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1017, file: !765, line: 359, baseType: !145, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1017, file: !765, line: 361, baseType: !347, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1017, file: !765, line: 362, baseType: !342, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1017, file: !765, line: 365, baseType: !720, size: 64, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1017, file: !765, line: 373, baseType: !1132, offset: 1472)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !765, line: 296, elements: !242)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1013, file: !765, line: 391, baseType: !799, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1013, file: !765, line: 392, baseType: !412, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1013, file: !765, line: 394, baseType: !1136, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!145, !347, !145, !145, !145, !145}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1013, file: !765, line: 398, baseType: !145, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1013, file: !765, line: 399, baseType: !145, size: 64, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1013, file: !765, line: 405, baseType: !145, size: 64, offset: 384)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1013, file: !765, line: 406, baseType: !145, size: 64, offset: 448)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1013, file: !765, line: 407, baseType: !1144, size: 64, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1003, line: 286, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1003, line: 286, size: 64, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1146, file: !1003, line: 286, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1032, line: 18, baseType: !145)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1013, file: !765, line: 416, baseType: !790, size: 32, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1013, file: !765, line: 428, baseType: !790, size: 32, offset: 608)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1013, file: !765, line: 437, baseType: !790, size: 32, offset: 640)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1013, file: !765, line: 447, baseType: !790, size: 32, offset: 672)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1013, file: !765, line: 450, baseType: !720, size: 64, offset: 704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1013, file: !765, line: 452, baseType: !254, size: 32, offset: 768)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1013, file: !765, line: 454, baseType: !228, offset: 800)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1013, file: !765, line: 457, baseType: !810, size: 256, offset: 832)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1013, file: !765, line: 459, baseType: !214, size: 128, offset: 1088)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1013, file: !765, line: 466, baseType: !145, size: 64, offset: 1216)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1013, file: !765, line: 467, baseType: !145, size: 64, offset: 1280)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1013, file: !765, line: 469, baseType: !145, size: 64, offset: 1344)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1013, file: !765, line: 470, baseType: !145, size: 64, offset: 1408)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1013, file: !765, line: 471, baseType: !722, size: 64, offset: 1472)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1013, file: !765, line: 472, baseType: !145, size: 64, offset: 1536)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1013, file: !765, line: 473, baseType: !145, size: 64, offset: 1600)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1013, file: !765, line: 474, baseType: !145, size: 64, offset: 1664)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1013, file: !765, line: 475, baseType: !145, size: 64, offset: 1728)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1013, file: !765, line: 477, baseType: !228, offset: 1792)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1013, file: !765, line: 478, baseType: !145, size: 64, offset: 1792)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1013, file: !765, line: 478, baseType: !145, size: 64, offset: 1856)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1013, file: !765, line: 478, baseType: !145, size: 64, offset: 1920)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1013, file: !765, line: 478, baseType: !145, size: 64, offset: 1984)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1013, file: !765, line: 479, baseType: !145, size: 64, offset: 2048)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1013, file: !765, line: 479, baseType: !145, size: 64, offset: 2112)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1013, file: !765, line: 479, baseType: !145, size: 64, offset: 2176)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1013, file: !765, line: 480, baseType: !145, size: 64, offset: 2240)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1013, file: !765, line: 480, baseType: !145, size: 64, offset: 2304)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1013, file: !765, line: 480, baseType: !145, size: 64, offset: 2368)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1013, file: !765, line: 480, baseType: !145, size: 64, offset: 2432)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1013, file: !765, line: 482, baseType: !1181, size: 2816, offset: 2496)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 2816, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 44)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1013, file: !765, line: 488, baseType: !1185, size: 256, offset: 5312)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1186, line: 60, size: 256, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1185, file: !1186, line: 61, baseType: !1189, size: 256)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 256, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 4)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1013, file: !765, line: 490, baseType: !1193, size: 64, offset: 5568)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !765, line: 490, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1013, file: !765, line: 493, baseType: !1196, size: 896, offset: 5632)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1197, line: 53, baseType: !1198)
!1197 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1197, line: 13, size: 896, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1206, !1207, !1208, !1209, !1213, !1214, !1215}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1198, file: !1197, line: 18, baseType: !412, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1198, file: !1197, line: 28, baseType: !722, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1198, file: !1197, line: 31, baseType: !810, size: 256, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1198, file: !1197, line: 32, baseType: !1204, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1197, line: 32, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1198, file: !1197, line: 37, baseType: !178, size: 16, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1198, file: !1197, line: 40, baseType: !716, size: 192, offset: 512)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1198, file: !1197, line: 41, baseType: !342, size: 64, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1198, file: !1197, line: 42, baseType: !1210, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1197, line: 42, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1198, file: !1197, line: 44, baseType: !790, size: 32, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1198, file: !1197, line: 50, baseType: !176, size: 16, offset: 864)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1198, file: !1197, line: 51, baseType: !1216, size: 16, offset: 880)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !172, line: 18, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !174, line: 23, baseType: !1218)
!1218 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1013, file: !765, line: 495, baseType: !145, size: 64, offset: 6528)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1013, file: !765, line: 497, baseType: !1221, size: 64, offset: 6592)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !765, line: 381, size: 384, elements: !1223)
!1223 = !{!1224, !1225, !2324}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1222, file: !765, line: 382, baseType: !790, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1222, file: !765, line: 383, baseType: !1226, size: 128, offset: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !765, line: 376, size: 128, elements: !1227)
!1227 = !{!1228, !2322}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1226, file: !765, line: 377, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1231, line: 640, size: 48640, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1239, !1241, !1242, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1259, !1277, !1288, !1371, !1372, !1373, !1384, !1385, !1387, !1388, !1389, !1390, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1469, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1507, !1509, !1510, !1511, !1523, !1524, !1525, !1526, !1527, !1528, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1552, !1557, !1741, !1742, !1743, !1744, !1748, !1751, !1754, !1757, !1760, !1763, !1864, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1910, !1911, !1912, !1913, !1914, !1919, !1920, !1921, !1924, !1925, !1928, !1931, !1934, !1937, !1980, !1983, !1984, !2063, !2064, !2067, !2068, !2071, !2072, !2073, !2077, !2078, !2079, !2092, !2093, !2094, !2104, !2109, !2112, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1230, file: !1231, line: 646, baseType: !1234, size: 128)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1235, line: 56, size: 128, elements: !1236)
!1235 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1234, file: !1235, line: 57, baseType: !145, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1234, file: !1235, line: 58, baseType: !187, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1230, file: !1231, line: 649, baseType: !1240, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !305)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1230, file: !1231, line: 657, baseType: !342, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1230, file: !1231, line: 658, baseType: !1243, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1244, line: 113, baseType: !1245)
!1244 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1244, line: 111, size: 32, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1245, file: !1244, line: 112, baseType: !790, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1230, file: !1231, line: 660, baseType: !5, size: 32, offset: 288)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1230, file: !1231, line: 661, baseType: !5, size: 32, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1230, file: !1231, line: 684, baseType: !254, size: 32, offset: 352)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1230, file: !1231, line: 686, baseType: !254, size: 32, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1230, file: !1231, line: 687, baseType: !254, size: 32, offset: 416)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1230, file: !1231, line: 688, baseType: !254, size: 32, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1230, file: !1231, line: 689, baseType: !5, size: 32, offset: 480)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1230, file: !1231, line: 691, baseType: !1256, size: 64, offset: 512)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1231, line: 691, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1230, file: !1231, line: 692, baseType: !1260, size: 832, offset: 576)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1231, line: 451, size: 832, elements: !1261)
!1261 = !{!1262, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1260, file: !1231, line: 453, baseType: !1263, size: 128)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1231, line: 325, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1263, file: !1231, line: 326, baseType: !145, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1263, file: !1231, line: 327, baseType: !187, size: 32, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1260, file: !1231, line: 454, baseType: !803, size: 192, align: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1260, file: !1231, line: 455, baseType: !214, size: 128, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1260, file: !1231, line: 456, baseType: !5, size: 32, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1260, file: !1231, line: 458, baseType: !412, size: 64, offset: 512)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1260, file: !1231, line: 459, baseType: !412, size: 64, offset: 576)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1260, file: !1231, line: 460, baseType: !412, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1260, file: !1231, line: 461, baseType: !412, size: 64, offset: 704)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1260, file: !1231, line: 463, baseType: !412, size: 64, offset: 768)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1260, file: !1231, line: 465, baseType: !1276, offset: 832)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1231, line: 415, elements: !242)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1230, file: !1231, line: 693, baseType: !1278, size: 384, offset: 1408)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1231, line: 489, size: 384, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1278, file: !1231, line: 490, baseType: !214, size: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1278, file: !1231, line: 491, baseType: !145, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1278, file: !1231, line: 492, baseType: !145, size: 64, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1278, file: !1231, line: 493, baseType: !5, size: 32, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1278, file: !1231, line: 494, baseType: !178, size: 16, offset: 288)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1278, file: !1231, line: 495, baseType: !178, size: 16, offset: 304)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1278, file: !1231, line: 497, baseType: !1287, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1230, file: !1231, line: 697, baseType: !1289, size: 1792, offset: 1792)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1231, line: 507, size: 1792, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1368, !1369}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1289, file: !1231, line: 508, baseType: !803, size: 192, align: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1289, file: !1231, line: 515, baseType: !412, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1289, file: !1231, line: 516, baseType: !412, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1289, file: !1231, line: 517, baseType: !412, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1289, file: !1231, line: 518, baseType: !412, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1289, file: !1231, line: 519, baseType: !412, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1289, file: !1231, line: 526, baseType: !726, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1289, file: !1231, line: 527, baseType: !412, size: 64, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1289, file: !1231, line: 528, baseType: !5, size: 32, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1289, file: !1231, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1289, file: !1231, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1289, file: !1231, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1289, file: !1231, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1289, file: !1231, line: 563, baseType: !1305, size: 512, offset: 704)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1306)
!1306 = !{!1307, !1315, !1316, !1321, !1364, !1365, !1366, !1367}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1305, file: !18, line: 119, baseType: !1308, size: 256)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1309, line: 9, size: 256, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1308, file: !1309, line: 10, baseType: !803, size: 192, align: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1308, file: !1309, line: 11, baseType: !1313, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1314, line: 29, baseType: !726)
!1314 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1305, file: !18, line: 120, baseType: !1313, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1305, file: !18, line: 121, baseType: !1317, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!17, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1305, file: !18, line: 122, baseType: !1322, size: 64, offset: 384)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1324)
!1324 = !{!1325, !1345, !1346, !1349, !1354, !1355, !1359, !1363}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1323, file: !18, line: 160, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1327, file: !18, line: 215, baseType: !816)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1327, file: !18, line: 216, baseType: !5, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1327, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1327, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1327, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1327, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1327, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1327, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1327, file: !18, line: 233, baseType: !1313, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1327, file: !18, line: 234, baseType: !1320, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1327, file: !18, line: 235, baseType: !1313, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1327, file: !18, line: 236, baseType: !1320, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1327, file: !18, line: 237, baseType: !1342, size: 4096, offset: 512)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 4096, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 8)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1323, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1323, file: !18, line: 162, baseType: !1347, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !215, line: 27, baseType: !1348)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !303, line: 96, baseType: !254)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1323, file: !18, line: 163, baseType: !1350, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !383, line: 276, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !383, line: 276, size: 32, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1351, file: !383, line: 276, baseType: !387, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1323, file: !18, line: 164, baseType: !1320, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1323, file: !18, line: 165, baseType: !1356, size: 128, offset: 256)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1309, line: 14, size: 128, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1356, file: !1309, line: 15, baseType: !795, size: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1323, file: !18, line: 166, baseType: !1360, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!1313}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1323, file: !18, line: 167, baseType: !1313, size: 64, offset: 448)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1305, file: !18, line: 123, baseType: !171, size: 8, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1305, file: !18, line: 124, baseType: !171, size: 8, offset: 456)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1305, file: !18, line: 125, baseType: !171, size: 8, offset: 464)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1305, file: !18, line: 126, baseType: !171, size: 8, offset: 472)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1289, file: !1231, line: 572, baseType: !1305, size: 512, offset: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1289, file: !1231, line: 580, baseType: !1370, size: 64, offset: 1728)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1230, file: !1231, line: 721, baseType: !5, size: 32, offset: 3584)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1230, file: !1231, line: 722, baseType: !254, size: 32, offset: 3616)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1230, file: !1231, line: 723, baseType: !1374, size: 64, offset: 3648)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1377, line: 17, baseType: !1378)
!1377 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1377, line: 17, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1378, file: !1377, line: 17, baseType: !1381, size: 64)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 64, elements: !1382)
!1382 = !{!1383}
!1383 = !DISubrange(count: 1)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1230, file: !1231, line: 724, baseType: !1376, size: 64, offset: 3712)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1230, file: !1231, line: 749, baseType: !1386, offset: 3776)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1231, line: 290, elements: !242)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1230, file: !1231, line: 751, baseType: !214, size: 128, offset: 3776)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1230, file: !1231, line: 757, baseType: !1009, size: 64, offset: 3904)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1230, file: !1231, line: 758, baseType: !1009, size: 64, offset: 3968)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1230, file: !1231, line: 761, baseType: !1391, size: 320, offset: 4032)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1186, line: 34, size: 320, elements: !1392)
!1392 = !{!1393, !1394}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1391, file: !1186, line: 35, baseType: !412, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1391, file: !1186, line: 36, baseType: !1395, size: 256, offset: 64)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 256, elements: !1190)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1230, file: !1231, line: 766, baseType: !254, size: 32, offset: 4352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1230, file: !1231, line: 767, baseType: !254, size: 32, offset: 4384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1230, file: !1231, line: 768, baseType: !254, size: 32, offset: 4416)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1230, file: !1231, line: 770, baseType: !254, size: 32, offset: 4448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1230, file: !1231, line: 772, baseType: !145, size: 64, offset: 4480)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1230, file: !1231, line: 775, baseType: !5, size: 32, offset: 4544)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1230, file: !1231, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1230, file: !1231, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1230, file: !1231, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1230, file: !1231, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1230, file: !1231, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1230, file: !1231, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1230, file: !1231, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1230, file: !1231, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1230, file: !1231, line: 831, baseType: !145, size: 64, offset: 4672)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1230, file: !1231, line: 833, baseType: !1412, size: 384, offset: 4736)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1413)
!1413 = !{!1414, !1419}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1412, file: !23, line: 26, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!305, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !23, line: 27, baseType: !1420, size: 320, offset: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !23, line: 27, size: 320, elements: !1421)
!1421 = !{!1422, !1432, !1459}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1420, file: !23, line: 36, baseType: !1423, size: 320)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !23, line: 29, size: 320, elements: !1424)
!1424 = !{!1425, !1427, !1428, !1429, !1430, !1431}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1423, file: !23, line: 30, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1423, file: !23, line: 31, baseType: !187, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !23, line: 32, baseType: !187, size: 32, offset: 96)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1423, file: !23, line: 33, baseType: !187, size: 32, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1423, file: !23, line: 34, baseType: !412, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1423, file: !23, line: 35, baseType: !1426, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1420, file: !23, line: 46, baseType: !1433, size: 192)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !23, line: 38, size: 192, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1458}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1433, file: !23, line: 39, baseType: !1347, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1433, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !23, line: 41, baseType: !1438, size: 64, offset: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !23, line: 41, size: 64, elements: !1439)
!1439 = !{!1440, !1448}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1438, file: !23, line: 42, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1443, line: 7, size: 128, elements: !1444)
!1443 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !{!1445, !1447}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1442, file: !1443, line: 8, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !303, line: 93, baseType: !523)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1442, file: !1443, line: 9, baseType: !523, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1438, file: !23, line: 43, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1451, line: 7, size: 64, elements: !1452)
!1451 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1457}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1450, file: !1451, line: 8, baseType: !1454, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1451, line: 5, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !172, line: 20, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !174, line: 26, baseType: !254)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1450, file: !1451, line: 9, baseType: !1455, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1433, file: !23, line: 45, baseType: !412, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1420, file: !23, line: 54, baseType: !1460, size: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1420, file: !23, line: 48, size: 256, elements: !1461)
!1461 = !{!1462, !1465, !1466, !1467, !1468}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1460, file: !23, line: 49, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1460, file: !23, line: 50, baseType: !254, size: 32, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1460, file: !23, line: 51, baseType: !254, size: 32, offset: 96)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1460, file: !23, line: 52, baseType: !145, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1460, file: !23, line: 53, baseType: !145, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1230, file: !1231, line: 835, baseType: !1470, size: 32, offset: 5120)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !215, line: 22, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !303, line: 28, baseType: !254)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1230, file: !1231, line: 836, baseType: !1470, size: 32, offset: 5152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1230, file: !1231, line: 840, baseType: !145, size: 64, offset: 5184)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1230, file: !1231, line: 849, baseType: !1229, size: 64, offset: 5248)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1230, file: !1231, line: 852, baseType: !1229, size: 64, offset: 5312)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1230, file: !1231, line: 857, baseType: !214, size: 128, offset: 5376)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1230, file: !1231, line: 858, baseType: !214, size: 128, offset: 5504)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1230, file: !1231, line: 859, baseType: !1229, size: 64, offset: 5632)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1230, file: !1231, line: 867, baseType: !214, size: 128, offset: 5696)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1230, file: !1231, line: 868, baseType: !214, size: 128, offset: 5824)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1230, file: !1231, line: 871, baseType: !1482, size: 64, offset: 5952)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1490, !1491, !1498, !1499}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1483, file: !51, line: 61, baseType: !1243, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1483, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1483, file: !51, line: 63, baseType: !228, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1483, file: !51, line: 65, baseType: !1489, size: 256, offset: 64)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 256, elements: !1190)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1483, file: !51, line: 66, baseType: !628, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1483, file: !51, line: 68, baseType: !1492, size: 128, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1493, line: 40, baseType: !1494)
!1493 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1493, line: 36, size: 128, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !1493, line: 37, baseType: !228)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1494, file: !1493, line: 38, baseType: !214, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1483, file: !51, line: 69, baseType: !360, size: 128, align: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1483, file: !51, line: 70, baseType: !1500, size: 128, offset: 640)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1501, size: 128, elements: !1382)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1501, file: !51, line: 55, baseType: !254, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1501, file: !51, line: 56, baseType: !1505, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1230, file: !1231, line: 872, baseType: !1508, size: 512, offset: 6016)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 512, elements: !1190)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1230, file: !1231, line: 873, baseType: !214, size: 128, offset: 6528)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1230, file: !1231, line: 874, baseType: !214, size: 128, offset: 6656)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1230, file: !1231, line: 876, baseType: !1512, size: 64, offset: 6784)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1514, line: 26, size: 192, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1513, file: !1514, line: 27, baseType: !5, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1513, file: !1514, line: 28, baseType: !1518, size: 128, offset: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1519, line: 43, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !1519, line: 44, baseType: !816)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1518, file: !1519, line: 45, baseType: !214, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1230, file: !1231, line: 879, baseType: !698, size: 64, offset: 6848)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1230, file: !1231, line: 882, baseType: !698, size: 64, offset: 6912)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1230, file: !1231, line: 884, baseType: !412, size: 64, offset: 6976)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1230, file: !1231, line: 885, baseType: !412, size: 64, offset: 7040)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1230, file: !1231, line: 890, baseType: !412, size: 64, offset: 7104)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1230, file: !1231, line: 891, baseType: !1529, size: 128, offset: 7168)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1231, line: 242, size: 128, elements: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1529, file: !1231, line: 244, baseType: !412, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1529, file: !1231, line: 245, baseType: !412, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !1231, line: 246, baseType: !816, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1230, file: !1231, line: 900, baseType: !145, size: 64, offset: 7296)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1230, file: !1231, line: 901, baseType: !145, size: 64, offset: 7360)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1230, file: !1231, line: 904, baseType: !412, size: 64, offset: 7424)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1230, file: !1231, line: 907, baseType: !412, size: 64, offset: 7488)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1230, file: !1231, line: 910, baseType: !145, size: 64, offset: 7552)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1230, file: !1231, line: 911, baseType: !145, size: 64, offset: 7616)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1230, file: !1231, line: 914, baseType: !1541, size: 640, offset: 7680)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1542, line: 123, size: 640, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1543 = !{!1544, !1550, !1551}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1541, file: !1542, line: 124, baseType: !1545, size: 576)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1546, size: 576, elements: !271)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1542, line: 108, size: 192, elements: !1547)
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1546, file: !1542, line: 109, baseType: !412, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1546, file: !1542, line: 110, baseType: !1356, size: 128, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1541, file: !1542, line: 125, baseType: !5, size: 32, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1541, file: !1542, line: 126, baseType: !5, size: 32, offset: 608)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1230, file: !1231, line: 917, baseType: !1553, size: 192, offset: 8320)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1542, line: 134, size: 192, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1553, file: !1542, line: 135, baseType: !360, size: 128, align: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1553, file: !1542, line: 136, baseType: !5, size: 32, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1230, file: !1231, line: 923, baseType: !1558, size: 64, offset: 8512)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1561, line: 111, size: 1280, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1582, !1583, !1584, !1585, !1586, !1587, !1694, !1695, !1696, !1697, !1723, !1726, !1736}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1560, file: !1561, line: 112, baseType: !790, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1560, file: !1561, line: 120, baseType: !425, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1560, file: !1561, line: 121, baseType: !433, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1560, file: !1561, line: 122, baseType: !425, size: 32, offset: 96)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1560, file: !1561, line: 123, baseType: !433, size: 32, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1560, file: !1561, line: 124, baseType: !425, size: 32, offset: 160)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1560, file: !1561, line: 125, baseType: !433, size: 32, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1560, file: !1561, line: 126, baseType: !425, size: 32, offset: 224)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1560, file: !1561, line: 127, baseType: !433, size: 32, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1560, file: !1561, line: 128, baseType: !5, size: 32, offset: 288)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1560, file: !1561, line: 129, baseType: !1574, size: 64, offset: 320)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1575, line: 26, baseType: !1576)
!1575 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1575, line: 24, size: 64, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1576, file: !1575, line: 25, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 64, elements: !1580)
!1580 = !{!1581}
!1581 = !DISubrange(count: 2)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1560, file: !1561, line: 130, baseType: !1574, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1560, file: !1561, line: 131, baseType: !1574, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1560, file: !1561, line: 132, baseType: !1574, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1560, file: !1561, line: 133, baseType: !1574, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1560, file: !1561, line: 135, baseType: !175, size: 8, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1560, file: !1561, line: 137, baseType: !1588, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1590, line: 189, size: 1664, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1593, !1596, !1601, !1602, !1605, !1606, !1611, !1612, !1613, !1614, !1616, !1617, !1618, !1619, !1620, !1658, !1679}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1589, file: !1590, line: 190, baseType: !1243, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1589, file: !1590, line: 191, baseType: !1594, size: 32, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1590, line: 28, baseType: !1595)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !215, line: 98, baseType: !1455)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1590, line: 192, baseType: !1597, size: 192, offset: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !1590, line: 192, size: 192, elements: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1597, file: !1590, line: 193, baseType: !214, size: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1597, file: !1590, line: 194, baseType: !803, size: 192, align: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1589, file: !1590, line: 199, baseType: !810, size: 256, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1589, file: !1590, line: 200, baseType: !1603, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1590, line: 200, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1589, file: !1590, line: 201, baseType: !342, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1590, line: 202, baseType: !1607, size: 64, offset: 640)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !1590, line: 202, size: 64, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1607, file: !1590, line: 203, baseType: !529, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1607, file: !1590, line: 204, baseType: !529, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1589, file: !1590, line: 206, baseType: !529, size: 64, offset: 704)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1589, file: !1590, line: 207, baseType: !425, size: 32, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1589, file: !1590, line: 208, baseType: !433, size: 32, offset: 800)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1589, file: !1590, line: 209, baseType: !1615, size: 32, offset: 832)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1590, line: 31, baseType: !549)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1589, file: !1590, line: 210, baseType: !178, size: 16, offset: 864)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1589, file: !1590, line: 211, baseType: !178, size: 16, offset: 880)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1589, file: !1590, line: 215, baseType: !1218, size: 16, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1589, file: !1590, line: 222, baseType: !145, size: 64, offset: 960)
!1620 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1590, line: 239, baseType: !1621, size: 320, offset: 1024)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !1590, line: 239, size: 320, elements: !1622)
!1622 = !{!1623, !1650}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1621, file: !1590, line: 240, baseType: !1624, size: 320)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1590, line: 108, size: 320, elements: !1625)
!1625 = !{!1626, !1627, !1639, !1642, !1649}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1624, file: !1590, line: 110, baseType: !145, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1590, line: 111, baseType: !1628, size: 64, offset: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1590, line: 111, size: 64, elements: !1629)
!1629 = !{!1630, !1638}
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !1590, line: 112, baseType: !1631, size: 64)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1628, file: !1590, line: 112, size: 64, elements: !1632)
!1632 = !{!1633, !1634}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1631, file: !1590, line: 114, baseType: !176, size: 16)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1631, file: !1590, line: 115, baseType: !1635, size: 48, offset: 16)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 48, elements: !1636)
!1636 = !{!1637}
!1637 = !DISubrange(count: 6)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1628, file: !1590, line: 121, baseType: !145, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1624, file: !1590, line: 123, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1590, line: 96, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1624, file: !1590, line: 124, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1590, line: 102, size: 192, elements: !1645)
!1645 = !{!1646, !1647, !1648}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1644, file: !1590, line: 103, baseType: !360, size: 128, align: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1644, file: !1590, line: 104, baseType: !1243, size: 32, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1644, file: !1590, line: 105, baseType: !480, size: 8, offset: 160)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1624, file: !1590, line: 125, baseType: !210, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1590, line: 241, baseType: !1651, size: 320)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !1590, line: 241, size: 320, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1651, file: !1590, line: 242, baseType: !145, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1651, file: !1590, line: 243, baseType: !145, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1651, file: !1590, line: 244, baseType: !1640, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1651, file: !1590, line: 245, baseType: !1643, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1651, file: !1590, line: 246, baseType: !270, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, scope: !1589, file: !1590, line: 254, baseType: !1659, size: 256, offset: 1344)
!1659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1589, file: !1590, line: 254, size: 256, elements: !1660)
!1660 = !{!1661, !1667}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1659, file: !1590, line: 255, baseType: !1662, size: 256)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1590, line: 128, size: 256, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1662, file: !1590, line: 129, baseType: !342, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1662, file: !1590, line: 130, baseType: !1666, size: 256)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !1190)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1590, line: 256, baseType: !1668, size: 256)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !1590, line: 256, size: 256, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1668, file: !1590, line: 258, baseType: !214, size: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1668, file: !1590, line: 259, baseType: !1672, size: 128, offset: 128)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1673, line: 22, size: 128, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1678}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1672, file: !1673, line: 23, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1673, line: 23, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1672, file: !1673, line: 24, baseType: !145, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1589, file: !1590, line: 274, baseType: !1680, size: 64, offset: 1600)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1590, line: 170, size: 192, elements: !1682)
!1682 = !{!1683, !1692, !1693}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1681, file: !1590, line: 171, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1590, line: 165, baseType: !1685)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!254, !1588, !1688, !1690, !1588}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1641)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1681, file: !1590, line: 172, baseType: !1588, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1681, file: !1590, line: 173, baseType: !1640, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1560, file: !1561, line: 138, baseType: !1588, size: 64, offset: 768)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1560, file: !1561, line: 139, baseType: !1588, size: 64, offset: 832)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1560, file: !1561, line: 140, baseType: !1588, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1560, file: !1561, line: 145, baseType: !1698, size: 64, offset: 960)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1700, line: 13, size: 896, elements: !1701)
!1700 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1699, file: !1700, line: 14, baseType: !1243, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1699, file: !1700, line: 15, baseType: !790, size: 32, offset: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1699, file: !1700, line: 16, baseType: !790, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1699, file: !1700, line: 21, baseType: !720, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1699, file: !1700, line: 27, baseType: !145, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1699, file: !1700, line: 28, baseType: !145, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1699, file: !1700, line: 29, baseType: !720, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1699, file: !1700, line: 32, baseType: !632, size: 128, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1699, file: !1700, line: 33, baseType: !425, size: 32, offset: 512)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1699, file: !1700, line: 37, baseType: !720, size: 64, offset: 576)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1699, file: !1700, line: 44, baseType: !1713, size: 256, offset: 640)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1714, line: 15, size: 256, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1713, file: !1714, line: 16, baseType: !816)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1713, file: !1714, line: 18, baseType: !254, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1713, file: !1714, line: 19, baseType: !254, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1713, file: !1714, line: 20, baseType: !254, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1713, file: !1714, line: 21, baseType: !254, size: 32, offset: 96)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1713, file: !1714, line: 22, baseType: !145, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1713, file: !1714, line: 23, baseType: !145, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1560, file: !1561, line: 146, baseType: !1724, size: 64, offset: 1024)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !426, line: 18, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1560, file: !1561, line: 147, baseType: !1727, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1561, line: 25, size: 64, elements: !1729)
!1729 = !{!1730, !1731, !1732}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1728, file: !1561, line: 26, baseType: !790, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1728, file: !1561, line: 27, baseType: !254, size: 32, offset: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1728, file: !1561, line: 28, baseType: !1733, offset: 64)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, elements: !1734)
!1734 = !{!1735}
!1735 = !DISubrange(count: 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1561, line: 149, baseType: !1737, size: 128, offset: 1152)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1561, line: 149, size: 128, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1737, file: !1561, line: 150, baseType: !254, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1737, file: !1561, line: 151, baseType: !360, size: 128, align: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1230, file: !1231, line: 926, baseType: !1558, size: 64, offset: 8576)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1230, file: !1231, line: 929, baseType: !1558, size: 64, offset: 8640)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1230, file: !1231, line: 933, baseType: !1588, size: 64, offset: 8704)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1230, file: !1231, line: 943, baseType: !1745, size: 128, offset: 8768)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 16)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1230, file: !1231, line: 945, baseType: !1749, size: 64, offset: 8896)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1231, line: 49, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1230, file: !1231, line: 956, baseType: !1752, size: 64, offset: 8960)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1231, line: 45, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1230, file: !1231, line: 959, baseType: !1755, size: 64, offset: 9024)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1231, line: 959, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1230, file: !1231, line: 962, baseType: !1758, size: 64, offset: 9088)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1231, line: 66, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1230, file: !1231, line: 966, baseType: !1761, size: 64, offset: 9152)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1231, line: 50, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1230, file: !1231, line: 969, baseType: !1764, size: 64, offset: 9216)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1766, line: 82, size: 7296, elements: !1767)
!1766 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1803, !1812, !1813, !1815, !1816, !1817, !1820, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1850, !1851, !1858, !1859, !1860, !1861, !1862, !1863}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1765, file: !1766, line: 83, baseType: !1243, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1765, file: !1766, line: 84, baseType: !790, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1765, file: !1766, line: 85, baseType: !254, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1765, file: !1766, line: 86, baseType: !214, size: 128, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1765, file: !1766, line: 88, baseType: !1492, size: 128, offset: 256)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1765, file: !1766, line: 91, baseType: !1229, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1765, file: !1766, line: 94, baseType: !1775, size: 192, offset: 448)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1776, line: 30, size: 192, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1775, file: !1776, line: 31, baseType: !214, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1775, file: !1776, line: 32, baseType: !1780, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1781, line: 25, baseType: !1782)
!1781 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1781, line: 23, size: 64, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1782, file: !1781, line: 24, baseType: !1381, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1765, file: !1766, line: 97, baseType: !628, size: 64, offset: 640)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1765, file: !1766, line: 100, baseType: !254, size: 32, offset: 704)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1765, file: !1766, line: 106, baseType: !254, size: 32, offset: 736)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1765, file: !1766, line: 107, baseType: !1229, size: 64, offset: 768)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1765, file: !1766, line: 110, baseType: !254, size: 32, offset: 832)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1765, file: !1766, line: 111, baseType: !5, size: 32, offset: 864)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1765, file: !1766, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1765, file: !1766, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1765, file: !1766, line: 128, baseType: !254, size: 32, offset: 928)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1765, file: !1766, line: 129, baseType: !214, size: 128, offset: 960)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1765, file: !1766, line: 132, baseType: !1305, size: 512, offset: 1088)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1765, file: !1766, line: 133, baseType: !1313, size: 64, offset: 1600)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1765, file: !1766, line: 140, baseType: !1798, size: 256, offset: 1664)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1799, size: 256, elements: !1580)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1766, line: 38, size: 128, elements: !1800)
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1799, file: !1766, line: 39, baseType: !412, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1799, file: !1766, line: 40, baseType: !412, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1765, file: !1766, line: 146, baseType: !1804, size: 192, offset: 1920)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1766, line: 66, size: 192, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1804, file: !1766, line: 67, baseType: !1807, size: 192)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1766, line: 47, size: 192, elements: !1808)
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1807, file: !1766, line: 48, baseType: !722, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1807, file: !1766, line: 49, baseType: !722, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1807, file: !1766, line: 50, baseType: !722, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1765, file: !1766, line: 150, baseType: !1541, size: 640, offset: 2112)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1765, file: !1766, line: 153, baseType: !1814, size: 256, offset: 2752)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 256, elements: !1190)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1765, file: !1766, line: 159, baseType: !1482, size: 64, offset: 3008)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1765, file: !1766, line: 162, baseType: !254, size: 32, offset: 3072)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1765, file: !1766, line: 164, baseType: !1818, size: 64, offset: 3136)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1766, line: 164, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1765, file: !1766, line: 175, baseType: !1821, size: 32, offset: 3200)
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !383, line: 805, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 798, size: 32, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1822, file: !383, line: 803, baseType: !382, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1822, file: !383, line: 804, baseType: !228, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1765, file: !1766, line: 176, baseType: !412, size: 64, offset: 3264)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1765, file: !1766, line: 176, baseType: !412, size: 64, offset: 3328)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1765, file: !1766, line: 176, baseType: !412, size: 64, offset: 3392)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1765, file: !1766, line: 176, baseType: !412, size: 64, offset: 3456)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1765, file: !1766, line: 177, baseType: !412, size: 64, offset: 3520)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1765, file: !1766, line: 178, baseType: !412, size: 64, offset: 3584)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1765, file: !1766, line: 179, baseType: !1529, size: 128, offset: 3648)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1765, file: !1766, line: 180, baseType: !145, size: 64, offset: 3776)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1765, file: !1766, line: 180, baseType: !145, size: 64, offset: 3840)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1765, file: !1766, line: 180, baseType: !145, size: 64, offset: 3904)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1765, file: !1766, line: 180, baseType: !145, size: 64, offset: 3968)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1765, file: !1766, line: 181, baseType: !145, size: 64, offset: 4032)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1765, file: !1766, line: 181, baseType: !145, size: 64, offset: 4096)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1765, file: !1766, line: 181, baseType: !145, size: 64, offset: 4160)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1765, file: !1766, line: 181, baseType: !145, size: 64, offset: 4224)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1765, file: !1766, line: 182, baseType: !145, size: 64, offset: 4288)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1765, file: !1766, line: 182, baseType: !145, size: 64, offset: 4352)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1765, file: !1766, line: 182, baseType: !145, size: 64, offset: 4416)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1765, file: !1766, line: 182, baseType: !145, size: 64, offset: 4480)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1765, file: !1766, line: 183, baseType: !145, size: 64, offset: 4544)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1765, file: !1766, line: 183, baseType: !145, size: 64, offset: 4608)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1765, file: !1766, line: 184, baseType: !1848, offset: 4672)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1849, line: 12, elements: !242)
!1849 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1765, file: !1766, line: 192, baseType: !414, size: 64, offset: 4672)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1765, file: !1766, line: 203, baseType: !1852, size: 2048, offset: 4736)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1853, size: 2048, elements: !1746)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1854, line: 43, size: 128, elements: !1855)
!1854 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1853, file: !1854, line: 44, baseType: !318, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1853, file: !1854, line: 45, baseType: !318, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1765, file: !1766, line: 220, baseType: !480, size: 8, offset: 6784)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1765, file: !1766, line: 221, baseType: !1218, size: 16, offset: 6800)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1765, file: !1766, line: 222, baseType: !1218, size: 16, offset: 6816)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1765, file: !1766, line: 224, baseType: !1009, size: 64, offset: 6848)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1765, file: !1766, line: 227, baseType: !716, size: 192, offset: 6912)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1765, file: !1766, line: 233, baseType: !716, size: 192, offset: 7104)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1230, file: !1231, line: 970, baseType: !1865, size: 64, offset: 9280)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1766, line: 20, size: 16576, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1866, file: !1766, line: 21, baseType: !228)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1866, file: !1766, line: 22, baseType: !1243, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1866, file: !1766, line: 23, baseType: !1492, size: 128, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1866, file: !1766, line: 24, baseType: !1872, size: 16384, offset: 192)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1873, size: 16384, elements: !275)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1776, line: 49, size: 256, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1873, file: !1776, line: 50, baseType: !1876, size: 256)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1776, line: 35, size: 256, elements: !1877)
!1877 = !{!1878, !1885, !1886, !1892}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1876, file: !1776, line: 37, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1880, line: 19, baseType: !1881)
!1880 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1880, line: 18, baseType: !1883)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{null, !254}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1876, file: !1776, line: 38, baseType: !145, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1876, file: !1776, line: 44, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1880, line: 22, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1880, line: 21, baseType: !1890)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{null}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1876, file: !1776, line: 46, baseType: !1780, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1230, file: !1231, line: 971, baseType: !1780, size: 64, offset: 9344)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1230, file: !1231, line: 972, baseType: !1780, size: 64, offset: 9408)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1230, file: !1231, line: 974, baseType: !1780, size: 64, offset: 9472)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1230, file: !1231, line: 975, baseType: !1775, size: 192, offset: 9536)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1230, file: !1231, line: 976, baseType: !145, size: 64, offset: 9728)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1230, file: !1231, line: 977, baseType: !316, size: 64, offset: 9792)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1230, file: !1231, line: 978, baseType: !5, size: 32, offset: 9856)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1230, file: !1231, line: 980, baseType: !363, size: 64, offset: 9920)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1230, file: !1231, line: 989, baseType: !1902, size: 128, offset: 9984)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1903, line: 35, size: 128, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1902, file: !1903, line: 36, baseType: !254, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1902, file: !1903, line: 37, baseType: !790, size: 32, offset: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1902, file: !1903, line: 38, baseType: !1908, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1903, line: 23, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1230, file: !1231, line: 992, baseType: !412, size: 64, offset: 10112)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1230, file: !1231, line: 993, baseType: !412, size: 64, offset: 10176)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1230, file: !1231, line: 996, baseType: !228, offset: 10240)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1230, file: !1231, line: 999, baseType: !816, offset: 10240)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1230, file: !1231, line: 1001, baseType: !1915, size: 64, offset: 10240)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1231, line: 636, size: 64, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1915, file: !1231, line: 637, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1230, file: !1231, line: 1005, baseType: !795, size: 128, offset: 10304)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1230, file: !1231, line: 1007, baseType: !1229, size: 64, offset: 10432)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1230, file: !1231, line: 1009, baseType: !1922, size: 64, offset: 10496)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1231, line: 1009, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1230, file: !1231, line: 1043, baseType: !342, size: 64, offset: 10560)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1230, file: !1231, line: 1046, baseType: !1926, size: 64, offset: 10624)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1231, line: 41, flags: DIFlagFwdDecl)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1230, file: !1231, line: 1050, baseType: !1929, size: 64, offset: 10688)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1231, line: 42, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1230, file: !1231, line: 1054, baseType: !1932, size: 64, offset: 10752)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1231, line: 55, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1230, file: !1231, line: 1056, baseType: !1935, size: 64, offset: 10816)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1231, line: 40, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1230, file: !1231, line: 1058, baseType: !1938, size: 64, offset: 10880)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1940, line: 99, size: 704, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948, !1967, !1968}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1939, file: !1940, line: 100, baseType: !720, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1939, file: !1940, line: 101, baseType: !790, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1939, file: !1940, line: 102, baseType: !790, size: 32, offset: 96)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1939, file: !1940, line: 105, baseType: !228, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1939, file: !1940, line: 107, baseType: !178, size: 16, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1939, file: !1940, line: 109, baseType: !781, size: 128, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1939, file: !1940, line: 110, baseType: !1949, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1940, line: 73, size: 448, elements: !1951)
!1951 = !{!1952, !1955, !1956, !1961, !1966}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1950, file: !1940, line: 74, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1940, line: 74, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1950, file: !1940, line: 75, baseType: !1938, size: 64, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !1940, line: 83, baseType: !1957, size: 128, offset: 128)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !1940, line: 83, size: 128, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1957, file: !1940, line: 84, baseType: !214, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1957, file: !1940, line: 85, baseType: !969, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !1940, line: 87, baseType: !1962, size: 128, offset: 256)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !1940, line: 87, size: 128, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1962, file: !1940, line: 88, baseType: !632, size: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1962, file: !1940, line: 89, baseType: !360, size: 128, align: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1950, file: !1940, line: 92, baseType: !5, size: 32, offset: 384)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1939, file: !1940, line: 111, baseType: !628, size: 64, offset: 384)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1939, file: !1940, line: 113, baseType: !1969, size: 256, offset: 448)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1970, line: 102, size: 256, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1969, file: !1970, line: 103, baseType: !720, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1969, file: !1970, line: 104, baseType: !214, size: 128, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1969, file: !1970, line: 105, baseType: !1975, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1970, line: 21, baseType: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1979}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1230, file: !1231, line: 1061, baseType: !1981, size: 64, offset: 10944)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1231, line: 43, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1230, file: !1231, line: 1064, baseType: !145, size: 64, offset: 11008)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1230, file: !1231, line: 1065, baseType: !1985, size: 64, offset: 11072)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1776, line: 14, baseType: !1987)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1776, line: 12, size: 384, elements: !1988)
!1988 = !{!1989}
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !1776, line: 13, baseType: !1990, size: 384)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1776, line: 13, size: 384, elements: !1991)
!1991 = !{!1992, !1993, !1994, !1995}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1990, file: !1776, line: 13, baseType: !254, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1990, file: !1776, line: 13, baseType: !254, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1990, file: !1776, line: 13, baseType: !254, size: 32, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1990, file: !1776, line: 13, baseType: !1996, size: 256, offset: 128)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1997, line: 32, size: 256, elements: !1998)
!1997 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2004, !2017, !2023, !2032, !2052, !2057}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1996, file: !1997, line: 37, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 34, size: 64, elements: !2001)
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2000, file: !1997, line: 35, baseType: !1471, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2000, file: !1997, line: 36, baseType: !431, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1996, file: !1997, line: 45, baseType: !2005, size: 192)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 40, size: 192, elements: !2006)
!2006 = !{!2007, !2009, !2010, !2016}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2005, file: !1997, line: 41, baseType: !2008, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !303, line: 95, baseType: !254)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2005, file: !1997, line: 42, baseType: !254, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2005, file: !1997, line: 43, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1997, line: 11, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1997, line: 8, size: 64, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2012, file: !1997, line: 9, baseType: !254, size: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2012, file: !1997, line: 10, baseType: !342, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2005, file: !1997, line: 44, baseType: !254, size: 32, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1996, file: !1997, line: 52, baseType: !2018, size: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 48, size: 128, elements: !2019)
!2019 = !{!2020, !2021, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2018, file: !1997, line: 49, baseType: !1471, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2018, file: !1997, line: 50, baseType: !431, size: 32, offset: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2018, file: !1997, line: 51, baseType: !2011, size: 64, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1996, file: !1997, line: 61, baseType: !2024, size: 256)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 55, size: 256, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2031}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2024, file: !1997, line: 56, baseType: !1471, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2024, file: !1997, line: 57, baseType: !431, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2024, file: !1997, line: 58, baseType: !254, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2024, file: !1997, line: 59, baseType: !2030, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !303, line: 94, baseType: !304)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2024, file: !1997, line: 60, baseType: !2030, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1996, file: !1997, line: 95, baseType: !2033, size: 256)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 64, size: 256, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2033, file: !1997, line: 65, baseType: !342, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2033, file: !1997, line: 77, baseType: !2037, size: 192, offset: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2033, file: !1997, line: 77, size: 192, elements: !2038)
!2038 = !{!2039, !2040, !2047}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2037, file: !1997, line: 82, baseType: !1218, size: 16)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2037, file: !1997, line: 88, baseType: !2041, size: 192)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2037, file: !1997, line: 84, size: 192, elements: !2042)
!2042 = !{!2043, !2045, !2046}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2041, file: !1997, line: 85, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 64, elements: !1343)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2041, file: !1997, line: 86, baseType: !342, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2041, file: !1997, line: 87, baseType: !342, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2037, file: !1997, line: 93, baseType: !2048, size: 96)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2037, file: !1997, line: 90, size: 96, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2048, file: !1997, line: 91, baseType: !2044, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2048, file: !1997, line: 92, baseType: !188, size: 32, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1996, file: !1997, line: 101, baseType: !2053, size: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 98, size: 128, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2053, file: !1997, line: 99, baseType: !305, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2053, file: !1997, line: 100, baseType: !254, size: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1996, file: !1997, line: 108, baseType: !2058, size: 128)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1997, line: 104, size: 128, elements: !2059)
!2059 = !{!2060, !2061, !2062}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2058, file: !1997, line: 105, baseType: !342, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2058, file: !1997, line: 106, baseType: !254, size: 32, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2058, file: !1997, line: 107, baseType: !5, size: 32, offset: 96)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1230, file: !1231, line: 1067, baseType: !1848, offset: 11136)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1230, file: !1231, line: 1099, baseType: !2065, size: 64, offset: 11136)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1231, line: 56, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1230, file: !1231, line: 1103, baseType: !214, size: 128, offset: 11200)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1230, file: !1231, line: 1104, baseType: !2069, size: 64, offset: 11328)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1231, line: 46, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1230, file: !1231, line: 1105, baseType: !716, size: 192, offset: 11392)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1230, file: !1231, line: 1106, baseType: !5, size: 32, offset: 11584)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1230, file: !1231, line: 1109, baseType: !2074, size: 128, offset: 11648)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2075, size: 128, elements: !1580)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1231, line: 51, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1230, file: !1231, line: 1110, baseType: !716, size: 192, offset: 11776)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1230, file: !1231, line: 1111, baseType: !214, size: 128, offset: 11968)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1230, file: !1231, line: 1173, baseType: !2080, size: 64, offset: 12096)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2082, line: 62, size: 256, align: 256, elements: !2083)
!2082 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084, !2085, !2086, !2091}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2081, file: !2082, line: 75, baseType: !188, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2081, file: !2082, line: 90, baseType: !188, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2081, file: !2082, line: 124, baseType: !2087, size: 64, offset: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2081, file: !2082, line: 109, size: 64, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2087, file: !2082, line: 110, baseType: !413, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2087, file: !2082, line: 112, baseType: !413, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2081, file: !2082, line: 144, baseType: !188, size: 32, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1230, file: !1231, line: 1174, baseType: !187, size: 32, offset: 12160)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1230, file: !1231, line: 1179, baseType: !145, size: 64, offset: 12224)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1230, file: !1231, line: 1182, baseType: !2095, size: 128, offset: 12288)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1186, line: 76, size: 128, elements: !2096)
!2096 = !{!2097, !2102, !2103}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2095, file: !1186, line: 85, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2099, line: 7, size: 64, elements: !2100)
!2099 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2100 = !{!2101}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2098, file: !2099, line: 12, baseType: !1378, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2095, file: !1186, line: 88, baseType: !480, size: 8, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2095, file: !1186, line: 95, baseType: !480, size: 8, offset: 72)
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1231, line: 1184, baseType: !2105, size: 128, offset: 12416)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1231, line: 1184, size: 128, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2105, file: !1231, line: 1185, baseType: !1243, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2105, file: !1231, line: 1186, baseType: !360, size: 128, align: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1230, file: !1231, line: 1190, baseType: !2110, size: 64, offset: 12544)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1231, line: 53, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1230, file: !1231, line: 1192, baseType: !2113, size: 128, offset: 12608)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1186, line: 64, size: 128, elements: !2114)
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2113, file: !1186, line: 65, baseType: !763, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2113, file: !1186, line: 67, baseType: !188, size: 32, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2113, file: !1186, line: 68, baseType: !188, size: 32, offset: 96)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1230, file: !1231, line: 1206, baseType: !254, size: 32, offset: 12736)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1230, file: !1231, line: 1207, baseType: !254, size: 32, offset: 12768)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1230, file: !1231, line: 1209, baseType: !145, size: 64, offset: 12800)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1230, file: !1231, line: 1219, baseType: !412, size: 64, offset: 12864)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1230, file: !1231, line: 1220, baseType: !412, size: 64, offset: 12928)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1230, file: !1231, line: 1317, baseType: !254, size: 32, offset: 12992)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1230, file: !1231, line: 1319, baseType: !1229, size: 64, offset: 13056)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1230, file: !1231, line: 1322, baseType: !2126, size: 64, offset: 13120)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2128, line: 56, size: 512, elements: !2129)
!2128 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2138}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2127, file: !2128, line: 57, baseType: !2126, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2127, file: !2128, line: 58, baseType: !342, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2127, file: !2128, line: 59, baseType: !145, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2127, file: !2128, line: 60, baseType: !145, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2127, file: !2128, line: 61, baseType: !856, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2127, file: !2128, line: 62, baseType: !5, size: 32, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2127, file: !2128, line: 63, baseType: !2137, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !215, line: 153, baseType: !412)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2127, file: !2128, line: 64, baseType: !2139, size: 64, offset: 448)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1230, file: !1231, line: 1326, baseType: !1243, size: 32, offset: 13184)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1230, file: !1231, line: 1342, baseType: !342, size: 64, offset: 13248)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1230, file: !1231, line: 1343, baseType: !413, size: 64, offset: 13312)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1230, file: !1231, line: 1344, baseType: !412, size: 64, offset: 13376)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1230, file: !1231, line: 1345, baseType: !413, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1230, file: !1231, line: 1346, baseType: !413, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1230, file: !1231, line: 1347, baseType: !413, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1230, file: !1231, line: 1348, baseType: !360, size: 128, align: 64, offset: 13504)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1230, file: !1231, line: 1358, baseType: !2150, size: 34816, offset: 13824)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2151, line: 485, size: 34816, elements: !2152)
!2151 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !{!2153, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2182, !2183, !2184, !2185, !2186, !2187, !2190, !2191, !2192}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2150, file: !2151, line: 487, baseType: !2154, size: 192)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2155, size: 192, elements: !271)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2156, line: 16, size: 64, elements: !2157)
!2156 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2157 = !{!2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2155, file: !2156, line: 17, baseType: !176, size: 16)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2155, file: !2156, line: 18, baseType: !176, size: 16, offset: 16)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2155, file: !2156, line: 19, baseType: !176, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2155, file: !2156, line: 19, baseType: !176, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2155, file: !2156, line: 19, baseType: !176, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2155, file: !2156, line: 19, baseType: !176, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2155, file: !2156, line: 19, baseType: !176, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2155, file: !2156, line: 20, baseType: !176, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2155, file: !2156, line: 20, baseType: !176, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2155, file: !2156, line: 20, baseType: !176, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2155, file: !2156, line: 20, baseType: !176, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2155, file: !2156, line: 20, baseType: !176, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2155, file: !2156, line: 20, baseType: !176, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2150, file: !2151, line: 491, baseType: !145, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2150, file: !2151, line: 495, baseType: !178, size: 16, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2150, file: !2151, line: 496, baseType: !178, size: 16, offset: 272)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2150, file: !2151, line: 497, baseType: !178, size: 16, offset: 288)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2150, file: !2151, line: 498, baseType: !178, size: 16, offset: 304)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2150, file: !2151, line: 502, baseType: !145, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2150, file: !2151, line: 503, baseType: !145, size: 64, offset: 384)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2150, file: !2151, line: 514, baseType: !2179, size: 256, offset: 448)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2180, size: 256, elements: !1190)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2151, line: 483, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2150, file: !2151, line: 516, baseType: !145, size: 64, offset: 704)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2150, file: !2151, line: 518, baseType: !145, size: 64, offset: 768)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2150, file: !2151, line: 520, baseType: !145, size: 64, offset: 832)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2150, file: !2151, line: 521, baseType: !145, size: 64, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2150, file: !2151, line: 522, baseType: !145, size: 64, offset: 960)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2150, file: !2151, line: 528, baseType: !2188, size: 64, offset: 1024)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2151, line: 10, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2150, file: !2151, line: 535, baseType: !145, size: 64, offset: 1088)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2150, file: !2151, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2150, file: !2151, line: 540, baseType: !2193, size: 33280, offset: 1536)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2194, line: 317, size: 33280, elements: !2195)
!2194 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2193, file: !2194, line: 330, baseType: !5, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2193, file: !2194, line: 337, baseType: !145, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2193, file: !2194, line: 348, baseType: !2199, size: 32768, offset: 512)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2194, line: 304, size: 32768, elements: !2200)
!2200 = !{!2201, !2216, !2255, !2305, !2318}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2199, file: !2194, line: 305, baseType: !2202, size: 896)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2194, line: 12, size: 896, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2215}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2202, file: !2194, line: 13, baseType: !187, size: 32)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2202, file: !2194, line: 14, baseType: !187, size: 32, offset: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2202, file: !2194, line: 15, baseType: !187, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2202, file: !2194, line: 16, baseType: !187, size: 32, offset: 96)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2202, file: !2194, line: 17, baseType: !187, size: 32, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2202, file: !2194, line: 18, baseType: !187, size: 32, offset: 160)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2202, file: !2194, line: 19, baseType: !187, size: 32, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2202, file: !2194, line: 22, baseType: !2212, size: 640, offset: 224)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 640, elements: !2213)
!2213 = !{!2214}
!2214 = !DISubrange(count: 20)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2202, file: !2194, line: 25, baseType: !187, size: 32, offset: 864)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2199, file: !2194, line: 306, baseType: !2217, size: 4096, align: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2194, line: 34, size: 4096, align: 128, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2238, !2239, !2240, !2244, !2246, !2250}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2217, file: !2194, line: 35, baseType: !176, size: 16)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2217, file: !2194, line: 36, baseType: !176, size: 16, offset: 16)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2217, file: !2194, line: 37, baseType: !176, size: 16, offset: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2217, file: !2194, line: 38, baseType: !176, size: 16, offset: 48)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !2194, line: 39, baseType: !2224, size: 128, offset: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !2194, line: 39, size: 128, elements: !2225)
!2225 = !{!2226, !2231}
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !2194, line: 40, baseType: !2227, size: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2194, line: 40, size: 128, elements: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2227, file: !2194, line: 41, baseType: !412, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2227, file: !2194, line: 42, baseType: !412, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2224, file: !2194, line: 44, baseType: !2232, size: 128)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2194, line: 44, size: 128, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2232, file: !2194, line: 45, baseType: !187, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2232, file: !2194, line: 46, baseType: !187, size: 32, offset: 32)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2232, file: !2194, line: 47, baseType: !187, size: 32, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2232, file: !2194, line: 48, baseType: !187, size: 32, offset: 96)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2217, file: !2194, line: 51, baseType: !187, size: 32, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2217, file: !2194, line: 52, baseType: !187, size: 32, offset: 224)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2217, file: !2194, line: 55, baseType: !2241, size: 1024, offset: 256)
!2241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 1024, elements: !2242)
!2242 = !{!2243}
!2243 = !DISubrange(count: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2217, file: !2194, line: 58, baseType: !2245, size: 2048, offset: 1280)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 2048, elements: !275)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2217, file: !2194, line: 60, baseType: !2247, size: 384, offset: 3328)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 384, elements: !2248)
!2248 = !{!2249}
!2249 = !DISubrange(count: 12)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2217, file: !2194, line: 62, baseType: !2251, size: 384, offset: 3712)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2217, file: !2194, line: 62, size: 384, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2251, file: !2194, line: 63, baseType: !2247, size: 384)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2251, file: !2194, line: 64, baseType: !2247, size: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2199, file: !2194, line: 307, baseType: !2256, size: 1088)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2194, line: 79, size: 1088, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2304}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2256, file: !2194, line: 80, baseType: !187, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2256, file: !2194, line: 81, baseType: !187, size: 32, offset: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2256, file: !2194, line: 82, baseType: !187, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2256, file: !2194, line: 83, baseType: !187, size: 32, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2256, file: !2194, line: 84, baseType: !187, size: 32, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2256, file: !2194, line: 85, baseType: !187, size: 32, offset: 160)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2256, file: !2194, line: 86, baseType: !187, size: 32, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2256, file: !2194, line: 88, baseType: !2212, size: 640, offset: 224)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2256, file: !2194, line: 89, baseType: !171, size: 8, offset: 864)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2256, file: !2194, line: 90, baseType: !171, size: 8, offset: 872)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2256, file: !2194, line: 91, baseType: !171, size: 8, offset: 880)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2256, file: !2194, line: 92, baseType: !171, size: 8, offset: 888)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2256, file: !2194, line: 93, baseType: !171, size: 8, offset: 896)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2256, file: !2194, line: 94, baseType: !171, size: 8, offset: 904)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2256, file: !2194, line: 95, baseType: !2273, size: 64, offset: 960)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2275, line: 11, size: 128, elements: !2276)
!2275 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2274, file: !2275, line: 12, baseType: !305, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2274, file: !2275, line: 13, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2281, line: 56, size: 1344, elements: !2282)
!2281 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2280, file: !2281, line: 61, baseType: !145, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2280, file: !2281, line: 62, baseType: !145, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2280, file: !2281, line: 63, baseType: !145, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2280, file: !2281, line: 64, baseType: !145, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2280, file: !2281, line: 65, baseType: !145, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2280, file: !2281, line: 66, baseType: !145, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2280, file: !2281, line: 68, baseType: !145, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2280, file: !2281, line: 69, baseType: !145, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2280, file: !2281, line: 70, baseType: !145, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2280, file: !2281, line: 71, baseType: !145, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2280, file: !2281, line: 72, baseType: !145, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2280, file: !2281, line: 73, baseType: !145, size: 64, offset: 704)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2280, file: !2281, line: 74, baseType: !145, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2280, file: !2281, line: 75, baseType: !145, size: 64, offset: 832)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2280, file: !2281, line: 76, baseType: !145, size: 64, offset: 896)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2280, file: !2281, line: 81, baseType: !145, size: 64, offset: 960)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2280, file: !2281, line: 83, baseType: !145, size: 64, offset: 1024)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2280, file: !2281, line: 84, baseType: !145, size: 64, offset: 1088)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2280, file: !2281, line: 85, baseType: !145, size: 64, offset: 1152)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2280, file: !2281, line: 86, baseType: !145, size: 64, offset: 1216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2280, file: !2281, line: 87, baseType: !145, size: 64, offset: 1280)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2256, file: !2194, line: 96, baseType: !187, size: 32, offset: 1024)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2199, file: !2194, line: 308, baseType: !2306, size: 4608, align: 512)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2194, line: 289, size: 4608, align: 512, elements: !2307)
!2307 = !{!2308, !2309, !2316}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2306, file: !2194, line: 290, baseType: !2217, size: 4096, align: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2306, file: !2194, line: 291, baseType: !2310, size: 512, offset: 4096)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2194, line: 268, size: 512, elements: !2311)
!2311 = !{!2312, !2313, !2314}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2310, file: !2194, line: 269, baseType: !412, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2310, file: !2194, line: 270, baseType: !412, size: 64, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2310, file: !2194, line: 271, baseType: !2315, size: 384, offset: 128)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !1636)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2306, file: !2194, line: 292, baseType: !2317, offset: 4608)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, elements: !1734)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2199, file: !2194, line: 309, baseType: !2319, size: 32768)
!2319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 32768, elements: !2320)
!2320 = !{!2321}
!2321 = !DISubrange(count: 4096)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1226, file: !765, line: 378, baseType: !2323, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1222, file: !765, line: 384, baseType: !1513, size: 192, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1013, file: !765, line: 500, baseType: !228, offset: 6656)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1013, file: !765, line: 501, baseType: !2327, size: 64, offset: 6656)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !765, line: 387, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1013, file: !765, line: 516, baseType: !1724, size: 64, offset: 6720)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1013, file: !765, line: 519, baseType: !347, size: 64, offset: 6784)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1013, file: !765, line: 521, baseType: !2332, size: 64, offset: 6848)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !765, line: 521, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1013, file: !765, line: 545, baseType: !790, size: 32, offset: 6912)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1013, file: !765, line: 548, baseType: !480, size: 8, offset: 6944)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1013, file: !765, line: 550, baseType: !2337, offset: 6952)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2338, line: 142, elements: !242)
!2338 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1013, file: !765, line: 554, baseType: !1969, size: 256, offset: 6976)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1013, file: !765, line: 557, baseType: !187, size: 32, offset: 7232)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1010, file: !765, line: 565, baseType: !2342, offset: 7296)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, elements: !2343)
!2343 = !{!2344}
!2344 = !DISubrange(count: -1)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1006, file: !765, line: 151, baseType: !790, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !998, file: !765, line: 156, baseType: !228, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !765, line: 159, baseType: !2348, size: 128)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !765, line: 159, size: 128, elements: !2349)
!2349 = !{!2350, !2414}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2348, file: !765, line: 161, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2353)
!2353 = !{!2354, !2364, !2385, !2386, !2387, !2388, !2389, !2401, !2402, !2403}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2352, file: !29, line: 111, baseType: !2355, size: 384)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2356)
!2356 = !{!2357, !2359, !2360, !2361, !2362, !2363}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2355, file: !29, line: 20, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2355, file: !29, line: 21, baseType: !2358, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2355, file: !29, line: 22, baseType: !2358, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2355, file: !29, line: 23, baseType: !145, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2355, file: !29, line: 24, baseType: !145, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2355, file: !29, line: 25, baseType: !145, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2352, file: !29, line: 112, baseType: !2365, size: 64, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2367, line: 105, size: 128, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2366, file: !2367, line: 110, baseType: !145, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2366, file: !2367, line: 118, baseType: !2371, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2367, line: 95, size: 448, elements: !2373)
!2373 = !{!2374, !2375, !2380, !2381, !2382, !2383, !2384}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2372, file: !2367, line: 96, baseType: !720, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2372, file: !2367, line: 97, baseType: !2376, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2367, line: 60, baseType: !2378)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !2365}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2372, file: !2367, line: 98, baseType: !2376, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2372, file: !2367, line: 99, baseType: !480, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2372, file: !2367, line: 100, baseType: !480, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2372, file: !2367, line: 101, baseType: !360, size: 128, align: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2372, file: !2367, line: 102, baseType: !2365, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2352, file: !29, line: 113, baseType: !2366, size: 128, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2352, file: !29, line: 114, baseType: !1513, size: 192, offset: 576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2352, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2352, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2352, file: !29, line: 117, baseType: !2390, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2393)
!2393 = !{!2394, !2395, !2399, !2400}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2392, file: !29, line: 73, baseType: !876, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2392, file: !29, line: 78, baseType: !2396, size: 64, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !2351}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2392, file: !29, line: 83, baseType: !2396, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2392, file: !29, line: 89, baseType: !1062, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2352, file: !29, line: 118, baseType: !342, size: 64, offset: 896)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2352, file: !29, line: 119, baseType: !254, size: 32, offset: 960)
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !2352, file: !29, line: 120, baseType: !2404, size: 128, offset: 1024)
!2404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2352, file: !29, line: 120, size: 128, elements: !2405)
!2405 = !{!2406, !2412}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2404, file: !29, line: 121, baseType: !2407, size: 128)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2408, line: 6, size: 128, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2407, file: !2408, line: 7, baseType: !412, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2407, file: !2408, line: 8, baseType: !412, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2404, file: !29, line: 122, baseType: !2413)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2407, elements: !1734)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2348, file: !765, line: 162, baseType: !342, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !769, file: !765, line: 176, baseType: !360, size: 128, align: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !765, line: 179, baseType: !2417, size: 32, offset: 384)
!2417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !765, line: 179, size: 32, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2422}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2417, file: !765, line: 184, baseType: !790, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2417, file: !765, line: 192, baseType: !5, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2417, file: !765, line: 194, baseType: !5, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2417, file: !765, line: 195, baseType: !254, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !764, file: !765, line: 199, baseType: !790, size: 32, offset: 416)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !650, file: !42, line: 1964, baseType: !2425, size: 64, offset: 1344)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!305, !589, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2430, line: 12, size: 256, elements: !2431)
!2430 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2431 = !{!2432, !2433, !2434, !2435, !2436}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2429, file: !2430, line: 13, baseType: !786, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2429, file: !2430, line: 16, baseType: !254, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2429, file: !2430, line: 23, baseType: !145, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2429, file: !2430, line: 30, baseType: !145, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2429, file: !2430, line: 33, baseType: !2437, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !765, line: 27, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !650, file: !42, line: 1966, baseType: !2425, size: 64, offset: 1408)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !590, file: !42, line: 1424, baseType: !2441, size: 64, offset: 448)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2443)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2444)
!2444 = !{!2445, !2491, !2495, !2499, !2500, !2501, !2502, !2503, !2508, !2513, !2517}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2443, file: !36, line: 323, baseType: !2446, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!254, !2449}
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2476, !2477, !2478}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2450, file: !36, line: 295, baseType: !632, size: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2450, file: !36, line: 296, baseType: !214, size: 128, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2450, file: !36, line: 297, baseType: !214, size: 128, offset: 256)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2450, file: !36, line: 298, baseType: !214, size: 128, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2450, file: !36, line: 299, baseType: !716, size: 192, offset: 512)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2450, file: !36, line: 300, baseType: !228, offset: 704)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2450, file: !36, line: 301, baseType: !790, size: 32, offset: 704)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2450, file: !36, line: 302, baseType: !589, size: 64, offset: 768)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2450, file: !36, line: 303, baseType: !2461, size: 64, offset: 832)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2462)
!2462 = !{!2463, !2475}
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2461, file: !36, line: 69, baseType: !2464, size: 32)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2461, file: !36, line: 69, size: 32, elements: !2465)
!2465 = !{!2466, !2467, !2468}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2464, file: !36, line: 70, baseType: !425, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2464, file: !36, line: 71, baseType: !433, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2464, file: !36, line: 72, baseType: !2469, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2470, line: 24, baseType: !2471)
!2470 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2470, line: 22, size: 32, elements: !2472)
!2472 = !{!2473}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2471, file: !2470, line: 23, baseType: !2474, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2470, line: 20, baseType: !431)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2461, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2450, file: !36, line: 304, baseType: !521, size: 64, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2450, file: !36, line: 305, baseType: !145, size: 64, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2450, file: !36, line: 306, baseType: !2479, size: 576, offset: 1024)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2480)
!2480 = !{!2481, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2479, file: !36, line: 206, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !523)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2479, file: !36, line: 207, baseType: !2482, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2479, file: !36, line: 208, baseType: !2482, size: 64, offset: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2479, file: !36, line: 209, baseType: !2482, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2479, file: !36, line: 210, baseType: !2482, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2479, file: !36, line: 211, baseType: !2482, size: 64, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2479, file: !36, line: 212, baseType: !2482, size: 64, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2479, file: !36, line: 213, baseType: !529, size: 64, offset: 448)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2479, file: !36, line: 214, baseType: !529, size: 64, offset: 512)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2443, file: !36, line: 324, baseType: !2492, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!2449, !589, !254}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2443, file: !36, line: 325, baseType: !2496, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2449}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2443, file: !36, line: 326, baseType: !2446, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2443, file: !36, line: 327, baseType: !2446, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2443, file: !36, line: 328, baseType: !2446, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2443, file: !36, line: 329, baseType: !678, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2443, file: !36, line: 332, baseType: !2504, size: 64, offset: 448)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!2507, !419}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2443, file: !36, line: 333, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!254, !419, !2512}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2443, file: !36, line: 335, baseType: !2514, size: 64, offset: 576)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!254, !419, !2507}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2443, file: !36, line: 337, baseType: !2518, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!254, !589, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !590, file: !42, line: 1425, baseType: !2523, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2525)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2526)
!2526 = !{!2527, !2531, !2532, !2536, !2537, !2538, !2553, !2576, !2580, !2581, !2604}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2525, file: !36, line: 429, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!254, !589, !254, !254, !539}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2525, file: !36, line: 430, baseType: !678, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2525, file: !36, line: 431, baseType: !2533, size: 64, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!254, !589, !5}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2525, file: !36, line: 432, baseType: !2533, size: 64, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2525, file: !36, line: 433, baseType: !678, size: 64, offset: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2525, file: !36, line: 434, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!254, !589, !254, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2544)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2543, file: !36, line: 416, baseType: !254, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2543, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2543, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2543, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2543, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2543, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2543, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2543, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2525, file: !36, line: 435, baseType: !2554, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!254, !589, !2461, !2557}
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2559)
!2559 = !{!2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2558, file: !36, line: 344, baseType: !254, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2558, file: !36, line: 345, baseType: !412, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2558, file: !36, line: 346, baseType: !412, size: 64, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2558, file: !36, line: 347, baseType: !412, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2558, file: !36, line: 348, baseType: !412, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2558, file: !36, line: 349, baseType: !412, size: 64, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2558, file: !36, line: 350, baseType: !412, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2558, file: !36, line: 351, baseType: !726, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2558, file: !36, line: 353, baseType: !726, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2558, file: !36, line: 354, baseType: !254, size: 32, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2558, file: !36, line: 355, baseType: !254, size: 32, offset: 608)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2558, file: !36, line: 356, baseType: !412, size: 64, offset: 640)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2558, file: !36, line: 357, baseType: !412, size: 64, offset: 704)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2558, file: !36, line: 358, baseType: !412, size: 64, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2558, file: !36, line: 359, baseType: !726, size: 64, offset: 832)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2558, file: !36, line: 360, baseType: !254, size: 32, offset: 896)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2525, file: !36, line: 436, baseType: !2577, size: 64, offset: 448)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!254, !589, !2521, !2557}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2525, file: !36, line: 438, baseType: !2554, size: 64, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2525, file: !36, line: 439, baseType: !2582, size: 64, offset: 576)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!254, !589, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2586, file: !36, line: 410, baseType: !5, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2586, file: !36, line: 411, baseType: !2590, size: 1344, offset: 64)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 1344, elements: !271)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2603}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2591, file: !36, line: 396, baseType: !5, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2591, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2591, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2591, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2591, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2591, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2591, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2591, file: !36, line: 404, baseType: !414, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2591, file: !36, line: 405, baseType: !2602, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !215, line: 126, baseType: !412)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2591, file: !36, line: 406, baseType: !2602, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2525, file: !36, line: 440, baseType: !2533, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !590, file: !42, line: 1426, baseType: !2606, size: 64, offset: 576)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2608)
!2608 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !590, file: !42, line: 1427, baseType: !145, size: 64, offset: 640)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !590, file: !42, line: 1428, baseType: !145, size: 64, offset: 704)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !590, file: !42, line: 1429, baseType: !145, size: 64, offset: 768)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !590, file: !42, line: 1430, baseType: !377, size: 64, offset: 832)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !590, file: !42, line: 1431, baseType: !810, size: 256, offset: 896)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !590, file: !42, line: 1432, baseType: !254, size: 32, offset: 1152)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !590, file: !42, line: 1433, baseType: !790, size: 32, offset: 1184)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !590, file: !42, line: 1437, baseType: !2617, size: 64, offset: 1216)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2620)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !590, file: !42, line: 1449, baseType: !2622, size: 64, offset: 1280)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !393, line: 34, size: 64, elements: !2623)
!2623 = !{!2624}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2622, file: !393, line: 35, baseType: !396, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !590, file: !42, line: 1450, baseType: !214, size: 128, offset: 1344)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !590, file: !42, line: 1451, baseType: !2627, size: 64, offset: 1472)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !590, file: !42, line: 1452, baseType: !1935, size: 64, offset: 1536)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !590, file: !42, line: 1453, baseType: !2631, size: 64, offset: 1600)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !590, file: !42, line: 1454, baseType: !632, size: 128, offset: 1664)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !590, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !590, file: !42, line: 1456, baseType: !2636, size: 2432, offset: 1856)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2642, !2674}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2636, file: !36, line: 519, baseType: !5, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2636, file: !36, line: 520, baseType: !810, size: 256, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2636, file: !36, line: 521, baseType: !2641, size: 192, offset: 320)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 192, elements: !271)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2636, file: !36, line: 522, baseType: !2643, size: 1728, offset: 512)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2644, size: 1728, elements: !271)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2645)
!2645 = !{!2646, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2644, file: !36, line: 223, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2649)
!2649 = !{!2650, !2651, !2664, !2665}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2648, file: !36, line: 444, baseType: !254, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2648, file: !36, line: 445, baseType: !2652, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2654)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2655)
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2654, file: !36, line: 311, baseType: !678, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2654, file: !36, line: 312, baseType: !678, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2654, file: !36, line: 313, baseType: !678, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2654, file: !36, line: 314, baseType: !678, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2654, file: !36, line: 315, baseType: !2446, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2654, file: !36, line: 316, baseType: !2446, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2654, file: !36, line: 317, baseType: !2446, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2654, file: !36, line: 318, baseType: !2518, size: 64, offset: 448)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2648, file: !36, line: 446, baseType: !623, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2648, file: !36, line: 447, baseType: !2647, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2644, file: !36, line: 224, baseType: !254, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2644, file: !36, line: 226, baseType: !214, size: 128, offset: 128)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2644, file: !36, line: 227, baseType: !145, size: 64, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2644, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2644, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2644, file: !36, line: 230, baseType: !2482, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2644, file: !36, line: 231, baseType: !2482, size: 64, offset: 448)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2644, file: !36, line: 232, baseType: !342, size: 64, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2636, file: !36, line: 523, baseType: !2675, size: 192, offset: 2240)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2652, size: 192, elements: !271)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !590, file: !42, line: 1458, baseType: !2677, size: 2112, offset: 4288)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2678)
!2678 = !{!2679, !2680, !2681}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2677, file: !42, line: 1411, baseType: !254, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2677, file: !42, line: 1412, baseType: !1492, size: 128, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2677, file: !42, line: 1413, baseType: !2682, size: 1920, offset: 192)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 1920, elements: !271)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2684, line: 12, size: 640, elements: !2685)
!2684 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2685 = !{!2686, !2694, !2696, !2701, !2702}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2683, file: !2684, line: 13, baseType: !2687, size: 320)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2688, line: 17, size: 320, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2689 = !{!2690, !2691, !2692, !2693}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2687, file: !2688, line: 18, baseType: !254, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2687, file: !2688, line: 19, baseType: !254, size: 32, offset: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2687, file: !2688, line: 20, baseType: !1492, size: 128, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2687, file: !2688, line: 22, baseType: !360, size: 128, align: 64, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2683, file: !2684, line: 14, baseType: !2695, size: 64, offset: 320)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2683, file: !2684, line: 15, baseType: !2697, size: 64, offset: 384)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2698, line: 16, size: 64, elements: !2699)
!2698 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2697, file: !2698, line: 17, baseType: !1229, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2683, file: !2684, line: 16, baseType: !1492, size: 128, offset: 448)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2683, file: !2684, line: 17, baseType: !790, size: 32, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !590, file: !42, line: 1465, baseType: !342, size: 64, offset: 6400)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !590, file: !42, line: 1468, baseType: !187, size: 32, offset: 6464)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !590, file: !42, line: 1470, baseType: !529, size: 64, offset: 6528)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !590, file: !42, line: 1471, baseType: !529, size: 64, offset: 6592)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !590, file: !42, line: 1473, baseType: !188, size: 32, offset: 6656)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !590, file: !42, line: 1474, baseType: !2709, size: 64, offset: 6720)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !590, file: !42, line: 1477, baseType: !2712, size: 256, offset: 6784)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 256, elements: !2242)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !590, file: !42, line: 1478, baseType: !2714, size: 128, offset: 7040)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2715, line: 18, baseType: !2716)
!2715 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2715, line: 16, size: 128, elements: !2717)
!2717 = !{!2718}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2716, file: !2715, line: 17, baseType: !2719, size: 128)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !1746)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !590, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !590, file: !42, line: 1481, baseType: !2722, size: 32, offset: 7200)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !215, line: 150, baseType: !5)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !590, file: !42, line: 1487, baseType: !716, size: 192, offset: 7232)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !590, file: !42, line: 1493, baseType: !210, size: 64, offset: 7424)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !590, file: !42, line: 1495, baseType: !2726, size: 64, offset: 7488)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !375, line: 135, size: 1024, align: 512, elements: !2729)
!2729 = !{!2730, !2734, !2735, !2742, !2748, !2752, !2756, !2760, !2761, !2765, !2769, !2774, !2778}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2728, file: !375, line: 136, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!254, !377, !5}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2728, file: !375, line: 137, baseType: !2731, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2728, file: !375, line: 138, baseType: !2736, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!254, !2739, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2728, file: !375, line: 139, baseType: !2743, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!254, !2739, !5, !210, !2746}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2728, file: !375, line: 141, baseType: !2749, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!254, !2739}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2728, file: !375, line: 142, baseType: !2753, size: 64, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!254, !377}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2728, file: !375, line: 143, baseType: !2757, size: 64, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !377}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2728, file: !375, line: 144, baseType: !2757, size: 64, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2728, file: !375, line: 145, baseType: !2762, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{null, !377, !419}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2728, file: !375, line: 146, baseType: !2766, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!270, !377, !270, !254}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2728, file: !375, line: 147, baseType: !2770, size: 64, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!373, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2728, file: !375, line: 148, baseType: !2775, size: 64, offset: 704)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!254, !539, !480}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2728, file: !375, line: 149, baseType: !2779, size: 64, offset: 768)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!377, !377, !2782}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !590, file: !42, line: 1500, baseType: !254, size: 32, offset: 7552)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !590, file: !42, line: 1502, baseType: !2786, size: 448, offset: 7616)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2430, line: 60, size: 448, elements: !2787)
!2787 = !{!2788, !2793, !2794, !2795, !2796, !2797, !2798}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2786, file: !2430, line: 61, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!145, !2792, !2428}
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2786, file: !2430, line: 63, baseType: !2789, size: 64, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2786, file: !2430, line: 66, baseType: !305, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2786, file: !2430, line: 67, baseType: !254, size: 32, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2786, file: !2430, line: 68, baseType: !5, size: 32, offset: 224)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2786, file: !2430, line: 71, baseType: !214, size: 128, offset: 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2786, file: !2430, line: 77, baseType: !2799, size: 64, offset: 384)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !590, file: !42, line: 1505, baseType: !720, size: 64, offset: 8064)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !590, file: !42, line: 1508, baseType: !720, size: 64, offset: 8128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !590, file: !42, line: 1511, baseType: !254, size: 32, offset: 8192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !590, file: !42, line: 1514, baseType: !943, size: 32, offset: 8224)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !590, file: !42, line: 1517, baseType: !2805, size: 64, offset: 8256)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1970, line: 18, flags: DIFlagFwdDecl)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !590, file: !42, line: 1518, baseType: !628, size: 64, offset: 8320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !590, file: !42, line: 1525, baseType: !1724, size: 64, offset: 8384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !590, file: !42, line: 1532, baseType: !2810, size: 64, offset: 8448)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2811, line: 52, size: 64, elements: !2812)
!2811 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2812 = !{!2813}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2810, file: !2811, line: 53, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2811, line: 40, size: 256, elements: !2816)
!2816 = !{!2817, !2818, !2823}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2815, file: !2811, line: 42, baseType: !228)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2815, file: !2811, line: 44, baseType: !2819, size: 192)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2811, line: 28, size: 192, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2819, file: !2811, line: 29, baseType: !214, size: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2819, file: !2811, line: 31, baseType: !305, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2815, file: !2811, line: 49, baseType: !305, size: 64, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !590, file: !42, line: 1533, baseType: !2810, size: 64, offset: 8512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !590, file: !42, line: 1534, baseType: !360, size: 128, align: 64, offset: 8576)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !590, file: !42, line: 1535, baseType: !1969, size: 256, offset: 8704)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !590, file: !42, line: 1537, baseType: !716, size: 192, offset: 8960)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !590, file: !42, line: 1542, baseType: !254, size: 32, offset: 9152)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !590, file: !42, line: 1545, baseType: !228, offset: 9184)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !590, file: !42, line: 1546, baseType: !214, size: 128, offset: 9216)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !590, file: !42, line: 1548, baseType: !228, offset: 9344)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !590, file: !42, line: 1549, baseType: !214, size: 128, offset: 9344)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !420, file: !42, line: 624, baseType: !776, size: 64, offset: 256)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !420, file: !42, line: 631, baseType: !145, size: 64, offset: 320)
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !42, line: 639, baseType: !2836, size: 32, offset: 384)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !42, line: 639, size: 32, elements: !2837)
!2837 = !{!2838, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2836, file: !42, line: 640, baseType: !2839, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2836, file: !42, line: 641, baseType: !5, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !420, file: !42, line: 643, baseType: !503, size: 32, offset: 416)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !420, file: !42, line: 644, baseType: !521, size: 64, offset: 448)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !420, file: !42, line: 645, baseType: !525, size: 128, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !420, file: !42, line: 646, baseType: !525, size: 128, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !420, file: !42, line: 647, baseType: !525, size: 128, offset: 768)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !420, file: !42, line: 648, baseType: !228, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !420, file: !42, line: 649, baseType: !178, size: 16, offset: 896)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !420, file: !42, line: 650, baseType: !171, size: 8, offset: 912)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !420, file: !42, line: 651, baseType: !171, size: 8, offset: 920)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !420, file: !42, line: 652, baseType: !2602, size: 64, offset: 960)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !420, file: !42, line: 659, baseType: !145, size: 64, offset: 1024)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !420, file: !42, line: 660, baseType: !810, size: 256, offset: 1088)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !420, file: !42, line: 662, baseType: !145, size: 64, offset: 1344)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !420, file: !42, line: 663, baseType: !145, size: 64, offset: 1408)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !420, file: !42, line: 665, baseType: !632, size: 128, offset: 1472)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !420, file: !42, line: 666, baseType: !214, size: 128, offset: 1600)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !420, file: !42, line: 675, baseType: !214, size: 128, offset: 1728)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !420, file: !42, line: 676, baseType: !214, size: 128, offset: 1856)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !420, file: !42, line: 677, baseType: !214, size: 128, offset: 1984)
!2860 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !42, line: 678, baseType: !2861, size: 128, offset: 2112)
!2861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !42, line: 678, size: 128, elements: !2862)
!2862 = !{!2863, !2864}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2861, file: !42, line: 679, baseType: !628, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2861, file: !42, line: 680, baseType: !360, size: 128, align: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !420, file: !42, line: 682, baseType: !722, size: 64, offset: 2240)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !420, file: !42, line: 683, baseType: !722, size: 64, offset: 2304)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !420, file: !42, line: 684, baseType: !790, size: 32, offset: 2368)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !420, file: !42, line: 685, baseType: !790, size: 32, offset: 2400)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !420, file: !42, line: 686, baseType: !790, size: 32, offset: 2432)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !420, file: !42, line: 688, baseType: !790, size: 32, offset: 2464)
!2871 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !42, line: 690, baseType: !2872, size: 64, offset: 2496)
!2872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !42, line: 690, size: 64, elements: !2873)
!2873 = !{!2874, !3096}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2872, file: !42, line: 691, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2877)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2878)
!2878 = !{!2879, !2880, !2884, !2888, !2892, !2893, !2894, !2898, !2911, !2912, !2920, !2924, !2925, !2929, !2930, !2934, !2939, !2940, !2944, !2948, !3056, !3060, !3061, !3065, !3066, !3070, !3074, !3079, !3083, !3087, !3091, !3095}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2877, file: !42, line: 1823, baseType: !623, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2877, file: !42, line: 1824, baseType: !2881, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!521, !347, !521, !254}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2877, file: !42, line: 1825, baseType: !2885, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!301, !347, !270, !316, !738}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2877, file: !42, line: 1826, baseType: !2889, size: 64, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!301, !347, !210, !316, !738}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2877, file: !42, line: 1827, baseType: !880, size: 64, offset: 256)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2877, file: !42, line: 1828, baseType: !880, size: 64, offset: 320)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2877, file: !42, line: 1829, baseType: !2895, size: 64, offset: 384)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!254, !883, !480}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2877, file: !42, line: 1830, baseType: !2899, size: 64, offset: 448)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!254, !347, !2902}
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !2904)
!2904 = !{!2905, !2910}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2903, file: !42, line: 1777, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!254, !2902, !210, !254, !521, !412, !5}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2903, file: !42, line: 1778, baseType: !521, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2877, file: !42, line: 1831, baseType: !2899, size: 64, offset: 512)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2877, file: !42, line: 1832, baseType: !2913, size: 64, offset: 576)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!2916, !347, !2918}
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2917, line: 52, baseType: !5)
!2917 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !609, line: 27, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2877, file: !42, line: 1833, baseType: !2921, size: 64, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!305, !347, !5, !145}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2877, file: !42, line: 1834, baseType: !2921, size: 64, offset: 704)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2877, file: !42, line: 1835, baseType: !2926, size: 64, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!254, !347, !1016}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2877, file: !42, line: 1836, baseType: !145, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2877, file: !42, line: 1837, baseType: !2931, size: 64, offset: 896)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!254, !419, !347}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2877, file: !42, line: 1838, baseType: !2935, size: 64, offset: 960)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!254, !347, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !342)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2877, file: !42, line: 1839, baseType: !2931, size: 64, offset: 1024)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2877, file: !42, line: 1840, baseType: !2941, size: 64, offset: 1088)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!254, !347, !521, !521, !254}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2877, file: !42, line: 1841, baseType: !2945, size: 64, offset: 1152)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!254, !254, !347, !254}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2877, file: !42, line: 1842, baseType: !2949, size: 64, offset: 1216)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!254, !347, !254, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !2954)
!2954 = !{!2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2986, !2987, !2988, !3001, !3032}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2953, file: !42, line: 1063, baseType: !2952, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2953, file: !42, line: 1064, baseType: !214, size: 128, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2953, file: !42, line: 1065, baseType: !632, size: 128, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2953, file: !42, line: 1066, baseType: !214, size: 128, offset: 320)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2953, file: !42, line: 1069, baseType: !214, size: 128, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2953, file: !42, line: 1072, baseType: !2938, size: 64, offset: 576)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2953, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2953, file: !42, line: 1074, baseType: !175, size: 8, offset: 672)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2953, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2953, file: !42, line: 1076, baseType: !254, size: 32, offset: 736)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2953, file: !42, line: 1077, baseType: !1492, size: 128, offset: 768)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2953, file: !42, line: 1078, baseType: !347, size: 64, offset: 896)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2953, file: !42, line: 1079, baseType: !521, size: 64, offset: 960)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2953, file: !42, line: 1080, baseType: !521, size: 64, offset: 1024)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2953, file: !42, line: 1082, baseType: !2970, size: 64, offset: 1088)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !2972)
!2972 = !{!2973, !2981, !2982, !2983, !2984, !2985}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2971, file: !42, line: 1315, baseType: !2974)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2975, line: 20, baseType: !2976)
!2975 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2975, line: 11, elements: !2977)
!2977 = !{!2978}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2976, file: !2975, line: 12, baseType: !2979)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !240, line: 33, baseType: !2980)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 31, elements: !242)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2971, file: !42, line: 1316, baseType: !254, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2971, file: !42, line: 1317, baseType: !254, size: 32, offset: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2971, file: !42, line: 1318, baseType: !2970, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2971, file: !42, line: 1319, baseType: !347, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2971, file: !42, line: 1320, baseType: !360, size: 128, align: 64, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2953, file: !42, line: 1084, baseType: !145, size: 64, offset: 1152)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2953, file: !42, line: 1085, baseType: !145, size: 64, offset: 1216)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2953, file: !42, line: 1087, baseType: !2989, size: 64, offset: 1280)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !2992)
!2992 = !{!2993, !2997}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2991, file: !42, line: 1012, baseType: !2994, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2952, !2952}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2991, file: !42, line: 1013, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2952}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2953, file: !42, line: 1088, baseType: !3002, size: 64, offset: 1344)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !3005)
!3005 = !{!3006, !3010, !3014, !3015, !3019, !3023, !3027, !3031}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3004, file: !42, line: 1017, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!2938, !2938}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3004, file: !42, line: 1018, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2938}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3004, file: !42, line: 1019, baseType: !2998, size: 64, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3004, file: !42, line: 1020, baseType: !3016, size: 64, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!254, !2952, !254}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3004, file: !42, line: 1021, baseType: !3020, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!480, !2952}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3004, file: !42, line: 1022, baseType: !3024, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!254, !2952, !254, !218}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3004, file: !42, line: 1023, baseType: !3028, size: 64, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2952, !857}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3004, file: !42, line: 1024, baseType: !3020, size: 64, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2953, file: !42, line: 1097, baseType: !3033, size: 256, offset: 1408)
!3033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2953, file: !42, line: 1089, size: 256, elements: !3034)
!3034 = !{!3035, !3044, !3050}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3033, file: !42, line: 1090, baseType: !3036, size: 256)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3037, line: 10, size: 256, elements: !3038)
!3037 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3038 = !{!3039, !3040, !3043}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3036, file: !3037, line: 11, baseType: !187, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3036, file: !3037, line: 12, baseType: !3041, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3037, line: 5, flags: DIFlagFwdDecl)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3036, file: !3037, line: 13, baseType: !214, size: 128, offset: 128)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3033, file: !42, line: 1091, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3037, line: 17, size: 64, elements: !3046)
!3046 = !{!3047}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3045, file: !3037, line: 18, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3037, line: 16, flags: DIFlagFwdDecl)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3033, file: !42, line: 1096, baseType: !3051, size: 192)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3033, file: !42, line: 1092, size: 192, elements: !3052)
!3052 = !{!3053, !3054, !3055}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3051, file: !42, line: 1093, baseType: !214, size: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3051, file: !42, line: 1094, baseType: !254, size: 32, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3051, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2877, file: !42, line: 1843, baseType: !3057, size: 64, offset: 1280)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!301, !347, !763, !254, !316, !738, !254}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2877, file: !42, line: 1844, baseType: !1136, size: 64, offset: 1344)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2877, file: !42, line: 1845, baseType: !3062, size: 64, offset: 1408)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!254, !254}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2877, file: !42, line: 1846, baseType: !2949, size: 64, offset: 1472)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2877, file: !42, line: 1847, baseType: !3067, size: 64, offset: 1536)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!301, !2110, !347, !738, !316, !5}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2877, file: !42, line: 1848, baseType: !3071, size: 64, offset: 1600)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!301, !347, !738, !2110, !316, !5}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2877, file: !42, line: 1849, baseType: !3075, size: 64, offset: 1664)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!254, !347, !305, !3078, !857}
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2877, file: !42, line: 1850, baseType: !3080, size: 64, offset: 1728)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!305, !347, !254, !521, !521}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2877, file: !42, line: 1852, baseType: !3084, size: 64, offset: 1792)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{null, !704, !347}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2877, file: !42, line: 1856, baseType: !3088, size: 64, offset: 1856)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!301, !347, !521, !347, !521, !316, !5}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2877, file: !42, line: 1858, baseType: !3092, size: 64, offset: 1920)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!521, !347, !521, !347, !521, !521, !5}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2877, file: !42, line: 1861, baseType: !2941, size: 64, offset: 1984)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2872, file: !42, line: 692, baseType: !657, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !420, file: !42, line: 694, baseType: !3098, size: 64, offset: 2560)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3099, file: !42, line: 1101, baseType: !228)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3099, file: !42, line: 1102, baseType: !214, size: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3099, file: !42, line: 1103, baseType: !214, size: 128, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3099, file: !42, line: 1104, baseType: !214, size: 128, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !420, file: !42, line: 695, baseType: !777, size: 1216, align: 64, offset: 2624)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !420, file: !42, line: 696, baseType: !214, size: 128, offset: 3840)
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !42, line: 697, baseType: !3108, size: 64, offset: 3968)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !42, line: 697, size: 64, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3123, !3124}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3108, file: !42, line: 698, baseType: !2110, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3108, file: !42, line: 699, baseType: !2627, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3108, file: !42, line: 700, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3115, line: 14, size: 832, elements: !3116)
!3115 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3114, file: !3115, line: 15, baseType: !206, size: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3114, file: !3115, line: 16, baseType: !623, size: 64, offset: 512)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3114, file: !3115, line: 17, baseType: !2875, size: 64, offset: 576)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3114, file: !3115, line: 18, baseType: !214, size: 128, offset: 640)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3114, file: !3115, line: 19, baseType: !503, size: 32, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3114, file: !3115, line: 20, baseType: !5, size: 32, offset: 800)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3108, file: !42, line: 701, baseType: !270, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3108, file: !42, line: 702, baseType: !5, size: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !420, file: !42, line: 705, baseType: !188, size: 32, offset: 4032)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !420, file: !42, line: 708, baseType: !188, size: 32, offset: 4064)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !420, file: !42, line: 709, baseType: !2709, size: 64, offset: 4096)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !420, file: !42, line: 720, baseType: !342, size: 64, offset: 4160)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !378, file: !375, line: 98, baseType: !3130, size: 256, offset: 448)
!3130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 256, elements: !2242)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !378, file: !375, line: 101, baseType: !3132, size: 32, offset: 704)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3133, line: 25, size: 32, elements: !3134)
!3133 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3134 = !{!3135}
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3132, file: !3133, line: 26, baseType: !3136, size: 32)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3132, file: !3133, line: 26, size: 32, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !3133, line: 30, baseType: !3139, size: 32)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3136, file: !3133, line: 30, size: 32, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3139, file: !3133, line: 31, baseType: !228)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3139, file: !3133, line: 32, baseType: !254, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !378, file: !375, line: 102, baseType: !2726, size: 64, offset: 768)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !378, file: !375, line: 103, baseType: !589, size: 64, offset: 832)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !378, file: !375, line: 104, baseType: !145, size: 64, offset: 896)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !378, file: !375, line: 105, baseType: !342, size: 64, offset: 960)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !375, line: 107, baseType: !3148, size: 128, offset: 1024)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !375, line: 107, size: 128, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3148, file: !375, line: 108, baseType: !214, size: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3148, file: !375, line: 109, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !378, file: !375, line: 111, baseType: !214, size: 128, offset: 1152)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !378, file: !375, line: 112, baseType: !214, size: 128, offset: 1280)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !378, file: !375, line: 120, baseType: !3156, size: 128, offset: 1408)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !375, line: 116, size: 128, elements: !3157)
!3157 = !{!3158, !3159, !3160}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3156, file: !375, line: 117, baseType: !632, size: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3156, file: !375, line: 118, baseType: !392, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3156, file: !375, line: 119, baseType: !360, size: 128, align: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !348, file: !42, line: 922, baseType: !419, size: 64, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !348, file: !42, line: 923, baseType: !2875, size: 64, offset: 320)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !348, file: !42, line: 929, baseType: !228, offset: 384)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !348, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !348, file: !42, line: 931, baseType: !720, size: 64, offset: 448)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !348, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !348, file: !42, line: 933, baseType: !2722, size: 32, offset: 544)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !348, file: !42, line: 934, baseType: !716, size: 192, offset: 576)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !348, file: !42, line: 935, baseType: !521, size: 64, offset: 768)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !348, file: !42, line: 936, baseType: !3171, size: 192, offset: 832)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3171, file: !42, line: 886, baseType: !2974)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3171, file: !42, line: 887, baseType: !1482, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3171, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3171, file: !42, line: 889, baseType: !425, size: 32, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3171, file: !42, line: 889, baseType: !425, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3171, file: !42, line: 890, baseType: !254, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !348, file: !42, line: 937, baseType: !1558, size: 64, offset: 1024)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !348, file: !42, line: 938, baseType: !3181, size: 256, offset: 1088)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186, !3187, !3188}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3181, file: !42, line: 897, baseType: !145, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3181, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3181, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3181, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3181, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3181, file: !42, line: 904, baseType: !521, size: 64, offset: 192)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !348, file: !42, line: 940, baseType: !412, size: 64, offset: 1344)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !348, file: !42, line: 945, baseType: !342, size: 64, offset: 1408)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !348, file: !42, line: 949, baseType: !214, size: 128, offset: 1472)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !348, file: !42, line: 950, baseType: !214, size: 128, offset: 1600)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !348, file: !42, line: 952, baseType: !776, size: 64, offset: 1728)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !348, file: !42, line: 953, baseType: !943, size: 32, offset: 1792)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !348, file: !42, line: 954, baseType: !943, size: 32, offset: 1824)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !337, file: !295, line: 174, baseType: !344, size: 64, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !337, file: !295, line: 176, baseType: !3198, size: 64, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!254, !347, !221, !336, !1016}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !325, file: !295, line: 90, baseType: !320, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !325, file: !295, line: 91, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !285, file: !207, line: 143, baseType: !3205, size: 64, offset: 256)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!3208, !221}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3211)
!3211 = !{!3212, !3213, !3217, !3221, !3227, !3231}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3210, file: !59, line: 40, baseType: !58, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3210, file: !59, line: 41, baseType: !3214, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!480}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3210, file: !59, line: 42, baseType: !3218, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!342}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3210, file: !59, line: 43, baseType: !3222, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!2139, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3210, file: !59, line: 44, baseType: !3228, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!2139}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3210, file: !59, line: 45, baseType: !458, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !285, file: !207, line: 144, baseType: !3233, size: 64, offset: 320)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!2139, !221}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !285, file: !207, line: 145, baseType: !3237, size: 64, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !221, !3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !206, file: !207, line: 70, baseType: !3243, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !609, line: 123, size: 1024, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3362, !3363, !3364, !3365, !3366}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3244, file: !609, line: 124, baseType: !790, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3244, file: !609, line: 125, baseType: !790, size: 32, offset: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3244, file: !609, line: 135, baseType: !3243, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3244, file: !609, line: 136, baseType: !210, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3244, file: !609, line: 138, baseType: !803, size: 192, align: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3244, file: !609, line: 140, baseType: !2139, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3244, file: !609, line: 141, baseType: !5, size: 32, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, scope: !3244, file: !609, line: 142, baseType: !3254, size: 256, offset: 512)
!3254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3244, file: !609, line: 142, size: 256, elements: !3255)
!3255 = !{!3256, !3302, !3306}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3254, file: !609, line: 143, baseType: !3257, size: 192)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !609, line: 91, size: 192, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3257, file: !609, line: 92, baseType: !145, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3257, file: !609, line: 94, baseType: !799, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3257, file: !609, line: 100, baseType: !3262, size: 64, offset: 128)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !609, line: 180, size: 704, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3274, !3275, !3276, !3300, !3301}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3263, file: !609, line: 182, baseType: !3243, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3263, file: !609, line: 183, baseType: !5, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3263, file: !609, line: 186, baseType: !3268, size: 192, offset: 128)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3269, line: 19, size: 192, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3270 = !{!3271, !3272, !3273}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3268, file: !3269, line: 20, baseType: !781, size: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3268, file: !3269, line: 21, baseType: !5, size: 32, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3268, file: !3269, line: 22, baseType: !5, size: 32, offset: 160)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3263, file: !609, line: 187, baseType: !187, size: 32, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3263, file: !609, line: 188, baseType: !187, size: 32, offset: 352)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3263, file: !609, line: 189, baseType: !3277, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !609, line: 168, size: 320, elements: !3279)
!3279 = !{!3280, !3284, !3288, !3292, !3296}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3278, file: !609, line: 169, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!254, !704, !3262}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3278, file: !609, line: 171, baseType: !3285, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!254, !3243, !210, !311}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3278, file: !609, line: 173, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!254, !3243}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3278, file: !609, line: 174, baseType: !3293, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!254, !3243, !3243, !210}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3278, file: !609, line: 176, baseType: !3297, size: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!254, !704, !3243, !3262}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3263, file: !609, line: 192, baseType: !214, size: 128, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3263, file: !609, line: 194, baseType: !1492, size: 128, offset: 576)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3254, file: !609, line: 144, baseType: !3303, size: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !609, line: 103, size: 64, elements: !3304)
!3304 = !{!3305}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3303, file: !609, line: 104, baseType: !3243, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3254, file: !609, line: 145, baseType: !3307, size: 256)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !609, line: 107, size: 256, elements: !3308)
!3308 = !{!3309, !3357, !3360, !3361}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3307, file: !609, line: 108, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !609, line: 217, size: 768, elements: !3313)
!3313 = !{!3314, !3334, !3338, !3339, !3340, !3341, !3342, !3346, !3347, !3348, !3349, !3353}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3312, file: !609, line: 222, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!254, !3318}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !609, line: 197, size: 1088, elements: !3320)
!3320 = !{!3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3319, file: !609, line: 199, baseType: !3243, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3319, file: !609, line: 200, baseType: !347, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3319, file: !609, line: 201, baseType: !704, size: 64, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3319, file: !609, line: 202, baseType: !342, size: 64, offset: 192)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3319, file: !609, line: 205, baseType: !716, size: 192, offset: 256)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3319, file: !609, line: 206, baseType: !716, size: 192, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3319, file: !609, line: 207, baseType: !254, size: 32, offset: 640)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3319, file: !609, line: 208, baseType: !214, size: 128, offset: 704)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3319, file: !609, line: 209, baseType: !270, size: 64, offset: 832)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3319, file: !609, line: 211, baseType: !316, size: 64, offset: 896)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3319, file: !609, line: 212, baseType: !480, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3319, file: !609, line: 213, baseType: !480, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3319, file: !609, line: 214, baseType: !1044, size: 64, offset: 1024)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3312, file: !609, line: 223, baseType: !3335, size: 64, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !3318}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3312, file: !609, line: 236, baseType: !748, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3312, file: !609, line: 238, baseType: !735, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3312, file: !609, line: 239, baseType: !744, size: 64, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3312, file: !609, line: 240, baseType: !740, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3312, file: !609, line: 242, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!301, !3318, !270, !316, !521}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3312, file: !609, line: 252, baseType: !316, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3312, file: !609, line: 259, baseType: !480, size: 8, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3312, file: !609, line: 260, baseType: !3343, size: 64, offset: 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3312, file: !609, line: 263, baseType: !3350, size: 64, offset: 640)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!2916, !3318, !2918}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3312, file: !609, line: 266, baseType: !3354, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!254, !3318, !1016}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3307, file: !609, line: 109, baseType: !3358, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !609, line: 31, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3307, file: !609, line: 110, baseType: !521, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3307, file: !609, line: 111, baseType: !3243, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3244, file: !609, line: 148, baseType: !342, size: 64, offset: 768)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3244, file: !609, line: 154, baseType: !412, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3244, file: !609, line: 156, baseType: !178, size: 16, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3244, file: !609, line: 157, baseType: !311, size: 16, offset: 912)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3244, file: !609, line: 158, baseType: !3367, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !609, line: 32, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !206, file: !207, line: 71, baseType: !3370, size: 32, offset: 448)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3371, line: 19, size: 32, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3370, file: !3371, line: 20, baseType: !1243, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !206, file: !207, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !206, file: !207, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !206, file: !207, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !206, file: !207, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !206, file: !207, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !71, line: 463, baseType: !202, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !203, file: !71, line: 465, baseType: !3381, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !203, file: !71, line: 467, baseType: !210, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !71, line: 468, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3395, !3400, !3404}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3387, file: !71, line: 88, baseType: !210, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3387, file: !71, line: 89, baseType: !322, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3387, file: !71, line: 90, baseType: !3392, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!254, !202, !265}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3387, file: !71, line: 91, baseType: !3396, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!270, !202, !3399, !3240, !3241}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3387, file: !71, line: 93, baseType: !3401, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !202}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3387, file: !71, line: 95, baseType: !3405, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3408)
!3408 = !{!3409, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3407, file: !78, line: 279, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!254, !202}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3407, file: !78, line: 280, baseType: !3401, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3407, file: !78, line: 281, baseType: !3410, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3407, file: !78, line: 282, baseType: !3410, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3407, file: !78, line: 283, baseType: !3410, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3407, file: !78, line: 284, baseType: !3410, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3407, file: !78, line: 285, baseType: !3410, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3407, file: !78, line: 286, baseType: !3410, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3407, file: !78, line: 287, baseType: !3410, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3407, file: !78, line: 288, baseType: !3410, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3407, file: !78, line: 289, baseType: !3410, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3407, file: !78, line: 290, baseType: !3410, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3407, file: !78, line: 291, baseType: !3410, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3407, file: !78, line: 292, baseType: !3410, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3407, file: !78, line: 293, baseType: !3410, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3407, file: !78, line: 294, baseType: !3410, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3407, file: !78, line: 295, baseType: !3410, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3407, file: !78, line: 296, baseType: !3410, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3407, file: !78, line: 297, baseType: !3410, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3407, file: !78, line: 298, baseType: !3410, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3407, file: !78, line: 299, baseType: !3410, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3407, file: !78, line: 300, baseType: !3410, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3407, file: !78, line: 301, baseType: !3410, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !203, file: !71, line: 470, baseType: !3436, size: 64, offset: 768)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3438, line: 82, size: 1408, elements: !3439)
!3438 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3521, !3524, !3525}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3437, file: !3438, line: 83, baseType: !210, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3437, file: !3438, line: 84, baseType: !210, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3437, file: !3438, line: 85, baseType: !202, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3437, file: !3438, line: 86, baseType: !322, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3437, file: !3438, line: 87, baseType: !322, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3437, file: !3438, line: 88, baseType: !322, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3437, file: !3438, line: 90, baseType: !3447, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!254, !202, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3472, !3485, !3486, !3487, !3488, !3489, !3497, !3498, !3499, !3500, !3501, !3502}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !65, line: 96, baseType: !210, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3451, file: !65, line: 97, baseType: !3436, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3451, file: !65, line: 99, baseType: !623, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3451, file: !65, line: 100, baseType: !210, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3451, file: !65, line: 102, baseType: !480, size: 8, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3451, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3451, file: !65, line: 105, baseType: !3460, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3463, line: 262, size: 1600, elements: !3464)
!3463 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3464 = !{!3465, !3466, !3467, !3471}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3462, file: !3463, line: 263, baseType: !2712, size: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3462, file: !3463, line: 264, baseType: !2712, size: 256, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3462, file: !3463, line: 265, baseType: !3468, size: 1024, offset: 512)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 1024, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3462, file: !3463, line: 266, baseType: !2139, size: 64, offset: 1536)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3451, file: !65, line: 106, baseType: !3473, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3463, line: 210, size: 256, elements: !3476)
!3476 = !{!3477, !3481, !3483, !3484}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3475, file: !3463, line: 211, baseType: !3478, size: 72)
!3478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 72, elements: !3479)
!3479 = !{!3480}
!3480 = !DISubrange(count: 9)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3475, file: !3463, line: 212, baseType: !3482, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3463, line: 14, baseType: !145)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3475, file: !3463, line: 213, baseType: !188, size: 32, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3475, file: !3463, line: 214, baseType: !188, size: 32, offset: 224)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3451, file: !65, line: 108, baseType: !3410, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3451, file: !65, line: 109, baseType: !3401, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3451, file: !65, line: 110, baseType: !3410, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3451, file: !65, line: 111, baseType: !3401, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3451, file: !65, line: 112, baseType: !3490, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!254, !202, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3494, file: !78, line: 51, baseType: !254, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3451, file: !65, line: 113, baseType: !3410, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3451, file: !65, line: 114, baseType: !322, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3451, file: !65, line: 115, baseType: !322, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !65, line: 117, baseType: !3405, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3451, file: !65, line: 118, baseType: !3401, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3451, file: !65, line: 120, baseType: !3503, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3437, file: !3438, line: 91, baseType: !3392, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3437, file: !3438, line: 92, baseType: !3410, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3437, file: !3438, line: 93, baseType: !3401, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3437, file: !3438, line: 94, baseType: !3410, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3437, file: !3438, line: 95, baseType: !3401, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3437, file: !3438, line: 97, baseType: !3410, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3437, file: !3438, line: 98, baseType: !3410, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3437, file: !3438, line: 100, baseType: !3490, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3437, file: !3438, line: 101, baseType: !3410, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3437, file: !3438, line: 103, baseType: !3410, size: 64, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3437, file: !3438, line: 105, baseType: !3410, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3437, file: !3438, line: 107, baseType: !3405, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3437, file: !3438, line: 109, baseType: !3518, size: 64, offset: 1216)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3438, line: 109, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3437, file: !3438, line: 111, baseType: !3522, size: 64, offset: 1280)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3438, line: 111, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3437, file: !3438, line: 112, baseType: !638, offset: 1344)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3437, file: !3438, line: 114, baseType: !480, size: 8, offset: 1344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !203, file: !71, line: 471, baseType: !3450, size: 64, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !203, file: !71, line: 473, baseType: !342, size: 64, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !203, file: !71, line: 475, baseType: !342, size: 64, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !203, file: !71, line: 480, baseType: !716, size: 192, offset: 1024)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !203, file: !71, line: 484, baseType: !3531, size: 576, offset: 1216)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3531, file: !71, line: 362, baseType: !214, size: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3531, file: !71, line: 363, baseType: !214, size: 128, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3531, file: !71, line: 364, baseType: !214, size: 128, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3531, file: !71, line: 365, baseType: !214, size: 128, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3531, file: !71, line: 366, baseType: !480, size: 8, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3531, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !203, file: !71, line: 485, baseType: !3540, size: 2304, offset: 1792)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3637, !3641}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3540, file: !78, line: 566, baseType: !3493, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3540, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3540, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3540, file: !78, line: 569, baseType: !480, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3540, file: !78, line: 570, baseType: !480, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3540, file: !78, line: 571, baseType: !480, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3540, file: !78, line: 572, baseType: !480, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3540, file: !78, line: 573, baseType: !480, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3540, file: !78, line: 574, baseType: !480, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3540, file: !78, line: 575, baseType: !480, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3540, file: !78, line: 576, baseType: !480, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3540, file: !78, line: 577, baseType: !187, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3540, file: !78, line: 578, baseType: !228, offset: 96)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3540, file: !78, line: 580, baseType: !214, size: 128, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3540, file: !78, line: 581, baseType: !1513, size: 192, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3540, file: !78, line: 582, baseType: !3558, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3560, line: 43, size: 1472, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3569, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3559, file: !3560, line: 44, baseType: !210, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3559, file: !3560, line: 45, baseType: !254, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !3560, line: 46, baseType: !214, size: 128, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !3560, line: 47, baseType: !228, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3559, file: !3560, line: 48, baseType: !3567, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3559, file: !3560, line: 49, baseType: !3570, size: 320, offset: 320)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3571, line: 11, size: 320, elements: !3572)
!3571 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3572 = !{!3573, !3574, !3575, !3580}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3570, file: !3571, line: 16, baseType: !632, size: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3570, file: !3571, line: 17, baseType: !145, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3570, file: !3571, line: 18, baseType: !3576, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3570, file: !3571, line: 19, baseType: !187, size: 32, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3559, file: !3560, line: 50, baseType: !145, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3559, file: !3560, line: 51, baseType: !1313, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3559, file: !3560, line: 52, baseType: !1313, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3559, file: !3560, line: 53, baseType: !1313, size: 64, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3559, file: !3560, line: 54, baseType: !1313, size: 64, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3559, file: !3560, line: 55, baseType: !1313, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3559, file: !3560, line: 56, baseType: !145, size: 64, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3559, file: !3560, line: 57, baseType: !145, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3559, file: !3560, line: 58, baseType: !145, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3559, file: !3560, line: 59, baseType: !145, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3559, file: !3560, line: 60, baseType: !145, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3559, file: !3560, line: 61, baseType: !202, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3559, file: !3560, line: 62, baseType: !480, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3559, file: !3560, line: 63, baseType: !480, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3540, file: !78, line: 583, baseType: !480, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3540, file: !78, line: 584, baseType: !480, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3540, file: !78, line: 585, baseType: !480, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3540, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3540, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3540, file: !78, line: 592, baseType: !1305, size: 512, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3540, file: !78, line: 593, baseType: !412, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3540, file: !78, line: 594, baseType: !1969, size: 256, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3540, file: !78, line: 595, baseType: !1492, size: 128, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3540, file: !78, line: 596, baseType: !3567, size: 64, offset: 1536)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3540, file: !78, line: 597, baseType: !790, size: 32, offset: 1600)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3540, file: !78, line: 598, baseType: !790, size: 32, offset: 1632)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3540, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3540, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3540, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3540, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3540, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3540, file: !78, line: 604, baseType: !480, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3540, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3540, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3540, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3540, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3540, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3540, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3540, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3540, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3540, file: !78, line: 613, baseType: !254, size: 32, offset: 1792)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3540, file: !78, line: 614, baseType: !254, size: 32, offset: 1824)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3540, file: !78, line: 615, baseType: !412, size: 64, offset: 1856)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3540, file: !78, line: 616, baseType: !412, size: 64, offset: 1920)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3540, file: !78, line: 617, baseType: !412, size: 64, offset: 1984)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3540, file: !78, line: 618, baseType: !412, size: 64, offset: 2048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3540, file: !78, line: 620, baseType: !3628, size: 64, offset: 2112)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3629, file: !78, line: 537, baseType: !228)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3629, file: !78, line: 538, baseType: !5, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3629, file: !78, line: 540, baseType: !214, size: 128, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3629, file: !78, line: 543, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3540, file: !78, line: 621, baseType: !3638, size: 64, offset: 2176)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !202, !1455}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3540, file: !78, line: 622, baseType: !3642, size: 64, offset: 2240)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !203, file: !71, line: 486, baseType: !3645, size: 64, offset: 4096)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3654, !3655, !3656}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3646, file: !78, line: 643, baseType: !3407, size: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3646, file: !78, line: 644, baseType: !3410, size: 64, offset: 1472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3646, file: !78, line: 645, baseType: !3651, size: 64, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !202, !480}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3646, file: !78, line: 646, baseType: !3410, size: 64, offset: 1600)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3646, file: !78, line: 647, baseType: !3401, size: 64, offset: 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3646, file: !78, line: 648, baseType: !3401, size: 64, offset: 1728)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !203, file: !71, line: 493, baseType: !3658, size: 64, offset: 4160)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !92, line: 162, size: 1088, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3934, !3935, !3936, !3937, !3938, !3939, !4065, !4066, !4067, !4068, !4069, !4070, !4071}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3659, file: !92, line: 163, baseType: !214, size: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3659, file: !92, line: 164, baseType: !210, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3659, file: !92, line: 165, baseType: !3664, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3666)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !92, line: 105, size: 640, elements: !3667)
!3667 = !{!3668, !3786, !3797, !3802, !3806, !3813, !3817, !3821, !3926, !3930}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3666, file: !92, line: 106, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!254, !3658, !3672, !91}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3674, line: 51, size: 1344, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677, !3679, !3680, !3770, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !3674, line: 52, baseType: !210, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3673, file: !3674, line: 53, baseType: !3678, size: 32, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3674, line: 28, baseType: !187)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3673, file: !3674, line: 54, baseType: !210, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3673, file: !3674, line: 55, baseType: !3681, size: 192, offset: 192)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3682, line: 17, size: 192, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !{!3684, !3686, !3769}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3681, file: !3682, line: 18, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3681, file: !3682, line: 19, baseType: !3687, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3682, line: 110, size: 1152, elements: !3690)
!3690 = !{!3691, !3695, !3699, !3705, !3711, !3715, !3719, !3724, !3728, !3729, !3733, !3737, !3741, !3752, !3753, !3754, !3755, !3765}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3689, file: !3682, line: 111, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3685, !3685}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3689, file: !3682, line: 112, baseType: !3696, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3685}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3689, file: !3682, line: 113, baseType: !3700, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!480, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3681)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3689, file: !3682, line: 114, baseType: !3706, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!2139, !3703, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3689, file: !3682, line: 116, baseType: !3712, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!480, !3703, !210}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3689, file: !3682, line: 118, baseType: !3716, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!254, !3703, !210, !5, !342, !316}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3689, file: !3682, line: 123, baseType: !3720, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!254, !3703, !210, !3723, !316}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3689, file: !3682, line: 126, baseType: !3725, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!210, !3703}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3689, file: !3682, line: 127, baseType: !3725, size: 64, offset: 512)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3689, file: !3682, line: 128, baseType: !3730, size: 64, offset: 576)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3685, !3703}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3689, file: !3682, line: 130, baseType: !3734, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!3685, !3703, !3685}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3689, file: !3682, line: 133, baseType: !3738, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!3685, !3703, !210}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3689, file: !3682, line: 135, baseType: !3742, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!254, !3703, !210, !210, !5, !5, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3682, line: 43, size: 640, elements: !3747)
!3747 = !{!3748, !3749, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3746, file: !3682, line: 44, baseType: !3685, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3746, file: !3682, line: 45, baseType: !5, size: 32, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3746, file: !3682, line: 46, baseType: !3751, size: 512, offset: 128)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 512, elements: !1343)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3689, file: !3682, line: 140, baseType: !3734, size: 64, offset: 832)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3689, file: !3682, line: 143, baseType: !3730, size: 64, offset: 896)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3689, file: !3682, line: 145, baseType: !3692, size: 64, offset: 960)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3689, file: !3682, line: 146, baseType: !3756, size: 64, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!254, !3703, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3682, line: 29, size: 128, elements: !3761)
!3761 = !{!3762, !3763, !3764}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3760, file: !3682, line: 30, baseType: !5, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3760, file: !3682, line: 31, baseType: !5, size: 32, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3760, file: !3682, line: 32, baseType: !3703, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3689, file: !3682, line: 148, baseType: !3766, size: 64, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!254, !3703, !202}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3681, file: !3682, line: 20, baseType: !202, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3673, file: !3674, line: 57, baseType: !3771, size: 64, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3674, line: 31, size: 704, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3772, file: !3674, line: 32, baseType: !270, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3772, file: !3674, line: 33, baseType: !254, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3772, file: !3674, line: 34, baseType: !342, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3772, file: !3674, line: 35, baseType: !3771, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3772, file: !3674, line: 43, baseType: !337, size: 448, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3673, file: !3674, line: 58, baseType: !3771, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3673, file: !3674, line: 59, baseType: !3672, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3673, file: !3674, line: 60, baseType: !3672, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3673, file: !3674, line: 61, baseType: !3672, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3673, file: !3674, line: 63, baseType: !206, size: 512, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3673, file: !3674, line: 65, baseType: !145, size: 64, offset: 1216)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3673, file: !3674, line: 66, baseType: !342, size: 64, offset: 1280)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3666, file: !92, line: 108, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!254, !3658, !3790, !91}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !92, line: 63, size: 640, elements: !3792)
!3792 = !{!3793, !3794, !3795}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3791, file: !92, line: 64, baseType: !3685, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3791, file: !92, line: 65, baseType: !254, size: 32, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3791, file: !92, line: 66, baseType: !3796, size: 512, offset: 96)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 512, elements: !1746)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3666, file: !92, line: 110, baseType: !3798, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!254, !3658, !5, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !215, line: 164, baseType: !145)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3666, file: !92, line: 111, baseType: !3803, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3658, !5}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3666, file: !92, line: 112, baseType: !3807, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!254, !3658, !3672, !3810, !5, !3812, !2695}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3666, file: !92, line: 117, baseType: !3814, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!254, !3658, !5, !5, !342}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3666, file: !92, line: 119, baseType: !3818, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !3658, !5, !5}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3666, file: !92, line: 121, baseType: !3822, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!254, !3658, !3825, !480}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !113, line: 175, size: 448, elements: !3827)
!3827 = !{!3828, !3829, !3830, !3831, !3843, !3923, !3924, !3925}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3826, file: !113, line: 176, baseType: !187, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3826, file: !113, line: 177, baseType: !5, size: 32, offset: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3826, file: !113, line: 178, baseType: !145, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3826, file: !113, line: 179, baseType: !3832, size: 64, offset: 128)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !113, line: 145, size: 256, elements: !3834)
!3834 = !{!3835, !3836, !3837, !3840}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3833, file: !113, line: 146, baseType: !5, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3833, file: !113, line: 150, baseType: !342, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3833, file: !113, line: 151, baseType: !3838, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !113, line: 127, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3833, file: !113, line: 152, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1377, line: 756, baseType: !3842)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 64, elements: !1382)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3826, file: !113, line: 180, baseType: !3844, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !113, line: 503, size: 2304, elements: !3846)
!3846 = !{!3847, !3848, !3849, !3853, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3870, !3874, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3891, !3892, !3893, !3899, !3900, !3904, !3908, !3912, !3916, !3920, !3921, !3922}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3845, file: !113, line: 504, baseType: !202, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3845, file: !113, line: 505, baseType: !210, size: 64, offset: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3845, file: !113, line: 506, baseType: !3850, size: 64, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!5, !3825}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3845, file: !113, line: 507, baseType: !3854, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !3825}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3845, file: !113, line: 508, baseType: !3854, size: 64, offset: 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3845, file: !113, line: 509, baseType: !3854, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3845, file: !113, line: 511, baseType: !3854, size: 64, offset: 384)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3845, file: !113, line: 512, baseType: !3854, size: 64, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3845, file: !113, line: 513, baseType: !3854, size: 64, offset: 512)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3845, file: !113, line: 514, baseType: !3854, size: 64, offset: 576)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3845, file: !113, line: 515, baseType: !3854, size: 64, offset: 640)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3845, file: !113, line: 517, baseType: !3865, size: 64, offset: 704)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!254, !3825, !3868, !480}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3845, file: !113, line: 518, baseType: !3871, size: 64, offset: 768)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!254, !3825}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3845, file: !113, line: 519, baseType: !3875, size: 64, offset: 832)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!254, !3825, !5}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3845, file: !113, line: 520, baseType: !3875, size: 64, offset: 896)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3845, file: !113, line: 522, baseType: !3854, size: 64, offset: 960)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3845, file: !113, line: 523, baseType: !3854, size: 64, offset: 1024)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3845, file: !113, line: 525, baseType: !3854, size: 64, offset: 1088)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3845, file: !113, line: 526, baseType: !3854, size: 64, offset: 1152)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3845, file: !113, line: 528, baseType: !3854, size: 64, offset: 1216)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3845, file: !113, line: 529, baseType: !3854, size: 64, offset: 1280)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3845, file: !113, line: 530, baseType: !3854, size: 64, offset: 1344)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3845, file: !113, line: 532, baseType: !3854, size: 64, offset: 1408)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3845, file: !113, line: 534, baseType: !3888, size: 64, offset: 1472)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3825, !704}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3845, file: !113, line: 535, baseType: !3871, size: 64, offset: 1536)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3845, file: !113, line: 536, baseType: !3854, size: 64, offset: 1600)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3845, file: !113, line: 538, baseType: !3894, size: 64, offset: 1664)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !3825, !3897}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !113, line: 29, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3845, file: !113, line: 539, baseType: !3894, size: 64, offset: 1728)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3845, file: !113, line: 541, baseType: !3901, size: 64, offset: 1792)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!254, !3825, !105, !925}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3845, file: !113, line: 542, baseType: !3905, size: 64, offset: 1856)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!254, !3825, !105, !480}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3845, file: !113, line: 544, baseType: !3909, size: 64, offset: 1920)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!254, !3825, !342}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3845, file: !113, line: 546, baseType: !3913, size: 64, offset: 1984)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{null, !3825, !5}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3845, file: !113, line: 547, baseType: !3917, size: 64, offset: 2048)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{null, !3825, !3868}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3845, file: !113, line: 549, baseType: !3871, size: 64, offset: 2112)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3845, file: !113, line: 550, baseType: !3854, size: 64, offset: 2176)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3845, file: !113, line: 552, baseType: !145, size: 64, offset: 2240)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3826, file: !113, line: 181, baseType: !3658, size: 64, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3826, file: !113, line: 183, baseType: !3825, size: 64, offset: 320)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3826, file: !113, line: 185, baseType: !342, size: 64, offset: 384)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3666, file: !92, line: 122, baseType: !3927, size: 64, offset: 512)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !3658, !3825}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3666, file: !92, line: 123, baseType: !3931, size: 64, offset: 576)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!254, !3658, !3790, !3812, !2695}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3659, file: !92, line: 166, baseType: !342, size: 64, offset: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3659, file: !92, line: 167, baseType: !5, size: 32, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3659, file: !92, line: 168, baseType: !5, size: 32, offset: 352)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3659, file: !92, line: 171, baseType: !3685, size: 64, offset: 384)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3659, file: !92, line: 172, baseType: !91, size: 32, offset: 448)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3659, file: !92, line: 173, baseType: !3940, size: 64, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !113, line: 1101, size: 192, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947, !3948}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !3941, file: !113, line: 1102, baseType: !5, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !3941, file: !113, line: 1103, baseType: !5, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !3941, file: !113, line: 1104, baseType: !5, size: 32, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !3941, file: !113, line: 1105, baseType: !5, size: 32, offset: 96)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !3941, file: !113, line: 1106, baseType: !112, size: 32, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3941, file: !113, line: 1107, baseType: !3949, offset: 192)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3950, elements: !2343)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !113, line: 1051, size: 960, elements: !3952)
!3952 = !{!3953, !3954, !3955, !3959, !3963, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3951, file: !113, line: 1052, baseType: !816)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !3951, file: !113, line: 1053, baseType: !342, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !3951, file: !113, line: 1054, baseType: !3956, size: 64, offset: 64)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!187, !342}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !3951, file: !113, line: 1055, baseType: !3960, size: 64, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{null, !187, !342}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3951, file: !113, line: 1056, baseType: !3964, size: 64, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{null, !3950}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3951, file: !113, line: 1057, baseType: !3964, size: 64, offset: 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !3951, file: !113, line: 1058, baseType: !5, size: 32, offset: 320)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !3951, file: !113, line: 1059, baseType: !5, size: 32, offset: 352)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3951, file: !113, line: 1060, baseType: !187, size: 32, offset: 384)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !3951, file: !113, line: 1061, baseType: !187, size: 32, offset: 416)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !3951, file: !113, line: 1062, baseType: !187, size: 32, offset: 448)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !3951, file: !113, line: 1063, baseType: !187, size: 32, offset: 480)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !3951, file: !113, line: 1064, baseType: !187, size: 32, offset: 512)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !3951, file: !113, line: 1065, baseType: !5, size: 32, offset: 544)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3951, file: !113, line: 1066, baseType: !342, size: 64, offset: 576)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !3951, file: !113, line: 1067, baseType: !145, size: 64, offset: 640)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3951, file: !113, line: 1068, baseType: !145, size: 64, offset: 704)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3951, file: !113, line: 1069, baseType: !3658, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3951, file: !113, line: 1070, baseType: !214, size: 128, offset: 832)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !3951, file: !113, line: 1071, baseType: !3982, offset: 960)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3983, elements: !2343)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !113, line: 1009, size: 2944, elements: !3984)
!3984 = !{!3985, !3986, !3996, !4062, !4063, !4064}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3983, file: !113, line: 1010, baseType: !3845, size: 2304)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3983, file: !113, line: 1011, baseType: !3987, size: 448, offset: 2304)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !113, line: 986, size: 448, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3987, file: !113, line: 987, baseType: !145, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3987, file: !113, line: 988, baseType: !145, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3987, file: !113, line: 989, baseType: !145, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !3987, file: !113, line: 990, baseType: !145, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !3987, file: !113, line: 991, baseType: !145, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3987, file: !113, line: 992, baseType: !145, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !3987, file: !113, line: 993, baseType: !145, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3983, file: !113, line: 1012, baseType: !3997, size: 64, offset: 2752)
!3997 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !3998, line: 12, baseType: !3999)
!3998 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{null, !4002}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4004, line: 55, size: 2880, elements: !4005)
!4004 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4005 = !{!4006, !4007, !4008, !4009, !4010, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4003, file: !4004, line: 56, baseType: !3833, size: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4003, file: !4004, line: 57, baseType: !3826, size: 448, offset: 256)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4003, file: !4004, line: 58, baseType: !2695, size: 64, offset: 704)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4003, file: !4004, line: 59, baseType: !3997, size: 64, offset: 768)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4003, file: !4004, line: 60, baseType: !4011, size: 64, offset: 832)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !106, line: 110, size: 768, elements: !4013)
!4013 = !{!4014, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4012, file: !106, line: 111, baseType: !4015, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !106, line: 92, baseType: !4016)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!4019, !254, !342}
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !121, line: 17, baseType: !120)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4012, file: !106, line: 112, baseType: !342, size: 64, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4012, file: !106, line: 113, baseType: !342, size: 64, offset: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4012, file: !106, line: 114, baseType: !4011, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4012, file: !106, line: 115, baseType: !4015, size: 64, offset: 256)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4012, file: !106, line: 116, baseType: !1229, size: 64, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4012, file: !106, line: 117, baseType: !4011, size: 64, offset: 384)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4012, file: !106, line: 118, baseType: !5, size: 32, offset: 448)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4012, file: !106, line: 119, baseType: !5, size: 32, offset: 480)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4012, file: !106, line: 120, baseType: !145, size: 64, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4012, file: !106, line: 121, baseType: !145, size: 64, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4012, file: !106, line: 122, baseType: !210, size: 64, offset: 640)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4012, file: !106, line: 123, baseType: !4032, size: 64, offset: 704)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !106, line: 123, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4003, file: !4004, line: 61, baseType: !5, size: 32, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4003, file: !4004, line: 62, baseType: !5, size: 32, offset: 928)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4003, file: !4004, line: 63, baseType: !5, size: 32, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4003, file: !4004, line: 64, baseType: !5, size: 32, offset: 992)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4003, file: !4004, line: 65, baseType: !5, size: 32, offset: 1024)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4003, file: !4004, line: 66, baseType: !5, size: 32, offset: 1056)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4003, file: !4004, line: 67, baseType: !145, size: 64, offset: 1088)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4003, file: !4004, line: 68, baseType: !5, size: 32, offset: 1152)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4003, file: !4004, line: 69, baseType: !790, size: 32, offset: 1184)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4003, file: !4004, line: 70, baseType: !254, size: 32, offset: 1216)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4003, file: !4004, line: 71, baseType: !816, offset: 1248)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4003, file: !4004, line: 72, baseType: !4046, size: 64, offset: 1280)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4003, file: !4004, line: 73, baseType: !3868, size: 64, offset: 1344)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4003, file: !4004, line: 81, baseType: !145, size: 64, offset: 1408)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4003, file: !4004, line: 82, baseType: !790, size: 32, offset: 1472)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4003, file: !4004, line: 83, baseType: !1492, size: 128, offset: 1536)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4003, file: !4004, line: 85, baseType: !5, size: 32, offset: 1664)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4003, file: !4004, line: 86, baseType: !5, size: 32, offset: 1696)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4003, file: !4004, line: 87, baseType: !5, size: 32, offset: 1728)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4003, file: !4004, line: 88, baseType: !5, size: 32, offset: 1760)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4003, file: !4004, line: 91, baseType: !4032, size: 64, offset: 1792)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4003, file: !4004, line: 98, baseType: !360, size: 128, align: 64, offset: 1856)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4003, file: !4004, line: 99, baseType: !206, size: 512, offset: 1984)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4003, file: !4004, line: 101, baseType: !716, size: 192, offset: 2496)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4003, file: !4004, line: 102, baseType: !254, size: 32, offset: 2688)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4003, file: !4004, line: 103, baseType: !623, size: 64, offset: 2752)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4003, file: !4004, line: 104, baseType: !210, size: 64, offset: 2816)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3983, file: !113, line: 1013, baseType: !187, size: 32, offset: 2816)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !3983, file: !113, line: 1014, baseType: !187, size: 32, offset: 2848)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !3983, file: !113, line: 1015, baseType: !1426, size: 64, offset: 2880)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3659, file: !92, line: 175, baseType: !3658, size: 64, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3659, file: !92, line: 182, baseType: !3801, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3659, file: !92, line: 183, baseType: !5, size: 32, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3659, file: !92, line: 184, baseType: !5, size: 32, offset: 736)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3659, file: !92, line: 185, baseType: !781, size: 128, offset: 768)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3659, file: !92, line: 186, baseType: !716, size: 192, offset: 896)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3659, file: !92, line: 187, baseType: !4072, offset: 1088)
!4072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, elements: !2343)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !203, file: !71, line: 499, baseType: !214, size: 128, offset: 4224)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !203, file: !71, line: 502, baseType: !4075, size: 64, offset: 4352)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4077)
!4077 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !203, file: !71, line: 504, baseType: !4079, size: 64, offset: 4416)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !203, file: !71, line: 505, baseType: !412, size: 64, offset: 4480)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !203, file: !71, line: 510, baseType: !412, size: 64, offset: 4544)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !203, file: !71, line: 511, baseType: !4083, size: 64, offset: 4608)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4085)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !203, file: !71, line: 513, baseType: !4087, size: 64, offset: 4672)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !4089)
!4089 = !{!4090, !4091}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4088, file: !71, line: 293, baseType: !5, size: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4088, file: !71, line: 294, baseType: !145, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !203, file: !71, line: 515, baseType: !214, size: 128, offset: 4736)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !203, file: !71, line: 526, baseType: !4094, offset: 4864)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4095, line: 5, elements: !242)
!4095 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !203, file: !71, line: 528, baseType: !3672, size: 64, offset: 4864)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !203, file: !71, line: 529, baseType: !3685, size: 64, offset: 4928)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !203, file: !71, line: 534, baseType: !503, size: 32, offset: 4992)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !203, file: !71, line: 535, baseType: !187, size: 32, offset: 5024)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !203, file: !71, line: 537, baseType: !228, offset: 5056)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !203, file: !71, line: 538, baseType: !214, size: 128, offset: 5056)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !203, file: !71, line: 540, baseType: !4103, size: 64, offset: 5184)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4105, line: 54, size: 960, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4106 = !{!4107, !4108, !4109, !4110, !4111, !4112, !4113, !4117, !4121, !4122, !4123, !4124, !4128, !4132, !4133}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4104, file: !4105, line: 55, baseType: !210, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4104, file: !4105, line: 56, baseType: !623, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4104, file: !4105, line: 58, baseType: !322, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4104, file: !4105, line: 59, baseType: !322, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4104, file: !4105, line: 60, baseType: !221, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4104, file: !4105, line: 62, baseType: !3392, size: 64, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4104, file: !4105, line: 63, baseType: !4114, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!270, !202, !3399}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4104, file: !4105, line: 65, baseType: !4118, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !4103}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4104, file: !4105, line: 66, baseType: !3401, size: 64, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4104, file: !4105, line: 68, baseType: !3410, size: 64, offset: 576)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4104, file: !4105, line: 70, baseType: !3208, size: 64, offset: 640)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4104, file: !4105, line: 71, baseType: !4125, size: 64, offset: 704)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!2139, !202}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4104, file: !4105, line: 73, baseType: !4129, size: 64, offset: 768)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !202, !3240, !3241}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4104, file: !4105, line: 75, baseType: !3405, size: 64, offset: 832)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4104, file: !4105, line: 77, baseType: !3522, size: 64, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !203, file: !71, line: 541, baseType: !322, size: 64, offset: 5248)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !203, file: !71, line: 543, baseType: !3401, size: 64, offset: 5312)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !203, file: !71, line: 544, baseType: !4137, size: 64, offset: 5376)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !203, file: !71, line: 545, baseType: !4140, size: 64, offset: 5440)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !203, file: !71, line: 547, baseType: !480, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !203, file: !71, line: 548, baseType: !480, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !203, file: !71, line: 549, baseType: !480, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !203, file: !71, line: 550, baseType: !480, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !160, file: !127, line: 273, baseType: !202, size: 64, offset: 128)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !160, file: !127, line: 275, baseType: !4148, size: 64, offset: 192)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_bus", file: !127, line: 416, size: 14016, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4154, !4159, !4160, !4161, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4454, !4455, !4456, !4457, !4465, !4468, !4471, !4476, !4668, !4669, !4670, !4671}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mmio", scope: !4149, file: !127, line: 418, baseType: !342, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4149, file: !127, line: 420, baseType: !163, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_device", scope: !4149, file: !127, line: 424, baseType: !159, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_member, scope: !4149, file: !127, line: 425, baseType: !4155, size: 32, offset: 192)
!4155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4149, file: !127, line: 425, size: 32, elements: !4156)
!4156 = !{!4157, !4158}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_pcmcia_seg", scope: !4155, file: !127, line: 427, baseType: !171, size: 8)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "sdio_sbaddr", scope: !4155, file: !127, line: 429, baseType: !187, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bar_lock", scope: !4149, file: !127, line: 433, baseType: !228, offset: 224)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4149, file: !127, line: 436, baseType: !126, size: 32, offset: 224)
!4161 = !DIDerivedType(tag: DW_TAG_member, scope: !4149, file: !127, line: 438, baseType: !4162, size: 64, offset: 256)
!4162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4149, file: !127, line: 438, size: 64, elements: !4163)
!4163 = !{!4164, !4439, !4442}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "host_pci", scope: !4162, file: !127, line: 440, baseType: !4165, size: 64)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4167, line: 309, size: 19264, elements: !4168)
!4167 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4168 = !{!4169, !4170, !4242, !4243, !4244, !4245, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4337, !4338, !4339, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4413, !4414, !4415, !4416, !4417, !4418, !4420, !4421, !4422, !4425, !4432, !4433, !4434, !4435, !4436, !4437, !4438}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4166, file: !4167, line: 310, baseType: !214, size: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4166, file: !4167, line: 311, baseType: !4171, size: 64, offset: 128)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4167, line: 605, size: 8064, elements: !4173)
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179, !4180, !4195, !4196, !4197, !4221, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4234, !4235, !4237, !4238, !4239, !4240, !4241}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4172, file: !4167, line: 606, baseType: !214, size: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4172, file: !4167, line: 607, baseType: !4171, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4172, file: !4167, line: 608, baseType: !214, size: 128, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4172, file: !4167, line: 609, baseType: !214, size: 128, offset: 320)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4172, file: !4167, line: 610, baseType: !4165, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4172, file: !4167, line: 611, baseType: !214, size: 128, offset: 512)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4172, file: !4167, line: 613, baseType: !4181, size: 256, offset: 640)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4182, size: 256, elements: !1190)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4184, line: 20, size: 512, elements: !4185)
!4184 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4185 = !{!4186, !4188, !4189, !4190, !4191, !4192, !4193, !4194}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4183, file: !4184, line: 21, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !215, line: 158, baseType: !2137)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4183, file: !4184, line: 22, baseType: !4187, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4183, file: !4184, line: 23, baseType: !210, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4183, file: !4184, line: 24, baseType: !145, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4183, file: !4184, line: 25, baseType: !145, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4183, file: !4184, line: 26, baseType: !4182, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4183, file: !4184, line: 26, baseType: !4182, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4183, file: !4184, line: 26, baseType: !4182, size: 64, offset: 448)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4172, file: !4167, line: 614, baseType: !214, size: 128, offset: 896)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4172, file: !4167, line: 615, baseType: !4183, size: 512, offset: 1024)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4172, file: !4167, line: 617, baseType: !4198, size: 64, offset: 1536)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4167, line: 731, size: 320, elements: !4200)
!4200 = !{!4201, !4205, !4209, !4213, !4217}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4199, file: !4167, line: 732, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!254, !4171}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4199, file: !4167, line: 733, baseType: !4206, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !4171}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4199, file: !4167, line: 734, baseType: !4210, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!342, !4171, !5, !254}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4199, file: !4167, line: 735, baseType: !4214, size: 64, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!254, !4171, !5, !254, !254, !1426}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4199, file: !4167, line: 736, baseType: !4218, size: 64, offset: 256)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!254, !4171, !5, !254, !254, !187}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4172, file: !4167, line: 618, baseType: !4222, size: 64, offset: 1600)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4167, line: 537, flags: DIFlagFwdDecl)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4172, file: !4167, line: 619, baseType: !342, size: 64, offset: 1664)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4172, file: !4167, line: 620, baseType: !4032, size: 64, offset: 1728)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4172, file: !4167, line: 622, baseType: !175, size: 8, offset: 1792)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4172, file: !4167, line: 623, baseType: !175, size: 8, offset: 1800)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4172, file: !4167, line: 624, baseType: !175, size: 8, offset: 1808)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4172, file: !4167, line: 625, baseType: !175, size: 8, offset: 1816)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4172, file: !4167, line: 630, baseType: !4231, size: 384, offset: 1824)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, elements: !4232)
!4232 = !{!4233}
!4233 = !DISubrange(count: 48)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4172, file: !4167, line: 632, baseType: !178, size: 16, offset: 2208)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4172, file: !4167, line: 633, baseType: !4236, size: 16, offset: 2224)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4167, line: 237, baseType: !178)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4172, file: !4167, line: 634, baseType: !202, size: 64, offset: 2240)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4172, file: !4167, line: 635, baseType: !203, size: 5568, offset: 2304)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4172, file: !4167, line: 636, baseType: !336, size: 64, offset: 7872)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4172, file: !4167, line: 637, baseType: !336, size: 64, offset: 7936)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4172, file: !4167, line: 638, baseType: !5, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4166, file: !4167, line: 312, baseType: !4171, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4166, file: !4167, line: 314, baseType: !342, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4166, file: !4167, line: 315, baseType: !4032, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4166, file: !4167, line: 316, baseType: !4246, size: 64, offset: 384)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4167, line: 69, size: 832, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4254, !4255}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4247, file: !4167, line: 70, baseType: !4171, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4247, file: !4167, line: 71, baseType: !214, size: 128, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4247, file: !4167, line: 72, baseType: !4252, size: 64, offset: 192)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4167, line: 72, flags: DIFlagFwdDecl)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4247, file: !4167, line: 73, baseType: !175, size: 8, offset: 256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4247, file: !4167, line: 74, baseType: !206, size: 512, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4166, file: !4167, line: 318, baseType: !5, size: 32, offset: 448)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4166, file: !4167, line: 319, baseType: !178, size: 16, offset: 480)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4166, file: !4167, line: 320, baseType: !178, size: 16, offset: 496)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4166, file: !4167, line: 321, baseType: !178, size: 16, offset: 512)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4166, file: !4167, line: 322, baseType: !178, size: 16, offset: 528)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4166, file: !4167, line: 323, baseType: !5, size: 32, offset: 544)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4166, file: !4167, line: 324, baseType: !171, size: 8, offset: 576)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4166, file: !4167, line: 325, baseType: !171, size: 8, offset: 584)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4166, file: !4167, line: 330, baseType: !171, size: 8, offset: 592)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4166, file: !4167, line: 331, baseType: !171, size: 8, offset: 600)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4166, file: !4167, line: 332, baseType: !171, size: 8, offset: 608)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4166, file: !4167, line: 333, baseType: !171, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4166, file: !4167, line: 334, baseType: !171, size: 8, offset: 624)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4166, file: !4167, line: 335, baseType: !171, size: 8, offset: 632)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4166, file: !4167, line: 336, baseType: !176, size: 16, offset: 640)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4166, file: !4167, line: 337, baseType: !3812, size: 64, offset: 704)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4166, file: !4167, line: 339, baseType: !4273, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4167, line: 858, size: 2048, elements: !4275)
!4275 = !{!4276, !4277, !4278, !4290, !4294, !4298, !4302, !4306, !4307, !4311, !4330, !4331, !4332}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4274, file: !4167, line: 859, baseType: !214, size: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4274, file: !4167, line: 860, baseType: !210, size: 64, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4274, file: !4167, line: 861, baseType: !4279, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3463, line: 38, size: 256, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4281, file: !3463, line: 39, baseType: !188, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4281, file: !3463, line: 39, baseType: !188, size: 32, offset: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4281, file: !3463, line: 40, baseType: !188, size: 32, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4281, file: !3463, line: 40, baseType: !188, size: 32, offset: 96)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4281, file: !3463, line: 41, baseType: !188, size: 32, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4281, file: !3463, line: 41, baseType: !188, size: 32, offset: 160)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4281, file: !3463, line: 42, baseType: !3482, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4274, file: !4167, line: 862, baseType: !4291, size: 64, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!254, !4165, !4279}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4274, file: !4167, line: 863, baseType: !4295, size: 64, offset: 320)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !4165}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4274, file: !4167, line: 864, baseType: !4299, size: 64, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!254, !4165, !3493}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4274, file: !4167, line: 865, baseType: !4303, size: 64, offset: 448)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!254, !4165}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4274, file: !4167, line: 866, baseType: !4295, size: 64, offset: 512)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4274, file: !4167, line: 867, baseType: !4308, size: 64, offset: 576)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!254, !4165, !254}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4274, file: !4167, line: 868, baseType: !4312, size: 64, offset: 640)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4167, line: 795, size: 384, elements: !4315)
!4315 = !{!4316, !4322, !4326, !4327, !4328, !4329}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4314, file: !4167, line: 797, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!4320, !4165, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4167, line: 772, baseType: !5)
!4321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4167, line: 180, baseType: !5)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4314, file: !4167, line: 801, baseType: !4323, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!4320, !4165}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4314, file: !4167, line: 804, baseType: !4323, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4314, file: !4167, line: 807, baseType: !4295, size: 64, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4314, file: !4167, line: 808, baseType: !4295, size: 64, offset: 256)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4314, file: !4167, line: 811, baseType: !4295, size: 64, offset: 320)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4274, file: !4167, line: 869, baseType: !322, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4274, file: !4167, line: 870, baseType: !3451, size: 1152, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4274, file: !4167, line: 871, baseType: !4333, size: 128, offset: 1920)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4167, line: 759, size: 128, elements: !4334)
!4334 = !{!4335, !4336}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4333, file: !4167, line: 760, baseType: !228)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4333, file: !4167, line: 761, baseType: !214, size: 128)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4166, file: !4167, line: 340, baseType: !412, size: 64, offset: 832)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4166, file: !4167, line: 346, baseType: !4088, size: 128, offset: 896)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4166, file: !4167, line: 348, baseType: !4340, size: 32, offset: 1024)
!4340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4167, line: 155, baseType: !254)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4166, file: !4167, line: 351, baseType: !5, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4166, file: !4167, line: 352, baseType: !171, size: 8, offset: 1064)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4166, file: !4167, line: 353, baseType: !5, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4166, file: !4167, line: 355, baseType: !5, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4166, file: !4167, line: 356, baseType: !5, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4166, file: !4167, line: 357, baseType: !5, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4166, file: !4167, line: 358, baseType: !5, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4166, file: !4167, line: 359, baseType: !5, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4166, file: !4167, line: 360, baseType: !5, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4166, file: !4167, line: 361, baseType: !5, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4166, file: !4167, line: 362, baseType: !5, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4166, file: !4167, line: 364, baseType: !5, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4166, file: !4167, line: 365, baseType: !5, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4166, file: !4167, line: 369, baseType: !5, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4166, file: !4167, line: 370, baseType: !5, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4166, file: !4167, line: 371, baseType: !5, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4166, file: !4167, line: 374, baseType: !5, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4166, file: !4167, line: 376, baseType: !5, size: 32, offset: 1120)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4166, file: !4167, line: 377, baseType: !5, size: 32, offset: 1152)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4166, file: !4167, line: 380, baseType: !4361, size: 64, offset: 1216)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4167, line: 303, flags: DIFlagFwdDecl)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4166, file: !4167, line: 381, baseType: !5, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4166, file: !4167, line: 383, baseType: !254, size: 32, offset: 1312)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4166, file: !4167, line: 385, baseType: !5, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4166, file: !4167, line: 387, baseType: !4321, size: 32, offset: 1376)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4166, file: !4167, line: 388, baseType: !203, size: 5568, offset: 1408)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4166, file: !4167, line: 390, baseType: !254, size: 32, offset: 6976)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4166, file: !4167, line: 396, baseType: !5, size: 32, offset: 7008)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4166, file: !4167, line: 397, baseType: !4371, size: 8704, offset: 7040)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4183, size: 8704, elements: !4372)
!4372 = !{!4373}
!4373 = !DISubrange(count: 17)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4166, file: !4167, line: 399, baseType: !480, size: 8, offset: 15744)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4166, file: !4167, line: 401, baseType: !5, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4166, file: !4167, line: 402, baseType: !5, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4166, file: !4167, line: 403, baseType: !5, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4166, file: !4167, line: 404, baseType: !5, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4166, file: !4167, line: 405, baseType: !5, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4166, file: !4167, line: 407, baseType: !5, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4166, file: !4167, line: 408, baseType: !5, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4166, file: !4167, line: 409, baseType: !5, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4166, file: !4167, line: 410, baseType: !5, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4166, file: !4167, line: 411, baseType: !5, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4166, file: !4167, line: 412, baseType: !5, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4166, file: !4167, line: 413, baseType: !5, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4166, file: !4167, line: 414, baseType: !5, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4166, file: !4167, line: 415, baseType: !5, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4166, file: !4167, line: 416, baseType: !5, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4166, file: !4167, line: 417, baseType: !5, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4166, file: !4167, line: 418, baseType: !5, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4166, file: !4167, line: 419, baseType: !5, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4166, file: !4167, line: 420, baseType: !5, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4166, file: !4167, line: 421, baseType: !5, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4166, file: !4167, line: 422, baseType: !5, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4166, file: !4167, line: 423, baseType: !5, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4166, file: !4167, line: 424, baseType: !5, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4166, file: !4167, line: 425, baseType: !5, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4166, file: !4167, line: 426, baseType: !5, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4166, file: !4167, line: 427, baseType: !5, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4166, file: !4167, line: 435, baseType: !5, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4166, file: !4167, line: 441, baseType: !5, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4166, file: !4167, line: 442, baseType: !5, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4166, file: !4167, line: 443, baseType: !5, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4166, file: !4167, line: 444, baseType: !5, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4166, file: !4167, line: 445, baseType: !5, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4166, file: !4167, line: 446, baseType: !5, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4166, file: !4167, line: 447, baseType: !5, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4166, file: !4167, line: 448, baseType: !5, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4166, file: !4167, line: 449, baseType: !5, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4166, file: !4167, line: 450, baseType: !4412, size: 16, offset: 15792)
!4412 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4167, line: 206, baseType: !178)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4166, file: !4167, line: 451, baseType: !790, size: 32, offset: 15808)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4166, file: !4167, line: 453, baseType: !3796, size: 512, offset: 15840)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4166, file: !4167, line: 454, baseType: !628, size: 64, offset: 16384)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4166, file: !4167, line: 455, baseType: !336, size: 64, offset: 16448)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4166, file: !4167, line: 456, baseType: !254, size: 32, offset: 16512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4166, file: !4167, line: 457, baseType: !4419, size: 1088, offset: 16576)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 1088, elements: !4372)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4166, file: !4167, line: 458, baseType: !4419, size: 1088, offset: 17664)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4166, file: !4167, line: 469, baseType: !322, size: 64, offset: 18752)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4166, file: !4167, line: 471, baseType: !4423, size: 64, offset: 18816)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4167, line: 304, flags: DIFlagFwdDecl)
!4425 = !DIDerivedType(tag: DW_TAG_member, scope: !4166, file: !4167, line: 478, baseType: !4426, size: 64, offset: 18880)
!4426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4166, file: !4167, line: 478, size: 64, elements: !4427)
!4427 = !{!4428, !4431}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4426, file: !4167, line: 479, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4167, line: 305, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4426, file: !4167, line: 480, baseType: !4165, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4166, file: !4167, line: 482, baseType: !176, size: 16, offset: 18944)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4166, file: !4167, line: 483, baseType: !171, size: 8, offset: 18960)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4166, file: !4167, line: 497, baseType: !176, size: 16, offset: 18976)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4166, file: !4167, line: 498, baseType: !2137, size: 64, offset: 19008)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4166, file: !4167, line: 499, baseType: !316, size: 64, offset: 19072)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4166, file: !4167, line: 500, baseType: !270, size: 64, offset: 19136)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4166, file: !4167, line: 502, baseType: !145, size: 64, offset: 19200)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "host_pcmcia", scope: !4162, file: !127, line: 442, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_device", file: !127, line: 18, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "host_sdio", scope: !4162, file: !127, line: 444, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DICompositeType(tag: DW_TAG_structure_type, name: "sdio_func", file: !127, line: 444, flags: DIFlagFwdDecl)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4149, file: !127, line: 448, baseType: !5, size: 32, offset: 320)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "sprom_mutex", scope: !4149, file: !127, line: 452, baseType: !716, size: 192, offset: 384)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "chip_id", scope: !4149, file: !127, line: 456, baseType: !176, size: 16, offset: 576)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "chip_rev", scope: !4149, file: !127, line: 457, baseType: !171, size: 8, offset: 592)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "sprom_offset", scope: !4149, file: !127, line: 458, baseType: !176, size: 16, offset: 608)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "sprom_size", scope: !4149, file: !127, line: 459, baseType: !176, size: 16, offset: 624)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "chip_package", scope: !4149, file: !127, line: 460, baseType: !171, size: 8, offset: 640)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4149, file: !127, line: 463, baseType: !4453, size: 8192, offset: 704)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 8192, elements: !1746)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_devices", scope: !4149, file: !127, line: 464, baseType: !171, size: 8, offset: 8896)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "busnumber", scope: !4149, file: !127, line: 467, baseType: !5, size: 32, offset: 8928)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "chipco", scope: !4149, file: !127, line: 470, baseType: !156, size: 320, offset: 8960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "pcicore", scope: !4149, file: !127, line: 472, baseType: !4458, size: 128, offset: 9280)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_pcicore", file: !4459, line: 84, size: 128, elements: !4460)
!4459 = !DIFile(filename: "./include/linux/ssb/ssb_driver_pci.h", directory: "/home/lizy2001/genbc/linux")
!4460 = !{!4461, !4462, !4463, !4464}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4458, file: !4459, line: 85, baseType: !159, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "setup_done", scope: !4458, file: !4459, line: 86, baseType: !171, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "hostmode", scope: !4458, file: !4459, line: 87, baseType: !171, size: 1, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "cardbusmode", scope: !4458, file: !4459, line: 88, baseType: !171, size: 1, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "mipscore", scope: !4149, file: !127, line: 474, baseType: !4466, offset: 9408)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_mipscore", file: !4467, line: 56, elements: !242)
!4467 = !DIFile(filename: "./include/linux/ssb/ssb_driver_mips.h", directory: "/home/lizy2001/genbc/linux")
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "extif", scope: !4149, file: !127, line: 476, baseType: !4469, offset: 9408)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_extif", file: !4470, line: 195, elements: !242)
!4470 = !DIFile(filename: "./include/linux/ssb/ssb_driver_extif.h", directory: "/home/lizy2001/genbc/linux")
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "boardinfo", scope: !4149, file: !127, line: 484, baseType: !4472, size: 32, offset: 9408)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_boardinfo", file: !127, line: 198, size: 32, elements: !4473)
!4473 = !{!4474, !4475}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4472, file: !127, line: 199, baseType: !176, size: 16)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4472, file: !127, line: 200, baseType: !176, size: 16, offset: 16)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "sprom", scope: !4149, file: !127, line: 486, baseType: !4477, size: 4320, offset: 9440)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_sprom", file: !127, line: 28, size: 4320, elements: !4478)
!4478 = !{!4479, !4480, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4530, !4531, !4532, !4533, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4573, !4580, !4599, !4601, !4602, !4603, !4604, !4605, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4477, file: !127, line: 29, baseType: !171, size: 8)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "il0mac", scope: !4477, file: !127, line: 30, baseType: !4481, size: 48, align: 16, offset: 16)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 48, elements: !1636)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "et0mac", scope: !4477, file: !127, line: 31, baseType: !4481, size: 48, align: 16, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "et1mac", scope: !4477, file: !127, line: 32, baseType: !4481, size: 48, align: 16, offset: 112)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "et2mac", scope: !4477, file: !127, line: 33, baseType: !4481, size: 48, align: 16, offset: 160)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "et0phyaddr", scope: !4477, file: !127, line: 34, baseType: !171, size: 8, offset: 208)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "et1phyaddr", scope: !4477, file: !127, line: 35, baseType: !171, size: 8, offset: 216)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "et2phyaddr", scope: !4477, file: !127, line: 36, baseType: !171, size: 8, offset: 224)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "et0mdcport", scope: !4477, file: !127, line: 37, baseType: !171, size: 8, offset: 232)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "et1mdcport", scope: !4477, file: !127, line: 38, baseType: !171, size: 8, offset: 240)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "et2mdcport", scope: !4477, file: !127, line: 39, baseType: !171, size: 8, offset: 248)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4477, file: !127, line: 40, baseType: !176, size: 16, offset: 256)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "board_rev", scope: !4477, file: !127, line: 41, baseType: !176, size: 16, offset: 272)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "board_num", scope: !4477, file: !127, line: 42, baseType: !176, size: 16, offset: 288)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "board_type", scope: !4477, file: !127, line: 43, baseType: !176, size: 16, offset: 304)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "country_code", scope: !4477, file: !127, line: 44, baseType: !171, size: 8, offset: 320)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "alpha2", scope: !4477, file: !127, line: 45, baseType: !4497, size: 16, offset: 328)
!4497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 16, elements: !1580)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "leddc_on_time", scope: !4477, file: !127, line: 46, baseType: !171, size: 8, offset: 344)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "leddc_off_time", scope: !4477, file: !127, line: 47, baseType: !171, size: 8, offset: 352)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "ant_available_a", scope: !4477, file: !127, line: 48, baseType: !171, size: 8, offset: 360)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ant_available_bg", scope: !4477, file: !127, line: 49, baseType: !171, size: 8, offset: 368)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "pa0b0", scope: !4477, file: !127, line: 50, baseType: !176, size: 16, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "pa0b1", scope: !4477, file: !127, line: 51, baseType: !176, size: 16, offset: 400)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "pa0b2", scope: !4477, file: !127, line: 52, baseType: !176, size: 16, offset: 416)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "pa1b0", scope: !4477, file: !127, line: 53, baseType: !176, size: 16, offset: 432)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "pa1b1", scope: !4477, file: !127, line: 54, baseType: !176, size: 16, offset: 448)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "pa1b2", scope: !4477, file: !127, line: 55, baseType: !176, size: 16, offset: 464)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pa1lob0", scope: !4477, file: !127, line: 56, baseType: !176, size: 16, offset: 480)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "pa1lob1", scope: !4477, file: !127, line: 57, baseType: !176, size: 16, offset: 496)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "pa1lob2", scope: !4477, file: !127, line: 58, baseType: !176, size: 16, offset: 512)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "pa1hib0", scope: !4477, file: !127, line: 59, baseType: !176, size: 16, offset: 528)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "pa1hib1", scope: !4477, file: !127, line: 60, baseType: !176, size: 16, offset: 544)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "pa1hib2", scope: !4477, file: !127, line: 61, baseType: !176, size: 16, offset: 560)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "gpio0", scope: !4477, file: !127, line: 62, baseType: !171, size: 8, offset: 576)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "gpio1", scope: !4477, file: !127, line: 63, baseType: !171, size: 8, offset: 584)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "gpio2", scope: !4477, file: !127, line: 64, baseType: !171, size: 8, offset: 592)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "gpio3", scope: !4477, file: !127, line: 65, baseType: !171, size: 8, offset: 600)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_bg", scope: !4477, file: !127, line: 66, baseType: !171, size: 8, offset: 608)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_al", scope: !4477, file: !127, line: 67, baseType: !171, size: 8, offset: 616)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_a", scope: !4477, file: !127, line: 68, baseType: !171, size: 8, offset: 624)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_ah", scope: !4477, file: !127, line: 69, baseType: !171, size: 8, offset: 632)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_a", scope: !4477, file: !127, line: 70, baseType: !171, size: 8, offset: 640)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_bg", scope: !4477, file: !127, line: 71, baseType: !171, size: 8, offset: 648)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "tri2g", scope: !4477, file: !127, line: 72, baseType: !171, size: 8, offset: 656)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "tri5gl", scope: !4477, file: !127, line: 73, baseType: !171, size: 8, offset: 664)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "tri5g", scope: !4477, file: !127, line: 74, baseType: !171, size: 8, offset: 672)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "tri5gh", scope: !4477, file: !127, line: 75, baseType: !171, size: 8, offset: 680)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "txpid2g", scope: !4477, file: !127, line: 76, baseType: !4529, size: 32, offset: 688)
!4529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 32, elements: !1190)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "txpid5gl", scope: !4477, file: !127, line: 77, baseType: !4529, size: 32, offset: 720)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "txpid5g", scope: !4477, file: !127, line: 78, baseType: !4529, size: 32, offset: 752)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "txpid5gh", scope: !4477, file: !127, line: 79, baseType: !4529, size: 32, offset: 784)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "rxpo2g", scope: !4477, file: !127, line: 80, baseType: !4534, size: 8, offset: 816)
!4534 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !172, line: 16, baseType: !4535)
!4535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !174, line: 20, baseType: !4536)
!4536 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "rxpo5g", scope: !4477, file: !127, line: 81, baseType: !4534, size: 8, offset: 824)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "rssisav2g", scope: !4477, file: !127, line: 82, baseType: !171, size: 8, offset: 832)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "rssismc2g", scope: !4477, file: !127, line: 83, baseType: !171, size: 8, offset: 840)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "rssismf2g", scope: !4477, file: !127, line: 84, baseType: !171, size: 8, offset: 848)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "bxa2g", scope: !4477, file: !127, line: 85, baseType: !171, size: 8, offset: 856)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "rssisav5g", scope: !4477, file: !127, line: 86, baseType: !171, size: 8, offset: 864)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "rssismc5g", scope: !4477, file: !127, line: 87, baseType: !171, size: 8, offset: 872)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "rssismf5g", scope: !4477, file: !127, line: 88, baseType: !171, size: 8, offset: 880)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "bxa5g", scope: !4477, file: !127, line: 89, baseType: !171, size: 8, offset: 888)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "cck2gpo", scope: !4477, file: !127, line: 90, baseType: !176, size: 16, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm2gpo", scope: !4477, file: !127, line: 91, baseType: !187, size: 32, offset: 928)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm5glpo", scope: !4477, file: !127, line: 92, baseType: !187, size: 32, offset: 960)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm5gpo", scope: !4477, file: !127, line: 93, baseType: !187, size: 32, offset: 992)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ofdm5ghpo", scope: !4477, file: !127, line: 94, baseType: !187, size: 32, offset: 1024)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags", scope: !4477, file: !127, line: 95, baseType: !187, size: 32, offset: 1056)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags2", scope: !4477, file: !127, line: 96, baseType: !187, size: 32, offset: 1088)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags3", scope: !4477, file: !127, line: 97, baseType: !187, size: 32, offset: 1120)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags_lo", scope: !4477, file: !127, line: 99, baseType: !176, size: 16, offset: 1152)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags_hi", scope: !4477, file: !127, line: 100, baseType: !176, size: 16, offset: 1168)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags2_lo", scope: !4477, file: !127, line: 101, baseType: !176, size: 16, offset: 1184)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "boardflags2_hi", scope: !4477, file: !127, line: 102, baseType: !176, size: 16, offset: 1200)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "core_pwr_info", scope: !4477, file: !127, line: 104, baseType: !4559, size: 1216, offset: 1216)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4560, size: 1216, elements: !1190)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_sprom_core_pwr_info", file: !127, line: 22, size: 304, elements: !4561)
!4561 = !{!4562, !4563, !4564, !4565, !4566, !4567, !4568, !4570, !4571, !4572}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_2g", scope: !4560, file: !127, line: 23, baseType: !171, size: 8)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "itssi_5g", scope: !4560, file: !127, line: 23, baseType: !171, size: 8, offset: 8)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_2g", scope: !4560, file: !127, line: 24, baseType: !171, size: 8, offset: 16)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_5gl", scope: !4560, file: !127, line: 24, baseType: !171, size: 8, offset: 24)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_5g", scope: !4560, file: !127, line: 24, baseType: !171, size: 8, offset: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "maxpwr_5gh", scope: !4560, file: !127, line: 24, baseType: !171, size: 8, offset: 40)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "pa_2g", scope: !4560, file: !127, line: 25, baseType: !4569, size: 64, offset: 48)
!4569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64, elements: !1190)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "pa_5gl", scope: !4560, file: !127, line: 25, baseType: !4569, size: 64, offset: 112)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "pa_5g", scope: !4560, file: !127, line: 25, baseType: !4569, size: 64, offset: 176)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "pa_5gh", scope: !4560, file: !127, line: 25, baseType: !4569, size: 64, offset: 240)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "antenna_gain", scope: !4477, file: !127, line: 111, baseType: !4574, size: 32, offset: 2432)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !127, line: 109, size: 32, elements: !4575)
!4575 = !{!4576, !4577, !4578, !4579}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "a0", scope: !4574, file: !127, line: 110, baseType: !4534, size: 8)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !4574, file: !127, line: 110, baseType: !4534, size: 8, offset: 8)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !4574, file: !127, line: 110, baseType: !4534, size: 8, offset: 16)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "a3", scope: !4574, file: !127, line: 110, baseType: !4534, size: 8, offset: 24)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "fem", scope: !4477, file: !127, line: 120, baseType: !4581, size: 80, offset: 2464)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4477, file: !127, line: 113, size: 80, elements: !4582)
!4582 = !{!4583, !4591}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "ghz2", scope: !4581, file: !127, line: 116, baseType: !4584, size: 40)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4581, file: !127, line: 114, size: 40, elements: !4585)
!4585 = !{!4586, !4587, !4588, !4589, !4590}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "tssipos", scope: !4584, file: !127, line: 115, baseType: !171, size: 8)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "extpa_gain", scope: !4584, file: !127, line: 115, baseType: !171, size: 8, offset: 8)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "pdet_range", scope: !4584, file: !127, line: 115, baseType: !171, size: 8, offset: 16)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "tr_iso", scope: !4584, file: !127, line: 115, baseType: !171, size: 8, offset: 24)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "antswlut", scope: !4584, file: !127, line: 115, baseType: !171, size: 8, offset: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ghz5", scope: !4581, file: !127, line: 119, baseType: !4592, size: 40, offset: 40)
!4592 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4581, file: !127, line: 117, size: 40, elements: !4593)
!4593 = !{!4594, !4595, !4596, !4597, !4598}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "tssipos", scope: !4592, file: !127, line: 118, baseType: !171, size: 8)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "extpa_gain", scope: !4592, file: !127, line: 118, baseType: !171, size: 8, offset: 8)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "pdet_range", scope: !4592, file: !127, line: 118, baseType: !171, size: 8, offset: 16)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "tr_iso", scope: !4592, file: !127, line: 118, baseType: !171, size: 8, offset: 24)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "antswlut", scope: !4592, file: !127, line: 118, baseType: !171, size: 8, offset: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "mcs2gpo", scope: !4477, file: !127, line: 122, baseType: !4600, size: 128, offset: 2544)
!4600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !1343)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "mcs5gpo", scope: !4477, file: !127, line: 123, baseType: !4600, size: 128, offset: 2672)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "mcs5glpo", scope: !4477, file: !127, line: 124, baseType: !4600, size: 128, offset: 2800)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "mcs5ghpo", scope: !4477, file: !127, line: 125, baseType: !4600, size: 128, offset: 2928)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "opo", scope: !4477, file: !127, line: 126, baseType: !171, size: 8, offset: 3056)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr2ga", scope: !4477, file: !127, line: 128, baseType: !4606, size: 24, offset: 3064)
!4606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 24, elements: !271)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gla", scope: !4477, file: !127, line: 129, baseType: !4606, size: 24, offset: 3088)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gma", scope: !4477, file: !127, line: 130, baseType: !4606, size: 24, offset: 3112)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gha", scope: !4477, file: !127, line: 131, baseType: !4606, size: 24, offset: 3136)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "rxgainerr5gua", scope: !4477, file: !127, line: 132, baseType: !4606, size: 24, offset: 3160)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl2ga", scope: !4477, file: !127, line: 134, baseType: !4606, size: 24, offset: 3184)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gla", scope: !4477, file: !127, line: 135, baseType: !4606, size: 24, offset: 3208)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gma", scope: !4477, file: !127, line: 136, baseType: !4606, size: 24, offset: 3232)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gha", scope: !4477, file: !127, line: 137, baseType: !4606, size: 24, offset: 3256)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "noiselvl5gua", scope: !4477, file: !127, line: 138, baseType: !4606, size: 24, offset: 3280)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "regrev", scope: !4477, file: !127, line: 140, baseType: !171, size: 8, offset: 3304)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "txchain", scope: !4477, file: !127, line: 141, baseType: !171, size: 8, offset: 3312)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "rxchain", scope: !4477, file: !127, line: 142, baseType: !171, size: 8, offset: 3320)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "antswitch", scope: !4477, file: !127, line: 143, baseType: !171, size: 8, offset: 3328)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "cddpo", scope: !4477, file: !127, line: 144, baseType: !176, size: 16, offset: 3344)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "stbcpo", scope: !4477, file: !127, line: 145, baseType: !176, size: 16, offset: 3360)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "bw40po", scope: !4477, file: !127, line: 146, baseType: !176, size: 16, offset: 3376)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "bwduppo", scope: !4477, file: !127, line: 147, baseType: !176, size: 16, offset: 3392)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "tempthresh", scope: !4477, file: !127, line: 149, baseType: !171, size: 8, offset: 3408)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "tempoffset", scope: !4477, file: !127, line: 150, baseType: !171, size: 8, offset: 3416)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "rawtempsense", scope: !4477, file: !127, line: 151, baseType: !176, size: 16, offset: 3424)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "measpower", scope: !4477, file: !127, line: 152, baseType: !171, size: 8, offset: 3440)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "tempsense_slope", scope: !4477, file: !127, line: 153, baseType: !171, size: 8, offset: 3448)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "tempcorrx", scope: !4477, file: !127, line: 154, baseType: !171, size: 8, offset: 3456)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "tempsense_option", scope: !4477, file: !127, line: 155, baseType: !171, size: 8, offset: 3464)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "freqoffset_corr", scope: !4477, file: !127, line: 156, baseType: !171, size: 8, offset: 3472)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "iqcal_swp_dis", scope: !4477, file: !127, line: 157, baseType: !171, size: 8, offset: 3480)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "hw_iqcal_en", scope: !4477, file: !127, line: 158, baseType: !171, size: 8, offset: 3488)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "elna2g", scope: !4477, file: !127, line: 159, baseType: !171, size: 8, offset: 3496)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "elna5g", scope: !4477, file: !127, line: 160, baseType: !171, size: 8, offset: 3504)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "phycal_tempdelta", scope: !4477, file: !127, line: 161, baseType: !171, size: 8, offset: 3512)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "temps_period", scope: !4477, file: !127, line: 162, baseType: !171, size: 8, offset: 3520)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "temps_hysteresis", scope: !4477, file: !127, line: 163, baseType: !171, size: 8, offset: 3528)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "measpower1", scope: !4477, file: !127, line: 164, baseType: !171, size: 8, offset: 3536)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "measpower2", scope: !4477, file: !127, line: 165, baseType: !171, size: 8, offset: 3544)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "pcieingress_war", scope: !4477, file: !127, line: 166, baseType: !171, size: 8, offset: 3552)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "cckbw202gpo", scope: !4477, file: !127, line: 169, baseType: !176, size: 16, offset: 3568)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "cckbw20ul2gpo", scope: !4477, file: !127, line: 170, baseType: !176, size: 16, offset: 3584)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw202gpo", scope: !4477, file: !127, line: 171, baseType: !187, size: 32, offset: 3616)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul2gpo", scope: !4477, file: !127, line: 172, baseType: !187, size: 32, offset: 3648)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw205glpo", scope: !4477, file: !127, line: 173, baseType: !187, size: 32, offset: 3680)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul5glpo", scope: !4477, file: !127, line: 174, baseType: !187, size: 32, offset: 3712)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw205gmpo", scope: !4477, file: !127, line: 175, baseType: !187, size: 32, offset: 3744)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul5gmpo", scope: !4477, file: !127, line: 176, baseType: !187, size: 32, offset: 3776)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw205ghpo", scope: !4477, file: !127, line: 177, baseType: !187, size: 32, offset: 3808)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "legofdmbw20ul5ghpo", scope: !4477, file: !127, line: 178, baseType: !187, size: 32, offset: 3840)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw202gpo", scope: !4477, file: !127, line: 179, baseType: !187, size: 32, offset: 3872)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul2gpo", scope: !4477, file: !127, line: 180, baseType: !187, size: 32, offset: 3904)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw402gpo", scope: !4477, file: !127, line: 181, baseType: !187, size: 32, offset: 3936)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw205glpo", scope: !4477, file: !127, line: 182, baseType: !187, size: 32, offset: 3968)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul5glpo", scope: !4477, file: !127, line: 183, baseType: !187, size: 32, offset: 4000)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw405glpo", scope: !4477, file: !127, line: 184, baseType: !187, size: 32, offset: 4032)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw205gmpo", scope: !4477, file: !127, line: 185, baseType: !187, size: 32, offset: 4064)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul5gmpo", scope: !4477, file: !127, line: 186, baseType: !187, size: 32, offset: 4096)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw405gmpo", scope: !4477, file: !127, line: 187, baseType: !187, size: 32, offset: 4128)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw205ghpo", scope: !4477, file: !127, line: 188, baseType: !187, size: 32, offset: 4160)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw20ul5ghpo", scope: !4477, file: !127, line: 189, baseType: !187, size: 32, offset: 4192)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "mcsbw405ghpo", scope: !4477, file: !127, line: 190, baseType: !187, size: 32, offset: 4224)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "mcs32po", scope: !4477, file: !127, line: 191, baseType: !176, size: 16, offset: 4256)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "legofdm40duppo", scope: !4477, file: !127, line: 192, baseType: !176, size: 16, offset: 4272)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "sar2g", scope: !4477, file: !127, line: 193, baseType: !171, size: 8, offset: 4288)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "sar5g", scope: !4477, file: !127, line: 194, baseType: !171, size: 8, offset: 4296)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "has_cardbus_slot", scope: !4149, file: !127, line: 488, baseType: !480, size: 8, offset: 13760)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4149, file: !127, line: 501, baseType: !214, size: 128, offset: 13824)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "powered_up", scope: !4149, file: !127, line: 503, baseType: !480, size: 8, offset: 13952)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "power_warn_count", scope: !4149, file: !127, line: 504, baseType: !254, size: 32, offset: 13984)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !160, file: !127, line: 276, baseType: !4673, size: 48, align: 16, offset: 256)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_device_id", file: !3463, line: 401, size: 48, align: 16, elements: !4674)
!4674 = !{!4675, !4676, !4677, !4678}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4673, file: !3463, line: 402, baseType: !177, size: 16)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "coreid", scope: !4673, file: !3463, line: 403, baseType: !177, size: 16, offset: 16)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4673, file: !3463, line: 404, baseType: !173, size: 8, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !4673, file: !3463, line: 405, baseType: !173, size: 8, offset: 40)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "core_index", scope: !160, file: !127, line: 278, baseType: !171, size: 8, offset: 304)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !160, file: !127, line: 279, baseType: !5, size: 32, offset: 320)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "drvdata", scope: !160, file: !127, line: 282, baseType: !342, size: 64, offset: 384)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "devtypedata", scope: !160, file: !127, line: 283, baseType: !342, size: 64, offset: 448)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !156, file: !134, line: 589, baseType: !187, size: 32, offset: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !156, file: !134, line: 590, baseType: !187, size: 32, offset: 96)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "fast_pwrup_delay", scope: !156, file: !134, line: 592, baseType: !176, size: 16, offset: 128)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "gpio_lock", scope: !156, file: !134, line: 593, baseType: !228, offset: 144)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !156, file: !134, line: 594, baseType: !4688, size: 64, offset: 160)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssb_chipcommon_pmu", file: !134, line: 582, size: 64, elements: !4689)
!4689 = !{!4690, !4691}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4688, file: !134, line: 583, baseType: !171, size: 8)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "crystalfreq", scope: !4688, file: !134, line: 584, baseType: !187, size: 32, offset: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_ms", scope: !156, file: !134, line: 595, baseType: !187, size: 32, offset: 224)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "max_timer_ms", scope: !156, file: !134, line: 596, baseType: !187, size: 32, offset: 256)
!4694 = !DILocalVariable(name: "cc", arg: 1, scope: !152, file: !1, line: 42, type: !155)
!4695 = !DILocation(line: 42, column: 54, scope: !152)
!4696 = !DILocalVariable(name: "mode", arg: 2, scope: !152, file: !1, line: 43, type: !133)
!4697 = !DILocation(line: 43, column: 27, scope: !152)
!4698 = !DILocalVariable(name: "ccdev", scope: !152, file: !1, line: 45, type: !159)
!4699 = !DILocation(line: 45, column: 21, scope: !152)
!4700 = !DILocation(line: 45, column: 29, scope: !152)
!4701 = !DILocation(line: 45, column: 33, scope: !152)
!4702 = !DILocalVariable(name: "bus", scope: !152, file: !1, line: 46, type: !4148)
!4703 = !DILocation(line: 46, column: 18, scope: !152)
!4704 = !DILocalVariable(name: "tmp", scope: !152, file: !1, line: 47, type: !187)
!4705 = !DILocation(line: 47, column: 6, scope: !152)
!4706 = !DILocation(line: 49, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !152, file: !1, line: 49, column: 6)
!4708 = !DILocation(line: 49, column: 6, scope: !152)
!4709 = !DILocation(line: 50, column: 3, scope: !4707)
!4710 = !DILocation(line: 51, column: 8, scope: !152)
!4711 = !DILocation(line: 51, column: 15, scope: !152)
!4712 = !DILocation(line: 51, column: 6, scope: !152)
!4713 = !DILocation(line: 54, column: 6, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !152, file: !1, line: 54, column: 6)
!4715 = !DILocation(line: 54, column: 13, scope: !4714)
!4716 = !DILocation(line: 54, column: 16, scope: !4714)
!4717 = !DILocation(line: 54, column: 25, scope: !4714)
!4718 = !DILocation(line: 54, column: 31, scope: !4714)
!4719 = !DILocation(line: 54, column: 34, scope: !4714)
!4720 = !DILocation(line: 54, column: 39, scope: !4714)
!4721 = !DILocation(line: 54, column: 6, scope: !152)
!4722 = !DILocation(line: 55, column: 8, scope: !4714)
!4723 = !DILocation(line: 55, column: 3, scope: !4714)
!4724 = !DILocation(line: 57, column: 6, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !152, file: !1, line: 57, column: 6)
!4726 = !DILocation(line: 57, column: 10, scope: !4725)
!4727 = !DILocation(line: 57, column: 23, scope: !4725)
!4728 = !DILocation(line: 57, column: 6, scope: !152)
!4729 = !DILocation(line: 58, column: 3, scope: !4725)
!4730 = !DILocalVariable(name: "__ret_warn_on", scope: !4731, file: !1, line: 59, type: !254)
!4731 = distinct !DILexicalBlock(scope: !152, file: !1, line: 59, column: 2)
!4732 = !DILocation(line: 59, column: 2, scope: !4731)
!4733 = !DILocation(line: 59, column: 2, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4731, file: !1, line: 59, column: 2)
!4735 = !DILocation(line: 59, column: 2, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4734, file: !1, line: 59, column: 2)
!4737 = !DILocation(line: 59, column: 2, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4736, file: !1, line: 59, column: 2)
!4739 = !DILocation(line: 59, column: 2, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4736, file: !1, line: 59, column: 2)
!4741 = !{i32 -2141416415, i32 -2141416386, i32 -2141416340, i32 -2141416282, i32 -2141416228, i32 -2141416174, i32 -2141416119, i32 -2141416088}
!4742 = !DILocation(line: 59, column: 2, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4736, file: !1, line: 59, column: 2)
!4744 = !{i32 -2141415676, i32 -2141415669, i32 -2141415617, i32 -2141415586, i32 -2141415556}
!4745 = !DILocation(line: 59, column: 2, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4736, file: !1, line: 59, column: 2)
!4747 = !DILocation(line: 62, column: 6, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !152, file: !1, line: 62, column: 6)
!4749 = !DILocation(line: 62, column: 13, scope: !4748)
!4750 = !DILocation(line: 62, column: 16, scope: !4748)
!4751 = !DILocation(line: 62, column: 25, scope: !4748)
!4752 = !DILocation(line: 62, column: 6, scope: !152)
!4753 = !DILocation(line: 63, column: 3, scope: !4748)
!4754 = !DILocation(line: 66, column: 6, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !152, file: !1, line: 66, column: 6)
!4756 = !DILocation(line: 66, column: 13, scope: !4755)
!4757 = !DILocation(line: 66, column: 16, scope: !4755)
!4758 = !DILocation(line: 66, column: 25, scope: !4755)
!4759 = !DILocation(line: 66, column: 6, scope: !152)
!4760 = !DILocation(line: 67, column: 3, scope: !4755)
!4761 = !DILocation(line: 69, column: 8, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !152, file: !1, line: 69, column: 6)
!4763 = !DILocation(line: 69, column: 12, scope: !4762)
!4764 = !DILocation(line: 69, column: 25, scope: !4762)
!4765 = !DILocation(line: 69, column: 6, scope: !152)
!4766 = !DILocation(line: 70, column: 3, scope: !4762)
!4767 = !DILocation(line: 72, column: 10, scope: !152)
!4768 = !DILocation(line: 72, column: 2, scope: !152)
!4769 = !DILocation(line: 74, column: 9, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !152, file: !1, line: 72, column: 16)
!4771 = !DILocation(line: 74, column: 7, scope: !4770)
!4772 = !DILocation(line: 75, column: 7, scope: !4770)
!4773 = !DILocation(line: 76, column: 3, scope: !4770)
!4774 = !DILocation(line: 77, column: 3, scope: !4770)
!4775 = !DILocation(line: 79, column: 7, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 79, column: 7)
!4777 = !DILocation(line: 79, column: 14, scope: !4776)
!4778 = !DILocation(line: 79, column: 17, scope: !4776)
!4779 = !DILocation(line: 79, column: 26, scope: !4776)
!4780 = !DILocation(line: 79, column: 7, scope: !4770)
!4781 = !DILocation(line: 80, column: 17, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4776, file: !1, line: 79, column: 32)
!4783 = !DILocation(line: 80, column: 4, scope: !4782)
!4784 = !DILocation(line: 81, column: 10, scope: !4782)
!4785 = !DILocation(line: 81, column: 8, scope: !4782)
!4786 = !DILocation(line: 82, column: 8, scope: !4782)
!4787 = !DILocation(line: 83, column: 8, scope: !4782)
!4788 = !DILocation(line: 84, column: 4, scope: !4782)
!4789 = !DILocation(line: 85, column: 3, scope: !4782)
!4790 = !DILocation(line: 86, column: 4, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4776, file: !1, line: 85, column: 10)
!4792 = !DILocation(line: 91, column: 3, scope: !4770)
!4793 = !DILocation(line: 93, column: 7, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 93, column: 7)
!4795 = !DILocation(line: 93, column: 14, scope: !4794)
!4796 = !DILocation(line: 93, column: 17, scope: !4794)
!4797 = !DILocation(line: 93, column: 26, scope: !4794)
!4798 = !DILocation(line: 93, column: 7, scope: !4770)
!4799 = !DILocation(line: 94, column: 10, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4794, file: !1, line: 93, column: 32)
!4801 = !DILocation(line: 94, column: 8, scope: !4800)
!4802 = !DILocation(line: 95, column: 8, scope: !4800)
!4803 = !DILocation(line: 96, column: 8, scope: !4800)
!4804 = !DILocation(line: 97, column: 8, scope: !4800)
!4805 = !DILocation(line: 98, column: 9, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 98, column: 8)
!4807 = !DILocation(line: 98, column: 13, scope: !4806)
!4808 = !DILocation(line: 98, column: 42, scope: !4806)
!4809 = !DILocation(line: 98, column: 8, scope: !4800)
!4810 = !DILocation(line: 100, column: 9, scope: !4806)
!4811 = !DILocation(line: 100, column: 5, scope: !4806)
!4812 = !DILocation(line: 101, column: 4, scope: !4800)
!4813 = !DILocation(line: 105, column: 8, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4800, file: !1, line: 105, column: 8)
!4815 = !DILocation(line: 105, column: 12, scope: !4814)
!4816 = !DILocation(line: 105, column: 8, scope: !4800)
!4817 = !DILocation(line: 106, column: 18, scope: !4814)
!4818 = !DILocation(line: 106, column: 5, scope: !4814)
!4819 = !DILocation(line: 107, column: 3, scope: !4800)
!4820 = !DILocation(line: 108, column: 4, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4794, file: !1, line: 107, column: 10)
!4822 = !DILocation(line: 112, column: 3, scope: !4770)
!4823 = !DILocalVariable(name: "__ret_warn_on", scope: !4824, file: !1, line: 114, type: !254)
!4824 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 114, column: 3)
!4825 = !DILocation(line: 114, column: 3, scope: !4824)
!4826 = !DILocation(line: 114, column: 3, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4824, file: !1, line: 114, column: 3)
!4828 = !DILocation(line: 114, column: 3, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4827, file: !1, line: 114, column: 3)
!4830 = !DILocation(line: 114, column: 3, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4829, file: !1, line: 114, column: 3)
!4832 = !DILocation(line: 114, column: 3, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !1, line: 114, column: 3)
!4834 = !{i32 -2141414211, i32 -2141414182, i32 -2141414136, i32 -2141414078, i32 -2141414024, i32 -2141413970, i32 -2141413915, i32 -2141413884}
!4835 = !DILocation(line: 114, column: 3, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4829, file: !1, line: 114, column: 3)
!4837 = !{i32 -2141413471, i32 -2141413464, i32 -2141413412, i32 -2141413381, i32 -2141413351}
!4838 = !DILocation(line: 114, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4829, file: !1, line: 114, column: 3)
!4840 = !DILocation(line: 115, column: 2, scope: !4770)
!4841 = !DILocation(line: 116, column: 1, scope: !152)
!4842 = distinct !DISubprogram(name: "ssb_read32", scope: !127, file: !127, line: 583, type: !185, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!4843 = !DILocalVariable(name: "dev", arg: 1, scope: !4842, file: !127, line: 583, type: !159)
!4844 = !DILocation(line: 583, column: 49, scope: !4842)
!4845 = !DILocalVariable(name: "offset", arg: 2, scope: !4842, file: !127, line: 583, type: !176)
!4846 = !DILocation(line: 583, column: 58, scope: !4842)
!4847 = !DILocation(line: 585, column: 9, scope: !4842)
!4848 = !DILocation(line: 585, column: 14, scope: !4842)
!4849 = !DILocation(line: 585, column: 19, scope: !4842)
!4850 = !DILocation(line: 585, column: 26, scope: !4842)
!4851 = !DILocation(line: 585, column: 31, scope: !4842)
!4852 = !DILocation(line: 585, column: 2, scope: !4842)
!4853 = distinct !DISubprogram(name: "ssb_write32", scope: !127, file: !127, line: 595, type: !199, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!4854 = !DILocalVariable(name: "dev", arg: 1, scope: !4853, file: !127, line: 595, type: !159)
!4855 = !DILocation(line: 595, column: 51, scope: !4853)
!4856 = !DILocalVariable(name: "offset", arg: 2, scope: !4853, file: !127, line: 595, type: !176)
!4857 = !DILocation(line: 595, column: 60, scope: !4853)
!4858 = !DILocalVariable(name: "value", arg: 3, scope: !4853, file: !127, line: 595, type: !187)
!4859 = !DILocation(line: 595, column: 72, scope: !4853)
!4860 = !DILocation(line: 597, column: 2, scope: !4853)
!4861 = !DILocation(line: 597, column: 7, scope: !4853)
!4862 = !DILocation(line: 597, column: 12, scope: !4853)
!4863 = !DILocation(line: 597, column: 20, scope: !4853)
!4864 = !DILocation(line: 597, column: 25, scope: !4853)
!4865 = !DILocation(line: 597, column: 33, scope: !4853)
!4866 = !DILocation(line: 598, column: 1, scope: !4853)
!4867 = distinct !DISubprogram(name: "ssb_chipco_watchdog_timer_set_wdt", scope: !1, file: !1, line: 311, type: !4868, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!187, !4870, !187}
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcm47xx_wdt", file: !4872, line: 10, size: 1984, elements: !4873)
!4872 = !DIFile(filename: "./include/linux/bcm47xx_wdt.h", directory: "/home/lizy2001/genbc/linux")
!4873 = !{!4874, !4876, !4877, !4878, !4879, !4957, !4958}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set", scope: !4871, file: !4872, line: 11, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "timer_set_ms", scope: !4871, file: !4872, line: 12, baseType: !4875, size: 64, offset: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "max_timer_ms", scope: !4871, file: !4872, line: 13, baseType: !187, size: 32, offset: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4871, file: !4872, line: 15, baseType: !342, size: 64, offset: 192)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "wdd", scope: !4871, file: !4872, line: 17, baseType: !4880, size: 1344, offset: 256)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_device", file: !4881, line: 94, size: 1344, elements: !4882)
!4881 = !DIFile(filename: "./include/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!4882 = !{!4883, !4884, !4885, !4886, !4896, !4927, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4950, !4951, !4952, !4955, !4956}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4880, file: !4881, line: 95, baseType: !254, size: 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4880, file: !4881, line: 96, baseType: !202, size: 64, offset: 64)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4880, file: !4881, line: 97, baseType: !322, size: 64, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4880, file: !4881, line: 98, baseType: !4887, size: 64, offset: 192)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4889)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_info", file: !4890, line: 18, size: 320, elements: !4891)
!4890 = !DIFile(filename: "./include/uapi/linux/watchdog.h", directory: "/home/lizy2001/genbc/linux")
!4891 = !{!4892, !4893, !4894}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4889, file: !4890, line: 19, baseType: !188, size: 32)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_version", scope: !4889, file: !4890, line: 20, baseType: !188, size: 32, offset: 32)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "identity", scope: !4889, file: !4890, line: 21, baseType: !4895, size: 256, offset: 64)
!4895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 256, elements: !2242)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4880, file: !4881, line: 99, baseType: !4897, size: 64, offset: 256)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4899)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_ops", file: !4881, line: 43, size: 640, elements: !4900)
!4900 = !{!4901, !4902, !4907, !4908, !4909, !4913, !4917, !4918, !4919, !4923}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4899, file: !4881, line: 44, baseType: !623, size: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4899, file: !4881, line: 46, baseType: !4903, size: 64, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!254, !4906}
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4899, file: !4881, line: 48, baseType: !4903, size: 64, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !4899, file: !4881, line: 49, baseType: !4903, size: 64, offset: 192)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4899, file: !4881, line: 50, baseType: !4910, size: 64, offset: 256)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!5, !4906}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "set_timeout", scope: !4899, file: !4881, line: 51, baseType: !4914, size: 64, offset: 320)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{!254, !4906, !5}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "set_pretimeout", scope: !4899, file: !4881, line: 52, baseType: !4914, size: 64, offset: 384)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeleft", scope: !4899, file: !4881, line: 53, baseType: !4910, size: 64, offset: 448)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "restart", scope: !4899, file: !4881, line: 54, baseType: !4920, size: 64, offset: 512)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!254, !4906, !145, !342}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4899, file: !4881, line: 55, baseType: !4924, size: 64, offset: 576)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!305, !4906, !5, !145}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "gov", scope: !4880, file: !4881, line: 100, baseType: !4928, size: 64, offset: 320)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4930)
!4930 = !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_governor", file: !4881, line: 23, flags: DIFlagFwdDecl)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "bootstatus", scope: !4880, file: !4881, line: 101, baseType: !5, size: 32, offset: 384)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4880, file: !4881, line: 102, baseType: !5, size: 32, offset: 416)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "pretimeout", scope: !4880, file: !4881, line: 103, baseType: !5, size: 32, offset: 448)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "min_timeout", scope: !4880, file: !4881, line: 104, baseType: !5, size: 32, offset: 480)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "max_timeout", scope: !4880, file: !4881, line: 105, baseType: !5, size: 32, offset: 512)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "min_hw_heartbeat_ms", scope: !4880, file: !4881, line: 106, baseType: !5, size: 32, offset: 544)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_heartbeat_ms", scope: !4880, file: !4881, line: 107, baseType: !5, size: 32, offset: 576)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_nb", scope: !4880, file: !4881, line: 108, baseType: !4939, size: 192, offset: 640)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4940, line: 54, size: 192, elements: !4941)
!4940 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4941 = !{!4942, !4948, !4949}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4939, file: !4940, line: 55, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4940, line: 51, baseType: !4944)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!254, !4947, !145, !342}
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4939, file: !4940, line: 56, baseType: !4947, size: 64, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4939, file: !4940, line: 57, baseType: !254, size: 32, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "restart_nb", scope: !4880, file: !4881, line: 109, baseType: !4939, size: 192, offset: 832)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4880, file: !4881, line: 110, baseType: !342, size: 64, offset: 1024)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "wd_data", scope: !4880, file: !4881, line: 111, baseType: !4953, size: 64, offset: 1088)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DICompositeType(tag: DW_TAG_structure_type, name: "watchdog_core_data", file: !4881, line: 22, flags: DIFlagFwdDecl)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4880, file: !4881, line: 112, baseType: !145, size: 64, offset: 1152)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "deferred", scope: !4880, file: !4881, line: 119, baseType: !214, size: 128, offset: 1216)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "soft_timer", scope: !4871, file: !4872, line: 19, baseType: !3570, size: 320, offset: 1600)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "soft_ticks", scope: !4871, file: !4872, line: 20, baseType: !790, size: 32, offset: 1920)
!4959 = !DILocalVariable(name: "wdt", arg: 1, scope: !4867, file: !1, line: 311, type: !4870)
!4960 = !DILocation(line: 311, column: 59, scope: !4867)
!4961 = !DILocalVariable(name: "ticks", arg: 2, scope: !4867, file: !1, line: 311, type: !187)
!4962 = !DILocation(line: 311, column: 68, scope: !4867)
!4963 = !DILocalVariable(name: "cc", scope: !4867, file: !1, line: 313, type: !155)
!4964 = !DILocation(line: 313, column: 25, scope: !4867)
!4965 = !DILocation(line: 313, column: 54, scope: !4867)
!4966 = !DILocation(line: 313, column: 30, scope: !4867)
!4967 = !DILocation(line: 315, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4867, file: !1, line: 315, column: 6)
!4969 = !DILocation(line: 315, column: 10, scope: !4968)
!4970 = !DILocation(line: 315, column: 15, scope: !4968)
!4971 = !DILocation(line: 315, column: 20, scope: !4968)
!4972 = !DILocation(line: 315, column: 28, scope: !4968)
!4973 = !DILocation(line: 315, column: 6, scope: !4867)
!4974 = !DILocation(line: 316, column: 3, scope: !4968)
!4975 = !DILocation(line: 318, column: 39, scope: !4867)
!4976 = !DILocation(line: 318, column: 43, scope: !4867)
!4977 = !DILocation(line: 318, column: 9, scope: !4867)
!4978 = !DILocation(line: 318, column: 2, scope: !4867)
!4979 = !DILocation(line: 319, column: 1, scope: !4867)
!4980 = distinct !DISubprogram(name: "bcm47xx_wdt_get_drvdata", scope: !4872, file: !4872, line: 23, type: !4981, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!342, !4870}
!4983 = !DILocalVariable(name: "wdt", arg: 1, scope: !4980, file: !4872, line: 23, type: !4870)
!4984 = !DILocation(line: 23, column: 65, scope: !4980)
!4985 = !DILocation(line: 25, column: 9, scope: !4980)
!4986 = !DILocation(line: 25, column: 14, scope: !4980)
!4987 = !DILocation(line: 25, column: 2, scope: !4980)
!4988 = distinct !DISubprogram(name: "ssb_chipco_watchdog_timer_set", scope: !1, file: !1, line: 471, type: !4989, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!187, !155, !187}
!4991 = !DILocalVariable(name: "cc", arg: 1, scope: !4988, file: !1, line: 471, type: !155)
!4992 = !DILocation(line: 471, column: 58, scope: !4988)
!4993 = !DILocalVariable(name: "ticks", arg: 2, scope: !4988, file: !1, line: 471, type: !187)
!4994 = !DILocation(line: 471, column: 66, scope: !4988)
!4995 = !DILocalVariable(name: "maxt", scope: !4988, file: !1, line: 473, type: !187)
!4996 = !DILocation(line: 473, column: 6, scope: !4988)
!4997 = !DILocalVariable(name: "clkmode", scope: !4988, file: !1, line: 474, type: !133)
!4998 = !DILocation(line: 474, column: 19, scope: !4988)
!4999 = !DILocation(line: 476, column: 43, scope: !4988)
!5000 = !DILocation(line: 476, column: 9, scope: !4988)
!5001 = !DILocation(line: 476, column: 7, scope: !4988)
!5002 = !DILocation(line: 477, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4988, file: !1, line: 477, column: 6)
!5004 = !DILocation(line: 477, column: 10, scope: !5003)
!5005 = !DILocation(line: 477, column: 23, scope: !5003)
!5006 = !DILocation(line: 477, column: 6, scope: !4988)
!5007 = !DILocation(line: 478, column: 7, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5009, file: !1, line: 478, column: 7)
!5009 = distinct !DILexicalBlock(scope: !5003, file: !1, line: 477, column: 45)
!5010 = !DILocation(line: 478, column: 13, scope: !5008)
!5011 = !DILocation(line: 478, column: 7, scope: !5009)
!5012 = !DILocation(line: 479, column: 10, scope: !5008)
!5013 = !DILocation(line: 479, column: 4, scope: !5008)
!5014 = !DILocation(line: 480, column: 12, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5008, file: !1, line: 480, column: 12)
!5016 = !DILocation(line: 480, column: 20, scope: !5015)
!5017 = !DILocation(line: 480, column: 18, scope: !5015)
!5018 = !DILocation(line: 480, column: 12, scope: !5008)
!5019 = !DILocation(line: 481, column: 12, scope: !5015)
!5020 = !DILocation(line: 481, column: 10, scope: !5015)
!5021 = !DILocation(line: 481, column: 4, scope: !5015)
!5022 = !DILocation(line: 482, column: 3, scope: !5009)
!5023 = !DILocation(line: 483, column: 2, scope: !5009)
!5024 = !DILocation(line: 484, column: 13, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5003, file: !1, line: 483, column: 9)
!5026 = !DILocation(line: 484, column: 11, scope: !5025)
!5027 = !DILocation(line: 485, column: 28, scope: !5025)
!5028 = !DILocation(line: 485, column: 32, scope: !5025)
!5029 = !DILocation(line: 485, column: 3, scope: !5025)
!5030 = !DILocation(line: 486, column: 7, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5025, file: !1, line: 486, column: 7)
!5032 = !DILocation(line: 486, column: 15, scope: !5031)
!5033 = !DILocation(line: 486, column: 13, scope: !5031)
!5034 = !DILocation(line: 486, column: 7, scope: !5025)
!5035 = !DILocation(line: 487, column: 12, scope: !5031)
!5036 = !DILocation(line: 487, column: 10, scope: !5031)
!5037 = !DILocation(line: 487, column: 4, scope: !5031)
!5038 = !DILocation(line: 489, column: 3, scope: !5025)
!5039 = !DILocation(line: 491, column: 9, scope: !4988)
!5040 = !DILocation(line: 491, column: 2, scope: !4988)
!5041 = distinct !DISubprogram(name: "ssb_chipco_watchdog_timer_set_ms", scope: !1, file: !1, line: 321, type: !4868, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5042 = !DILocalVariable(name: "wdt", arg: 1, scope: !5041, file: !1, line: 321, type: !4870)
!5043 = !DILocation(line: 321, column: 58, scope: !5041)
!5044 = !DILocalVariable(name: "ms", arg: 2, scope: !5041, file: !1, line: 321, type: !187)
!5045 = !DILocation(line: 321, column: 67, scope: !5041)
!5046 = !DILocalVariable(name: "cc", scope: !5041, file: !1, line: 323, type: !155)
!5047 = !DILocation(line: 323, column: 25, scope: !5041)
!5048 = !DILocation(line: 323, column: 54, scope: !5041)
!5049 = !DILocation(line: 323, column: 30, scope: !5041)
!5050 = !DILocalVariable(name: "ticks", scope: !5041, file: !1, line: 324, type: !187)
!5051 = !DILocation(line: 324, column: 6, scope: !5041)
!5052 = !DILocation(line: 326, column: 6, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5041, file: !1, line: 326, column: 6)
!5054 = !DILocation(line: 326, column: 10, scope: !5053)
!5055 = !DILocation(line: 326, column: 15, scope: !5053)
!5056 = !DILocation(line: 326, column: 20, scope: !5053)
!5057 = !DILocation(line: 326, column: 28, scope: !5053)
!5058 = !DILocation(line: 326, column: 6, scope: !5041)
!5059 = !DILocation(line: 327, column: 3, scope: !5053)
!5060 = !DILocation(line: 329, column: 40, scope: !5041)
!5061 = !DILocation(line: 329, column: 44, scope: !5041)
!5062 = !DILocation(line: 329, column: 48, scope: !5041)
!5063 = !DILocation(line: 329, column: 63, scope: !5041)
!5064 = !DILocation(line: 329, column: 61, scope: !5041)
!5065 = !DILocation(line: 329, column: 10, scope: !5041)
!5066 = !DILocation(line: 329, column: 8, scope: !5041)
!5067 = !DILocation(line: 330, column: 9, scope: !5041)
!5068 = !DILocation(line: 330, column: 17, scope: !5041)
!5069 = !DILocation(line: 330, column: 21, scope: !5041)
!5070 = !DILocation(line: 330, column: 15, scope: !5041)
!5071 = !DILocation(line: 330, column: 2, scope: !5041)
!5072 = !DILocation(line: 331, column: 1, scope: !5041)
!5073 = distinct !DISubprogram(name: "ssb_chipcommon_init", scope: !1, file: !1, line: 348, type: !5074, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{null, !155}
!5076 = !DILocalVariable(name: "lock", arg: 1, scope: !5077, file: !5078, line: 327, type: !1099)
!5077 = distinct !DISubprogram(name: "spinlock_check", scope: !5078, file: !5078, line: 327, type: !5079, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5078 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!5081, !1099}
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!5082 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5083)
!5083 = distinct !DILocation(line: 353, column: 2, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 353, column: 2)
!5085 = !DILocalVariable(name: "cc", arg: 1, scope: !5073, file: !1, line: 348, type: !155)
!5086 = !DILocation(line: 348, column: 49, scope: !5073)
!5087 = !DILocation(line: 350, column: 7, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 350, column: 6)
!5089 = !DILocation(line: 350, column: 11, scope: !5088)
!5090 = !DILocation(line: 350, column: 6, scope: !5073)
!5091 = !DILocation(line: 351, column: 3, scope: !5088)
!5092 = !DILocation(line: 353, column: 2, scope: !5073)
!5093 = !DILocation(line: 353, column: 2, scope: !5084)
!5094 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5083)
!5095 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5083)
!5096 = !DILocation(line: 355, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 355, column: 6)
!5098 = !DILocation(line: 355, column: 10, scope: !5097)
!5099 = !DILocation(line: 355, column: 15, scope: !5097)
!5100 = !DILocation(line: 355, column: 18, scope: !5097)
!5101 = !DILocation(line: 355, column: 27, scope: !5097)
!5102 = !DILocation(line: 355, column: 6, scope: !5073)
!5103 = !DILocation(line: 356, column: 16, scope: !5097)
!5104 = !DILocation(line: 356, column: 3, scope: !5097)
!5105 = !DILocation(line: 356, column: 7, scope: !5097)
!5106 = !DILocation(line: 356, column: 14, scope: !5097)
!5107 = !DILocation(line: 359, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 359, column: 6)
!5109 = !DILocation(line: 359, column: 10, scope: !5108)
!5110 = !DILocation(line: 359, column: 15, scope: !5108)
!5111 = !DILocation(line: 359, column: 18, scope: !5108)
!5112 = !DILocation(line: 359, column: 27, scope: !5108)
!5113 = !DILocation(line: 359, column: 6, scope: !5073)
!5114 = !DILocation(line: 360, column: 3, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5108, file: !1, line: 359, column: 34)
!5116 = !DILocation(line: 361, column: 3, scope: !5115)
!5117 = !DILocation(line: 362, column: 2, scope: !5115)
!5118 = !DILocation(line: 364, column: 15, scope: !5073)
!5119 = !DILocation(line: 364, column: 2, scope: !5073)
!5120 = !DILocation(line: 365, column: 27, scope: !5073)
!5121 = !DILocation(line: 365, column: 2, scope: !5073)
!5122 = !DILocation(line: 366, column: 27, scope: !5073)
!5123 = !DILocation(line: 366, column: 2, scope: !5073)
!5124 = !DILocation(line: 367, column: 26, scope: !5073)
!5125 = !DILocation(line: 367, column: 2, scope: !5073)
!5126 = !DILocation(line: 369, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5073, file: !1, line: 369, column: 6)
!5128 = !DILocation(line: 369, column: 10, scope: !5127)
!5129 = !DILocation(line: 369, column: 15, scope: !5127)
!5130 = !DILocation(line: 369, column: 20, scope: !5127)
!5131 = !DILocation(line: 369, column: 28, scope: !5127)
!5132 = !DILocation(line: 369, column: 6, scope: !5073)
!5133 = !DILocation(line: 370, column: 55, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5127, file: !1, line: 369, column: 48)
!5135 = !DILocation(line: 370, column: 22, scope: !5134)
!5136 = !DILocation(line: 370, column: 3, scope: !5134)
!5137 = !DILocation(line: 370, column: 7, scope: !5134)
!5138 = !DILocation(line: 370, column: 20, scope: !5134)
!5139 = !DILocation(line: 371, column: 56, scope: !5134)
!5140 = !DILocation(line: 371, column: 22, scope: !5134)
!5141 = !DILocation(line: 371, column: 62, scope: !5134)
!5142 = !DILocation(line: 371, column: 66, scope: !5134)
!5143 = !DILocation(line: 371, column: 60, scope: !5134)
!5144 = !DILocation(line: 371, column: 3, scope: !5134)
!5145 = !DILocation(line: 371, column: 7, scope: !5134)
!5146 = !DILocation(line: 371, column: 20, scope: !5134)
!5147 = !DILocation(line: 372, column: 2, scope: !5134)
!5148 = !DILocation(line: 373, column: 1, scope: !5073)
!5149 = distinct !DISubprogram(name: "chipco_powercontrol_init", scope: !1, file: !1, line: 211, type: !5074, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5150 = !DILocalVariable(name: "cc", arg: 1, scope: !5149, file: !1, line: 211, type: !155)
!5151 = !DILocation(line: 211, column: 61, scope: !5149)
!5152 = !DILocalVariable(name: "bus", scope: !5149, file: !1, line: 213, type: !4148)
!5153 = !DILocation(line: 213, column: 18, scope: !5149)
!5154 = !DILocation(line: 213, column: 24, scope: !5149)
!5155 = !DILocation(line: 213, column: 28, scope: !5149)
!5156 = !DILocation(line: 213, column: 33, scope: !5149)
!5157 = !DILocation(line: 215, column: 6, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5149, file: !1, line: 215, column: 6)
!5159 = !DILocation(line: 215, column: 11, scope: !5158)
!5160 = !DILocation(line: 215, column: 19, scope: !5158)
!5161 = !DILocation(line: 215, column: 6, scope: !5149)
!5162 = !DILocation(line: 216, column: 7, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !1, line: 216, column: 7)
!5164 = distinct !DILexicalBlock(scope: !5158, file: !1, line: 215, column: 30)
!5165 = !DILocation(line: 216, column: 12, scope: !5163)
!5166 = !DILocation(line: 216, column: 21, scope: !5163)
!5167 = !DILocation(line: 216, column: 7, scope: !5164)
!5168 = !DILocation(line: 217, column: 4, scope: !5163)
!5169 = !DILocation(line: 218, column: 12, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5163, file: !1, line: 218, column: 12)
!5171 = !DILocation(line: 218, column: 17, scope: !5170)
!5172 = !DILocation(line: 218, column: 26, scope: !5170)
!5173 = !DILocation(line: 218, column: 12, scope: !5163)
!5174 = !DILocation(line: 219, column: 4, scope: !5170)
!5175 = !DILocation(line: 220, column: 2, scope: !5164)
!5176 = !DILocation(line: 222, column: 8, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5149, file: !1, line: 222, column: 6)
!5178 = !DILocation(line: 222, column: 12, scope: !5177)
!5179 = !DILocation(line: 222, column: 25, scope: !5177)
!5180 = !DILocation(line: 222, column: 6, scope: !5149)
!5181 = !DILocation(line: 223, column: 3, scope: !5177)
!5182 = !DILocation(line: 225, column: 6, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5149, file: !1, line: 225, column: 6)
!5184 = !DILocation(line: 225, column: 10, scope: !5183)
!5185 = !DILocation(line: 225, column: 15, scope: !5183)
!5186 = !DILocation(line: 225, column: 18, scope: !5183)
!5187 = !DILocation(line: 225, column: 27, scope: !5183)
!5188 = !DILocation(line: 225, column: 6, scope: !5149)
!5189 = !DILocation(line: 227, column: 3, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5183, file: !1, line: 225, column: 34)
!5191 = !DILocation(line: 230, column: 2, scope: !5190)
!5192 = !DILocalVariable(name: "maxfreq", scope: !5193, file: !1, line: 231, type: !254)
!5193 = distinct !DILexicalBlock(scope: !5183, file: !1, line: 230, column: 9)
!5194 = !DILocation(line: 231, column: 7, scope: !5193)
!5195 = !DILocation(line: 233, column: 40, scope: !5193)
!5196 = !DILocation(line: 233, column: 13, scope: !5193)
!5197 = !DILocation(line: 233, column: 11, scope: !5193)
!5198 = !DILocation(line: 234, column: 3, scope: !5193)
!5199 = !DILocation(line: 236, column: 3, scope: !5193)
!5200 = !DILocation(line: 239, column: 1, scope: !5149)
!5201 = distinct !DISubprogram(name: "calc_fast_powerup_delay", scope: !1, file: !1, line: 259, type: !5074, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5202 = !DILocalVariable(name: "cc", arg: 1, scope: !5201, file: !1, line: 259, type: !155)
!5203 = !DILocation(line: 259, column: 60, scope: !5201)
!5204 = !DILocalVariable(name: "bus", scope: !5201, file: !1, line: 261, type: !4148)
!5205 = !DILocation(line: 261, column: 18, scope: !5201)
!5206 = !DILocation(line: 261, column: 24, scope: !5201)
!5207 = !DILocation(line: 261, column: 28, scope: !5201)
!5208 = !DILocation(line: 261, column: 33, scope: !5201)
!5209 = !DILocalVariable(name: "minfreq", scope: !5201, file: !1, line: 262, type: !254)
!5210 = !DILocation(line: 262, column: 6, scope: !5201)
!5211 = !DILocalVariable(name: "tmp", scope: !5201, file: !1, line: 263, type: !5)
!5212 = !DILocation(line: 263, column: 15, scope: !5201)
!5213 = !DILocalVariable(name: "pll_on_delay", scope: !5201, file: !1, line: 264, type: !187)
!5214 = !DILocation(line: 264, column: 6, scope: !5201)
!5215 = !DILocation(line: 266, column: 6, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5201, file: !1, line: 266, column: 6)
!5217 = !DILocation(line: 266, column: 11, scope: !5216)
!5218 = !DILocation(line: 266, column: 19, scope: !5216)
!5219 = !DILocation(line: 266, column: 6, scope: !5201)
!5220 = !DILocation(line: 267, column: 3, scope: !5216)
!5221 = !DILocation(line: 269, column: 6, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5201, file: !1, line: 269, column: 6)
!5223 = !DILocation(line: 269, column: 10, scope: !5222)
!5224 = !DILocation(line: 269, column: 23, scope: !5222)
!5225 = !DILocation(line: 269, column: 6, scope: !5201)
!5226 = !DILocation(line: 270, column: 49, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5222, file: !1, line: 269, column: 45)
!5228 = !DILocation(line: 270, column: 26, scope: !5227)
!5229 = !DILocation(line: 270, column: 3, scope: !5227)
!5230 = !DILocation(line: 270, column: 7, scope: !5227)
!5231 = !DILocation(line: 270, column: 24, scope: !5227)
!5232 = !DILocation(line: 271, column: 3, scope: !5227)
!5233 = !DILocation(line: 274, column: 8, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5201, file: !1, line: 274, column: 6)
!5235 = !DILocation(line: 274, column: 12, scope: !5234)
!5236 = !DILocation(line: 274, column: 25, scope: !5234)
!5237 = !DILocation(line: 274, column: 6, scope: !5201)
!5238 = !DILocation(line: 275, column: 3, scope: !5234)
!5239 = !DILocation(line: 277, column: 39, scope: !5201)
!5240 = !DILocation(line: 277, column: 12, scope: !5201)
!5241 = !DILocation(line: 277, column: 10, scope: !5201)
!5242 = !DILocation(line: 278, column: 17, scope: !5201)
!5243 = !DILocation(line: 278, column: 15, scope: !5201)
!5244 = !DILocation(line: 279, column: 11, scope: !5201)
!5245 = !DILocation(line: 279, column: 24, scope: !5201)
!5246 = !DILocation(line: 279, column: 29, scope: !5201)
!5247 = !DILocation(line: 279, column: 43, scope: !5201)
!5248 = !DILocation(line: 279, column: 51, scope: !5201)
!5249 = !DILocation(line: 279, column: 40, scope: !5201)
!5250 = !DILocation(line: 279, column: 59, scope: !5201)
!5251 = !DILocation(line: 279, column: 57, scope: !5201)
!5252 = !DILocation(line: 279, column: 6, scope: !5201)
!5253 = !DILocalVariable(name: "__ret_warn_on", scope: !5254, file: !1, line: 280, type: !254)
!5254 = distinct !DILexicalBlock(scope: !5201, file: !1, line: 280, column: 2)
!5255 = !DILocation(line: 280, column: 2, scope: !5254)
!5256 = !DILocation(line: 280, column: 2, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5254, file: !1, line: 280, column: 2)
!5258 = !DILocation(line: 280, column: 2, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5257, file: !1, line: 280, column: 2)
!5260 = !DILocation(line: 280, column: 2, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 280, column: 2)
!5262 = !DILocation(line: 280, column: 2, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 280, column: 2)
!5264 = !{i32 -2141410649, i32 -2141410620, i32 -2141410574, i32 -2141410516, i32 -2141410462, i32 -2141410408, i32 -2141410353, i32 -2141410322}
!5265 = !DILocation(line: 280, column: 2, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 280, column: 2)
!5267 = !{i32 -2141409909, i32 -2141409902, i32 -2141409850, i32 -2141409819, i32 -2141409789}
!5268 = !DILocation(line: 280, column: 2, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5259, file: !1, line: 280, column: 2)
!5270 = !DILocation(line: 282, column: 25, scope: !5201)
!5271 = !DILocation(line: 282, column: 2, scope: !5201)
!5272 = !DILocation(line: 282, column: 6, scope: !5201)
!5273 = !DILocation(line: 282, column: 23, scope: !5201)
!5274 = !DILocation(line: 283, column: 1, scope: !5201)
!5275 = distinct !DISubprogram(name: "ssb_chipco_watchdog_ticks_per_ms", scope: !1, file: !1, line: 333, type: !5276, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!254, !155}
!5278 = !DILocalVariable(name: "cc", arg: 1, scope: !5275, file: !1, line: 333, type: !155)
!5279 = !DILocation(line: 333, column: 68, scope: !5275)
!5280 = !DILocalVariable(name: "bus", scope: !5275, file: !1, line: 335, type: !4148)
!5281 = !DILocation(line: 335, column: 18, scope: !5275)
!5282 = !DILocation(line: 335, column: 24, scope: !5275)
!5283 = !DILocation(line: 335, column: 28, scope: !5275)
!5284 = !DILocation(line: 335, column: 33, scope: !5275)
!5285 = !DILocation(line: 337, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5275, file: !1, line: 337, column: 6)
!5287 = !DILocation(line: 337, column: 10, scope: !5286)
!5288 = !DILocation(line: 337, column: 23, scope: !5286)
!5289 = !DILocation(line: 337, column: 6, scope: !5275)
!5290 = !DILocation(line: 339, column: 4, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5286, file: !1, line: 337, column: 45)
!5292 = !DILocation(line: 341, column: 7, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5294, file: !1, line: 341, column: 7)
!5294 = distinct !DILexicalBlock(scope: !5286, file: !1, line: 340, column: 9)
!5295 = !DILocation(line: 341, column: 11, scope: !5293)
!5296 = !DILocation(line: 341, column: 16, scope: !5293)
!5297 = !DILocation(line: 341, column: 19, scope: !5293)
!5298 = !DILocation(line: 341, column: 28, scope: !5293)
!5299 = !DILocation(line: 341, column: 7, scope: !5294)
!5300 = !DILocation(line: 342, column: 26, scope: !5293)
!5301 = !DILocation(line: 342, column: 11, scope: !5293)
!5302 = !DILocation(line: 342, column: 31, scope: !5293)
!5303 = !DILocation(line: 342, column: 4, scope: !5293)
!5304 = !DILocation(line: 344, column: 32, scope: !5293)
!5305 = !DILocation(line: 344, column: 11, scope: !5293)
!5306 = !DILocation(line: 344, column: 36, scope: !5293)
!5307 = !DILocation(line: 344, column: 4, scope: !5293)
!5308 = !DILocation(line: 346, column: 1, scope: !5275)
!5309 = distinct !DISubprogram(name: "ssb_chipco_watchdog_get_max_timer", scope: !1, file: !1, line: 293, type: !5310, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!187, !155}
!5312 = !DILocalVariable(name: "cc", arg: 1, scope: !5309, file: !1, line: 293, type: !155)
!5313 = !DILocation(line: 293, column: 69, scope: !5309)
!5314 = !DILocalVariable(name: "nb", scope: !5309, file: !1, line: 295, type: !187)
!5315 = !DILocation(line: 295, column: 6, scope: !5309)
!5316 = !DILocation(line: 297, column: 6, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5309, file: !1, line: 297, column: 6)
!5318 = !DILocation(line: 297, column: 10, scope: !5317)
!5319 = !DILocation(line: 297, column: 23, scope: !5317)
!5320 = !DILocation(line: 297, column: 6, scope: !5309)
!5321 = !DILocation(line: 298, column: 7, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5323, file: !1, line: 298, column: 7)
!5323 = distinct !DILexicalBlock(scope: !5317, file: !1, line: 297, column: 45)
!5324 = !DILocation(line: 298, column: 11, scope: !5322)
!5325 = !DILocation(line: 298, column: 16, scope: !5322)
!5326 = !DILocation(line: 298, column: 19, scope: !5322)
!5327 = !DILocation(line: 298, column: 28, scope: !5322)
!5328 = !DILocation(line: 298, column: 7, scope: !5323)
!5329 = !DILocation(line: 299, column: 7, scope: !5322)
!5330 = !DILocation(line: 299, column: 4, scope: !5322)
!5331 = !DILocation(line: 301, column: 10, scope: !5322)
!5332 = !DILocation(line: 301, column: 14, scope: !5322)
!5333 = !DILocation(line: 301, column: 19, scope: !5322)
!5334 = !DILocation(line: 301, column: 22, scope: !5322)
!5335 = !DILocation(line: 301, column: 31, scope: !5322)
!5336 = !DILocation(line: 301, column: 9, scope: !5322)
!5337 = !DILocation(line: 301, column: 7, scope: !5322)
!5338 = !DILocation(line: 302, column: 2, scope: !5323)
!5339 = !DILocation(line: 303, column: 6, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5317, file: !1, line: 302, column: 9)
!5341 = !DILocation(line: 305, column: 6, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5309, file: !1, line: 305, column: 6)
!5343 = !DILocation(line: 305, column: 9, scope: !5342)
!5344 = !DILocation(line: 305, column: 6, scope: !5309)
!5345 = !DILocation(line: 306, column: 3, scope: !5342)
!5346 = !DILocation(line: 308, column: 16, scope: !5342)
!5347 = !DILocation(line: 308, column: 13, scope: !5342)
!5348 = !DILocation(line: 308, column: 20, scope: !5342)
!5349 = !DILocation(line: 308, column: 3, scope: !5342)
!5350 = !DILocation(line: 309, column: 1, scope: !5309)
!5351 = distinct !DISubprogram(name: "ssb_chipco_suspend", scope: !1, file: !1, line: 375, type: !5074, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5352 = !DILocalVariable(name: "cc", arg: 1, scope: !5351, file: !1, line: 375, type: !155)
!5353 = !DILocation(line: 375, column: 48, scope: !5351)
!5354 = !DILocation(line: 377, column: 7, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5351, file: !1, line: 377, column: 6)
!5356 = !DILocation(line: 377, column: 11, scope: !5355)
!5357 = !DILocation(line: 377, column: 6, scope: !5351)
!5358 = !DILocation(line: 378, column: 3, scope: !5355)
!5359 = !DILocation(line: 379, column: 27, scope: !5351)
!5360 = !DILocation(line: 379, column: 2, scope: !5351)
!5361 = !DILocation(line: 380, column: 1, scope: !5351)
!5362 = distinct !DISubprogram(name: "ssb_chipco_resume", scope: !1, file: !1, line: 382, type: !5074, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5363 = !DILocalVariable(name: "cc", arg: 1, scope: !5362, file: !1, line: 382, type: !155)
!5364 = !DILocation(line: 382, column: 47, scope: !5362)
!5365 = !DILocation(line: 384, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5362, file: !1, line: 384, column: 6)
!5367 = !DILocation(line: 384, column: 11, scope: !5366)
!5368 = !DILocation(line: 384, column: 6, scope: !5362)
!5369 = !DILocation(line: 385, column: 3, scope: !5366)
!5370 = !DILocation(line: 386, column: 27, scope: !5362)
!5371 = !DILocation(line: 386, column: 2, scope: !5362)
!5372 = !DILocation(line: 387, column: 27, scope: !5362)
!5373 = !DILocation(line: 387, column: 2, scope: !5362)
!5374 = !DILocation(line: 388, column: 1, scope: !5362)
!5375 = distinct !DISubprogram(name: "ssb_chipco_get_clockcpu", scope: !1, file: !1, line: 391, type: !5376, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{null, !155, !1426, !1426, !1426}
!5378 = !DILocalVariable(name: "cc", arg: 1, scope: !5375, file: !1, line: 391, type: !155)
!5379 = !DILocation(line: 391, column: 53, scope: !5375)
!5380 = !DILocalVariable(name: "plltype", arg: 2, scope: !5375, file: !1, line: 392, type: !1426)
!5381 = !DILocation(line: 392, column: 35, scope: !5375)
!5382 = !DILocalVariable(name: "n", arg: 3, scope: !5375, file: !1, line: 392, type: !1426)
!5383 = !DILocation(line: 392, column: 49, scope: !5375)
!5384 = !DILocalVariable(name: "m", arg: 4, scope: !5375, file: !1, line: 392, type: !1426)
!5385 = !DILocation(line: 392, column: 57, scope: !5375)
!5386 = !DILocation(line: 394, column: 7, scope: !5375)
!5387 = !DILocation(line: 394, column: 3, scope: !5375)
!5388 = !DILocation(line: 394, column: 5, scope: !5375)
!5389 = !DILocation(line: 395, column: 14, scope: !5375)
!5390 = !DILocation(line: 395, column: 18, scope: !5375)
!5391 = !DILocation(line: 395, column: 31, scope: !5375)
!5392 = !DILocation(line: 395, column: 3, scope: !5375)
!5393 = !DILocation(line: 395, column: 11, scope: !5375)
!5394 = !DILocation(line: 396, column: 11, scope: !5375)
!5395 = !DILocation(line: 396, column: 10, scope: !5375)
!5396 = !DILocation(line: 396, column: 2, scope: !5375)
!5397 = !DILocation(line: 401, column: 8, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5375, file: !1, line: 396, column: 20)
!5399 = !DILocation(line: 401, column: 4, scope: !5398)
!5400 = !DILocation(line: 401, column: 6, scope: !5398)
!5401 = !DILocation(line: 402, column: 3, scope: !5398)
!5402 = !DILocation(line: 405, column: 8, scope: !5398)
!5403 = !DILocation(line: 405, column: 4, scope: !5398)
!5404 = !DILocation(line: 405, column: 6, scope: !5398)
!5405 = !DILocation(line: 406, column: 3, scope: !5398)
!5406 = !DILocation(line: 408, column: 8, scope: !5398)
!5407 = !DILocation(line: 408, column: 4, scope: !5398)
!5408 = !DILocation(line: 408, column: 6, scope: !5398)
!5409 = !DILocation(line: 409, column: 3, scope: !5398)
!5410 = !DILocation(line: 411, column: 1, scope: !5375)
!5411 = distinct !DISubprogram(name: "ssb_chipco_get_clockcontrol", scope: !1, file: !1, line: 414, type: !5376, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5412 = !DILocalVariable(name: "cc", arg: 1, scope: !5411, file: !1, line: 414, type: !155)
!5413 = !DILocation(line: 414, column: 57, scope: !5411)
!5414 = !DILocalVariable(name: "plltype", arg: 2, scope: !5411, file: !1, line: 415, type: !1426)
!5415 = !DILocation(line: 415, column: 11, scope: !5411)
!5416 = !DILocalVariable(name: "n", arg: 3, scope: !5411, file: !1, line: 415, type: !1426)
!5417 = !DILocation(line: 415, column: 25, scope: !5411)
!5418 = !DILocalVariable(name: "m", arg: 4, scope: !5411, file: !1, line: 415, type: !1426)
!5419 = !DILocation(line: 415, column: 33, scope: !5411)
!5420 = !DILocation(line: 417, column: 7, scope: !5411)
!5421 = !DILocation(line: 417, column: 3, scope: !5411)
!5422 = !DILocation(line: 417, column: 5, scope: !5411)
!5423 = !DILocation(line: 418, column: 14, scope: !5411)
!5424 = !DILocation(line: 418, column: 18, scope: !5411)
!5425 = !DILocation(line: 418, column: 31, scope: !5411)
!5426 = !DILocation(line: 418, column: 3, scope: !5411)
!5427 = !DILocation(line: 418, column: 11, scope: !5411)
!5428 = !DILocation(line: 419, column: 11, scope: !5411)
!5429 = !DILocation(line: 419, column: 10, scope: !5411)
!5430 = !DILocation(line: 419, column: 2, scope: !5411)
!5431 = !DILocation(line: 421, column: 8, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5411, file: !1, line: 419, column: 20)
!5433 = !DILocation(line: 421, column: 4, scope: !5432)
!5434 = !DILocation(line: 421, column: 6, scope: !5432)
!5435 = !DILocation(line: 422, column: 3, scope: !5432)
!5436 = !DILocation(line: 424, column: 7, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5432, file: !1, line: 424, column: 7)
!5438 = !DILocation(line: 424, column: 11, scope: !5437)
!5439 = !DILocation(line: 424, column: 16, scope: !5437)
!5440 = !DILocation(line: 424, column: 21, scope: !5437)
!5441 = !DILocation(line: 424, column: 29, scope: !5437)
!5442 = !DILocation(line: 424, column: 7, scope: !5432)
!5443 = !DILocation(line: 425, column: 9, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5437, file: !1, line: 424, column: 40)
!5445 = !DILocation(line: 425, column: 5, scope: !5444)
!5446 = !DILocation(line: 425, column: 7, scope: !5444)
!5447 = !DILocation(line: 426, column: 4, scope: !5444)
!5448 = !DILocation(line: 424, column: 32, scope: !5437)
!5449 = !DILocation(line: 430, column: 8, scope: !5432)
!5450 = !DILocation(line: 430, column: 4, scope: !5432)
!5451 = !DILocation(line: 430, column: 6, scope: !5432)
!5452 = !DILocation(line: 431, column: 2, scope: !5432)
!5453 = !DILocation(line: 432, column: 1, scope: !5411)
!5454 = distinct !DISubprogram(name: "ssb_chipco_timing_init", scope: !1, file: !1, line: 434, type: !5455, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{null, !155, !145}
!5457 = !DILocalVariable(name: "cc", arg: 1, scope: !5454, file: !1, line: 434, type: !155)
!5458 = !DILocation(line: 434, column: 52, scope: !5454)
!5459 = !DILocalVariable(name: "ns", arg: 2, scope: !5454, file: !1, line: 435, type: !145)
!5460 = !DILocation(line: 435, column: 22, scope: !5454)
!5461 = !DILocalVariable(name: "dev", scope: !5454, file: !1, line: 437, type: !159)
!5462 = !DILocation(line: 437, column: 21, scope: !5454)
!5463 = !DILocation(line: 437, column: 27, scope: !5454)
!5464 = !DILocation(line: 437, column: 31, scope: !5454)
!5465 = !DILocalVariable(name: "bus", scope: !5454, file: !1, line: 438, type: !4148)
!5466 = !DILocation(line: 438, column: 18, scope: !5454)
!5467 = !DILocation(line: 438, column: 24, scope: !5454)
!5468 = !DILocation(line: 438, column: 29, scope: !5454)
!5469 = !DILocalVariable(name: "tmp", scope: !5454, file: !1, line: 439, type: !187)
!5470 = !DILocation(line: 439, column: 6, scope: !5454)
!5471 = !DILocation(line: 442, column: 2, scope: !5454)
!5472 = !DILocation(line: 443, column: 8, scope: !5454)
!5473 = !DILocation(line: 443, column: 29, scope: !5454)
!5474 = !DILocation(line: 443, column: 6, scope: !5454)
!5475 = !DILocation(line: 444, column: 9, scope: !5454)
!5476 = !DILocation(line: 444, column: 30, scope: !5454)
!5477 = !DILocation(line: 444, column: 6, scope: !5454)
!5478 = !DILocation(line: 445, column: 9, scope: !5454)
!5479 = !DILocation(line: 445, column: 6, scope: !5454)
!5480 = !DILocation(line: 446, column: 2, scope: !5454)
!5481 = !DILocation(line: 449, column: 8, scope: !5454)
!5482 = !DILocation(line: 449, column: 29, scope: !5454)
!5483 = !DILocation(line: 449, column: 6, scope: !5454)
!5484 = !DILocation(line: 450, column: 9, scope: !5454)
!5485 = !DILocation(line: 450, column: 30, scope: !5454)
!5486 = !DILocation(line: 450, column: 6, scope: !5454)
!5487 = !DILocation(line: 451, column: 9, scope: !5454)
!5488 = !DILocation(line: 451, column: 6, scope: !5454)
!5489 = !DILocation(line: 452, column: 7, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 452, column: 6)
!5491 = !DILocation(line: 452, column: 12, scope: !5490)
!5492 = !DILocation(line: 452, column: 20, scope: !5490)
!5493 = !DILocation(line: 452, column: 31, scope: !5490)
!5494 = !DILocation(line: 453, column: 7, scope: !5490)
!5495 = !DILocation(line: 453, column: 12, scope: !5490)
!5496 = !DILocation(line: 453, column: 15, scope: !5490)
!5497 = !DILocation(line: 453, column: 24, scope: !5490)
!5498 = !DILocation(line: 452, column: 6, scope: !5454)
!5499 = !DILocation(line: 454, column: 3, scope: !5490)
!5500 = !DILocation(line: 455, column: 7, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 455, column: 6)
!5502 = !DILocation(line: 455, column: 12, scope: !5501)
!5503 = !DILocation(line: 455, column: 20, scope: !5501)
!5504 = !DILocation(line: 455, column: 31, scope: !5501)
!5505 = !DILocation(line: 456, column: 7, scope: !5501)
!5506 = !DILocation(line: 456, column: 12, scope: !5501)
!5507 = !DILocation(line: 456, column: 15, scope: !5501)
!5508 = !DILocation(line: 456, column: 24, scope: !5501)
!5509 = !DILocation(line: 456, column: 29, scope: !5501)
!5510 = !DILocation(line: 457, column: 8, scope: !5501)
!5511 = !DILocation(line: 457, column: 13, scope: !5501)
!5512 = !DILocation(line: 457, column: 21, scope: !5501)
!5513 = !DILocation(line: 457, column: 32, scope: !5501)
!5514 = !DILocation(line: 457, column: 36, scope: !5501)
!5515 = !DILocation(line: 457, column: 41, scope: !5501)
!5516 = !DILocation(line: 457, column: 50, scope: !5501)
!5517 = !DILocation(line: 455, column: 6, scope: !5454)
!5518 = !DILocation(line: 458, column: 3, scope: !5501)
!5519 = !DILocation(line: 460, column: 6, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 460, column: 6)
!5521 = !DILocation(line: 460, column: 11, scope: !5520)
!5522 = !DILocation(line: 460, column: 19, scope: !5520)
!5523 = !DILocation(line: 460, column: 6, scope: !5454)
!5524 = !DILocation(line: 462, column: 9, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5520, file: !1, line: 460, column: 30)
!5526 = !DILocation(line: 462, column: 30, scope: !5525)
!5527 = !DILocation(line: 462, column: 7, scope: !5525)
!5528 = !DILocation(line: 463, column: 10, scope: !5525)
!5529 = !DILocation(line: 463, column: 31, scope: !5525)
!5530 = !DILocation(line: 463, column: 7, scope: !5525)
!5531 = !DILocation(line: 464, column: 10, scope: !5525)
!5532 = !DILocation(line: 464, column: 32, scope: !5525)
!5533 = !DILocation(line: 464, column: 7, scope: !5525)
!5534 = !DILocation(line: 465, column: 10, scope: !5525)
!5535 = !DILocation(line: 465, column: 7, scope: !5525)
!5536 = !DILocation(line: 466, column: 3, scope: !5525)
!5537 = !DILocation(line: 467, column: 2, scope: !5525)
!5538 = !DILocation(line: 468, column: 1, scope: !5454)
!5539 = distinct !DISubprogram(name: "ssb_chipco_irq_mask", scope: !1, file: !1, line: 494, type: !5540, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{null, !155, !187, !187}
!5542 = !DILocalVariable(name: "cc", arg: 1, scope: !5539, file: !1, line: 494, type: !155)
!5543 = !DILocation(line: 494, column: 49, scope: !5539)
!5544 = !DILocalVariable(name: "mask", arg: 2, scope: !5539, file: !1, line: 494, type: !187)
!5545 = !DILocation(line: 494, column: 57, scope: !5539)
!5546 = !DILocalVariable(name: "value", arg: 3, scope: !5539, file: !1, line: 494, type: !187)
!5547 = !DILocation(line: 494, column: 67, scope: !5539)
!5548 = !DILocation(line: 496, column: 24, scope: !5539)
!5549 = !DILocation(line: 496, column: 48, scope: !5539)
!5550 = !DILocation(line: 496, column: 54, scope: !5539)
!5551 = !DILocation(line: 496, column: 2, scope: !5539)
!5552 = !DILocation(line: 497, column: 1, scope: !5539)
!5553 = distinct !DISubprogram(name: "chipco_write32_masked", scope: !1, file: !1, line: 32, type: !5554, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5554 = !DISubroutineType(types: !5555)
!5555 = !{!187, !155, !176, !187, !187}
!5556 = !DILocalVariable(name: "cc", arg: 1, scope: !5553, file: !1, line: 32, type: !155)
!5557 = !DILocation(line: 32, column: 64, scope: !5553)
!5558 = !DILocalVariable(name: "offset", arg: 2, scope: !5553, file: !1, line: 32, type: !176)
!5559 = !DILocation(line: 32, column: 72, scope: !5553)
!5560 = !DILocalVariable(name: "mask", arg: 3, scope: !5553, file: !1, line: 33, type: !187)
!5561 = !DILocation(line: 33, column: 10, scope: !5553)
!5562 = !DILocalVariable(name: "value", arg: 4, scope: !5553, file: !1, line: 33, type: !187)
!5563 = !DILocation(line: 33, column: 20, scope: !5553)
!5564 = !DILocation(line: 35, column: 11, scope: !5553)
!5565 = !DILocation(line: 35, column: 8, scope: !5553)
!5566 = !DILocation(line: 36, column: 11, scope: !5553)
!5567 = !DILocation(line: 36, column: 40, scope: !5553)
!5568 = !DILocation(line: 36, column: 39, scope: !5553)
!5569 = !DILocation(line: 36, column: 37, scope: !5553)
!5570 = !DILocation(line: 36, column: 8, scope: !5553)
!5571 = !DILocation(line: 37, column: 2, scope: !5553)
!5572 = !DILocation(line: 39, column: 9, scope: !5553)
!5573 = !DILocation(line: 39, column: 2, scope: !5553)
!5574 = distinct !DISubprogram(name: "ssb_chipco_irq_status", scope: !1, file: !1, line: 499, type: !4989, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5575 = !DILocalVariable(name: "cc", arg: 1, scope: !5574, file: !1, line: 499, type: !155)
!5576 = !DILocation(line: 499, column: 50, scope: !5574)
!5577 = !DILocalVariable(name: "mask", arg: 2, scope: !5574, file: !1, line: 499, type: !187)
!5578 = !DILocation(line: 499, column: 58, scope: !5574)
!5579 = !DILocation(line: 501, column: 9, scope: !5574)
!5580 = !DILocation(line: 501, column: 49, scope: !5574)
!5581 = !DILocation(line: 501, column: 47, scope: !5574)
!5582 = !DILocation(line: 501, column: 2, scope: !5574)
!5583 = distinct !DISubprogram(name: "ssb_chipco_gpio_in", scope: !1, file: !1, line: 504, type: !4989, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5584 = !DILocalVariable(name: "cc", arg: 1, scope: !5583, file: !1, line: 504, type: !155)
!5585 = !DILocation(line: 504, column: 47, scope: !5583)
!5586 = !DILocalVariable(name: "mask", arg: 2, scope: !5583, file: !1, line: 504, type: !187)
!5587 = !DILocation(line: 504, column: 55, scope: !5583)
!5588 = !DILocation(line: 506, column: 9, scope: !5583)
!5589 = !DILocation(line: 506, column: 48, scope: !5583)
!5590 = !DILocation(line: 506, column: 46, scope: !5583)
!5591 = !DILocation(line: 506, column: 2, scope: !5583)
!5592 = distinct !DISubprogram(name: "ssb_chipco_gpio_out", scope: !1, file: !1, line: 509, type: !5593, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5593 = !DISubroutineType(types: !5594)
!5594 = !{!187, !155, !187, !187}
!5595 = !DILocalVariable(name: "lock", arg: 1, scope: !5596, file: !5078, line: 407, type: !1099)
!5596 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5078, file: !5078, line: 407, type: !5597, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{null, !1099, !145}
!5599 = !DILocation(line: 407, column: 64, scope: !5596, inlinedAt: !5600)
!5600 = distinct !DILocation(line: 516, column: 2, scope: !5592)
!5601 = !DILocalVariable(name: "flags", arg: 2, scope: !5596, file: !5078, line: 407, type: !145)
!5602 = !DILocation(line: 407, column: 84, scope: !5596, inlinedAt: !5600)
!5603 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5604)
!5604 = distinct !DILocation(line: 514, column: 2, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5606, file: !1, line: 514, column: 2)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !1, line: 514, column: 2)
!5607 = distinct !DILexicalBlock(scope: !5608, file: !1, line: 514, column: 2)
!5608 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 514, column: 2)
!5609 = distinct !DILexicalBlock(scope: !5592, file: !1, line: 514, column: 2)
!5610 = !DILocalVariable(name: "cc", arg: 1, scope: !5592, file: !1, line: 509, type: !155)
!5611 = !DILocation(line: 509, column: 48, scope: !5592)
!5612 = !DILocalVariable(name: "mask", arg: 2, scope: !5592, file: !1, line: 509, type: !187)
!5613 = !DILocation(line: 509, column: 56, scope: !5592)
!5614 = !DILocalVariable(name: "value", arg: 3, scope: !5592, file: !1, line: 509, type: !187)
!5615 = !DILocation(line: 509, column: 66, scope: !5592)
!5616 = !DILocalVariable(name: "flags", scope: !5592, file: !1, line: 511, type: !145)
!5617 = !DILocation(line: 511, column: 16, scope: !5592)
!5618 = !DILocalVariable(name: "res", scope: !5592, file: !1, line: 512, type: !187)
!5619 = !DILocation(line: 512, column: 6, scope: !5592)
!5620 = !DILocation(line: 514, column: 2, scope: !5592)
!5621 = !DILocation(line: 514, column: 2, scope: !5609)
!5622 = !DILocalVariable(name: "__dummy", scope: !5623, file: !1, line: 514, type: !145)
!5623 = distinct !DILexicalBlock(scope: !5608, file: !1, line: 514, column: 2)
!5624 = !DILocation(line: 514, column: 2, scope: !5623)
!5625 = !DILocalVariable(name: "__dummy2", scope: !5623, file: !1, line: 514, type: !145)
!5626 = !DILocation(line: 514, column: 2, scope: !5608)
!5627 = !DILocation(line: 514, column: 2, scope: !5607)
!5628 = !DILocation(line: 514, column: 2, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5607, file: !1, line: 514, column: 2)
!5630 = !DILocalVariable(name: "__dummy", scope: !5631, file: !1, line: 514, type: !145)
!5631 = distinct !DILexicalBlock(scope: !5632, file: !1, line: 514, column: 2)
!5632 = distinct !DILexicalBlock(scope: !5629, file: !1, line: 514, column: 2)
!5633 = !DILocation(line: 514, column: 2, scope: !5631)
!5634 = !DILocalVariable(name: "__dummy2", scope: !5631, file: !1, line: 514, type: !145)
!5635 = !DILocation(line: 514, column: 2, scope: !5632)
!5636 = !DILocation(line: 514, column: 2, scope: !5606)
!5637 = !{i32 -2141406386}
!5638 = !DILocation(line: 514, column: 2, scope: !5605)
!5639 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5604)
!5640 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5604)
!5641 = !DILocation(line: 515, column: 30, scope: !5592)
!5642 = !DILocation(line: 515, column: 54, scope: !5592)
!5643 = !DILocation(line: 515, column: 60, scope: !5592)
!5644 = !DILocation(line: 515, column: 8, scope: !5592)
!5645 = !DILocation(line: 515, column: 6, scope: !5592)
!5646 = !DILocation(line: 516, column: 26, scope: !5592)
!5647 = !DILocation(line: 516, column: 30, scope: !5592)
!5648 = !DILocation(line: 516, column: 41, scope: !5592)
!5649 = !DILocalVariable(name: "__dummy", scope: !5650, file: !5078, line: 409, type: !145)
!5650 = distinct !DILexicalBlock(scope: !5651, file: !5078, line: 409, column: 2)
!5651 = distinct !DILexicalBlock(scope: !5596, file: !5078, line: 409, column: 2)
!5652 = !DILocation(line: 409, column: 2, scope: !5650, inlinedAt: !5600)
!5653 = !DILocalVariable(name: "__dummy2", scope: !5650, file: !5078, line: 409, type: !145)
!5654 = !DILocalVariable(name: "__dummy", scope: !5655, file: !5078, line: 409, type: !145)
!5655 = distinct !DILexicalBlock(scope: !5656, file: !5078, line: 409, column: 2)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !5078, line: 409, column: 2)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !5078, line: 409, column: 2)
!5658 = distinct !DILexicalBlock(scope: !5651, file: !5078, line: 409, column: 2)
!5659 = !DILocation(line: 409, column: 2, scope: !5655, inlinedAt: !5600)
!5660 = !DILocalVariable(name: "__dummy2", scope: !5655, file: !5078, line: 409, type: !145)
!5661 = !DILocation(line: 409, column: 2, scope: !5656, inlinedAt: !5600)
!5662 = !DILocation(line: 409, column: 2, scope: !5663, inlinedAt: !5600)
!5663 = distinct !DILexicalBlock(scope: !5658, file: !5078, line: 409, column: 2)
!5664 = !{i32 -2145252363}
!5665 = !DILocation(line: 409, column: 2, scope: !5666, inlinedAt: !5600)
!5666 = distinct !DILexicalBlock(scope: !5663, file: !5078, line: 409, column: 2)
!5667 = !DILocation(line: 518, column: 9, scope: !5592)
!5668 = !DILocation(line: 518, column: 2, scope: !5592)
!5669 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5670, file: !5670, line: 666, type: !5671, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5670 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5671 = !DISubroutineType(types: !144)
!5672 = !DILocalVariable(name: "f", scope: !5669, file: !5670, line: 668, type: !145)
!5673 = !DILocation(line: 668, column: 16, scope: !5669)
!5674 = !DILocation(line: 670, column: 6, scope: !5669)
!5675 = !DILocation(line: 670, column: 4, scope: !5669)
!5676 = !DILocation(line: 671, column: 2, scope: !5669)
!5677 = !DILocation(line: 672, column: 9, scope: !5669)
!5678 = !DILocation(line: 672, column: 2, scope: !5669)
!5679 = distinct !DISubprogram(name: "ssb_chipco_gpio_outen", scope: !1, file: !1, line: 521, type: !5593, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5680 = !DILocation(line: 407, column: 64, scope: !5596, inlinedAt: !5681)
!5681 = distinct !DILocation(line: 528, column: 2, scope: !5679)
!5682 = !DILocation(line: 407, column: 84, scope: !5596, inlinedAt: !5681)
!5683 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5684)
!5684 = distinct !DILocation(line: 526, column: 2, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5686, file: !1, line: 526, column: 2)
!5686 = distinct !DILexicalBlock(scope: !5687, file: !1, line: 526, column: 2)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !1, line: 526, column: 2)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !1, line: 526, column: 2)
!5689 = distinct !DILexicalBlock(scope: !5679, file: !1, line: 526, column: 2)
!5690 = !DILocalVariable(name: "cc", arg: 1, scope: !5679, file: !1, line: 521, type: !155)
!5691 = !DILocation(line: 521, column: 50, scope: !5679)
!5692 = !DILocalVariable(name: "mask", arg: 2, scope: !5679, file: !1, line: 521, type: !187)
!5693 = !DILocation(line: 521, column: 58, scope: !5679)
!5694 = !DILocalVariable(name: "value", arg: 3, scope: !5679, file: !1, line: 521, type: !187)
!5695 = !DILocation(line: 521, column: 68, scope: !5679)
!5696 = !DILocalVariable(name: "flags", scope: !5679, file: !1, line: 523, type: !145)
!5697 = !DILocation(line: 523, column: 16, scope: !5679)
!5698 = !DILocalVariable(name: "res", scope: !5679, file: !1, line: 524, type: !187)
!5699 = !DILocation(line: 524, column: 6, scope: !5679)
!5700 = !DILocation(line: 526, column: 2, scope: !5679)
!5701 = !DILocation(line: 526, column: 2, scope: !5689)
!5702 = !DILocalVariable(name: "__dummy", scope: !5703, file: !1, line: 526, type: !145)
!5703 = distinct !DILexicalBlock(scope: !5688, file: !1, line: 526, column: 2)
!5704 = !DILocation(line: 526, column: 2, scope: !5703)
!5705 = !DILocalVariable(name: "__dummy2", scope: !5703, file: !1, line: 526, type: !145)
!5706 = !DILocation(line: 526, column: 2, scope: !5688)
!5707 = !DILocation(line: 526, column: 2, scope: !5687)
!5708 = !DILocation(line: 526, column: 2, scope: !5709)
!5709 = distinct !DILexicalBlock(scope: !5687, file: !1, line: 526, column: 2)
!5710 = !DILocalVariable(name: "__dummy", scope: !5711, file: !1, line: 526, type: !145)
!5711 = distinct !DILexicalBlock(scope: !5712, file: !1, line: 526, column: 2)
!5712 = distinct !DILexicalBlock(scope: !5709, file: !1, line: 526, column: 2)
!5713 = !DILocation(line: 526, column: 2, scope: !5711)
!5714 = !DILocalVariable(name: "__dummy2", scope: !5711, file: !1, line: 526, type: !145)
!5715 = !DILocation(line: 526, column: 2, scope: !5712)
!5716 = !DILocation(line: 526, column: 2, scope: !5686)
!5717 = !{i32 -2141405339}
!5718 = !DILocation(line: 526, column: 2, scope: !5685)
!5719 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5684)
!5720 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5684)
!5721 = !DILocation(line: 527, column: 30, scope: !5679)
!5722 = !DILocation(line: 527, column: 56, scope: !5679)
!5723 = !DILocation(line: 527, column: 62, scope: !5679)
!5724 = !DILocation(line: 527, column: 8, scope: !5679)
!5725 = !DILocation(line: 527, column: 6, scope: !5679)
!5726 = !DILocation(line: 528, column: 26, scope: !5679)
!5727 = !DILocation(line: 528, column: 30, scope: !5679)
!5728 = !DILocation(line: 528, column: 41, scope: !5679)
!5729 = !DILocation(line: 409, column: 2, scope: !5650, inlinedAt: !5681)
!5730 = !DILocation(line: 409, column: 2, scope: !5655, inlinedAt: !5681)
!5731 = !DILocation(line: 409, column: 2, scope: !5656, inlinedAt: !5681)
!5732 = !DILocation(line: 409, column: 2, scope: !5663, inlinedAt: !5681)
!5733 = !DILocation(line: 409, column: 2, scope: !5666, inlinedAt: !5681)
!5734 = !DILocation(line: 530, column: 9, scope: !5679)
!5735 = !DILocation(line: 530, column: 2, scope: !5679)
!5736 = distinct !DISubprogram(name: "ssb_chipco_gpio_control", scope: !1, file: !1, line: 533, type: !5593, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5737 = !DILocation(line: 407, column: 64, scope: !5596, inlinedAt: !5738)
!5738 = distinct !DILocation(line: 540, column: 2, scope: !5736)
!5739 = !DILocation(line: 407, column: 84, scope: !5596, inlinedAt: !5738)
!5740 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5741)
!5741 = distinct !DILocation(line: 538, column: 2, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !1, line: 538, column: 2)
!5743 = distinct !DILexicalBlock(scope: !5744, file: !1, line: 538, column: 2)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !1, line: 538, column: 2)
!5745 = distinct !DILexicalBlock(scope: !5746, file: !1, line: 538, column: 2)
!5746 = distinct !DILexicalBlock(scope: !5736, file: !1, line: 538, column: 2)
!5747 = !DILocalVariable(name: "cc", arg: 1, scope: !5736, file: !1, line: 533, type: !155)
!5748 = !DILocation(line: 533, column: 52, scope: !5736)
!5749 = !DILocalVariable(name: "mask", arg: 2, scope: !5736, file: !1, line: 533, type: !187)
!5750 = !DILocation(line: 533, column: 60, scope: !5736)
!5751 = !DILocalVariable(name: "value", arg: 3, scope: !5736, file: !1, line: 533, type: !187)
!5752 = !DILocation(line: 533, column: 70, scope: !5736)
!5753 = !DILocalVariable(name: "flags", scope: !5736, file: !1, line: 535, type: !145)
!5754 = !DILocation(line: 535, column: 16, scope: !5736)
!5755 = !DILocalVariable(name: "res", scope: !5736, file: !1, line: 536, type: !187)
!5756 = !DILocation(line: 536, column: 6, scope: !5736)
!5757 = !DILocation(line: 538, column: 2, scope: !5736)
!5758 = !DILocation(line: 538, column: 2, scope: !5746)
!5759 = !DILocalVariable(name: "__dummy", scope: !5760, file: !1, line: 538, type: !145)
!5760 = distinct !DILexicalBlock(scope: !5745, file: !1, line: 538, column: 2)
!5761 = !DILocation(line: 538, column: 2, scope: !5760)
!5762 = !DILocalVariable(name: "__dummy2", scope: !5760, file: !1, line: 538, type: !145)
!5763 = !DILocation(line: 538, column: 2, scope: !5745)
!5764 = !DILocation(line: 538, column: 2, scope: !5744)
!5765 = !DILocation(line: 538, column: 2, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5744, file: !1, line: 538, column: 2)
!5767 = !DILocalVariable(name: "__dummy", scope: !5768, file: !1, line: 538, type: !145)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !1, line: 538, column: 2)
!5769 = distinct !DILexicalBlock(scope: !5766, file: !1, line: 538, column: 2)
!5770 = !DILocation(line: 538, column: 2, scope: !5768)
!5771 = !DILocalVariable(name: "__dummy2", scope: !5768, file: !1, line: 538, type: !145)
!5772 = !DILocation(line: 538, column: 2, scope: !5769)
!5773 = !DILocation(line: 538, column: 2, scope: !5743)
!5774 = !{i32 -2141404292}
!5775 = !DILocation(line: 538, column: 2, scope: !5742)
!5776 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5741)
!5777 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5741)
!5778 = !DILocation(line: 539, column: 30, scope: !5736)
!5779 = !DILocation(line: 539, column: 54, scope: !5736)
!5780 = !DILocation(line: 539, column: 60, scope: !5736)
!5781 = !DILocation(line: 539, column: 8, scope: !5736)
!5782 = !DILocation(line: 539, column: 6, scope: !5736)
!5783 = !DILocation(line: 540, column: 26, scope: !5736)
!5784 = !DILocation(line: 540, column: 30, scope: !5736)
!5785 = !DILocation(line: 540, column: 41, scope: !5736)
!5786 = !DILocation(line: 409, column: 2, scope: !5650, inlinedAt: !5738)
!5787 = !DILocation(line: 409, column: 2, scope: !5655, inlinedAt: !5738)
!5788 = !DILocation(line: 409, column: 2, scope: !5656, inlinedAt: !5738)
!5789 = !DILocation(line: 409, column: 2, scope: !5663, inlinedAt: !5738)
!5790 = !DILocation(line: 409, column: 2, scope: !5666, inlinedAt: !5738)
!5791 = !DILocation(line: 542, column: 9, scope: !5736)
!5792 = !DILocation(line: 542, column: 2, scope: !5736)
!5793 = distinct !DISubprogram(name: "ssb_chipco_gpio_intmask", scope: !1, file: !1, line: 546, type: !5593, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5794 = !DILocation(line: 407, column: 64, scope: !5596, inlinedAt: !5795)
!5795 = distinct !DILocation(line: 553, column: 2, scope: !5793)
!5796 = !DILocation(line: 407, column: 84, scope: !5596, inlinedAt: !5795)
!5797 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5798)
!5798 = distinct !DILocation(line: 551, column: 2, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5800, file: !1, line: 551, column: 2)
!5800 = distinct !DILexicalBlock(scope: !5801, file: !1, line: 551, column: 2)
!5801 = distinct !DILexicalBlock(scope: !5802, file: !1, line: 551, column: 2)
!5802 = distinct !DILexicalBlock(scope: !5803, file: !1, line: 551, column: 2)
!5803 = distinct !DILexicalBlock(scope: !5793, file: !1, line: 551, column: 2)
!5804 = !DILocalVariable(name: "cc", arg: 1, scope: !5793, file: !1, line: 546, type: !155)
!5805 = !DILocation(line: 546, column: 52, scope: !5793)
!5806 = !DILocalVariable(name: "mask", arg: 2, scope: !5793, file: !1, line: 546, type: !187)
!5807 = !DILocation(line: 546, column: 60, scope: !5793)
!5808 = !DILocalVariable(name: "value", arg: 3, scope: !5793, file: !1, line: 546, type: !187)
!5809 = !DILocation(line: 546, column: 70, scope: !5793)
!5810 = !DILocalVariable(name: "flags", scope: !5793, file: !1, line: 548, type: !145)
!5811 = !DILocation(line: 548, column: 16, scope: !5793)
!5812 = !DILocalVariable(name: "res", scope: !5793, file: !1, line: 549, type: !187)
!5813 = !DILocation(line: 549, column: 6, scope: !5793)
!5814 = !DILocation(line: 551, column: 2, scope: !5793)
!5815 = !DILocation(line: 551, column: 2, scope: !5803)
!5816 = !DILocalVariable(name: "__dummy", scope: !5817, file: !1, line: 551, type: !145)
!5817 = distinct !DILexicalBlock(scope: !5802, file: !1, line: 551, column: 2)
!5818 = !DILocation(line: 551, column: 2, scope: !5817)
!5819 = !DILocalVariable(name: "__dummy2", scope: !5817, file: !1, line: 551, type: !145)
!5820 = !DILocation(line: 551, column: 2, scope: !5802)
!5821 = !DILocation(line: 551, column: 2, scope: !5801)
!5822 = !DILocation(line: 551, column: 2, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5801, file: !1, line: 551, column: 2)
!5824 = !DILocalVariable(name: "__dummy", scope: !5825, file: !1, line: 551, type: !145)
!5825 = distinct !DILexicalBlock(scope: !5826, file: !1, line: 551, column: 2)
!5826 = distinct !DILexicalBlock(scope: !5823, file: !1, line: 551, column: 2)
!5827 = !DILocation(line: 551, column: 2, scope: !5825)
!5828 = !DILocalVariable(name: "__dummy2", scope: !5825, file: !1, line: 551, type: !145)
!5829 = !DILocation(line: 551, column: 2, scope: !5826)
!5830 = !DILocation(line: 551, column: 2, scope: !5800)
!5831 = !{i32 -2141403140}
!5832 = !DILocation(line: 551, column: 2, scope: !5799)
!5833 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5798)
!5834 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5798)
!5835 = !DILocation(line: 552, column: 30, scope: !5793)
!5836 = !DILocation(line: 552, column: 54, scope: !5793)
!5837 = !DILocation(line: 552, column: 60, scope: !5793)
!5838 = !DILocation(line: 552, column: 8, scope: !5793)
!5839 = !DILocation(line: 552, column: 6, scope: !5793)
!5840 = !DILocation(line: 553, column: 26, scope: !5793)
!5841 = !DILocation(line: 553, column: 30, scope: !5793)
!5842 = !DILocation(line: 553, column: 41, scope: !5793)
!5843 = !DILocation(line: 409, column: 2, scope: !5650, inlinedAt: !5795)
!5844 = !DILocation(line: 409, column: 2, scope: !5655, inlinedAt: !5795)
!5845 = !DILocation(line: 409, column: 2, scope: !5656, inlinedAt: !5795)
!5846 = !DILocation(line: 409, column: 2, scope: !5663, inlinedAt: !5795)
!5847 = !DILocation(line: 409, column: 2, scope: !5666, inlinedAt: !5795)
!5848 = !DILocation(line: 555, column: 9, scope: !5793)
!5849 = !DILocation(line: 555, column: 2, scope: !5793)
!5850 = distinct !DISubprogram(name: "ssb_chipco_gpio_polarity", scope: !1, file: !1, line: 558, type: !5593, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5851 = !DILocation(line: 407, column: 64, scope: !5596, inlinedAt: !5852)
!5852 = distinct !DILocation(line: 565, column: 2, scope: !5850)
!5853 = !DILocation(line: 407, column: 84, scope: !5596, inlinedAt: !5852)
!5854 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5855)
!5855 = distinct !DILocation(line: 563, column: 2, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5857, file: !1, line: 563, column: 2)
!5857 = distinct !DILexicalBlock(scope: !5858, file: !1, line: 563, column: 2)
!5858 = distinct !DILexicalBlock(scope: !5859, file: !1, line: 563, column: 2)
!5859 = distinct !DILexicalBlock(scope: !5860, file: !1, line: 563, column: 2)
!5860 = distinct !DILexicalBlock(scope: !5850, file: !1, line: 563, column: 2)
!5861 = !DILocalVariable(name: "cc", arg: 1, scope: !5850, file: !1, line: 558, type: !155)
!5862 = !DILocation(line: 558, column: 53, scope: !5850)
!5863 = !DILocalVariable(name: "mask", arg: 2, scope: !5850, file: !1, line: 558, type: !187)
!5864 = !DILocation(line: 558, column: 61, scope: !5850)
!5865 = !DILocalVariable(name: "value", arg: 3, scope: !5850, file: !1, line: 558, type: !187)
!5866 = !DILocation(line: 558, column: 71, scope: !5850)
!5867 = !DILocalVariable(name: "flags", scope: !5850, file: !1, line: 560, type: !145)
!5868 = !DILocation(line: 560, column: 16, scope: !5850)
!5869 = !DILocalVariable(name: "res", scope: !5850, file: !1, line: 561, type: !187)
!5870 = !DILocation(line: 561, column: 6, scope: !5850)
!5871 = !DILocation(line: 563, column: 2, scope: !5850)
!5872 = !DILocation(line: 563, column: 2, scope: !5860)
!5873 = !DILocalVariable(name: "__dummy", scope: !5874, file: !1, line: 563, type: !145)
!5874 = distinct !DILexicalBlock(scope: !5859, file: !1, line: 563, column: 2)
!5875 = !DILocation(line: 563, column: 2, scope: !5874)
!5876 = !DILocalVariable(name: "__dummy2", scope: !5874, file: !1, line: 563, type: !145)
!5877 = !DILocation(line: 563, column: 2, scope: !5859)
!5878 = !DILocation(line: 563, column: 2, scope: !5858)
!5879 = !DILocation(line: 563, column: 2, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5858, file: !1, line: 563, column: 2)
!5881 = !DILocalVariable(name: "__dummy", scope: !5882, file: !1, line: 563, type: !145)
!5882 = distinct !DILexicalBlock(scope: !5883, file: !1, line: 563, column: 2)
!5883 = distinct !DILexicalBlock(scope: !5880, file: !1, line: 563, column: 2)
!5884 = !DILocation(line: 563, column: 2, scope: !5882)
!5885 = !DILocalVariable(name: "__dummy2", scope: !5882, file: !1, line: 563, type: !145)
!5886 = !DILocation(line: 563, column: 2, scope: !5883)
!5887 = !DILocation(line: 563, column: 2, scope: !5857)
!5888 = !{i32 -2141402093}
!5889 = !DILocation(line: 563, column: 2, scope: !5856)
!5890 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5855)
!5891 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5855)
!5892 = !DILocation(line: 564, column: 30, scope: !5850)
!5893 = !DILocation(line: 564, column: 54, scope: !5850)
!5894 = !DILocation(line: 564, column: 60, scope: !5850)
!5895 = !DILocation(line: 564, column: 8, scope: !5850)
!5896 = !DILocation(line: 564, column: 6, scope: !5850)
!5897 = !DILocation(line: 565, column: 26, scope: !5850)
!5898 = !DILocation(line: 565, column: 30, scope: !5850)
!5899 = !DILocation(line: 565, column: 41, scope: !5850)
!5900 = !DILocation(line: 409, column: 2, scope: !5650, inlinedAt: !5852)
!5901 = !DILocation(line: 409, column: 2, scope: !5655, inlinedAt: !5852)
!5902 = !DILocation(line: 409, column: 2, scope: !5656, inlinedAt: !5852)
!5903 = !DILocation(line: 409, column: 2, scope: !5663, inlinedAt: !5852)
!5904 = !DILocation(line: 409, column: 2, scope: !5666, inlinedAt: !5852)
!5905 = !DILocation(line: 567, column: 9, scope: !5850)
!5906 = !DILocation(line: 567, column: 2, scope: !5850)
!5907 = distinct !DISubprogram(name: "ssb_chipco_gpio_pullup", scope: !1, file: !1, line: 570, type: !5593, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5908 = !DILocation(line: 407, column: 64, scope: !5596, inlinedAt: !5909)
!5909 = distinct !DILocation(line: 580, column: 2, scope: !5907)
!5910 = !DILocation(line: 407, column: 84, scope: !5596, inlinedAt: !5909)
!5911 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5912)
!5912 = distinct !DILocation(line: 578, column: 2, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5914, file: !1, line: 578, column: 2)
!5914 = distinct !DILexicalBlock(scope: !5915, file: !1, line: 578, column: 2)
!5915 = distinct !DILexicalBlock(scope: !5916, file: !1, line: 578, column: 2)
!5916 = distinct !DILexicalBlock(scope: !5917, file: !1, line: 578, column: 2)
!5917 = distinct !DILexicalBlock(scope: !5907, file: !1, line: 578, column: 2)
!5918 = !DILocalVariable(name: "cc", arg: 1, scope: !5907, file: !1, line: 570, type: !155)
!5919 = !DILocation(line: 570, column: 51, scope: !5907)
!5920 = !DILocalVariable(name: "mask", arg: 2, scope: !5907, file: !1, line: 570, type: !187)
!5921 = !DILocation(line: 570, column: 59, scope: !5907)
!5922 = !DILocalVariable(name: "value", arg: 3, scope: !5907, file: !1, line: 570, type: !187)
!5923 = !DILocation(line: 570, column: 69, scope: !5907)
!5924 = !DILocalVariable(name: "flags", scope: !5907, file: !1, line: 572, type: !145)
!5925 = !DILocation(line: 572, column: 16, scope: !5907)
!5926 = !DILocalVariable(name: "res", scope: !5907, file: !1, line: 573, type: !187)
!5927 = !DILocation(line: 573, column: 6, scope: !5907)
!5928 = !DILocation(line: 575, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5907, file: !1, line: 575, column: 6)
!5930 = !DILocation(line: 575, column: 10, scope: !5929)
!5931 = !DILocation(line: 575, column: 15, scope: !5929)
!5932 = !DILocation(line: 575, column: 18, scope: !5929)
!5933 = !DILocation(line: 575, column: 27, scope: !5929)
!5934 = !DILocation(line: 575, column: 6, scope: !5907)
!5935 = !DILocation(line: 576, column: 3, scope: !5929)
!5936 = !DILocation(line: 578, column: 2, scope: !5907)
!5937 = !DILocation(line: 578, column: 2, scope: !5917)
!5938 = !DILocalVariable(name: "__dummy", scope: !5939, file: !1, line: 578, type: !145)
!5939 = distinct !DILexicalBlock(scope: !5916, file: !1, line: 578, column: 2)
!5940 = !DILocation(line: 578, column: 2, scope: !5939)
!5941 = !DILocalVariable(name: "__dummy2", scope: !5939, file: !1, line: 578, type: !145)
!5942 = !DILocation(line: 578, column: 2, scope: !5916)
!5943 = !DILocation(line: 578, column: 2, scope: !5915)
!5944 = !DILocation(line: 578, column: 2, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5915, file: !1, line: 578, column: 2)
!5946 = !DILocalVariable(name: "__dummy", scope: !5947, file: !1, line: 578, type: !145)
!5947 = distinct !DILexicalBlock(scope: !5948, file: !1, line: 578, column: 2)
!5948 = distinct !DILexicalBlock(scope: !5945, file: !1, line: 578, column: 2)
!5949 = !DILocation(line: 578, column: 2, scope: !5947)
!5950 = !DILocalVariable(name: "__dummy2", scope: !5947, file: !1, line: 578, type: !145)
!5951 = !DILocation(line: 578, column: 2, scope: !5948)
!5952 = !DILocation(line: 578, column: 2, scope: !5914)
!5953 = !{i32 -2141401046}
!5954 = !DILocation(line: 578, column: 2, scope: !5913)
!5955 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5912)
!5956 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5912)
!5957 = !DILocation(line: 579, column: 30, scope: !5907)
!5958 = !DILocation(line: 579, column: 57, scope: !5907)
!5959 = !DILocation(line: 579, column: 63, scope: !5907)
!5960 = !DILocation(line: 579, column: 8, scope: !5907)
!5961 = !DILocation(line: 579, column: 6, scope: !5907)
!5962 = !DILocation(line: 580, column: 26, scope: !5907)
!5963 = !DILocation(line: 580, column: 30, scope: !5907)
!5964 = !DILocation(line: 580, column: 41, scope: !5907)
!5965 = !DILocation(line: 409, column: 2, scope: !5650, inlinedAt: !5909)
!5966 = !DILocation(line: 409, column: 2, scope: !5655, inlinedAt: !5909)
!5967 = !DILocation(line: 409, column: 2, scope: !5656, inlinedAt: !5909)
!5968 = !DILocation(line: 409, column: 2, scope: !5663, inlinedAt: !5909)
!5969 = !DILocation(line: 409, column: 2, scope: !5666, inlinedAt: !5909)
!5970 = !DILocation(line: 582, column: 9, scope: !5907)
!5971 = !DILocation(line: 582, column: 2, scope: !5907)
!5972 = !DILocation(line: 583, column: 1, scope: !5907)
!5973 = distinct !DISubprogram(name: "ssb_chipco_gpio_pulldown", scope: !1, file: !1, line: 585, type: !5593, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !242)
!5974 = !DILocation(line: 407, column: 64, scope: !5596, inlinedAt: !5975)
!5975 = distinct !DILocation(line: 595, column: 2, scope: !5973)
!5976 = !DILocation(line: 407, column: 84, scope: !5596, inlinedAt: !5975)
!5977 = !DILocation(line: 327, column: 67, scope: !5077, inlinedAt: !5978)
!5978 = distinct !DILocation(line: 593, column: 2, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5980, file: !1, line: 593, column: 2)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !1, line: 593, column: 2)
!5981 = distinct !DILexicalBlock(scope: !5982, file: !1, line: 593, column: 2)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !1, line: 593, column: 2)
!5983 = distinct !DILexicalBlock(scope: !5973, file: !1, line: 593, column: 2)
!5984 = !DILocalVariable(name: "cc", arg: 1, scope: !5973, file: !1, line: 585, type: !155)
!5985 = !DILocation(line: 585, column: 53, scope: !5973)
!5986 = !DILocalVariable(name: "mask", arg: 2, scope: !5973, file: !1, line: 585, type: !187)
!5987 = !DILocation(line: 585, column: 61, scope: !5973)
!5988 = !DILocalVariable(name: "value", arg: 3, scope: !5973, file: !1, line: 585, type: !187)
!5989 = !DILocation(line: 585, column: 71, scope: !5973)
!5990 = !DILocalVariable(name: "flags", scope: !5973, file: !1, line: 587, type: !145)
!5991 = !DILocation(line: 587, column: 16, scope: !5973)
!5992 = !DILocalVariable(name: "res", scope: !5973, file: !1, line: 588, type: !187)
!5993 = !DILocation(line: 588, column: 6, scope: !5973)
!5994 = !DILocation(line: 590, column: 6, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5973, file: !1, line: 590, column: 6)
!5996 = !DILocation(line: 590, column: 10, scope: !5995)
!5997 = !DILocation(line: 590, column: 15, scope: !5995)
!5998 = !DILocation(line: 590, column: 18, scope: !5995)
!5999 = !DILocation(line: 590, column: 27, scope: !5995)
!6000 = !DILocation(line: 590, column: 6, scope: !5973)
!6001 = !DILocation(line: 591, column: 3, scope: !5995)
!6002 = !DILocation(line: 593, column: 2, scope: !5973)
!6003 = !DILocation(line: 593, column: 2, scope: !5983)
!6004 = !DILocalVariable(name: "__dummy", scope: !6005, file: !1, line: 593, type: !145)
!6005 = distinct !DILexicalBlock(scope: !5982, file: !1, line: 593, column: 2)
!6006 = !DILocation(line: 593, column: 2, scope: !6005)
!6007 = !DILocalVariable(name: "__dummy2", scope: !6005, file: !1, line: 593, type: !145)
!6008 = !DILocation(line: 593, column: 2, scope: !5982)
!6009 = !DILocation(line: 593, column: 2, scope: !5981)
!6010 = !DILocation(line: 593, column: 2, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5981, file: !1, line: 593, column: 2)
!6012 = !DILocalVariable(name: "__dummy", scope: !6013, file: !1, line: 593, type: !145)
!6013 = distinct !DILexicalBlock(scope: !6014, file: !1, line: 593, column: 2)
!6014 = distinct !DILexicalBlock(scope: !6011, file: !1, line: 593, column: 2)
!6015 = !DILocation(line: 593, column: 2, scope: !6013)
!6016 = !DILocalVariable(name: "__dummy2", scope: !6013, file: !1, line: 593, type: !145)
!6017 = !DILocation(line: 593, column: 2, scope: !6014)
!6018 = !DILocation(line: 593, column: 2, scope: !5980)
!6019 = !{i32 -2141399999}
!6020 = !DILocation(line: 593, column: 2, scope: !5979)
!6021 = !DILocation(line: 329, column: 10, scope: !5077, inlinedAt: !5978)
!6022 = !DILocation(line: 329, column: 16, scope: !5077, inlinedAt: !5978)
!6023 = !DILocation(line: 594, column: 30, scope: !5973)
!6024 = !DILocation(line: 594, column: 59, scope: !5973)
!6025 = !DILocation(line: 594, column: 65, scope: !5973)
!6026 = !DILocation(line: 594, column: 8, scope: !5973)
!6027 = !DILocation(line: 594, column: 6, scope: !5973)
!6028 = !DILocation(line: 595, column: 26, scope: !5973)
!6029 = !DILocation(line: 595, column: 30, scope: !5973)
!6030 = !DILocation(line: 595, column: 41, scope: !5973)
!6031 = !DILocation(line: 409, column: 2, scope: !5650, inlinedAt: !5975)
!6032 = !DILocation(line: 409, column: 2, scope: !5655, inlinedAt: !5975)
!6033 = !DILocation(line: 409, column: 2, scope: !5656, inlinedAt: !5975)
!6034 = !DILocation(line: 409, column: 2, scope: !5663, inlinedAt: !5975)
!6035 = !DILocation(line: 409, column: 2, scope: !5666, inlinedAt: !5975)
!6036 = !DILocation(line: 597, column: 9, scope: !5973)
!6037 = !DILocation(line: 597, column: 2, scope: !5973)
!6038 = !DILocation(line: 598, column: 1, scope: !5973)
!6039 = distinct !DISubprogram(name: "chipco_pctl_clockfreqlimit", scope: !1, file: !1, line: 150, type: !6040, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!6040 = !DISubroutineType(types: !6041)
!6041 = !{!254, !155, !254}
!6042 = !DILocalVariable(name: "cc", arg: 1, scope: !6039, file: !1, line: 150, type: !155)
!6043 = !DILocation(line: 150, column: 62, scope: !6039)
!6044 = !DILocalVariable(name: "get_max", arg: 2, scope: !6039, file: !1, line: 150, type: !254)
!6045 = !DILocation(line: 150, column: 70, scope: !6039)
!6046 = !DILocalVariable(name: "limit", scope: !6039, file: !1, line: 152, type: !254)
!6047 = !DILocation(line: 152, column: 6, scope: !6039)
!6048 = !DILocalVariable(name: "clocksrc", scope: !6039, file: !1, line: 153, type: !139)
!6049 = !DILocation(line: 153, column: 18, scope: !6039)
!6050 = !DILocalVariable(name: "divisor", scope: !6039, file: !1, line: 154, type: !254)
!6051 = !DILocation(line: 154, column: 6, scope: !6039)
!6052 = !DILocalVariable(name: "tmp", scope: !6039, file: !1, line: 155, type: !187)
!6053 = !DILocation(line: 155, column: 6, scope: !6039)
!6054 = !DILocation(line: 157, column: 40, scope: !6039)
!6055 = !DILocation(line: 157, column: 13, scope: !6039)
!6056 = !DILocation(line: 157, column: 11, scope: !6039)
!6057 = !DILocation(line: 158, column: 6, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6039, file: !1, line: 158, column: 6)
!6059 = !DILocation(line: 158, column: 10, scope: !6058)
!6060 = !DILocation(line: 158, column: 15, scope: !6058)
!6061 = !DILocation(line: 158, column: 18, scope: !6058)
!6062 = !DILocation(line: 158, column: 27, scope: !6058)
!6063 = !DILocation(line: 158, column: 6, scope: !6039)
!6064 = !DILocation(line: 159, column: 11, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6058, file: !1, line: 158, column: 32)
!6066 = !DILocation(line: 159, column: 3, scope: !6065)
!6067 = !DILocation(line: 161, column: 12, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6065, file: !1, line: 159, column: 21)
!6069 = !DILocation(line: 162, column: 4, scope: !6068)
!6070 = !DILocation(line: 164, column: 12, scope: !6068)
!6071 = !DILocation(line: 165, column: 4, scope: !6068)
!6072 = !DILocalVariable(name: "__ret_warn_on", scope: !6073, file: !1, line: 167, type: !254)
!6073 = distinct !DILexicalBlock(scope: !6068, file: !1, line: 167, column: 4)
!6074 = !DILocation(line: 167, column: 4, scope: !6073)
!6075 = !DILocation(line: 167, column: 4, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6073, file: !1, line: 167, column: 4)
!6077 = !DILocation(line: 167, column: 4, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6076, file: !1, line: 167, column: 4)
!6079 = !DILocation(line: 167, column: 4, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6078, file: !1, line: 167, column: 4)
!6081 = !DILocation(line: 167, column: 4, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6078, file: !1, line: 167, column: 4)
!6083 = !{i32 -2141412726, i32 -2141412697, i32 -2141412651, i32 -2141412593, i32 -2141412539, i32 -2141412485, i32 -2141412430, i32 -2141412399}
!6084 = !DILocation(line: 167, column: 4, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6078, file: !1, line: 167, column: 4)
!6086 = !{i32 -2141411986, i32 -2141411979, i32 -2141411927, i32 -2141411896, i32 -2141411866}
!6087 = !DILocation(line: 167, column: 4, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6078, file: !1, line: 167, column: 4)
!6089 = !DILocation(line: 168, column: 3, scope: !6068)
!6090 = !DILocation(line: 169, column: 2, scope: !6065)
!6091 = !DILocation(line: 169, column: 13, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6058, file: !1, line: 169, column: 13)
!6093 = !DILocation(line: 169, column: 17, scope: !6092)
!6094 = !DILocation(line: 169, column: 22, scope: !6092)
!6095 = !DILocation(line: 169, column: 25, scope: !6092)
!6096 = !DILocation(line: 169, column: 34, scope: !6092)
!6097 = !DILocation(line: 169, column: 13, scope: !6058)
!6098 = !DILocation(line: 170, column: 11, scope: !6099)
!6099 = distinct !DILexicalBlock(scope: !6092, file: !1, line: 169, column: 40)
!6100 = !DILocation(line: 170, column: 3, scope: !6099)
!6101 = !DILocation(line: 172, column: 4, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6099, file: !1, line: 170, column: 21)
!6103 = !DILocation(line: 175, column: 10, scope: !6102)
!6104 = !DILocation(line: 175, column: 8, scope: !6102)
!6105 = !DILocation(line: 176, column: 15, scope: !6102)
!6106 = !DILocation(line: 176, column: 19, scope: !6102)
!6107 = !DILocation(line: 176, column: 26, scope: !6102)
!6108 = !DILocation(line: 176, column: 12, scope: !6102)
!6109 = !DILocation(line: 177, column: 12, scope: !6102)
!6110 = !DILocation(line: 178, column: 4, scope: !6102)
!6111 = !DILocation(line: 180, column: 2, scope: !6099)
!6112 = !DILocation(line: 181, column: 9, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6092, file: !1, line: 180, column: 9)
!6114 = !DILocation(line: 181, column: 7, scope: !6113)
!6115 = !DILocation(line: 182, column: 14, scope: !6113)
!6116 = !DILocation(line: 182, column: 18, scope: !6113)
!6117 = !DILocation(line: 182, column: 25, scope: !6113)
!6118 = !DILocation(line: 182, column: 11, scope: !6113)
!6119 = !DILocation(line: 183, column: 11, scope: !6113)
!6120 = !DILocation(line: 186, column: 10, scope: !6039)
!6121 = !DILocation(line: 186, column: 2, scope: !6039)
!6122 = !DILocation(line: 188, column: 7, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !1, line: 188, column: 7)
!6124 = distinct !DILexicalBlock(scope: !6039, file: !1, line: 186, column: 20)
!6125 = !DILocation(line: 188, column: 7, scope: !6124)
!6126 = !DILocation(line: 189, column: 10, scope: !6123)
!6127 = !DILocation(line: 189, column: 4, scope: !6123)
!6128 = !DILocation(line: 191, column: 10, scope: !6123)
!6129 = !DILocation(line: 192, column: 3, scope: !6124)
!6130 = !DILocation(line: 194, column: 7, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6124, file: !1, line: 194, column: 7)
!6132 = !DILocation(line: 194, column: 7, scope: !6124)
!6133 = !DILocation(line: 195, column: 10, scope: !6131)
!6134 = !DILocation(line: 195, column: 4, scope: !6131)
!6135 = !DILocation(line: 197, column: 10, scope: !6131)
!6136 = !DILocation(line: 198, column: 3, scope: !6124)
!6137 = !DILocation(line: 200, column: 7, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6124, file: !1, line: 200, column: 7)
!6139 = !DILocation(line: 200, column: 7, scope: !6124)
!6140 = !DILocation(line: 201, column: 10, scope: !6138)
!6141 = !DILocation(line: 201, column: 4, scope: !6138)
!6142 = !DILocation(line: 203, column: 10, scope: !6138)
!6143 = !DILocation(line: 204, column: 3, scope: !6124)
!6144 = !DILocation(line: 206, column: 11, scope: !6039)
!6145 = !DILocation(line: 206, column: 8, scope: !6039)
!6146 = !DILocation(line: 208, column: 9, scope: !6039)
!6147 = !DILocation(line: 208, column: 2, scope: !6039)
!6148 = distinct !DISubprogram(name: "chipco_pctl_get_slowclksrc", scope: !1, file: !1, line: 119, type: !6149, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!6149 = !DISubroutineType(types: !6150)
!6150 = !{!139, !155}
!6151 = !DILocalVariable(name: "cc", arg: 1, scope: !6148, file: !1, line: 119, type: !155)
!6152 = !DILocation(line: 119, column: 74, scope: !6148)
!6153 = !DILocalVariable(name: "bus", scope: !6148, file: !1, line: 121, type: !4148)
!6154 = !DILocation(line: 121, column: 18, scope: !6148)
!6155 = !DILocation(line: 121, column: 24, scope: !6148)
!6156 = !DILocation(line: 121, column: 28, scope: !6148)
!6157 = !DILocation(line: 121, column: 33, scope: !6148)
!6158 = !DILocalVariable(name: "tmp", scope: !6148, file: !1, line: 122, type: !187)
!6159 = !DILocation(line: 122, column: 6, scope: !6148)
!6160 = !DILocation(line: 124, column: 6, scope: !6161)
!6161 = distinct !DILexicalBlock(scope: !6148, file: !1, line: 124, column: 6)
!6162 = !DILocation(line: 124, column: 10, scope: !6161)
!6163 = !DILocation(line: 124, column: 15, scope: !6161)
!6164 = !DILocation(line: 124, column: 18, scope: !6161)
!6165 = !DILocation(line: 124, column: 27, scope: !6161)
!6166 = !DILocation(line: 124, column: 6, scope: !6148)
!6167 = !DILocation(line: 125, column: 7, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6169, file: !1, line: 125, column: 7)
!6169 = distinct !DILexicalBlock(scope: !6161, file: !1, line: 124, column: 32)
!6170 = !DILocation(line: 125, column: 12, scope: !6168)
!6171 = !DILocation(line: 125, column: 20, scope: !6168)
!6172 = !DILocation(line: 125, column: 39, scope: !6168)
!6173 = !DILocation(line: 126, column: 7, scope: !6168)
!6174 = !DILocation(line: 126, column: 12, scope: !6168)
!6175 = !DILocation(line: 126, column: 20, scope: !6168)
!6176 = !DILocation(line: 125, column: 7, scope: !6169)
!6177 = !DILocation(line: 127, column: 4, scope: !6168)
!6178 = !DILocation(line: 128, column: 7, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !6169, file: !1, line: 128, column: 7)
!6180 = !DILocation(line: 128, column: 12, scope: !6179)
!6181 = !DILocation(line: 128, column: 20, scope: !6179)
!6182 = !DILocation(line: 128, column: 7, scope: !6169)
!6183 = !DILocation(line: 129, column: 26, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6179, file: !1, line: 128, column: 40)
!6185 = !DILocation(line: 129, column: 31, scope: !6184)
!6186 = !DILocation(line: 129, column: 4, scope: !6184)
!6187 = !DILocation(line: 130, column: 8, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6184, file: !1, line: 130, column: 8)
!6189 = !DILocation(line: 130, column: 12, scope: !6188)
!6190 = !DILocation(line: 130, column: 8, scope: !6184)
!6191 = !DILocation(line: 131, column: 5, scope: !6188)
!6192 = !DILocation(line: 132, column: 4, scope: !6184)
!6193 = !DILocation(line: 134, column: 2, scope: !6169)
!6194 = !DILocation(line: 135, column: 6, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6148, file: !1, line: 135, column: 6)
!6196 = !DILocation(line: 135, column: 10, scope: !6195)
!6197 = !DILocation(line: 135, column: 15, scope: !6195)
!6198 = !DILocation(line: 135, column: 18, scope: !6195)
!6199 = !DILocation(line: 135, column: 27, scope: !6195)
!6200 = !DILocation(line: 135, column: 6, scope: !6148)
!6201 = !DILocation(line: 136, column: 9, scope: !6202)
!6202 = distinct !DILexicalBlock(scope: !6195, file: !1, line: 135, column: 33)
!6203 = !DILocation(line: 136, column: 7, scope: !6202)
!6204 = !DILocation(line: 137, column: 7, scope: !6202)
!6205 = !DILocation(line: 138, column: 7, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6202, file: !1, line: 138, column: 7)
!6207 = !DILocation(line: 138, column: 11, scope: !6206)
!6208 = !DILocation(line: 138, column: 7, scope: !6202)
!6209 = !DILocation(line: 139, column: 4, scope: !6206)
!6210 = !DILocation(line: 140, column: 7, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6202, file: !1, line: 140, column: 7)
!6212 = !DILocation(line: 140, column: 11, scope: !6211)
!6213 = !DILocation(line: 140, column: 7, scope: !6202)
!6214 = !DILocation(line: 141, column: 4, scope: !6211)
!6215 = !DILocation(line: 142, column: 7, scope: !6216)
!6216 = distinct !DILexicalBlock(scope: !6202, file: !1, line: 142, column: 7)
!6217 = !DILocation(line: 142, column: 11, scope: !6216)
!6218 = !DILocation(line: 142, column: 7, scope: !6202)
!6219 = !DILocation(line: 143, column: 4, scope: !6216)
!6220 = !DILocation(line: 144, column: 2, scope: !6202)
!6221 = !DILocation(line: 146, column: 2, scope: !6148)
!6222 = !DILocation(line: 147, column: 1, scope: !6148)
!6223 = distinct !DISubprogram(name: "pmu_fast_powerup_delay", scope: !1, file: !1, line: 242, type: !6224, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{!176, !155}
!6226 = !DILocalVariable(name: "cc", arg: 1, scope: !6223, file: !1, line: 242, type: !155)
!6227 = !DILocation(line: 242, column: 58, scope: !6223)
!6228 = !DILocalVariable(name: "bus", scope: !6223, file: !1, line: 244, type: !4148)
!6229 = !DILocation(line: 244, column: 18, scope: !6223)
!6230 = !DILocation(line: 244, column: 24, scope: !6223)
!6231 = !DILocation(line: 244, column: 28, scope: !6223)
!6232 = !DILocation(line: 244, column: 33, scope: !6223)
!6233 = !DILocation(line: 246, column: 10, scope: !6223)
!6234 = !DILocation(line: 246, column: 15, scope: !6223)
!6235 = !DILocation(line: 246, column: 2, scope: !6223)
!6236 = !DILocation(line: 250, column: 3, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6223, file: !1, line: 246, column: 24)
!6238 = !DILocation(line: 254, column: 3, scope: !6237)
!6239 = !DILocation(line: 256, column: 1, scope: !6223)
!6240 = distinct !DISubprogram(name: "ssb_chipco_alp_clock", scope: !1, file: !1, line: 285, type: !5310, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!6241 = !DILocalVariable(name: "cc", arg: 1, scope: !6240, file: !1, line: 285, type: !155)
!6242 = !DILocation(line: 285, column: 56, scope: !6240)
!6243 = !DILocation(line: 287, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6240, file: !1, line: 287, column: 6)
!6245 = !DILocation(line: 287, column: 10, scope: !6244)
!6246 = !DILocation(line: 287, column: 23, scope: !6244)
!6247 = !DILocation(line: 287, column: 6, scope: !6240)
!6248 = !DILocation(line: 288, column: 32, scope: !6244)
!6249 = !DILocation(line: 288, column: 10, scope: !6244)
!6250 = !DILocation(line: 288, column: 3, scope: !6244)
!6251 = !DILocation(line: 290, column: 2, scope: !6240)
!6252 = !DILocation(line: 291, column: 1, scope: !6240)
!6253 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5670, file: !5670, line: 646, type: !5671, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!6254 = !DILocalVariable(name: "__ret", scope: !6255, file: !5670, line: 648, type: !145)
!6255 = distinct !DILexicalBlock(scope: !6253, file: !5670, line: 648, column: 9)
!6256 = !DILocation(line: 648, column: 9, scope: !6255)
!6257 = !DILocalVariable(name: "__edi", scope: !6255, file: !5670, line: 648, type: !145)
!6258 = !DILocalVariable(name: "__esi", scope: !6255, file: !5670, line: 648, type: !145)
!6259 = !DILocalVariable(name: "__edx", scope: !6255, file: !5670, line: 648, type: !145)
!6260 = !DILocalVariable(name: "__ecx", scope: !6255, file: !5670, line: 648, type: !145)
!6261 = !DILocalVariable(name: "__eax", scope: !6255, file: !5670, line: 648, type: !145)
!6262 = !DILocation(line: 648, column: 9, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6264, file: !5670, line: 648, column: 9)
!6264 = distinct !DILexicalBlock(scope: !6255, file: !5670, line: 648, column: 9)
!6265 = !{i32 -2145729206, i32 -2145726891, i32 -2145726657, i32 -2145726606, i32 -2145726578, i32 -2145726553, i32 -2145726869, i32 -2145726856, i32 -2145726418, i32 -2145726299, i32 -2145726764, i32 -2145726737, i32 -2145726709, i32 -2145726679}
!6266 = !DILocalVariable(name: "__mask", scope: !6267, file: !5670, line: 648, type: !145)
!6267 = distinct !DILexicalBlock(scope: !6263, file: !5670, line: 648, column: 9)
!6268 = !DILocation(line: 648, column: 9, scope: !6267)
!6269 = !DILocation(line: 648, column: 9, scope: !6264)
!6270 = !DILocation(line: 648, column: 2, scope: !6253)
!6271 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5670, file: !5670, line: 656, type: !1890, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!6272 = !DILocalVariable(name: "__edi", scope: !6273, file: !5670, line: 658, type: !145)
!6273 = distinct !DILexicalBlock(scope: !6271, file: !5670, line: 658, column: 2)
!6274 = !DILocation(line: 658, column: 2, scope: !6273)
!6275 = !DILocalVariable(name: "__esi", scope: !6273, file: !5670, line: 658, type: !145)
!6276 = !DILocalVariable(name: "__edx", scope: !6273, file: !5670, line: 658, type: !145)
!6277 = !DILocalVariable(name: "__ecx", scope: !6273, file: !5670, line: 658, type: !145)
!6278 = !DILocalVariable(name: "__eax", scope: !6273, file: !5670, line: 658, type: !145)
!6279 = !{i32 -2145722112, i32 -2145721380, i32 -2145721146, i32 -2145721095, i32 -2145721067, i32 -2145721042, i32 -2145721358, i32 -2145721345, i32 -2145720907, i32 -2145720788, i32 -2145721253, i32 -2145721226, i32 -2145721198, i32 -2145721168}
!6280 = !DILocation(line: 659, column: 1, scope: !6271)
!6281 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5670, file: !5670, line: 651, type: !6282, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !242)
!6282 = !DISubroutineType(types: !6283)
!6283 = !{null, !145}
!6284 = !DILocalVariable(name: "f", arg: 1, scope: !6281, file: !5670, line: 651, type: !145)
!6285 = !DILocation(line: 651, column: 65, scope: !6281)
!6286 = !DILocalVariable(name: "__edi", scope: !6287, file: !5670, line: 653, type: !145)
!6287 = distinct !DILexicalBlock(scope: !6281, file: !5670, line: 653, column: 2)
!6288 = !DILocation(line: 653, column: 2, scope: !6287)
!6289 = !DILocalVariable(name: "__esi", scope: !6287, file: !5670, line: 653, type: !145)
!6290 = !DILocalVariable(name: "__edx", scope: !6287, file: !5670, line: 653, type: !145)
!6291 = !DILocalVariable(name: "__ecx", scope: !6287, file: !5670, line: 653, type: !145)
!6292 = !DILocalVariable(name: "__eax", scope: !6287, file: !5670, line: 653, type: !145)
!6293 = !{i32 -2145724739, i32 -2145723989, i32 -2145723755, i32 -2145723704, i32 -2145723676, i32 -2145723651, i32 -2145723967, i32 -2145723954, i32 -2145723516, i32 -2145723397, i32 -2145723862, i32 -2145723835, i32 -2145723807, i32 -2145723777}
!6294 = !DILocation(line: 654, column: 1, scope: !6281)
