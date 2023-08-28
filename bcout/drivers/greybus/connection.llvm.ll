; ModuleID = '../bcout/drivers/greybus/connection.llvm.bc'
source_filename = "drivers/greybus/connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.seq_file = type opaque
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
%struct.kmem_cache = type opaque
%struct.gb_host_device = type { %struct.device, i32, %struct.gb_hd_driver*, %struct.list_head, %struct.list_head, %struct.ida, i64, i64, %struct.gb_svc*, [0 x i64] }
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.gb_hd_driver = type { i64, i32 (%struct.gb_host_device*, i32, i64)*, void (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i64)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i8, i32)*, i32 (%struct.gb_host_device*, i16, i64, i32)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, %struct.gb_message*, i32)*, void (%struct.gb_message*)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i8*, i16, i8, i1)* }
%struct.gb_message = type { %struct.gb_operation*, %struct.gb_operation_msg_hdr*, i8*, i64, i8*, i8* }
%struct.gb_operation = type { %struct.gb_connection*, %struct.gb_message*, %struct.gb_message*, i64, i8, i16, i32, %struct.work_struct, void (%struct.gb_operation*)*, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, i8* }
%struct.gb_connection = type { %struct.gb_host_device*, %struct.gb_interface*, %struct.gb_bundle*, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, i32 (%struct.gb_operation*)*, i64, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], %struct.workqueue_struct*, %struct.atomic_t, i8*, i8 }
%struct.gb_interface = type { %struct.device, %struct.gb_control*, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, %struct.gb_host_device*, %struct.gb_module*, i64, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_control = type { %struct.device, %struct.gb_interface*, %struct.gb_connection*, i8, i8, i8, i8, i8*, i8* }
%struct.gb_module = type { %struct.device, %struct.gb_host_device*, %struct.list_head, i8, i64, i8, [0 x %struct.gb_interface*] }
%struct.gb_bundle = type { %struct.device, %struct.gb_interface*, i8, i8, i8, i8, i64, %struct.greybus_descriptor_cport*, %struct.list_head, i8*, %struct.list_head }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.ida = type { %struct.xarray }
%struct.gb_svc = type { %struct.device, %struct.gb_host_device*, %struct.gb_connection*, i32, %struct.ida, %struct.workqueue_struct*, i16, i8, i8, i8, %struct.gb_svc_watchdog*, i32, %struct.dentry*, %struct.svc_debugfs_pwrmon_rail* }
%struct.gb_svc_watchdog = type opaque
%struct.svc_debugfs_pwrmon_rail = type { i8, %struct.gb_svc* }
%struct.gb_cport_shutdown_request = type { i8 }

@.str = private unnamed_addr constant [44 x i8] c"nonexistent connection (%zu bytes dropped)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"drivers/greybus/connection.c\00", align 1
@gb_connection_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gb_connection_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gb_connection_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@gb_connections_lock = internal global %struct.spinlock undef, align 1, !dbg !4020
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: failed to enable latency tag: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: failed to disable latency tag: %d\0A\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"cport %u already in use\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to allocate cport: %d\0A\00", align 1
@_gb_connection_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4015
@.str.6 = private unnamed_addr constant [19 x i8] c"&connection->mutex\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%u/%u:%u\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: failed to enable host cport: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s: failed to create svc connection: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s: failed to set connected state: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"failed to connect cport: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s: failed to clear host cport: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%s: failed to disable host cport: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"%s: failed to flush host cport: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"%s: failed to send disconnecting: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"%s: failed to send cport shutdown (phase %d): %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"%s: failed to quiesce host cport: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"failed to disconnect cport: %d\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @greybus_data_rcvd(%struct.gb_host_device* %hd, i16 zeroext %cport_id, i8* %data, i64 %length) #0 !dbg !4028 {
entry:
  %hd.addr = alloca %struct.gb_host_device*, align 8
  %cport_id.addr = alloca i16, align 2
  %data.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %connection = alloca %struct.gb_connection*, align 8
  store %struct.gb_host_device* %hd, %struct.gb_host_device** %hd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd.addr, metadata !4031, metadata !DIExpression()), !dbg !4032
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4033, metadata !DIExpression()), !dbg !4034
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !4037, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4039, metadata !DIExpression()), !dbg !4040
  %0 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4041
  call void @trace_gb_hd_in(%struct.gb_host_device* %0) #10, !dbg !4042
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4043
  %2 = load i16, i16* %cport_id.addr, align 2, !dbg !4044
  %call = call %struct.gb_connection* @gb_connection_hd_find(%struct.gb_host_device* %1, i16 zeroext %2) #10, !dbg !4045
  store %struct.gb_connection* %call, %struct.gb_connection** %connection, align 8, !dbg !4046
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4047
  %tobool = icmp ne %struct.gb_connection* %3, null, !dbg !4047
  br i1 %tobool, label %if.end, label %if.then, !dbg !4049

if.then:                                          ; preds = %entry
  %4 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4050
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %4, i32 0, i32 0, !dbg !4050
  %5 = load i64, i64* %length.addr, align 8, !dbg !4050
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %5) #11, !dbg !4050
  br label %return, !dbg !4052

if.end:                                           ; preds = %entry
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4053
  %7 = load i8*, i8** %data.addr, align 8, !dbg !4054
  %8 = load i64, i64* %length.addr, align 8, !dbg !4055
  call void @gb_connection_recv(%struct.gb_connection* %6, i8* %7, i64 %8) #10, !dbg !4056
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4057
  call void @gb_connection_put(%struct.gb_connection* %9) #10, !dbg !4058
  br label %return, !dbg !4059

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4059
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_hd_in(%struct.gb_host_device* %hd) #0 !dbg !4060 {
entry:
  %hd.addr = alloca %struct.gb_host_device*, align 8
  store %struct.gb_host_device* %hd, %struct.gb_host_device** %hd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd.addr, metadata !4064, metadata !DIExpression()), !dbg !4065
  ret void, !dbg !4065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gb_connection* @gb_connection_hd_find(%struct.gb_host_device* %hd, i16 zeroext %cport_id) #0 !dbg !4066 {
entry:
  %lock.addr.i36 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i36, metadata !4069, metadata !DIExpression()), !dbg !4074
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4076, metadata !DIExpression()), !dbg !4077
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4078, metadata !DIExpression()), !dbg !4083
  %hd.addr = alloca %struct.gb_host_device*, align 8
  %cport_id.addr = alloca i16, align 2
  %connection = alloca %struct.gb_connection*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp21 = alloca %struct.gb_connection*, align 8
  %__mptr29 = alloca i8*, align 8
  %tmp34 = alloca %struct.gb_connection*, align 8
  store %struct.gb_host_device* %hd, %struct.gb_host_device** %hd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd.addr, metadata !4090, metadata !DIExpression()), !dbg !4091
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4096, metadata !DIExpression()), !dbg !4097
  br label %do.body, !dbg !4098

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4099

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4100, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4103, metadata !DIExpression()), !dbg !4102
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4102
  %conv = zext i1 %cmp to i32, !dbg !4102
  store i32 1, i32* %tmp, align 4, !dbg !4102
  %0 = load i32, i32* %tmp, align 4, !dbg !4102
  br label %do.body2, !dbg !4104

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4105

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4106

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4108, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4112, metadata !DIExpression()), !dbg !4111
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4111
  %conv8 = zext i1 %cmp7 to i32, !dbg !4111
  store i32 1, i32* %tmp9, align 4, !dbg !4111
  %1 = load i32, i32* %tmp9, align 4, !dbg !4111
  %call = call i64 @arch_local_irq_save() #10, !dbg !4113
  store i64 %call, i64* %flags, align 8, !dbg !4113
  br label %do.end, !dbg !4113

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4106

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4105

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4114, !srcloc !4115
  br label %do.body12, !dbg !4114

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @gb_connections_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4116
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4117
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !4117
  br label %do.end14, !dbg !4118

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4114

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4105

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4104

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4099

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4119, metadata !DIExpression()), !dbg !4122
  %4 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4122
  %connections = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %4, i32 0, i32 4, !dbg !4122
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %connections, i32 0, i32 0, !dbg !4122
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4122
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !4122
  store i8* %6, i8** %__mptr, align 8, !dbg !4122
  br label %do.body19, !dbg !4122

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4123

do.end20:                                         ; preds = %do.body19
  %7 = load i8*, i8** %__mptr, align 8, !dbg !4122
  %add.ptr = getelementptr i8, i8* %7, i64 -32, !dbg !4122
  %8 = bitcast i8* %add.ptr to %struct.gb_connection*, !dbg !4122
  store %struct.gb_connection* %8, %struct.gb_connection** %tmp21, align 8, !dbg !4123
  %9 = load %struct.gb_connection*, %struct.gb_connection** %tmp21, align 8, !dbg !4122
  store %struct.gb_connection* %9, %struct.gb_connection** %connection, align 8, !dbg !4125
  br label %for.cond, !dbg !4125

for.cond:                                         ; preds = %do.end33, %do.end20
  %10 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4126
  %hd_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 6, !dbg !4126
  %11 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4126
  %connections22 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %11, i32 0, i32 4, !dbg !4126
  %cmp23 = icmp eq %struct.list_head* %hd_links, %connections22, !dbg !4126
  %lnot = xor i1 %cmp23, true, !dbg !4126
  br i1 %lnot, label %for.body, label %for.end, !dbg !4125

for.body:                                         ; preds = %for.cond
  %12 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4128
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 4, !dbg !4130
  %13 = load i16, i16* %hd_cport_id, align 4, !dbg !4130
  %conv25 = zext i16 %13 to i32, !dbg !4128
  %14 = load i16, i16* %cport_id.addr, align 2, !dbg !4131
  %conv26 = zext i16 %14 to i32, !dbg !4131
  %cmp27 = icmp eq i32 %conv25, %conv26, !dbg !4132
  br i1 %cmp27, label %if.then, label %if.end, !dbg !4133

if.then:                                          ; preds = %for.body
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4134
  call void @gb_connection_get(%struct.gb_connection* %15) #10, !dbg !4136
  br label %found, !dbg !4137

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4131

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr29, metadata !4138, metadata !DIExpression()), !dbg !4140
  %16 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4140
  %hd_links30 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 6, !dbg !4140
  %next31 = getelementptr inbounds %struct.list_head, %struct.list_head* %hd_links30, i32 0, i32 0, !dbg !4140
  %17 = load %struct.list_head*, %struct.list_head** %next31, align 8, !dbg !4140
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4140
  store i8* %18, i8** %__mptr29, align 8, !dbg !4140
  br label %do.body32, !dbg !4140

do.body32:                                        ; preds = %for.inc
  br label %do.end33, !dbg !4141

do.end33:                                         ; preds = %do.body32
  %19 = load i8*, i8** %__mptr29, align 8, !dbg !4140
  %add.ptr35 = getelementptr i8, i8* %19, i64 -32, !dbg !4140
  %20 = bitcast i8* %add.ptr35 to %struct.gb_connection*, !dbg !4140
  store %struct.gb_connection* %20, %struct.gb_connection** %tmp34, align 8, !dbg !4141
  %21 = load %struct.gb_connection*, %struct.gb_connection** %tmp34, align 8, !dbg !4140
  store %struct.gb_connection* %21, %struct.gb_connection** %connection, align 8, !dbg !4126
  br label %for.cond, !dbg !4126, !llvm.loop !4143

for.end:                                          ; preds = %for.cond
  store %struct.gb_connection* null, %struct.gb_connection** %connection, align 8, !dbg !4145
  br label %found, !dbg !4146

found:                                            ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !4147), !dbg !4148
  %22 = load i64, i64* %flags, align 8, !dbg !4149
  store %struct.spinlock* @gb_connections_lock, %struct.spinlock** %lock.addr.i36, align 8
  store i64 %22, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !210, metadata !4150, metadata !DIExpression()) #5, !dbg !4153
  call void @llvm.dbg.declare(metadata !210, metadata !4154, metadata !DIExpression()) #5, !dbg !4153
  store i32 1, i32* %tmp.i, align 4, !dbg !4153
  %23 = load i32, i32* %tmp.i, align 4, !dbg !4153
  call void @llvm.dbg.declare(metadata !210, metadata !4155, metadata !DIExpression()) #5, !dbg !4160
  call void @llvm.dbg.declare(metadata !210, metadata !4161, metadata !DIExpression()) #5, !dbg !4160
  store i32 1, i32* %tmp8.i, align 4, !dbg !4160
  %24 = load i32, i32* %tmp8.i, align 4, !dbg !4160
  %25 = load i64, i64* %flags.addr.i, align 8, !dbg !4162
  call void @arch_local_irq_restore(i64 %25) #12, !dbg !4162
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4163, !srcloc !4165
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i36, align 8, !dbg !4166
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !4166
  %rlock.i37 = bitcast %union.anon.3* %27 to %struct.raw_spinlock*, !dbg !4166
  %28 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4168
  ret %struct.gb_connection* %28, !dbg !4169
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @gb_connection_recv(%struct.gb_connection*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_put(%struct.gb_connection* %connection) #0 !dbg !4170 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4173, metadata !DIExpression()), !dbg !4174
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4175
  call void @trace_gb_connection_put(%struct.gb_connection* %0) #10, !dbg !4176
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4177
  %kref = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 3, !dbg !4178
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @gb_connection_kref_release) #10, !dbg !4179
  ret void, !dbg !4180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_connection* @gb_connection_create_static(%struct.gb_host_device* %hd, i16 zeroext %hd_cport_id, i32 (%struct.gb_operation*)* %handler) #0 !dbg !4181 {
entry:
  %hd.addr = alloca %struct.gb_host_device*, align 8
  %hd_cport_id.addr = alloca i16, align 2
  %handler.addr = alloca i32 (%struct.gb_operation*)*, align 8
  store %struct.gb_host_device* %hd, %struct.gb_host_device** %hd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  store i16 %hd_cport_id, i16* %hd_cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %hd_cport_id.addr, metadata !4186, metadata !DIExpression()), !dbg !4187
  store i32 (%struct.gb_operation*)* %handler, i32 (%struct.gb_operation*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.gb_operation*)** %handler.addr, metadata !4188, metadata !DIExpression()), !dbg !4189
  %0 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4190
  %1 = load i16, i16* %hd_cport_id.addr, align 2, !dbg !4191
  %conv = zext i16 %1 to i32, !dbg !4191
  %2 = load i32 (%struct.gb_operation*)*, i32 (%struct.gb_operation*)** %handler.addr, align 8, !dbg !4192
  %call = call %struct.gb_connection* @_gb_connection_create(%struct.gb_host_device* %0, i32 %conv, %struct.gb_interface* null, %struct.gb_bundle* null, i32 0, i32 (%struct.gb_operation*)* %2, i64 32) #10, !dbg !4193
  ret %struct.gb_connection* %call, !dbg !4194
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gb_connection* @_gb_connection_create(%struct.gb_host_device* %hd, i32 %hd_cport_id, %struct.gb_interface* %intf, %struct.gb_bundle* %bundle, i32 %cport_id, i32 (%struct.gb_operation*)* %handler, i64 %flags) #0 !dbg !4017 {
entry:
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !4195, metadata !DIExpression()), !dbg !4199
  %lock.addr.i44 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i44, metadata !4201, metadata !DIExpression()), !dbg !4203
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4078, metadata !DIExpression()), !dbg !4205
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4208, metadata !DIExpression()), !dbg !4214
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4219, metadata !DIExpression()), !dbg !4220
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4221, metadata !DIExpression()), !dbg !4229
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4231, metadata !DIExpression()), !dbg !4232
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4233, metadata !DIExpression()), !dbg !4234
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4235, metadata !DIExpression()), !dbg !4236
  %retval = alloca %struct.gb_connection*, align 8
  %hd.addr = alloca %struct.gb_host_device*, align 8
  %hd_cport_id.addr = alloca i32, align 4
  %intf.addr = alloca %struct.gb_interface*, align 8
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %cport_id.addr = alloca i32, align 4
  %handler.addr = alloca i32 (%struct.gb_operation*)*, align 8
  %flags.addr = alloca i64, align 8
  %connection = alloca %struct.gb_connection*, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.gb_host_device* %hd, %struct.gb_host_device** %hd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd.addr, metadata !4237, metadata !DIExpression()), !dbg !4238
  store i32 %hd_cport_id, i32* %hd_cport_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hd_cport_id.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4241, metadata !DIExpression()), !dbg !4242
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4243, metadata !DIExpression()), !dbg !4244
  store i32 %cport_id, i32* %cport_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cport_id.addr, metadata !4245, metadata !DIExpression()), !dbg !4246
  store i32 (%struct.gb_operation*)* %handler, i32 (%struct.gb_operation*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.gb_operation*)** %handler.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4251, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4253, metadata !DIExpression()), !dbg !4254
  call void @mutex_lock(%struct.mutex* @gb_connection_mutex) #10, !dbg !4255
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4256
  %tobool = icmp ne %struct.gb_interface* %0, null, !dbg !4256
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4258

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4259
  %2 = load i32, i32* %cport_id.addr, align 4, !dbg !4260
  %conv = trunc i32 %2 to i16, !dbg !4260
  %call = call zeroext i1 @gb_connection_cport_in_use(%struct.gb_interface* %1, i16 zeroext %conv) #10, !dbg !4261
  br i1 %call, label %if.then, label %if.end, !dbg !4262

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4263
  %dev = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %3, i32 0, i32 0, !dbg !4263
  %4 = load i32, i32* %cport_id.addr, align 4, !dbg !4263
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %4) #11, !dbg !4263
  store i32 -16, i32* %ret, align 4, !dbg !4265
  br label %err_unlock, !dbg !4266

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4267
  %6 = load i32, i32* %hd_cport_id.addr, align 4, !dbg !4268
  %7 = load i64, i64* %flags.addr, align 8, !dbg !4269
  %call2 = call i32 @gb_hd_cport_allocate(%struct.gb_host_device* %5, i32 %6, i64 %7) #10, !dbg !4270
  store i32 %call2, i32* %ret, align 4, !dbg !4271
  %8 = load i32, i32* %ret, align 4, !dbg !4272
  %cmp = icmp slt i32 %8, 0, !dbg !4274
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4275

if.then4:                                         ; preds = %if.end
  %9 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4276
  %dev5 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %9, i32 0, i32 0, !dbg !4276
  %10 = load i32, i32* %ret, align 4, !dbg !4276
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %10) #11, !dbg !4276
  br label %err_unlock, !dbg !4278

if.end6:                                          ; preds = %if.end
  %11 = load i32, i32* %ret, align 4, !dbg !4279
  store i32 %11, i32* %hd_cport_id.addr, align 4, !dbg !4280
  %call7 = call i8* @kzalloc(i64 176, i32 3264) #10, !dbg !4281
  %12 = bitcast i8* %call7 to %struct.gb_connection*, !dbg !4281
  store %struct.gb_connection* %12, %struct.gb_connection** %connection, align 8, !dbg !4282
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4283
  %tobool8 = icmp ne %struct.gb_connection* %13, null, !dbg !4283
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4285

if.then9:                                         ; preds = %if.end6
  store i32 -12, i32* %ret, align 4, !dbg !4286
  br label %err_hd_cport_release, !dbg !4288

if.end10:                                         ; preds = %if.end6
  %14 = load i32, i32* %hd_cport_id.addr, align 4, !dbg !4289
  %conv11 = trunc i32 %14 to i16, !dbg !4289
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4290
  %hd_cport_id12 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %15, i32 0, i32 4, !dbg !4291
  store i16 %conv11, i16* %hd_cport_id12, align 4, !dbg !4292
  %16 = load i32, i32* %cport_id.addr, align 4, !dbg !4293
  %conv13 = trunc i32 %16 to i16, !dbg !4293
  %17 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4294
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %17, i32 0, i32 5, !dbg !4295
  store i16 %conv13, i16* %intf_cport_id, align 2, !dbg !4296
  %18 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4297
  %19 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4298
  %hd14 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %19, i32 0, i32 0, !dbg !4299
  store %struct.gb_host_device* %18, %struct.gb_host_device** %hd14, align 8, !dbg !4300
  %20 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4301
  %21 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4302
  %intf15 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %21, i32 0, i32 1, !dbg !4303
  store %struct.gb_interface* %20, %struct.gb_interface** %intf15, align 8, !dbg !4304
  %22 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4305
  %23 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4306
  %bundle16 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %23, i32 0, i32 2, !dbg !4307
  store %struct.gb_bundle* %22, %struct.gb_bundle** %bundle16, align 8, !dbg !4308
  %24 = load i32 (%struct.gb_operation*)*, i32 (%struct.gb_operation*)** %handler.addr, align 8, !dbg !4309
  %25 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4310
  %handler17 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %25, i32 0, i32 8, !dbg !4311
  store i32 (%struct.gb_operation*)* %24, i32 (%struct.gb_operation*)** %handler17, align 8, !dbg !4312
  %26 = load i64, i64* %flags.addr, align 8, !dbg !4313
  %27 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4314
  %flags18 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %27, i32 0, i32 9, !dbg !4315
  store i64 %26, i64* %flags18, align 8, !dbg !4316
  %28 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4317
  %tobool19 = icmp ne %struct.gb_interface* %28, null, !dbg !4317
  br i1 %tobool19, label %land.lhs.true20, label %if.end24, !dbg !4319

land.lhs.true20:                                  ; preds = %if.end10
  %29 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4320
  %quirks = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %29, i32 0, i32 16, !dbg !4321
  %30 = load i64, i64* %quirks, align 8, !dbg !4321
  %and = and i64 %30, 1, !dbg !4322
  %tobool21 = icmp ne i64 %and, 0, !dbg !4322
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !4323

if.then22:                                        ; preds = %land.lhs.true20
  %31 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4324
  %flags23 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %31, i32 0, i32 9, !dbg !4325
  %32 = load i64, i64* %flags23, align 8, !dbg !4326
  %or = or i64 %32, 2, !dbg !4326
  store i64 %or, i64* %flags23, align 8, !dbg !4326
  br label %if.end24, !dbg !4324

if.end24:                                         ; preds = %if.then22, %land.lhs.true20, %if.end10
  %33 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4327
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %33, i32 0, i32 12, !dbg !4328
  store i32 0, i32* %state, align 8, !dbg !4329
  %34 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4330
  %op_cycle = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %34, i32 0, i32 16, !dbg !4331
  store %struct.atomic_t* %op_cycle, %struct.atomic_t** %v.addr.i, align 8
  store i32 0, i32* %i.addr.i, align 4
  %35 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4332
  %36 = bitcast %struct.atomic_t* %35 to i8*, !dbg !4332
  store i8* %36, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %37 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4333
  %38 = load i64, i64* %size.addr.i.i, align 8, !dbg !4334
  %conv.i.i = trunc i64 %38 to i32, !dbg !4334
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %37, i32 %conv.i.i) #12, !dbg !4335
  %39 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4336
  %40 = load i64, i64* %size.addr.i.i, align 8, !dbg !4336
  call void @kcsan_check_access(i8* %39, i64 %40, i32 5) #12, !dbg !4336
  %41 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4337
  %42 = load i32, i32* %i.addr.i, align 4, !dbg !4338
  store %struct.atomic_t* %41, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %42, i32* %i.addr.i.i, align 4
  %43 = load i32, i32* %i.addr.i.i, align 4, !dbg !4339
  %44 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4339
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %44, i32 0, i32 0, !dbg !4339
  store volatile i32 %43, i32* %counter.i.i, align 4, !dbg !4339
  br label %do.body, !dbg !4341

do.body:                                          ; preds = %if.end24
  %45 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4342
  %mutex = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %45, i32 0, i32 10, !dbg !4342
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.lock_class_key* @_gb_connection_create.__key) #10, !dbg !4342
  br label %do.end, !dbg !4342

do.end:                                           ; preds = %do.body
  br label %do.body25, !dbg !4344

do.body25:                                        ; preds = %do.end
  %46 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4345
  %lock = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %46, i32 0, i32 11, !dbg !4345
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4346
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !4347
  %rlock.i = bitcast %union.anon.3* %48 to %struct.raw_spinlock*, !dbg !4347
  %49 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4345
  %lock27 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %49, i32 0, i32 11, !dbg !4345
  %50 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4345
  %rlock = bitcast %union.anon.3* %50 to %struct.raw_spinlock*, !dbg !4345
  %51 = bitcast %struct.spinlock* %lock27 to i8*, !dbg !4345
  %52 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 1 %52, i64 0, i1 false), !dbg !4345
  br label %do.end28, !dbg !4345

do.end28:                                         ; preds = %do.body25
  %53 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4348
  %operations = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %53, i32 0, i32 13, !dbg !4349
  call void @INIT_LIST_HEAD(%struct.list_head* %operations) #10, !dbg !4350
  %54 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4351
  %dev29 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %54, i32 0, i32 0, !dbg !4352
  %call30 = call i8* @dev_name(%struct.device* %dev29) #10, !dbg !4353
  %55 = load i32, i32* %hd_cport_id.addr, align 4, !dbg !4354
  %call31 = call %struct.workqueue_struct* (i8*, i32, i32, ...) @alloc_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 2, i32 1, i8* %call30, i32 %55) #10, !dbg !4355
  %56 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4356
  %wq = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %56, i32 0, i32 15, !dbg !4357
  store %struct.workqueue_struct* %call31, %struct.workqueue_struct** %wq, align 8, !dbg !4358
  %57 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4359
  %wq32 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %57, i32 0, i32 15, !dbg !4361
  %58 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq32, align 8, !dbg !4361
  %tobool33 = icmp ne %struct.workqueue_struct* %58, null, !dbg !4359
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !4362

if.then34:                                        ; preds = %do.end28
  store i32 -12, i32* %ret, align 4, !dbg !4363
  br label %err_free_connection, !dbg !4365

if.end35:                                         ; preds = %do.end28
  %59 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4366
  %kref = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %59, i32 0, i32 3, !dbg !4367
  call void @kref_init(%struct.kref* %kref) #10, !dbg !4368
  %60 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4369
  call void @gb_connection_init_name(%struct.gb_connection* %60) #10, !dbg !4370
  store %struct.spinlock* @gb_connections_lock, %struct.spinlock** %lock.addr.i44, align 8
  call void @arch_local_irq_disable() #12, !dbg !4371
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4374, !srcloc !4376
  %61 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i44, align 8, !dbg !4377
  %62 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %61, i32 0, i32 0, !dbg !4377
  %rlock.i45 = bitcast %union.anon.3* %62 to %struct.raw_spinlock*, !dbg !4377
  %63 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4379
  %hd_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %63, i32 0, i32 6, !dbg !4380
  %64 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4381
  %connections = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %64, i32 0, i32 4, !dbg !4382
  call void @list_add(%struct.list_head* %hd_links, %struct.list_head* %connections) #10, !dbg !4383
  %65 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4384
  %tobool36 = icmp ne %struct.gb_bundle* %65, null, !dbg !4384
  br i1 %tobool36, label %if.then37, label %if.else, !dbg !4386

if.then37:                                        ; preds = %if.end35
  %66 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4387
  %bundle_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %66, i32 0, i32 7, !dbg !4388
  %67 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4389
  %connections38 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %67, i32 0, i32 8, !dbg !4390
  call void @list_add(%struct.list_head* %bundle_links, %struct.list_head* %connections38) #10, !dbg !4391
  br label %if.end40, !dbg !4391

if.else:                                          ; preds = %if.end35
  %68 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4392
  %bundle_links39 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %68, i32 0, i32 7, !dbg !4393
  call void @INIT_LIST_HEAD(%struct.list_head* %bundle_links39) #10, !dbg !4394
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  store %struct.spinlock* @gb_connections_lock, %struct.spinlock** %lock.addr.i46, align 8
  call void @arch_local_irq_enable() #12, !dbg !4395
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4398, !srcloc !4400
  %69 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !4401
  %70 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %69, i32 0, i32 0, !dbg !4401
  %rlock.i47 = bitcast %union.anon.3* %70 to %struct.raw_spinlock*, !dbg !4401
  call void @mutex_unlock(%struct.mutex* @gb_connection_mutex) #10, !dbg !4403
  %71 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4404
  call void @trace_gb_connection_create(%struct.gb_connection* %71) #10, !dbg !4405
  %72 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4406
  store %struct.gb_connection* %72, %struct.gb_connection** %retval, align 8, !dbg !4407
  br label %return, !dbg !4407

err_free_connection:                              ; preds = %if.then34
  call void @llvm.dbg.label(metadata !4408), !dbg !4409
  %73 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4410
  %74 = bitcast %struct.gb_connection* %73 to i8*, !dbg !4410
  call void @kfree(i8* %74) #10, !dbg !4411
  br label %err_hd_cport_release, !dbg !4411

err_hd_cport_release:                             ; preds = %err_free_connection, %if.then9
  call void @llvm.dbg.label(metadata !4412), !dbg !4413
  %75 = load %struct.gb_host_device*, %struct.gb_host_device** %hd.addr, align 8, !dbg !4414
  %76 = load i32, i32* %hd_cport_id.addr, align 4, !dbg !4415
  %conv41 = trunc i32 %76 to i16, !dbg !4415
  call void @gb_hd_cport_release(%struct.gb_host_device* %75, i16 zeroext %conv41) #10, !dbg !4416
  br label %err_unlock, !dbg !4416

err_unlock:                                       ; preds = %err_hd_cport_release, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !4417), !dbg !4418
  call void @mutex_unlock(%struct.mutex* @gb_connection_mutex) #10, !dbg !4419
  %77 = load i32, i32* %ret, align 4, !dbg !4420
  %conv42 = sext i32 %77 to i64, !dbg !4420
  %call43 = call i8* @ERR_PTR(i64 %conv42) #10, !dbg !4421
  %78 = bitcast i8* %call43 to %struct.gb_connection*, !dbg !4421
  store %struct.gb_connection* %78, %struct.gb_connection** %retval, align 8, !dbg !4422
  br label %return, !dbg !4422

return:                                           ; preds = %err_unlock, %if.end40
  %79 = load %struct.gb_connection*, %struct.gb_connection** %retval, align 8, !dbg !4423
  ret %struct.gb_connection* %79, !dbg !4423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_connection* @gb_connection_create_control(%struct.gb_interface* %intf) #0 !dbg !4424 {
entry:
  %intf.addr = alloca %struct.gb_interface*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4429
  %hd = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 14, !dbg !4430
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4430
  %2 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !4431
  %call = call %struct.gb_connection* @_gb_connection_create(%struct.gb_host_device* %1, i32 -1, %struct.gb_interface* %2, %struct.gb_bundle* null, i32 0, i32 (%struct.gb_operation*)* null, i64 48) #10, !dbg !4432
  ret %struct.gb_connection* %call, !dbg !4433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_connection* @gb_connection_create(%struct.gb_bundle* %bundle, i16 zeroext %cport_id, i32 (%struct.gb_operation*)* %handler) #0 !dbg !4434 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %cport_id.addr = alloca i16, align 2
  %handler.addr = alloca i32 (%struct.gb_operation*)*, align 8
  %intf = alloca %struct.gb_interface*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  store i32 (%struct.gb_operation*)* %handler, i32 (%struct.gb_operation*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.gb_operation*)** %handler.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !4443, metadata !DIExpression()), !dbg !4444
  %0 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4445
  %intf1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %0, i32 0, i32 1, !dbg !4446
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf1, align 8, !dbg !4446
  store %struct.gb_interface* %1, %struct.gb_interface** %intf, align 8, !dbg !4444
  %2 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4447
  %hd = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %2, i32 0, i32 14, !dbg !4448
  %3 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4448
  %4 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4449
  %5 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4450
  %6 = load i16, i16* %cport_id.addr, align 2, !dbg !4451
  %conv = zext i16 %6 to i32, !dbg !4451
  %7 = load i32 (%struct.gb_operation*)*, i32 (%struct.gb_operation*)** %handler.addr, align 8, !dbg !4452
  %call = call %struct.gb_connection* @_gb_connection_create(%struct.gb_host_device* %3, i32 -1, %struct.gb_interface* %4, %struct.gb_bundle* %5, i32 %conv, i32 (%struct.gb_operation*)* %7, i64 0) #10, !dbg !4453
  ret %struct.gb_connection* %call, !dbg !4454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_connection* @gb_connection_create_flags(%struct.gb_bundle* %bundle, i16 zeroext %cport_id, i32 (%struct.gb_operation*)* %handler, i64 %flags) #0 !dbg !4455 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %cport_id.addr = alloca i16, align 2
  %handler.addr = alloca i32 (%struct.gb_operation*)*, align 8
  %flags.addr = alloca i64, align 8
  %intf = alloca %struct.gb_interface*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  store i32 (%struct.gb_operation*)* %handler, i32 (%struct.gb_operation*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.gb_operation*)** %handler.addr, metadata !4462, metadata !DIExpression()), !dbg !4463
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4464, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !4466, metadata !DIExpression()), !dbg !4467
  %0 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4468
  %intf1 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %0, i32 0, i32 1, !dbg !4469
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf1, align 8, !dbg !4469
  store %struct.gb_interface* %1, %struct.gb_interface** %intf, align 8, !dbg !4467
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4470, metadata !DIExpression()), !dbg !4473
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4473
  %and = and i64 %2, 16, !dbg !4473
  %tobool = icmp ne i64 %and, 0, !dbg !4473
  %lnot = xor i1 %tobool, true, !dbg !4473
  %lnot2 = xor i1 %lnot, true, !dbg !4473
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4473
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4473
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4474
  %tobool3 = icmp ne i32 %3, 0, !dbg !4474
  %lnot4 = xor i1 %tobool3, true, !dbg !4474
  %lnot6 = xor i1 %lnot4, true, !dbg !4474
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4474
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4474
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4474
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4473

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4474

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !4476

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4478

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4476

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 261, i32 2307, i64 12) #5, !dbg !4480, !srcloc !4482
  br label %do.end11, !dbg !4480

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 235) #5, !dbg !4483, !srcloc !4485
  br label %do.body12, !dbg !4476

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4486

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4476

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !4476

if.end:                                           ; preds = %do.end14, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4473
  %tobool15 = icmp ne i32 %4, 0, !dbg !4473
  %lnot16 = xor i1 %tobool15, true, !dbg !4473
  %lnot18 = xor i1 %lnot16, true, !dbg !4473
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !4473
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !4473
  store i64 %conv20, i64* %tmp, align 8, !dbg !4474
  %5 = load i64, i64* %tmp, align 8, !dbg !4473
  %tobool21 = icmp ne i64 %5, 0, !dbg !4488
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !4489

if.then22:                                        ; preds = %if.end
  %6 = load i64, i64* %flags.addr, align 8, !dbg !4490
  %and23 = and i64 %6, -17, !dbg !4490
  store i64 %and23, i64* %flags.addr, align 8, !dbg !4490
  br label %if.end24, !dbg !4491

if.end24:                                         ; preds = %if.then22, %if.end
  %7 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4492
  %hd = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %7, i32 0, i32 14, !dbg !4493
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4493
  %9 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4494
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4495
  %11 = load i16, i16* %cport_id.addr, align 2, !dbg !4496
  %conv25 = zext i16 %11 to i32, !dbg !4496
  %12 = load i32 (%struct.gb_operation*)*, i32 (%struct.gb_operation*)** %handler.addr, align 8, !dbg !4497
  %13 = load i64, i64* %flags.addr, align 8, !dbg !4498
  %call = call %struct.gb_connection* @_gb_connection_create(%struct.gb_host_device* %8, i32 -1, %struct.gb_interface* %9, %struct.gb_bundle* %10, i32 %conv25, i32 (%struct.gb_operation*)* %12, i64 %13) #10, !dbg !4499
  ret %struct.gb_connection* %call, !dbg !4500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.gb_connection* @gb_connection_create_offloaded(%struct.gb_bundle* %bundle, i16 zeroext %cport_id, i64 %flags) #0 !dbg !4501 {
entry:
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %cport_id.addr = alloca i16, align 2
  %flags.addr = alloca i64, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4508, metadata !DIExpression()), !dbg !4509
  %0 = load i64, i64* %flags.addr, align 8, !dbg !4510
  %or = or i64 %0, 4, !dbg !4510
  store i64 %or, i64* %flags.addr, align 8, !dbg !4510
  %1 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4511
  %2 = load i16, i16* %cport_id.addr, align 2, !dbg !4512
  %3 = load i64, i64* %flags.addr, align 8, !dbg !4513
  %call = call %struct.gb_connection* @gb_connection_create_flags(%struct.gb_bundle* %1, i16 zeroext %2, i32 (%struct.gb_operation*)* null, i64 %3) #10, !dbg !4514
  ret %struct.gb_connection* %call, !dbg !4515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_connection_enable(%struct.gb_connection* %connection) #0 !dbg !4516 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4519, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4521, metadata !DIExpression()), !dbg !4522
  store i32 0, i32* %ret, align 4, !dbg !4522
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4523
  %mutex = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 10, !dbg !4524
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !4525
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4526
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 12, !dbg !4528
  %2 = load i32, i32* %state, align 8, !dbg !4528
  %cmp = icmp eq i32 %2, 2, !dbg !4529
  br i1 %cmp, label %if.then, label %if.end, !dbg !4530

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !4531

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4532
  %call = call i32 @_gb_connection_enable(%struct.gb_connection* %3, i1 zeroext true) #10, !dbg !4533
  store i32 %call, i32* %ret, align 4, !dbg !4534
  %4 = load i32, i32* %ret, align 4, !dbg !4535
  %tobool = icmp ne i32 %4, 0, !dbg !4535
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4537

if.then1:                                         ; preds = %if.end
  %5 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4538
  call void @trace_gb_connection_enable(%struct.gb_connection* %5) #10, !dbg !4539
  br label %if.end2, !dbg !4539

if.end2:                                          ; preds = %if.then1, %if.end
  br label %out_unlock, !dbg !4535

out_unlock:                                       ; preds = %if.end2, %if.then
  call void @llvm.dbg.label(metadata !4540), !dbg !4541
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4542
  %mutex3 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 10, !dbg !4543
  call void @mutex_unlock(%struct.mutex* %mutex3) #10, !dbg !4544
  %7 = load i32, i32* %ret, align 4, !dbg !4545
  ret i32 %7, !dbg !4546
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_gb_connection_enable(%struct.gb_connection* %connection, i1 zeroext %rx) #0 !dbg !4547 {
entry:
  %lock.addr.i48 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i48, metadata !4195, metadata !DIExpression()), !dbg !4550
  %lock.addr.i46 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i46, metadata !4201, metadata !DIExpression()), !dbg !4552
  %lock.addr.i44 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i44, metadata !4195, metadata !DIExpression()), !dbg !4554
  %lock.addr.i42 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i42, metadata !4201, metadata !DIExpression()), !dbg !4556
  %lock.addr.i40 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i40, metadata !4195, metadata !DIExpression()), !dbg !4558
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4201, metadata !DIExpression()), !dbg !4562
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %rx.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4564, metadata !DIExpression()), !dbg !4565
  %frombool = zext i1 %rx to i8
  store i8 %frombool, i8* %rx.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rx.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4568, metadata !DIExpression()), !dbg !4569
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4570
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 12, !dbg !4571
  %1 = load i32, i32* %state, align 8, !dbg !4571
  %cmp = icmp eq i32 %1, 1, !dbg !4572
  br i1 %cmp, label %if.then, label %if.end5, !dbg !4573

if.then:                                          ; preds = %entry
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4574
  %handler = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %2, i32 0, i32 8, !dbg !4576
  %3 = load i32 (%struct.gb_operation*)*, i32 (%struct.gb_operation*)** %handler, align 8, !dbg !4576
  %tobool = icmp ne i32 (%struct.gb_operation*)* %3, null, !dbg !4574
  br i1 %tobool, label %land.lhs.true, label %if.then2, !dbg !4577

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8, i8* %rx.addr, align 1, !dbg !4578
  %tobool1 = trunc i8 %4 to i1, !dbg !4578
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4579

if.then2:                                         ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %retval, align 4, !dbg !4580
  br label %return, !dbg !4580

if.end:                                           ; preds = %land.lhs.true
  %5 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4581
  %lock = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %5, i32 0, i32 11, !dbg !4582
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !4583
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4584, !srcloc !4376
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4585
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4585
  %rlock.i = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !4585
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4586
  %state3 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 12, !dbg !4587
  store i32 2, i32* %state3, align 8, !dbg !4588
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4589
  %lock4 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 11, !dbg !4590
  store %struct.spinlock* %lock4, %struct.spinlock** %lock.addr.i40, align 8
  call void @arch_local_irq_enable() #12, !dbg !4591
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4592, !srcloc !4400
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i40, align 8, !dbg !4593
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4593
  %rlock.i41 = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !4593
  store i32 0, i32* %retval, align 4, !dbg !4594
  br label %return, !dbg !4594

if.end5:                                          ; preds = %entry
  %12 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4595
  %call = call i32 @gb_connection_hd_cport_enable(%struct.gb_connection* %12) #10, !dbg !4596
  store i32 %call, i32* %ret, align 4, !dbg !4597
  %13 = load i32, i32* %ret, align 4, !dbg !4598
  %tobool6 = icmp ne i32 %13, 0, !dbg !4598
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4600

if.then7:                                         ; preds = %if.end5
  %14 = load i32, i32* %ret, align 4, !dbg !4601
  store i32 %14, i32* %retval, align 4, !dbg !4602
  br label %return, !dbg !4602

if.end8:                                          ; preds = %if.end5
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4603
  %call9 = call i32 @gb_connection_svc_connection_create(%struct.gb_connection* %15) #10, !dbg !4604
  store i32 %call9, i32* %ret, align 4, !dbg !4605
  %16 = load i32, i32* %ret, align 4, !dbg !4606
  %tobool10 = icmp ne i32 %16, 0, !dbg !4606
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4608

if.then11:                                        ; preds = %if.end8
  br label %err_hd_cport_clear, !dbg !4609

if.end12:                                         ; preds = %if.end8
  %17 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4610
  %call13 = call i32 @gb_connection_hd_cport_connected(%struct.gb_connection* %17) #10, !dbg !4611
  store i32 %call13, i32* %ret, align 4, !dbg !4612
  %18 = load i32, i32* %ret, align 4, !dbg !4613
  %tobool14 = icmp ne i32 %18, 0, !dbg !4613
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4615

if.then15:                                        ; preds = %if.end12
  br label %err_svc_connection_destroy, !dbg !4616

if.end16:                                         ; preds = %if.end12
  %19 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4617
  %lock17 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %19, i32 0, i32 11, !dbg !4618
  store %struct.spinlock* %lock17, %struct.spinlock** %lock.addr.i42, align 8
  call void @arch_local_irq_disable() #12, !dbg !4619
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4620, !srcloc !4376
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i42, align 8, !dbg !4621
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !4621
  %rlock.i43 = bitcast %union.anon.3* %21 to %struct.raw_spinlock*, !dbg !4621
  %22 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4622
  %handler18 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %22, i32 0, i32 8, !dbg !4624
  %23 = load i32 (%struct.gb_operation*)*, i32 (%struct.gb_operation*)** %handler18, align 8, !dbg !4624
  %tobool19 = icmp ne i32 (%struct.gb_operation*)* %23, null, !dbg !4622
  br i1 %tobool19, label %land.lhs.true20, label %if.else, !dbg !4625

land.lhs.true20:                                  ; preds = %if.end16
  %24 = load i8, i8* %rx.addr, align 1, !dbg !4626
  %tobool21 = trunc i8 %24 to i1, !dbg !4626
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !4627

if.then22:                                        ; preds = %land.lhs.true20
  %25 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4628
  %state23 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %25, i32 0, i32 12, !dbg !4629
  store i32 2, i32* %state23, align 8, !dbg !4630
  br label %if.end25, !dbg !4628

if.else:                                          ; preds = %land.lhs.true20, %if.end16
  %26 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4631
  %state24 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %26, i32 0, i32 12, !dbg !4632
  store i32 1, i32* %state24, align 8, !dbg !4633
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  %27 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4634
  %lock26 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %27, i32 0, i32 11, !dbg !4635
  store %struct.spinlock* %lock26, %struct.spinlock** %lock.addr.i44, align 8
  call void @arch_local_irq_enable() #12, !dbg !4636
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4637, !srcloc !4400
  %28 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i44, align 8, !dbg !4638
  %29 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %28, i32 0, i32 0, !dbg !4638
  %rlock.i45 = bitcast %union.anon.3* %29 to %struct.raw_spinlock*, !dbg !4638
  %30 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4639
  %call27 = call i32 @gb_connection_control_connected(%struct.gb_connection* %30) #10, !dbg !4640
  store i32 %call27, i32* %ret, align 4, !dbg !4641
  %31 = load i32, i32* %ret, align 4, !dbg !4642
  %tobool28 = icmp ne i32 %31, 0, !dbg !4642
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4644

if.then29:                                        ; preds = %if.end25
  br label %err_control_disconnecting, !dbg !4645

if.end30:                                         ; preds = %if.end25
  store i32 0, i32* %retval, align 4, !dbg !4646
  br label %return, !dbg !4646

err_control_disconnecting:                        ; preds = %if.then29
  call void @llvm.dbg.label(metadata !4647), !dbg !4648
  %32 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4649
  %lock31 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %32, i32 0, i32 11, !dbg !4650
  store %struct.spinlock* %lock31, %struct.spinlock** %lock.addr.i46, align 8
  call void @arch_local_irq_disable() #12, !dbg !4651
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4652, !srcloc !4376
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i46, align 8, !dbg !4653
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4653
  %rlock.i47 = bitcast %union.anon.3* %34 to %struct.raw_spinlock*, !dbg !4653
  %35 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4654
  %state32 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %35, i32 0, i32 12, !dbg !4655
  store i32 3, i32* %state32, align 8, !dbg !4656
  %36 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4657
  call void @gb_connection_cancel_operations(%struct.gb_connection* %36, i32 -108) #10, !dbg !4658
  %37 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4659
  %lock33 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %37, i32 0, i32 11, !dbg !4660
  store %struct.spinlock* %lock33, %struct.spinlock** %lock.addr.i48, align 8
  call void @arch_local_irq_enable() #12, !dbg !4661
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4662, !srcloc !4400
  %38 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i48, align 8, !dbg !4663
  %39 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %38, i32 0, i32 0, !dbg !4663
  %rlock.i49 = bitcast %union.anon.3* %39 to %struct.raw_spinlock*, !dbg !4663
  %40 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4664
  %call34 = call i32 @gb_connection_hd_cport_flush(%struct.gb_connection* %40) #10, !dbg !4665
  %41 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4666
  call void @gb_connection_control_disconnecting(%struct.gb_connection* %41) #10, !dbg !4667
  %42 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4668
  %call35 = call i32 @gb_connection_cport_shutdown_phase_1(%struct.gb_connection* %42) #10, !dbg !4669
  %43 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4670
  %call36 = call i32 @gb_connection_hd_cport_quiesce(%struct.gb_connection* %43) #10, !dbg !4671
  %44 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4672
  %call37 = call i32 @gb_connection_cport_shutdown_phase_2(%struct.gb_connection* %44) #10, !dbg !4673
  %45 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4674
  call void @gb_connection_control_disconnected(%struct.gb_connection* %45) #10, !dbg !4675
  %46 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4676
  %state38 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %46, i32 0, i32 12, !dbg !4677
  store i32 0, i32* %state38, align 8, !dbg !4678
  br label %err_svc_connection_destroy, !dbg !4676

err_svc_connection_destroy:                       ; preds = %err_control_disconnecting, %if.then15
  call void @llvm.dbg.label(metadata !4679), !dbg !4680
  %47 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4681
  call void @gb_connection_svc_connection_destroy(%struct.gb_connection* %47) #10, !dbg !4682
  br label %err_hd_cport_clear, !dbg !4682

err_hd_cport_clear:                               ; preds = %err_svc_connection_destroy, %if.then11
  call void @llvm.dbg.label(metadata !4683), !dbg !4684
  %48 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4685
  %call39 = call i32 @gb_connection_hd_cport_clear(%struct.gb_connection* %48) #10, !dbg !4686
  %49 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4687
  call void @gb_connection_hd_cport_disable(%struct.gb_connection* %49) #10, !dbg !4688
  %50 = load i32, i32* %ret, align 4, !dbg !4689
  store i32 %50, i32* %retval, align 4, !dbg !4690
  br label %return, !dbg !4690

return:                                           ; preds = %err_hd_cport_clear, %if.end30, %if.then7, %if.end, %if.then2
  %51 = load i32, i32* %retval, align 4, !dbg !4691
  ret i32 %51, !dbg !4691
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_connection_enable(%struct.gb_connection* %connection) #0 !dbg !4692 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  ret void, !dbg !4694
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gb_connection_enable_tx(%struct.gb_connection* %connection) #0 !dbg !4695 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4696, metadata !DIExpression()), !dbg !4697
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4698, metadata !DIExpression()), !dbg !4699
  store i32 0, i32* %ret, align 4, !dbg !4699
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4700
  %mutex = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 10, !dbg !4701
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !4702
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4703
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 12, !dbg !4705
  %2 = load i32, i32* %state, align 8, !dbg !4705
  %cmp = icmp eq i32 %2, 2, !dbg !4706
  br i1 %cmp, label %if.then, label %if.end, !dbg !4707

if.then:                                          ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !4708
  br label %out_unlock, !dbg !4710

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4711
  %state1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %3, i32 0, i32 12, !dbg !4713
  %4 = load i32, i32* %state1, align 8, !dbg !4713
  %cmp2 = icmp eq i32 %4, 1, !dbg !4714
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4715

if.then3:                                         ; preds = %if.end
  br label %out_unlock, !dbg !4716

if.end4:                                          ; preds = %if.end
  %5 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4717
  %call = call i32 @_gb_connection_enable(%struct.gb_connection* %5, i1 zeroext false) #10, !dbg !4718
  store i32 %call, i32* %ret, align 4, !dbg !4719
  %6 = load i32, i32* %ret, align 4, !dbg !4720
  %tobool = icmp ne i32 %6, 0, !dbg !4720
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !4722

if.then5:                                         ; preds = %if.end4
  %7 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4723
  call void @trace_gb_connection_enable(%struct.gb_connection* %7) #10, !dbg !4724
  br label %if.end6, !dbg !4724

if.end6:                                          ; preds = %if.then5, %if.end4
  br label %out_unlock, !dbg !4720

out_unlock:                                       ; preds = %if.end6, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !4725), !dbg !4726
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4727
  %mutex7 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 10, !dbg !4728
  call void @mutex_unlock(%struct.mutex* %mutex7) #10, !dbg !4729
  %9 = load i32, i32* %ret, align 4, !dbg !4730
  ret i32 %9, !dbg !4731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_disable_rx(%struct.gb_connection* %connection) #0 !dbg !4732 {
entry:
  %lock.addr.i7 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i7, metadata !4195, metadata !DIExpression()), !dbg !4733
  %lock.addr.i5 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i5, metadata !4195, metadata !DIExpression()), !dbg !4735
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4201, metadata !DIExpression()), !dbg !4739
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4741, metadata !DIExpression()), !dbg !4742
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4743
  %mutex = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 10, !dbg !4744
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !4745
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4746
  %lock = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 11, !dbg !4747
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !4748
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4749, !srcloc !4376
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4750
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4750
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !4750
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4751
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 12, !dbg !4752
  %5 = load i32, i32* %state, align 8, !dbg !4752
  %cmp = icmp ne i32 %5, 2, !dbg !4753
  br i1 %cmp, label %if.then, label %if.end, !dbg !4754

if.then:                                          ; preds = %entry
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4755
  %lock1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %6, i32 0, i32 11, !dbg !4756
  store %struct.spinlock* %lock1, %struct.spinlock** %lock.addr.i5, align 8
  call void @arch_local_irq_enable() #12, !dbg !4757
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4758, !srcloc !4400
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i5, align 8, !dbg !4759
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !4759
  %rlock.i6 = bitcast %union.anon.3* %8 to %struct.raw_spinlock*, !dbg !4759
  br label %out_unlock, !dbg !4760

if.end:                                           ; preds = %entry
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4761
  %state2 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 12, !dbg !4762
  store i32 1, i32* %state2, align 8, !dbg !4763
  %10 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4764
  call void @gb_connection_flush_incoming_operations(%struct.gb_connection* %10, i32 -108) #10, !dbg !4765
  %11 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4766
  %lock3 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %11, i32 0, i32 11, !dbg !4767
  store %struct.spinlock* %lock3, %struct.spinlock** %lock.addr.i7, align 8
  call void @arch_local_irq_enable() #12, !dbg !4768
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4769, !srcloc !4400
  %12 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i7, align 8, !dbg !4770
  %13 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %12, i32 0, i32 0, !dbg !4770
  %rlock.i8 = bitcast %union.anon.3* %13 to %struct.raw_spinlock*, !dbg !4770
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4771
  call void @trace_gb_connection_disable(%struct.gb_connection* %14) #10, !dbg !4772
  br label %out_unlock, !dbg !4772

out_unlock:                                       ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !4773), !dbg !4774
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4775
  %mutex4 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %15, i32 0, i32 10, !dbg !4776
  call void @mutex_unlock(%struct.mutex* %mutex4) #10, !dbg !4777
  ret void, !dbg !4778
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_flush_incoming_operations(%struct.gb_connection* %connection, i32 %errno) #0 !dbg !4779 {
entry:
  %lock.addr.i16 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i16, metadata !4201, metadata !DIExpression()), !dbg !4782
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4195, metadata !DIExpression()), !dbg !4785
  %connection.addr = alloca %struct.gb_connection*, align 8
  %errno.addr = alloca i32, align 4
  %operation = alloca %struct.gb_operation*, align 8
  %incoming = alloca i8, align 1
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_operation*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp10 = alloca %struct.gb_operation*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4787, metadata !DIExpression()), !dbg !4788
  store i32 %errno, i32* %errno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %errno.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation, metadata !4791, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.declare(metadata i8* %incoming, metadata !4793, metadata !DIExpression()), !dbg !4794
  br label %while.cond, !dbg !4795

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4796
  %operations = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 13, !dbg !4797
  %call = call i32 @list_empty(%struct.list_head* %operations) #10, !dbg !4798
  %tobool = icmp ne i32 %call, 0, !dbg !4799
  %lnot = xor i1 %tobool, true, !dbg !4799
  br i1 %lnot, label %while.body, label %while.end, !dbg !4795

while.body:                                       ; preds = %while.cond
  store i8 0, i8* %incoming, align 1, !dbg !4800
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4801, metadata !DIExpression()), !dbg !4804
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4804
  %operations1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 13, !dbg !4804
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %operations1, i32 0, i32 0, !dbg !4804
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4804
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4804
  store i8* %3, i8** %__mptr, align 8, !dbg !4804
  br label %do.body, !dbg !4804

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !4805

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4804
  %add.ptr = getelementptr i8, i8* %4, i64 -160, !dbg !4804
  %5 = bitcast i8* %add.ptr to %struct.gb_operation*, !dbg !4804
  store %struct.gb_operation* %5, %struct.gb_operation** %tmp, align 8, !dbg !4805
  %6 = load %struct.gb_operation*, %struct.gb_operation** %tmp, align 8, !dbg !4804
  store %struct.gb_operation* %6, %struct.gb_operation** %operation, align 8, !dbg !4807
  br label %for.cond, !dbg !4807

for.cond:                                         ; preds = %do.end9, %do.end
  %7 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4808
  %links = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %7, i32 0, i32 14, !dbg !4808
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4808
  %operations2 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 13, !dbg !4808
  %cmp = icmp eq %struct.list_head* %links, %operations2, !dbg !4808
  %lnot3 = xor i1 %cmp, true, !dbg !4808
  br i1 %lnot3, label %for.body, label %for.end, !dbg !4807

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4810
  %call4 = call zeroext i1 @gb_operation_is_incoming(%struct.gb_operation* %9) #10, !dbg !4813
  br i1 %call4, label %if.then, label %if.end, !dbg !4814

if.then:                                          ; preds = %for.body
  %10 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4815
  call void @gb_operation_get(%struct.gb_operation* %10) #10, !dbg !4817
  store i8 1, i8* %incoming, align 1, !dbg !4818
  br label %for.end, !dbg !4819

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4820

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !4821, metadata !DIExpression()), !dbg !4823
  %11 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4823
  %links6 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %11, i32 0, i32 14, !dbg !4823
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %links6, i32 0, i32 0, !dbg !4823
  %12 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !4823
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !4823
  store i8* %13, i8** %__mptr5, align 8, !dbg !4823
  br label %do.body8, !dbg !4823

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !4824

do.end9:                                          ; preds = %do.body8
  %14 = load i8*, i8** %__mptr5, align 8, !dbg !4823
  %add.ptr11 = getelementptr i8, i8* %14, i64 -160, !dbg !4823
  %15 = bitcast i8* %add.ptr11 to %struct.gb_operation*, !dbg !4823
  store %struct.gb_operation* %15, %struct.gb_operation** %tmp10, align 8, !dbg !4824
  %16 = load %struct.gb_operation*, %struct.gb_operation** %tmp10, align 8, !dbg !4823
  store %struct.gb_operation* %16, %struct.gb_operation** %operation, align 8, !dbg !4808
  br label %for.cond, !dbg !4808, !llvm.loop !4826

for.end:                                          ; preds = %if.then, %for.cond
  %17 = load i8, i8* %incoming, align 1, !dbg !4828
  %tobool12 = trunc i8 %17 to i1, !dbg !4828
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4830

if.then13:                                        ; preds = %for.end
  br label %while.end, !dbg !4831

if.end14:                                         ; preds = %for.end
  %18 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4832
  %lock = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 11, !dbg !4833
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_enable() #12, !dbg !4834
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4835, !srcloc !4400
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4836
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !4836
  %rlock.i = bitcast %union.anon.3* %20 to %struct.raw_spinlock*, !dbg !4836
  %21 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4837
  %22 = load i32, i32* %errno.addr, align 4, !dbg !4838
  call void @gb_operation_cancel_incoming(%struct.gb_operation* %21, i32 %22) #10, !dbg !4839
  %23 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !4840
  call void @gb_operation_put(%struct.gb_operation* %23) #10, !dbg !4841
  %24 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4842
  %lock15 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %24, i32 0, i32 11, !dbg !4843
  store %struct.spinlock* %lock15, %struct.spinlock** %lock.addr.i16, align 8
  call void @arch_local_irq_disable() #12, !dbg !4844
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4845, !srcloc !4376
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i16, align 8, !dbg !4846
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !4846
  %rlock.i17 = bitcast %union.anon.3* %26 to %struct.raw_spinlock*, !dbg !4846
  br label %while.cond, !dbg !4795, !llvm.loop !4847

while.end:                                        ; preds = %if.then13, %while.cond
  ret void, !dbg !4849
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_connection_disable(%struct.gb_connection* %connection) #0 !dbg !4850 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  ret void, !dbg !4852
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_mode_switch_prepare(%struct.gb_connection* %connection) #0 !dbg !4853 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4856
  %mode_switch = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 18, !dbg !4857
  store i8 1, i8* %mode_switch, align 8, !dbg !4858
  ret void, !dbg !4859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_mode_switch_complete(%struct.gb_connection* %connection) #0 !dbg !4860 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4861, metadata !DIExpression()), !dbg !4862
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4863
  call void @gb_connection_svc_connection_destroy(%struct.gb_connection* %0) #10, !dbg !4864
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4865
  %call = call i32 @gb_connection_hd_cport_clear(%struct.gb_connection* %1) #10, !dbg !4866
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4867
  call void @gb_connection_hd_cport_disable(%struct.gb_connection* %2) #10, !dbg !4868
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4869
  %mode_switch = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %3, i32 0, i32 18, !dbg !4870
  store i8 0, i8* %mode_switch, align 8, !dbg !4871
  ret void, !dbg !4872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_svc_connection_destroy(%struct.gb_connection* %connection) #0 !dbg !4873 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4876
  %call = call zeroext i1 @gb_connection_is_static(%struct.gb_connection* %0) #10, !dbg !4878
  br i1 %call, label %if.then, label %if.end, !dbg !4879

if.then:                                          ; preds = %entry
  br label %return, !dbg !4880

if.end:                                           ; preds = %entry
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4881
  %hd = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 0, !dbg !4882
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4882
  %svc = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 8, !dbg !4883
  %3 = load %struct.gb_svc*, %struct.gb_svc** %svc, align 8, !dbg !4883
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4884
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 0, !dbg !4885
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !4885
  %svc2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 8, !dbg !4886
  %6 = load %struct.gb_svc*, %struct.gb_svc** %svc2, align 8, !dbg !4886
  %ap_intf_id = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %6, i32 0, i32 7, !dbg !4887
  %7 = load i8, i8* %ap_intf_id, align 2, !dbg !4887
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4888
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 4, !dbg !4889
  %9 = load i16, i16* %hd_cport_id, align 4, !dbg !4889
  %10 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4890
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 1, !dbg !4891
  %11 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4891
  %interface_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %11, i32 0, i32 5, !dbg !4892
  %12 = load i8, i8* %interface_id, align 8, !dbg !4892
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4893
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 5, !dbg !4894
  %14 = load i16, i16* %intf_cport_id, align 2, !dbg !4894
  call void @gb_svc_connection_destroy(%struct.gb_svc* %3, i8 zeroext %7, i16 zeroext %9, i8 zeroext %12, i16 zeroext %14) #10, !dbg !4895
  br label %return, !dbg !4896

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4896
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_hd_cport_clear(%struct.gb_connection* %connection) #0 !dbg !4897 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !4900, metadata !DIExpression()), !dbg !4901
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4902
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !4903
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !4903
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !4901
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4904, metadata !DIExpression()), !dbg !4905
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4906
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !4908
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !4908
  %cport_clear = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 9, !dbg !4909
  %4 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_clear, align 8, !dbg !4909
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16)* %4, null, !dbg !4906
  br i1 %tobool, label %if.end, label %if.then, !dbg !4910

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4912
  %driver2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 2, !dbg !4913
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver2, align 8, !dbg !4913
  %cport_clear3 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 9, !dbg !4914
  %7 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_clear3, align 8, !dbg !4914
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4915
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4916
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 4, !dbg !4917
  %10 = load i16, i16* %hd_cport_id, align 4, !dbg !4917
  %call = call i32 %7(%struct.gb_host_device* %8, i16 zeroext %10) #10, !dbg !4912
  store i32 %call, i32* %ret, align 4, !dbg !4918
  %11 = load i32, i32* %ret, align 4, !dbg !4919
  %tobool4 = icmp ne i32 %11, 0, !dbg !4919
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4921

if.then5:                                         ; preds = %if.end
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4922
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %12, i32 0, i32 0, !dbg !4922
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4922
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 14, !dbg !4922
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4922
  %14 = load i32, i32* %ret, align 4, !dbg !4922
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* %arraydecay, i32 %14) #11, !dbg !4922
  %15 = load i32, i32* %ret, align 4, !dbg !4924
  store i32 %15, i32* %retval, align 4, !dbg !4925
  br label %return, !dbg !4925

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4927
  ret i32 %16, !dbg !4927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_hd_cport_disable(%struct.gb_connection* %connection) #0 !dbg !4928 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !4931, metadata !DIExpression()), !dbg !4932
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4933
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !4934
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !4934
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !4932
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4935, metadata !DIExpression()), !dbg !4936
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4937
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !4939
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !4939
  %cport_disable = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 4, !dbg !4940
  %4 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_disable, align 8, !dbg !4940
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16)* %4, null, !dbg !4937
  br i1 %tobool, label %if.end, label %if.then, !dbg !4941

if.then:                                          ; preds = %entry
  br label %if.end6, !dbg !4942

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4943
  %driver2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 2, !dbg !4944
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver2, align 8, !dbg !4944
  %cport_disable3 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 4, !dbg !4945
  %7 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_disable3, align 8, !dbg !4945
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4946
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4947
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 4, !dbg !4948
  %10 = load i16, i16* %hd_cport_id, align 4, !dbg !4948
  %call = call i32 %7(%struct.gb_host_device* %8, i16 zeroext %10) #10, !dbg !4943
  store i32 %call, i32* %ret, align 4, !dbg !4949
  %11 = load i32, i32* %ret, align 4, !dbg !4950
  %tobool4 = icmp ne i32 %11, 0, !dbg !4950
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4952

if.then5:                                         ; preds = %if.end
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4953
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %12, i32 0, i32 0, !dbg !4953
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4953
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 14, !dbg !4953
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4953
  %14 = load i32, i32* %ret, align 4, !dbg !4953
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %arraydecay, i32 %14) #11, !dbg !4953
  br label %if.end6, !dbg !4955

if.end6:                                          ; preds = %if.then, %if.then5, %if.end
  ret void, !dbg !4956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_disable(%struct.gb_connection* %connection) #0 !dbg !4957 {
entry:
  %lock.addr.i11 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i11, metadata !4195, metadata !DIExpression()), !dbg !4958
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4201, metadata !DIExpression()), !dbg !4960
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4964
  %mutex = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 10, !dbg !4965
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !4966
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4967
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 12, !dbg !4969
  %2 = load i32, i32* %state, align 8, !dbg !4969
  %cmp = icmp eq i32 %2, 0, !dbg !4970
  br i1 %cmp, label %if.then, label %if.end, !dbg !4971

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !4972

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4973
  call void @trace_gb_connection_disable(%struct.gb_connection* %3) #10, !dbg !4974
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4975
  %lock = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 11, !dbg !4976
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !4977
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4978, !srcloc !4376
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4979
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !4979
  %rlock.i = bitcast %union.anon.3* %6 to %struct.raw_spinlock*, !dbg !4979
  %7 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4980
  %state1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %7, i32 0, i32 12, !dbg !4981
  store i32 3, i32* %state1, align 8, !dbg !4982
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4983
  call void @gb_connection_cancel_operations(%struct.gb_connection* %8, i32 -108) #10, !dbg !4984
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4985
  %lock2 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 11, !dbg !4986
  store %struct.spinlock* %lock2, %struct.spinlock** %lock.addr.i11, align 8
  call void @arch_local_irq_enable() #12, !dbg !4987
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4988, !srcloc !4400
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i11, align 8, !dbg !4989
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !4989
  %rlock.i12 = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !4989
  %12 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4990
  %call = call i32 @gb_connection_hd_cport_flush(%struct.gb_connection* %12) #10, !dbg !4991
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4992
  call void @gb_connection_control_disconnecting(%struct.gb_connection* %13) #10, !dbg !4993
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4994
  %call3 = call i32 @gb_connection_cport_shutdown_phase_1(%struct.gb_connection* %14) #10, !dbg !4995
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4996
  %call4 = call i32 @gb_connection_hd_cport_quiesce(%struct.gb_connection* %15) #10, !dbg !4997
  %16 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !4998
  %call5 = call i32 @gb_connection_cport_shutdown_phase_2(%struct.gb_connection* %16) #10, !dbg !4999
  %17 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5000
  call void @gb_connection_control_disconnected(%struct.gb_connection* %17) #10, !dbg !5001
  %18 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5002
  %state6 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 12, !dbg !5003
  store i32 0, i32* %state6, align 8, !dbg !5004
  %19 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5005
  %mode_switch = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %19, i32 0, i32 18, !dbg !5007
  %20 = load i8, i8* %mode_switch, align 8, !dbg !5007
  %tobool = trunc i8 %20 to i1, !dbg !5007
  br i1 %tobool, label %if.end9, label %if.then7, !dbg !5008

if.then7:                                         ; preds = %if.end
  %21 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5009
  call void @gb_connection_svc_connection_destroy(%struct.gb_connection* %21) #10, !dbg !5011
  %22 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5012
  %call8 = call i32 @gb_connection_hd_cport_clear(%struct.gb_connection* %22) #10, !dbg !5013
  %23 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5014
  call void @gb_connection_hd_cport_disable(%struct.gb_connection* %23) #10, !dbg !5015
  br label %if.end9, !dbg !5016

if.end9:                                          ; preds = %if.then7, %if.end
  br label %out_unlock, !dbg !5007

out_unlock:                                       ; preds = %if.end9, %if.then
  call void @llvm.dbg.label(metadata !5017), !dbg !5018
  %24 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5019
  %mutex10 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %24, i32 0, i32 10, !dbg !5020
  call void @mutex_unlock(%struct.mutex* %mutex10) #10, !dbg !5021
  ret void, !dbg !5022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_cancel_operations(%struct.gb_connection* %connection, i32 %errno) #0 !dbg !5023 {
entry:
  %lock.addr.i4 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i4, metadata !4201, metadata !DIExpression()), !dbg !5024
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4195, metadata !DIExpression()), !dbg !5027
  %connection.addr = alloca %struct.gb_connection*, align 8
  %errno.addr = alloca i32, align 4
  %operation = alloca %struct.gb_operation*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_operation*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  store i32 %errno, i32* %errno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %errno.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation, metadata !5033, metadata !DIExpression()), !dbg !5034
  br label %while.cond, !dbg !5035

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5036
  %operations = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 13, !dbg !5037
  %call = call i32 @list_empty(%struct.list_head* %operations) #10, !dbg !5038
  %tobool = icmp ne i32 %call, 0, !dbg !5039
  %lnot = xor i1 %tobool, true, !dbg !5039
  br i1 %lnot, label %while.body, label %while.end, !dbg !5035

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5040, metadata !DIExpression()), !dbg !5042
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5042
  %operations1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 13, !dbg !5042
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %operations1, i32 0, i32 1, !dbg !5042
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5042
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !5042
  store i8* %3, i8** %__mptr, align 8, !dbg !5042
  br label %do.body, !dbg !5042

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !5043

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5042
  %add.ptr = getelementptr i8, i8* %4, i64 -160, !dbg !5042
  %5 = bitcast i8* %add.ptr to %struct.gb_operation*, !dbg !5042
  store %struct.gb_operation* %5, %struct.gb_operation** %tmp, align 8, !dbg !5043
  %6 = load %struct.gb_operation*, %struct.gb_operation** %tmp, align 8, !dbg !5042
  store %struct.gb_operation* %6, %struct.gb_operation** %operation, align 8, !dbg !5045
  %7 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !5046
  call void @gb_operation_get(%struct.gb_operation* %7) #10, !dbg !5047
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5048
  %lock = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 11, !dbg !5049
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_enable() #12, !dbg !5050
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5051, !srcloc !4400
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5052
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !5052
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !5052
  %11 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !5053
  %call2 = call zeroext i1 @gb_operation_is_incoming(%struct.gb_operation* %11) #10, !dbg !5055
  br i1 %call2, label %if.then, label %if.else, !dbg !5056

if.then:                                          ; preds = %do.end
  %12 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !5057
  %13 = load i32, i32* %errno.addr, align 4, !dbg !5058
  call void @gb_operation_cancel_incoming(%struct.gb_operation* %12, i32 %13) #10, !dbg !5059
  br label %if.end, !dbg !5059

if.else:                                          ; preds = %do.end
  %14 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !5060
  %15 = load i32, i32* %errno.addr, align 4, !dbg !5061
  call void @gb_operation_cancel(%struct.gb_operation* %14, i32 %15) #10, !dbg !5062
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !5063
  call void @gb_operation_put(%struct.gb_operation* %16) #10, !dbg !5064
  %17 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5065
  %lock3 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %17, i32 0, i32 11, !dbg !5066
  store %struct.spinlock* %lock3, %struct.spinlock** %lock.addr.i4, align 8
  call void @arch_local_irq_disable() #12, !dbg !5067
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5068, !srcloc !4376
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i4, align 8, !dbg !5069
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !5069
  %rlock.i5 = bitcast %union.anon.3* %19 to %struct.raw_spinlock*, !dbg !5069
  br label %while.cond, !dbg !5035, !llvm.loop !5070

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_hd_cport_flush(%struct.gb_connection* %connection) #0 !dbg !5073 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5074, metadata !DIExpression()), !dbg !5075
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !5076, metadata !DIExpression()), !dbg !5077
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5078
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !5079
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !5079
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !5077
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5080, metadata !DIExpression()), !dbg !5081
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5082
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !5084
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !5084
  %cport_flush = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 6, !dbg !5085
  %4 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_flush, align 8, !dbg !5085
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16)* %4, null, !dbg !5082
  br i1 %tobool, label %if.end, label %if.then, !dbg !5086

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5088
  %driver2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 2, !dbg !5089
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver2, align 8, !dbg !5089
  %cport_flush3 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 6, !dbg !5090
  %7 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_flush3, align 8, !dbg !5090
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5091
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5092
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 4, !dbg !5093
  %10 = load i16, i16* %hd_cport_id, align 4, !dbg !5093
  %call = call i32 %7(%struct.gb_host_device* %8, i16 zeroext %10) #10, !dbg !5088
  store i32 %call, i32* %ret, align 4, !dbg !5094
  %11 = load i32, i32* %ret, align 4, !dbg !5095
  %tobool4 = icmp ne i32 %11, 0, !dbg !5095
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5097

if.then5:                                         ; preds = %if.end
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5098
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %12, i32 0, i32 0, !dbg !5098
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5098
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 14, !dbg !5098
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !5098
  %14 = load i32, i32* %ret, align 4, !dbg !5098
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i8* %arraydecay, i32 %14) #11, !dbg !5098
  %15 = load i32, i32* %ret, align 4, !dbg !5100
  store i32 %15, i32* %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5102
  br label %return, !dbg !5102

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !5103
  ret i32 %16, !dbg !5103
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_control_disconnecting(%struct.gb_connection* %connection) #0 !dbg !5104 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %control = alloca %struct.gb_control*, align 8
  %cport_id = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !5107, metadata !DIExpression()), !dbg !5108
  call void @llvm.dbg.declare(metadata i16* %cport_id, metadata !5109, metadata !DIExpression()), !dbg !5110
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5111
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 5, !dbg !5112
  %1 = load i16, i16* %intf_cport_id, align 2, !dbg !5112
  store i16 %1, i16* %cport_id, align 2, !dbg !5110
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5113, metadata !DIExpression()), !dbg !5114
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5115
  %call = call zeroext i1 @gb_connection_is_static(%struct.gb_connection* %2) #10, !dbg !5117
  br i1 %call, label %if.then, label %if.end, !dbg !5118

if.then:                                          ; preds = %entry
  br label %if.end4, !dbg !5119

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5120
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %3, i32 0, i32 1, !dbg !5121
  %4 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5121
  %control1 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %4, i32 0, i32 1, !dbg !5122
  %5 = load %struct.gb_control*, %struct.gb_control** %control1, align 8, !dbg !5122
  store %struct.gb_control* %5, %struct.gb_control** %control, align 8, !dbg !5123
  %6 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !5124
  %7 = load i16, i16* %cport_id, align 2, !dbg !5125
  %call2 = call i32 @gb_control_disconnecting_operation(%struct.gb_control* %6, i16 zeroext %7) #10, !dbg !5126
  store i32 %call2, i32* %ret, align 4, !dbg !5127
  %8 = load i32, i32* %ret, align 4, !dbg !5128
  %tobool = icmp ne i32 %8, 0, !dbg !5128
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !5130

if.then3:                                         ; preds = %if.end
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5131
  %hd = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 0, !dbg !5131
  %10 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5131
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %10, i32 0, i32 0, !dbg !5131
  %11 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5131
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %11, i32 0, i32 14, !dbg !5131
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !5131
  %12 = load i32, i32* %ret, align 4, !dbg !5131
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8* %arraydecay, i32 %12) #11, !dbg !5131
  br label %if.end4, !dbg !5133

if.end4:                                          ; preds = %if.then, %if.then3, %if.end
  ret void, !dbg !5134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_cport_shutdown_phase_1(%struct.gb_connection* %connection) #0 !dbg !5135 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5138
  %call = call i32 @gb_connection_cport_shutdown(%struct.gb_connection* %0, i8 zeroext 1) #10, !dbg !5139
  ret i32 %call, !dbg !5140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_hd_cport_quiesce(%struct.gb_connection* %connection) #0 !dbg !5141 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %peer_space = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5142, metadata !DIExpression()), !dbg !5143
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !5144, metadata !DIExpression()), !dbg !5145
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5146
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !5147
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !5147
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !5145
  call void @llvm.dbg.declare(metadata i64* %peer_space, metadata !5148, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5150, metadata !DIExpression()), !dbg !5151
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5152
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !5154
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !5154
  %cport_quiesce = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 8, !dbg !5155
  %4 = load i32 (%struct.gb_host_device*, i16, i64, i32)*, i32 (%struct.gb_host_device*, i16, i64, i32)** %cport_quiesce, align 8, !dbg !5155
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16, i64, i32)* %4, null, !dbg !5152
  br i1 %tobool, label %if.end, label %if.then, !dbg !5156

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

if.end:                                           ; preds = %entry
  store i64 9, i64* %peer_space, align 8, !dbg !5158
  %5 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5159
  %mode_switch = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %5, i32 0, i32 18, !dbg !5161
  %6 = load i8, i8* %mode_switch, align 8, !dbg !5161
  %tobool2 = trunc i8 %6 to i1, !dbg !5161
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5162

if.then3:                                         ; preds = %if.end
  %7 = load i64, i64* %peer_space, align 8, !dbg !5163
  %add = add i64 %7, 8, !dbg !5163
  store i64 %add, i64* %peer_space, align 8, !dbg !5163
  br label %if.end4, !dbg !5164

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5165
  %driver5 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %8, i32 0, i32 2, !dbg !5166
  %9 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver5, align 8, !dbg !5166
  %cport_quiesce6 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %9, i32 0, i32 8, !dbg !5167
  %10 = load i32 (%struct.gb_host_device*, i16, i64, i32)*, i32 (%struct.gb_host_device*, i16, i64, i32)** %cport_quiesce6, align 8, !dbg !5167
  %11 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5168
  %12 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5169
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 4, !dbg !5170
  %13 = load i16, i16* %hd_cport_id, align 4, !dbg !5170
  %14 = load i64, i64* %peer_space, align 8, !dbg !5171
  %call = call i32 %10(%struct.gb_host_device* %11, i16 zeroext %13, i64 %14, i32 1000) #10, !dbg !5165
  store i32 %call, i32* %ret, align 4, !dbg !5172
  %15 = load i32, i32* %ret, align 4, !dbg !5173
  %tobool7 = icmp ne i32 %15, 0, !dbg !5173
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5175

if.then8:                                         ; preds = %if.end4
  %16 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5176
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %16, i32 0, i32 0, !dbg !5176
  %17 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5176
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %17, i32 0, i32 14, !dbg !5176
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !5176
  %18 = load i32, i32* %ret, align 4, !dbg !5176
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i8* %arraydecay, i32 %18) #11, !dbg !5176
  %19 = load i32, i32* %ret, align 4, !dbg !5178
  store i32 %19, i32* %retval, align 4, !dbg !5179
  br label %return, !dbg !5179

if.end9:                                          ; preds = %if.end4
  store i32 0, i32* %retval, align 4, !dbg !5180
  br label %return, !dbg !5180

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5181
  ret i32 %20, !dbg !5181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_cport_shutdown_phase_2(%struct.gb_connection* %connection) #0 !dbg !5182 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5183, metadata !DIExpression()), !dbg !5184
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5185
  %call = call i32 @gb_connection_cport_shutdown(%struct.gb_connection* %0, i8 zeroext 2) #10, !dbg !5186
  ret i32 %call, !dbg !5187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_control_disconnected(%struct.gb_connection* %connection) #0 !dbg !5188 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %control = alloca %struct.gb_control*, align 8
  %cport_id = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !5191, metadata !DIExpression()), !dbg !5192
  call void @llvm.dbg.declare(metadata i16* %cport_id, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5195
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 5, !dbg !5196
  %1 = load i16, i16* %intf_cport_id, align 2, !dbg !5196
  store i16 %1, i16* %cport_id, align 2, !dbg !5194
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5197, metadata !DIExpression()), !dbg !5198
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5199
  %call = call zeroext i1 @gb_connection_is_static(%struct.gb_connection* %2) #10, !dbg !5201
  br i1 %call, label %if.then, label %if.end, !dbg !5202

if.then:                                          ; preds = %entry
  br label %if.end14, !dbg !5203

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5204
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %3, i32 0, i32 1, !dbg !5205
  %4 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !5205
  %control1 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %4, i32 0, i32 1, !dbg !5206
  %5 = load %struct.gb_control*, %struct.gb_control** %control1, align 8, !dbg !5206
  store %struct.gb_control* %5, %struct.gb_control** %control, align 8, !dbg !5207
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5208
  %call2 = call zeroext i1 @gb_connection_is_control(%struct.gb_connection* %6) #10, !dbg !5210
  br i1 %call2, label %if.then3, label %if.end10, !dbg !5211

if.then3:                                         ; preds = %if.end
  %7 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5212
  %mode_switch = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %7, i32 0, i32 18, !dbg !5215
  %8 = load i8, i8* %mode_switch, align 8, !dbg !5215
  %tobool = trunc i8 %8 to i1, !dbg !5215
  br i1 %tobool, label %if.then4, label %if.end9, !dbg !5216

if.then4:                                         ; preds = %if.then3
  %9 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !5217
  %call5 = call i32 @gb_control_mode_switch_operation(%struct.gb_control* %9) #10, !dbg !5219
  store i32 %call5, i32* %ret, align 4, !dbg !5220
  %10 = load i32, i32* %ret, align 4, !dbg !5221
  %tobool6 = icmp ne i32 %10, 0, !dbg !5221
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5223

if.then7:                                         ; preds = %if.then4
  br label %if.end14, !dbg !5224

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !5226

if.end9:                                          ; preds = %if.end8, %if.then3
  br label %if.end14, !dbg !5227

if.end10:                                         ; preds = %if.end
  %11 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !5228
  %12 = load i16, i16* %cport_id, align 2, !dbg !5229
  %call11 = call i32 @gb_control_disconnected_operation(%struct.gb_control* %11, i16 zeroext %12) #10, !dbg !5230
  store i32 %call11, i32* %ret, align 4, !dbg !5231
  %13 = load i32, i32* %ret, align 4, !dbg !5232
  %tobool12 = icmp ne i32 %13, 0, !dbg !5232
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !5234

if.then13:                                        ; preds = %if.end10
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5235
  %bundle = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 2, !dbg !5235
  %15 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !5235
  %dev = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %15, i32 0, i32 0, !dbg !5235
  %16 = load i32, i32* %ret, align 4, !dbg !5235
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i32 %16) #11, !dbg !5235
  br label %if.end14, !dbg !5237

if.end14:                                         ; preds = %if.then, %if.then7, %if.end9, %if.then13, %if.end10
  ret void, !dbg !5238
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_disable_forced(%struct.gb_connection* %connection) #0 !dbg !5239 {
entry:
  %lock.addr.i5 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i5, metadata !4195, metadata !DIExpression()), !dbg !5240
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4201, metadata !DIExpression()), !dbg !5242
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5244, metadata !DIExpression()), !dbg !5245
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5246
  %mutex = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 10, !dbg !5247
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !5248
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5249
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 12, !dbg !5251
  %2 = load i32, i32* %state, align 8, !dbg !5251
  %cmp = icmp eq i32 %2, 0, !dbg !5252
  br i1 %cmp, label %if.then, label %if.end, !dbg !5253

if.then:                                          ; preds = %entry
  br label %out_unlock, !dbg !5254

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5255
  call void @trace_gb_connection_disable(%struct.gb_connection* %3) #10, !dbg !5256
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5257
  %lock = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 11, !dbg !5258
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !5259
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5260, !srcloc !4376
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5261
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !5261
  %rlock.i = bitcast %union.anon.3* %6 to %struct.raw_spinlock*, !dbg !5261
  %7 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5262
  %state1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %7, i32 0, i32 12, !dbg !5263
  store i32 0, i32* %state1, align 8, !dbg !5264
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5265
  call void @gb_connection_cancel_operations(%struct.gb_connection* %8, i32 -108) #10, !dbg !5266
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5267
  %lock2 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 11, !dbg !5268
  store %struct.spinlock* %lock2, %struct.spinlock** %lock.addr.i5, align 8
  call void @arch_local_irq_enable() #12, !dbg !5269
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5270, !srcloc !4400
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i5, align 8, !dbg !5271
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !5271
  %rlock.i6 = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !5271
  %12 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5272
  %call = call i32 @gb_connection_hd_cport_flush(%struct.gb_connection* %12) #10, !dbg !5273
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5274
  call void @gb_connection_svc_connection_destroy(%struct.gb_connection* %13) #10, !dbg !5275
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5276
  %call3 = call i32 @gb_connection_hd_cport_clear(%struct.gb_connection* %14) #10, !dbg !5277
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5278
  call void @gb_connection_hd_cport_disable(%struct.gb_connection* %15) #10, !dbg !5279
  br label %out_unlock, !dbg !5279

out_unlock:                                       ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !5280), !dbg !5281
  %16 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5282
  %mutex4 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 10, !dbg !5283
  call void @mutex_unlock(%struct.mutex* %mutex4) #10, !dbg !5284
  ret void, !dbg !5285
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_destroy(%struct.gb_connection* %connection) #0 !dbg !5286 {
entry:
  %lock.addr.i26 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i26, metadata !4195, metadata !DIExpression()), !dbg !5287
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4201, metadata !DIExpression()), !dbg !5289
  %connection.addr = alloca %struct.gb_connection*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5291, metadata !DIExpression()), !dbg !5292
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5293
  %tobool = icmp ne %struct.gb_connection* %0, null, !dbg !5293
  br i1 %tobool, label %if.end, label %if.then, !dbg !5295

if.then:                                          ; preds = %entry
  br label %return, !dbg !5296

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5297, metadata !DIExpression()), !dbg !5300
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5300
  %state = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %1, i32 0, i32 12, !dbg !5300
  %2 = load i32, i32* %state, align 8, !dbg !5300
  %cmp = icmp ne i32 %2, 0, !dbg !5300
  %lnot = xor i1 %cmp, true, !dbg !5300
  %lnot1 = xor i1 %lnot, true, !dbg !5300
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5300
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5300
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5301
  %tobool2 = icmp ne i32 %3, 0, !dbg !5301
  %lnot3 = xor i1 %tobool2, true, !dbg !5301
  %lnot5 = xor i1 %lnot3, true, !dbg !5301
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5301
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5301
  %tobool7 = icmp ne i64 %conv, 0, !dbg !5301
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !5300

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !5301

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !5303

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !5305

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !5303

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 886, i32 2305, i64 12) #5, !dbg !5307, !srcloc !5309
  br label %do.end11, !dbg !5307

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 239) #5, !dbg !5310, !srcloc !5312
  br label %do.body12, !dbg !5303

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5313

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5303

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !5303

if.end15:                                         ; preds = %do.end14, %if.end
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !5300
  %tobool16 = icmp ne i32 %4, 0, !dbg !5300
  %lnot17 = xor i1 %tobool16, true, !dbg !5300
  %lnot19 = xor i1 %lnot17, true, !dbg !5300
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5300
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5300
  store i64 %conv21, i64* %tmp, align 8, !dbg !5301
  %5 = load i64, i64* %tmp, align 8, !dbg !5300
  %tobool22 = icmp ne i64 %5, 0, !dbg !5315
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5316

if.then23:                                        ; preds = %if.end15
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5317
  call void @gb_connection_disable(%struct.gb_connection* %6) #10, !dbg !5318
  br label %if.end24, !dbg !5318

if.end24:                                         ; preds = %if.then23, %if.end15
  call void @mutex_lock(%struct.mutex* @gb_connection_mutex) #10, !dbg !5319
  store %struct.spinlock* @gb_connections_lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !5320
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5321, !srcloc !4376
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5322
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !5322
  %rlock.i = bitcast %union.anon.3* %8 to %struct.raw_spinlock*, !dbg !5322
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5323
  %bundle_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 7, !dbg !5324
  call void @list_del(%struct.list_head* %bundle_links) #10, !dbg !5325
  %10 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5326
  %hd_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 6, !dbg !5327
  call void @list_del(%struct.list_head* %hd_links) #10, !dbg !5328
  store %struct.spinlock* @gb_connections_lock, %struct.spinlock** %lock.addr.i26, align 8
  call void @arch_local_irq_enable() #12, !dbg !5329
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5330, !srcloc !4400
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i26, align 8, !dbg !5331
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !5331
  %rlock.i27 = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !5331
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5332
  %wq = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 15, !dbg !5333
  %14 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq, align 8, !dbg !5333
  call void @destroy_workqueue(%struct.workqueue_struct* %14) #10, !dbg !5334
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5335
  %hd = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %15, i32 0, i32 0, !dbg !5336
  %16 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5336
  %17 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5337
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %17, i32 0, i32 4, !dbg !5338
  %18 = load i16, i16* %hd_cport_id, align 4, !dbg !5338
  call void @gb_hd_cport_release(%struct.gb_host_device* %16, i16 zeroext %18) #10, !dbg !5339
  %19 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5340
  %hd_cport_id25 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %19, i32 0, i32 4, !dbg !5341
  store i16 -1, i16* %hd_cport_id25, align 4, !dbg !5342
  call void @mutex_unlock(%struct.mutex* @gb_connection_mutex) #10, !dbg !5343
  %20 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5344
  call void @gb_connection_put(%struct.gb_connection* %20) #10, !dbg !5345
  br label %return, !dbg !5346

return:                                           ; preds = %if.end24, %if.then
  ret void, !dbg !5346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5347 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5353
  call void @__list_del_entry(%struct.list_head* %0) #10, !dbg !5354
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5355
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5356
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5357
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5358
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5359
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5360
  ret void, !dbg !5361
}

; Function Attrs: noredzone
declare dso_local void @destroy_workqueue(%struct.workqueue_struct*) #3

; Function Attrs: noredzone
declare dso_local void @gb_hd_cport_release(%struct.gb_host_device*, i16 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_latency_tag_enable(%struct.gb_connection* %connection) #0 !dbg !5362 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !5365, metadata !DIExpression()), !dbg !5366
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5367
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !5368
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !5368
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !5366
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5369, metadata !DIExpression()), !dbg !5370
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5371
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !5373
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !5373
  %latency_tag_enable = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 12, !dbg !5374
  %4 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %latency_tag_enable, align 8, !dbg !5374
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16)* %4, null, !dbg !5371
  br i1 %tobool, label %if.end, label %if.then, !dbg !5375

if.then:                                          ; preds = %entry
  br label %if.end7, !dbg !5376

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5377
  %driver2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 2, !dbg !5378
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver2, align 8, !dbg !5378
  %latency_tag_enable3 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 12, !dbg !5379
  %7 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %latency_tag_enable3, align 8, !dbg !5379
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5380
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5381
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 4, !dbg !5382
  %10 = load i16, i16* %hd_cport_id, align 4, !dbg !5382
  %call = call i32 %7(%struct.gb_host_device* %8, i16 zeroext %10) #10, !dbg !5377
  store i32 %call, i32* %ret, align 4, !dbg !5383
  %11 = load i32, i32* %ret, align 4, !dbg !5384
  %tobool4 = icmp ne i32 %11, 0, !dbg !5384
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5386

if.then5:                                         ; preds = %if.end
  %12 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5387
  %hd6 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 0, !dbg !5387
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %hd6, align 8, !dbg !5387
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %13, i32 0, i32 0, !dbg !5387
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5387
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 14, !dbg !5387
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !5387
  %15 = load i32, i32* %ret, align 4, !dbg !5387
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay, i32 %15) #11, !dbg !5387
  br label %if.end7, !dbg !5389

if.end7:                                          ; preds = %if.then, %if.then5, %if.end
  ret void, !dbg !5390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gb_connection_latency_tag_disable(%struct.gb_connection* %connection) #0 !dbg !5391 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5392, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !5394, metadata !DIExpression()), !dbg !5395
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5396
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !5397
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !5397
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !5395
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5398, metadata !DIExpression()), !dbg !5399
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5400
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !5402
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !5402
  %latency_tag_disable = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 13, !dbg !5403
  %4 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %latency_tag_disable, align 8, !dbg !5403
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16)* %4, null, !dbg !5400
  br i1 %tobool, label %if.end, label %if.then, !dbg !5404

if.then:                                          ; preds = %entry
  br label %if.end7, !dbg !5405

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5406
  %driver2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 2, !dbg !5407
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver2, align 8, !dbg !5407
  %latency_tag_disable3 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 13, !dbg !5408
  %7 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %latency_tag_disable3, align 8, !dbg !5408
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5409
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5410
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 4, !dbg !5411
  %10 = load i16, i16* %hd_cport_id, align 4, !dbg !5411
  %call = call i32 %7(%struct.gb_host_device* %8, i16 zeroext %10) #10, !dbg !5406
  store i32 %call, i32* %ret, align 4, !dbg !5412
  %11 = load i32, i32* %ret, align 4, !dbg !5413
  %tobool4 = icmp ne i32 %11, 0, !dbg !5413
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !5415

if.then5:                                         ; preds = %if.end
  %12 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5416
  %hd6 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 0, !dbg !5416
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %hd6, align 8, !dbg !5416
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %13, i32 0, i32 0, !dbg !5416
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5416
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 14, !dbg !5416
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !5416
  %15 = load i32, i32* %ret, align 4, !dbg !5416
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay, i32 %15) #11, !dbg !5416
  br label %if.end7, !dbg !5418

if.end7:                                          ; preds = %if.then, %if.then5, %if.end
  ret void, !dbg !5419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5420 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5424, metadata !DIExpression()), !dbg !5425
  %call = call i64 @arch_local_save_flags() #10, !dbg !5426
  store i64 %call, i64* %f, align 8, !dbg !5427
  call void @arch_local_irq_disable() #10, !dbg !5428
  %0 = load i64, i64* %f, align 8, !dbg !5429
  ret i64 %0, !dbg !5430
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_get(%struct.gb_connection* %connection) #0 !dbg !5431 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5434
  %kref = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 3, !dbg !5435
  call void @kref_get(%struct.kref* %kref) #10, !dbg !5436
  %1 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5437
  call void @trace_gb_connection_get(%struct.gb_connection* %1) #10, !dbg !5438
  ret void, !dbg !5439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5440 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5441, metadata !DIExpression()), !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5444, metadata !DIExpression()), !dbg !5443
  %0 = load i64, i64* %__edi, align 8, !dbg !5443
  store i64 %0, i64* %__edi, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5445, metadata !DIExpression()), !dbg !5443
  %1 = load i64, i64* %__esi, align 8, !dbg !5443
  store i64 %1, i64* %__esi, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5446, metadata !DIExpression()), !dbg !5443
  %2 = load i64, i64* %__edx, align 8, !dbg !5443
  store i64 %2, i64* %__edx, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5447, metadata !DIExpression()), !dbg !5443
  %3 = load i64, i64* %__ecx, align 8, !dbg !5443
  store i64 %3, i64* %__ecx, align 8, !dbg !5443
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5448, metadata !DIExpression()), !dbg !5443
  %4 = load i64, i64* %__eax, align 8, !dbg !5443
  store i64 %4, i64* %__eax, align 8, !dbg !5443
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5443
  %6 = call i64 @llvm.read_register.i64(metadata !4022), !dbg !5449
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !5449, !srcloc !5452
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5449
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5449
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5449
  call void @llvm.write_register.i64(metadata !4022, i64 %asmresult1), !dbg !5449
  %8 = load i64, i64* %__eax, align 8, !dbg !5449
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5453, metadata !DIExpression()), !dbg !5455
  store i64 -1, i64* %__mask, align 8, !dbg !5455
  %9 = load i64, i64* %__mask, align 8, !dbg !5455
  store i64 %9, i64* %tmp, align 8, !dbg !5455
  %10 = load i64, i64* %tmp, align 8, !dbg !5455
  %and = and i64 %8, %10, !dbg !5449
  store i64 %and, i64* %__ret, align 8, !dbg !5449
  %11 = load i64, i64* %__ret, align 8, !dbg !5443
  store i64 %11, i64* %tmp2, align 8, !dbg !5456
  %12 = load i64, i64* %tmp2, align 8, !dbg !5443
  ret i64 %12, !dbg !5457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5458 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5459, metadata !DIExpression()), !dbg !5461
  %0 = load i64, i64* %__edi, align 8, !dbg !5461
  store i64 %0, i64* %__edi, align 8, !dbg !5461
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5462, metadata !DIExpression()), !dbg !5461
  %1 = load i64, i64* %__esi, align 8, !dbg !5461
  store i64 %1, i64* %__esi, align 8, !dbg !5461
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5463, metadata !DIExpression()), !dbg !5461
  %2 = load i64, i64* %__edx, align 8, !dbg !5461
  store i64 %2, i64* %__edx, align 8, !dbg !5461
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5464, metadata !DIExpression()), !dbg !5461
  %3 = load i64, i64* %__ecx, align 8, !dbg !5461
  store i64 %3, i64* %__ecx, align 8, !dbg !5461
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5465, metadata !DIExpression()), !dbg !5461
  %4 = load i64, i64* %__eax, align 8, !dbg !5461
  store i64 %4, i64* %__eax, align 8, !dbg !5461
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5461
  %6 = call i64 @llvm.read_register.i64(metadata !4022), !dbg !5461
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !5461, !srcloc !5466
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5461
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5461
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5461
  call void @llvm.write_register.i64(metadata !4022, i64 %asmresult1), !dbg !5461
  ret void, !dbg !5467
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5468 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5474
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5475
  call void @refcount_inc(%struct.refcount_struct* %refcount) #10, !dbg !5476
  ret void, !dbg !5477
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_connection_get(%struct.gb_connection* %connection) #0 !dbg !5478 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  ret void, !dbg !5480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5481 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5487
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #10, !dbg !5488
  ret void, !dbg !5489
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5490 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5493, metadata !DIExpression()), !dbg !5494
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5497
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5498
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #10, !dbg !5499
  ret void, !dbg !5500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5501 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5504, metadata !DIExpression()), !dbg !5508
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5512, metadata !DIExpression()), !dbg !5513
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5514, metadata !DIExpression()), !dbg !5516
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5517, metadata !DIExpression()), !dbg !5519
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5521, metadata !DIExpression()), !dbg !5522
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5523, metadata !DIExpression()), !dbg !5524
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5525, metadata !DIExpression()), !dbg !5526
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5529, metadata !DIExpression()), !dbg !5530
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5531, metadata !DIExpression()), !dbg !5532
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5533, metadata !DIExpression()), !dbg !5534
  %0 = load i32, i32* %i.addr, align 4, !dbg !5535
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5536
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5537
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5538
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5538
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5539
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5540
  %conv.i.i = trunc i64 %5 to i32, !dbg !5540
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5541
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5542
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5542
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5542
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5543
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5544
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5516
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5516
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5516
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5516
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5516
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #5, !dbg !5516, !srcloc !5545
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5516
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5516
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5516
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5516
  store i32 %15, i32* %old, align 4, !dbg !5534
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5546
  %tobool = icmp ne i32* %16, null, !dbg !5546
  br i1 %tobool, label %if.then, label %if.end, !dbg !5548

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5549
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5550
  store i32 %17, i32* %18, align 4, !dbg !5551
  br label %if.end, !dbg !5552

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5553
  %tobool1 = icmp ne i32 %19, 0, !dbg !5553
  %lnot = xor i1 %tobool1, true, !dbg !5553
  %lnot2 = xor i1 %lnot, true, !dbg !5553
  %lnot3 = xor i1 %lnot2, true, !dbg !5553
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5553
  %conv = sext i32 %lnot.ext to i64, !dbg !5553
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5553
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5555

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5556
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #10, !dbg !5557
  br label %if.end17, !dbg !5557

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5558
  %cmp = icmp slt i32 %21, 0, !dbg !5558
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5558

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5558
  %23 = load i32, i32* %i.addr, align 4, !dbg !5558
  %add = add i32 %22, %23, !dbg !5558
  %cmp7 = icmp slt i32 %add, 0, !dbg !5558
  br label %lor.end, !dbg !5558

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5558
  %lnot11 = xor i1 %lnot9, true, !dbg !5558
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5558
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5558
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5558
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5560

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5561
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #10, !dbg !5562
  br label %if.end16, !dbg !5562

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5563
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5564 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5568, metadata !DIExpression()), !dbg !5569
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5570, metadata !DIExpression()), !dbg !5571
  ret i1 true, !dbg !5572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5573 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  ret void, !dbg !5583
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5584 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5589, metadata !DIExpression()), !dbg !5591
  %0 = load i64, i64* %__edi, align 8, !dbg !5591
  store i64 %0, i64* %__edi, align 8, !dbg !5591
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5592, metadata !DIExpression()), !dbg !5591
  %1 = load i64, i64* %__esi, align 8, !dbg !5591
  store i64 %1, i64* %__esi, align 8, !dbg !5591
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5593, metadata !DIExpression()), !dbg !5591
  %2 = load i64, i64* %__edx, align 8, !dbg !5591
  store i64 %2, i64* %__edx, align 8, !dbg !5591
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5594, metadata !DIExpression()), !dbg !5591
  %3 = load i64, i64* %__ecx, align 8, !dbg !5591
  store i64 %3, i64* %__ecx, align 8, !dbg !5591
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5595, metadata !DIExpression()), !dbg !5591
  %4 = load i64, i64* %__eax, align 8, !dbg !5591
  store i64 %4, i64* %__eax, align 8, !dbg !5591
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5591
  %6 = call i64 @llvm.read_register.i64(metadata !4022), !dbg !5591
  %7 = load i64, i64* %f.addr, align 8, !dbg !5591
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !5591, !srcloc !5596
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5591
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5591
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5591
  call void @llvm.write_register.i64(metadata !4022, i64 %asmresult1), !dbg !5591
  ret void, !dbg !5597
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_connection_put(%struct.gb_connection* %connection) #0 !dbg !5598 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5599, metadata !DIExpression()), !dbg !5600
  ret void, !dbg !5600
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !5601 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5605, metadata !DIExpression()), !dbg !5606
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !5607, metadata !DIExpression()), !dbg !5608
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5609
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5611
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #10, !dbg !5612
  br i1 %call, label %if.then, label %if.end, !dbg !5613

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !5614
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5616
  call void %1(%struct.kref* %2) #10, !dbg !5614
  store i32 1, i32* %retval, align 4, !dbg !5617
  br label %return, !dbg !5617

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5618
  br label %return, !dbg !5618

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5619
  ret i32 %3, !dbg !5619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_kref_release(%struct.kref* %kref) #0 !dbg !5620 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %connection = alloca %struct.gb_connection*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_connection*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5621, metadata !DIExpression()), !dbg !5622
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !5623, metadata !DIExpression()), !dbg !5624
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5625, metadata !DIExpression()), !dbg !5627
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5627
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !5627
  store i8* %1, i8** %__mptr, align 8, !dbg !5627
  br label %do.body, !dbg !5627

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5628

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5627
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !5627
  %3 = bitcast i8* %add.ptr to %struct.gb_connection*, !dbg !5627
  store %struct.gb_connection* %3, %struct.gb_connection** %tmp, align 8, !dbg !5628
  %4 = load %struct.gb_connection*, %struct.gb_connection** %tmp, align 8, !dbg !5627
  store %struct.gb_connection* %4, %struct.gb_connection** %connection, align 8, !dbg !5630
  %5 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5631
  call void @trace_gb_connection_release(%struct.gb_connection* %5) #10, !dbg !5632
  %6 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5633
  %7 = bitcast %struct.gb_connection* %6 to i8*, !dbg !5633
  call void @kfree(i8* %7) #10, !dbg !5634
  ret void, !dbg !5635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5636 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5641
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #10, !dbg !5642
  ret i1 %call, !dbg !5643
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5644 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5647, metadata !DIExpression()), !dbg !5648
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5651
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5652
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #10, !dbg !5653
  ret i1 %call, !dbg !5654
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5655 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5658, metadata !DIExpression()), !dbg !5660
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5664, metadata !DIExpression()), !dbg !5665
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5666, metadata !DIExpression()), !dbg !5668
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5517, metadata !DIExpression()), !dbg !5669
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5521, metadata !DIExpression()), !dbg !5671
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5672, metadata !DIExpression()), !dbg !5673
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5674, metadata !DIExpression()), !dbg !5675
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5676, metadata !DIExpression()), !dbg !5677
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5680, metadata !DIExpression()), !dbg !5681
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5682, metadata !DIExpression()), !dbg !5683
  %0 = load i32, i32* %i.addr, align 4, !dbg !5684
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5685
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5686
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5687
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5687
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5688
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5689
  %conv.i.i = trunc i64 %5 to i32, !dbg !5689
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5690
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5691
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5691
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5691
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5692
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5693
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5668
  %sub.i.i = sub i32 0, %10, !dbg !5668
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5668
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5668
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5668
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5668
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #5, !dbg !5668, !srcloc !5694
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5668
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5668
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5668
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5668
  store i32 %15, i32* %old, align 4, !dbg !5683
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5695
  %tobool = icmp ne i32* %16, null, !dbg !5695
  br i1 %tobool, label %if.then, label %if.end, !dbg !5697

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5698
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5699
  store i32 %17, i32* %18, align 4, !dbg !5700
  br label %if.end, !dbg !5701

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5702
  %20 = load i32, i32* %i.addr, align 4, !dbg !5704
  %cmp = icmp eq i32 %19, %20, !dbg !5705
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5706

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5707, !srcloc !5709
  store i1 true, i1* %retval, align 1, !dbg !5710
  br label %return, !dbg !5710

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5711
  %cmp3 = icmp slt i32 %21, 0, !dbg !5711
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5711

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5711
  %23 = load i32, i32* %i.addr, align 4, !dbg !5711
  %sub = sub i32 %22, %23, !dbg !5711
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5711
  br label %lor.end, !dbg !5711

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5711
  %lnot5 = xor i1 %lnot, true, !dbg !5711
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5711
  %conv = sext i32 %lnot.ext to i64, !dbg !5711
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5711
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5713

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5714
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #10, !dbg !5715
  br label %if.end8, !dbg !5715

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5716
  br label %return, !dbg !5716

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5717
  ret i1 %26, !dbg !5717
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_connection_release(%struct.gb_connection* %connection) #0 !dbg !5718 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  ret void, !dbg !5720
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_connection_cport_in_use(%struct.gb_interface* %intf, i16 zeroext %cport_id) #0 !dbg !5721 {
entry:
  %retval = alloca i1, align 1
  %intf.addr = alloca %struct.gb_interface*, align 8
  %cport_id.addr = alloca i16, align 2
  %hd = alloca %struct.gb_host_device*, align 8
  %connection = alloca %struct.gb_connection*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_connection*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp13 = alloca %struct.gb_connection*, align 8
  store %struct.gb_interface* %intf, %struct.gb_interface** %intf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  store i16 %cport_id, i16* %cport_id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %cport_id.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !5728, metadata !DIExpression()), !dbg !5729
  %0 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5730
  %hd1 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %0, i32 0, i32 14, !dbg !5731
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !5731
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !5729
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !5732, metadata !DIExpression()), !dbg !5733
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5734, metadata !DIExpression()), !dbg !5737
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5737
  %connections = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 4, !dbg !5737
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %connections, i32 0, i32 0, !dbg !5737
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5737
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !5737
  store i8* %4, i8** %__mptr, align 8, !dbg !5737
  br label %do.body, !dbg !5737

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5738

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5737
  %add.ptr = getelementptr i8, i8* %5, i64 -32, !dbg !5737
  %6 = bitcast i8* %add.ptr to %struct.gb_connection*, !dbg !5737
  store %struct.gb_connection* %6, %struct.gb_connection** %tmp, align 8, !dbg !5738
  %7 = load %struct.gb_connection*, %struct.gb_connection** %tmp, align 8, !dbg !5737
  store %struct.gb_connection* %7, %struct.gb_connection** %connection, align 8, !dbg !5740
  br label %for.cond, !dbg !5740

for.cond:                                         ; preds = %do.end12, %do.end
  %8 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5741
  %hd_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %8, i32 0, i32 6, !dbg !5741
  %9 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !5741
  %connections2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %9, i32 0, i32 4, !dbg !5741
  %cmp = icmp eq %struct.list_head* %hd_links, %connections2, !dbg !5741
  %lnot = xor i1 %cmp, true, !dbg !5741
  br i1 %lnot, label %for.body, label %for.end, !dbg !5740

for.body:                                         ; preds = %for.cond
  %10 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5743
  %intf3 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 1, !dbg !5746
  %11 = load %struct.gb_interface*, %struct.gb_interface** %intf3, align 8, !dbg !5746
  %12 = load %struct.gb_interface*, %struct.gb_interface** %intf.addr, align 8, !dbg !5747
  %cmp4 = icmp eq %struct.gb_interface* %11, %12, !dbg !5748
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !5749

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5750
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 5, !dbg !5751
  %14 = load i16, i16* %intf_cport_id, align 2, !dbg !5751
  %conv = zext i16 %14 to i32, !dbg !5750
  %15 = load i16, i16* %cport_id.addr, align 2, !dbg !5752
  %conv5 = zext i16 %15 to i32, !dbg !5752
  %cmp6 = icmp eq i32 %conv, %conv5, !dbg !5753
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5754

if.then:                                          ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1, !dbg !5755
  br label %return, !dbg !5755

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5756

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !5757, metadata !DIExpression()), !dbg !5759
  %16 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !5759
  %hd_links9 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 6, !dbg !5759
  %next10 = getelementptr inbounds %struct.list_head, %struct.list_head* %hd_links9, i32 0, i32 0, !dbg !5759
  %17 = load %struct.list_head*, %struct.list_head** %next10, align 8, !dbg !5759
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !5759
  store i8* %18, i8** %__mptr8, align 8, !dbg !5759
  br label %do.body11, !dbg !5759

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !5760

do.end12:                                         ; preds = %do.body11
  %19 = load i8*, i8** %__mptr8, align 8, !dbg !5759
  %add.ptr14 = getelementptr i8, i8* %19, i64 -32, !dbg !5759
  %20 = bitcast i8* %add.ptr14 to %struct.gb_connection*, !dbg !5759
  store %struct.gb_connection* %20, %struct.gb_connection** %tmp13, align 8, !dbg !5760
  %21 = load %struct.gb_connection*, %struct.gb_connection** %tmp13, align 8, !dbg !5759
  store %struct.gb_connection* %21, %struct.gb_connection** %connection, align 8, !dbg !5741
  br label %for.cond, !dbg !5741, !llvm.loop !5762

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !5764
  br label %return, !dbg !5764

return:                                           ; preds = %for.end, %if.then
  %22 = load i1, i1* %retval, align 1, !dbg !5765
  ret i1 %22, !dbg !5765
}

; Function Attrs: noredzone
declare dso_local i32 @gb_hd_cport_allocate(%struct.gb_host_device*, i32, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5766 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5769, metadata !DIExpression()), !dbg !5773
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5779, metadata !DIExpression()), !dbg !5780
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5781, metadata !DIExpression()), !dbg !5782
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5783, metadata !DIExpression()), !dbg !5784
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5785, metadata !DIExpression()), !dbg !5789
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5791, metadata !DIExpression()), !dbg !5795
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5797, metadata !DIExpression()), !dbg !5801
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5806, metadata !DIExpression()), !dbg !5807
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5808, metadata !DIExpression()), !dbg !5809
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5810, metadata !DIExpression()), !dbg !5811
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5812, metadata !DIExpression()), !dbg !5813
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5814, metadata !DIExpression()), !dbg !5815
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5816, metadata !DIExpression()), !dbg !5817
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5818, metadata !DIExpression()), !dbg !5819
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5820, metadata !DIExpression()), !dbg !5821
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load i64, i64* %size.addr, align 8, !dbg !5826
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5827
  %or = or i32 %1, 256, !dbg !5828
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5829
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #5, !dbg !5830
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5831

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5832
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5833
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5834

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5835
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5836
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5837
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !5838
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5815
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5839
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5840
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5841
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5842
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5843
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5844
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5845
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5845
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5845
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5845
  call void @llvm.assume(i1 %maskcond.i.i.i) #5, !dbg !5845
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5846
  br label %kmalloc.exit, !dbg !5846

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5847
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5848
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5848
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5850

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5851
  br label %kmalloc_index.exit.i, !dbg !5851

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5852
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5854
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5855

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5856
  br label %kmalloc_index.exit.i, !dbg !5856

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5857
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5859
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5860

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5861
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5862
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5863

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5864
  br label %kmalloc_index.exit.i, !dbg !5864

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5865
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5867
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5868

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5869
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5870
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5871

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5872
  br label %kmalloc_index.exit.i, !dbg !5872

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5873
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5875
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5876

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5877
  br label %kmalloc_index.exit.i, !dbg !5877

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5878
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5880
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5881

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5882
  br label %kmalloc_index.exit.i, !dbg !5882

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5883
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5885
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5886

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5887
  br label %kmalloc_index.exit.i, !dbg !5887

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5888
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5890
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5891

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5892
  br label %kmalloc_index.exit.i, !dbg !5892

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5893
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5895
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5896

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5897
  br label %kmalloc_index.exit.i, !dbg !5897

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5898
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5900
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5901

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5902
  br label %kmalloc_index.exit.i, !dbg !5902

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5903
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5905
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5906

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5907
  br label %kmalloc_index.exit.i, !dbg !5907

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5908
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5910
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5911

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5912
  br label %kmalloc_index.exit.i, !dbg !5912

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5913
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5915
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5916

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5917
  br label %kmalloc_index.exit.i, !dbg !5917

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5918
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5920
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5921

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5922
  br label %kmalloc_index.exit.i, !dbg !5922

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5923
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5925
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5926

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5927
  br label %kmalloc_index.exit.i, !dbg !5927

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5928
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5930
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5931

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5932
  br label %kmalloc_index.exit.i, !dbg !5932

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5933
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5935
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5936

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5937
  br label %kmalloc_index.exit.i, !dbg !5937

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5938
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5940
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5941

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5942
  br label %kmalloc_index.exit.i, !dbg !5942

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5943
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5945
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5946

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5947
  br label %kmalloc_index.exit.i, !dbg !5947

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5948
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5950
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5951

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5952
  br label %kmalloc_index.exit.i, !dbg !5952

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5953
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5955
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5956

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5957
  br label %kmalloc_index.exit.i, !dbg !5957

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5958
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5960
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5961

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5962
  br label %kmalloc_index.exit.i, !dbg !5962

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5963
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5965
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5966

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5967
  br label %kmalloc_index.exit.i, !dbg !5967

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5968
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5970
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5971

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5972
  br label %kmalloc_index.exit.i, !dbg !5972

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5973
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5975
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5976

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5977
  br label %kmalloc_index.exit.i, !dbg !5977

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5978
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5980
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5981

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5982
  br label %kmalloc_index.exit.i, !dbg !5982

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5983
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5985
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5986

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5987
  br label %kmalloc_index.exit.i, !dbg !5987

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5988
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5990
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5991

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5992
  br label %kmalloc_index.exit.i, !dbg !5992

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #5, !dbg !5993, !srcloc !5996
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #5, !dbg !5997, !srcloc !6000
  unreachable, !dbg !6001

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6002
  store i32 %45, i32* %index.i, align 4, !dbg !6003
  %46 = load i32, i32* %index.i, align 4, !dbg !6004
  %tobool.i = icmp ne i32 %46, 0, !dbg !6004
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6006

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6007
  br label %kmalloc.exit, !dbg !6007

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6008
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6009
  %and.i.i = and i32 %48, 17, !dbg !6009
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6009
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6009
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6009
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6009
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6011

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6012
  br label %kmalloc_type.exit.i, !dbg !6012

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6013
  %and2.i.i = and i32 %49, 1, !dbg !6014
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6013
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6013
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6013
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6015
  br label %kmalloc_type.exit.i, !dbg !6015

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6016
  %idxprom.i = zext i32 %51 to i64, !dbg !6017
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6017
  %52 = load i32, i32* %index.i, align 4, !dbg !6018
  %idxprom6.i = zext i32 %52 to i64, !dbg !6017
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6017
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6017
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6019
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6020
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6021
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6022
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !6023
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6023
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6023
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6023
  call void @llvm.assume(i1 %maskcond.i.i) #5, !dbg !6023
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5784
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6024
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6025
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6026
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6027
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !6028
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6029
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6030
  store i8* %62, i8** %retval.i, align 8, !dbg !6031
  br label %kmalloc.exit, !dbg !6031

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6032
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6033
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !6034
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6034
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6034
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6034
  call void @llvm.assume(i1 %maskcond.i) #5, !dbg !6034
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6035
  br label %kmalloc.exit, !dbg !6035

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6036
  ret i8* %65, !dbg !6037
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !6038 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6039, metadata !DIExpression()), !dbg !6040
  br label %do.body, !dbg !6041

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6042

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6044

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6042

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6046
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6046
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6046
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !6046
  br label %do.end3, !dbg !6046

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6042

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6048
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6049
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !6050
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !6051
  ret void, !dbg !6052
}

; Function Attrs: noredzone
declare dso_local %struct.workqueue_struct* @alloc_workqueue(i8*, i32, i32, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !6053 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6058
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !6060
  %1 = load i8*, i8** %init_name, align 8, !dbg !6060
  %tobool = icmp ne i8* %1, null, !dbg !6058
  br i1 %tobool, label %if.then, label %if.end, !dbg !6061

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6062
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !6063
  %3 = load i8*, i8** %init_name1, align 8, !dbg !6063
  store i8* %3, i8** %retval, align 8, !dbg !6064
  br label %return, !dbg !6064

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6065
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !6066
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #10, !dbg !6067
  store i8* %call, i8** %retval, align 8, !dbg !6068
  br label %return, !dbg !6068

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !6069
  ret i8* %5, !dbg !6069
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !6070 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !6071, metadata !DIExpression()), !dbg !6072
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !6073
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !6074
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #10, !dbg !6075
  ret void, !dbg !6076
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gb_connection_init_name(%struct.gb_connection* %connection) #0 !dbg !6077 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd_cport_id = alloca i16, align 2
  %cport_id = alloca i16, align 2
  %intf_id = alloca i8, align 1
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6078, metadata !DIExpression()), !dbg !6079
  call void @llvm.dbg.declare(metadata i16* %hd_cport_id, metadata !6080, metadata !DIExpression()), !dbg !6081
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6082
  %hd_cport_id1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 4, !dbg !6083
  %1 = load i16, i16* %hd_cport_id1, align 4, !dbg !6083
  store i16 %1, i16* %hd_cport_id, align 2, !dbg !6081
  call void @llvm.dbg.declare(metadata i16* %cport_id, metadata !6084, metadata !DIExpression()), !dbg !6085
  store i16 0, i16* %cport_id, align 2, !dbg !6085
  call void @llvm.dbg.declare(metadata i8* %intf_id, metadata !6086, metadata !DIExpression()), !dbg !6087
  store i8 0, i8* %intf_id, align 1, !dbg !6087
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6088
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %2, i32 0, i32 1, !dbg !6090
  %3 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !6090
  %tobool = icmp ne %struct.gb_interface* %3, null, !dbg !6088
  br i1 %tobool, label %if.then, label %if.end, !dbg !6091

if.then:                                          ; preds = %entry
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6092
  %intf2 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 1, !dbg !6094
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf2, align 8, !dbg !6094
  %interface_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 5, !dbg !6095
  %6 = load i8, i8* %interface_id, align 8, !dbg !6095
  store i8 %6, i8* %intf_id, align 1, !dbg !6096
  %7 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6097
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %7, i32 0, i32 5, !dbg !6098
  %8 = load i16, i16* %intf_cport_id, align 2, !dbg !6098
  store i16 %8, i16* %cport_id, align 2, !dbg !6099
  br label %if.end, !dbg !6100

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6101
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 14, !dbg !6102
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !6101
  %10 = load i16, i16* %hd_cport_id, align 2, !dbg !6103
  %conv = zext i16 %10 to i32, !dbg !6103
  %11 = load i8, i8* %intf_id, align 1, !dbg !6104
  %conv3 = zext i8 %11 to i32, !dbg !6104
  %12 = load i16, i16* %cport_id, align 2, !dbg !6105
  %conv4 = zext i16 %12 to i32, !dbg !6105
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %conv4) #10, !dbg !6106
  ret void, !dbg !6107
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6108 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6111, metadata !DIExpression()), !dbg !6112
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6113, metadata !DIExpression()), !dbg !6114
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6115
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6116
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6117
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !6118
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6118
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #10, !dbg !6119
  ret void, !dbg !6120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_gb_connection_create(%struct.gb_connection* %connection) #0 !dbg !6121 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6122, metadata !DIExpression()), !dbg !6123
  ret void, !dbg !6123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !6124 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !6128, metadata !DIExpression()), !dbg !6129
  %0 = load i64, i64* %error.addr, align 8, !dbg !6130
  %1 = inttoptr i64 %0 to i8*, !dbg !6131
  ret i8* %1, !dbg !6132
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !6133 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6137, metadata !DIExpression()), !dbg !6142
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6144, metadata !DIExpression()), !dbg !6145
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6146, metadata !DIExpression()), !dbg !6147
  %0 = load i64, i64* %size.addr, align 8, !dbg !6148
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6150
  br i1 %1, label %if.then, label %if.end447, !dbg !6151

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6152
  %tobool = icmp ne i64 %2, 0, !dbg !6152
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6155

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6156
  br label %return, !dbg !6156

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6157
  %cmp = icmp ult i64 %3, 4096, !dbg !6159
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6160

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6161
  br label %return, !dbg !6161

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub = sub i64 %4, 1, !dbg !6162
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6162
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6162

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub4 = sub i64 %6, 1, !dbg !6162
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6162
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6162

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub6 = sub i64 %8, 1, !dbg !6162
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6162
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6162

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6162

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub9 = sub i64 %9, 1, !dbg !6162
  %and = and i64 %sub9, -9223372036854775808, !dbg !6162
  %tobool10 = icmp ne i64 %and, 0, !dbg !6162
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6162

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6162

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub13 = sub i64 %10, 1, !dbg !6162
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6162
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6162
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6162

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6162

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub18 = sub i64 %11, 1, !dbg !6162
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6162
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6162
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6162

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6162

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub23 = sub i64 %12, 1, !dbg !6162
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6162
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6162
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6162

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6162

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub28 = sub i64 %13, 1, !dbg !6162
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6162
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6162
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6162

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6162

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub33 = sub i64 %14, 1, !dbg !6162
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6162
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6162
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6162

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6162

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub38 = sub i64 %15, 1, !dbg !6162
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6162
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6162
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6162

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6162

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub43 = sub i64 %16, 1, !dbg !6162
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6162
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6162
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6162

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6162

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub48 = sub i64 %17, 1, !dbg !6162
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6162
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6162
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6162

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6162

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub53 = sub i64 %18, 1, !dbg !6162
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6162
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6162
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6162

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6162

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub58 = sub i64 %19, 1, !dbg !6162
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6162
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6162
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6162

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6162

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub63 = sub i64 %20, 1, !dbg !6162
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6162
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6162
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6162

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6162

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub68 = sub i64 %21, 1, !dbg !6162
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6162
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6162
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6162

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6162

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub73 = sub i64 %22, 1, !dbg !6162
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6162
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6162
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6162

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6162

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub78 = sub i64 %23, 1, !dbg !6162
  %and79 = and i64 %sub78, 562949953421312, !dbg !6162
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6162
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6162

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6162

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub83 = sub i64 %24, 1, !dbg !6162
  %and84 = and i64 %sub83, 281474976710656, !dbg !6162
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6162
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6162

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6162

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub88 = sub i64 %25, 1, !dbg !6162
  %and89 = and i64 %sub88, 140737488355328, !dbg !6162
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6162
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6162

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6162

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub93 = sub i64 %26, 1, !dbg !6162
  %and94 = and i64 %sub93, 70368744177664, !dbg !6162
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6162
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6162

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6162

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub98 = sub i64 %27, 1, !dbg !6162
  %and99 = and i64 %sub98, 35184372088832, !dbg !6162
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6162
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6162

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6162

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub103 = sub i64 %28, 1, !dbg !6162
  %and104 = and i64 %sub103, 17592186044416, !dbg !6162
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6162
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6162

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6162

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub108 = sub i64 %29, 1, !dbg !6162
  %and109 = and i64 %sub108, 8796093022208, !dbg !6162
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6162
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6162

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6162

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub113 = sub i64 %30, 1, !dbg !6162
  %and114 = and i64 %sub113, 4398046511104, !dbg !6162
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6162
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6162

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6162

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub118 = sub i64 %31, 1, !dbg !6162
  %and119 = and i64 %sub118, 2199023255552, !dbg !6162
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6162
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6162

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6162

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub123 = sub i64 %32, 1, !dbg !6162
  %and124 = and i64 %sub123, 1099511627776, !dbg !6162
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6162
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6162

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6162

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub128 = sub i64 %33, 1, !dbg !6162
  %and129 = and i64 %sub128, 549755813888, !dbg !6162
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6162
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6162

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6162

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub133 = sub i64 %34, 1, !dbg !6162
  %and134 = and i64 %sub133, 274877906944, !dbg !6162
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6162
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6162

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6162

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub138 = sub i64 %35, 1, !dbg !6162
  %and139 = and i64 %sub138, 137438953472, !dbg !6162
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6162
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6162

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6162

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub143 = sub i64 %36, 1, !dbg !6162
  %and144 = and i64 %sub143, 68719476736, !dbg !6162
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6162
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6162

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6162

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub148 = sub i64 %37, 1, !dbg !6162
  %and149 = and i64 %sub148, 34359738368, !dbg !6162
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6162
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6162

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6162

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub153 = sub i64 %38, 1, !dbg !6162
  %and154 = and i64 %sub153, 17179869184, !dbg !6162
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6162
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6162

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6162

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub158 = sub i64 %39, 1, !dbg !6162
  %and159 = and i64 %sub158, 8589934592, !dbg !6162
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6162
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6162

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6162

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub163 = sub i64 %40, 1, !dbg !6162
  %and164 = and i64 %sub163, 4294967296, !dbg !6162
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6162
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6162

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6162

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub168 = sub i64 %41, 1, !dbg !6162
  %and169 = and i64 %sub168, 2147483648, !dbg !6162
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6162
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6162

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6162

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub173 = sub i64 %42, 1, !dbg !6162
  %and174 = and i64 %sub173, 1073741824, !dbg !6162
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6162
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6162

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6162

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub178 = sub i64 %43, 1, !dbg !6162
  %and179 = and i64 %sub178, 536870912, !dbg !6162
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6162
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6162

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6162

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub183 = sub i64 %44, 1, !dbg !6162
  %and184 = and i64 %sub183, 268435456, !dbg !6162
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6162
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6162

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6162

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub188 = sub i64 %45, 1, !dbg !6162
  %and189 = and i64 %sub188, 134217728, !dbg !6162
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6162
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6162

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6162

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub193 = sub i64 %46, 1, !dbg !6162
  %and194 = and i64 %sub193, 67108864, !dbg !6162
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6162
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6162

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6162

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub198 = sub i64 %47, 1, !dbg !6162
  %and199 = and i64 %sub198, 33554432, !dbg !6162
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6162
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6162

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6162

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub203 = sub i64 %48, 1, !dbg !6162
  %and204 = and i64 %sub203, 16777216, !dbg !6162
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6162
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6162

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6162

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub208 = sub i64 %49, 1, !dbg !6162
  %and209 = and i64 %sub208, 8388608, !dbg !6162
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6162
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6162

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6162

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub213 = sub i64 %50, 1, !dbg !6162
  %and214 = and i64 %sub213, 4194304, !dbg !6162
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6162
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6162

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6162

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub218 = sub i64 %51, 1, !dbg !6162
  %and219 = and i64 %sub218, 2097152, !dbg !6162
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6162
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6162

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6162

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub223 = sub i64 %52, 1, !dbg !6162
  %and224 = and i64 %sub223, 1048576, !dbg !6162
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6162
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6162

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6162

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub228 = sub i64 %53, 1, !dbg !6162
  %and229 = and i64 %sub228, 524288, !dbg !6162
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6162
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6162

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6162

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub233 = sub i64 %54, 1, !dbg !6162
  %and234 = and i64 %sub233, 262144, !dbg !6162
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6162
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6162

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6162

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub238 = sub i64 %55, 1, !dbg !6162
  %and239 = and i64 %sub238, 131072, !dbg !6162
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6162
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6162

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6162

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub243 = sub i64 %56, 1, !dbg !6162
  %and244 = and i64 %sub243, 65536, !dbg !6162
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6162
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6162

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6162

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub248 = sub i64 %57, 1, !dbg !6162
  %and249 = and i64 %sub248, 32768, !dbg !6162
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6162
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6162

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6162

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub253 = sub i64 %58, 1, !dbg !6162
  %and254 = and i64 %sub253, 16384, !dbg !6162
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6162
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6162

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6162

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub258 = sub i64 %59, 1, !dbg !6162
  %and259 = and i64 %sub258, 8192, !dbg !6162
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6162
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6162

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6162

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub263 = sub i64 %60, 1, !dbg !6162
  %and264 = and i64 %sub263, 4096, !dbg !6162
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6162
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6162

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6162

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub268 = sub i64 %61, 1, !dbg !6162
  %and269 = and i64 %sub268, 2048, !dbg !6162
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6162
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6162

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6162

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub273 = sub i64 %62, 1, !dbg !6162
  %and274 = and i64 %sub273, 1024, !dbg !6162
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6162
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6162

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6162

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub278 = sub i64 %63, 1, !dbg !6162
  %and279 = and i64 %sub278, 512, !dbg !6162
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6162
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6162

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6162

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub283 = sub i64 %64, 1, !dbg !6162
  %and284 = and i64 %sub283, 256, !dbg !6162
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6162
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6162

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6162

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub288 = sub i64 %65, 1, !dbg !6162
  %and289 = and i64 %sub288, 128, !dbg !6162
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6162
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6162

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6162

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub293 = sub i64 %66, 1, !dbg !6162
  %and294 = and i64 %sub293, 64, !dbg !6162
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6162
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6162

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6162

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub298 = sub i64 %67, 1, !dbg !6162
  %and299 = and i64 %sub298, 32, !dbg !6162
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6162
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6162

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6162

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub303 = sub i64 %68, 1, !dbg !6162
  %and304 = and i64 %sub303, 16, !dbg !6162
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6162
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6162

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6162

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub308 = sub i64 %69, 1, !dbg !6162
  %and309 = and i64 %sub308, 8, !dbg !6162
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6162
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6162

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6162

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub313 = sub i64 %70, 1, !dbg !6162
  %and314 = and i64 %sub313, 4, !dbg !6162
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6162
  %71 = zext i1 %tobool315 to i64, !dbg !6162
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6162
  br label %cond.end, !dbg !6162

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6162
  br label %cond.end317, !dbg !6162

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6162
  br label %cond.end319, !dbg !6162

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6162
  br label %cond.end321, !dbg !6162

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6162
  br label %cond.end323, !dbg !6162

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6162
  br label %cond.end325, !dbg !6162

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6162
  br label %cond.end327, !dbg !6162

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6162
  br label %cond.end329, !dbg !6162

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6162
  br label %cond.end331, !dbg !6162

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6162
  br label %cond.end333, !dbg !6162

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6162
  br label %cond.end335, !dbg !6162

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6162
  br label %cond.end337, !dbg !6162

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6162
  br label %cond.end339, !dbg !6162

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6162
  br label %cond.end341, !dbg !6162

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6162
  br label %cond.end343, !dbg !6162

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6162
  br label %cond.end345, !dbg !6162

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6162
  br label %cond.end347, !dbg !6162

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6162
  br label %cond.end349, !dbg !6162

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6162
  br label %cond.end351, !dbg !6162

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6162
  br label %cond.end353, !dbg !6162

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6162
  br label %cond.end355, !dbg !6162

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6162
  br label %cond.end357, !dbg !6162

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6162
  br label %cond.end359, !dbg !6162

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6162
  br label %cond.end361, !dbg !6162

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6162
  br label %cond.end363, !dbg !6162

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6162
  br label %cond.end365, !dbg !6162

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6162
  br label %cond.end367, !dbg !6162

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6162
  br label %cond.end369, !dbg !6162

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6162
  br label %cond.end371, !dbg !6162

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6162
  br label %cond.end373, !dbg !6162

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6162
  br label %cond.end375, !dbg !6162

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6162
  br label %cond.end377, !dbg !6162

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6162
  br label %cond.end379, !dbg !6162

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6162
  br label %cond.end381, !dbg !6162

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6162
  br label %cond.end383, !dbg !6162

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6162
  br label %cond.end385, !dbg !6162

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6162
  br label %cond.end387, !dbg !6162

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6162
  br label %cond.end389, !dbg !6162

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6162
  br label %cond.end391, !dbg !6162

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6162
  br label %cond.end393, !dbg !6162

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6162
  br label %cond.end395, !dbg !6162

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6162
  br label %cond.end397, !dbg !6162

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6162
  br label %cond.end399, !dbg !6162

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6162
  br label %cond.end401, !dbg !6162

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6162
  br label %cond.end403, !dbg !6162

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6162
  br label %cond.end405, !dbg !6162

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6162
  br label %cond.end407, !dbg !6162

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6162
  br label %cond.end409, !dbg !6162

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6162
  br label %cond.end411, !dbg !6162

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6162
  br label %cond.end413, !dbg !6162

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6162
  br label %cond.end415, !dbg !6162

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6162
  br label %cond.end417, !dbg !6162

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6162
  br label %cond.end419, !dbg !6162

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6162
  br label %cond.end421, !dbg !6162

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6162
  br label %cond.end423, !dbg !6162

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6162
  br label %cond.end425, !dbg !6162

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6162
  br label %cond.end427, !dbg !6162

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6162
  br label %cond.end429, !dbg !6162

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6162
  br label %cond.end431, !dbg !6162

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6162
  br label %cond.end433, !dbg !6162

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6162
  br label %cond.end435, !dbg !6162

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6162
  br label %cond.end437, !dbg !6162

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6162
  br label %cond.end440, !dbg !6162

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6162

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6162
  br label %cond.end444, !dbg !6162

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6162
  %sub443 = sub i64 %72, 1, !dbg !6162
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6162
  br label %cond.end444, !dbg !6162

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6162
  %sub446 = sub i32 %cond445, 12, !dbg !6163
  %add = add i32 %sub446, 1, !dbg !6164
  store i32 %add, i32* %retval, align 4, !dbg !6165
  br label %return, !dbg !6165

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6166
  %dec = add i64 %73, -1, !dbg !6166
  store i64 %dec, i64* %size.addr, align 8, !dbg !6166
  %74 = load i64, i64* %size.addr, align 8, !dbg !6167
  %shr = lshr i64 %74, 12, !dbg !6167
  store i64 %shr, i64* %size.addr, align 8, !dbg !6167
  %75 = load i64, i64* %size.addr, align 8, !dbg !6168
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6145
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6169
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6170
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #4, !dbg !6169, !srcloc !6171
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6169
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6172
  %add.i = add i32 %79, 1, !dbg !6173
  store i32 %add.i, i32* %retval, align 4, !dbg !6174
  br label %return, !dbg !6174

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6175
  ret i32 %80, !dbg !6175
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !6176 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6137, metadata !DIExpression()), !dbg !6180
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6144, metadata !DIExpression()), !dbg !6182
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  %0 = load i64, i64* %n.addr, align 8, !dbg !6185
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6182
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6186
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6187
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #4, !dbg !6186, !srcloc !6171
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6186
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6188
  %add.i = add i32 %4, 1, !dbg !6189
  %sub = sub i32 %add.i, 1, !dbg !6190
  ret i32 %sub, !dbg !6191
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6192 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6196, metadata !DIExpression()), !dbg !6197
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6198, metadata !DIExpression()), !dbg !6199
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6200, metadata !DIExpression()), !dbg !6201
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6202, metadata !DIExpression()), !dbg !6203
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6204
  ret i8* %0, !dbg !6205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6206 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6211, metadata !DIExpression()), !dbg !6212
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6213
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6214
  %1 = load i8*, i8** %name, align 8, !dbg !6214
  ret i8* %1, !dbg !6215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !6216 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4208, metadata !DIExpression()), !dbg !6219
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4219, metadata !DIExpression()), !dbg !6222
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4221, metadata !DIExpression()), !dbg !6223
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4231, metadata !DIExpression()), !dbg !6225
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4233, metadata !DIExpression()), !dbg !6226
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4235, metadata !DIExpression()), !dbg !6227
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6228, metadata !DIExpression()), !dbg !6229
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !6230, metadata !DIExpression()), !dbg !6231
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6232
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6233
  %1 = load i32, i32* %n.addr, align 4, !dbg !6234
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6235
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6235
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6236
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6237
  %conv.i.i = trunc i64 %5 to i32, !dbg !6237
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !6238
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6239
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6239
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #12, !dbg !6239
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6240
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !6241
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6242
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6242
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !6242
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !6242
  ret void, !dbg !6243
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6244 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6249, metadata !DIExpression()), !dbg !6250
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6251, metadata !DIExpression()), !dbg !6252
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6253
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6255
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6256
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #10, !dbg !6257
  br i1 %call, label %if.end, label %if.then, !dbg !6258

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6259

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6260
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6261
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6262
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6263
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6264
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6265
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6266
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6267
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6268
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6269
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6270
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6271
  br label %do.body, !dbg !6272

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6273

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6275

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6273

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6277
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6277
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6277
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6277
  br label %do.end7, !dbg !6277

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6273

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6280 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6283, metadata !DIExpression()), !dbg !6284
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6285, metadata !DIExpression()), !dbg !6286
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6287, metadata !DIExpression()), !dbg !6288
  ret i1 true, !dbg !6289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_hd_cport_enable(%struct.gb_connection* %connection) #0 !dbg !6290 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6291, metadata !DIExpression()), !dbg !6292
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !6293, metadata !DIExpression()), !dbg !6294
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6295
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !6296
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !6296
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !6294
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6297, metadata !DIExpression()), !dbg !6298
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6299
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !6301
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !6301
  %cport_enable = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 3, !dbg !6302
  %4 = load i32 (%struct.gb_host_device*, i16, i64)*, i32 (%struct.gb_host_device*, i16, i64)** %cport_enable, align 8, !dbg !6302
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16, i64)* %4, null, !dbg !6299
  br i1 %tobool, label %if.end, label %if.then, !dbg !6303

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6304
  br label %return, !dbg !6304

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6305
  %driver2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 2, !dbg !6306
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver2, align 8, !dbg !6306
  %cport_enable3 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 3, !dbg !6307
  %7 = load i32 (%struct.gb_host_device*, i16, i64)*, i32 (%struct.gb_host_device*, i16, i64)** %cport_enable3, align 8, !dbg !6307
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6308
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6309
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 4, !dbg !6310
  %10 = load i16, i16* %hd_cport_id, align 4, !dbg !6310
  %11 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6311
  %flags = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %11, i32 0, i32 9, !dbg !6312
  %12 = load i64, i64* %flags, align 8, !dbg !6312
  %call = call i32 %7(%struct.gb_host_device* %8, i16 zeroext %10, i64 %12) #10, !dbg !6305
  store i32 %call, i32* %ret, align 4, !dbg !6313
  %13 = load i32, i32* %ret, align 4, !dbg !6314
  %tobool4 = icmp ne i32 %13, 0, !dbg !6314
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6316

if.then5:                                         ; preds = %if.end
  %14 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6317
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %14, i32 0, i32 0, !dbg !6317
  %15 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6317
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %15, i32 0, i32 14, !dbg !6317
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !6317
  %16 = load i32, i32* %ret, align 4, !dbg !6317
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %arraydecay, i32 %16) #11, !dbg !6317
  %17 = load i32, i32* %ret, align 4, !dbg !6319
  store i32 %17, i32* %retval, align 4, !dbg !6320
  br label %return, !dbg !6320

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6321
  br label %return, !dbg !6321

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !6322
  ret i32 %18, !dbg !6322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_svc_connection_create(%struct.gb_connection* %connection) #0 !dbg !6323 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %intf = alloca %struct.gb_interface*, align 8
  %cport_flags = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6324, metadata !DIExpression()), !dbg !6325
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !6326, metadata !DIExpression()), !dbg !6327
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6328
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !6329
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !6329
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !6327
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !6330, metadata !DIExpression()), !dbg !6331
  call void @llvm.dbg.declare(metadata i8* %cport_flags, metadata !6332, metadata !DIExpression()), !dbg !6333
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6334, metadata !DIExpression()), !dbg !6335
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6336
  %call = call zeroext i1 @gb_connection_is_static(%struct.gb_connection* %2) #10, !dbg !6338
  br i1 %call, label %if.then, label %if.end, !dbg !6339

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6340
  br label %return, !dbg !6340

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6341
  %intf2 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %3, i32 0, i32 1, !dbg !6342
  %4 = load %struct.gb_interface*, %struct.gb_interface** %intf2, align 8, !dbg !6342
  store %struct.gb_interface* %4, %struct.gb_interface** %intf, align 8, !dbg !6343
  store i8 4, i8* %cport_flags, align 1, !dbg !6344
  %5 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6345
  %call3 = call zeroext i1 @gb_connection_flow_control_disabled(%struct.gb_connection* %5) #10, !dbg !6347
  br i1 %call3, label %if.then4, label %if.else, !dbg !6348

if.then4:                                         ; preds = %if.end
  %6 = load i8, i8* %cport_flags, align 1, !dbg !6349
  %conv = zext i8 %6 to i64, !dbg !6349
  %or = or i64 %conv, 2, !dbg !6349
  %conv5 = trunc i64 %or to i8, !dbg !6349
  store i8 %conv5, i8* %cport_flags, align 1, !dbg !6349
  br label %if.end12, !dbg !6351

if.else:                                          ; preds = %if.end
  %7 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6352
  %call6 = call zeroext i1 @gb_connection_e2efc_enabled(%struct.gb_connection* %7) #10, !dbg !6354
  br i1 %call6, label %if.then7, label %if.end11, !dbg !6355

if.then7:                                         ; preds = %if.else
  %8 = load i8, i8* %cport_flags, align 1, !dbg !6356
  %conv8 = zext i8 %8 to i64, !dbg !6356
  %or9 = or i64 %conv8, 3, !dbg !6356
  %conv10 = trunc i64 %or9 to i8, !dbg !6356
  store i8 %conv10, i8* %cport_flags, align 1, !dbg !6356
  br label %if.end11, !dbg !6358

if.end11:                                         ; preds = %if.then7, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then4
  %9 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6359
  %svc = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %9, i32 0, i32 8, !dbg !6360
  %10 = load %struct.gb_svc*, %struct.gb_svc** %svc, align 8, !dbg !6360
  %11 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6361
  %svc13 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %11, i32 0, i32 8, !dbg !6362
  %12 = load %struct.gb_svc*, %struct.gb_svc** %svc13, align 8, !dbg !6362
  %ap_intf_id = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %12, i32 0, i32 7, !dbg !6363
  %13 = load i8, i8* %ap_intf_id, align 2, !dbg !6363
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6364
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 4, !dbg !6365
  %15 = load i16, i16* %hd_cport_id, align 4, !dbg !6365
  %16 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !6366
  %interface_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %16, i32 0, i32 5, !dbg !6367
  %17 = load i8, i8* %interface_id, align 8, !dbg !6367
  %18 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6368
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 5, !dbg !6369
  %19 = load i16, i16* %intf_cport_id, align 2, !dbg !6369
  %20 = load i8, i8* %cport_flags, align 1, !dbg !6370
  %call14 = call i32 @gb_svc_connection_create(%struct.gb_svc* %10, i8 zeroext %13, i16 zeroext %15, i8 zeroext %17, i16 zeroext %19, i8 zeroext %20) #10, !dbg !6371
  store i32 %call14, i32* %ret, align 4, !dbg !6372
  %21 = load i32, i32* %ret, align 4, !dbg !6373
  %tobool = icmp ne i32 %21, 0, !dbg !6373
  br i1 %tobool, label %if.then15, label %if.end17, !dbg !6375

if.then15:                                        ; preds = %if.end12
  %22 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6376
  %hd16 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %22, i32 0, i32 0, !dbg !6376
  %23 = load %struct.gb_host_device*, %struct.gb_host_device** %hd16, align 8, !dbg !6376
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %23, i32 0, i32 0, !dbg !6376
  %24 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6376
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %24, i32 0, i32 14, !dbg !6376
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !6376
  %25 = load i32, i32* %ret, align 4, !dbg !6376
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %arraydecay, i32 %25) #11, !dbg !6376
  %26 = load i32, i32* %ret, align 4, !dbg !6378
  store i32 %26, i32* %retval, align 4, !dbg !6379
  br label %return, !dbg !6379

if.end17:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !6380
  br label %return, !dbg !6380

return:                                           ; preds = %if.end17, %if.then15, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !6381
  ret i32 %27, !dbg !6381
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_hd_cport_connected(%struct.gb_connection* %connection) #0 !dbg !6382 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6383, metadata !DIExpression()), !dbg !6384
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !6385, metadata !DIExpression()), !dbg !6386
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6387
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !6388
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !6388
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !6386
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6389, metadata !DIExpression()), !dbg !6390
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6391
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !6393
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !6393
  %cport_connected = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %3, i32 0, i32 5, !dbg !6394
  %4 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_connected, align 8, !dbg !6394
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16)* %4, null, !dbg !6391
  br i1 %tobool, label %if.end, label %if.then, !dbg !6395

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6396
  br label %return, !dbg !6396

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6397
  %driver2 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 2, !dbg !6398
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver2, align 8, !dbg !6398
  %cport_connected3 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 5, !dbg !6399
  %7 = load i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)** %cport_connected3, align 8, !dbg !6399
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6400
  %9 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6401
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %9, i32 0, i32 4, !dbg !6402
  %10 = load i16, i16* %hd_cport_id, align 4, !dbg !6402
  %call = call i32 %7(%struct.gb_host_device* %8, i16 zeroext %10) #10, !dbg !6397
  store i32 %call, i32* %ret, align 4, !dbg !6403
  %11 = load i32, i32* %ret, align 4, !dbg !6404
  %tobool4 = icmp ne i32 %11, 0, !dbg !6404
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6406

if.then5:                                         ; preds = %if.end
  %12 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6407
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %12, i32 0, i32 0, !dbg !6407
  %13 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6407
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %13, i32 0, i32 14, !dbg !6407
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !6407
  %14 = load i32, i32* %ret, align 4, !dbg !6407
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* %arraydecay, i32 %14) #11, !dbg !6407
  %15 = load i32, i32* %ret, align 4, !dbg !6409
  store i32 %15, i32* %retval, align 4, !dbg !6410
  br label %return, !dbg !6410

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6411
  br label %return, !dbg !6411

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !6412
  ret i32 %16, !dbg !6412
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_control_connected(%struct.gb_connection* %connection) #0 !dbg !6413 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %control = alloca %struct.gb_control*, align 8
  %cport_id = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6414, metadata !DIExpression()), !dbg !6415
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !6416, metadata !DIExpression()), !dbg !6417
  call void @llvm.dbg.declare(metadata i16* %cport_id, metadata !6418, metadata !DIExpression()), !dbg !6419
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6420
  %intf_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 5, !dbg !6421
  %1 = load i16, i16* %intf_cport_id, align 2, !dbg !6421
  store i16 %1, i16* %cport_id, align 2, !dbg !6419
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6422, metadata !DIExpression()), !dbg !6423
  %2 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6424
  %call = call zeroext i1 @gb_connection_is_static(%struct.gb_connection* %2) #10, !dbg !6426
  br i1 %call, label %if.then, label %if.end, !dbg !6427

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6428
  br label %return, !dbg !6428

if.end:                                           ; preds = %entry
  %3 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6429
  %call1 = call zeroext i1 @gb_connection_is_control(%struct.gb_connection* %3) #10, !dbg !6431
  br i1 %call1, label %if.then2, label %if.end3, !dbg !6432

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6433
  br label %return, !dbg !6433

if.end3:                                          ; preds = %if.end
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6434
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %4, i32 0, i32 1, !dbg !6435
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !6435
  %control4 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 1, !dbg !6436
  %6 = load %struct.gb_control*, %struct.gb_control** %control4, align 8, !dbg !6436
  store %struct.gb_control* %6, %struct.gb_control** %control, align 8, !dbg !6437
  %7 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !6438
  %8 = load i16, i16* %cport_id, align 2, !dbg !6439
  %call5 = call i32 @gb_control_connected_operation(%struct.gb_control* %7, i16 zeroext %8) #10, !dbg !6440
  store i32 %call5, i32* %ret, align 4, !dbg !6441
  %9 = load i32, i32* %ret, align 4, !dbg !6442
  %tobool = icmp ne i32 %9, 0, !dbg !6442
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !6444

if.then6:                                         ; preds = %if.end3
  %10 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6445
  %bundle = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 2, !dbg !6445
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !6445
  %dev = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 0, !dbg !6445
  %12 = load i32, i32* %ret, align 4, !dbg !6445
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %12) #11, !dbg !6445
  %13 = load i32, i32* %ret, align 4, !dbg !6447
  store i32 %13, i32* %retval, align 4, !dbg !6448
  br label %return, !dbg !6448

if.end7:                                          ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !6449
  br label %return, !dbg !6449

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !6450
  ret i32 %14, !dbg !6450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_connection_is_static(%struct.gb_connection* %connection) #0 !dbg !6451 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6456
  %intf = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 1, !dbg !6457
  %1 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !6457
  %tobool = icmp ne %struct.gb_interface* %1, null, !dbg !6458
  %lnot = xor i1 %tobool, true, !dbg !6458
  ret i1 %lnot, !dbg !6459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_connection_flow_control_disabled(%struct.gb_connection* %connection) #0 !dbg !6460 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6461, metadata !DIExpression()), !dbg !6462
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6463
  %flags = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 9, !dbg !6464
  %1 = load i64, i64* %flags, align 8, !dbg !6464
  %and = and i64 %1, 2, !dbg !6465
  %tobool = icmp ne i64 %and, 0, !dbg !6463
  ret i1 %tobool, !dbg !6466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_connection_e2efc_enabled(%struct.gb_connection* %connection) #0 !dbg !6467 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6468, metadata !DIExpression()), !dbg !6469
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6470
  %flags = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 9, !dbg !6471
  %1 = load i64, i64* %flags, align 8, !dbg !6471
  %and = and i64 %1, 1, !dbg !6472
  %tobool = icmp ne i64 %and, 0, !dbg !6473
  %lnot = xor i1 %tobool, true, !dbg !6473
  ret i1 %lnot, !dbg !6474
}

; Function Attrs: noredzone
declare dso_local i32 @gb_svc_connection_create(%struct.gb_svc*, i8 zeroext, i16 zeroext, i8 zeroext, i16 zeroext, i8 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_connection_is_control(%struct.gb_connection* %connection) #0 !dbg !6475 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6476, metadata !DIExpression()), !dbg !6477
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6478
  %flags = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 9, !dbg !6479
  %1 = load i64, i64* %flags, align 8, !dbg !6479
  %and = and i64 %1, 16, !dbg !6480
  %tobool = icmp ne i64 %and, 0, !dbg !6478
  ret i1 %tobool, !dbg !6481
}

; Function Attrs: noredzone
declare dso_local i32 @gb_control_connected_operation(%struct.gb_control*, i16 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !6482 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6483, metadata !DIExpression()), !dbg !6485
  %0 = load i64, i64* %__edi, align 8, !dbg !6485
  store i64 %0, i64* %__edi, align 8, !dbg !6485
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6486, metadata !DIExpression()), !dbg !6485
  %1 = load i64, i64* %__esi, align 8, !dbg !6485
  store i64 %1, i64* %__esi, align 8, !dbg !6485
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6487, metadata !DIExpression()), !dbg !6485
  %2 = load i64, i64* %__edx, align 8, !dbg !6485
  store i64 %2, i64* %__edx, align 8, !dbg !6485
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6488, metadata !DIExpression()), !dbg !6485
  %3 = load i64, i64* %__ecx, align 8, !dbg !6485
  store i64 %3, i64* %__ecx, align 8, !dbg !6485
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6489, metadata !DIExpression()), !dbg !6485
  %4 = load i64, i64* %__eax, align 8, !dbg !6485
  store i64 %4, i64* %__eax, align 8, !dbg !6485
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !6485
  %6 = call i64 @llvm.read_register.i64(metadata !4022), !dbg !6485
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !6485, !srcloc !6490
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6485
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6485
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6485
  call void @llvm.write_register.i64(metadata !4022, i64 %asmresult1), !dbg !6485
  ret void, !dbg !6491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !6492 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6497, metadata !DIExpression()), !dbg !6498
  br label %do.body, !dbg !6499

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6501

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6499
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !6499
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6499
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !6501
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !6499
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6503
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !6504
  %conv = zext i1 %cmp to i32, !dbg !6504
  ret i32 %conv, !dbg !6505
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_operation_is_incoming(%struct.gb_operation* %operation) #0 !dbg !6506 {
entry:
  %operation.addr = alloca %struct.gb_operation*, align 8
  store %struct.gb_operation* %operation, %struct.gb_operation** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation.addr, metadata !6509, metadata !DIExpression()), !dbg !6510
  %0 = load %struct.gb_operation*, %struct.gb_operation** %operation.addr, align 8, !dbg !6511
  %flags = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %0, i32 0, i32 3, !dbg !6512
  %1 = load i64, i64* %flags, align 8, !dbg !6512
  %and = and i64 %1, 1, !dbg !6513
  %tobool = icmp ne i64 %and, 0, !dbg !6511
  ret i1 %tobool, !dbg !6514
}

; Function Attrs: noredzone
declare dso_local void @gb_operation_get(%struct.gb_operation*) #3

; Function Attrs: noredzone
declare dso_local void @gb_operation_cancel_incoming(%struct.gb_operation*, i32) #3

; Function Attrs: noredzone
declare dso_local void @gb_operation_put(%struct.gb_operation*) #3

; Function Attrs: noredzone
declare dso_local void @gb_svc_connection_destroy(%struct.gb_svc*, i8 zeroext, i16 zeroext, i8 zeroext, i16 zeroext) #3

; Function Attrs: noredzone
declare dso_local void @gb_operation_cancel(%struct.gb_operation*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @gb_control_disconnecting_operation(%struct.gb_control*, i16 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_cport_shutdown(%struct.gb_connection* %connection, i8 zeroext %phase) #0 !dbg !6515 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %phase.addr = alloca i8, align 1
  %hd = alloca %struct.gb_host_device*, align 8
  %drv = alloca %struct.gb_hd_driver*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6518, metadata !DIExpression()), !dbg !6519
  store i8 %phase, i8* %phase.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %phase.addr, metadata !6520, metadata !DIExpression()), !dbg !6521
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !6522, metadata !DIExpression()), !dbg !6523
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6524
  %hd1 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 0, !dbg !6525
  %1 = load %struct.gb_host_device*, %struct.gb_host_device** %hd1, align 8, !dbg !6525
  store %struct.gb_host_device* %1, %struct.gb_host_device** %hd, align 8, !dbg !6523
  call void @llvm.dbg.declare(metadata %struct.gb_hd_driver** %drv, metadata !6526, metadata !DIExpression()), !dbg !6527
  %2 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6528
  %driver = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %2, i32 0, i32 2, !dbg !6529
  %3 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %driver, align 8, !dbg !6529
  store %struct.gb_hd_driver* %3, %struct.gb_hd_driver** %drv, align 8, !dbg !6527
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6530, metadata !DIExpression()), !dbg !6531
  %4 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6532
  %call = call zeroext i1 @gb_connection_is_static(%struct.gb_connection* %4) #10, !dbg !6534
  br i1 %call, label %if.then, label %if.end, !dbg !6535

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6536
  br label %return, !dbg !6536

if.end:                                           ; preds = %entry
  %5 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6537
  %call2 = call zeroext i1 @gb_connection_is_offloaded(%struct.gb_connection* %5) #10, !dbg !6539
  br i1 %call2, label %if.then3, label %if.else, !dbg !6540

if.then3:                                         ; preds = %if.end
  %6 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %drv, align 8, !dbg !6541
  %cport_shutdown = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %6, i32 0, i32 7, !dbg !6544
  %7 = load i32 (%struct.gb_host_device*, i16, i8, i32)*, i32 (%struct.gb_host_device*, i16, i8, i32)** %cport_shutdown, align 8, !dbg !6544
  %tobool = icmp ne i32 (%struct.gb_host_device*, i16, i8, i32)* %7, null, !dbg !6541
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !6545

if.then4:                                         ; preds = %if.then3
  store i32 0, i32* %retval, align 4, !dbg !6546
  br label %return, !dbg !6546

if.end5:                                          ; preds = %if.then3
  %8 = load %struct.gb_hd_driver*, %struct.gb_hd_driver** %drv, align 8, !dbg !6547
  %cport_shutdown6 = getelementptr inbounds %struct.gb_hd_driver, %struct.gb_hd_driver* %8, i32 0, i32 7, !dbg !6548
  %9 = load i32 (%struct.gb_host_device*, i16, i8, i32)*, i32 (%struct.gb_host_device*, i16, i8, i32)** %cport_shutdown6, align 8, !dbg !6548
  %10 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6549
  %11 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6550
  %hd_cport_id = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %11, i32 0, i32 4, !dbg !6551
  %12 = load i16, i16* %hd_cport_id, align 4, !dbg !6551
  %13 = load i8, i8* %phase.addr, align 1, !dbg !6552
  %call7 = call i32 %9(%struct.gb_host_device* %10, i16 zeroext %12, i8 zeroext %13, i32 1000) #10, !dbg !6547
  store i32 %call7, i32* %ret, align 4, !dbg !6553
  br label %if.end9, !dbg !6554

if.else:                                          ; preds = %if.end
  %14 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6555
  %15 = load i8, i8* %phase.addr, align 1, !dbg !6557
  %call8 = call i32 @gb_connection_shutdown_operation(%struct.gb_connection* %14, i8 zeroext %15) #10, !dbg !6558
  store i32 %call8, i32* %ret, align 4, !dbg !6559
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end5
  %16 = load i32, i32* %ret, align 4, !dbg !6560
  %tobool10 = icmp ne i32 %16, 0, !dbg !6560
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6562

if.then11:                                        ; preds = %if.end9
  %17 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !6563
  %dev = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %17, i32 0, i32 0, !dbg !6563
  %18 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6563
  %name = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 14, !dbg !6563
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !6563
  %19 = load i8, i8* %phase.addr, align 1, !dbg !6563
  %conv = zext i8 %19 to i32, !dbg !6563
  %20 = load i32, i32* %ret, align 4, !dbg !6563
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i8* %arraydecay, i32 %conv, i32 %20) #11, !dbg !6563
  %21 = load i32, i32* %ret, align 4, !dbg !6565
  store i32 %21, i32* %retval, align 4, !dbg !6566
  br label %return, !dbg !6566

if.end12:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !6567
  br label %return, !dbg !6567

return:                                           ; preds = %if.end12, %if.then11, %if.then4, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !6568
  ret i32 %22, !dbg !6568
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_connection_is_offloaded(%struct.gb_connection* %connection) #0 !dbg !6569 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6570, metadata !DIExpression()), !dbg !6571
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6572
  %flags = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 9, !dbg !6573
  %1 = load i64, i64* %flags, align 8, !dbg !6573
  %and = and i64 %1, 4, !dbg !6574
  %tobool = icmp ne i64 %and, 0, !dbg !6572
  ret i1 %tobool, !dbg !6575
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_connection_shutdown_operation(%struct.gb_connection* %connection, i8 zeroext %phase) #0 !dbg !6576 {
entry:
  %retval = alloca i32, align 4
  %connection.addr = alloca %struct.gb_connection*, align 8
  %phase.addr = alloca i8, align 1
  %req = alloca %struct.gb_cport_shutdown_request*, align 8
  %operation = alloca %struct.gb_operation*, align 8
  %ret = alloca i32, align 4
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !6577, metadata !DIExpression()), !dbg !6578
  store i8 %phase, i8* %phase.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %phase.addr, metadata !6579, metadata !DIExpression()), !dbg !6580
  call void @llvm.dbg.declare(metadata %struct.gb_cport_shutdown_request** %req, metadata !6581, metadata !DIExpression()), !dbg !6586
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation, metadata !6587, metadata !DIExpression()), !dbg !6588
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6589, metadata !DIExpression()), !dbg !6590
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !6591
  %call = call %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection* %0, i8 zeroext 0, i64 1, i64 0, i64 0, i32 3264) #10, !dbg !6592
  store %struct.gb_operation* %call, %struct.gb_operation** %operation, align 8, !dbg !6593
  %1 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !6594
  %tobool = icmp ne %struct.gb_operation* %1, null, !dbg !6594
  br i1 %tobool, label %if.end, label %if.then, !dbg !6596

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6597
  br label %return, !dbg !6597

if.end:                                           ; preds = %entry
  %2 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !6598
  %request = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %2, i32 0, i32 1, !dbg !6599
  %3 = load %struct.gb_message*, %struct.gb_message** %request, align 8, !dbg !6599
  %payload = getelementptr inbounds %struct.gb_message, %struct.gb_message* %3, i32 0, i32 2, !dbg !6600
  %4 = load i8*, i8** %payload, align 8, !dbg !6600
  %5 = bitcast i8* %4 to %struct.gb_cport_shutdown_request*, !dbg !6598
  store %struct.gb_cport_shutdown_request* %5, %struct.gb_cport_shutdown_request** %req, align 8, !dbg !6601
  %6 = load i8, i8* %phase.addr, align 1, !dbg !6602
  %7 = load %struct.gb_cport_shutdown_request*, %struct.gb_cport_shutdown_request** %req, align 8, !dbg !6603
  %phase1 = getelementptr inbounds %struct.gb_cport_shutdown_request, %struct.gb_cport_shutdown_request* %7, i32 0, i32 0, !dbg !6604
  store i8 %6, i8* %phase1, align 1, !dbg !6605
  %8 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !6606
  %call2 = call i32 @gb_operation_request_send_sync(%struct.gb_operation* %8) #10, !dbg !6607
  store i32 %call2, i32* %ret, align 4, !dbg !6608
  %9 = load %struct.gb_operation*, %struct.gb_operation** %operation, align 8, !dbg !6609
  call void @gb_operation_put(%struct.gb_operation* %9) #10, !dbg !6610
  %10 = load i32, i32* %ret, align 4, !dbg !6611
  store i32 %10, i32* %retval, align 4, !dbg !6612
  br label %return, !dbg !6612

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !6613
  ret i32 %11, !dbg !6613
}

; Function Attrs: noredzone
declare dso_local %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection*, i8 zeroext, i64, i64, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_operation_request_send_sync(%struct.gb_operation* %operation) #0 !dbg !6614 {
entry:
  %operation.addr = alloca %struct.gb_operation*, align 8
  store %struct.gb_operation* %operation, %struct.gb_operation** %operation.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_operation** %operation.addr, metadata !6615, metadata !DIExpression()), !dbg !6616
  %0 = load %struct.gb_operation*, %struct.gb_operation** %operation.addr, align 8, !dbg !6617
  %call = call i32 @gb_operation_request_send_sync_timeout(%struct.gb_operation* %0, i32 1000) #10, !dbg !6618
  ret i32 %call, !dbg !6619
}

; Function Attrs: noredzone
declare dso_local i32 @gb_operation_request_send_sync_timeout(%struct.gb_operation*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @gb_control_mode_switch_operation(%struct.gb_control*) #3

; Function Attrs: noredzone
declare dso_local i32 @gb_control_disconnected_operation(%struct.gb_control*, i16 zeroext) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !6620 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6621, metadata !DIExpression()), !dbg !6622
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6623
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #10, !dbg !6625
  br i1 %call, label %if.end, label %if.then, !dbg !6626

if.then:                                          ; preds = %entry
  br label %return, !dbg !6627

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6628
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6629
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6629
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6630
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6631
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6631
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #10, !dbg !6632
  br label %return, !dbg !6633

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !6634 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6637, metadata !DIExpression()), !dbg !6638
  ret i1 true, !dbg !6639
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !6640 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6641, metadata !DIExpression()), !dbg !6642
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6643, metadata !DIExpression()), !dbg !6644
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6645
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6646
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6647
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6648
  br label %do.body, !dbg !6649

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6650

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6652

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6650

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6654
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6654
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6654
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6654
  br label %do.end5, !dbg !6654

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6650

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6656
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4022}
!llvm.module.flags = !{!4023, !4024, !4025, !4026}
!llvm.ident = !{!4027}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gb_connection_mutex", scope: !2, file: !3, line: 19, type: !1136, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !155, globals: !4014, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/greybus/connection.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !101, !108, !114, !118, !123, !131, !148}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_interface_type", file: !94, line: 15, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/greybus/interface.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "GB_INTERFACE_TYPE_INVALID", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNKNOWN", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "GB_INTERFACE_TYPE_DUMMY", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNIPRO", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "GB_INTERFACE_TYPE_GREYBUS", value: 4, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_connection_state", file: !102, line: 27, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/greybus/connection.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISABLED", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED_TX", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISCONNECTING", value: 3, isUnsigned: true)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_state", file: !109, line: 21, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/greybus/svc.h", directory: "/home/lizy2001/genbc/linux")
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "GB_SVC_STATE_RESET", value: 0, isUnsigned: true)
!112 = !DIEnumerator(name: "GB_SVC_STATE_PROTOCOL_VERSION", value: 1, isUnsigned: true)
!113 = !DIEnumerator(name: "GB_SVC_STATE_SVC_HELLO", value: 2, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_watchdog_bite", file: !109, line: 27, baseType: !7, size: 32, elements: !115)
!115 = !{!116, !117}
!116 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_RESET_UNIPRO", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_PANIC_KERNEL", value: 1, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 10, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !124, line: 119, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127, !128, !129, !130}
!126 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!130 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 308, baseType: !7, size: 32, elements: !133)
!132 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!134 = !DIEnumerator(name: "WQ_UNBOUND", value: 2, isUnsigned: true)
!135 = !DIEnumerator(name: "WQ_FREEZABLE", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "WQ_MEM_RECLAIM", value: 8, isUnsigned: true)
!137 = !DIEnumerator(name: "WQ_HIGHPRI", value: 16, isUnsigned: true)
!138 = !DIEnumerator(name: "WQ_CPU_INTENSIVE", value: 32, isUnsigned: true)
!139 = !DIEnumerator(name: "WQ_SYSFS", value: 64, isUnsigned: true)
!140 = !DIEnumerator(name: "WQ_POWER_EFFICIENT", value: 128, isUnsigned: true)
!141 = !DIEnumerator(name: "__WQ_DRAINING", value: 65536, isUnsigned: true)
!142 = !DIEnumerator(name: "__WQ_ORDERED", value: 131072, isUnsigned: true)
!143 = !DIEnumerator(name: "__WQ_LEGACY", value: 262144, isUnsigned: true)
!144 = !DIEnumerator(name: "__WQ_ORDERED_EXPLICIT", value: 524288, isUnsigned: true)
!145 = !DIEnumerator(name: "WQ_MAX_ACTIVE", value: 512, isUnsigned: true)
!146 = !DIEnumerator(name: "WQ_MAX_UNBOUND_PER_CPU", value: 4, isUnsigned: true)
!147 = !DIEnumerator(name: "WQ_DFL_ACTIVE", value: 256, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !149, line: 305, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !153, !154}
!151 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!155 = !{!156, !161, !162, !287, !708, !4008, !4010, !3824, !4012}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !157, line: 19, baseType: !158)
!157 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !159, line: 24, baseType: !160)
!159 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_connection", file: !102, line: 38, size: 1408, elements: !164)
!164 = !{!165, !3908, !3964, !3988, !3989, !3990, !3991, !3992, !3993, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !163, file: !102, line: 39, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_host_device", file: !168, line: 44, size: 6272, elements: !169)
!168 = !DIFile(filename: "./include/linux/greybus/hd.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !3781, !3782, !3873, !3874, !3875, !3879, !3880, !3881, !3906}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !167, file: !168, line: 45, baseType: !171, size: 5568)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !172)
!172 = !{!173, !3334, !3336, !3339, !3340, !3391, !3482, !3483, !3484, !3485, !3486, !3495, !3600, !3613, !3616, !3617, !3621, !3623, !3624, !3625, !3629, !3635, !3636, !3639, !3643, !3733, !3734, !3735, !3736, !3737, !3769, !3770, !3771, !3774, !3777, !3778, !3779, !3780}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !171, file: !73, line: 462, baseType: !174, size: 512)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !175, line: 64, size: 512, elements: !176)
!175 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !181, !188, !190, !251, !3185, !3324, !3329, !3330, !3331, !3332, !3333}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !175, line: 65, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !174, file: !175, line: 66, baseType: !182, size: 128, offset: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !183, line: 178, size: 128, elements: !184)
!183 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!184 = !{!185, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !183, line: 179, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !183, line: 179, baseType: !186, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !175, line: 67, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !174, file: !175, line: 68, baseType: !191, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !175, line: 192, size: 704, elements: !193)
!193 = !{!194, !195, !211, !212}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !192, file: !175, line: 193, baseType: !182, size: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !192, file: !175, line: 194, baseType: !196, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !197, line: 83, baseType: !198)
!197 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !197, line: 71, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !197, line: 72, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !197, line: 72, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !201, file: !197, line: 73, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !197, line: 20, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !204, file: !197, line: 21, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !208, line: 25, baseType: !209)
!208 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 25, elements: !210)
!210 = !{}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !192, file: !175, line: 195, baseType: !174, size: 512, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !192, file: !175, line: 196, baseType: !213, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !175, line: 156, size: 192, elements: !216)
!216 = !{!217, !223, !228}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !215, file: !175, line: 157, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !191, !189}
!222 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !175, line: 158, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!178, !191, !189}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !215, file: !175, line: 159, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!222, !191, !189, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !175, line: 148, size: 20736, elements: !235)
!235 = !{!236, !241, !245, !246, !250}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !234, file: !175, line: 149, baseType: !237, size: 192)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 192, elements: !239)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!239 = !{!240}
!240 = !DISubrange(count: 3)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !234, file: !175, line: 150, baseType: !242, size: 4096, offset: 192)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 4096, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !234, file: !175, line: 151, baseType: !222, size: 32, offset: 4288)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !234, file: !175, line: 152, baseType: !247, size: 16384, offset: 4320)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 16384, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 2048)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !234, file: !175, line: 153, baseType: !222, size: 32, offset: 20704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !174, file: !175, line: 69, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !175, line: 138, size: 448, elements: !254)
!254 = !{!255, !259, !288, !290, !3147, !3175, !3179}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !253, file: !175, line: 139, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !189}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !253, file: !175, line: 140, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !263, line: 230, size: 128, elements: !264)
!263 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!264 = !{!265, !280}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !262, file: !263, line: 231, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !189, !274, !238}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !183, line: 60, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !271, line: 73, baseType: !272)
!271 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !271, line: 15, baseType: !273)
!273 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !263, line: 30, size: 128, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !263, line: 31, baseType: !178, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !275, file: !263, line: 32, baseType: !279, size: 16, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !183, line: 19, baseType: !160)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !262, file: !263, line: 232, baseType: !281, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!269, !189, !274, !178, !284}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !183, line: 55, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !271, line: 72, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !271, line: 16, baseType: !287)
!287 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !253, file: !175, line: 141, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !253, file: !175, line: 142, baseType: !291, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !263, line: 84, size: 320, elements: !295)
!295 = !{!296, !297, !301, !3144, !3145}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !263, line: 85, baseType: !178, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !294, file: !263, line: 86, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!279, !189, !274, !222}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !294, file: !263, line: 88, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!279, !189, !305, !222}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !263, line: 168, size: 448, elements: !307)
!307 = !{!308, !309, !310, !311, !3139, !3140}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !306, file: !263, line: 169, baseType: !275, size: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !306, file: !263, line: 170, baseType: !284, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !306, file: !263, line: 171, baseType: !161, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !306, file: !263, line: 172, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!269, !315, !189, !305, !238, !492, !284}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !317)
!317 = !{!318, !336, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3122, !3123, !3132, !3133, !3134, !3135, !3136, !3137, !3138}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !316, file: !44, line: 920, baseType: !319, size: 128)
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !44, line: 917, size: 128, elements: !320)
!320 = !{!321, !327}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !319, file: !44, line: 918, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !323, line: 58, size: 64, elements: !324)
!323 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !323, line: 59, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !319, file: !44, line: 919, baseType: !328, size: 128, align: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !183, line: 216, size: 128, align: 64, elements: !329)
!329 = !{!330, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !183, line: 217, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !328, file: !183, line: 218, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !331}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !316, file: !44, line: 921, baseType: !337, size: 128, offset: 128)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !338, line: 8, size: 128, elements: !339)
!338 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!339 = !{!340, !344}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !337, file: !338, line: 9, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !343, line: 18, flags: DIFlagFwdDecl)
!343 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !337, file: !338, line: 10, baseType: !345, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !343, line: 89, size: 1536, elements: !347)
!347 = !{!348, !349, !359, !367, !368, !389, !3072, !3074, !3086, !3087, !3088, !3089, !3090, !3096, !3097, !3098}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !346, file: !343, line: 91, baseType: !7, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !346, file: !343, line: 92, baseType: !350, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !351, line: 277, baseType: !352)
!351 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !351, line: 277, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !352, file: !351, line: 277, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !351, line: 70, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !351, line: 65, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !356, file: !351, line: 66, baseType: !7, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !346, file: !343, line: 93, baseType: !360, size: 128, offset: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !361, line: 38, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !361, line: 39, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !360, file: !361, line: 39, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !346, file: !343, line: 94, baseType: !345, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !346, file: !343, line: 95, baseType: !369, size: 128, offset: 256)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !343, line: 47, size: 128, elements: !370)
!370 = !{!371, !385}
!371 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !343, line: 48, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !343, line: 48, size: 64, elements: !373)
!373 = !{!374, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !343, line: 49, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !372, file: !343, line: 49, size: 64, elements: !376)
!376 = !{!377, !380}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !375, file: !343, line: 50, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !157, line: 21, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !159, line: 27, baseType: !7)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !375, file: !343, line: 50, baseType: !378, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !372, file: !343, line: 52, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !157, line: 23, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !159, line: 31, baseType: !384)
!384 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !369, file: !343, line: 54, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !346, file: !343, line: 96, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !392)
!392 = !{!393, !394, !395, !403, !410, !411, !559, !2783, !2784, !2785, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !3048, !3056, !3057, !3058, !3068, !3069, !3070, !3071}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !391, file: !44, line: 611, baseType: !279, size: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !391, file: !44, line: 612, baseType: !160, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !391, file: !44, line: 613, baseType: !396, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !397, line: 23, baseType: !398)
!397 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 21, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !398, file: !397, line: 22, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !183, line: 32, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !271, line: 49, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !391, file: !44, line: 614, baseType: !404, size: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !397, line: 28, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 26, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !397, line: 27, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !183, line: 33, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !271, line: 50, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !391, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !391, file: !44, line: 622, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !415)
!415 = !{!416, !420, !433, !437, !443, !447, !453, !457, !461, !465, !469, !470, !476, !480, !506, !535, !539, !545, !550, !554, !555}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !414, file: !44, line: 1865, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!345, !390, !345, !7}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !414, file: !44, line: 1866, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!178, !345, !390, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !426, line: 10, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !425, file: !426, line: 11, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !161}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !425, file: !426, line: 12, baseType: !161, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !414, file: !44, line: 1867, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!222, !390, !222}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !414, file: !44, line: 1868, baseType: !438, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !390, !222}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !414, file: !44, line: 1870, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!222, !345, !238, !222}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !414, file: !44, line: 1872, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!222, !390, !345, !279, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !183, line: 30, baseType: !452)
!452 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !414, file: !44, line: 1873, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!222, !345, !390, !345}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !414, file: !44, line: 1874, baseType: !458, size: 64, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!222, !390, !345}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !414, file: !44, line: 1875, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!222, !390, !345, !178}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !414, file: !44, line: 1876, baseType: !466, size: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!222, !390, !345, !279}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !414, file: !44, line: 1877, baseType: !458, size: 64, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !414, file: !44, line: 1878, baseType: !471, size: 64, offset: 704)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!222, !390, !345, !279, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !183, line: 16, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !183, line: 13, baseType: !378)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !414, file: !44, line: 1879, baseType: !477, size: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!222, !390, !345, !390, !345, !7}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !414, file: !44, line: 1881, baseType: !481, size: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!222, !345, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !495, !503, !504, !505}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !485, file: !44, line: 220, baseType: !7, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !485, file: !44, line: 221, baseType: !279, size: 16, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !485, file: !44, line: 222, baseType: !396, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !485, file: !44, line: 223, baseType: !404, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !485, file: !44, line: 224, baseType: !492, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !183, line: 46, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !271, line: 88, baseType: !494)
!494 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !485, file: !44, line: 225, baseType: !496, size: 128, offset: 192)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !497, line: 13, size: 128, elements: !498)
!497 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !496, file: !497, line: 14, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !497, line: 8, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !159, line: 30, baseType: !494)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !496, file: !497, line: 15, baseType: !273, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !485, file: !44, line: 226, baseType: !496, size: 128, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !485, file: !44, line: 227, baseType: !496, size: 128, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !485, file: !44, line: 234, baseType: !315, size: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !414, file: !44, line: 1882, baseType: !507, size: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!222, !510, !512, !378, !7}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !514, line: 22, size: 1152, elements: !515)
!514 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !517, !518, !519, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !513, file: !514, line: 23, baseType: !378, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !513, file: !514, line: 24, baseType: !279, size: 16, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !513, file: !514, line: 25, baseType: !7, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !513, file: !514, line: 26, baseType: !520, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !183, line: 104, baseType: !378)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !513, file: !514, line: 27, baseType: !382, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !513, file: !514, line: 28, baseType: !382, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !513, file: !514, line: 37, baseType: !382, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !513, file: !514, line: 38, baseType: !474, size: 32, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !513, file: !514, line: 39, baseType: !474, size: 32, offset: 352)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !513, file: !514, line: 40, baseType: !396, size: 32, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !513, file: !514, line: 41, baseType: !404, size: 32, offset: 416)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !513, file: !514, line: 42, baseType: !492, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !513, file: !514, line: 43, baseType: !496, size: 128, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !513, file: !514, line: 44, baseType: !496, size: 128, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !513, file: !514, line: 45, baseType: !496, size: 128, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !513, file: !514, line: 46, baseType: !496, size: 128, offset: 896)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !513, file: !514, line: 47, baseType: !382, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !513, file: !514, line: 48, baseType: !382, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !414, file: !44, line: 1883, baseType: !536, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!269, !345, !238, !284}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !414, file: !44, line: 1884, baseType: !540, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!222, !390, !543, !382, !382}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !414, file: !44, line: 1886, baseType: !546, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!222, !390, !549, !222}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !414, file: !44, line: 1887, baseType: !551, size: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!222, !390, !345, !315, !7, !279}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !414, file: !44, line: 1890, baseType: !466, size: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !414, file: !44, line: 1891, baseType: !556, size: 64, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!222, !390, !441, !222}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !391, file: !44, line: 623, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !618, !2390, !2472, !2555, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2571, !2575, !2576, !2579, !2580, !2583, !2584, !2585, !2626, !2653, !2654, !2655, !2656, !2657, !2658, !2661, !2663, !2670, !2671, !2673, !2674, !2675, !2734, !2735, !2750, !2751, !2752, !2753, !2754, !2757, !2758, !2759, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !561, file: !44, line: 1417, baseType: !182, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !561, file: !44, line: 1418, baseType: !474, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !561, file: !44, line: 1419, baseType: !388, size: 8, offset: 160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !561, file: !44, line: 1420, baseType: !287, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !561, file: !44, line: 1421, baseType: !492, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !561, file: !44, line: 1422, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !571)
!571 = !{!572, !573, !574, !581, !585, !589, !593, !597, !598, !608, !611, !612, !613, !615, !616, !617}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !44, line: 2229, baseType: !178, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !570, file: !44, line: 2230, baseType: !222, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !570, file: !44, line: 2238, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!222, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !580, line: 28, flags: DIFlagFwdDecl)
!580 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !570, file: !44, line: 2239, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !570, file: !44, line: 2240, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!345, !569, !222, !178, !161}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !570, file: !44, line: 2242, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !560}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !570, file: !44, line: 2243, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !596, line: 76, flags: DIFlagFwdDecl)
!596 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !44, line: 2244, baseType: !569, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !570, file: !44, line: 2245, baseType: !599, size: 64, offset: 512)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !183, line: 182, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !599, file: !183, line: 183, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !183, line: 186, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !183, line: 187, baseType: !602, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !603, file: !183, line: 187, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !570, file: !44, line: 2247, baseType: !609, offset: 576)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !610, line: 187, elements: !210)
!610 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !570, file: !44, line: 2248, baseType: !609, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !570, file: !44, line: 2249, baseType: !609, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !570, file: !44, line: 2250, baseType: !614, offset: 576)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, elements: !239)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !570, file: !44, line: 2252, baseType: !609, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !570, file: !44, line: 2253, baseType: !609, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !570, file: !44, line: 2254, baseType: !609, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !561, file: !44, line: 1423, baseType: !619, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !622)
!622 = !{!623, !627, !631, !632, !636, !642, !646, !647, !648, !652, !656, !657, !658, !659, !665, !670, !671, !678, !679, !680, !681, !2374, !2389}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !621, file: !44, line: 1936, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!390, !560}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !621, file: !44, line: 1937, baseType: !628, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !390}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !621, file: !44, line: 1938, baseType: !628, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !621, file: !44, line: 1940, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !390, !222}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !621, file: !44, line: 1941, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!222, !390, !640}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !621, file: !44, line: 1942, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!222, !390}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !621, file: !44, line: 1943, baseType: !628, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !621, file: !44, line: 1944, baseType: !590, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !621, file: !44, line: 1945, baseType: !649, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!222, !560, !222}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !621, file: !44, line: 1946, baseType: !653, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!222, !560}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !621, file: !44, line: 1947, baseType: !653, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !621, file: !44, line: 1948, baseType: !653, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !621, file: !44, line: 1949, baseType: !653, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !621, file: !44, line: 1950, baseType: !660, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!222, !345, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !621, file: !44, line: 1951, baseType: !666, size: 64, offset: 896)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!222, !560, !669, !238}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !621, file: !44, line: 1952, baseType: !590, size: 64, offset: 960)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !621, file: !44, line: 1954, baseType: !672, size: 64, offset: 1024)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!222, !675, !345}
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !677, line: 539, flags: DIFlagFwdDecl)
!677 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!678 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !621, file: !44, line: 1955, baseType: !672, size: 64, offset: 1088)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !621, file: !44, line: 1956, baseType: !672, size: 64, offset: 1152)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !621, file: !44, line: 1957, baseType: !672, size: 64, offset: 1216)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !621, file: !44, line: 1963, baseType: !682, size: 64, offset: 1280)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!222, !560, !685, !708}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !687, line: 68, size: 512, align: 128, elements: !688)
!687 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690, !2366, !2373}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 69, baseType: !287, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 77, baseType: !691, size: 320, offset: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 77, size: 320, elements: !692)
!692 = !{!693, !879, !884, !912, !920, !926, !2297, !2365}
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 78, baseType: !694, size: 320)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 78, size: 320, elements: !695)
!695 = !{!696, !697, !877, !878}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !694, file: !687, line: 84, baseType: !182, size: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !694, file: !687, line: 86, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !700)
!700 = !{!701, !702, !710, !711, !716, !731, !747, !748, !749, !750, !870, !871, !874, !875, !876}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !699, file: !44, line: 452, baseType: !390, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !699, file: !44, line: 453, baseType: !703, size: 128, offset: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !704, line: 292, size: 128, elements: !705)
!704 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !707, !709}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !703, file: !704, line: 293, baseType: !196)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !703, file: !704, line: 295, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !183, line: 148, baseType: !7)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !703, file: !704, line: 296, baseType: !161, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !699, file: !44, line: 454, baseType: !708, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !699, file: !44, line: 455, baseType: !712, size: 32, offset: 224)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !183, line: 168, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 166, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !713, file: !183, line: 167, baseType: !222, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !699, file: !44, line: 460, baseType: !717, size: 128, offset: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !718, line: 125, size: 128, elements: !719)
!718 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!719 = !{!720, !730}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !717, file: !718, line: 126, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !718, line: 31, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !721, file: !718, line: 32, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !718, line: 24, size: 192, align: 64, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !725, file: !718, line: 25, baseType: !287, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !725, file: !718, line: 26, baseType: !724, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !725, file: !718, line: 27, baseType: !724, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !717, file: !718, line: 127, baseType: !724, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !699, file: !44, line: 461, baseType: !732, size: 256, offset: 384)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !733, line: 35, size: 256, elements: !734)
!733 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !743, !744, !746}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !733, line: 36, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !737, line: 13, baseType: !738)
!737 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !183, line: 175, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 173, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !739, file: !183, line: 174, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !157, line: 22, baseType: !501)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !732, file: !733, line: 42, baseType: !736, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !732, file: !733, line: 46, baseType: !745, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !197, line: 29, baseType: !204)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !732, file: !733, line: 47, baseType: !182, size: 128, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !699, file: !44, line: 462, baseType: !287, size: 64, offset: 640)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !699, file: !44, line: 463, baseType: !287, size: 64, offset: 704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !699, file: !44, line: 464, baseType: !287, size: 64, offset: 768)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !699, file: !44, line: 465, baseType: !751, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !754)
!754 = !{!755, !759, !763, !767, !771, !775, !781, !787, !791, !796, !800, !804, !808, !834, !838, !844, !845, !846, !850, !855, !859, !866}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !753, file: !44, line: 368, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!222, !685, !640}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !753, file: !44, line: 369, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!222, !315, !685}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !753, file: !44, line: 372, baseType: !764, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!222, !698, !640}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !753, file: !44, line: 375, baseType: !768, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!222, !685}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !753, file: !44, line: 381, baseType: !772, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!222, !315, !698, !186, !7}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !753, file: !44, line: 383, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !753, file: !44, line: 385, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!222, !315, !698, !492, !7, !7, !785, !786}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !753, file: !44, line: 388, baseType: !788, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!222, !315, !698, !492, !7, !7, !685, !161}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !753, file: !44, line: 393, baseType: !792, size: 64, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!795, !698, !795}
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !183, line: 125, baseType: !382)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !753, file: !44, line: 394, baseType: !797, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !685, !7, !7}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !753, file: !44, line: 395, baseType: !801, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!222, !685, !708}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !753, file: !44, line: 396, baseType: !805, size: 64, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !685}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !753, file: !44, line: 397, baseType: !809, size: 64, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!269, !812, !832}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !814)
!814 = !{!815, !816, !817, !821, !822, !823, !824, !825}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !813, file: !44, line: 321, baseType: !315, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !813, file: !44, line: 326, baseType: !492, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !813, file: !44, line: 327, baseType: !818, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !812, !273, !273}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !813, file: !44, line: 328, baseType: !161, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !813, file: !44, line: 329, baseType: !222, size: 32, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !813, file: !44, line: 330, baseType: !156, size: 16, offset: 288)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !813, file: !44, line: 331, baseType: !156, size: 16, offset: 304)
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !813, file: !44, line: 332, baseType: !826, size: 64, offset: 320)
!826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !813, file: !44, line: 332, size: 64, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !826, file: !44, line: 333, baseType: !7, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !826, file: !44, line: 334, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !753, file: !44, line: 402, baseType: !835, size: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!222, !698, !685, !685, !5}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !753, file: !44, line: 404, baseType: !839, size: 64, offset: 896)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!451, !685, !842}
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !843, line: 305, baseType: !7)
!843 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!844 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !753, file: !44, line: 405, baseType: !805, size: 64, offset: 960)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !753, file: !44, line: 406, baseType: !768, size: 64, offset: 1024)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !753, file: !44, line: 407, baseType: !847, size: 64, offset: 1088)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!222, !685, !287, !287}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !753, file: !44, line: 409, baseType: !851, size: 64, offset: 1152)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !685, !854, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !753, file: !44, line: 410, baseType: !856, size: 64, offset: 1216)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!222, !698, !685}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !753, file: !44, line: 413, baseType: !860, size: 64, offset: 1280)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!222, !863, !315, !865}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !753, file: !44, line: 415, baseType: !867, size: 64, offset: 1344)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !315}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !44, line: 466, baseType: !287, size: 64, offset: 896)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !699, file: !44, line: 467, baseType: !872, size: 32, offset: 960)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !873, line: 8, baseType: !378)
!873 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!874 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !699, file: !44, line: 468, baseType: !196, offset: 992)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !699, file: !44, line: 469, baseType: !182, size: 128, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !699, file: !44, line: 470, baseType: !161, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !694, file: !687, line: 87, baseType: !287, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !694, file: !687, line: 94, baseType: !287, size: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 96, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 96, size: 64, elements: !881)
!881 = !{!882}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !880, file: !687, line: 101, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !183, line: 143, baseType: !382)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 103, baseType: !885, size: 320)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 103, size: 320, elements: !886)
!886 = !{!887, !897, !900, !901}
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !687, line: 104, baseType: !888, size: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !687, line: 104, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !888, file: !687, line: 105, baseType: !182, size: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !888, file: !687, line: 106, baseType: !892, size: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !888, file: !687, line: 106, size: 128, elements: !893)
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !892, file: !687, line: 107, baseType: !685, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !892, file: !687, line: 109, baseType: !222, size: 32, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !892, file: !687, line: 110, baseType: !222, size: 32, offset: 96)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !885, file: !687, line: 117, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !687, line: 117, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !885, file: !687, line: 119, baseType: !161, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !885, file: !687, line: 120, baseType: !902, size: 64, offset: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !885, file: !687, line: 120, size: 64, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !902, file: !687, line: 121, baseType: !161, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !902, file: !687, line: 122, baseType: !287, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !687, line: 123, baseType: !907, size: 32)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !902, file: !687, line: 123, size: 32, elements: !908)
!908 = !{!909, !910, !911}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !907, file: !687, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !907, file: !687, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !907, file: !687, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 130, baseType: !913, size: 192)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 130, size: 192, elements: !914)
!914 = !{!915, !916, !917, !918, !919}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !913, file: !687, line: 131, baseType: !287, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !913, file: !687, line: 134, baseType: !388, size: 8, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !913, file: !687, line: 135, baseType: !388, size: 8, offset: 72)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !913, file: !687, line: 136, baseType: !712, size: 32, offset: 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !913, file: !687, line: 137, baseType: !7, size: 32, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 139, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 139, size: 256, elements: !922)
!922 = !{!923, !924, !925}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !921, file: !687, line: 140, baseType: !287, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !921, file: !687, line: 141, baseType: !712, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !921, file: !687, line: 143, baseType: !182, size: 128, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 145, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 145, size: 256, elements: !928)
!928 = !{!929, !930, !932, !933, !2296}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !927, file: !687, line: 146, baseType: !287, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !927, file: !687, line: 147, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !677, line: 509, baseType: !685)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !927, file: !687, line: 148, baseType: !287, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !687, line: 149, baseType: !934, size: 64, offset: 192)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !687, line: 149, size: 64, elements: !935)
!935 = !{!936, !2295}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !934, file: !687, line: 150, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !687, line: 388, size: 7296, elements: !939)
!939 = !{!940, !2291}
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !938, file: !687, line: 389, baseType: !941, size: 7296)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !938, file: !687, line: 389, size: 7296, elements: !942)
!942 = !{!943, !1061, !1062, !1063, !1067, !1068, !1069, !1070, !1071, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1112, !1120, !1123, !1169, !1170, !2275, !2276, !2279, !2280, !2281, !2284, !2285, !2286, !2289, !2290}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !941, file: !687, line: 390, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !687, line: 305, size: 1472, elements: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !953, !954, !961, !962, !967, !968, !971, !1055, !1056, !1057, !1058, !1059}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !945, file: !687, line: 308, baseType: !287, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !945, file: !687, line: 309, baseType: !287, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !945, file: !687, line: 313, baseType: !944, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !945, file: !687, line: 313, baseType: !944, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !945, file: !687, line: 315, baseType: !725, size: 192, align: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !945, file: !687, line: 323, baseType: !287, size: 64, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !945, file: !687, line: 327, baseType: !937, size: 64, offset: 512)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !945, file: !687, line: 333, baseType: !955, size: 64, offset: 576)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !677, line: 284, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !677, line: 284, size: 64, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !956, file: !677, line: 284, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !960, line: 19, baseType: !287)
!960 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !945, file: !687, line: 334, baseType: !287, size: 64, offset: 640)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !945, file: !687, line: 343, baseType: !963, size: 256, offset: 704)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !687, line: 340, size: 256, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !963, file: !687, line: 341, baseType: !725, size: 192, align: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !963, file: !687, line: 342, baseType: !287, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !945, file: !687, line: 351, baseType: !182, size: 128, offset: 960)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !945, file: !687, line: 353, baseType: !969, size: 64, offset: 1088)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !687, line: 353, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !945, file: !687, line: 356, baseType: !972, size: 64, offset: 1152)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !975)
!975 = !{!976, !980, !981, !985, !989, !1029, !1033, !1037, !1041, !1042, !1043, !1047, !1051}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !974, file: !14, line: 558, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !944}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !974, file: !14, line: 559, baseType: !977, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !974, file: !14, line: 560, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!222, !944, !287}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !974, file: !14, line: 561, baseType: !986, size: 64, offset: 192)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!222, !944}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !974, file: !14, line: 562, baseType: !990, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !687, line: 682, baseType: !7)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1009, !1016, !1022, !1023, !1024, !1026, !1028}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !995, file: !14, line: 509, baseType: !944, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !995, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !995, file: !14, line: 511, baseType: !708, size: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !995, file: !14, line: 512, baseType: !287, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !995, file: !14, line: 513, baseType: !287, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !995, file: !14, line: 514, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !677, line: 385, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 385, size: 64, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1005, file: !677, line: 385, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !960, line: 15, baseType: !287)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !995, file: !14, line: 516, baseType: !1010, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !677, line: 359, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 359, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1012, file: !677, line: 359, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !960, line: 16, baseType: !287)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !995, file: !14, line: 519, baseType: !1017, size: 64, offset: 384)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !960, line: 21, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !960, line: 21, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1018, file: !960, line: 21, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !960, line: 14, baseType: !287)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !995, file: !14, line: 521, baseType: !685, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !995, file: !14, line: 522, baseType: !685, size: 64, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !995, file: !14, line: 528, baseType: !1025, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !995, file: !14, line: 532, baseType: !1027, size: 64, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !995, file: !14, line: 536, baseType: !931, size: 64, offset: 704)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !974, file: !14, line: 563, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!993, !994, !13}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !974, file: !14, line: 565, baseType: !1034, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !994, !287, !287}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !974, file: !14, line: 567, baseType: !1038, size: 64, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!287, !944}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !974, file: !14, line: 571, baseType: !990, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !974, file: !14, line: 574, baseType: !990, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !974, file: !14, line: 579, baseType: !1044, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!222, !944, !287, !161, !222, !222}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !974, file: !14, line: 585, baseType: !1048, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!178, !944}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !974, file: !14, line: 615, baseType: !1052, size: 64, offset: 768)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!685, !944, !287}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !945, file: !687, line: 359, baseType: !287, size: 64, offset: 1216)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !945, file: !687, line: 361, baseType: !315, size: 64, offset: 1280)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !945, file: !687, line: 362, baseType: !161, size: 64, offset: 1344)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !945, file: !687, line: 365, baseType: !736, size: 64, offset: 1408)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !945, file: !687, line: 373, baseType: !1060, offset: 1472)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !687, line: 296, elements: !210)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !941, file: !687, line: 391, baseType: !721, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !941, file: !687, line: 392, baseType: !382, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !941, file: !687, line: 394, baseType: !1064, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!287, !315, !287, !287, !287, !287}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !941, file: !687, line: 398, baseType: !287, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !941, file: !687, line: 399, baseType: !287, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !941, file: !687, line: 405, baseType: !287, size: 64, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !941, file: !687, line: 406, baseType: !287, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !941, file: !687, line: 407, baseType: !1072, size: 64, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !677, line: 286, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !677, line: 286, size: 64, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1074, file: !677, line: 286, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !960, line: 18, baseType: !287)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !941, file: !687, line: 416, baseType: !712, size: 32, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !941, file: !687, line: 428, baseType: !712, size: 32, offset: 608)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !941, file: !687, line: 437, baseType: !712, size: 32, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !941, file: !687, line: 447, baseType: !712, size: 32, offset: 672)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !941, file: !687, line: 450, baseType: !736, size: 64, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !941, file: !687, line: 452, baseType: !222, size: 32, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !941, file: !687, line: 454, baseType: !196, offset: 800)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !941, file: !687, line: 457, baseType: !732, size: 256, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !941, file: !687, line: 459, baseType: !182, size: 128, offset: 1088)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !941, file: !687, line: 466, baseType: !287, size: 64, offset: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !941, file: !687, line: 467, baseType: !287, size: 64, offset: 1280)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !941, file: !687, line: 469, baseType: !287, size: 64, offset: 1344)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !941, file: !687, line: 470, baseType: !287, size: 64, offset: 1408)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !941, file: !687, line: 471, baseType: !738, size: 64, offset: 1472)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !941, file: !687, line: 472, baseType: !287, size: 64, offset: 1536)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !941, file: !687, line: 473, baseType: !287, size: 64, offset: 1600)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !941, file: !687, line: 474, baseType: !287, size: 64, offset: 1664)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !941, file: !687, line: 475, baseType: !287, size: 64, offset: 1728)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !941, file: !687, line: 477, baseType: !196, offset: 1792)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !941, file: !687, line: 478, baseType: !287, size: 64, offset: 1792)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !941, file: !687, line: 478, baseType: !287, size: 64, offset: 1856)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !941, file: !687, line: 478, baseType: !287, size: 64, offset: 1920)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !941, file: !687, line: 478, baseType: !287, size: 64, offset: 1984)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !941, file: !687, line: 479, baseType: !287, size: 64, offset: 2048)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !941, file: !687, line: 479, baseType: !287, size: 64, offset: 2112)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !941, file: !687, line: 479, baseType: !287, size: 64, offset: 2176)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !941, file: !687, line: 480, baseType: !287, size: 64, offset: 2240)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !941, file: !687, line: 480, baseType: !287, size: 64, offset: 2304)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !941, file: !687, line: 480, baseType: !287, size: 64, offset: 2368)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !941, file: !687, line: 480, baseType: !287, size: 64, offset: 2432)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !941, file: !687, line: 482, baseType: !1109, size: 2816, offset: 2496)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 2816, elements: !1110)
!1110 = !{!1111}
!1111 = !DISubrange(count: 44)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !941, file: !687, line: 488, baseType: !1113, size: 256, offset: 5312)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1114, line: 60, size: 256, elements: !1115)
!1114 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1113, file: !1114, line: 61, baseType: !1117, size: 256)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 256, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 4)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !941, file: !687, line: 490, baseType: !1121, size: 64, offset: 5568)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !687, line: 490, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !941, file: !687, line: 493, baseType: !1124, size: 896, offset: 5632)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1125, line: 53, baseType: !1126)
!1125 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1125, line: 13, size: 896, elements: !1127)
!1127 = !{!1128, !1129, !1130, !1131, !1134, !1135, !1142, !1143, !1163, !1164, !1165}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1126, file: !1125, line: 18, baseType: !382, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1126, file: !1125, line: 28, baseType: !738, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1126, file: !1125, line: 31, baseType: !732, size: 256, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1126, file: !1125, line: 32, baseType: !1132, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1125, line: 32, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1126, file: !1125, line: 37, baseType: !160, size: 16, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1126, file: !1125, line: 40, baseType: !1136, size: 192, offset: 512)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1137, line: 53, size: 192, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1138 = !{!1139, !1140, !1141}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1136, file: !1137, line: 54, baseType: !736, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1136, file: !1137, line: 55, baseType: !196, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1136, file: !1137, line: 59, baseType: !182, size: 128, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1126, file: !1125, line: 41, baseType: !161, size: 64, offset: 704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1126, file: !1125, line: 42, baseType: !1144, size: 64, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1147, line: 13, size: 896, elements: !1148)
!1147 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1146, file: !1147, line: 14, baseType: !161, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1146, file: !1147, line: 15, baseType: !287, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1146, file: !1147, line: 17, baseType: !287, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1146, file: !1147, line: 17, baseType: !287, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1146, file: !1147, line: 19, baseType: !273, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1146, file: !1147, line: 21, baseType: !273, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1146, file: !1147, line: 22, baseType: !273, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1146, file: !1147, line: 23, baseType: !273, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1146, file: !1147, line: 24, baseType: !273, size: 64, offset: 512)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1146, file: !1147, line: 25, baseType: !273, size: 64, offset: 576)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1146, file: !1147, line: 26, baseType: !273, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1146, file: !1147, line: 27, baseType: !273, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1146, file: !1147, line: 28, baseType: !273, size: 64, offset: 768)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1146, file: !1147, line: 29, baseType: !273, size: 64, offset: 832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1126, file: !1125, line: 44, baseType: !712, size: 32, offset: 832)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1126, file: !1125, line: 50, baseType: !156, size: 16, offset: 864)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1126, file: !1125, line: 51, baseType: !1166, size: 16, offset: 880)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !157, line: 18, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !159, line: 23, baseType: !1168)
!1168 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !687, line: 495, baseType: !287, size: 64, offset: 6528)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !941, file: !687, line: 497, baseType: !1171, size: 64, offset: 6592)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !687, line: 381, size: 384, elements: !1173)
!1173 = !{!1174, !1175, !2274}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1172, file: !687, line: 382, baseType: !712, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1172, file: !687, line: 383, baseType: !1176, size: 128, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !687, line: 376, size: 128, elements: !1177)
!1177 = !{!1178, !2272}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1176, file: !687, line: 377, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1181, line: 640, size: 48640, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1189, !1191, !1192, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1208, !1226, !1237, !1322, !1323, !1324, !1335, !1336, !1338, !1339, !1340, !1341, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1420, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1458, !1460, !1461, !1462, !1474, !1475, !1476, !1477, !1478, !1479, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1503, !1508, !1692, !1693, !1694, !1695, !1699, !1702, !1705, !1708, !1711, !1714, !1815, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1861, !1862, !1863, !1864, !1865, !1870, !1871, !1872, !1875, !1876, !1879, !1882, !1885, !1888, !1930, !1933, !1934, !2013, !2014, !2017, !2018, !2021, !2022, !2023, !2027, !2028, !2029, !2042, !2043, !2044, !2054, !2059, !2062, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1180, file: !1181, line: 646, baseType: !1184, size: 128)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1185, line: 56, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !1185, line: 57, baseType: !287, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1184, file: !1185, line: 58, baseType: !378, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1180, file: !1181, line: 649, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !273)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1180, file: !1181, line: 657, baseType: !161, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1180, file: !1181, line: 658, baseType: !1193, size: 32, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !124, line: 113, baseType: !1194)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !124, line: 111, size: 32, elements: !1195)
!1195 = !{!1196}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1194, file: !124, line: 112, baseType: !712, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 660, baseType: !7, size: 32, offset: 288)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1180, file: !1181, line: 661, baseType: !7, size: 32, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1180, file: !1181, line: 684, baseType: !222, size: 32, offset: 352)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1180, file: !1181, line: 686, baseType: !222, size: 32, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1180, file: !1181, line: 687, baseType: !222, size: 32, offset: 416)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1180, file: !1181, line: 688, baseType: !222, size: 32, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1180, file: !1181, line: 689, baseType: !7, size: 32, offset: 480)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1180, file: !1181, line: 691, baseType: !1205, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1181, line: 691, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1180, file: !1181, line: 692, baseType: !1209, size: 832, offset: 576)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1181, line: 451, size: 832, elements: !1210)
!1210 = !{!1211, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1209, file: !1181, line: 453, baseType: !1212, size: 128)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1181, line: 325, size: 128, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1212, file: !1181, line: 326, baseType: !287, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1212, file: !1181, line: 327, baseType: !378, size: 32, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1209, file: !1181, line: 454, baseType: !725, size: 192, align: 64, offset: 128)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1209, file: !1181, line: 455, baseType: !182, size: 128, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1209, file: !1181, line: 456, baseType: !7, size: 32, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1209, file: !1181, line: 458, baseType: !382, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1209, file: !1181, line: 459, baseType: !382, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1209, file: !1181, line: 460, baseType: !382, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1209, file: !1181, line: 461, baseType: !382, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1209, file: !1181, line: 463, baseType: !382, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1209, file: !1181, line: 465, baseType: !1225, offset: 832)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1181, line: 415, elements: !210)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1180, file: !1181, line: 693, baseType: !1227, size: 384, offset: 1408)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1181, line: 489, size: 384, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1227, file: !1181, line: 490, baseType: !182, size: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1227, file: !1181, line: 491, baseType: !287, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1227, file: !1181, line: 492, baseType: !287, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1227, file: !1181, line: 493, baseType: !7, size: 32, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1227, file: !1181, line: 494, baseType: !160, size: 16, offset: 288)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1227, file: !1181, line: 495, baseType: !160, size: 16, offset: 304)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1227, file: !1181, line: 497, baseType: !1236, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1180, file: !1181, line: 697, baseType: !1238, size: 1792, offset: 1792)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1181, line: 507, size: 1792, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1319, !1320}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1238, file: !1181, line: 508, baseType: !725, size: 192, align: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1238, file: !1181, line: 515, baseType: !382, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1238, file: !1181, line: 516, baseType: !382, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1238, file: !1181, line: 517, baseType: !382, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1238, file: !1181, line: 518, baseType: !382, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1238, file: !1181, line: 519, baseType: !382, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1238, file: !1181, line: 526, baseType: !742, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1238, file: !1181, line: 527, baseType: !382, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !1181, line: 528, baseType: !7, size: 32, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1238, file: !1181, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1238, file: !1181, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1238, file: !1181, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1238, file: !1181, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1238, file: !1181, line: 563, baseType: !1254, size: 512, offset: 704)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1255)
!1255 = !{!1256, !1264, !1265, !1270, !1313, !1316, !1317, !1318}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1254, file: !20, line: 119, baseType: !1257, size: 256)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1258, line: 9, size: 256, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1257, file: !1258, line: 10, baseType: !725, size: 192, align: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1257, file: !1258, line: 11, baseType: !1262, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1263, line: 29, baseType: !742)
!1263 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1254, file: !20, line: 120, baseType: !1262, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1254, file: !20, line: 121, baseType: !1266, size: 64, offset: 320)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!19, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1254, file: !20, line: 122, baseType: !1271, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1273)
!1273 = !{!1274, !1294, !1295, !1298, !1303, !1304, !1308, !1312}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1272, file: !20, line: 160, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1276, file: !20, line: 215, baseType: !745)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1276, file: !20, line: 216, baseType: !7, size: 32)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1276, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1276, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1276, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1276, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1276, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1276, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1276, file: !20, line: 233, baseType: !1262, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1276, file: !20, line: 234, baseType: !1269, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1276, file: !20, line: 235, baseType: !1262, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1276, file: !20, line: 236, baseType: !1269, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1276, file: !20, line: 237, baseType: !1291, size: 4096, offset: 512)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 4096, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 8)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1272, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1272, file: !20, line: 162, baseType: !1296, size: 32, offset: 96)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !183, line: 27, baseType: !1297)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !271, line: 96, baseType: !222)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1272, file: !20, line: 163, baseType: !1299, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !351, line: 276, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !351, line: 276, size: 32, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1300, file: !351, line: 276, baseType: !355, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1272, file: !20, line: 164, baseType: !1269, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1272, file: !20, line: 165, baseType: !1305, size: 128, offset: 256)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1258, line: 14, size: 128, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1305, file: !1258, line: 15, baseType: !717, size: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1272, file: !20, line: 166, baseType: !1309, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!1262}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1272, file: !20, line: 167, baseType: !1262, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1254, file: !20, line: 123, baseType: !1314, size: 8, offset: 448)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !157, line: 17, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !159, line: 21, baseType: !388)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1254, file: !20, line: 124, baseType: !1314, size: 8, offset: 456)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1254, file: !20, line: 125, baseType: !1314, size: 8, offset: 464)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1254, file: !20, line: 126, baseType: !1314, size: 8, offset: 472)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1238, file: !1181, line: 572, baseType: !1254, size: 512, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1238, file: !1181, line: 580, baseType: !1321, size: 64, offset: 1728)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1180, file: !1181, line: 721, baseType: !7, size: 32, offset: 3584)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1180, file: !1181, line: 722, baseType: !222, size: 32, offset: 3616)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1180, file: !1181, line: 723, baseType: !1325, size: 64, offset: 3648)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1328, line: 17, baseType: !1329)
!1328 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1328, line: 17, size: 64, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1329, file: !1328, line: 17, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 64, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 1)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1180, file: !1181, line: 724, baseType: !1327, size: 64, offset: 3712)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1180, file: !1181, line: 749, baseType: !1337, offset: 3776)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1181, line: 290, elements: !210)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1180, file: !1181, line: 751, baseType: !182, size: 128, offset: 3776)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1180, file: !1181, line: 757, baseType: !937, size: 64, offset: 3904)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1180, file: !1181, line: 758, baseType: !937, size: 64, offset: 3968)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1180, file: !1181, line: 761, baseType: !1342, size: 320, offset: 4032)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1114, line: 34, size: 320, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1342, file: !1114, line: 35, baseType: !382, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1342, file: !1114, line: 36, baseType: !1346, size: 256, offset: 64)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 256, elements: !1118)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1180, file: !1181, line: 766, baseType: !222, size: 32, offset: 4352)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1180, file: !1181, line: 767, baseType: !222, size: 32, offset: 4384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1180, file: !1181, line: 768, baseType: !222, size: 32, offset: 4416)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1180, file: !1181, line: 770, baseType: !222, size: 32, offset: 4448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1180, file: !1181, line: 772, baseType: !287, size: 64, offset: 4480)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1180, file: !1181, line: 775, baseType: !7, size: 32, offset: 4544)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1180, file: !1181, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1180, file: !1181, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1180, file: !1181, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1180, file: !1181, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1180, file: !1181, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1180, file: !1181, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1180, file: !1181, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1180, file: !1181, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1180, file: !1181, line: 831, baseType: !287, size: 64, offset: 4672)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1180, file: !1181, line: 833, baseType: !1363, size: 384, offset: 4736)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1364)
!1364 = !{!1365, !1370}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1363, file: !25, line: 26, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!273, !1369}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !25, line: 27, baseType: !1371, size: 320, offset: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1363, file: !25, line: 27, size: 320, elements: !1372)
!1372 = !{!1373, !1383, !1410}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1371, file: !25, line: 36, baseType: !1374, size: 320)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !25, line: 29, size: 320, elements: !1375)
!1375 = !{!1376, !1378, !1379, !1380, !1381, !1382}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1374, file: !25, line: 30, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1374, file: !25, line: 31, baseType: !378, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1374, file: !25, line: 32, baseType: !378, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1374, file: !25, line: 33, baseType: !378, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1374, file: !25, line: 34, baseType: !382, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1374, file: !25, line: 35, baseType: !1377, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1371, file: !25, line: 46, baseType: !1384, size: 192)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !25, line: 38, size: 192, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1409}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1384, file: !25, line: 39, baseType: !1296, size: 32)
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
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !271, line: 93, baseType: !494)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1393, file: !1394, line: 9, baseType: !494, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1389, file: !25, line: 43, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1402, line: 7, size: 64, elements: !1403)
!1402 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1408}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1401, file: !1402, line: 8, baseType: !1405, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1402, line: 5, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !157, line: 20, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !159, line: 26, baseType: !222)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1401, file: !1402, line: 9, baseType: !1406, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1384, file: !25, line: 45, baseType: !382, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1371, file: !25, line: 54, baseType: !1411, size: 256)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !25, line: 48, size: 256, elements: !1412)
!1412 = !{!1413, !1416, !1417, !1418, !1419}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1411, file: !25, line: 49, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1411, file: !25, line: 50, baseType: !222, size: 32, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1411, file: !25, line: 51, baseType: !222, size: 32, offset: 96)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1411, file: !25, line: 52, baseType: !287, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1411, file: !25, line: 53, baseType: !287, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1180, file: !1181, line: 835, baseType: !1421, size: 32, offset: 5120)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !183, line: 22, baseType: !1422)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !271, line: 28, baseType: !222)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1180, file: !1181, line: 836, baseType: !1421, size: 32, offset: 5152)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1180, file: !1181, line: 840, baseType: !287, size: 64, offset: 5184)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1180, file: !1181, line: 849, baseType: !1179, size: 64, offset: 5248)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1180, file: !1181, line: 852, baseType: !1179, size: 64, offset: 5312)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1180, file: !1181, line: 857, baseType: !182, size: 128, offset: 5376)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1180, file: !1181, line: 858, baseType: !182, size: 128, offset: 5504)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1180, file: !1181, line: 859, baseType: !1179, size: 64, offset: 5632)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1180, file: !1181, line: 867, baseType: !182, size: 128, offset: 5696)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1180, file: !1181, line: 868, baseType: !182, size: 128, offset: 5824)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1180, file: !1181, line: 871, baseType: !1433, size: 64, offset: 5952)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1441, !1442, !1449, !1450}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1434, file: !53, line: 61, baseType: !1193, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1434, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1434, file: !53, line: 63, baseType: !196, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1434, file: !53, line: 65, baseType: !1440, size: 256, offset: 64)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 256, elements: !1118)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1434, file: !53, line: 66, baseType: !599, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1434, file: !53, line: 68, baseType: !1443, size: 128, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1444, line: 40, baseType: !1445)
!1444 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1444, line: 36, size: 128, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1445, file: !1444, line: 37, baseType: !196)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1445, file: !1444, line: 38, baseType: !182, size: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1434, file: !53, line: 69, baseType: !328, size: 128, align: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1434, file: !53, line: 70, baseType: !1451, size: 128, offset: 640)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1452, size: 128, elements: !1333)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1452, file: !53, line: 55, baseType: !222, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1452, file: !53, line: 56, baseType: !1456, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1180, file: !1181, line: 872, baseType: !1459, size: 512, offset: 6016)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 512, elements: !1118)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1180, file: !1181, line: 873, baseType: !182, size: 128, offset: 6528)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1180, file: !1181, line: 874, baseType: !182, size: 128, offset: 6656)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1180, file: !1181, line: 876, baseType: !1463, size: 64, offset: 6784)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1465, line: 26, size: 192, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1464, file: !1465, line: 27, baseType: !7, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1464, file: !1465, line: 28, baseType: !1469, size: 128, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1470, line: 43, size: 128, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1469, file: !1470, line: 44, baseType: !745)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1469, file: !1470, line: 45, baseType: !182, size: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1180, file: !1181, line: 879, baseType: !669, size: 64, offset: 6848)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1180, file: !1181, line: 882, baseType: !669, size: 64, offset: 6912)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1180, file: !1181, line: 884, baseType: !382, size: 64, offset: 6976)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1180, file: !1181, line: 885, baseType: !382, size: 64, offset: 7040)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1180, file: !1181, line: 890, baseType: !382, size: 64, offset: 7104)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1180, file: !1181, line: 891, baseType: !1480, size: 128, offset: 7168)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1181, line: 242, size: 128, elements: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1480, file: !1181, line: 244, baseType: !382, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1480, file: !1181, line: 245, baseType: !382, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1480, file: !1181, line: 246, baseType: !745, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1180, file: !1181, line: 900, baseType: !287, size: 64, offset: 7296)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1180, file: !1181, line: 901, baseType: !287, size: 64, offset: 7360)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1180, file: !1181, line: 904, baseType: !382, size: 64, offset: 7424)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1180, file: !1181, line: 907, baseType: !382, size: 64, offset: 7488)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1180, file: !1181, line: 910, baseType: !287, size: 64, offset: 7552)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1180, file: !1181, line: 911, baseType: !287, size: 64, offset: 7616)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1180, file: !1181, line: 914, baseType: !1492, size: 640, offset: 7680)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1493, line: 123, size: 640, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1494 = !{!1495, !1501, !1502}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1492, file: !1493, line: 124, baseType: !1496, size: 576)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1497, size: 576, elements: !239)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1493, line: 108, size: 192, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1497, file: !1493, line: 109, baseType: !382, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1497, file: !1493, line: 110, baseType: !1305, size: 128, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1492, file: !1493, line: 125, baseType: !7, size: 32, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1492, file: !1493, line: 126, baseType: !7, size: 32, offset: 608)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1180, file: !1181, line: 917, baseType: !1504, size: 192, offset: 8320)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1493, line: 134, size: 192, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1504, file: !1493, line: 135, baseType: !328, size: 128, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1504, file: !1493, line: 136, baseType: !7, size: 32, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1180, file: !1181, line: 923, baseType: !1509, size: 64, offset: 8512)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1512, line: 111, size: 1280, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1533, !1534, !1535, !1536, !1537, !1538, !1645, !1646, !1647, !1648, !1674, !1677, !1687}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1511, file: !1512, line: 112, baseType: !712, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1511, file: !1512, line: 120, baseType: !396, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1511, file: !1512, line: 121, baseType: !404, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1511, file: !1512, line: 122, baseType: !396, size: 32, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1511, file: !1512, line: 123, baseType: !404, size: 32, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1511, file: !1512, line: 124, baseType: !396, size: 32, offset: 160)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1511, file: !1512, line: 125, baseType: !404, size: 32, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1511, file: !1512, line: 126, baseType: !396, size: 32, offset: 224)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1511, file: !1512, line: 127, baseType: !404, size: 32, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1511, file: !1512, line: 128, baseType: !7, size: 32, offset: 288)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1511, file: !1512, line: 129, baseType: !1525, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1526, line: 26, baseType: !1527)
!1526 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1526, line: 24, size: 64, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1527, file: !1526, line: 25, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 64, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 2)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1511, file: !1512, line: 130, baseType: !1525, size: 64, offset: 384)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1511, file: !1512, line: 131, baseType: !1525, size: 64, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1511, file: !1512, line: 132, baseType: !1525, size: 64, offset: 512)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1511, file: !1512, line: 133, baseType: !1525, size: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1511, file: !1512, line: 135, baseType: !388, size: 8, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1511, file: !1512, line: 137, baseType: !1539, size: 64, offset: 704)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1541, line: 189, size: 1664, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1544, !1547, !1552, !1553, !1556, !1557, !1562, !1563, !1564, !1565, !1567, !1568, !1569, !1570, !1571, !1609, !1630}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1540, file: !1541, line: 190, baseType: !1193, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1540, file: !1541, line: 191, baseType: !1545, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1541, line: 28, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !183, line: 98, baseType: !1406)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !1541, line: 192, baseType: !1548, size: 192, offset: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1540, file: !1541, line: 192, size: 192, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1548, file: !1541, line: 193, baseType: !182, size: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1548, file: !1541, line: 194, baseType: !725, size: 192, align: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1540, file: !1541, line: 199, baseType: !732, size: 256, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1540, file: !1541, line: 200, baseType: !1554, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1541, line: 200, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1540, file: !1541, line: 201, baseType: !161, size: 64, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !1541, line: 202, baseType: !1558, size: 64, offset: 640)
!1558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1540, file: !1541, line: 202, size: 64, elements: !1559)
!1559 = !{!1560, !1561}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1558, file: !1541, line: 203, baseType: !500, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1558, file: !1541, line: 204, baseType: !500, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1540, file: !1541, line: 206, baseType: !500, size: 64, offset: 704)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1540, file: !1541, line: 207, baseType: !396, size: 32, offset: 768)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1540, file: !1541, line: 208, baseType: !404, size: 32, offset: 800)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1540, file: !1541, line: 209, baseType: !1566, size: 32, offset: 832)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1541, line: 31, baseType: !520)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1540, file: !1541, line: 210, baseType: !160, size: 16, offset: 864)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1540, file: !1541, line: 211, baseType: !160, size: 16, offset: 880)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1540, file: !1541, line: 215, baseType: !1168, size: 16, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1540, file: !1541, line: 222, baseType: !287, size: 64, offset: 960)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !1541, line: 239, baseType: !1572, size: 320, offset: 1024)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1540, file: !1541, line: 239, size: 320, elements: !1573)
!1573 = !{!1574, !1601}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1572, file: !1541, line: 240, baseType: !1575, size: 320)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1541, line: 108, size: 320, elements: !1576)
!1576 = !{!1577, !1578, !1590, !1593, !1600}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1575, file: !1541, line: 110, baseType: !287, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !1541, line: 111, baseType: !1579, size: 64, offset: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !1541, line: 111, size: 64, elements: !1580)
!1580 = !{!1581, !1589}
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !1541, line: 112, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !1541, line: 112, size: 64, elements: !1583)
!1583 = !{!1584, !1585}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1582, file: !1541, line: 114, baseType: !156, size: 16)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1582, file: !1541, line: 115, baseType: !1586, size: 48, offset: 16)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 48, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 6)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1579, file: !1541, line: 121, baseType: !287, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1575, file: !1541, line: 123, baseType: !1591, size: 64, offset: 128)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1541, line: 96, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1575, file: !1541, line: 124, baseType: !1594, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1541, line: 102, size: 192, elements: !1596)
!1596 = !{!1597, !1598, !1599}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1595, file: !1541, line: 103, baseType: !328, size: 128, align: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1595, file: !1541, line: 104, baseType: !1193, size: 32, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1595, file: !1541, line: 105, baseType: !451, size: 8, offset: 160)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1575, file: !1541, line: 125, baseType: !178, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !1541, line: 241, baseType: !1602, size: 320)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !1541, line: 241, size: 320, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1602, file: !1541, line: 242, baseType: !287, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1602, file: !1541, line: 243, baseType: !287, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1602, file: !1541, line: 244, baseType: !1591, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1602, file: !1541, line: 245, baseType: !1594, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1602, file: !1541, line: 246, baseType: !238, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1540, file: !1541, line: 254, baseType: !1610, size: 256, offset: 1344)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1540, file: !1541, line: 254, size: 256, elements: !1611)
!1611 = !{!1612, !1618}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1610, file: !1541, line: 255, baseType: !1613, size: 256)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1541, line: 128, size: 256, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1613, file: !1541, line: 129, baseType: !161, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1613, file: !1541, line: 130, baseType: !1617, size: 256)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 256, elements: !1118)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !1541, line: 256, baseType: !1619, size: 256)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !1541, line: 256, size: 256, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1619, file: !1541, line: 258, baseType: !182, size: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1619, file: !1541, line: 259, baseType: !1623, size: 128, offset: 128)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1624, line: 22, size: 128, elements: !1625)
!1624 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1625 = !{!1626, !1629}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1623, file: !1624, line: 23, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1624, line: 23, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1623, file: !1624, line: 24, baseType: !287, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1540, file: !1541, line: 274, baseType: !1631, size: 64, offset: 1600)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1541, line: 170, size: 192, elements: !1633)
!1633 = !{!1634, !1643, !1644}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1632, file: !1541, line: 171, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1541, line: 165, baseType: !1636)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!222, !1539, !1639, !1641, !1539}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1632, file: !1541, line: 172, baseType: !1539, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1632, file: !1541, line: 173, baseType: !1591, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1511, file: !1512, line: 138, baseType: !1539, size: 64, offset: 768)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1511, file: !1512, line: 139, baseType: !1539, size: 64, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1511, file: !1512, line: 140, baseType: !1539, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1511, file: !1512, line: 145, baseType: !1649, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1651, line: 13, size: 896, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1650, file: !1651, line: 14, baseType: !1193, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1650, file: !1651, line: 15, baseType: !712, size: 32, offset: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1650, file: !1651, line: 16, baseType: !712, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1650, file: !1651, line: 21, baseType: !736, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1650, file: !1651, line: 27, baseType: !287, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1650, file: !1651, line: 28, baseType: !287, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1650, file: !1651, line: 29, baseType: !736, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1650, file: !1651, line: 32, baseType: !603, size: 128, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1650, file: !1651, line: 33, baseType: !396, size: 32, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1650, file: !1651, line: 37, baseType: !736, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1650, file: !1651, line: 44, baseType: !1664, size: 256, offset: 640)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1665, line: 15, size: 256, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1668, !1669, !1670, !1671, !1672, !1673}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1664, file: !1665, line: 16, baseType: !745)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1664, file: !1665, line: 18, baseType: !222, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1664, file: !1665, line: 19, baseType: !222, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1664, file: !1665, line: 20, baseType: !222, size: 32, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1664, file: !1665, line: 21, baseType: !222, size: 32, offset: 96)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1664, file: !1665, line: 22, baseType: !287, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1664, file: !1665, line: 23, baseType: !287, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1511, file: !1512, line: 146, baseType: !1675, size: 64, offset: 1024)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !687, line: 516, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1511, file: !1512, line: 147, baseType: !1678, size: 64, offset: 1088)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1512, line: 25, size: 64, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1679, file: !1512, line: 26, baseType: !712, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1679, file: !1512, line: 27, baseType: !222, size: 32, offset: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1679, file: !1512, line: 28, baseType: !1684, offset: 64)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, elements: !1685)
!1685 = !{!1686}
!1686 = !DISubrange(count: 0)
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1512, line: 149, baseType: !1688, size: 128, offset: 1152)
!1688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !1512, line: 149, size: 128, elements: !1689)
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1688, file: !1512, line: 150, baseType: !222, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1688, file: !1512, line: 151, baseType: !328, size: 128, align: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1180, file: !1181, line: 926, baseType: !1509, size: 64, offset: 8576)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1180, file: !1181, line: 929, baseType: !1509, size: 64, offset: 8640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1180, file: !1181, line: 933, baseType: !1539, size: 64, offset: 8704)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1180, file: !1181, line: 943, baseType: !1696, size: 128, offset: 8768)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, elements: !1697)
!1697 = !{!1698}
!1698 = !DISubrange(count: 16)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1180, file: !1181, line: 945, baseType: !1700, size: 64, offset: 8896)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1181, line: 49, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1180, file: !1181, line: 956, baseType: !1703, size: 64, offset: 8960)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1181, line: 45, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1180, file: !1181, line: 959, baseType: !1706, size: 64, offset: 9024)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1181, line: 959, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1180, file: !1181, line: 962, baseType: !1709, size: 64, offset: 9088)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1181, line: 66, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1180, file: !1181, line: 966, baseType: !1712, size: 64, offset: 9152)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1181, line: 50, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1180, file: !1181, line: 969, baseType: !1715, size: 64, offset: 9216)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1717, line: 82, size: 7296, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1754, !1763, !1764, !1766, !1767, !1768, !1771, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1801, !1802, !1809, !1810, !1811, !1812, !1813, !1814}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1716, file: !1717, line: 83, baseType: !1193, size: 32)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1716, file: !1717, line: 84, baseType: !712, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1716, file: !1717, line: 85, baseType: !222, size: 32, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1716, file: !1717, line: 86, baseType: !182, size: 128, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1716, file: !1717, line: 88, baseType: !1443, size: 128, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1716, file: !1717, line: 91, baseType: !1179, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1716, file: !1717, line: 94, baseType: !1726, size: 192, offset: 448)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1727, line: 30, size: 192, elements: !1728)
!1727 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1726, file: !1727, line: 31, baseType: !182, size: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1726, file: !1727, line: 32, baseType: !1731, size: 64, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1732, line: 25, baseType: !1733)
!1732 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1732, line: 23, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1733, file: !1732, line: 24, baseType: !1332, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1716, file: !1717, line: 97, baseType: !599, size: 64, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1716, file: !1717, line: 100, baseType: !222, size: 32, offset: 704)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1716, file: !1717, line: 106, baseType: !222, size: 32, offset: 736)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1716, file: !1717, line: 107, baseType: !1179, size: 64, offset: 768)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1716, file: !1717, line: 110, baseType: !222, size: 32, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1716, file: !1717, line: 111, baseType: !7, size: 32, offset: 864)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1716, file: !1717, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1716, file: !1717, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1716, file: !1717, line: 128, baseType: !222, size: 32, offset: 928)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1716, file: !1717, line: 129, baseType: !182, size: 128, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1716, file: !1717, line: 132, baseType: !1254, size: 512, offset: 1088)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1716, file: !1717, line: 133, baseType: !1262, size: 64, offset: 1600)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1716, file: !1717, line: 140, baseType: !1749, size: 256, offset: 1664)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1750, size: 256, elements: !1531)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1717, line: 38, size: 128, elements: !1751)
!1751 = !{!1752, !1753}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1750, file: !1717, line: 39, baseType: !382, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1750, file: !1717, line: 40, baseType: !382, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1716, file: !1717, line: 146, baseType: !1755, size: 192, offset: 1920)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1717, line: 66, size: 192, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1755, file: !1717, line: 67, baseType: !1758, size: 192)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1717, line: 47, size: 192, elements: !1759)
!1759 = !{!1760, !1761, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1758, file: !1717, line: 48, baseType: !738, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1758, file: !1717, line: 49, baseType: !738, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1758, file: !1717, line: 50, baseType: !738, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1716, file: !1717, line: 150, baseType: !1492, size: 640, offset: 2112)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1716, file: !1717, line: 153, baseType: !1765, size: 256, offset: 2752)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1433, size: 256, elements: !1118)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1716, file: !1717, line: 159, baseType: !1433, size: 64, offset: 3008)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1716, file: !1717, line: 162, baseType: !222, size: 32, offset: 3072)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1716, file: !1717, line: 164, baseType: !1769, size: 64, offset: 3136)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1717, line: 164, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1716, file: !1717, line: 175, baseType: !1772, size: 32, offset: 3200)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !351, line: 805, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 798, size: 32, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1773, file: !351, line: 803, baseType: !350, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1773, file: !351, line: 804, baseType: !196, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1716, file: !1717, line: 176, baseType: !382, size: 64, offset: 3264)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1716, file: !1717, line: 176, baseType: !382, size: 64, offset: 3328)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1716, file: !1717, line: 176, baseType: !382, size: 64, offset: 3392)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1716, file: !1717, line: 176, baseType: !382, size: 64, offset: 3456)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1716, file: !1717, line: 177, baseType: !382, size: 64, offset: 3520)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1716, file: !1717, line: 178, baseType: !382, size: 64, offset: 3584)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1716, file: !1717, line: 179, baseType: !1480, size: 128, offset: 3648)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1716, file: !1717, line: 180, baseType: !287, size: 64, offset: 3776)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1716, file: !1717, line: 180, baseType: !287, size: 64, offset: 3840)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1716, file: !1717, line: 180, baseType: !287, size: 64, offset: 3904)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1716, file: !1717, line: 180, baseType: !287, size: 64, offset: 3968)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1716, file: !1717, line: 181, baseType: !287, size: 64, offset: 4032)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1716, file: !1717, line: 181, baseType: !287, size: 64, offset: 4096)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1716, file: !1717, line: 181, baseType: !287, size: 64, offset: 4160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1716, file: !1717, line: 181, baseType: !287, size: 64, offset: 4224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1716, file: !1717, line: 182, baseType: !287, size: 64, offset: 4288)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1716, file: !1717, line: 182, baseType: !287, size: 64, offset: 4352)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1716, file: !1717, line: 182, baseType: !287, size: 64, offset: 4416)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1716, file: !1717, line: 182, baseType: !287, size: 64, offset: 4480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1716, file: !1717, line: 183, baseType: !287, size: 64, offset: 4544)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1716, file: !1717, line: 183, baseType: !287, size: 64, offset: 4608)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1716, file: !1717, line: 184, baseType: !1799, offset: 4672)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1800, line: 12, elements: !210)
!1800 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1716, file: !1717, line: 192, baseType: !384, size: 64, offset: 4672)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1716, file: !1717, line: 203, baseType: !1803, size: 2048, offset: 4736)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, size: 2048, elements: !1697)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1805, line: 43, size: 128, elements: !1806)
!1805 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !{!1807, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1804, file: !1805, line: 44, baseType: !286, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1804, file: !1805, line: 45, baseType: !286, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1716, file: !1717, line: 220, baseType: !451, size: 8, offset: 6784)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1716, file: !1717, line: 221, baseType: !1168, size: 16, offset: 6800)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1716, file: !1717, line: 222, baseType: !1168, size: 16, offset: 6816)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1716, file: !1717, line: 224, baseType: !937, size: 64, offset: 6848)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1716, file: !1717, line: 227, baseType: !1136, size: 192, offset: 6912)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1716, file: !1717, line: 233, baseType: !1136, size: 192, offset: 7104)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1180, file: !1181, line: 970, baseType: !1816, size: 64, offset: 9280)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1717, line: 20, size: 16576, elements: !1818)
!1818 = !{!1819, !1820, !1821, !1822}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1817, file: !1717, line: 21, baseType: !196)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1817, file: !1717, line: 22, baseType: !1193, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1817, file: !1717, line: 23, baseType: !1443, size: 128, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1817, file: !1717, line: 24, baseType: !1823, size: 16384, offset: 192)
!1823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1824, size: 16384, elements: !243)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1727, line: 49, size: 256, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1824, file: !1727, line: 50, baseType: !1827, size: 256)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1727, line: 35, size: 256, elements: !1828)
!1828 = !{!1829, !1836, !1837, !1843}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1827, file: !1727, line: 37, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1831, line: 19, baseType: !1832)
!1831 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1831, line: 18, baseType: !1834)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !222}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1827, file: !1727, line: 38, baseType: !287, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1827, file: !1727, line: 44, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1831, line: 22, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1831, line: 21, baseType: !1841)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1827, file: !1727, line: 46, baseType: !1731, size: 64, offset: 192)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1180, file: !1181, line: 971, baseType: !1731, size: 64, offset: 9344)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1180, file: !1181, line: 972, baseType: !1731, size: 64, offset: 9408)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1180, file: !1181, line: 974, baseType: !1731, size: 64, offset: 9472)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1180, file: !1181, line: 975, baseType: !1726, size: 192, offset: 9536)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1180, file: !1181, line: 976, baseType: !287, size: 64, offset: 9728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1180, file: !1181, line: 977, baseType: !284, size: 64, offset: 9792)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1180, file: !1181, line: 978, baseType: !7, size: 32, offset: 9856)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1180, file: !1181, line: 980, baseType: !331, size: 64, offset: 9920)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1180, file: !1181, line: 989, baseType: !1853, size: 128, offset: 9984)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1854, line: 35, size: 128, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1853, file: !1854, line: 36, baseType: !222, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1853, file: !1854, line: 37, baseType: !712, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1853, file: !1854, line: 38, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1854, line: 23, flags: DIFlagFwdDecl)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1180, file: !1181, line: 992, baseType: !382, size: 64, offset: 10112)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1180, file: !1181, line: 993, baseType: !382, size: 64, offset: 10176)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1180, file: !1181, line: 996, baseType: !196, offset: 10240)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1180, file: !1181, line: 999, baseType: !745, offset: 10240)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1180, file: !1181, line: 1001, baseType: !1866, size: 64, offset: 10240)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1181, line: 636, size: 64, elements: !1867)
!1867 = !{!1868}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1866, file: !1181, line: 637, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1180, file: !1181, line: 1005, baseType: !717, size: 128, offset: 10304)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1180, file: !1181, line: 1007, baseType: !1179, size: 64, offset: 10432)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1180, file: !1181, line: 1009, baseType: !1873, size: 64, offset: 10496)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1181, line: 1009, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1180, file: !1181, line: 1043, baseType: !161, size: 64, offset: 10560)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1180, file: !1181, line: 1046, baseType: !1877, size: 64, offset: 10624)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1181, line: 41, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1180, file: !1181, line: 1050, baseType: !1880, size: 64, offset: 10688)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1181, line: 42, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1180, file: !1181, line: 1054, baseType: !1883, size: 64, offset: 10752)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1181, line: 55, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1180, file: !1181, line: 1056, baseType: !1886, size: 64, offset: 10816)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1181, line: 40, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1180, file: !1181, line: 1058, baseType: !1889, size: 64, offset: 10880)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1891, line: 99, size: 704, elements: !1892)
!1891 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898, !1899, !1918, !1919}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1890, file: !1891, line: 100, baseType: !736, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1890, file: !1891, line: 101, baseType: !712, size: 32, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1890, file: !1891, line: 102, baseType: !712, size: 32, offset: 96)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1890, file: !1891, line: 105, baseType: !196, offset: 128)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1890, file: !1891, line: 107, baseType: !160, size: 16, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1890, file: !1891, line: 109, baseType: !703, size: 128, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1890, file: !1891, line: 110, baseType: !1900, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1891, line: 73, size: 448, elements: !1902)
!1902 = !{!1903, !1906, !1907, !1912, !1917}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1901, file: !1891, line: 74, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1891, line: 74, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1901, file: !1891, line: 75, baseType: !1889, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1891, line: 83, baseType: !1908, size: 128, offset: 128)
!1908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1891, line: 83, size: 128, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1908, file: !1891, line: 84, baseType: !182, size: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1908, file: !1891, line: 85, baseType: !898, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1891, line: 87, baseType: !1913, size: 128, offset: 256)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1891, line: 87, size: 128, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1913, file: !1891, line: 88, baseType: !603, size: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1913, file: !1891, line: 89, baseType: !328, size: 128, align: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1901, file: !1891, line: 92, baseType: !7, size: 32, offset: 384)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1890, file: !1891, line: 111, baseType: !599, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1890, file: !1891, line: 113, baseType: !1920, size: 256, offset: 448)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !132, line: 102, size: 256, elements: !1921)
!1921 = !{!1922, !1923, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1920, file: !132, line: 103, baseType: !736, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1920, file: !132, line: 104, baseType: !182, size: 128, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1920, file: !132, line: 105, baseType: !1925, size: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !132, line: 21, baseType: !1926)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !1929}
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1180, file: !1181, line: 1061, baseType: !1931, size: 64, offset: 10944)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1181, line: 43, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1180, file: !1181, line: 1064, baseType: !287, size: 64, offset: 11008)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1180, file: !1181, line: 1065, baseType: !1935, size: 64, offset: 11072)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1727, line: 14, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1727, line: 12, size: 384, elements: !1938)
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, scope: !1937, file: !1727, line: 13, baseType: !1940, size: 384)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1937, file: !1727, line: 13, size: 384, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1940, file: !1727, line: 13, baseType: !222, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1940, file: !1727, line: 13, baseType: !222, size: 32, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1940, file: !1727, line: 13, baseType: !222, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1940, file: !1727, line: 13, baseType: !1946, size: 256, offset: 128)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1947, line: 32, size: 256, elements: !1948)
!1947 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !{!1949, !1954, !1967, !1973, !1982, !2002, !2007}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1946, file: !1947, line: 37, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1947, line: 34, size: 64, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1950, file: !1947, line: 35, baseType: !1422, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1950, file: !1947, line: 36, baseType: !402, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1946, file: !1947, line: 45, baseType: !1955, size: 192)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1947, line: 40, size: 192, elements: !1956)
!1956 = !{!1957, !1959, !1960, !1966}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1955, file: !1947, line: 41, baseType: !1958, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !271, line: 95, baseType: !222)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1955, file: !1947, line: 42, baseType: !222, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1955, file: !1947, line: 43, baseType: !1961, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1947, line: 11, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1947, line: 8, size: 64, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1962, file: !1947, line: 9, baseType: !222, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1962, file: !1947, line: 10, baseType: !161, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1955, file: !1947, line: 44, baseType: !222, size: 32, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1946, file: !1947, line: 52, baseType: !1968, size: 128)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1947, line: 48, size: 128, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1968, file: !1947, line: 49, baseType: !1422, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1968, file: !1947, line: 50, baseType: !402, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1968, file: !1947, line: 51, baseType: !1961, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1946, file: !1947, line: 61, baseType: !1974, size: 256)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1947, line: 55, size: 256, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1981}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1974, file: !1947, line: 56, baseType: !1422, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1974, file: !1947, line: 57, baseType: !402, size: 32, offset: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1974, file: !1947, line: 58, baseType: !222, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1974, file: !1947, line: 59, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !271, line: 94, baseType: !272)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1974, file: !1947, line: 60, baseType: !1980, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1946, file: !1947, line: 95, baseType: !1983, size: 256)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1947, line: 64, size: 256, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1983, file: !1947, line: 65, baseType: !161, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1947, line: 77, baseType: !1987, size: 192, offset: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1947, line: 77, size: 192, elements: !1988)
!1988 = !{!1989, !1990, !1997}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1987, file: !1947, line: 82, baseType: !1168, size: 16)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1987, file: !1947, line: 88, baseType: !1991, size: 192)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1947, line: 84, size: 192, elements: !1992)
!1992 = !{!1993, !1995, !1996}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1991, file: !1947, line: 85, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !1292)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1991, file: !1947, line: 86, baseType: !161, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1991, file: !1947, line: 87, baseType: !161, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1987, file: !1947, line: 93, baseType: !1998, size: 96)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1947, line: 90, size: 96, elements: !1999)
!1999 = !{!2000, !2001}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1998, file: !1947, line: 91, baseType: !1994, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1998, file: !1947, line: 92, baseType: !379, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1946, file: !1947, line: 101, baseType: !2003, size: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1947, line: 98, size: 128, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2003, file: !1947, line: 99, baseType: !273, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2003, file: !1947, line: 100, baseType: !222, size: 32, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1946, file: !1947, line: 108, baseType: !2008, size: 128)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1947, line: 104, size: 128, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2008, file: !1947, line: 105, baseType: !161, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2008, file: !1947, line: 106, baseType: !222, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2008, file: !1947, line: 107, baseType: !7, size: 32, offset: 96)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1180, file: !1181, line: 1067, baseType: !1799, offset: 11136)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1180, file: !1181, line: 1099, baseType: !2015, size: 64, offset: 11136)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1181, line: 56, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1180, file: !1181, line: 1103, baseType: !182, size: 128, offset: 11200)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1180, file: !1181, line: 1104, baseType: !2019, size: 64, offset: 11328)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1181, line: 46, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1180, file: !1181, line: 1105, baseType: !1136, size: 192, offset: 11392)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1180, file: !1181, line: 1106, baseType: !7, size: 32, offset: 11584)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1180, file: !1181, line: 1109, baseType: !2024, size: 128, offset: 11648)
!2024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2025, size: 128, elements: !1531)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1181, line: 51, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1180, file: !1181, line: 1110, baseType: !1136, size: 192, offset: 11776)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1180, file: !1181, line: 1111, baseType: !182, size: 128, offset: 11968)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1180, file: !1181, line: 1173, baseType: !2030, size: 64, offset: 12096)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2032, line: 62, size: 256, align: 256, elements: !2033)
!2032 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !{!2034, !2035, !2036, !2041}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2031, file: !2032, line: 75, baseType: !379, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2031, file: !2032, line: 90, baseType: !379, size: 32, offset: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2031, file: !2032, line: 124, baseType: !2037, size: 64, offset: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2031, file: !2032, line: 109, size: 64, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2037, file: !2032, line: 110, baseType: !383, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2037, file: !2032, line: 112, baseType: !383, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !2032, line: 144, baseType: !379, size: 32, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1180, file: !1181, line: 1174, baseType: !378, size: 32, offset: 12160)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1180, file: !1181, line: 1179, baseType: !287, size: 64, offset: 12224)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1180, file: !1181, line: 1182, baseType: !2045, size: 128, offset: 12288)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1114, line: 76, size: 128, elements: !2046)
!2046 = !{!2047, !2052, !2053}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2045, file: !1114, line: 85, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2049, line: 7, size: 64, elements: !2050)
!2049 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2050 = !{!2051}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2048, file: !2049, line: 12, baseType: !1329, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2045, file: !1114, line: 88, baseType: !451, size: 8, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2045, file: !1114, line: 95, baseType: !451, size: 8, offset: 72)
!2054 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 1184, baseType: !2055, size: 128, offset: 12416)
!2055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 1184, size: 128, elements: !2056)
!2056 = !{!2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2055, file: !1181, line: 1185, baseType: !1193, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2055, file: !1181, line: 1186, baseType: !328, size: 128, align: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1180, file: !1181, line: 1190, baseType: !2060, size: 64, offset: 12544)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1181, line: 53, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1180, file: !1181, line: 1192, baseType: !2063, size: 128, offset: 12608)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1114, line: 64, size: 128, elements: !2064)
!2064 = !{!2065, !2066, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2063, file: !1114, line: 65, baseType: !685, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2063, file: !1114, line: 67, baseType: !379, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2063, file: !1114, line: 68, baseType: !379, size: 32, offset: 96)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1180, file: !1181, line: 1206, baseType: !222, size: 32, offset: 12736)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1180, file: !1181, line: 1207, baseType: !222, size: 32, offset: 12768)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1180, file: !1181, line: 1209, baseType: !287, size: 64, offset: 12800)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1180, file: !1181, line: 1219, baseType: !382, size: 64, offset: 12864)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1180, file: !1181, line: 1220, baseType: !382, size: 64, offset: 12928)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1180, file: !1181, line: 1317, baseType: !222, size: 32, offset: 12992)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1180, file: !1181, line: 1319, baseType: !1179, size: 64, offset: 13056)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1180, file: !1181, line: 1322, baseType: !2076, size: 64, offset: 13120)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2078, line: 56, size: 512, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086, !2088}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2077, file: !2078, line: 57, baseType: !2076, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2077, file: !2078, line: 58, baseType: !161, size: 64, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2077, file: !2078, line: 59, baseType: !287, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2078, line: 60, baseType: !287, size: 64, offset: 192)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2077, file: !2078, line: 61, baseType: !785, size: 64, offset: 256)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2077, file: !2078, line: 62, baseType: !7, size: 32, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2077, file: !2078, line: 63, baseType: !2087, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !183, line: 153, baseType: !382)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2077, file: !2078, line: 64, baseType: !2089, size: 64, offset: 448)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1180, file: !1181, line: 1326, baseType: !1193, size: 32, offset: 13184)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1180, file: !1181, line: 1342, baseType: !161, size: 64, offset: 13248)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1180, file: !1181, line: 1343, baseType: !383, size: 64, offset: 13312)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1180, file: !1181, line: 1344, baseType: !382, size: 64, offset: 13376)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1180, file: !1181, line: 1345, baseType: !383, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1180, file: !1181, line: 1346, baseType: !383, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1180, file: !1181, line: 1347, baseType: !383, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1180, file: !1181, line: 1348, baseType: !328, size: 128, align: 64, offset: 13504)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1180, file: !1181, line: 1358, baseType: !2100, size: 34816, offset: 13824)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2101, line: 485, size: 34816, elements: !2102)
!2101 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !{!2103, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2132, !2133, !2134, !2135, !2136, !2137, !2140, !2141, !2142}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2100, file: !2101, line: 487, baseType: !2104, size: 192)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2105, size: 192, elements: !239)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2106, line: 16, size: 64, elements: !2107)
!2106 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2105, file: !2106, line: 17, baseType: !156, size: 16)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2105, file: !2106, line: 18, baseType: !156, size: 16, offset: 16)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2105, file: !2106, line: 19, baseType: !156, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2105, file: !2106, line: 19, baseType: !156, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2105, file: !2106, line: 19, baseType: !156, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2105, file: !2106, line: 19, baseType: !156, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2105, file: !2106, line: 19, baseType: !156, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2105, file: !2106, line: 20, baseType: !156, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2105, file: !2106, line: 20, baseType: !156, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2105, file: !2106, line: 20, baseType: !156, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2105, file: !2106, line: 20, baseType: !156, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2105, file: !2106, line: 20, baseType: !156, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2105, file: !2106, line: 20, baseType: !156, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2100, file: !2101, line: 491, baseType: !287, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2100, file: !2101, line: 495, baseType: !160, size: 16, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2100, file: !2101, line: 496, baseType: !160, size: 16, offset: 272)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2100, file: !2101, line: 497, baseType: !160, size: 16, offset: 288)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2100, file: !2101, line: 498, baseType: !160, size: 16, offset: 304)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2100, file: !2101, line: 502, baseType: !287, size: 64, offset: 320)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2100, file: !2101, line: 503, baseType: !287, size: 64, offset: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2100, file: !2101, line: 514, baseType: !2129, size: 256, offset: 448)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2130, size: 256, elements: !1118)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2101, line: 483, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2100, file: !2101, line: 516, baseType: !287, size: 64, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2100, file: !2101, line: 518, baseType: !287, size: 64, offset: 768)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2100, file: !2101, line: 520, baseType: !287, size: 64, offset: 832)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2100, file: !2101, line: 521, baseType: !287, size: 64, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2100, file: !2101, line: 522, baseType: !287, size: 64, offset: 960)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2100, file: !2101, line: 528, baseType: !2138, size: 64, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2101, line: 10, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2100, file: !2101, line: 535, baseType: !287, size: 64, offset: 1088)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2100, file: !2101, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2100, file: !2101, line: 540, baseType: !2143, size: 33280, offset: 1536)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2144, line: 317, size: 33280, elements: !2145)
!2144 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2147, !2148}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2143, file: !2144, line: 330, baseType: !7, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2143, file: !2144, line: 337, baseType: !287, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2143, file: !2144, line: 348, baseType: !2149, size: 32768, offset: 512)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2144, line: 304, size: 32768, elements: !2150)
!2150 = !{!2151, !2166, !2205, !2255, !2268}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2149, file: !2144, line: 305, baseType: !2152, size: 896)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2144, line: 12, size: 896, elements: !2153)
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2165}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2152, file: !2144, line: 13, baseType: !378, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2152, file: !2144, line: 14, baseType: !378, size: 32, offset: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2152, file: !2144, line: 15, baseType: !378, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2152, file: !2144, line: 16, baseType: !378, size: 32, offset: 96)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2152, file: !2144, line: 17, baseType: !378, size: 32, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2152, file: !2144, line: 18, baseType: !378, size: 32, offset: 160)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2152, file: !2144, line: 19, baseType: !378, size: 32, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2152, file: !2144, line: 22, baseType: !2162, size: 640, offset: 224)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 640, elements: !2163)
!2163 = !{!2164}
!2164 = !DISubrange(count: 20)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2152, file: !2144, line: 25, baseType: !378, size: 32, offset: 864)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2149, file: !2144, line: 306, baseType: !2167, size: 4096, align: 128)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2144, line: 34, size: 4096, align: 128, elements: !2168)
!2168 = !{!2169, !2170, !2171, !2172, !2173, !2188, !2189, !2190, !2194, !2196, !2200}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2167, file: !2144, line: 35, baseType: !156, size: 16)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2167, file: !2144, line: 36, baseType: !156, size: 16, offset: 16)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2167, file: !2144, line: 37, baseType: !156, size: 16, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2167, file: !2144, line: 38, baseType: !156, size: 16, offset: 48)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2167, file: !2144, line: 39, baseType: !2174, size: 128, offset: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2167, file: !2144, line: 39, size: 128, elements: !2175)
!2175 = !{!2176, !2181}
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2144, line: 40, baseType: !2177, size: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2174, file: !2144, line: 40, size: 128, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2177, file: !2144, line: 41, baseType: !382, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2177, file: !2144, line: 42, baseType: !382, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2144, line: 44, baseType: !2182, size: 128)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2174, file: !2144, line: 44, size: 128, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2182, file: !2144, line: 45, baseType: !378, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2182, file: !2144, line: 46, baseType: !378, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2182, file: !2144, line: 47, baseType: !378, size: 32, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2182, file: !2144, line: 48, baseType: !378, size: 32, offset: 96)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2167, file: !2144, line: 51, baseType: !378, size: 32, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2167, file: !2144, line: 52, baseType: !378, size: 32, offset: 224)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2167, file: !2144, line: 55, baseType: !2191, size: 1024, offset: 256)
!2191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 1024, elements: !2192)
!2192 = !{!2193}
!2193 = !DISubrange(count: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2167, file: !2144, line: 58, baseType: !2195, size: 2048, offset: 1280)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 2048, elements: !243)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2167, file: !2144, line: 60, baseType: !2197, size: 384, offset: 3328)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !378, size: 384, elements: !2198)
!2198 = !{!2199}
!2199 = !DISubrange(count: 12)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2167, file: !2144, line: 62, baseType: !2201, size: 384, offset: 3712)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2167, file: !2144, line: 62, size: 384, elements: !2202)
!2202 = !{!2203, !2204}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2201, file: !2144, line: 63, baseType: !2197, size: 384)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2201, file: !2144, line: 64, baseType: !2197, size: 384)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2149, file: !2144, line: 307, baseType: !2206, size: 1088)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2144, line: 79, size: 1088, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2254}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2206, file: !2144, line: 80, baseType: !378, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2206, file: !2144, line: 81, baseType: !378, size: 32, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2206, file: !2144, line: 82, baseType: !378, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2206, file: !2144, line: 83, baseType: !378, size: 32, offset: 96)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2206, file: !2144, line: 84, baseType: !378, size: 32, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2206, file: !2144, line: 85, baseType: !378, size: 32, offset: 160)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2206, file: !2144, line: 86, baseType: !378, size: 32, offset: 192)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2206, file: !2144, line: 88, baseType: !2162, size: 640, offset: 224)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2206, file: !2144, line: 89, baseType: !1314, size: 8, offset: 864)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2206, file: !2144, line: 90, baseType: !1314, size: 8, offset: 872)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2206, file: !2144, line: 91, baseType: !1314, size: 8, offset: 880)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2206, file: !2144, line: 92, baseType: !1314, size: 8, offset: 888)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2206, file: !2144, line: 93, baseType: !1314, size: 8, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2206, file: !2144, line: 94, baseType: !1314, size: 8, offset: 904)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2206, file: !2144, line: 95, baseType: !2223, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2225, line: 11, size: 128, elements: !2226)
!2225 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2224, file: !2225, line: 12, baseType: !273, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2224, file: !2225, line: 13, baseType: !2229, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2231, line: 56, size: 1344, elements: !2232)
!2231 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2230, file: !2231, line: 61, baseType: !287, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2230, file: !2231, line: 62, baseType: !287, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2230, file: !2231, line: 63, baseType: !287, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2230, file: !2231, line: 64, baseType: !287, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2230, file: !2231, line: 65, baseType: !287, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2230, file: !2231, line: 66, baseType: !287, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2230, file: !2231, line: 68, baseType: !287, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2230, file: !2231, line: 69, baseType: !287, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2230, file: !2231, line: 70, baseType: !287, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2230, file: !2231, line: 71, baseType: !287, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2230, file: !2231, line: 72, baseType: !287, size: 64, offset: 640)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2230, file: !2231, line: 73, baseType: !287, size: 64, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2230, file: !2231, line: 74, baseType: !287, size: 64, offset: 768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2230, file: !2231, line: 75, baseType: !287, size: 64, offset: 832)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2230, file: !2231, line: 76, baseType: !287, size: 64, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2230, file: !2231, line: 81, baseType: !287, size: 64, offset: 960)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2230, file: !2231, line: 83, baseType: !287, size: 64, offset: 1024)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2230, file: !2231, line: 84, baseType: !287, size: 64, offset: 1088)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2230, file: !2231, line: 85, baseType: !287, size: 64, offset: 1152)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2230, file: !2231, line: 86, baseType: !287, size: 64, offset: 1216)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2230, file: !2231, line: 87, baseType: !287, size: 64, offset: 1280)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2206, file: !2144, line: 96, baseType: !378, size: 32, offset: 1024)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2149, file: !2144, line: 308, baseType: !2256, size: 4608, align: 512)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2144, line: 289, size: 4608, align: 512, elements: !2257)
!2257 = !{!2258, !2259, !2266}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2256, file: !2144, line: 290, baseType: !2167, size: 4096, align: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2256, file: !2144, line: 291, baseType: !2260, size: 512, offset: 4096)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2144, line: 268, size: 512, elements: !2261)
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2260, file: !2144, line: 269, baseType: !382, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2260, file: !2144, line: 270, baseType: !382, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2260, file: !2144, line: 271, baseType: !2265, size: 384, offset: 128)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 384, elements: !1587)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2256, file: !2144, line: 292, baseType: !2267, offset: 4608)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, elements: !1685)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2149, file: !2144, line: 309, baseType: !2269, size: 32768)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, size: 32768, elements: !2270)
!2270 = !{!2271}
!2271 = !DISubrange(count: 4096)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !687, line: 378, baseType: !2273, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1172, file: !687, line: 384, baseType: !1464, size: 192, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !941, file: !687, line: 500, baseType: !196, offset: 6656)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !941, file: !687, line: 501, baseType: !2277, size: 64, offset: 6656)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !687, line: 387, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !941, file: !687, line: 516, baseType: !1675, size: 64, offset: 6720)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !941, file: !687, line: 519, baseType: !315, size: 64, offset: 6784)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !941, file: !687, line: 521, baseType: !2282, size: 64, offset: 6848)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !687, line: 521, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !941, file: !687, line: 545, baseType: !712, size: 32, offset: 6912)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !941, file: !687, line: 548, baseType: !451, size: 8, offset: 6944)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !941, file: !687, line: 550, baseType: !2287, offset: 6952)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2288, line: 142, elements: !210)
!2288 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !941, file: !687, line: 554, baseType: !1920, size: 256, offset: 6976)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !941, file: !687, line: 557, baseType: !378, size: 32, offset: 7232)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !938, file: !687, line: 565, baseType: !2292, offset: 7296)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !2293)
!2293 = !{!2294}
!2294 = !DISubrange(count: -1)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !934, file: !687, line: 151, baseType: !712, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !927, file: !687, line: 156, baseType: !196, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 159, baseType: !2298, size: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !687, line: 159, size: 128, elements: !2299)
!2299 = !{!2300, !2364}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2298, file: !687, line: 161, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2303)
!2303 = !{!2304, !2314, !2335, !2336, !2337, !2338, !2339, !2351, !2352, !2353}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2302, file: !31, line: 111, baseType: !2305, size: 384)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2306)
!2306 = !{!2307, !2309, !2310, !2311, !2312, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2305, file: !31, line: 20, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2305, file: !31, line: 21, baseType: !2308, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2305, file: !31, line: 22, baseType: !2308, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2305, file: !31, line: 23, baseType: !287, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2305, file: !31, line: 24, baseType: !287, size: 64, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2305, file: !31, line: 25, baseType: !287, size: 64, offset: 320)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2302, file: !31, line: 112, baseType: !2315, size: 64, offset: 384)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2317, line: 105, size: 128, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2316, file: !2317, line: 110, baseType: !287, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2316, file: !2317, line: 118, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2317, line: 95, size: 448, elements: !2323)
!2323 = !{!2324, !2325, !2330, !2331, !2332, !2333, !2334}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2322, file: !2317, line: 96, baseType: !736, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2322, file: !2317, line: 97, baseType: !2326, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2317, line: 60, baseType: !2328)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !2315}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2322, file: !2317, line: 98, baseType: !2326, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2322, file: !2317, line: 99, baseType: !451, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2322, file: !2317, line: 100, baseType: !451, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2322, file: !2317, line: 101, baseType: !328, size: 128, align: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2322, file: !2317, line: 102, baseType: !2315, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2302, file: !31, line: 113, baseType: !2316, size: 128, offset: 448)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2302, file: !31, line: 114, baseType: !1464, size: 192, offset: 576)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2302, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2302, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2302, file: !31, line: 117, baseType: !2340, size: 64, offset: 832)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2343)
!2343 = !{!2344, !2345, !2349, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2342, file: !31, line: 73, baseType: !805, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2342, file: !31, line: 78, baseType: !2346, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !2301}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2342, file: !31, line: 83, baseType: !2346, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2342, file: !31, line: 89, baseType: !990, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2302, file: !31, line: 118, baseType: !161, size: 64, offset: 896)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2302, file: !31, line: 119, baseType: !222, size: 32, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, scope: !2302, file: !31, line: 120, baseType: !2354, size: 128, offset: 1024)
!2354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2302, file: !31, line: 120, size: 128, elements: !2355)
!2355 = !{!2356, !2362}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2354, file: !31, line: 121, baseType: !2357, size: 128)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2358, line: 6, size: 128, elements: !2359)
!2358 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2359 = !{!2360, !2361}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2357, file: !2358, line: 7, baseType: !382, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2357, file: !2358, line: 8, baseType: !382, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2354, file: !31, line: 122, baseType: !2363)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2357, elements: !1685)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2298, file: !687, line: 162, baseType: !161, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !691, file: !687, line: 176, baseType: !328, size: 128, align: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !687, line: 179, baseType: !2367, size: 32, offset: 384)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !687, line: 179, size: 32, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2367, file: !687, line: 184, baseType: !712, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2367, file: !687, line: 192, baseType: !7, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2367, file: !687, line: 194, baseType: !7, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2367, file: !687, line: 195, baseType: !222, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !686, file: !687, line: 199, baseType: !712, size: 32, offset: 416)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !621, file: !44, line: 1964, baseType: !2375, size: 64, offset: 1344)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!273, !560, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2380, line: 12, size: 256, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2381 = !{!2382, !2383, !2384, !2385, !2386}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2379, file: !2380, line: 13, baseType: !708, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2379, file: !2380, line: 16, baseType: !222, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2379, file: !2380, line: 23, baseType: !287, size: 64, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2379, file: !2380, line: 30, baseType: !287, size: 64, offset: 128)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2379, file: !2380, line: 33, baseType: !2387, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !687, line: 27, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !621, file: !44, line: 1966, baseType: !2375, size: 64, offset: 1408)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !561, file: !44, line: 1424, baseType: !2391, size: 64, offset: 448)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2393)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2394)
!2394 = !{!2395, !2441, !2445, !2449, !2450, !2451, !2452, !2453, !2458, !2463, !2467}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2393, file: !38, line: 323, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!222, !2399}
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2426, !2427, !2428}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2400, file: !38, line: 295, baseType: !603, size: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2400, file: !38, line: 296, baseType: !182, size: 128, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2400, file: !38, line: 297, baseType: !182, size: 128, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2400, file: !38, line: 298, baseType: !182, size: 128, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2400, file: !38, line: 299, baseType: !1136, size: 192, offset: 512)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2400, file: !38, line: 300, baseType: !196, offset: 704)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2400, file: !38, line: 301, baseType: !712, size: 32, offset: 704)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2400, file: !38, line: 302, baseType: !560, size: 64, offset: 768)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2400, file: !38, line: 303, baseType: !2411, size: 64, offset: 832)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2412)
!2412 = !{!2413, !2425}
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !2411, file: !38, line: 69, baseType: !2414, size: 32)
!2414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2411, file: !38, line: 69, size: 32, elements: !2415)
!2415 = !{!2416, !2417, !2418}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2414, file: !38, line: 70, baseType: !396, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2414, file: !38, line: 71, baseType: !404, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2414, file: !38, line: 72, baseType: !2419, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2420, line: 24, baseType: !2421)
!2420 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2420, line: 22, size: 32, elements: !2422)
!2422 = !{!2423}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2421, file: !2420, line: 23, baseType: !2424, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2420, line: 20, baseType: !402)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2411, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2400, file: !38, line: 304, baseType: !492, size: 64, offset: 896)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2400, file: !38, line: 305, baseType: !287, size: 64, offset: 960)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2400, file: !38, line: 306, baseType: !2429, size: 576, offset: 1024)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2430)
!2430 = !{!2431, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2429, file: !38, line: 206, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !494)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2429, file: !38, line: 207, baseType: !2432, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2429, file: !38, line: 208, baseType: !2432, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2429, file: !38, line: 209, baseType: !2432, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2429, file: !38, line: 210, baseType: !2432, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2429, file: !38, line: 211, baseType: !2432, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2429, file: !38, line: 212, baseType: !2432, size: 64, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2429, file: !38, line: 213, baseType: !500, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2429, file: !38, line: 214, baseType: !500, size: 64, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2393, file: !38, line: 324, baseType: !2442, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!2399, !560, !222}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2393, file: !38, line: 325, baseType: !2446, size: 64, offset: 128)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{null, !2399}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2393, file: !38, line: 326, baseType: !2396, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2393, file: !38, line: 327, baseType: !2396, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2393, file: !38, line: 328, baseType: !2396, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2393, file: !38, line: 329, baseType: !649, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2393, file: !38, line: 332, baseType: !2454, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2457, !390}
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2393, file: !38, line: 333, baseType: !2459, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!222, !390, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2393, file: !38, line: 335, baseType: !2464, size: 64, offset: 576)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!222, !390, !2457}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2393, file: !38, line: 337, baseType: !2468, size: 64, offset: 640)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!222, !560, !2471}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !561, file: !44, line: 1425, baseType: !2473, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2476)
!2476 = !{!2477, !2481, !2482, !2486, !2487, !2488, !2503, !2526, !2530, !2531, !2554}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2475, file: !38, line: 429, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!222, !560, !222, !222, !510}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2475, file: !38, line: 430, baseType: !649, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2475, file: !38, line: 431, baseType: !2483, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!222, !560, !7}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2475, file: !38, line: 432, baseType: !2483, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2475, file: !38, line: 433, baseType: !649, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2475, file: !38, line: 434, baseType: !2489, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!222, !560, !222, !2492}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2493, file: !38, line: 416, baseType: !222, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2493, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2493, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2493, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2493, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2493, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2493, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2493, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2475, file: !38, line: 435, baseType: !2504, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!222, !560, !2411, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2508, file: !38, line: 344, baseType: !222, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2508, file: !38, line: 345, baseType: !382, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2508, file: !38, line: 346, baseType: !382, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2508, file: !38, line: 347, baseType: !382, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2508, file: !38, line: 348, baseType: !382, size: 64, offset: 256)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2508, file: !38, line: 349, baseType: !382, size: 64, offset: 320)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2508, file: !38, line: 350, baseType: !382, size: 64, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2508, file: !38, line: 351, baseType: !742, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2508, file: !38, line: 353, baseType: !742, size: 64, offset: 512)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2508, file: !38, line: 354, baseType: !222, size: 32, offset: 576)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2508, file: !38, line: 355, baseType: !222, size: 32, offset: 608)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2508, file: !38, line: 356, baseType: !382, size: 64, offset: 640)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2508, file: !38, line: 357, baseType: !382, size: 64, offset: 704)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2508, file: !38, line: 358, baseType: !382, size: 64, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2508, file: !38, line: 359, baseType: !742, size: 64, offset: 832)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2508, file: !38, line: 360, baseType: !222, size: 32, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2475, file: !38, line: 436, baseType: !2527, size: 64, offset: 448)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!222, !560, !2471, !2507}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2475, file: !38, line: 438, baseType: !2504, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2475, file: !38, line: 439, baseType: !2532, size: 64, offset: 576)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!222, !560, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2536, file: !38, line: 410, baseType: !7, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2536, file: !38, line: 411, baseType: !2540, size: 1344, offset: 64)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2541, size: 1344, elements: !239)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2553}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2541, file: !38, line: 396, baseType: !7, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2541, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2541, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2541, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2541, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2541, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2541, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2541, file: !38, line: 404, baseType: !384, size: 64, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2541, file: !38, line: 405, baseType: !2552, size: 64, offset: 320)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !183, line: 126, baseType: !382)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2541, file: !38, line: 406, baseType: !2552, size: 64, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2475, file: !38, line: 440, baseType: !2483, size: 64, offset: 640)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !561, file: !44, line: 1426, baseType: !2556, size: 64, offset: 576)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2558)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !561, file: !44, line: 1427, baseType: !287, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !561, file: !44, line: 1428, baseType: !287, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !561, file: !44, line: 1429, baseType: !287, size: 64, offset: 768)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !561, file: !44, line: 1430, baseType: !345, size: 64, offset: 832)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !561, file: !44, line: 1431, baseType: !732, size: 256, offset: 896)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !561, file: !44, line: 1432, baseType: !222, size: 32, offset: 1152)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !561, file: !44, line: 1433, baseType: !712, size: 32, offset: 1184)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !561, file: !44, line: 1437, baseType: !2567, size: 64, offset: 1216)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2570)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !561, file: !44, line: 1449, baseType: !2572, size: 64, offset: 1280)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !361, line: 34, size: 64, elements: !2573)
!2573 = !{!2574}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2572, file: !361, line: 35, baseType: !364, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !561, file: !44, line: 1450, baseType: !182, size: 128, offset: 1344)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !561, file: !44, line: 1451, baseType: !2577, size: 64, offset: 1472)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !561, file: !44, line: 1452, baseType: !1886, size: 64, offset: 1536)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !561, file: !44, line: 1453, baseType: !2581, size: 64, offset: 1600)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !561, file: !44, line: 1454, baseType: !603, size: 128, offset: 1664)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !561, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !561, file: !44, line: 1456, baseType: !2586, size: 2432, offset: 1856)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2592, !2624}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2586, file: !38, line: 519, baseType: !7, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2586, file: !38, line: 520, baseType: !732, size: 256, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2586, file: !38, line: 521, baseType: !2591, size: 192, offset: 320)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 192, elements: !239)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2586, file: !38, line: 522, baseType: !2593, size: 1728, offset: 512)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2594, size: 1728, elements: !239)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2595)
!2595 = !{!2596, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2594, file: !38, line: 223, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2599)
!2599 = !{!2600, !2601, !2614, !2615}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2598, file: !38, line: 444, baseType: !222, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2598, file: !38, line: 445, baseType: !2602, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2604, file: !38, line: 311, baseType: !649, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2604, file: !38, line: 312, baseType: !649, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2604, file: !38, line: 313, baseType: !649, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2604, file: !38, line: 314, baseType: !649, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2604, file: !38, line: 315, baseType: !2396, size: 64, offset: 256)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2604, file: !38, line: 316, baseType: !2396, size: 64, offset: 320)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2604, file: !38, line: 317, baseType: !2396, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2604, file: !38, line: 318, baseType: !2468, size: 64, offset: 448)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2598, file: !38, line: 446, baseType: !594, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2598, file: !38, line: 447, baseType: !2597, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2594, file: !38, line: 224, baseType: !222, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2594, file: !38, line: 226, baseType: !182, size: 128, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2594, file: !38, line: 227, baseType: !287, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2594, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2594, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2594, file: !38, line: 230, baseType: !2432, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2594, file: !38, line: 231, baseType: !2432, size: 64, offset: 448)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2594, file: !38, line: 232, baseType: !161, size: 64, offset: 512)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2586, file: !38, line: 523, baseType: !2625, size: 192, offset: 2240)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2602, size: 192, elements: !239)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !561, file: !44, line: 1458, baseType: !2627, size: 2112, offset: 4288)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2628)
!2628 = !{!2629, !2630, !2631}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2627, file: !44, line: 1411, baseType: !222, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2627, file: !44, line: 1412, baseType: !1443, size: 128, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2627, file: !44, line: 1413, baseType: !2632, size: 1920, offset: 192)
!2632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2633, size: 1920, elements: !239)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2634, line: 12, size: 640, elements: !2635)
!2634 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2635 = !{!2636, !2644, !2646, !2651, !2652}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2633, file: !2634, line: 13, baseType: !2637, size: 320)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2638, line: 17, size: 320, elements: !2639)
!2638 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2639 = !{!2640, !2641, !2642, !2643}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2637, file: !2638, line: 18, baseType: !222, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2637, file: !2638, line: 19, baseType: !222, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2637, file: !2638, line: 20, baseType: !1443, size: 128, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2637, file: !2638, line: 22, baseType: !328, size: 128, align: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2633, file: !2634, line: 14, baseType: !2645, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2633, file: !2634, line: 15, baseType: !2647, size: 64, offset: 384)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2648, line: 16, size: 64, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2647, file: !2648, line: 17, baseType: !1179, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2633, file: !2634, line: 16, baseType: !1443, size: 128, offset: 448)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2633, file: !2634, line: 17, baseType: !712, size: 32, offset: 576)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !561, file: !44, line: 1465, baseType: !161, size: 64, offset: 6400)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !561, file: !44, line: 1468, baseType: !378, size: 32, offset: 6464)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !561, file: !44, line: 1470, baseType: !500, size: 64, offset: 6528)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !561, file: !44, line: 1471, baseType: !500, size: 64, offset: 6592)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !561, file: !44, line: 1473, baseType: !379, size: 32, offset: 6656)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !561, file: !44, line: 1474, baseType: !2659, size: 64, offset: 6720)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !561, file: !44, line: 1477, baseType: !2662, size: 256, offset: 6784)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !2192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !561, file: !44, line: 1478, baseType: !2664, size: 128, offset: 7040)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2665, line: 18, baseType: !2666)
!2665 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2665, line: 16, size: 128, elements: !2667)
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2666, file: !2665, line: 17, baseType: !2669, size: 128)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 128, elements: !1697)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !561, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !561, file: !44, line: 1481, baseType: !2672, size: 32, offset: 7200)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !183, line: 150, baseType: !7)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !561, file: !44, line: 1487, baseType: !1136, size: 192, offset: 7232)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !561, file: !44, line: 1493, baseType: !178, size: 64, offset: 7424)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !561, file: !44, line: 1495, baseType: !2676, size: 64, offset: 7488)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2678)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !343, line: 135, size: 1024, align: 512, elements: !2679)
!2679 = !{!2680, !2684, !2685, !2692, !2698, !2702, !2706, !2710, !2711, !2715, !2719, !2724, !2728}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2678, file: !343, line: 136, baseType: !2681, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!222, !345, !7}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2678, file: !343, line: 137, baseType: !2681, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2678, file: !343, line: 138, baseType: !2686, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!222, !2689, !2691}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2678, file: !343, line: 139, baseType: !2693, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!222, !2689, !7, !178, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2678, file: !343, line: 141, baseType: !2699, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!222, !2689}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2678, file: !343, line: 142, baseType: !2703, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!222, !345}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2678, file: !343, line: 143, baseType: !2707, size: 64, offset: 384)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !345}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2678, file: !343, line: 144, baseType: !2707, size: 64, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2678, file: !343, line: 145, baseType: !2712, size: 64, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !345, !390}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2678, file: !343, line: 146, baseType: !2716, size: 64, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!238, !345, !238, !222}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2678, file: !343, line: 147, baseType: !2720, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!341, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2678, file: !343, line: 148, baseType: !2725, size: 64, offset: 704)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!222, !510, !451}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2678, file: !343, line: 149, baseType: !2729, size: 64, offset: 768)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!345, !345, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !561, file: !44, line: 1500, baseType: !222, size: 32, offset: 7552)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !561, file: !44, line: 1502, baseType: !2736, size: 448, offset: 7616)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2380, line: 60, size: 448, elements: !2737)
!2737 = !{!2738, !2743, !2744, !2745, !2746, !2747, !2748}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2736, file: !2380, line: 61, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!287, !2742, !2378}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2736, file: !2380, line: 63, baseType: !2739, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2736, file: !2380, line: 66, baseType: !273, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2736, file: !2380, line: 67, baseType: !222, size: 32, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2736, file: !2380, line: 68, baseType: !7, size: 32, offset: 224)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2736, file: !2380, line: 71, baseType: !182, size: 128, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2736, file: !2380, line: 77, baseType: !2749, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !561, file: !44, line: 1505, baseType: !736, size: 64, offset: 8064)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !561, file: !44, line: 1508, baseType: !736, size: 64, offset: 8128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !561, file: !44, line: 1511, baseType: !222, size: 32, offset: 8192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !561, file: !44, line: 1514, baseType: !872, size: 32, offset: 8224)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !561, file: !44, line: 1517, baseType: !2755, size: 64, offset: 8256)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !132, line: 18, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !561, file: !44, line: 1518, baseType: !599, size: 64, offset: 8320)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !561, file: !44, line: 1525, baseType: !1675, size: 64, offset: 8384)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !561, file: !44, line: 1532, baseType: !2760, size: 64, offset: 8448)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2761, line: 52, size: 64, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2760, file: !2761, line: 53, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2761, line: 40, size: 256, elements: !2766)
!2766 = !{!2767, !2768, !2773}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2765, file: !2761, line: 42, baseType: !196)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2765, file: !2761, line: 44, baseType: !2769, size: 192)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2761, line: 28, size: 192, elements: !2770)
!2770 = !{!2771, !2772}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2769, file: !2761, line: 29, baseType: !182, size: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2769, file: !2761, line: 31, baseType: !273, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2765, file: !2761, line: 49, baseType: !273, size: 64, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !561, file: !44, line: 1533, baseType: !2760, size: 64, offset: 8512)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !561, file: !44, line: 1534, baseType: !328, size: 128, align: 64, offset: 8576)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !561, file: !44, line: 1535, baseType: !1920, size: 256, offset: 8704)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !561, file: !44, line: 1537, baseType: !1136, size: 192, offset: 8960)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !561, file: !44, line: 1542, baseType: !222, size: 32, offset: 9152)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !561, file: !44, line: 1545, baseType: !196, offset: 9184)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !561, file: !44, line: 1546, baseType: !182, size: 128, offset: 9216)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !561, file: !44, line: 1548, baseType: !196, offset: 9344)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !561, file: !44, line: 1549, baseType: !182, size: 128, offset: 9344)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !391, file: !44, line: 624, baseType: !698, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !391, file: !44, line: 631, baseType: !287, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 639, baseType: !2786, size: 32, offset: 384)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 639, size: 32, elements: !2787)
!2787 = !{!2788, !2790}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2786, file: !44, line: 640, baseType: !2789, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2786, file: !44, line: 641, baseType: !7, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !391, file: !44, line: 643, baseType: !474, size: 32, offset: 416)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !391, file: !44, line: 644, baseType: !492, size: 64, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !391, file: !44, line: 645, baseType: !496, size: 128, offset: 512)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !391, file: !44, line: 646, baseType: !496, size: 128, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !391, file: !44, line: 647, baseType: !496, size: 128, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !391, file: !44, line: 648, baseType: !196, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !391, file: !44, line: 649, baseType: !160, size: 16, offset: 896)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !391, file: !44, line: 650, baseType: !1314, size: 8, offset: 912)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !391, file: !44, line: 651, baseType: !1314, size: 8, offset: 920)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !391, file: !44, line: 652, baseType: !2552, size: 64, offset: 960)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !391, file: !44, line: 659, baseType: !287, size: 64, offset: 1024)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !391, file: !44, line: 660, baseType: !732, size: 256, offset: 1088)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !391, file: !44, line: 662, baseType: !287, size: 64, offset: 1344)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !391, file: !44, line: 663, baseType: !287, size: 64, offset: 1408)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !391, file: !44, line: 665, baseType: !603, size: 128, offset: 1472)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !391, file: !44, line: 666, baseType: !182, size: 128, offset: 1600)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !391, file: !44, line: 675, baseType: !182, size: 128, offset: 1728)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !391, file: !44, line: 676, baseType: !182, size: 128, offset: 1856)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !391, file: !44, line: 677, baseType: !182, size: 128, offset: 1984)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 678, baseType: !2811, size: 128, offset: 2112)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 678, size: 128, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2811, file: !44, line: 679, baseType: !599, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2811, file: !44, line: 680, baseType: !328, size: 128, align: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !391, file: !44, line: 682, baseType: !738, size: 64, offset: 2240)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !391, file: !44, line: 683, baseType: !738, size: 64, offset: 2304)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !391, file: !44, line: 684, baseType: !712, size: 32, offset: 2368)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !391, file: !44, line: 685, baseType: !712, size: 32, offset: 2400)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !391, file: !44, line: 686, baseType: !712, size: 32, offset: 2432)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !391, file: !44, line: 688, baseType: !712, size: 32, offset: 2464)
!2821 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 690, baseType: !2822, size: 64, offset: 2496)
!2822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 690, size: 64, elements: !2823)
!2823 = !{!2824, !3047}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2822, file: !44, line: 691, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2827)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2828)
!2828 = !{!2829, !2830, !2834, !2839, !2843, !2844, !2845, !2849, !2862, !2863, !2871, !2875, !2876, !2880, !2881, !2885, !2890, !2891, !2895, !2899, !3007, !3011, !3012, !3016, !3017, !3021, !3025, !3030, !3034, !3038, !3042, !3046}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2827, file: !44, line: 1823, baseType: !594, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2827, file: !44, line: 1824, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!492, !315, !492, !222}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2827, file: !44, line: 1825, baseType: !2835, size: 64, offset: 128)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!269, !315, !238, !284, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2827, file: !44, line: 1826, baseType: !2840, size: 64, offset: 192)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!269, !315, !178, !284, !2838}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2827, file: !44, line: 1827, baseType: !809, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2827, file: !44, line: 1828, baseType: !809, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2827, file: !44, line: 1829, baseType: !2846, size: 64, offset: 384)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!222, !812, !451}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2827, file: !44, line: 1830, baseType: !2850, size: 64, offset: 448)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!222, !315, !2853}
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2855)
!2855 = !{!2856, !2861}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2854, file: !44, line: 1777, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2858)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!222, !2853, !178, !222, !492, !382, !7}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2854, file: !44, line: 1778, baseType: !492, size: 64, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2827, file: !44, line: 1831, baseType: !2850, size: 64, offset: 512)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2827, file: !44, line: 1832, baseType: !2864, size: 64, offset: 576)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!2867, !315, !2869}
!2867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2868, line: 52, baseType: !7)
!2868 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !580, line: 27, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2827, file: !44, line: 1833, baseType: !2872, size: 64, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!273, !315, !7, !287}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2827, file: !44, line: 1834, baseType: !2872, size: 64, offset: 704)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2827, file: !44, line: 1835, baseType: !2877, size: 64, offset: 768)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!222, !315, !944}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2827, file: !44, line: 1836, baseType: !287, size: 64, offset: 832)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2827, file: !44, line: 1837, baseType: !2882, size: 64, offset: 896)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!222, !390, !315}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2827, file: !44, line: 1838, baseType: !2886, size: 64, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!222, !315, !2889}
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !161)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2827, file: !44, line: 1839, baseType: !2882, size: 64, offset: 1024)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2827, file: !44, line: 1840, baseType: !2892, size: 64, offset: 1088)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!222, !315, !492, !492, !222}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2827, file: !44, line: 1841, baseType: !2896, size: 64, offset: 1152)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!222, !222, !315, !222}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2827, file: !44, line: 1842, baseType: !2900, size: 64, offset: 1216)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!222, !315, !222, !2903}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2937, !2938, !2939, !2952, !2983}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2904, file: !44, line: 1063, baseType: !2903, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2904, file: !44, line: 1064, baseType: !182, size: 128, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2904, file: !44, line: 1065, baseType: !603, size: 128, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2904, file: !44, line: 1066, baseType: !182, size: 128, offset: 320)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2904, file: !44, line: 1069, baseType: !182, size: 128, offset: 448)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2904, file: !44, line: 1072, baseType: !2889, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2904, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2904, file: !44, line: 1074, baseType: !388, size: 8, offset: 672)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2904, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2904, file: !44, line: 1076, baseType: !222, size: 32, offset: 736)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2904, file: !44, line: 1077, baseType: !1443, size: 128, offset: 768)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2904, file: !44, line: 1078, baseType: !315, size: 64, offset: 896)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2904, file: !44, line: 1079, baseType: !492, size: 64, offset: 960)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2904, file: !44, line: 1080, baseType: !492, size: 64, offset: 1024)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2904, file: !44, line: 1082, baseType: !2921, size: 64, offset: 1088)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2923)
!2923 = !{!2924, !2932, !2933, !2934, !2935, !2936}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2922, file: !44, line: 1315, baseType: !2925)
!2925 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2926, line: 20, baseType: !2927)
!2926 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2926, line: 11, elements: !2928)
!2928 = !{!2929}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2927, file: !2926, line: 12, baseType: !2930)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !208, line: 33, baseType: !2931)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !208, line: 31, elements: !210)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2922, file: !44, line: 1316, baseType: !222, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2922, file: !44, line: 1317, baseType: !222, size: 32, offset: 32)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2922, file: !44, line: 1318, baseType: !2921, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2922, file: !44, line: 1319, baseType: !315, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2922, file: !44, line: 1320, baseType: !328, size: 128, align: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2904, file: !44, line: 1084, baseType: !287, size: 64, offset: 1152)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2904, file: !44, line: 1085, baseType: !287, size: 64, offset: 1216)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2904, file: !44, line: 1087, baseType: !2940, size: 64, offset: 1280)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2942)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2943)
!2943 = !{!2944, !2948}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2942, file: !44, line: 1012, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !2903, !2903}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2942, file: !44, line: 1013, baseType: !2949, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2903}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2904, file: !44, line: 1088, baseType: !2953, size: 64, offset: 1344)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2956)
!2956 = !{!2957, !2961, !2965, !2966, !2970, !2974, !2978, !2982}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2955, file: !44, line: 1017, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!2889, !2889}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2955, file: !44, line: 1018, baseType: !2962, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !2889}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2955, file: !44, line: 1019, baseType: !2949, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2955, file: !44, line: 1020, baseType: !2967, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!222, !2903, !222}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2955, file: !44, line: 1021, baseType: !2971, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!451, !2903}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2955, file: !44, line: 1022, baseType: !2975, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!222, !2903, !222, !186}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2955, file: !44, line: 1023, baseType: !2979, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !2903, !786}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2955, file: !44, line: 1024, baseType: !2971, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2904, file: !44, line: 1097, baseType: !2984, size: 256, offset: 1408)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !44, line: 1089, size: 256, elements: !2985)
!2985 = !{!2986, !2995, !3001}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2984, file: !44, line: 1090, baseType: !2987, size: 256)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2988, line: 10, size: 256, elements: !2989)
!2988 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2989 = !{!2990, !2991, !2994}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2987, file: !2988, line: 11, baseType: !378, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2987, file: !2988, line: 12, baseType: !2992, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2988, line: 5, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2987, file: !2988, line: 13, baseType: !182, size: 128, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2984, file: !44, line: 1091, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2988, line: 17, size: 64, elements: !2997)
!2997 = !{!2998}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2996, file: !2988, line: 18, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2988, line: 16, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2984, file: !44, line: 1096, baseType: !3002, size: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2984, file: !44, line: 1092, size: 192, elements: !3003)
!3003 = !{!3004, !3005, !3006}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3002, file: !44, line: 1093, baseType: !182, size: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3002, file: !44, line: 1094, baseType: !222, size: 32, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3002, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2827, file: !44, line: 1843, baseType: !3008, size: 64, offset: 1280)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!269, !315, !685, !222, !284, !2838, !222}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2827, file: !44, line: 1844, baseType: !1064, size: 64, offset: 1344)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2827, file: !44, line: 1845, baseType: !3013, size: 64, offset: 1408)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!222, !222}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2827, file: !44, line: 1846, baseType: !2900, size: 64, offset: 1472)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2827, file: !44, line: 1847, baseType: !3018, size: 64, offset: 1536)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!269, !2060, !315, !2838, !284, !7}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2827, file: !44, line: 1848, baseType: !3022, size: 64, offset: 1600)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!269, !315, !2838, !2060, !284, !7}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2827, file: !44, line: 1849, baseType: !3026, size: 64, offset: 1664)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!222, !315, !273, !3029, !786}
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2827, file: !44, line: 1850, baseType: !3031, size: 64, offset: 1728)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!273, !315, !222, !492, !492}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2827, file: !44, line: 1852, baseType: !3035, size: 64, offset: 1792)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !675, !315}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2827, file: !44, line: 1856, baseType: !3039, size: 64, offset: 1856)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!269, !315, !492, !315, !492, !284, !7}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2827, file: !44, line: 1858, baseType: !3043, size: 64, offset: 1920)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!492, !315, !492, !315, !492, !492, !7}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2827, file: !44, line: 1861, baseType: !2892, size: 64, offset: 1984)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2822, file: !44, line: 692, baseType: !628, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !391, file: !44, line: 694, baseType: !3049, size: 64, offset: 2560)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3055}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3050, file: !44, line: 1101, baseType: !196)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3050, file: !44, line: 1102, baseType: !182, size: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3050, file: !44, line: 1103, baseType: !182, size: 128, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3050, file: !44, line: 1104, baseType: !182, size: 128, offset: 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !391, file: !44, line: 695, baseType: !699, size: 1216, align: 64, offset: 2624)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !391, file: !44, line: 696, baseType: !182, size: 128, offset: 3840)
!3058 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !44, line: 697, baseType: !3059, size: 64, offset: 3968)
!3059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !44, line: 697, size: 64, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3066, !3067}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3059, file: !44, line: 698, baseType: !2060, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3059, file: !44, line: 699, baseType: !2577, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3059, file: !44, line: 700, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3059, file: !44, line: 701, baseType: !238, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3059, file: !44, line: 702, baseType: !7, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !391, file: !44, line: 705, baseType: !379, size: 32, offset: 4032)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !391, file: !44, line: 708, baseType: !379, size: 32, offset: 4064)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !391, file: !44, line: 709, baseType: !2659, size: 64, offset: 4096)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !391, file: !44, line: 720, baseType: !161, size: 64, offset: 4160)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !346, file: !343, line: 98, baseType: !3073, size: 256, offset: 448)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, elements: !2192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !346, file: !343, line: 101, baseType: !3075, size: 32, offset: 704)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3076, line: 25, size: 32, elements: !3077)
!3076 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !3075, file: !3076, line: 26, baseType: !3079, size: 32)
!3079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3075, file: !3076, line: 26, size: 32, elements: !3080)
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3079, file: !3076, line: 30, baseType: !3082, size: 32)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3079, file: !3076, line: 30, size: 32, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3082, file: !3076, line: 31, baseType: !196)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3082, file: !3076, line: 32, baseType: !222, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !346, file: !343, line: 102, baseType: !2676, size: 64, offset: 768)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !346, file: !343, line: 103, baseType: !560, size: 64, offset: 832)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !346, file: !343, line: 104, baseType: !287, size: 64, offset: 896)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !346, file: !343, line: 105, baseType: !161, size: 64, offset: 960)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !343, line: 107, baseType: !3091, size: 128, offset: 1024)
!3091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !343, line: 107, size: 128, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3091, file: !343, line: 108, baseType: !182, size: 128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3091, file: !343, line: 109, baseType: !3095, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !346, file: !343, line: 111, baseType: !182, size: 128, offset: 1152)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !346, file: !343, line: 112, baseType: !182, size: 128, offset: 1280)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !346, file: !343, line: 120, baseType: !3099, size: 128, offset: 1408)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !343, line: 116, size: 128, elements: !3100)
!3100 = !{!3101, !3102, !3103}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3099, file: !343, line: 117, baseType: !603, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3099, file: !343, line: 118, baseType: !360, size: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3099, file: !343, line: 119, baseType: !328, size: 128, align: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !316, file: !44, line: 922, baseType: !390, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !316, file: !44, line: 923, baseType: !2825, size: 64, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !316, file: !44, line: 929, baseType: !196, offset: 384)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !316, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !316, file: !44, line: 931, baseType: !736, size: 64, offset: 448)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !316, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !316, file: !44, line: 933, baseType: !2672, size: 32, offset: 544)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !316, file: !44, line: 934, baseType: !1136, size: 192, offset: 576)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !316, file: !44, line: 935, baseType: !492, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !316, file: !44, line: 936, baseType: !3114, size: 192, offset: 832)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3115)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3114, file: !44, line: 886, baseType: !2925)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3114, file: !44, line: 887, baseType: !1433, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3114, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3114, file: !44, line: 889, baseType: !396, size: 32, offset: 96)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3114, file: !44, line: 889, baseType: !396, size: 32, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3114, file: !44, line: 890, baseType: !222, size: 32, offset: 160)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !316, file: !44, line: 937, baseType: !1509, size: 64, offset: 1024)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !316, file: !44, line: 938, baseType: !3124, size: 256, offset: 1088)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3124, file: !44, line: 897, baseType: !287, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3124, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3124, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3124, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3124, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3124, file: !44, line: 904, baseType: !492, size: 64, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !316, file: !44, line: 940, baseType: !382, size: 64, offset: 1344)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !316, file: !44, line: 945, baseType: !161, size: 64, offset: 1408)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !316, file: !44, line: 949, baseType: !182, size: 128, offset: 1472)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !316, file: !44, line: 950, baseType: !182, size: 128, offset: 1600)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !316, file: !44, line: 952, baseType: !698, size: 64, offset: 1728)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !316, file: !44, line: 953, baseType: !872, size: 32, offset: 1792)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !316, file: !44, line: 954, baseType: !872, size: 32, offset: 1824)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !306, file: !263, line: 174, baseType: !312, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !306, file: !263, line: 176, baseType: !3141, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!222, !315, !189, !305, !944}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !294, file: !263, line: 90, baseType: !289, size: 64, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !294, file: !263, line: 91, baseType: !3146, size: 64, offset: 256)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !253, file: !175, line: 143, baseType: !3148, size: 64, offset: 256)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!3151, !189}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3154)
!3154 = !{!3155, !3156, !3160, !3164, !3170, !3174}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3153, file: !61, line: 40, baseType: !60, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3153, file: !61, line: 41, baseType: !3157, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!451}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3153, file: !61, line: 42, baseType: !3161, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!161}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3153, file: !61, line: 43, baseType: !3165, size: 64, offset: 192)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!2089, !3168}
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3153, file: !61, line: 44, baseType: !3171, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!2089}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3153, file: !61, line: 45, baseType: !429, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !253, file: !175, line: 144, baseType: !3176, size: 64, offset: 320)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!2089, !189}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !253, file: !175, line: 145, baseType: !3180, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{null, !189, !3183, !3184}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !174, file: !175, line: 70, baseType: !3186, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !580, line: 123, size: 1024, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3317, !3318, !3319, !3320, !3321}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3187, file: !580, line: 124, baseType: !712, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3187, file: !580, line: 125, baseType: !712, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3187, file: !580, line: 135, baseType: !3186, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3187, file: !580, line: 136, baseType: !178, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3187, file: !580, line: 138, baseType: !725, size: 192, align: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3187, file: !580, line: 140, baseType: !2089, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3187, file: !580, line: 141, baseType: !7, size: 32, offset: 448)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !3187, file: !580, line: 142, baseType: !3197, size: 256, offset: 512)
!3197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3187, file: !580, line: 142, size: 256, elements: !3198)
!3198 = !{!3199, !3245, !3249}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3197, file: !580, line: 143, baseType: !3200, size: 192)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !580, line: 91, size: 192, elements: !3201)
!3201 = !{!3202, !3203, !3204}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3200, file: !580, line: 92, baseType: !287, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3200, file: !580, line: 94, baseType: !721, size: 64, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3200, file: !580, line: 100, baseType: !3205, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !580, line: 180, size: 704, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3217, !3218, !3219, !3243, !3244}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3206, file: !580, line: 182, baseType: !3186, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3206, file: !580, line: 183, baseType: !7, size: 32, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3206, file: !580, line: 186, baseType: !3211, size: 192, offset: 128)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3212, line: 19, size: 192, elements: !3213)
!3212 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3213 = !{!3214, !3215, !3216}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3211, file: !3212, line: 20, baseType: !703, size: 128)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3211, file: !3212, line: 21, baseType: !7, size: 32, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3211, file: !3212, line: 22, baseType: !7, size: 32, offset: 160)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3206, file: !580, line: 187, baseType: !378, size: 32, offset: 320)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3206, file: !580, line: 188, baseType: !378, size: 32, offset: 352)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3206, file: !580, line: 189, baseType: !3220, size: 64, offset: 384)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !580, line: 168, size: 320, elements: !3222)
!3222 = !{!3223, !3227, !3231, !3235, !3239}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3221, file: !580, line: 169, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!222, !675, !3205}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3221, file: !580, line: 171, baseType: !3228, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!222, !3186, !178, !279}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3221, file: !580, line: 173, baseType: !3232, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!222, !3186}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3221, file: !580, line: 174, baseType: !3236, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!222, !3186, !3186, !178}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3221, file: !580, line: 176, baseType: !3240, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!222, !675, !3186, !3205}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3206, file: !580, line: 192, baseType: !182, size: 128, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3206, file: !580, line: 194, baseType: !1443, size: 128, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3197, file: !580, line: 144, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !580, line: 103, size: 64, elements: !3247)
!3247 = !{!3248}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3246, file: !580, line: 104, baseType: !3186, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3197, file: !580, line: 145, baseType: !3250, size: 256)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !580, line: 107, size: 256, elements: !3251)
!3251 = !{!3252, !3312, !3315, !3316}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3250, file: !580, line: 108, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3255)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !580, line: 217, size: 768, elements: !3256)
!3256 = !{!3257, !3277, !3281, !3285, !3289, !3293, !3297, !3301, !3302, !3303, !3304, !3308}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3255, file: !580, line: 222, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!222, !3261}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !580, line: 197, size: 1088, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3262, file: !580, line: 199, baseType: !3186, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3262, file: !580, line: 200, baseType: !315, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3262, file: !580, line: 201, baseType: !675, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3262, file: !580, line: 202, baseType: !161, size: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3262, file: !580, line: 205, baseType: !1136, size: 192, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3262, file: !580, line: 206, baseType: !1136, size: 192, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3262, file: !580, line: 207, baseType: !222, size: 32, offset: 640)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3262, file: !580, line: 208, baseType: !182, size: 128, offset: 704)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3262, file: !580, line: 209, baseType: !238, size: 64, offset: 832)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3262, file: !580, line: 211, baseType: !284, size: 64, offset: 896)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3262, file: !580, line: 212, baseType: !451, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3262, file: !580, line: 213, baseType: !451, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3262, file: !580, line: 214, baseType: !972, size: 64, offset: 1024)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3255, file: !580, line: 223, baseType: !3278, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3261}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3255, file: !580, line: 236, baseType: !3282, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!222, !675, !161}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3255, file: !580, line: 238, baseType: !3286, size: 64, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!161, !675, !2838}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3255, file: !580, line: 239, baseType: !3290, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!161, !675, !161, !2838}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3255, file: !580, line: 240, baseType: !3294, size: 64, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{null, !675, !161}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3255, file: !580, line: 242, baseType: !3298, size: 64, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!269, !3261, !238, !284, !492}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3255, file: !580, line: 252, baseType: !284, size: 64, offset: 448)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3255, file: !580, line: 259, baseType: !451, size: 8, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3255, file: !580, line: 260, baseType: !3298, size: 64, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3255, file: !580, line: 263, baseType: !3305, size: 64, offset: 640)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!2867, !3261, !2869}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3255, file: !580, line: 266, baseType: !3309, size: 64, offset: 704)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!222, !3261, !944}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3250, file: !580, line: 109, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !580, line: 31, flags: DIFlagFwdDecl)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3250, file: !580, line: 110, baseType: !492, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3250, file: !580, line: 111, baseType: !3186, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3187, file: !580, line: 148, baseType: !161, size: 64, offset: 768)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3187, file: !580, line: 154, baseType: !382, size: 64, offset: 832)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3187, file: !580, line: 156, baseType: !160, size: 16, offset: 896)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3187, file: !580, line: 157, baseType: !279, size: 16, offset: 912)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3187, file: !580, line: 158, baseType: !3322, size: 64, offset: 960)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !580, line: 32, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !174, file: !175, line: 71, baseType: !3325, size: 32, offset: 448)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3326, line: 19, size: 32, elements: !3327)
!3326 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3327 = !{!3328}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3325, file: !3326, line: 20, baseType: !1193, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !174, file: !175, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !174, file: !175, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !174, file: !175, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !174, file: !175, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !174, file: !175, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !73, line: 463, baseType: !3335, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !171, file: !73, line: 465, baseType: !3337, size: 64, offset: 576)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !171, file: !73, line: 467, baseType: !178, size: 64, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !171, file: !73, line: 468, baseType: !3341, size: 64, offset: 704)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3343)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3351, !3356, !3360}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3343, file: !73, line: 88, baseType: !178, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3343, file: !73, line: 89, baseType: !291, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3343, file: !73, line: 90, baseType: !3348, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!222, !3335, !233}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3343, file: !73, line: 91, baseType: !3352, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!238, !3335, !3355, !3183, !3184}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3343, file: !73, line: 93, baseType: !3357, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !3335}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3343, file: !73, line: 95, baseType: !3361, size: 64, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3364)
!3364 = !{!3365, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3363, file: !80, line: 279, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!222, !3335}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3363, file: !80, line: 280, baseType: !3357, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3363, file: !80, line: 281, baseType: !3366, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3363, file: !80, line: 282, baseType: !3366, size: 64, offset: 192)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3363, file: !80, line: 283, baseType: !3366, size: 64, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3363, file: !80, line: 284, baseType: !3366, size: 64, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3363, file: !80, line: 285, baseType: !3366, size: 64, offset: 384)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3363, file: !80, line: 286, baseType: !3366, size: 64, offset: 448)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3363, file: !80, line: 287, baseType: !3366, size: 64, offset: 512)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3363, file: !80, line: 288, baseType: !3366, size: 64, offset: 576)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3363, file: !80, line: 289, baseType: !3366, size: 64, offset: 640)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3363, file: !80, line: 290, baseType: !3366, size: 64, offset: 704)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3363, file: !80, line: 291, baseType: !3366, size: 64, offset: 768)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3363, file: !80, line: 292, baseType: !3366, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3363, file: !80, line: 293, baseType: !3366, size: 64, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3363, file: !80, line: 294, baseType: !3366, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3363, file: !80, line: 295, baseType: !3366, size: 64, offset: 1024)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3363, file: !80, line: 296, baseType: !3366, size: 64, offset: 1088)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3363, file: !80, line: 297, baseType: !3366, size: 64, offset: 1152)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3363, file: !80, line: 298, baseType: !3366, size: 64, offset: 1216)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3363, file: !80, line: 299, baseType: !3366, size: 64, offset: 1280)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3363, file: !80, line: 300, baseType: !3366, size: 64, offset: 1344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3363, file: !80, line: 301, baseType: !3366, size: 64, offset: 1408)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !171, file: !73, line: 470, baseType: !3392, size: 64, offset: 768)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3394, line: 82, size: 1408, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3477, !3480, !3481}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3393, file: !3394, line: 83, baseType: !178, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3393, file: !3394, line: 84, baseType: !178, size: 64, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3393, file: !3394, line: 85, baseType: !3335, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3393, file: !3394, line: 86, baseType: !291, size: 64, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3393, file: !3394, line: 87, baseType: !291, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3393, file: !3394, line: 88, baseType: !291, size: 64, offset: 320)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3393, file: !3394, line: 90, baseType: !3403, size: 64, offset: 384)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!222, !3335, !3406}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3428, !3441, !3442, !3443, !3444, !3445, !3453, !3454, !3455, !3456, !3457, !3458}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3407, file: !67, line: 96, baseType: !178, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3407, file: !67, line: 97, baseType: !3392, size: 64, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3407, file: !67, line: 99, baseType: !594, size: 64, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3407, file: !67, line: 100, baseType: !178, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3407, file: !67, line: 102, baseType: !451, size: 8, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3407, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3407, file: !67, line: 105, baseType: !3416, size: 64, offset: 320)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3419, line: 262, size: 1600, elements: !3420)
!3419 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3420 = !{!3421, !3422, !3423, !3427}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !3419, line: 263, baseType: !2662, size: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3418, file: !3419, line: 264, baseType: !2662, size: 256, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3418, file: !3419, line: 265, baseType: !3424, size: 1024, offset: 512)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !3425)
!3425 = !{!3426}
!3426 = !DISubrange(count: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3418, file: !3419, line: 266, baseType: !2089, size: 64, offset: 1536)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3407, file: !67, line: 106, baseType: !3429, size: 64, offset: 384)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3431)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3419, line: 210, size: 256, elements: !3432)
!3432 = !{!3433, !3437, !3439, !3440}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3431, file: !3419, line: 211, baseType: !3434, size: 72)
!3434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 72, elements: !3435)
!3435 = !{!3436}
!3436 = !DISubrange(count: 9)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3431, file: !3419, line: 212, baseType: !3438, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3419, line: 14, baseType: !287)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3431, file: !3419, line: 213, baseType: !379, size: 32, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3431, file: !3419, line: 214, baseType: !379, size: 32, offset: 224)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3407, file: !67, line: 108, baseType: !3366, size: 64, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3407, file: !67, line: 109, baseType: !3357, size: 64, offset: 512)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3407, file: !67, line: 110, baseType: !3366, size: 64, offset: 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3407, file: !67, line: 111, baseType: !3357, size: 64, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3407, file: !67, line: 112, baseType: !3446, size: 64, offset: 704)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!222, !3335, !3449}
!3449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3450)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3451)
!3451 = !{!3452}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3450, file: !80, line: 51, baseType: !222, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3407, file: !67, line: 113, baseType: !3366, size: 64, offset: 768)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3407, file: !67, line: 114, baseType: !291, size: 64, offset: 832)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3407, file: !67, line: 115, baseType: !291, size: 64, offset: 896)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3407, file: !67, line: 117, baseType: !3361, size: 64, offset: 960)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3407, file: !67, line: 118, baseType: !3357, size: 64, offset: 1024)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3407, file: !67, line: 120, baseType: !3459, size: 64, offset: 1088)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3393, file: !3394, line: 91, baseType: !3348, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3393, file: !3394, line: 92, baseType: !3366, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3393, file: !3394, line: 93, baseType: !3357, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3393, file: !3394, line: 94, baseType: !3366, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3393, file: !3394, line: 95, baseType: !3357, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3393, file: !3394, line: 97, baseType: !3366, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3393, file: !3394, line: 98, baseType: !3366, size: 64, offset: 832)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3393, file: !3394, line: 100, baseType: !3446, size: 64, offset: 896)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3393, file: !3394, line: 101, baseType: !3366, size: 64, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3393, file: !3394, line: 103, baseType: !3366, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3393, file: !3394, line: 105, baseType: !3366, size: 64, offset: 1088)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3393, file: !3394, line: 107, baseType: !3361, size: 64, offset: 1152)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3393, file: !3394, line: 109, baseType: !3474, size: 64, offset: 1216)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3394, line: 109, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3393, file: !3394, line: 111, baseType: !3478, size: 64, offset: 1280)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3394, line: 111, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3393, file: !3394, line: 112, baseType: !609, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3393, file: !3394, line: 114, baseType: !451, size: 8, offset: 1344)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !171, file: !73, line: 471, baseType: !3406, size: 64, offset: 832)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !171, file: !73, line: 473, baseType: !161, size: 64, offset: 896)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !171, file: !73, line: 475, baseType: !161, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !171, file: !73, line: 480, baseType: !1136, size: 192, offset: 1024)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !171, file: !73, line: 484, baseType: !3487, size: 576, offset: 1216)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3487, file: !73, line: 362, baseType: !182, size: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3487, file: !73, line: 363, baseType: !182, size: 128, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3487, file: !73, line: 364, baseType: !182, size: 128, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3487, file: !73, line: 365, baseType: !182, size: 128, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3487, file: !73, line: 366, baseType: !451, size: 8, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3487, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !171, file: !73, line: 485, baseType: !3496, size: 2304, offset: 1792)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3593, !3597}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3496, file: !80, line: 566, baseType: !3449, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3496, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3496, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3496, file: !80, line: 569, baseType: !451, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3496, file: !80, line: 570, baseType: !451, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3496, file: !80, line: 571, baseType: !451, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3496, file: !80, line: 572, baseType: !451, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3496, file: !80, line: 573, baseType: !451, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3496, file: !80, line: 574, baseType: !451, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3496, file: !80, line: 575, baseType: !451, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3496, file: !80, line: 576, baseType: !451, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3496, file: !80, line: 577, baseType: !378, size: 32, offset: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3496, file: !80, line: 578, baseType: !196, offset: 96)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3496, file: !80, line: 580, baseType: !182, size: 128, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3496, file: !80, line: 581, baseType: !1464, size: 192, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3496, file: !80, line: 582, baseType: !3514, size: 64, offset: 448)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3516, line: 43, size: 1472, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3525, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3515, file: !3516, line: 44, baseType: !178, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3515, file: !3516, line: 45, baseType: !222, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3515, file: !3516, line: 46, baseType: !182, size: 128, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3515, file: !3516, line: 47, baseType: !196, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3515, file: !3516, line: 48, baseType: !3523, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3515, file: !3516, line: 49, baseType: !3526, size: 320, offset: 320)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3527, line: 11, size: 320, elements: !3528)
!3527 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3528 = !{!3529, !3530, !3531, !3536}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3526, file: !3527, line: 16, baseType: !603, size: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3526, file: !3527, line: 17, baseType: !287, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3526, file: !3527, line: 18, baseType: !3532, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !3535}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3526, file: !3527, line: 19, baseType: !378, size: 32, offset: 256)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3515, file: !3516, line: 50, baseType: !287, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3515, file: !3516, line: 51, baseType: !1262, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3515, file: !3516, line: 52, baseType: !1262, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3515, file: !3516, line: 53, baseType: !1262, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3515, file: !3516, line: 54, baseType: !1262, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3515, file: !3516, line: 55, baseType: !1262, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3515, file: !3516, line: 56, baseType: !287, size: 64, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3515, file: !3516, line: 57, baseType: !287, size: 64, offset: 1088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3515, file: !3516, line: 58, baseType: !287, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3515, file: !3516, line: 59, baseType: !287, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3515, file: !3516, line: 60, baseType: !287, size: 64, offset: 1280)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3515, file: !3516, line: 61, baseType: !3335, size: 64, offset: 1344)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3515, file: !3516, line: 62, baseType: !451, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3515, file: !3516, line: 63, baseType: !451, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3496, file: !80, line: 583, baseType: !451, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3496, file: !80, line: 584, baseType: !451, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3496, file: !80, line: 585, baseType: !451, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3496, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3496, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3496, file: !80, line: 592, baseType: !1254, size: 512, offset: 576)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3496, file: !80, line: 593, baseType: !382, size: 64, offset: 1088)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3496, file: !80, line: 594, baseType: !1920, size: 256, offset: 1152)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3496, file: !80, line: 595, baseType: !1443, size: 128, offset: 1408)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3496, file: !80, line: 596, baseType: !3523, size: 64, offset: 1536)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3496, file: !80, line: 597, baseType: !712, size: 32, offset: 1600)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3496, file: !80, line: 598, baseType: !712, size: 32, offset: 1632)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3496, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3496, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3496, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3496, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3496, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3496, file: !80, line: 604, baseType: !451, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3496, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3496, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3496, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3496, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3496, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3496, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3496, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3496, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3496, file: !80, line: 613, baseType: !222, size: 32, offset: 1792)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3496, file: !80, line: 614, baseType: !222, size: 32, offset: 1824)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3496, file: !80, line: 615, baseType: !382, size: 64, offset: 1856)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3496, file: !80, line: 616, baseType: !382, size: 64, offset: 1920)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3496, file: !80, line: 617, baseType: !382, size: 64, offset: 1984)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3496, file: !80, line: 618, baseType: !382, size: 64, offset: 2048)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3496, file: !80, line: 620, baseType: !3584, size: 64, offset: 2112)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3585, file: !80, line: 537, baseType: !196)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3585, file: !80, line: 538, baseType: !7, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3585, file: !80, line: 540, baseType: !182, size: 128, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3585, file: !80, line: 543, baseType: !3591, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3496, file: !80, line: 621, baseType: !3594, size: 64, offset: 2176)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3335, !1406}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3496, file: !80, line: 622, baseType: !3598, size: 64, offset: 2240)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !171, file: !73, line: 486, baseType: !3601, size: 64, offset: 4096)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3610, !3611, !3612}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3602, file: !80, line: 643, baseType: !3363, size: 1472)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3602, file: !80, line: 644, baseType: !3366, size: 64, offset: 1472)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3602, file: !80, line: 645, baseType: !3607, size: 64, offset: 1536)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !3335, !451}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3602, file: !80, line: 646, baseType: !3366, size: 64, offset: 1600)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3602, file: !80, line: 647, baseType: !3357, size: 64, offset: 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3602, file: !80, line: 648, baseType: !3357, size: 64, offset: 1728)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !171, file: !73, line: 493, baseType: !3614, size: 64, offset: 4160)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !171, file: !73, line: 499, baseType: !182, size: 128, offset: 4224)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !171, file: !73, line: 502, baseType: !3618, size: 64, offset: 4352)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !171, file: !73, line: 504, baseType: !3622, size: 64, offset: 4416)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !171, file: !73, line: 505, baseType: !382, size: 64, offset: 4480)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !171, file: !73, line: 510, baseType: !382, size: 64, offset: 4544)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !171, file: !73, line: 511, baseType: !3626, size: 64, offset: 4608)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3628)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !171, file: !73, line: 513, baseType: !3630, size: 64, offset: 4672)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3631, file: !73, line: 293, baseType: !7, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3631, file: !73, line: 294, baseType: !287, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !171, file: !73, line: 515, baseType: !182, size: 128, offset: 4736)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !171, file: !73, line: 526, baseType: !3637, offset: 4864)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3638, line: 5, elements: !210)
!3638 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !171, file: !73, line: 528, baseType: !3640, size: 64, offset: 4864)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3642, line: 14, flags: DIFlagFwdDecl)
!3642 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !171, file: !73, line: 529, baseType: !3644, size: 64, offset: 4928)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3646, line: 17, size: 192, elements: !3647)
!3646 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3647 = !{!3648, !3649, !3732}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3645, file: !3646, line: 18, baseType: !3644, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3645, file: !3646, line: 19, baseType: !3650, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3646, line: 110, size: 1152, elements: !3653)
!3653 = !{!3654, !3658, !3662, !3668, !3674, !3678, !3682, !3687, !3691, !3692, !3696, !3700, !3704, !3715, !3716, !3717, !3718, !3728}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3652, file: !3646, line: 111, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!3644, !3644}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3652, file: !3646, line: 112, baseType: !3659, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !3644}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3652, file: !3646, line: 113, baseType: !3663, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!451, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3652, file: !3646, line: 114, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!2089, !3666, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3652, file: !3646, line: 116, baseType: !3675, size: 64, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!451, !3666, !178}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3652, file: !3646, line: 118, baseType: !3679, size: 64, offset: 320)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!222, !3666, !178, !7, !161, !284}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3652, file: !3646, line: 123, baseType: !3683, size: 64, offset: 384)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!222, !3666, !178, !3686, !284}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3652, file: !3646, line: 126, baseType: !3688, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!178, !3666}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3652, file: !3646, line: 127, baseType: !3688, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3652, file: !3646, line: 128, baseType: !3693, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!3644, !3666}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3652, file: !3646, line: 130, baseType: !3697, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!3644, !3666, !3644}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3652, file: !3646, line: 133, baseType: !3701, size: 64, offset: 704)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!3644, !3666, !178}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3652, file: !3646, line: 135, baseType: !3705, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!222, !3666, !178, !178, !7, !7, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3646, line: 43, size: 640, elements: !3710)
!3710 = !{!3711, !3712, !3713}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3709, file: !3646, line: 44, baseType: !3644, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3709, file: !3646, line: 45, baseType: !7, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3709, file: !3646, line: 46, baseType: !3714, size: 512, offset: 128)
!3714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 512, elements: !1292)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3652, file: !3646, line: 140, baseType: !3697, size: 64, offset: 832)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3652, file: !3646, line: 143, baseType: !3693, size: 64, offset: 896)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3652, file: !3646, line: 145, baseType: !3655, size: 64, offset: 960)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3652, file: !3646, line: 146, baseType: !3719, size: 64, offset: 1024)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!222, !3666, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3646, line: 29, size: 128, elements: !3724)
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3723, file: !3646, line: 30, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3723, file: !3646, line: 31, baseType: !7, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3723, file: !3646, line: 32, baseType: !3666, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3652, file: !3646, line: 148, baseType: !3729, size: 64, offset: 1088)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!222, !3666, !3335}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3645, file: !3646, line: 20, baseType: !3335, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !171, file: !73, line: 534, baseType: !474, size: 32, offset: 4992)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !171, file: !73, line: 535, baseType: !378, size: 32, offset: 5024)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !171, file: !73, line: 537, baseType: !196, offset: 5056)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !171, file: !73, line: 538, baseType: !182, size: 128, offset: 5056)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !171, file: !73, line: 540, baseType: !3738, size: 64, offset: 5184)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3740, line: 54, size: 960, elements: !3741)
!3740 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748, !3752, !3756, !3757, !3758, !3759, !3763, !3767, !3768}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3739, file: !3740, line: 55, baseType: !178, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3739, file: !3740, line: 56, baseType: !594, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3739, file: !3740, line: 58, baseType: !291, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3739, file: !3740, line: 59, baseType: !291, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3739, file: !3740, line: 60, baseType: !189, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3739, file: !3740, line: 62, baseType: !3348, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3739, file: !3740, line: 63, baseType: !3749, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!238, !3335, !3355}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3739, file: !3740, line: 65, baseType: !3753, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3738}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3739, file: !3740, line: 66, baseType: !3357, size: 64, offset: 512)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3739, file: !3740, line: 68, baseType: !3366, size: 64, offset: 576)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3739, file: !3740, line: 70, baseType: !3151, size: 64, offset: 640)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3739, file: !3740, line: 71, baseType: !3760, size: 64, offset: 704)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!2089, !3335}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3739, file: !3740, line: 73, baseType: !3764, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3335, !3183, !3184}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3739, file: !3740, line: 75, baseType: !3361, size: 64, offset: 832)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3739, file: !3740, line: 77, baseType: !3478, size: 64, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !171, file: !73, line: 541, baseType: !291, size: 64, offset: 5248)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !171, file: !73, line: 543, baseType: !3357, size: 64, offset: 5312)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !171, file: !73, line: 544, baseType: !3772, size: 64, offset: 5376)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !171, file: !73, line: 545, baseType: !3775, size: 64, offset: 5440)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !171, file: !73, line: 547, baseType: !451, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !171, file: !73, line: 548, baseType: !451, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !171, file: !73, line: 549, baseType: !451, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !171, file: !73, line: 550, baseType: !451, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !167, file: !168, line: 46, baseType: !222, size: 32, offset: 5568)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !167, file: !168, line: 47, baseType: !3783, size: 64, offset: 5632)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3785)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_hd_driver", file: !168, line: 18, size: 960, elements: !3786)
!3786 = !{!3787, !3788, !3792, !3796, !3800, !3804, !3805, !3806, !3810, !3814, !3815, !3863, !3867, !3868, !3869}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv_size", scope: !3785, file: !168, line: 19, baseType: !284, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "cport_allocate", scope: !3785, file: !168, line: 21, baseType: !3789, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!222, !166, !222, !287}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "cport_release", scope: !3785, file: !168, line: 23, baseType: !3793, size: 64, offset: 128)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !166, !156}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "cport_enable", scope: !3785, file: !168, line: 24, baseType: !3797, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!222, !166, !156, !287}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cport_disable", scope: !3785, file: !168, line: 26, baseType: !3801, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!222, !166, !156}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "cport_connected", scope: !3785, file: !168, line: 27, baseType: !3801, size: 64, offset: 320)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cport_flush", scope: !3785, file: !168, line: 28, baseType: !3801, size: 64, offset: 384)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "cport_shutdown", scope: !3785, file: !168, line: 29, baseType: !3807, size: 64, offset: 448)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!222, !166, !156, !1314, !7}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cport_quiesce", scope: !3785, file: !168, line: 31, baseType: !3811, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!222, !166, !156, !284, !7}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "cport_clear", scope: !3785, file: !168, line: 33, baseType: !3801, size: 64, offset: 576)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "message_send", scope: !3785, file: !168, line: 35, baseType: !3816, size: 64, offset: 640)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!222, !166, !156, !3819, !708}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_message", file: !3821, line: 52, size: 384, elements: !3822)
!3821 = !DIFile(filename: "./include/linux/greybus/operation.h", directory: "/home/lizy2001/genbc/linux")
!3822 = !{!3823, !3847, !3859, !3860, !3861, !3862}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "operation", scope: !3820, file: !3821, line: 53, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation", file: !3821, line: 92, size: 1472, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3825, file: !3821, line: 93, baseType: !162, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3825, file: !3821, line: 94, baseType: !3819, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3825, file: !3821, line: 95, baseType: !3819, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3825, file: !3821, line: 97, baseType: !287, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3825, file: !3821, line: 98, baseType: !1314, size: 8, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3825, file: !3821, line: 99, baseType: !156, size: 16, offset: 272)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "errno", scope: !3825, file: !3821, line: 100, baseType: !222, size: 32, offset: 288)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3825, file: !3821, line: 102, baseType: !1920, size: 256, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3825, file: !3821, line: 103, baseType: !3836, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_operation_callback", file: !3821, line: 91, baseType: !3837)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{null, !3824}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3825, file: !3821, line: 104, baseType: !1464, size: 192, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3825, file: !3821, line: 105, baseType: !3526, size: 320, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3825, file: !3821, line: 107, baseType: !3325, size: 32, offset: 1152)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3825, file: !3821, line: 108, baseType: !712, size: 32, offset: 1184)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3825, file: !3821, line: 110, baseType: !222, size: 32, offset: 1216)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3825, file: !3821, line: 111, baseType: !182, size: 128, offset: 1280)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3825, file: !3821, line: 113, baseType: !161, size: 64, offset: 1408)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3820, file: !3821, line: 54, baseType: !3848, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation_msg_hdr", file: !3850, line: 46, size: 64, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/greybus/greybus_protocols.h", directory: "/home/lizy2001/genbc/linux")
!3851 = !{!3852, !3854, !3855, !3856, !3857}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3849, file: !3850, line: 47, baseType: !3853, size: 16)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2868, line: 29, baseType: !158)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !3849, file: !3850, line: 48, baseType: !3853, size: 16, offset: 16)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3849, file: !3850, line: 49, baseType: !1315, size: 8, offset: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3849, file: !3850, line: 50, baseType: !1315, size: 8, offset: 40)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3849, file: !3850, line: 51, baseType: !3858, size: 16, offset: 48)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 16, elements: !1531)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3820, file: !3821, line: 56, baseType: !161, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "payload_size", scope: !3820, file: !3821, line: 57, baseType: !284, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3820, file: !3821, line: 59, baseType: !161, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3820, file: !3821, line: 61, baseType: !161, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "message_cancel", scope: !3785, file: !168, line: 37, baseType: !3864, size: 64, offset: 704)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !3819}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_enable", scope: !3785, file: !168, line: 38, baseType: !3801, size: 64, offset: 768)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_disable", scope: !3785, file: !168, line: 39, baseType: !3801, size: 64, offset: 832)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !3785, file: !168, line: 40, baseType: !3870, size: 64, offset: 896)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!222, !166, !161, !156, !1314, !451}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !167, file: !168, line: 49, baseType: !182, size: 128, offset: 5696)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !167, file: !168, line: 50, baseType: !182, size: 128, offset: 5824)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id_map", scope: !167, file: !168, line: 51, baseType: !3876, size: 128, offset: 5952)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3212, line: 244, size: 128, elements: !3877)
!3877 = !{!3878}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3876, file: !3212, line: 245, baseType: !703, size: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !167, file: !168, line: 54, baseType: !284, size: 64, offset: 6080)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size_max", scope: !167, file: !168, line: 57, baseType: !284, size: 64, offset: 6144)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !167, file: !168, line: 59, baseType: !3882, size: 64, offset: 6208)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc", file: !109, line: 39, size: 6272, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3898, !3899, !3900}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3883, file: !109, line: 40, baseType: !171, size: 5568)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3883, file: !109, line: 42, baseType: !166, size: 64, offset: 5568)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3883, file: !109, line: 43, baseType: !162, size: 64, offset: 5632)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3883, file: !109, line: 44, baseType: !108, size: 32, offset: 5696)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_map", scope: !3883, file: !109, line: 45, baseType: !3876, size: 128, offset: 5760)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3883, file: !109, line: 46, baseType: !2755, size: 64, offset: 5888)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "endo_id", scope: !3883, file: !109, line: 48, baseType: !156, size: 16, offset: 5952)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ap_intf_id", scope: !3883, file: !109, line: 49, baseType: !1314, size: 8, offset: 5968)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3883, file: !109, line: 51, baseType: !1314, size: 8, offset: 5976)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3883, file: !109, line: 52, baseType: !1314, size: 8, offset: 5984)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog", scope: !3883, file: !109, line: 54, baseType: !3896, size: 64, offset: 6016)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc_watchdog", file: !109, line: 32, flags: DIFlagFwdDecl)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3883, file: !109, line: 55, baseType: !114, size: 32, offset: 6080)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dentry", scope: !3883, file: !109, line: 57, baseType: !345, size: 64, offset: 6144)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pwrmon_rails", scope: !3883, file: !109, line: 58, baseType: !3901, size: 64, offset: 6208)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_debugfs_pwrmon_rail", file: !109, line: 34, size: 128, elements: !3903)
!3903 = !{!3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3902, file: !109, line: 35, baseType: !1314, size: 8)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3902, file: !109, line: 36, baseType: !3882, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv", scope: !167, file: !168, line: 61, baseType: !3907, align: 64, offset: 6272)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, elements: !1685)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !163, file: !102, line: 40, baseType: !3909, size: 64, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_interface", file: !94, line: 31, size: 7168, elements: !3911)
!3911 = !{!3912, !3913, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3910, file: !94, line: 32, baseType: !171, size: 5568)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !3910, file: !94, line: 33, baseType: !3914, size: 64, offset: 5568)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control", file: !3916, line: 15, size: 5888, elements: !3917)
!3916 = !DIFile(filename: "./include/linux/greybus/control.h", directory: "/home/lizy2001/genbc/linux")
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3915, file: !3916, line: 16, baseType: !171, size: 5568)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3915, file: !3916, line: 17, baseType: !3909, size: 64, offset: 5568)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3915, file: !3916, line: 19, baseType: !162, size: 64, offset: 5632)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3915, file: !3916, line: 21, baseType: !1314, size: 8, offset: 5696)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3915, file: !3916, line: 22, baseType: !1314, size: 8, offset: 5704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_activate", scope: !3915, file: !3916, line: 24, baseType: !451, size: 8, offset: 5712)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_version", scope: !3915, file: !3916, line: 25, baseType: !451, size: 8, offset: 5720)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_string", scope: !3915, file: !3916, line: 27, baseType: !238, size: 64, offset: 5760)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "product_string", scope: !3915, file: !3916, line: 28, baseType: !238, size: 64, offset: 5824)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bundles", scope: !3910, file: !94, line: 35, baseType: !182, size: 128, offset: 5632)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "module_node", scope: !3910, file: !94, line: 36, baseType: !182, size: 128, offset: 5760)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "manifest_descs", scope: !3910, file: !94, line: 37, baseType: !182, size: 128, offset: 5888)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "interface_id", scope: !3910, file: !94, line: 38, baseType: !1314, size: 8, offset: 6016)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !3910, file: !94, line: 39, baseType: !1314, size: 8, offset: 6024)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !3910, file: !94, line: 40, baseType: !1314, size: 8, offset: 6032)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3910, file: !94, line: 42, baseType: !93, size: 32, offset: 6048)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_manufacturer_id", scope: !3910, file: !94, line: 44, baseType: !378, size: 32, offset: 6080)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_product_id", scope: !3910, file: !94, line: 45, baseType: !378, size: 32, offset: 6112)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !3910, file: !94, line: 46, baseType: !378, size: 32, offset: 6144)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "product_id", scope: !3910, file: !94, line: 47, baseType: !378, size: 32, offset: 6176)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !3910, file: !94, line: 48, baseType: !382, size: 64, offset: 6208)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3910, file: !94, line: 50, baseType: !166, size: 64, offset: 6272)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3910, file: !94, line: 51, baseType: !3941, size: 64, offset: 6336)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_module", file: !3943, line: 15, size: 5952, elements: !3944)
!3943 = !DIFile(filename: "./include/linux/greybus/module.h", directory: "/home/lizy2001/genbc/linux")
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950, !3951}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3942, file: !3943, line: 16, baseType: !171, size: 5568)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3942, file: !3943, line: 17, baseType: !166, size: 64, offset: 5568)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "hd_node", scope: !3942, file: !3943, line: 19, baseType: !182, size: 128, offset: 5632)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "module_id", scope: !3942, file: !3943, line: 21, baseType: !1314, size: 8, offset: 5760)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "num_interfaces", scope: !3942, file: !3943, line: 22, baseType: !284, size: 64, offset: 5824)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3942, file: !3943, line: 24, baseType: !451, size: 8, offset: 5888)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !3942, file: !3943, line: 26, baseType: !3952, offset: 5952)
!3952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3909, elements: !1685)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3910, file: !94, line: 53, baseType: !287, size: 64, offset: 6400)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3910, file: !94, line: 55, baseType: !1136, size: 192, offset: 6464)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3910, file: !94, line: 57, baseType: !451, size: 8, offset: 6656)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ejected", scope: !3910, file: !94, line: 59, baseType: !451, size: 8, offset: 6664)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3910, file: !94, line: 60, baseType: !451, size: 8, offset: 6672)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3910, file: !94, line: 61, baseType: !451, size: 8, offset: 6680)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3910, file: !94, line: 62, baseType: !451, size: 8, offset: 6688)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3910, file: !94, line: 63, baseType: !451, size: 8, offset: 6696)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dme_read", scope: !3910, file: !94, line: 64, baseType: !451, size: 8, offset: 6704)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_work", scope: !3910, file: !94, line: 66, baseType: !1920, size: 256, offset: 6720)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_completion", scope: !3910, file: !94, line: 67, baseType: !1464, size: 192, offset: 6976)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !163, file: !102, line: 41, baseType: !3965, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_bundle", file: !3967, line: 20, size: 6144, elements: !3968)
!3967 = !DIFile(filename: "./include/linux/greybus/bundle.h", directory: "/home/lizy2001/genbc/linux")
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3984, !3985, !3987}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3966, file: !3967, line: 21, baseType: !171, size: 5568)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3966, file: !3967, line: 22, baseType: !3909, size: 64, offset: 5568)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3966, file: !3967, line: 24, baseType: !1314, size: 8, offset: 5632)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3966, file: !3967, line: 25, baseType: !1314, size: 8, offset: 5640)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "class_major", scope: !3966, file: !3967, line: 26, baseType: !1314, size: 8, offset: 5648)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "class_minor", scope: !3966, file: !3967, line: 27, baseType: !1314, size: 8, offset: 5656)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !3966, file: !3967, line: 29, baseType: !284, size: 64, offset: 5696)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "cport_desc", scope: !3966, file: !3967, line: 30, baseType: !3977, size: 64, offset: 5760)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_cport", file: !3979, line: 148, size: 32, elements: !3980)
!3979 = !DIFile(filename: "./include/linux/greybus/greybus_manifest.h", directory: "/home/lizy2001/genbc/linux")
!3980 = !{!3981, !3982, !3983}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3978, file: !3979, line: 149, baseType: !3853, size: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3978, file: !3979, line: 150, baseType: !1315, size: 8, offset: 16)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_id", scope: !3978, file: !3979, line: 151, baseType: !1315, size: 8, offset: 24)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !3966, file: !3967, line: 32, baseType: !182, size: 128, offset: 5824)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3966, file: !3967, line: 33, baseType: !3986, size: 64, offset: 5952)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3966, file: !3967, line: 35, baseType: !182, size: 128, offset: 6016)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !163, file: !102, line: 42, baseType: !3325, size: 32, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "hd_cport_id", scope: !163, file: !102, line: 43, baseType: !156, size: 16, offset: 224)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cport_id", scope: !163, file: !102, line: 44, baseType: !156, size: 16, offset: 240)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "hd_links", scope: !163, file: !102, line: 46, baseType: !182, size: 128, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "bundle_links", scope: !163, file: !102, line: 47, baseType: !182, size: 128, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !163, file: !102, line: 49, baseType: !3994, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_request_handler_t", file: !102, line: 36, baseType: !3995)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!222, !3824}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !102, line: 50, baseType: !287, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !163, file: !102, line: 52, baseType: !1136, size: 192, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !163, file: !102, line: 53, baseType: !196, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !163, file: !102, line: 54, baseType: !101, size: 32, offset: 832)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "operations", scope: !163, file: !102, line: 55, baseType: !182, size: 128, offset: 896)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !102, line: 57, baseType: !1696, size: 128, offset: 1024)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !163, file: !102, line: 58, baseType: !2755, size: 64, offset: 1152)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "op_cycle", scope: !163, file: !102, line: 60, baseType: !712, size: 32, offset: 1216)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !163, file: !102, line: 62, baseType: !161, size: 64, offset: 1280)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !163, file: !102, line: 64, baseType: !451, size: 8, offset: 1344)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !222)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !186)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4011)
!4014 = !{!4015, !0, !4020}
!4015 = !DIGlobalVariableExpression(var: !4016, expr: !DIExpression())
!4016 = distinct !DIGlobalVariable(name: "__key", scope: !4017, file: !3, line: 186, type: !609, isLocal: true, isDefinition: true)
!4017 = distinct !DISubprogram(name: "_gb_connection_create", scope: !3, file: !3, line: 144, type: !4018, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!162, !166, !222, !3909, !3965, !222, !3994, !287}
!4020 = !DIGlobalVariableExpression(var: !4021, expr: !DIExpression())
!4021 = distinct !DIGlobalVariable(name: "gb_connections_lock", scope: !2, file: !3, line: 18, type: !196, isLocal: true, isDefinition: true)
!4022 = !{!"rsp"}
!4023 = !{i32 7, !"Dwarf Version", i32 4}
!4024 = !{i32 2, !"Debug Info Version", i32 3}
!4025 = !{i32 1, !"wchar_size", i32 2}
!4026 = !{i32 1, !"Code Model", i32 2}
!4027 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4028 = distinct !DISubprogram(name: "greybus_data_rcvd", scope: !3, file: !3, line: 76, type: !4029, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !166, !156, !3986, !284}
!4031 = !DILocalVariable(name: "hd", arg: 1, scope: !4028, file: !3, line: 76, type: !166)
!4032 = !DILocation(line: 76, column: 47, scope: !4028)
!4033 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4028, file: !3, line: 76, type: !156)
!4034 = !DILocation(line: 76, column: 55, scope: !4028)
!4035 = !DILocalVariable(name: "data", arg: 3, scope: !4028, file: !3, line: 77, type: !3986)
!4036 = !DILocation(line: 77, column: 14, scope: !4028)
!4037 = !DILocalVariable(name: "length", arg: 4, scope: !4028, file: !3, line: 77, type: !284)
!4038 = !DILocation(line: 77, column: 27, scope: !4028)
!4039 = !DILocalVariable(name: "connection", scope: !4028, file: !3, line: 79, type: !162)
!4040 = !DILocation(line: 79, column: 24, scope: !4028)
!4041 = !DILocation(line: 81, column: 17, scope: !4028)
!4042 = !DILocation(line: 81, column: 2, scope: !4028)
!4043 = !DILocation(line: 83, column: 37, scope: !4028)
!4044 = !DILocation(line: 83, column: 41, scope: !4028)
!4045 = !DILocation(line: 83, column: 15, scope: !4028)
!4046 = !DILocation(line: 83, column: 13, scope: !4028)
!4047 = !DILocation(line: 84, column: 7, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 84, column: 6)
!4049 = !DILocation(line: 84, column: 6, scope: !4028)
!4050 = !DILocation(line: 85, column: 3, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 84, column: 19)
!4052 = !DILocation(line: 87, column: 3, scope: !4051)
!4053 = !DILocation(line: 89, column: 21, scope: !4028)
!4054 = !DILocation(line: 89, column: 33, scope: !4028)
!4055 = !DILocation(line: 89, column: 39, scope: !4028)
!4056 = !DILocation(line: 89, column: 2, scope: !4028)
!4057 = !DILocation(line: 90, column: 20, scope: !4028)
!4058 = !DILocation(line: 90, column: 2, scope: !4028)
!4059 = !DILocation(line: 91, column: 1, scope: !4028)
!4060 = distinct !DISubprogram(name: "trace_gb_hd_in", scope: !4061, file: !4061, line: 486, type: !4062, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4061 = !DIFile(filename: "drivers/greybus/greybus_trace.h", directory: "/home/lizy2001/genbc/linux")
!4062 = !DISubroutineType(types: !4063)
!4063 = !{null, !166}
!4064 = !DILocalVariable(name: "hd", arg: 1, scope: !4060, file: !4061, line: 486, type: !166)
!4065 = !DILocation(line: 486, column: 1, scope: !4060)
!4066 = distinct !DISubprogram(name: "gb_connection_hd_find", scope: !3, file: !3, line: 54, type: !4067, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!162, !166, !156}
!4069 = !DILocalVariable(name: "lock", arg: 1, scope: !4070, file: !4071, line: 407, type: !1027)
!4070 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4071, file: !4071, line: 407, type: !4072, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4071 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !1027, !287}
!4074 = !DILocation(line: 407, column: 64, scope: !4070, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 67, column: 2, scope: !4066)
!4076 = !DILocalVariable(name: "flags", arg: 2, scope: !4070, file: !4071, line: 407, type: !287)
!4077 = !DILocation(line: 407, column: 84, scope: !4070, inlinedAt: !4075)
!4078 = !DILocalVariable(name: "lock", arg: 1, scope: !4079, file: !4071, line: 327, type: !1027)
!4079 = distinct !DISubprogram(name: "spinlock_check", scope: !4071, file: !4071, line: 327, type: !4080, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!4082, !1027}
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!4083 = !DILocation(line: 327, column: 67, scope: !4079, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 59, column: 2, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 59, column: 2)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 59, column: 2)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 59, column: 2)
!4088 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 59, column: 2)
!4089 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 59, column: 2)
!4090 = !DILocalVariable(name: "hd", arg: 1, scope: !4066, file: !3, line: 54, type: !166)
!4091 = !DILocation(line: 54, column: 46, scope: !4066)
!4092 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4066, file: !3, line: 54, type: !156)
!4093 = !DILocation(line: 54, column: 54, scope: !4066)
!4094 = !DILocalVariable(name: "connection", scope: !4066, file: !3, line: 56, type: !162)
!4095 = !DILocation(line: 56, column: 24, scope: !4066)
!4096 = !DILocalVariable(name: "flags", scope: !4066, file: !3, line: 57, type: !287)
!4097 = !DILocation(line: 57, column: 16, scope: !4066)
!4098 = !DILocation(line: 59, column: 2, scope: !4066)
!4099 = !DILocation(line: 59, column: 2, scope: !4089)
!4100 = !DILocalVariable(name: "__dummy", scope: !4101, file: !3, line: 59, type: !287)
!4101 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 59, column: 2)
!4102 = !DILocation(line: 59, column: 2, scope: !4101)
!4103 = !DILocalVariable(name: "__dummy2", scope: !4101, file: !3, line: 59, type: !287)
!4104 = !DILocation(line: 59, column: 2, scope: !4088)
!4105 = !DILocation(line: 59, column: 2, scope: !4087)
!4106 = !DILocation(line: 59, column: 2, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 59, column: 2)
!4108 = !DILocalVariable(name: "__dummy", scope: !4109, file: !3, line: 59, type: !287)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 59, column: 2)
!4110 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 59, column: 2)
!4111 = !DILocation(line: 59, column: 2, scope: !4109)
!4112 = !DILocalVariable(name: "__dummy2", scope: !4109, file: !3, line: 59, type: !287)
!4113 = !DILocation(line: 59, column: 2, scope: !4110)
!4114 = !DILocation(line: 59, column: 2, scope: !4086)
!4115 = !{i32 -2141767401}
!4116 = !DILocation(line: 329, column: 10, scope: !4079, inlinedAt: !4084)
!4117 = !DILocation(line: 329, column: 16, scope: !4079, inlinedAt: !4084)
!4118 = !DILocation(line: 59, column: 2, scope: !4085)
!4119 = !DILocalVariable(name: "__mptr", scope: !4120, file: !3, line: 60, type: !161)
!4120 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 60, column: 2)
!4121 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 60, column: 2)
!4122 = !DILocation(line: 60, column: 2, scope: !4120)
!4123 = !DILocation(line: 60, column: 2, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 60, column: 2)
!4125 = !DILocation(line: 60, column: 2, scope: !4121)
!4126 = !DILocation(line: 60, column: 2, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4121, file: !3, line: 60, column: 2)
!4128 = !DILocation(line: 61, column: 7, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 61, column: 7)
!4130 = !DILocation(line: 61, column: 19, scope: !4129)
!4131 = !DILocation(line: 61, column: 34, scope: !4129)
!4132 = !DILocation(line: 61, column: 31, scope: !4129)
!4133 = !DILocation(line: 61, column: 7, scope: !4127)
!4134 = !DILocation(line: 62, column: 22, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 61, column: 44)
!4136 = !DILocation(line: 62, column: 4, scope: !4135)
!4137 = !DILocation(line: 63, column: 4, scope: !4135)
!4138 = !DILocalVariable(name: "__mptr", scope: !4139, file: !3, line: 60, type: !161)
!4139 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 60, column: 2)
!4140 = !DILocation(line: 60, column: 2, scope: !4139)
!4141 = !DILocation(line: 60, column: 2, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 60, column: 2)
!4143 = distinct !{!4143, !4125, !4144}
!4144 = !DILocation(line: 64, column: 3, scope: !4121)
!4145 = !DILocation(line: 65, column: 13, scope: !4066)
!4146 = !DILocation(line: 65, column: 2, scope: !4066)
!4147 = !DILabel(scope: !4066, name: "found", file: !3, line: 66)
!4148 = !DILocation(line: 66, column: 1, scope: !4066)
!4149 = !DILocation(line: 67, column: 47, scope: !4066)
!4150 = !DILocalVariable(name: "__dummy", scope: !4151, file: !4071, line: 409, type: !287)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !4071, line: 409, column: 2)
!4152 = distinct !DILexicalBlock(scope: !4070, file: !4071, line: 409, column: 2)
!4153 = !DILocation(line: 409, column: 2, scope: !4151, inlinedAt: !4075)
!4154 = !DILocalVariable(name: "__dummy2", scope: !4151, file: !4071, line: 409, type: !287)
!4155 = !DILocalVariable(name: "__dummy", scope: !4156, file: !4071, line: 409, type: !287)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !4071, line: 409, column: 2)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !4071, line: 409, column: 2)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !4071, line: 409, column: 2)
!4159 = distinct !DILexicalBlock(scope: !4152, file: !4071, line: 409, column: 2)
!4160 = !DILocation(line: 409, column: 2, scope: !4156, inlinedAt: !4075)
!4161 = !DILocalVariable(name: "__dummy2", scope: !4156, file: !4071, line: 409, type: !287)
!4162 = !DILocation(line: 409, column: 2, scope: !4157, inlinedAt: !4075)
!4163 = !DILocation(line: 409, column: 2, scope: !4164, inlinedAt: !4075)
!4164 = distinct !DILexicalBlock(scope: !4159, file: !4071, line: 409, column: 2)
!4165 = !{i32 -2145499550}
!4166 = !DILocation(line: 409, column: 2, scope: !4167, inlinedAt: !4075)
!4167 = distinct !DILexicalBlock(scope: !4164, file: !4071, line: 409, column: 2)
!4168 = !DILocation(line: 69, column: 9, scope: !4066)
!4169 = !DILocation(line: 69, column: 2, scope: !4066)
!4170 = distinct !DISubprogram(name: "gb_connection_put", scope: !3, file: !3, line: 43, type: !4171, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !162}
!4173 = !DILocalVariable(name: "connection", arg: 1, scope: !4170, file: !3, line: 43, type: !162)
!4174 = !DILocation(line: 43, column: 53, scope: !4170)
!4175 = !DILocation(line: 45, column: 26, scope: !4170)
!4176 = !DILocation(line: 45, column: 2, scope: !4170)
!4177 = !DILocation(line: 47, column: 12, scope: !4170)
!4178 = !DILocation(line: 47, column: 24, scope: !4170)
!4179 = !DILocation(line: 47, column: 2, scope: !4170)
!4180 = !DILocation(line: 48, column: 1, scope: !4170)
!4181 = distinct !DISubprogram(name: "gb_connection_create_static", scope: !3, file: !3, line: 228, type: !4182, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!162, !166, !156, !3994}
!4184 = !DILocalVariable(name: "hd", arg: 1, scope: !4181, file: !3, line: 228, type: !166)
!4185 = !DILocation(line: 228, column: 52, scope: !4181)
!4186 = !DILocalVariable(name: "hd_cport_id", arg: 2, scope: !4181, file: !3, line: 228, type: !156)
!4187 = !DILocation(line: 228, column: 60, scope: !4181)
!4188 = !DILocalVariable(name: "handler", arg: 3, scope: !4181, file: !3, line: 229, type: !3994)
!4189 = !DILocation(line: 229, column: 29, scope: !4181)
!4190 = !DILocation(line: 231, column: 31, scope: !4181)
!4191 = !DILocation(line: 231, column: 35, scope: !4181)
!4192 = !DILocation(line: 231, column: 63, scope: !4181)
!4193 = !DILocation(line: 231, column: 9, scope: !4181)
!4194 = !DILocation(line: 231, column: 2, scope: !4181)
!4195 = !DILocalVariable(name: "lock", arg: 1, scope: !4196, file: !4071, line: 402, type: !1027)
!4196 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4071, file: !4071, line: 402, type: !4197, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !1027}
!4199 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 209, column: 2, scope: !4017)
!4201 = !DILocalVariable(name: "lock", arg: 1, scope: !4202, file: !4071, line: 377, type: !1027)
!4202 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4071, file: !4071, line: 377, type: !4197, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4203 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 201, column: 2, scope: !4017)
!4205 = !DILocation(line: 327, column: 67, scope: !4079, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 187, column: 2, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 187, column: 2)
!4208 = !DILocalVariable(name: "v", arg: 1, scope: !4209, file: !4210, line: 39, type: !4213)
!4209 = distinct !DISubprogram(name: "arch_atomic_set", scope: !4210, file: !4210, line: 39, type: !4211, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4210 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !4213, !222}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!4214 = !DILocation(line: 39, column: 55, scope: !4209, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 46, column: 2, scope: !4216, inlinedAt: !4218)
!4216 = distinct !DISubprogram(name: "atomic_set", scope: !4217, file: !4217, line: 43, type: !4211, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4217 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4218 = distinct !DILocation(line: 185, column: 2, scope: !4017)
!4219 = !DILocalVariable(name: "i", arg: 2, scope: !4209, file: !4210, line: 39, type: !222)
!4220 = !DILocation(line: 39, column: 62, scope: !4209, inlinedAt: !4215)
!4221 = !DILocalVariable(name: "v", arg: 1, scope: !4222, file: !4223, line: 84, type: !4226)
!4222 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4223, file: !4223, line: 84, type: !4224, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4223 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4224 = !DISubroutineType(types: !4225)
!4225 = !{null, !4226, !284}
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4228)
!4228 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4229 = !DILocation(line: 84, column: 74, scope: !4222, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 45, column: 2, scope: !4216, inlinedAt: !4218)
!4231 = !DILocalVariable(name: "size", arg: 2, scope: !4222, file: !4223, line: 84, type: !284)
!4232 = !DILocation(line: 84, column: 84, scope: !4222, inlinedAt: !4230)
!4233 = !DILocalVariable(name: "v", arg: 1, scope: !4216, file: !4217, line: 43, type: !4213)
!4234 = !DILocation(line: 43, column: 22, scope: !4216, inlinedAt: !4218)
!4235 = !DILocalVariable(name: "i", arg: 2, scope: !4216, file: !4217, line: 43, type: !222)
!4236 = !DILocation(line: 43, column: 29, scope: !4216, inlinedAt: !4218)
!4237 = !DILocalVariable(name: "hd", arg: 1, scope: !4017, file: !3, line: 144, type: !166)
!4238 = !DILocation(line: 144, column: 46, scope: !4017)
!4239 = !DILocalVariable(name: "hd_cport_id", arg: 2, scope: !4017, file: !3, line: 144, type: !222)
!4240 = !DILocation(line: 144, column: 54, scope: !4017)
!4241 = !DILocalVariable(name: "intf", arg: 3, scope: !4017, file: !3, line: 145, type: !3909)
!4242 = !DILocation(line: 145, column: 30, scope: !4017)
!4243 = !DILocalVariable(name: "bundle", arg: 4, scope: !4017, file: !3, line: 146, type: !3965)
!4244 = !DILocation(line: 146, column: 27, scope: !4017)
!4245 = !DILocalVariable(name: "cport_id", arg: 5, scope: !4017, file: !3, line: 146, type: !222)
!4246 = !DILocation(line: 146, column: 39, scope: !4017)
!4247 = !DILocalVariable(name: "handler", arg: 6, scope: !4017, file: !3, line: 147, type: !3994)
!4248 = !DILocation(line: 147, column: 30, scope: !4017)
!4249 = !DILocalVariable(name: "flags", arg: 7, scope: !4017, file: !3, line: 148, type: !287)
!4250 = !DILocation(line: 148, column: 23, scope: !4017)
!4251 = !DILocalVariable(name: "connection", scope: !4017, file: !3, line: 150, type: !162)
!4252 = !DILocation(line: 150, column: 24, scope: !4017)
!4253 = !DILocalVariable(name: "ret", scope: !4017, file: !3, line: 151, type: !222)
!4254 = !DILocation(line: 151, column: 6, scope: !4017)
!4255 = !DILocation(line: 153, column: 2, scope: !4017)
!4256 = !DILocation(line: 155, column: 6, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 155, column: 6)
!4258 = !DILocation(line: 155, column: 11, scope: !4257)
!4259 = !DILocation(line: 155, column: 41, scope: !4257)
!4260 = !DILocation(line: 155, column: 47, scope: !4257)
!4261 = !DILocation(line: 155, column: 14, scope: !4257)
!4262 = !DILocation(line: 155, column: 6, scope: !4017)
!4263 = !DILocation(line: 156, column: 3, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 155, column: 58)
!4265 = !DILocation(line: 157, column: 7, scope: !4264)
!4266 = !DILocation(line: 158, column: 3, scope: !4264)
!4267 = !DILocation(line: 161, column: 29, scope: !4017)
!4268 = !DILocation(line: 161, column: 33, scope: !4017)
!4269 = !DILocation(line: 161, column: 46, scope: !4017)
!4270 = !DILocation(line: 161, column: 8, scope: !4017)
!4271 = !DILocation(line: 161, column: 6, scope: !4017)
!4272 = !DILocation(line: 162, column: 6, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 162, column: 6)
!4274 = !DILocation(line: 162, column: 10, scope: !4273)
!4275 = !DILocation(line: 162, column: 6, scope: !4017)
!4276 = !DILocation(line: 163, column: 3, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 162, column: 15)
!4278 = !DILocation(line: 164, column: 3, scope: !4277)
!4279 = !DILocation(line: 166, column: 16, scope: !4017)
!4280 = !DILocation(line: 166, column: 14, scope: !4017)
!4281 = !DILocation(line: 168, column: 15, scope: !4017)
!4282 = !DILocation(line: 168, column: 13, scope: !4017)
!4283 = !DILocation(line: 169, column: 7, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 169, column: 6)
!4285 = !DILocation(line: 169, column: 6, scope: !4017)
!4286 = !DILocation(line: 170, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 169, column: 19)
!4288 = !DILocation(line: 171, column: 3, scope: !4287)
!4289 = !DILocation(line: 174, column: 28, scope: !4017)
!4290 = !DILocation(line: 174, column: 2, scope: !4017)
!4291 = !DILocation(line: 174, column: 14, scope: !4017)
!4292 = !DILocation(line: 174, column: 26, scope: !4017)
!4293 = !DILocation(line: 175, column: 30, scope: !4017)
!4294 = !DILocation(line: 175, column: 2, scope: !4017)
!4295 = !DILocation(line: 175, column: 14, scope: !4017)
!4296 = !DILocation(line: 175, column: 28, scope: !4017)
!4297 = !DILocation(line: 176, column: 19, scope: !4017)
!4298 = !DILocation(line: 176, column: 2, scope: !4017)
!4299 = !DILocation(line: 176, column: 14, scope: !4017)
!4300 = !DILocation(line: 176, column: 17, scope: !4017)
!4301 = !DILocation(line: 177, column: 21, scope: !4017)
!4302 = !DILocation(line: 177, column: 2, scope: !4017)
!4303 = !DILocation(line: 177, column: 14, scope: !4017)
!4304 = !DILocation(line: 177, column: 19, scope: !4017)
!4305 = !DILocation(line: 178, column: 23, scope: !4017)
!4306 = !DILocation(line: 178, column: 2, scope: !4017)
!4307 = !DILocation(line: 178, column: 14, scope: !4017)
!4308 = !DILocation(line: 178, column: 21, scope: !4017)
!4309 = !DILocation(line: 179, column: 24, scope: !4017)
!4310 = !DILocation(line: 179, column: 2, scope: !4017)
!4311 = !DILocation(line: 179, column: 14, scope: !4017)
!4312 = !DILocation(line: 179, column: 22, scope: !4017)
!4313 = !DILocation(line: 180, column: 22, scope: !4017)
!4314 = !DILocation(line: 180, column: 2, scope: !4017)
!4315 = !DILocation(line: 180, column: 14, scope: !4017)
!4316 = !DILocation(line: 180, column: 20, scope: !4017)
!4317 = !DILocation(line: 181, column: 6, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 181, column: 6)
!4319 = !DILocation(line: 181, column: 11, scope: !4318)
!4320 = !DILocation(line: 181, column: 15, scope: !4318)
!4321 = !DILocation(line: 181, column: 21, scope: !4318)
!4322 = !DILocation(line: 181, column: 28, scope: !4318)
!4323 = !DILocation(line: 181, column: 6, scope: !4017)
!4324 = !DILocation(line: 182, column: 3, scope: !4318)
!4325 = !DILocation(line: 182, column: 15, scope: !4318)
!4326 = !DILocation(line: 182, column: 21, scope: !4318)
!4327 = !DILocation(line: 183, column: 2, scope: !4017)
!4328 = !DILocation(line: 183, column: 14, scope: !4017)
!4329 = !DILocation(line: 183, column: 20, scope: !4017)
!4330 = !DILocation(line: 185, column: 14, scope: !4017)
!4331 = !DILocation(line: 185, column: 26, scope: !4017)
!4332 = !DILocation(line: 45, column: 26, scope: !4216, inlinedAt: !4218)
!4333 = !DILocation(line: 86, column: 20, scope: !4222, inlinedAt: !4230)
!4334 = !DILocation(line: 86, column: 23, scope: !4222, inlinedAt: !4230)
!4335 = !DILocation(line: 86, column: 2, scope: !4222, inlinedAt: !4230)
!4336 = !DILocation(line: 87, column: 2, scope: !4222, inlinedAt: !4230)
!4337 = !DILocation(line: 46, column: 18, scope: !4216, inlinedAt: !4218)
!4338 = !DILocation(line: 46, column: 21, scope: !4216, inlinedAt: !4218)
!4339 = !DILocation(line: 41, column: 2, scope: !4340, inlinedAt: !4215)
!4340 = distinct !DILexicalBlock(scope: !4209, file: !4210, line: 41, column: 2)
!4341 = !DILocation(line: 186, column: 2, scope: !4017)
!4342 = !DILocation(line: 186, column: 2, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 186, column: 2)
!4344 = !DILocation(line: 187, column: 2, scope: !4017)
!4345 = !DILocation(line: 187, column: 2, scope: !4207)
!4346 = !DILocation(line: 329, column: 10, scope: !4079, inlinedAt: !4206)
!4347 = !DILocation(line: 329, column: 16, scope: !4079, inlinedAt: !4206)
!4348 = !DILocation(line: 188, column: 18, scope: !4017)
!4349 = !DILocation(line: 188, column: 30, scope: !4017)
!4350 = !DILocation(line: 188, column: 2, scope: !4017)
!4351 = !DILocation(line: 191, column: 17, scope: !4017)
!4352 = !DILocation(line: 191, column: 21, scope: !4017)
!4353 = !DILocation(line: 191, column: 7, scope: !4017)
!4354 = !DILocation(line: 191, column: 27, scope: !4017)
!4355 = !DILocation(line: 190, column: 19, scope: !4017)
!4356 = !DILocation(line: 190, column: 2, scope: !4017)
!4357 = !DILocation(line: 190, column: 14, scope: !4017)
!4358 = !DILocation(line: 190, column: 17, scope: !4017)
!4359 = !DILocation(line: 192, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 192, column: 6)
!4361 = !DILocation(line: 192, column: 19, scope: !4360)
!4362 = !DILocation(line: 192, column: 6, scope: !4017)
!4363 = !DILocation(line: 193, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 192, column: 23)
!4365 = !DILocation(line: 194, column: 3, scope: !4364)
!4366 = !DILocation(line: 197, column: 13, scope: !4017)
!4367 = !DILocation(line: 197, column: 25, scope: !4017)
!4368 = !DILocation(line: 197, column: 2, scope: !4017)
!4369 = !DILocation(line: 199, column: 26, scope: !4017)
!4370 = !DILocation(line: 199, column: 2, scope: !4017)
!4371 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !4204)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !4071, line: 379, column: 2)
!4373 = distinct !DILexicalBlock(scope: !4202, file: !4071, line: 379, column: 2)
!4374 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !4204)
!4375 = distinct !DILexicalBlock(scope: !4373, file: !4071, line: 379, column: 2)
!4376 = !{i32 -2145502342}
!4377 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !4204)
!4378 = distinct !DILexicalBlock(scope: !4375, file: !4071, line: 379, column: 2)
!4379 = !DILocation(line: 202, column: 12, scope: !4017)
!4380 = !DILocation(line: 202, column: 24, scope: !4017)
!4381 = !DILocation(line: 202, column: 35, scope: !4017)
!4382 = !DILocation(line: 202, column: 39, scope: !4017)
!4383 = !DILocation(line: 202, column: 2, scope: !4017)
!4384 = !DILocation(line: 204, column: 6, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 204, column: 6)
!4386 = !DILocation(line: 204, column: 6, scope: !4017)
!4387 = !DILocation(line: 205, column: 13, scope: !4385)
!4388 = !DILocation(line: 205, column: 25, scope: !4385)
!4389 = !DILocation(line: 205, column: 40, scope: !4385)
!4390 = !DILocation(line: 205, column: 48, scope: !4385)
!4391 = !DILocation(line: 205, column: 3, scope: !4385)
!4392 = !DILocation(line: 207, column: 19, scope: !4385)
!4393 = !DILocation(line: 207, column: 31, scope: !4385)
!4394 = !DILocation(line: 207, column: 3, scope: !4385)
!4395 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4200)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !4071, line: 404, column: 2)
!4397 = distinct !DILexicalBlock(scope: !4196, file: !4071, line: 404, column: 2)
!4398 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4200)
!4399 = distinct !DILexicalBlock(scope: !4397, file: !4071, line: 404, column: 2)
!4400 = !{i32 -2145500594}
!4401 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4200)
!4402 = distinct !DILexicalBlock(scope: !4399, file: !4071, line: 404, column: 2)
!4403 = !DILocation(line: 211, column: 2, scope: !4017)
!4404 = !DILocation(line: 213, column: 29, scope: !4017)
!4405 = !DILocation(line: 213, column: 2, scope: !4017)
!4406 = !DILocation(line: 215, column: 9, scope: !4017)
!4407 = !DILocation(line: 215, column: 2, scope: !4017)
!4408 = !DILabel(scope: !4017, name: "err_free_connection", file: !3, line: 217)
!4409 = !DILocation(line: 217, column: 1, scope: !4017)
!4410 = !DILocation(line: 218, column: 8, scope: !4017)
!4411 = !DILocation(line: 218, column: 2, scope: !4017)
!4412 = !DILabel(scope: !4017, name: "err_hd_cport_release", file: !3, line: 219)
!4413 = !DILocation(line: 219, column: 1, scope: !4017)
!4414 = !DILocation(line: 220, column: 22, scope: !4017)
!4415 = !DILocation(line: 220, column: 26, scope: !4017)
!4416 = !DILocation(line: 220, column: 2, scope: !4017)
!4417 = !DILabel(scope: !4017, name: "err_unlock", file: !3, line: 221)
!4418 = !DILocation(line: 221, column: 1, scope: !4017)
!4419 = !DILocation(line: 222, column: 2, scope: !4017)
!4420 = !DILocation(line: 224, column: 17, scope: !4017)
!4421 = !DILocation(line: 224, column: 9, scope: !4017)
!4422 = !DILocation(line: 224, column: 2, scope: !4017)
!4423 = !DILocation(line: 225, column: 1, scope: !4017)
!4424 = distinct !DISubprogram(name: "gb_connection_create_control", scope: !3, file: !3, line: 236, type: !4425, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!162, !3909}
!4427 = !DILocalVariable(name: "intf", arg: 1, scope: !4424, file: !3, line: 236, type: !3909)
!4428 = !DILocation(line: 236, column: 51, scope: !4424)
!4429 = !DILocation(line: 238, column: 31, scope: !4424)
!4430 = !DILocation(line: 238, column: 37, scope: !4424)
!4431 = !DILocation(line: 238, column: 45, scope: !4424)
!4432 = !DILocation(line: 238, column: 9, scope: !4424)
!4433 = !DILocation(line: 238, column: 2, scope: !4424)
!4434 = distinct !DISubprogram(name: "gb_connection_create", scope: !3, file: !3, line: 244, type: !4435, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!162, !3965, !156, !3994}
!4437 = !DILocalVariable(name: "bundle", arg: 1, scope: !4434, file: !3, line: 244, type: !3965)
!4438 = !DILocation(line: 244, column: 40, scope: !4434)
!4439 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4434, file: !3, line: 244, type: !156)
!4440 = !DILocation(line: 244, column: 52, scope: !4434)
!4441 = !DILocalVariable(name: "handler", arg: 3, scope: !4434, file: !3, line: 245, type: !3994)
!4442 = !DILocation(line: 245, column: 29, scope: !4434)
!4443 = !DILocalVariable(name: "intf", scope: !4434, file: !3, line: 247, type: !3909)
!4444 = !DILocation(line: 247, column: 23, scope: !4434)
!4445 = !DILocation(line: 247, column: 30, scope: !4434)
!4446 = !DILocation(line: 247, column: 38, scope: !4434)
!4447 = !DILocation(line: 249, column: 31, scope: !4434)
!4448 = !DILocation(line: 249, column: 37, scope: !4434)
!4449 = !DILocation(line: 249, column: 45, scope: !4434)
!4450 = !DILocation(line: 249, column: 51, scope: !4434)
!4451 = !DILocation(line: 249, column: 59, scope: !4434)
!4452 = !DILocation(line: 250, column: 10, scope: !4434)
!4453 = !DILocation(line: 249, column: 9, scope: !4434)
!4454 = !DILocation(line: 249, column: 2, scope: !4434)
!4455 = distinct !DISubprogram(name: "gb_connection_create_flags", scope: !3, file: !3, line: 255, type: !4456, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!162, !3965, !156, !3994, !287}
!4458 = !DILocalVariable(name: "bundle", arg: 1, scope: !4455, file: !3, line: 255, type: !3965)
!4459 = !DILocation(line: 255, column: 46, scope: !4455)
!4460 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4455, file: !3, line: 255, type: !156)
!4461 = !DILocation(line: 255, column: 58, scope: !4455)
!4462 = !DILocalVariable(name: "handler", arg: 3, scope: !4455, file: !3, line: 256, type: !3994)
!4463 = !DILocation(line: 256, column: 28, scope: !4455)
!4464 = !DILocalVariable(name: "flags", arg: 4, scope: !4455, file: !3, line: 257, type: !287)
!4465 = !DILocation(line: 257, column: 21, scope: !4455)
!4466 = !DILocalVariable(name: "intf", scope: !4455, file: !3, line: 259, type: !3909)
!4467 = !DILocation(line: 259, column: 23, scope: !4455)
!4468 = !DILocation(line: 259, column: 30, scope: !4455)
!4469 = !DILocation(line: 259, column: 38, scope: !4455)
!4470 = !DILocalVariable(name: "__ret_warn_on", scope: !4471, file: !3, line: 261, type: !222)
!4471 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 261, column: 6)
!4472 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 261, column: 6)
!4473 = !DILocation(line: 261, column: 6, scope: !4471)
!4474 = !DILocation(line: 261, column: 6, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 261, column: 6)
!4476 = !DILocation(line: 261, column: 6, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 261, column: 6)
!4478 = !DILocation(line: 261, column: 6, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 261, column: 6)
!4480 = !DILocation(line: 261, column: 6, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 261, column: 6)
!4482 = !{i32 -2141758948, i32 -2141758919, i32 -2141758873, i32 -2141758815, i32 -2141758761, i32 -2141758707, i32 -2141758652, i32 -2141758621}
!4483 = !DILocation(line: 261, column: 6, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 261, column: 6)
!4485 = !{i32 -2141758200, i32 -2141758193, i32 -2141758141, i32 -2141758110, i32 -2141758080}
!4486 = !DILocation(line: 261, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 261, column: 6)
!4488 = !DILocation(line: 261, column: 6, scope: !4472)
!4489 = !DILocation(line: 261, column: 6, scope: !4455)
!4490 = !DILocation(line: 262, column: 9, scope: !4472)
!4491 = !DILocation(line: 262, column: 3, scope: !4472)
!4492 = !DILocation(line: 264, column: 31, scope: !4455)
!4493 = !DILocation(line: 264, column: 37, scope: !4455)
!4494 = !DILocation(line: 264, column: 45, scope: !4455)
!4495 = !DILocation(line: 264, column: 51, scope: !4455)
!4496 = !DILocation(line: 264, column: 59, scope: !4455)
!4497 = !DILocation(line: 265, column: 10, scope: !4455)
!4498 = !DILocation(line: 265, column: 19, scope: !4455)
!4499 = !DILocation(line: 264, column: 9, scope: !4455)
!4500 = !DILocation(line: 264, column: 2, scope: !4455)
!4501 = distinct !DISubprogram(name: "gb_connection_create_offloaded", scope: !3, file: !3, line: 270, type: !4502, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!162, !3965, !156, !287}
!4504 = !DILocalVariable(name: "bundle", arg: 1, scope: !4501, file: !3, line: 270, type: !3965)
!4505 = !DILocation(line: 270, column: 50, scope: !4501)
!4506 = !DILocalVariable(name: "cport_id", arg: 2, scope: !4501, file: !3, line: 270, type: !156)
!4507 = !DILocation(line: 270, column: 62, scope: !4501)
!4508 = !DILocalVariable(name: "flags", arg: 3, scope: !4501, file: !3, line: 271, type: !287)
!4509 = !DILocation(line: 271, column: 25, scope: !4501)
!4510 = !DILocation(line: 273, column: 8, scope: !4501)
!4511 = !DILocation(line: 275, column: 36, scope: !4501)
!4512 = !DILocation(line: 275, column: 44, scope: !4501)
!4513 = !DILocation(line: 275, column: 60, scope: !4501)
!4514 = !DILocation(line: 275, column: 9, scope: !4501)
!4515 = !DILocation(line: 275, column: 2, scope: !4501)
!4516 = distinct !DISubprogram(name: "gb_connection_enable", scope: !3, file: !3, line: 737, type: !4517, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!222, !162}
!4519 = !DILocalVariable(name: "connection", arg: 1, scope: !4516, file: !3, line: 737, type: !162)
!4520 = !DILocation(line: 737, column: 48, scope: !4516)
!4521 = !DILocalVariable(name: "ret", scope: !4516, file: !3, line: 739, type: !222)
!4522 = !DILocation(line: 739, column: 6, scope: !4516)
!4523 = !DILocation(line: 741, column: 14, scope: !4516)
!4524 = !DILocation(line: 741, column: 26, scope: !4516)
!4525 = !DILocation(line: 741, column: 2, scope: !4516)
!4526 = !DILocation(line: 743, column: 6, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 743, column: 6)
!4528 = !DILocation(line: 743, column: 18, scope: !4527)
!4529 = !DILocation(line: 743, column: 24, scope: !4527)
!4530 = !DILocation(line: 743, column: 6, scope: !4516)
!4531 = !DILocation(line: 744, column: 3, scope: !4527)
!4532 = !DILocation(line: 746, column: 30, scope: !4516)
!4533 = !DILocation(line: 746, column: 8, scope: !4516)
!4534 = !DILocation(line: 746, column: 6, scope: !4516)
!4535 = !DILocation(line: 747, column: 7, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 747, column: 6)
!4537 = !DILocation(line: 747, column: 6, scope: !4516)
!4538 = !DILocation(line: 748, column: 30, scope: !4536)
!4539 = !DILocation(line: 748, column: 3, scope: !4536)
!4540 = !DILabel(scope: !4516, name: "out_unlock", file: !3, line: 750)
!4541 = !DILocation(line: 750, column: 1, scope: !4516)
!4542 = !DILocation(line: 751, column: 16, scope: !4516)
!4543 = !DILocation(line: 751, column: 28, scope: !4516)
!4544 = !DILocation(line: 751, column: 2, scope: !4516)
!4545 = !DILocation(line: 753, column: 9, scope: !4516)
!4546 = !DILocation(line: 753, column: 2, scope: !4516)
!4547 = distinct !DISubprogram(name: "_gb_connection_enable", scope: !3, file: !3, line: 671, type: !4548, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!222, !162, !451}
!4550 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4551)
!4551 = distinct !DILocation(line: 716, column: 2, scope: !4547)
!4552 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 713, column: 2, scope: !4547)
!4554 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 704, column: 2, scope: !4547)
!4556 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 699, column: 2, scope: !4547)
!4558 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 682, column: 3, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !3, line: 676, column: 59)
!4561 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 676, column: 6)
!4562 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 680, column: 3, scope: !4560)
!4564 = !DILocalVariable(name: "connection", arg: 1, scope: !4547, file: !3, line: 671, type: !162)
!4565 = !DILocation(line: 671, column: 56, scope: !4547)
!4566 = !DILocalVariable(name: "rx", arg: 2, scope: !4547, file: !3, line: 671, type: !451)
!4567 = !DILocation(line: 671, column: 73, scope: !4547)
!4568 = !DILocalVariable(name: "ret", scope: !4547, file: !3, line: 673, type: !222)
!4569 = !DILocation(line: 673, column: 6, scope: !4547)
!4570 = !DILocation(line: 676, column: 6, scope: !4561)
!4571 = !DILocation(line: 676, column: 18, scope: !4561)
!4572 = !DILocation(line: 676, column: 24, scope: !4561)
!4573 = !DILocation(line: 676, column: 6, scope: !4547)
!4574 = !DILocation(line: 677, column: 9, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 677, column: 7)
!4576 = !DILocation(line: 677, column: 21, scope: !4575)
!4577 = !DILocation(line: 677, column: 29, scope: !4575)
!4578 = !DILocation(line: 677, column: 32, scope: !4575)
!4579 = !DILocation(line: 677, column: 7, scope: !4560)
!4580 = !DILocation(line: 678, column: 4, scope: !4575)
!4581 = !DILocation(line: 680, column: 18, scope: !4560)
!4582 = !DILocation(line: 680, column: 30, scope: !4560)
!4583 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !4563)
!4584 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !4563)
!4585 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !4563)
!4586 = !DILocation(line: 681, column: 3, scope: !4560)
!4587 = !DILocation(line: 681, column: 15, scope: !4560)
!4588 = !DILocation(line: 681, column: 21, scope: !4560)
!4589 = !DILocation(line: 682, column: 20, scope: !4560)
!4590 = !DILocation(line: 682, column: 32, scope: !4560)
!4591 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4559)
!4592 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4559)
!4593 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4559)
!4594 = !DILocation(line: 684, column: 3, scope: !4560)
!4595 = !DILocation(line: 687, column: 38, scope: !4547)
!4596 = !DILocation(line: 687, column: 8, scope: !4547)
!4597 = !DILocation(line: 687, column: 6, scope: !4547)
!4598 = !DILocation(line: 688, column: 6, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 688, column: 6)
!4600 = !DILocation(line: 688, column: 6, scope: !4547)
!4601 = !DILocation(line: 689, column: 10, scope: !4599)
!4602 = !DILocation(line: 689, column: 3, scope: !4599)
!4603 = !DILocation(line: 691, column: 44, scope: !4547)
!4604 = !DILocation(line: 691, column: 8, scope: !4547)
!4605 = !DILocation(line: 691, column: 6, scope: !4547)
!4606 = !DILocation(line: 692, column: 6, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 692, column: 6)
!4608 = !DILocation(line: 692, column: 6, scope: !4547)
!4609 = !DILocation(line: 693, column: 3, scope: !4607)
!4610 = !DILocation(line: 695, column: 41, scope: !4547)
!4611 = !DILocation(line: 695, column: 8, scope: !4547)
!4612 = !DILocation(line: 695, column: 6, scope: !4547)
!4613 = !DILocation(line: 696, column: 6, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 696, column: 6)
!4615 = !DILocation(line: 696, column: 6, scope: !4547)
!4616 = !DILocation(line: 697, column: 3, scope: !4614)
!4617 = !DILocation(line: 699, column: 17, scope: !4547)
!4618 = !DILocation(line: 699, column: 29, scope: !4547)
!4619 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !4557)
!4620 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !4557)
!4621 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !4557)
!4622 = !DILocation(line: 700, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 700, column: 6)
!4624 = !DILocation(line: 700, column: 18, scope: !4623)
!4625 = !DILocation(line: 700, column: 26, scope: !4623)
!4626 = !DILocation(line: 700, column: 29, scope: !4623)
!4627 = !DILocation(line: 700, column: 6, scope: !4547)
!4628 = !DILocation(line: 701, column: 3, scope: !4623)
!4629 = !DILocation(line: 701, column: 15, scope: !4623)
!4630 = !DILocation(line: 701, column: 21, scope: !4623)
!4631 = !DILocation(line: 703, column: 3, scope: !4623)
!4632 = !DILocation(line: 703, column: 15, scope: !4623)
!4633 = !DILocation(line: 703, column: 21, scope: !4623)
!4634 = !DILocation(line: 704, column: 19, scope: !4547)
!4635 = !DILocation(line: 704, column: 31, scope: !4547)
!4636 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4555)
!4637 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4555)
!4638 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4555)
!4639 = !DILocation(line: 706, column: 40, scope: !4547)
!4640 = !DILocation(line: 706, column: 8, scope: !4547)
!4641 = !DILocation(line: 706, column: 6, scope: !4547)
!4642 = !DILocation(line: 707, column: 6, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 707, column: 6)
!4644 = !DILocation(line: 707, column: 6, scope: !4547)
!4645 = !DILocation(line: 708, column: 3, scope: !4643)
!4646 = !DILocation(line: 710, column: 2, scope: !4547)
!4647 = !DILabel(scope: !4547, name: "err_control_disconnecting", file: !3, line: 712)
!4648 = !DILocation(line: 712, column: 1, scope: !4547)
!4649 = !DILocation(line: 713, column: 17, scope: !4547)
!4650 = !DILocation(line: 713, column: 29, scope: !4547)
!4651 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !4553)
!4652 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !4553)
!4653 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !4553)
!4654 = !DILocation(line: 714, column: 2, scope: !4547)
!4655 = !DILocation(line: 714, column: 14, scope: !4547)
!4656 = !DILocation(line: 714, column: 20, scope: !4547)
!4657 = !DILocation(line: 715, column: 34, scope: !4547)
!4658 = !DILocation(line: 715, column: 2, scope: !4547)
!4659 = !DILocation(line: 716, column: 19, scope: !4547)
!4660 = !DILocation(line: 716, column: 31, scope: !4547)
!4661 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4551)
!4662 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4551)
!4663 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4551)
!4664 = !DILocation(line: 719, column: 31, scope: !4547)
!4665 = !DILocation(line: 719, column: 2, scope: !4547)
!4666 = !DILocation(line: 721, column: 38, scope: !4547)
!4667 = !DILocation(line: 721, column: 2, scope: !4547)
!4668 = !DILocation(line: 722, column: 39, scope: !4547)
!4669 = !DILocation(line: 722, column: 2, scope: !4547)
!4670 = !DILocation(line: 723, column: 33, scope: !4547)
!4671 = !DILocation(line: 723, column: 2, scope: !4547)
!4672 = !DILocation(line: 724, column: 39, scope: !4547)
!4673 = !DILocation(line: 724, column: 2, scope: !4547)
!4674 = !DILocation(line: 725, column: 37, scope: !4547)
!4675 = !DILocation(line: 725, column: 2, scope: !4547)
!4676 = !DILocation(line: 726, column: 2, scope: !4547)
!4677 = !DILocation(line: 726, column: 14, scope: !4547)
!4678 = !DILocation(line: 726, column: 20, scope: !4547)
!4679 = !DILabel(scope: !4547, name: "err_svc_connection_destroy", file: !3, line: 727)
!4680 = !DILocation(line: 727, column: 1, scope: !4547)
!4681 = !DILocation(line: 728, column: 39, scope: !4547)
!4682 = !DILocation(line: 728, column: 2, scope: !4547)
!4683 = !DILabel(scope: !4547, name: "err_hd_cport_clear", file: !3, line: 729)
!4684 = !DILocation(line: 729, column: 1, scope: !4547)
!4685 = !DILocation(line: 730, column: 31, scope: !4547)
!4686 = !DILocation(line: 730, column: 2, scope: !4547)
!4687 = !DILocation(line: 732, column: 33, scope: !4547)
!4688 = !DILocation(line: 732, column: 2, scope: !4547)
!4689 = !DILocation(line: 734, column: 9, scope: !4547)
!4690 = !DILocation(line: 734, column: 2, scope: !4547)
!4691 = !DILocation(line: 735, column: 1, scope: !4547)
!4692 = distinct !DISubprogram(name: "trace_gb_connection_enable", scope: !4061, file: !4061, line: 226, type: !4171, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4693 = !DILocalVariable(name: "connection", arg: 1, scope: !4692, file: !4061, line: 226, type: !162)
!4694 = !DILocation(line: 226, column: 1, scope: !4692)
!4695 = distinct !DISubprogram(name: "gb_connection_enable_tx", scope: !3, file: !3, line: 757, type: !4517, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4696 = !DILocalVariable(name: "connection", arg: 1, scope: !4695, file: !3, line: 757, type: !162)
!4697 = !DILocation(line: 757, column: 51, scope: !4695)
!4698 = !DILocalVariable(name: "ret", scope: !4695, file: !3, line: 759, type: !222)
!4699 = !DILocation(line: 759, column: 6, scope: !4695)
!4700 = !DILocation(line: 761, column: 14, scope: !4695)
!4701 = !DILocation(line: 761, column: 26, scope: !4695)
!4702 = !DILocation(line: 761, column: 2, scope: !4695)
!4703 = !DILocation(line: 763, column: 6, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 763, column: 6)
!4705 = !DILocation(line: 763, column: 18, scope: !4704)
!4706 = !DILocation(line: 763, column: 24, scope: !4704)
!4707 = !DILocation(line: 763, column: 6, scope: !4695)
!4708 = !DILocation(line: 764, column: 7, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 763, column: 56)
!4710 = !DILocation(line: 765, column: 3, scope: !4709)
!4711 = !DILocation(line: 768, column: 6, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 768, column: 6)
!4713 = !DILocation(line: 768, column: 18, scope: !4712)
!4714 = !DILocation(line: 768, column: 24, scope: !4712)
!4715 = !DILocation(line: 768, column: 6, scope: !4695)
!4716 = !DILocation(line: 769, column: 3, scope: !4712)
!4717 = !DILocation(line: 771, column: 30, scope: !4695)
!4718 = !DILocation(line: 771, column: 8, scope: !4695)
!4719 = !DILocation(line: 771, column: 6, scope: !4695)
!4720 = !DILocation(line: 772, column: 7, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 772, column: 6)
!4722 = !DILocation(line: 772, column: 6, scope: !4695)
!4723 = !DILocation(line: 773, column: 30, scope: !4721)
!4724 = !DILocation(line: 773, column: 3, scope: !4721)
!4725 = !DILabel(scope: !4695, name: "out_unlock", file: !3, line: 775)
!4726 = !DILocation(line: 775, column: 1, scope: !4695)
!4727 = !DILocation(line: 776, column: 16, scope: !4695)
!4728 = !DILocation(line: 776, column: 28, scope: !4695)
!4729 = !DILocation(line: 776, column: 2, scope: !4695)
!4730 = !DILocation(line: 778, column: 9, scope: !4695)
!4731 = !DILocation(line: 778, column: 2, scope: !4695)
!4732 = distinct !DISubprogram(name: "gb_connection_disable_rx", scope: !3, file: !3, line: 782, type: !4171, scopeLine: 783, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4733 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 793, column: 2, scope: !4732)
!4735 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4736)
!4736 = distinct !DILocation(line: 788, column: 3, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 787, column: 56)
!4738 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 787, column: 6)
!4739 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 786, column: 2, scope: !4732)
!4741 = !DILocalVariable(name: "connection", arg: 1, scope: !4732, file: !3, line: 782, type: !162)
!4742 = !DILocation(line: 782, column: 53, scope: !4732)
!4743 = !DILocation(line: 784, column: 14, scope: !4732)
!4744 = !DILocation(line: 784, column: 26, scope: !4732)
!4745 = !DILocation(line: 784, column: 2, scope: !4732)
!4746 = !DILocation(line: 786, column: 17, scope: !4732)
!4747 = !DILocation(line: 786, column: 29, scope: !4732)
!4748 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !4740)
!4749 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !4740)
!4750 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !4740)
!4751 = !DILocation(line: 787, column: 6, scope: !4738)
!4752 = !DILocation(line: 787, column: 18, scope: !4738)
!4753 = !DILocation(line: 787, column: 24, scope: !4738)
!4754 = !DILocation(line: 787, column: 6, scope: !4732)
!4755 = !DILocation(line: 788, column: 20, scope: !4737)
!4756 = !DILocation(line: 788, column: 32, scope: !4737)
!4757 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4736)
!4758 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4736)
!4759 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4736)
!4760 = !DILocation(line: 789, column: 3, scope: !4737)
!4761 = !DILocation(line: 791, column: 2, scope: !4732)
!4762 = !DILocation(line: 791, column: 14, scope: !4732)
!4763 = !DILocation(line: 791, column: 20, scope: !4732)
!4764 = !DILocation(line: 792, column: 42, scope: !4732)
!4765 = !DILocation(line: 792, column: 2, scope: !4732)
!4766 = !DILocation(line: 793, column: 19, scope: !4732)
!4767 = !DILocation(line: 793, column: 31, scope: !4732)
!4768 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4734)
!4769 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4734)
!4770 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4734)
!4771 = !DILocation(line: 795, column: 30, scope: !4732)
!4772 = !DILocation(line: 795, column: 2, scope: !4732)
!4773 = !DILabel(scope: !4732, name: "out_unlock", file: !3, line: 797)
!4774 = !DILocation(line: 797, column: 1, scope: !4732)
!4775 = !DILocation(line: 798, column: 16, scope: !4732)
!4776 = !DILocation(line: 798, column: 28, scope: !4732)
!4777 = !DILocation(line: 798, column: 2, scope: !4732)
!4778 = !DILocation(line: 799, column: 1, scope: !4732)
!4779 = distinct !DISubprogram(name: "gb_connection_flush_incoming_operations", scope: !3, file: !3, line: 630, type: !4780, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !162, !222}
!4782 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 657, column: 3, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 637, column: 47)
!4785 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 651, column: 3, scope: !4784)
!4787 = !DILocalVariable(name: "connection", arg: 1, scope: !4779, file: !3, line: 630, type: !162)
!4788 = !DILocation(line: 630, column: 63, scope: !4779)
!4789 = !DILocalVariable(name: "errno", arg: 2, scope: !4779, file: !3, line: 631, type: !222)
!4790 = !DILocation(line: 631, column: 10, scope: !4779)
!4791 = !DILocalVariable(name: "operation", scope: !4779, file: !3, line: 634, type: !3824)
!4792 = !DILocation(line: 634, column: 23, scope: !4779)
!4793 = !DILocalVariable(name: "incoming", scope: !4779, file: !3, line: 635, type: !451)
!4794 = !DILocation(line: 635, column: 7, scope: !4779)
!4795 = !DILocation(line: 637, column: 2, scope: !4779)
!4796 = !DILocation(line: 637, column: 22, scope: !4779)
!4797 = !DILocation(line: 637, column: 34, scope: !4779)
!4798 = !DILocation(line: 637, column: 10, scope: !4779)
!4799 = !DILocation(line: 637, column: 9, scope: !4779)
!4800 = !DILocation(line: 638, column: 12, scope: !4784)
!4801 = !DILocalVariable(name: "__mptr", scope: !4802, file: !3, line: 639, type: !161)
!4802 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 639, column: 3)
!4803 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 639, column: 3)
!4804 = !DILocation(line: 639, column: 3, scope: !4802)
!4805 = !DILocation(line: 639, column: 3, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 639, column: 3)
!4807 = !DILocation(line: 639, column: 3, scope: !4803)
!4808 = !DILocation(line: 639, column: 3, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 639, column: 3)
!4810 = !DILocation(line: 641, column: 33, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 641, column: 8)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 640, column: 16)
!4813 = !DILocation(line: 641, column: 8, scope: !4811)
!4814 = !DILocation(line: 641, column: 8, scope: !4812)
!4815 = !DILocation(line: 642, column: 22, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4811, file: !3, line: 641, column: 45)
!4817 = !DILocation(line: 642, column: 5, scope: !4816)
!4818 = !DILocation(line: 643, column: 14, scope: !4816)
!4819 = !DILocation(line: 644, column: 5, scope: !4816)
!4820 = !DILocation(line: 646, column: 3, scope: !4812)
!4821 = !DILocalVariable(name: "__mptr", scope: !4822, file: !3, line: 639, type: !161)
!4822 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 639, column: 3)
!4823 = !DILocation(line: 639, column: 3, scope: !4822)
!4824 = !DILocation(line: 639, column: 3, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 639, column: 3)
!4826 = distinct !{!4826, !4807, !4827}
!4827 = !DILocation(line: 646, column: 3, scope: !4803)
!4828 = !DILocation(line: 648, column: 8, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 648, column: 7)
!4830 = !DILocation(line: 648, column: 7, scope: !4784)
!4831 = !DILocation(line: 649, column: 4, scope: !4829)
!4832 = !DILocation(line: 651, column: 20, scope: !4784)
!4833 = !DILocation(line: 651, column: 32, scope: !4784)
!4834 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4786)
!4835 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4786)
!4836 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4786)
!4837 = !DILocation(line: 654, column: 32, scope: !4784)
!4838 = !DILocation(line: 654, column: 43, scope: !4784)
!4839 = !DILocation(line: 654, column: 3, scope: !4784)
!4840 = !DILocation(line: 655, column: 20, scope: !4784)
!4841 = !DILocation(line: 655, column: 3, scope: !4784)
!4842 = !DILocation(line: 657, column: 18, scope: !4784)
!4843 = !DILocation(line: 657, column: 30, scope: !4784)
!4844 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !4783)
!4845 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !4783)
!4846 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !4783)
!4847 = distinct !{!4847, !4795, !4848}
!4848 = !DILocation(line: 658, column: 2, scope: !4779)
!4849 = !DILocation(line: 659, column: 1, scope: !4779)
!4850 = distinct !DISubprogram(name: "trace_gb_connection_disable", scope: !4061, file: !4061, line: 233, type: !4171, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4851 = !DILocalVariable(name: "connection", arg: 1, scope: !4850, file: !4061, line: 233, type: !162)
!4852 = !DILocation(line: 233, column: 1, scope: !4850)
!4853 = distinct !DISubprogram(name: "gb_connection_mode_switch_prepare", scope: !3, file: !3, line: 802, type: !4171, scopeLine: 803, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4854 = !DILocalVariable(name: "connection", arg: 1, scope: !4853, file: !3, line: 802, type: !162)
!4855 = !DILocation(line: 802, column: 62, scope: !4853)
!4856 = !DILocation(line: 804, column: 2, scope: !4853)
!4857 = !DILocation(line: 804, column: 14, scope: !4853)
!4858 = !DILocation(line: 804, column: 26, scope: !4853)
!4859 = !DILocation(line: 805, column: 1, scope: !4853)
!4860 = distinct !DISubprogram(name: "gb_connection_mode_switch_complete", scope: !3, file: !3, line: 807, type: !4171, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4861 = !DILocalVariable(name: "connection", arg: 1, scope: !4860, file: !3, line: 807, type: !162)
!4862 = !DILocation(line: 807, column: 63, scope: !4860)
!4863 = !DILocation(line: 809, column: 39, scope: !4860)
!4864 = !DILocation(line: 809, column: 2, scope: !4860)
!4865 = !DILocation(line: 810, column: 31, scope: !4860)
!4866 = !DILocation(line: 810, column: 2, scope: !4860)
!4867 = !DILocation(line: 812, column: 33, scope: !4860)
!4868 = !DILocation(line: 812, column: 2, scope: !4860)
!4869 = !DILocation(line: 814, column: 2, scope: !4860)
!4870 = !DILocation(line: 814, column: 14, scope: !4860)
!4871 = !DILocation(line: 814, column: 26, scope: !4860)
!4872 = !DILocation(line: 815, column: 1, scope: !4860)
!4873 = distinct !DISubprogram(name: "gb_connection_svc_connection_destroy", scope: !3, file: !3, line: 439, type: !4171, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4874 = !DILocalVariable(name: "connection", arg: 1, scope: !4873, file: !3, line: 439, type: !162)
!4875 = !DILocation(line: 439, column: 60, scope: !4873)
!4876 = !DILocation(line: 441, column: 30, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4873, file: !3, line: 441, column: 6)
!4878 = !DILocation(line: 441, column: 6, scope: !4877)
!4879 = !DILocation(line: 441, column: 6, scope: !4873)
!4880 = !DILocation(line: 442, column: 3, scope: !4877)
!4881 = !DILocation(line: 444, column: 28, scope: !4873)
!4882 = !DILocation(line: 444, column: 40, scope: !4873)
!4883 = !DILocation(line: 444, column: 44, scope: !4873)
!4884 = !DILocation(line: 445, column: 7, scope: !4873)
!4885 = !DILocation(line: 445, column: 19, scope: !4873)
!4886 = !DILocation(line: 445, column: 23, scope: !4873)
!4887 = !DILocation(line: 445, column: 28, scope: !4873)
!4888 = !DILocation(line: 446, column: 7, scope: !4873)
!4889 = !DILocation(line: 446, column: 19, scope: !4873)
!4890 = !DILocation(line: 447, column: 7, scope: !4873)
!4891 = !DILocation(line: 447, column: 19, scope: !4873)
!4892 = !DILocation(line: 447, column: 25, scope: !4873)
!4893 = !DILocation(line: 448, column: 7, scope: !4873)
!4894 = !DILocation(line: 448, column: 19, scope: !4873)
!4895 = !DILocation(line: 444, column: 2, scope: !4873)
!4896 = !DILocation(line: 449, column: 1, scope: !4873)
!4897 = distinct !DISubprogram(name: "gb_connection_hd_cport_clear", scope: !3, file: !3, line: 376, type: !4517, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4898 = !DILocalVariable(name: "connection", arg: 1, scope: !4897, file: !3, line: 376, type: !162)
!4899 = !DILocation(line: 376, column: 63, scope: !4897)
!4900 = !DILocalVariable(name: "hd", scope: !4897, file: !3, line: 378, type: !166)
!4901 = !DILocation(line: 378, column: 25, scope: !4897)
!4902 = !DILocation(line: 378, column: 30, scope: !4897)
!4903 = !DILocation(line: 378, column: 42, scope: !4897)
!4904 = !DILocalVariable(name: "ret", scope: !4897, file: !3, line: 379, type: !222)
!4905 = !DILocation(line: 379, column: 6, scope: !4897)
!4906 = !DILocation(line: 381, column: 7, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 381, column: 6)
!4908 = !DILocation(line: 381, column: 11, scope: !4907)
!4909 = !DILocation(line: 381, column: 19, scope: !4907)
!4910 = !DILocation(line: 381, column: 6, scope: !4897)
!4911 = !DILocation(line: 382, column: 3, scope: !4907)
!4912 = !DILocation(line: 384, column: 8, scope: !4897)
!4913 = !DILocation(line: 384, column: 12, scope: !4897)
!4914 = !DILocation(line: 384, column: 20, scope: !4897)
!4915 = !DILocation(line: 384, column: 32, scope: !4897)
!4916 = !DILocation(line: 384, column: 36, scope: !4897)
!4917 = !DILocation(line: 384, column: 48, scope: !4897)
!4918 = !DILocation(line: 384, column: 6, scope: !4897)
!4919 = !DILocation(line: 385, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4897, file: !3, line: 385, column: 6)
!4921 = !DILocation(line: 385, column: 6, scope: !4897)
!4922 = !DILocation(line: 386, column: 3, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 385, column: 11)
!4924 = !DILocation(line: 388, column: 10, scope: !4923)
!4925 = !DILocation(line: 388, column: 3, scope: !4923)
!4926 = !DILocation(line: 391, column: 2, scope: !4897)
!4927 = !DILocation(line: 392, column: 1, scope: !4897)
!4928 = distinct !DISubprogram(name: "gb_connection_hd_cport_disable", scope: !3, file: !3, line: 298, type: !4171, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4929 = !DILocalVariable(name: "connection", arg: 1, scope: !4928, file: !3, line: 298, type: !162)
!4930 = !DILocation(line: 298, column: 66, scope: !4928)
!4931 = !DILocalVariable(name: "hd", scope: !4928, file: !3, line: 300, type: !166)
!4932 = !DILocation(line: 300, column: 25, scope: !4928)
!4933 = !DILocation(line: 300, column: 30, scope: !4928)
!4934 = !DILocation(line: 300, column: 42, scope: !4928)
!4935 = !DILocalVariable(name: "ret", scope: !4928, file: !3, line: 301, type: !222)
!4936 = !DILocation(line: 301, column: 6, scope: !4928)
!4937 = !DILocation(line: 303, column: 7, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 303, column: 6)
!4939 = !DILocation(line: 303, column: 11, scope: !4938)
!4940 = !DILocation(line: 303, column: 19, scope: !4938)
!4941 = !DILocation(line: 303, column: 6, scope: !4928)
!4942 = !DILocation(line: 304, column: 3, scope: !4938)
!4943 = !DILocation(line: 306, column: 8, scope: !4928)
!4944 = !DILocation(line: 306, column: 12, scope: !4928)
!4945 = !DILocation(line: 306, column: 20, scope: !4928)
!4946 = !DILocation(line: 306, column: 34, scope: !4928)
!4947 = !DILocation(line: 306, column: 38, scope: !4928)
!4948 = !DILocation(line: 306, column: 50, scope: !4928)
!4949 = !DILocation(line: 306, column: 6, scope: !4928)
!4950 = !DILocation(line: 307, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 307, column: 6)
!4952 = !DILocation(line: 307, column: 6, scope: !4928)
!4953 = !DILocation(line: 308, column: 3, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 307, column: 11)
!4955 = !DILocation(line: 310, column: 2, scope: !4954)
!4956 = !DILocation(line: 311, column: 1, scope: !4928)
!4957 = distinct !DISubprogram(name: "gb_connection_disable", scope: !3, file: !3, line: 817, type: !4171, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!4958 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !4959)
!4959 = distinct !DILocation(line: 829, column: 2, scope: !4957)
!4960 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 826, column: 2, scope: !4957)
!4962 = !DILocalVariable(name: "connection", arg: 1, scope: !4957, file: !3, line: 817, type: !162)
!4963 = !DILocation(line: 817, column: 50, scope: !4957)
!4964 = !DILocation(line: 819, column: 14, scope: !4957)
!4965 = !DILocation(line: 819, column: 26, scope: !4957)
!4966 = !DILocation(line: 819, column: 2, scope: !4957)
!4967 = !DILocation(line: 821, column: 6, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 821, column: 6)
!4969 = !DILocation(line: 821, column: 18, scope: !4968)
!4970 = !DILocation(line: 821, column: 24, scope: !4968)
!4971 = !DILocation(line: 821, column: 6, scope: !4957)
!4972 = !DILocation(line: 822, column: 3, scope: !4968)
!4973 = !DILocation(line: 824, column: 30, scope: !4957)
!4974 = !DILocation(line: 824, column: 2, scope: !4957)
!4975 = !DILocation(line: 826, column: 17, scope: !4957)
!4976 = !DILocation(line: 826, column: 29, scope: !4957)
!4977 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !4961)
!4978 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !4961)
!4979 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !4961)
!4980 = !DILocation(line: 827, column: 2, scope: !4957)
!4981 = !DILocation(line: 827, column: 14, scope: !4957)
!4982 = !DILocation(line: 827, column: 20, scope: !4957)
!4983 = !DILocation(line: 828, column: 34, scope: !4957)
!4984 = !DILocation(line: 828, column: 2, scope: !4957)
!4985 = !DILocation(line: 829, column: 19, scope: !4957)
!4986 = !DILocation(line: 829, column: 31, scope: !4957)
!4987 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !4959)
!4988 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !4959)
!4989 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !4959)
!4990 = !DILocation(line: 831, column: 31, scope: !4957)
!4991 = !DILocation(line: 831, column: 2, scope: !4957)
!4992 = !DILocation(line: 833, column: 38, scope: !4957)
!4993 = !DILocation(line: 833, column: 2, scope: !4957)
!4994 = !DILocation(line: 834, column: 39, scope: !4957)
!4995 = !DILocation(line: 834, column: 2, scope: !4957)
!4996 = !DILocation(line: 835, column: 33, scope: !4957)
!4997 = !DILocation(line: 835, column: 2, scope: !4957)
!4998 = !DILocation(line: 836, column: 39, scope: !4957)
!4999 = !DILocation(line: 836, column: 2, scope: !4957)
!5000 = !DILocation(line: 837, column: 37, scope: !4957)
!5001 = !DILocation(line: 837, column: 2, scope: !4957)
!5002 = !DILocation(line: 839, column: 2, scope: !4957)
!5003 = !DILocation(line: 839, column: 14, scope: !4957)
!5004 = !DILocation(line: 839, column: 20, scope: !4957)
!5005 = !DILocation(line: 842, column: 7, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 842, column: 6)
!5007 = !DILocation(line: 842, column: 19, scope: !5006)
!5008 = !DILocation(line: 842, column: 6, scope: !4957)
!5009 = !DILocation(line: 843, column: 40, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 842, column: 32)
!5011 = !DILocation(line: 843, column: 3, scope: !5010)
!5012 = !DILocation(line: 844, column: 32, scope: !5010)
!5013 = !DILocation(line: 844, column: 3, scope: !5010)
!5014 = !DILocation(line: 846, column: 34, scope: !5010)
!5015 = !DILocation(line: 846, column: 3, scope: !5010)
!5016 = !DILocation(line: 847, column: 2, scope: !5010)
!5017 = !DILabel(scope: !4957, name: "out_unlock", file: !3, line: 849)
!5018 = !DILocation(line: 849, column: 1, scope: !4957)
!5019 = !DILocation(line: 850, column: 16, scope: !4957)
!5020 = !DILocation(line: 850, column: 28, scope: !4957)
!5021 = !DILocation(line: 850, column: 2, scope: !4957)
!5022 = !DILocation(line: 851, column: 1, scope: !4957)
!5023 = distinct !DISubprogram(name: "gb_connection_cancel_operations", scope: !3, file: !3, line: 601, type: !4780, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5024 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !5025)
!5025 = distinct !DILocation(line: 620, column: 3, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 607, column: 47)
!5027 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 611, column: 3, scope: !5026)
!5029 = !DILocalVariable(name: "connection", arg: 1, scope: !5023, file: !3, line: 601, type: !162)
!5030 = !DILocation(line: 601, column: 67, scope: !5023)
!5031 = !DILocalVariable(name: "errno", arg: 2, scope: !5023, file: !3, line: 602, type: !222)
!5032 = !DILocation(line: 602, column: 14, scope: !5023)
!5033 = !DILocalVariable(name: "operation", scope: !5023, file: !3, line: 605, type: !3824)
!5034 = !DILocation(line: 605, column: 23, scope: !5023)
!5035 = !DILocation(line: 607, column: 2, scope: !5023)
!5036 = !DILocation(line: 607, column: 22, scope: !5023)
!5037 = !DILocation(line: 607, column: 34, scope: !5023)
!5038 = !DILocation(line: 607, column: 10, scope: !5023)
!5039 = !DILocation(line: 607, column: 9, scope: !5023)
!5040 = !DILocalVariable(name: "__mptr", scope: !5041, file: !3, line: 608, type: !161)
!5041 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 608, column: 15)
!5042 = !DILocation(line: 608, column: 15, scope: !5041)
!5043 = !DILocation(line: 608, column: 15, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 608, column: 15)
!5045 = !DILocation(line: 608, column: 13, scope: !5026)
!5046 = !DILocation(line: 610, column: 20, scope: !5026)
!5047 = !DILocation(line: 610, column: 3, scope: !5026)
!5048 = !DILocation(line: 611, column: 20, scope: !5026)
!5049 = !DILocation(line: 611, column: 32, scope: !5026)
!5050 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !5028)
!5051 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !5028)
!5052 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !5028)
!5053 = !DILocation(line: 613, column: 32, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 613, column: 7)
!5055 = !DILocation(line: 613, column: 7, scope: !5054)
!5056 = !DILocation(line: 613, column: 7, scope: !5026)
!5057 = !DILocation(line: 614, column: 33, scope: !5054)
!5058 = !DILocation(line: 614, column: 44, scope: !5054)
!5059 = !DILocation(line: 614, column: 4, scope: !5054)
!5060 = !DILocation(line: 616, column: 24, scope: !5054)
!5061 = !DILocation(line: 616, column: 35, scope: !5054)
!5062 = !DILocation(line: 616, column: 4, scope: !5054)
!5063 = !DILocation(line: 618, column: 20, scope: !5026)
!5064 = !DILocation(line: 618, column: 3, scope: !5026)
!5065 = !DILocation(line: 620, column: 18, scope: !5026)
!5066 = !DILocation(line: 620, column: 30, scope: !5026)
!5067 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !5025)
!5068 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !5025)
!5069 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !5025)
!5070 = distinct !{!5070, !5035, !5071}
!5071 = !DILocation(line: 621, column: 2, scope: !5023)
!5072 = !DILocation(line: 622, column: 1, scope: !5023)
!5073 = distinct !DISubprogram(name: "gb_connection_hd_cport_flush", scope: !3, file: !3, line: 331, type: !4517, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5074 = !DILocalVariable(name: "connection", arg: 1, scope: !5073, file: !3, line: 331, type: !162)
!5075 = !DILocation(line: 331, column: 63, scope: !5073)
!5076 = !DILocalVariable(name: "hd", scope: !5073, file: !3, line: 333, type: !166)
!5077 = !DILocation(line: 333, column: 25, scope: !5073)
!5078 = !DILocation(line: 333, column: 30, scope: !5073)
!5079 = !DILocation(line: 333, column: 42, scope: !5073)
!5080 = !DILocalVariable(name: "ret", scope: !5073, file: !3, line: 334, type: !222)
!5081 = !DILocation(line: 334, column: 6, scope: !5073)
!5082 = !DILocation(line: 336, column: 7, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 336, column: 6)
!5084 = !DILocation(line: 336, column: 11, scope: !5083)
!5085 = !DILocation(line: 336, column: 19, scope: !5083)
!5086 = !DILocation(line: 336, column: 6, scope: !5073)
!5087 = !DILocation(line: 337, column: 3, scope: !5083)
!5088 = !DILocation(line: 339, column: 8, scope: !5073)
!5089 = !DILocation(line: 339, column: 12, scope: !5073)
!5090 = !DILocation(line: 339, column: 20, scope: !5073)
!5091 = !DILocation(line: 339, column: 32, scope: !5073)
!5092 = !DILocation(line: 339, column: 36, scope: !5073)
!5093 = !DILocation(line: 339, column: 48, scope: !5073)
!5094 = !DILocation(line: 339, column: 6, scope: !5073)
!5095 = !DILocation(line: 340, column: 6, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 340, column: 6)
!5097 = !DILocation(line: 340, column: 6, scope: !5073)
!5098 = !DILocation(line: 341, column: 3, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 340, column: 11)
!5100 = !DILocation(line: 343, column: 10, scope: !5099)
!5101 = !DILocation(line: 343, column: 3, scope: !5099)
!5102 = !DILocation(line: 346, column: 2, scope: !5073)
!5103 = !DILocation(line: 347, column: 1, scope: !5073)
!5104 = distinct !DISubprogram(name: "gb_connection_control_disconnecting", scope: !3, file: !3, line: 477, type: !4171, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5105 = !DILocalVariable(name: "connection", arg: 1, scope: !5104, file: !3, line: 477, type: !162)
!5106 = !DILocation(line: 477, column: 59, scope: !5104)
!5107 = !DILocalVariable(name: "control", scope: !5104, file: !3, line: 479, type: !3914)
!5108 = !DILocation(line: 479, column: 21, scope: !5104)
!5109 = !DILocalVariable(name: "cport_id", scope: !5104, file: !3, line: 480, type: !156)
!5110 = !DILocation(line: 480, column: 6, scope: !5104)
!5111 = !DILocation(line: 480, column: 17, scope: !5104)
!5112 = !DILocation(line: 480, column: 29, scope: !5104)
!5113 = !DILocalVariable(name: "ret", scope: !5104, file: !3, line: 481, type: !222)
!5114 = !DILocation(line: 481, column: 6, scope: !5104)
!5115 = !DILocation(line: 483, column: 30, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 483, column: 6)
!5117 = !DILocation(line: 483, column: 6, scope: !5116)
!5118 = !DILocation(line: 483, column: 6, scope: !5104)
!5119 = !DILocation(line: 484, column: 3, scope: !5116)
!5120 = !DILocation(line: 486, column: 12, scope: !5104)
!5121 = !DILocation(line: 486, column: 24, scope: !5104)
!5122 = !DILocation(line: 486, column: 30, scope: !5104)
!5123 = !DILocation(line: 486, column: 10, scope: !5104)
!5124 = !DILocation(line: 488, column: 43, scope: !5104)
!5125 = !DILocation(line: 488, column: 52, scope: !5104)
!5126 = !DILocation(line: 488, column: 8, scope: !5104)
!5127 = !DILocation(line: 488, column: 6, scope: !5104)
!5128 = !DILocation(line: 489, column: 6, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 489, column: 6)
!5130 = !DILocation(line: 489, column: 6, scope: !5104)
!5131 = !DILocation(line: 490, column: 3, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5129, file: !3, line: 489, column: 11)
!5133 = !DILocation(line: 493, column: 2, scope: !5132)
!5134 = !DILocation(line: 494, column: 1, scope: !5104)
!5135 = distinct !DISubprogram(name: "gb_connection_cport_shutdown_phase_1", scope: !3, file: !3, line: 584, type: !4517, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5136 = !DILocalVariable(name: "connection", arg: 1, scope: !5135, file: !3, line: 584, type: !162)
!5137 = !DILocation(line: 584, column: 60, scope: !5135)
!5138 = !DILocation(line: 586, column: 38, scope: !5135)
!5139 = !DILocation(line: 586, column: 9, scope: !5135)
!5140 = !DILocation(line: 586, column: 2, scope: !5135)
!5141 = distinct !DISubprogram(name: "gb_connection_hd_cport_quiesce", scope: !3, file: !3, line: 349, type: !4517, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5142 = !DILocalVariable(name: "connection", arg: 1, scope: !5141, file: !3, line: 349, type: !162)
!5143 = !DILocation(line: 349, column: 65, scope: !5141)
!5144 = !DILocalVariable(name: "hd", scope: !5141, file: !3, line: 351, type: !166)
!5145 = !DILocation(line: 351, column: 25, scope: !5141)
!5146 = !DILocation(line: 351, column: 30, scope: !5141)
!5147 = !DILocation(line: 351, column: 42, scope: !5141)
!5148 = !DILocalVariable(name: "peer_space", scope: !5141, file: !3, line: 352, type: !284)
!5149 = !DILocation(line: 352, column: 9, scope: !5141)
!5150 = !DILocalVariable(name: "ret", scope: !5141, file: !3, line: 353, type: !222)
!5151 = !DILocation(line: 353, column: 6, scope: !5141)
!5152 = !DILocation(line: 355, column: 7, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 355, column: 6)
!5154 = !DILocation(line: 355, column: 11, scope: !5153)
!5155 = !DILocation(line: 355, column: 19, scope: !5153)
!5156 = !DILocation(line: 355, column: 6, scope: !5141)
!5157 = !DILocation(line: 356, column: 3, scope: !5153)
!5158 = !DILocation(line: 358, column: 13, scope: !5141)
!5159 = !DILocation(line: 361, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 361, column: 6)
!5161 = !DILocation(line: 361, column: 18, scope: !5160)
!5162 = !DILocation(line: 361, column: 6, scope: !5141)
!5163 = !DILocation(line: 362, column: 14, scope: !5160)
!5164 = !DILocation(line: 362, column: 3, scope: !5160)
!5165 = !DILocation(line: 364, column: 8, scope: !5141)
!5166 = !DILocation(line: 364, column: 12, scope: !5141)
!5167 = !DILocation(line: 364, column: 20, scope: !5141)
!5168 = !DILocation(line: 364, column: 34, scope: !5141)
!5169 = !DILocation(line: 364, column: 38, scope: !5141)
!5170 = !DILocation(line: 364, column: 50, scope: !5141)
!5171 = !DILocation(line: 365, column: 6, scope: !5141)
!5172 = !DILocation(line: 364, column: 6, scope: !5141)
!5173 = !DILocation(line: 367, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 367, column: 6)
!5175 = !DILocation(line: 367, column: 6, scope: !5141)
!5176 = !DILocation(line: 368, column: 3, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 367, column: 11)
!5178 = !DILocation(line: 370, column: 10, scope: !5177)
!5179 = !DILocation(line: 370, column: 3, scope: !5177)
!5180 = !DILocation(line: 373, column: 2, scope: !5141)
!5181 = !DILocation(line: 374, column: 1, scope: !5141)
!5182 = distinct !DISubprogram(name: "gb_connection_cport_shutdown_phase_2", scope: !3, file: !3, line: 590, type: !4517, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5183 = !DILocalVariable(name: "connection", arg: 1, scope: !5182, file: !3, line: 590, type: !162)
!5184 = !DILocation(line: 590, column: 60, scope: !5182)
!5185 = !DILocation(line: 592, column: 38, scope: !5182)
!5186 = !DILocation(line: 592, column: 9, scope: !5182)
!5187 = !DILocation(line: 592, column: 2, scope: !5182)
!5188 = distinct !DISubprogram(name: "gb_connection_control_disconnected", scope: !3, file: !3, line: 497, type: !4171, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5189 = !DILocalVariable(name: "connection", arg: 1, scope: !5188, file: !3, line: 497, type: !162)
!5190 = !DILocation(line: 497, column: 58, scope: !5188)
!5191 = !DILocalVariable(name: "control", scope: !5188, file: !3, line: 499, type: !3914)
!5192 = !DILocation(line: 499, column: 21, scope: !5188)
!5193 = !DILocalVariable(name: "cport_id", scope: !5188, file: !3, line: 500, type: !156)
!5194 = !DILocation(line: 500, column: 6, scope: !5188)
!5195 = !DILocation(line: 500, column: 17, scope: !5188)
!5196 = !DILocation(line: 500, column: 29, scope: !5188)
!5197 = !DILocalVariable(name: "ret", scope: !5188, file: !3, line: 501, type: !222)
!5198 = !DILocation(line: 501, column: 6, scope: !5188)
!5199 = !DILocation(line: 503, column: 30, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 503, column: 6)
!5201 = !DILocation(line: 503, column: 6, scope: !5200)
!5202 = !DILocation(line: 503, column: 6, scope: !5188)
!5203 = !DILocation(line: 504, column: 3, scope: !5200)
!5204 = !DILocation(line: 506, column: 12, scope: !5188)
!5205 = !DILocation(line: 506, column: 24, scope: !5188)
!5206 = !DILocation(line: 506, column: 30, scope: !5188)
!5207 = !DILocation(line: 506, column: 10, scope: !5188)
!5208 = !DILocation(line: 508, column: 31, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 508, column: 6)
!5210 = !DILocation(line: 508, column: 6, scope: !5209)
!5211 = !DILocation(line: 508, column: 6, scope: !5188)
!5212 = !DILocation(line: 509, column: 7, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 509, column: 7)
!5214 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 508, column: 44)
!5215 = !DILocation(line: 509, column: 19, scope: !5213)
!5216 = !DILocation(line: 509, column: 7, scope: !5214)
!5217 = !DILocation(line: 510, column: 43, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 509, column: 32)
!5219 = !DILocation(line: 510, column: 10, scope: !5218)
!5220 = !DILocation(line: 510, column: 8, scope: !5218)
!5221 = !DILocation(line: 511, column: 8, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5218, file: !3, line: 511, column: 8)
!5223 = !DILocation(line: 511, column: 8, scope: !5218)
!5224 = !DILocation(line: 516, column: 5, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 511, column: 13)
!5226 = !DILocation(line: 518, column: 3, scope: !5218)
!5227 = !DILocation(line: 520, column: 3, scope: !5214)
!5228 = !DILocation(line: 523, column: 42, scope: !5188)
!5229 = !DILocation(line: 523, column: 51, scope: !5188)
!5230 = !DILocation(line: 523, column: 8, scope: !5188)
!5231 = !DILocation(line: 523, column: 6, scope: !5188)
!5232 = !DILocation(line: 524, column: 6, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 524, column: 6)
!5234 = !DILocation(line: 524, column: 6, scope: !5188)
!5235 = !DILocation(line: 525, column: 3, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 524, column: 11)
!5237 = !DILocation(line: 527, column: 2, scope: !5236)
!5238 = !DILocation(line: 528, column: 1, scope: !5188)
!5239 = distinct !DISubprogram(name: "gb_connection_disable_forced", scope: !3, file: !3, line: 855, type: !4171, scopeLine: 856, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5240 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !5241)
!5241 = distinct !DILocation(line: 867, column: 2, scope: !5239)
!5242 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !5243)
!5243 = distinct !DILocation(line: 864, column: 2, scope: !5239)
!5244 = !DILocalVariable(name: "connection", arg: 1, scope: !5239, file: !3, line: 855, type: !162)
!5245 = !DILocation(line: 855, column: 57, scope: !5239)
!5246 = !DILocation(line: 857, column: 14, scope: !5239)
!5247 = !DILocation(line: 857, column: 26, scope: !5239)
!5248 = !DILocation(line: 857, column: 2, scope: !5239)
!5249 = !DILocation(line: 859, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 859, column: 6)
!5251 = !DILocation(line: 859, column: 18, scope: !5250)
!5252 = !DILocation(line: 859, column: 24, scope: !5250)
!5253 = !DILocation(line: 859, column: 6, scope: !5239)
!5254 = !DILocation(line: 860, column: 3, scope: !5250)
!5255 = !DILocation(line: 862, column: 30, scope: !5239)
!5256 = !DILocation(line: 862, column: 2, scope: !5239)
!5257 = !DILocation(line: 864, column: 17, scope: !5239)
!5258 = !DILocation(line: 864, column: 29, scope: !5239)
!5259 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !5243)
!5260 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !5243)
!5261 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !5243)
!5262 = !DILocation(line: 865, column: 2, scope: !5239)
!5263 = !DILocation(line: 865, column: 14, scope: !5239)
!5264 = !DILocation(line: 865, column: 20, scope: !5239)
!5265 = !DILocation(line: 866, column: 34, scope: !5239)
!5266 = !DILocation(line: 866, column: 2, scope: !5239)
!5267 = !DILocation(line: 867, column: 19, scope: !5239)
!5268 = !DILocation(line: 867, column: 31, scope: !5239)
!5269 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !5241)
!5270 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !5241)
!5271 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !5241)
!5272 = !DILocation(line: 869, column: 31, scope: !5239)
!5273 = !DILocation(line: 869, column: 2, scope: !5239)
!5274 = !DILocation(line: 871, column: 39, scope: !5239)
!5275 = !DILocation(line: 871, column: 2, scope: !5239)
!5276 = !DILocation(line: 872, column: 31, scope: !5239)
!5277 = !DILocation(line: 872, column: 2, scope: !5239)
!5278 = !DILocation(line: 874, column: 33, scope: !5239)
!5279 = !DILocation(line: 874, column: 2, scope: !5239)
!5280 = !DILabel(scope: !5239, name: "out_unlock", file: !3, line: 875)
!5281 = !DILocation(line: 875, column: 1, scope: !5239)
!5282 = !DILocation(line: 876, column: 16, scope: !5239)
!5283 = !DILocation(line: 876, column: 28, scope: !5239)
!5284 = !DILocation(line: 876, column: 2, scope: !5239)
!5285 = !DILocation(line: 877, column: 1, scope: !5239)
!5286 = distinct !DISubprogram(name: "gb_connection_destroy", scope: !3, file: !3, line: 881, type: !4171, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5287 = !DILocation(line: 402, column: 57, scope: !4196, inlinedAt: !5288)
!5288 = distinct !DILocation(line: 894, column: 2, scope: !5286)
!5289 = !DILocation(line: 377, column: 55, scope: !4202, inlinedAt: !5290)
!5290 = distinct !DILocation(line: 891, column: 2, scope: !5286)
!5291 = !DILocalVariable(name: "connection", arg: 1, scope: !5286, file: !3, line: 881, type: !162)
!5292 = !DILocation(line: 881, column: 50, scope: !5286)
!5293 = !DILocation(line: 883, column: 7, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 883, column: 6)
!5295 = !DILocation(line: 883, column: 6, scope: !5286)
!5296 = !DILocation(line: 884, column: 3, scope: !5294)
!5297 = !DILocalVariable(name: "__ret_warn_on", scope: !5298, file: !3, line: 886, type: !222)
!5298 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 886, column: 6)
!5299 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 886, column: 6)
!5300 = !DILocation(line: 886, column: 6, scope: !5298)
!5301 = !DILocation(line: 886, column: 6, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 886, column: 6)
!5303 = !DILocation(line: 886, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 886, column: 6)
!5305 = !DILocation(line: 886, column: 6, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 886, column: 6)
!5307 = !DILocation(line: 886, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 886, column: 6)
!5309 = !{i32 -2141747895, i32 -2141747866, i32 -2141747820, i32 -2141747762, i32 -2141747708, i32 -2141747654, i32 -2141747599, i32 -2141747568}
!5310 = !DILocation(line: 886, column: 6, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 886, column: 6)
!5312 = !{i32 -2141747158, i32 -2141747151, i32 -2141747099, i32 -2141747068, i32 -2141747038}
!5313 = !DILocation(line: 886, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 886, column: 6)
!5315 = !DILocation(line: 886, column: 6, scope: !5299)
!5316 = !DILocation(line: 886, column: 6, scope: !5286)
!5317 = !DILocation(line: 887, column: 25, scope: !5299)
!5318 = !DILocation(line: 887, column: 3, scope: !5299)
!5319 = !DILocation(line: 889, column: 2, scope: !5286)
!5320 = !DILocation(line: 379, column: 2, scope: !4372, inlinedAt: !5290)
!5321 = !DILocation(line: 379, column: 2, scope: !4375, inlinedAt: !5290)
!5322 = !DILocation(line: 379, column: 2, scope: !4378, inlinedAt: !5290)
!5323 = !DILocation(line: 892, column: 12, scope: !5286)
!5324 = !DILocation(line: 892, column: 24, scope: !5286)
!5325 = !DILocation(line: 892, column: 2, scope: !5286)
!5326 = !DILocation(line: 893, column: 12, scope: !5286)
!5327 = !DILocation(line: 893, column: 24, scope: !5286)
!5328 = !DILocation(line: 893, column: 2, scope: !5286)
!5329 = !DILocation(line: 404, column: 2, scope: !4396, inlinedAt: !5288)
!5330 = !DILocation(line: 404, column: 2, scope: !4399, inlinedAt: !5288)
!5331 = !DILocation(line: 404, column: 2, scope: !4402, inlinedAt: !5288)
!5332 = !DILocation(line: 896, column: 20, scope: !5286)
!5333 = !DILocation(line: 896, column: 32, scope: !5286)
!5334 = !DILocation(line: 896, column: 2, scope: !5286)
!5335 = !DILocation(line: 898, column: 22, scope: !5286)
!5336 = !DILocation(line: 898, column: 34, scope: !5286)
!5337 = !DILocation(line: 898, column: 38, scope: !5286)
!5338 = !DILocation(line: 898, column: 50, scope: !5286)
!5339 = !DILocation(line: 898, column: 2, scope: !5286)
!5340 = !DILocation(line: 899, column: 2, scope: !5286)
!5341 = !DILocation(line: 899, column: 14, scope: !5286)
!5342 = !DILocation(line: 899, column: 26, scope: !5286)
!5343 = !DILocation(line: 901, column: 2, scope: !5286)
!5344 = !DILocation(line: 903, column: 20, scope: !5286)
!5345 = !DILocation(line: 903, column: 2, scope: !5286)
!5346 = !DILocation(line: 904, column: 1, scope: !5286)
!5347 = distinct !DISubprogram(name: "list_del", scope: !5348, file: !5348, line: 144, type: !5349, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5348 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5349 = !DISubroutineType(types: !5350)
!5350 = !{null, !186}
!5351 = !DILocalVariable(name: "entry", arg: 1, scope: !5347, file: !5348, line: 144, type: !186)
!5352 = !DILocation(line: 144, column: 47, scope: !5347)
!5353 = !DILocation(line: 146, column: 19, scope: !5347)
!5354 = !DILocation(line: 146, column: 2, scope: !5347)
!5355 = !DILocation(line: 147, column: 2, scope: !5347)
!5356 = !DILocation(line: 147, column: 9, scope: !5347)
!5357 = !DILocation(line: 147, column: 14, scope: !5347)
!5358 = !DILocation(line: 148, column: 2, scope: !5347)
!5359 = !DILocation(line: 148, column: 9, scope: !5347)
!5360 = !DILocation(line: 148, column: 14, scope: !5347)
!5361 = !DILocation(line: 149, column: 1, scope: !5347)
!5362 = distinct !DISubprogram(name: "gb_connection_latency_tag_enable", scope: !3, file: !3, line: 907, type: !4171, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5363 = !DILocalVariable(name: "connection", arg: 1, scope: !5362, file: !3, line: 907, type: !162)
!5364 = !DILocation(line: 907, column: 61, scope: !5362)
!5365 = !DILocalVariable(name: "hd", scope: !5362, file: !3, line: 909, type: !166)
!5366 = !DILocation(line: 909, column: 25, scope: !5362)
!5367 = !DILocation(line: 909, column: 30, scope: !5362)
!5368 = !DILocation(line: 909, column: 42, scope: !5362)
!5369 = !DILocalVariable(name: "ret", scope: !5362, file: !3, line: 910, type: !222)
!5370 = !DILocation(line: 910, column: 6, scope: !5362)
!5371 = !DILocation(line: 912, column: 7, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 912, column: 6)
!5373 = !DILocation(line: 912, column: 11, scope: !5372)
!5374 = !DILocation(line: 912, column: 19, scope: !5372)
!5375 = !DILocation(line: 912, column: 6, scope: !5362)
!5376 = !DILocation(line: 913, column: 3, scope: !5372)
!5377 = !DILocation(line: 915, column: 8, scope: !5362)
!5378 = !DILocation(line: 915, column: 12, scope: !5362)
!5379 = !DILocation(line: 915, column: 20, scope: !5362)
!5380 = !DILocation(line: 915, column: 39, scope: !5362)
!5381 = !DILocation(line: 915, column: 43, scope: !5362)
!5382 = !DILocation(line: 915, column: 55, scope: !5362)
!5383 = !DILocation(line: 915, column: 6, scope: !5362)
!5384 = !DILocation(line: 916, column: 6, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 916, column: 6)
!5386 = !DILocation(line: 916, column: 6, scope: !5362)
!5387 = !DILocation(line: 917, column: 3, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 916, column: 11)
!5389 = !DILocation(line: 920, column: 2, scope: !5388)
!5390 = !DILocation(line: 921, column: 1, scope: !5362)
!5391 = distinct !DISubprogram(name: "gb_connection_latency_tag_disable", scope: !3, file: !3, line: 924, type: !4171, scopeLine: 925, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5392 = !DILocalVariable(name: "connection", arg: 1, scope: !5391, file: !3, line: 924, type: !162)
!5393 = !DILocation(line: 924, column: 62, scope: !5391)
!5394 = !DILocalVariable(name: "hd", scope: !5391, file: !3, line: 926, type: !166)
!5395 = !DILocation(line: 926, column: 25, scope: !5391)
!5396 = !DILocation(line: 926, column: 30, scope: !5391)
!5397 = !DILocation(line: 926, column: 42, scope: !5391)
!5398 = !DILocalVariable(name: "ret", scope: !5391, file: !3, line: 927, type: !222)
!5399 = !DILocation(line: 927, column: 6, scope: !5391)
!5400 = !DILocation(line: 929, column: 7, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 929, column: 6)
!5402 = !DILocation(line: 929, column: 11, scope: !5401)
!5403 = !DILocation(line: 929, column: 19, scope: !5401)
!5404 = !DILocation(line: 929, column: 6, scope: !5391)
!5405 = !DILocation(line: 930, column: 3, scope: !5401)
!5406 = !DILocation(line: 932, column: 8, scope: !5391)
!5407 = !DILocation(line: 932, column: 12, scope: !5391)
!5408 = !DILocation(line: 932, column: 20, scope: !5391)
!5409 = !DILocation(line: 932, column: 40, scope: !5391)
!5410 = !DILocation(line: 932, column: 44, scope: !5391)
!5411 = !DILocation(line: 932, column: 56, scope: !5391)
!5412 = !DILocation(line: 932, column: 6, scope: !5391)
!5413 = !DILocation(line: 933, column: 6, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 933, column: 6)
!5415 = !DILocation(line: 933, column: 6, scope: !5391)
!5416 = !DILocation(line: 934, column: 3, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 933, column: 11)
!5418 = !DILocation(line: 937, column: 2, scope: !5417)
!5419 = !DILocation(line: 938, column: 1, scope: !5391)
!5420 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5421, file: !5421, line: 666, type: !5422, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5421 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!287}
!5424 = !DILocalVariable(name: "f", scope: !5420, file: !5421, line: 668, type: !287)
!5425 = !DILocation(line: 668, column: 16, scope: !5420)
!5426 = !DILocation(line: 670, column: 6, scope: !5420)
!5427 = !DILocation(line: 670, column: 4, scope: !5420)
!5428 = !DILocation(line: 671, column: 2, scope: !5420)
!5429 = !DILocation(line: 672, column: 9, scope: !5420)
!5430 = !DILocation(line: 672, column: 2, scope: !5420)
!5431 = distinct !DISubprogram(name: "gb_connection_get", scope: !3, file: !3, line: 36, type: !4171, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5432 = !DILocalVariable(name: "connection", arg: 1, scope: !5431, file: !3, line: 36, type: !162)
!5433 = !DILocation(line: 36, column: 53, scope: !5431)
!5434 = !DILocation(line: 38, column: 12, scope: !5431)
!5435 = !DILocation(line: 38, column: 24, scope: !5431)
!5436 = !DILocation(line: 38, column: 2, scope: !5431)
!5437 = !DILocation(line: 40, column: 26, scope: !5431)
!5438 = !DILocation(line: 40, column: 2, scope: !5431)
!5439 = !DILocation(line: 41, column: 1, scope: !5431)
!5440 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5421, file: !5421, line: 646, type: !5422, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5441 = !DILocalVariable(name: "__ret", scope: !5442, file: !5421, line: 648, type: !287)
!5442 = distinct !DILexicalBlock(scope: !5440, file: !5421, line: 648, column: 9)
!5443 = !DILocation(line: 648, column: 9, scope: !5442)
!5444 = !DILocalVariable(name: "__edi", scope: !5442, file: !5421, line: 648, type: !287)
!5445 = !DILocalVariable(name: "__esi", scope: !5442, file: !5421, line: 648, type: !287)
!5446 = !DILocalVariable(name: "__edx", scope: !5442, file: !5421, line: 648, type: !287)
!5447 = !DILocalVariable(name: "__ecx", scope: !5442, file: !5421, line: 648, type: !287)
!5448 = !DILocalVariable(name: "__eax", scope: !5442, file: !5421, line: 648, type: !287)
!5449 = !DILocation(line: 648, column: 9, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !5421, line: 648, column: 9)
!5451 = distinct !DILexicalBlock(scope: !5442, file: !5421, line: 648, column: 9)
!5452 = !{i32 -2145768919, i32 -2145766604, i32 -2145766370, i32 -2145766319, i32 -2145766291, i32 -2145766266, i32 -2145766582, i32 -2145766569, i32 -2145766131, i32 -2145766012, i32 -2145766477, i32 -2145766450, i32 -2145766422, i32 -2145766392}
!5453 = !DILocalVariable(name: "__mask", scope: !5454, file: !5421, line: 648, type: !287)
!5454 = distinct !DILexicalBlock(scope: !5450, file: !5421, line: 648, column: 9)
!5455 = !DILocation(line: 648, column: 9, scope: !5454)
!5456 = !DILocation(line: 648, column: 9, scope: !5451)
!5457 = !DILocation(line: 648, column: 2, scope: !5440)
!5458 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5421, file: !5421, line: 656, type: !1841, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5459 = !DILocalVariable(name: "__edi", scope: !5460, file: !5421, line: 658, type: !287)
!5460 = distinct !DILexicalBlock(scope: !5458, file: !5421, line: 658, column: 2)
!5461 = !DILocation(line: 658, column: 2, scope: !5460)
!5462 = !DILocalVariable(name: "__esi", scope: !5460, file: !5421, line: 658, type: !287)
!5463 = !DILocalVariable(name: "__edx", scope: !5460, file: !5421, line: 658, type: !287)
!5464 = !DILocalVariable(name: "__ecx", scope: !5460, file: !5421, line: 658, type: !287)
!5465 = !DILocalVariable(name: "__eax", scope: !5460, file: !5421, line: 658, type: !287)
!5466 = !{i32 -2145761825, i32 -2145761093, i32 -2145760859, i32 -2145760808, i32 -2145760780, i32 -2145760755, i32 -2145761071, i32 -2145761058, i32 -2145760620, i32 -2145760501, i32 -2145760966, i32 -2145760939, i32 -2145760911, i32 -2145760881}
!5467 = !DILocation(line: 659, column: 1, scope: !5458)
!5468 = distinct !DISubprogram(name: "kref_get", scope: !3326, file: !3326, line: 43, type: !5469, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{null, !5471}
!5471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!5472 = !DILocalVariable(name: "kref", arg: 1, scope: !5468, file: !3326, line: 43, type: !5471)
!5473 = !DILocation(line: 43, column: 42, scope: !5468)
!5474 = !DILocation(line: 45, column: 16, scope: !5468)
!5475 = !DILocation(line: 45, column: 22, scope: !5468)
!5476 = !DILocation(line: 45, column: 2, scope: !5468)
!5477 = !DILocation(line: 46, column: 1, scope: !5468)
!5478 = distinct !DISubprogram(name: "trace_gb_connection_get", scope: !4061, file: !4061, line: 213, type: !4171, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5479 = !DILocalVariable(name: "connection", arg: 1, scope: !5478, file: !4061, line: 213, type: !162)
!5480 = !DILocation(line: 213, column: 1, scope: !5478)
!5481 = distinct !DISubprogram(name: "refcount_inc", scope: !124, file: !124, line: 265, type: !5482, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{null, !5484}
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!5485 = !DILocalVariable(name: "r", arg: 1, scope: !5481, file: !124, line: 265, type: !5484)
!5486 = !DILocation(line: 265, column: 45, scope: !5481)
!5487 = !DILocation(line: 267, column: 17, scope: !5481)
!5488 = !DILocation(line: 267, column: 2, scope: !5481)
!5489 = !DILocation(line: 268, column: 1, scope: !5481)
!5490 = distinct !DISubprogram(name: "__refcount_inc", scope: !124, file: !124, line: 248, type: !5491, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{null, !5484, !669}
!5493 = !DILocalVariable(name: "r", arg: 1, scope: !5490, file: !124, line: 248, type: !5484)
!5494 = !DILocation(line: 248, column: 47, scope: !5490)
!5495 = !DILocalVariable(name: "oldp", arg: 2, scope: !5490, file: !124, line: 248, type: !669)
!5496 = !DILocation(line: 248, column: 55, scope: !5490)
!5497 = !DILocation(line: 250, column: 20, scope: !5490)
!5498 = !DILocation(line: 250, column: 23, scope: !5490)
!5499 = !DILocation(line: 250, column: 2, scope: !5490)
!5500 = !DILocation(line: 251, column: 1, scope: !5490)
!5501 = distinct !DISubprogram(name: "__refcount_add", scope: !124, file: !124, line: 191, type: !5502, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{null, !222, !5484, !669}
!5504 = !DILocalVariable(name: "i", arg: 1, scope: !5505, file: !4210, line: 182, type: !222)
!5505 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4210, file: !4210, line: 182, type: !5506, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{!222, !222, !4213}
!5508 = !DILocation(line: 182, column: 54, scope: !5505, inlinedAt: !5509)
!5509 = distinct !DILocation(line: 143, column: 9, scope: !5510, inlinedAt: !5511)
!5510 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !4217, file: !4217, line: 140, type: !5506, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5511 = distinct !DILocation(line: 193, column: 12, scope: !5501)
!5512 = !DILocalVariable(name: "v", arg: 2, scope: !5505, file: !4210, line: 182, type: !4213)
!5513 = !DILocation(line: 182, column: 67, scope: !5505, inlinedAt: !5509)
!5514 = !DILocalVariable(name: "__ret", scope: !5515, file: !4210, line: 184, type: !222)
!5515 = distinct !DILexicalBlock(scope: !5505, file: !4210, line: 184, column: 9)
!5516 = !DILocation(line: 184, column: 9, scope: !5515, inlinedAt: !5509)
!5517 = !DILocalVariable(name: "v", arg: 1, scope: !5518, file: !4223, line: 99, type: !4226)
!5518 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4223, file: !4223, line: 99, type: !4224, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5519 = !DILocation(line: 99, column: 79, scope: !5518, inlinedAt: !5520)
!5520 = distinct !DILocation(line: 142, column: 2, scope: !5510, inlinedAt: !5511)
!5521 = !DILocalVariable(name: "size", arg: 2, scope: !5518, file: !4223, line: 99, type: !284)
!5522 = !DILocation(line: 99, column: 89, scope: !5518, inlinedAt: !5520)
!5523 = !DILocalVariable(name: "i", arg: 1, scope: !5510, file: !4217, line: 140, type: !222)
!5524 = !DILocation(line: 140, column: 30, scope: !5510, inlinedAt: !5511)
!5525 = !DILocalVariable(name: "v", arg: 2, scope: !5510, file: !4217, line: 140, type: !4213)
!5526 = !DILocation(line: 140, column: 43, scope: !5510, inlinedAt: !5511)
!5527 = !DILocalVariable(name: "i", arg: 1, scope: !5501, file: !124, line: 191, type: !222)
!5528 = !DILocation(line: 191, column: 39, scope: !5501)
!5529 = !DILocalVariable(name: "r", arg: 2, scope: !5501, file: !124, line: 191, type: !5484)
!5530 = !DILocation(line: 191, column: 54, scope: !5501)
!5531 = !DILocalVariable(name: "oldp", arg: 3, scope: !5501, file: !124, line: 191, type: !669)
!5532 = !DILocation(line: 191, column: 62, scope: !5501)
!5533 = !DILocalVariable(name: "old", scope: !5501, file: !124, line: 193, type: !222)
!5534 = !DILocation(line: 193, column: 6, scope: !5501)
!5535 = !DILocation(line: 193, column: 37, scope: !5501)
!5536 = !DILocation(line: 193, column: 41, scope: !5501)
!5537 = !DILocation(line: 193, column: 44, scope: !5501)
!5538 = !DILocation(line: 142, column: 31, scope: !5510, inlinedAt: !5511)
!5539 = !DILocation(line: 101, column: 20, scope: !5518, inlinedAt: !5520)
!5540 = !DILocation(line: 101, column: 23, scope: !5518, inlinedAt: !5520)
!5541 = !DILocation(line: 101, column: 2, scope: !5518, inlinedAt: !5520)
!5542 = !DILocation(line: 102, column: 2, scope: !5518, inlinedAt: !5520)
!5543 = !DILocation(line: 143, column: 39, scope: !5510, inlinedAt: !5511)
!5544 = !DILocation(line: 143, column: 42, scope: !5510, inlinedAt: !5511)
!5545 = !{i32 -2146603125}
!5546 = !DILocation(line: 195, column: 6, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5501, file: !124, line: 195, column: 6)
!5548 = !DILocation(line: 195, column: 6, scope: !5501)
!5549 = !DILocation(line: 196, column: 11, scope: !5547)
!5550 = !DILocation(line: 196, column: 4, scope: !5547)
!5551 = !DILocation(line: 196, column: 9, scope: !5547)
!5552 = !DILocation(line: 196, column: 3, scope: !5547)
!5553 = !DILocation(line: 198, column: 6, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5501, file: !124, line: 198, column: 6)
!5555 = !DILocation(line: 198, column: 6, scope: !5501)
!5556 = !DILocation(line: 199, column: 26, scope: !5554)
!5557 = !DILocation(line: 199, column: 3, scope: !5554)
!5558 = !DILocation(line: 200, column: 11, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5554, file: !124, line: 200, column: 11)
!5560 = !DILocation(line: 200, column: 11, scope: !5554)
!5561 = !DILocation(line: 201, column: 26, scope: !5559)
!5562 = !DILocation(line: 201, column: 3, scope: !5559)
!5563 = !DILocation(line: 202, column: 1, scope: !5501)
!5564 = distinct !DISubprogram(name: "kasan_check_write", scope: !5565, file: !5565, line: 38, type: !5566, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5565 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5566 = !DISubroutineType(types: !5567)
!5567 = !{!451, !4226, !7}
!5568 = !DILocalVariable(name: "p", arg: 1, scope: !5564, file: !5565, line: 38, type: !4226)
!5569 = !DILocation(line: 38, column: 59, scope: !5564)
!5570 = !DILocalVariable(name: "size", arg: 2, scope: !5564, file: !5565, line: 38, type: !7)
!5571 = !DILocation(line: 38, column: 75, scope: !5564)
!5572 = !DILocation(line: 40, column: 2, scope: !5564)
!5573 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5574, file: !5574, line: 178, type: !5575, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5574 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5575 = !DISubroutineType(types: !5576)
!5576 = !{null, !4226, !284, !222}
!5577 = !DILocalVariable(name: "ptr", arg: 1, scope: !5573, file: !5574, line: 178, type: !4226)
!5578 = !DILocation(line: 178, column: 60, scope: !5573)
!5579 = !DILocalVariable(name: "size", arg: 2, scope: !5573, file: !5574, line: 178, type: !284)
!5580 = !DILocation(line: 178, column: 72, scope: !5573)
!5581 = !DILocalVariable(name: "type", arg: 3, scope: !5573, file: !5574, line: 179, type: !222)
!5582 = !DILocation(line: 179, column: 15, scope: !5573)
!5583 = !DILocation(line: 179, column: 23, scope: !5573)
!5584 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5421, file: !5421, line: 651, type: !5585, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5585 = !DISubroutineType(types: !5586)
!5586 = !{null, !287}
!5587 = !DILocalVariable(name: "f", arg: 1, scope: !5584, file: !5421, line: 651, type: !287)
!5588 = !DILocation(line: 651, column: 65, scope: !5584)
!5589 = !DILocalVariable(name: "__edi", scope: !5590, file: !5421, line: 653, type: !287)
!5590 = distinct !DILexicalBlock(scope: !5584, file: !5421, line: 653, column: 2)
!5591 = !DILocation(line: 653, column: 2, scope: !5590)
!5592 = !DILocalVariable(name: "__esi", scope: !5590, file: !5421, line: 653, type: !287)
!5593 = !DILocalVariable(name: "__edx", scope: !5590, file: !5421, line: 653, type: !287)
!5594 = !DILocalVariable(name: "__ecx", scope: !5590, file: !5421, line: 653, type: !287)
!5595 = !DILocalVariable(name: "__eax", scope: !5590, file: !5421, line: 653, type: !287)
!5596 = !{i32 -2145764452, i32 -2145763702, i32 -2145763468, i32 -2145763417, i32 -2145763389, i32 -2145763364, i32 -2145763680, i32 -2145763667, i32 -2145763229, i32 -2145763110, i32 -2145763575, i32 -2145763548, i32 -2145763520, i32 -2145763490}
!5597 = !DILocation(line: 654, column: 1, scope: !5584)
!5598 = distinct !DISubprogram(name: "trace_gb_connection_put", scope: !4061, file: !4061, line: 220, type: !4171, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5599 = !DILocalVariable(name: "connection", arg: 1, scope: !5598, file: !4061, line: 220, type: !162)
!5600 = !DILocation(line: 220, column: 1, scope: !5598)
!5601 = distinct !DISubprogram(name: "kref_put", scope: !3326, file: !3326, line: 62, type: !5602, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!222, !5471, !5604}
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5605 = !DILocalVariable(name: "kref", arg: 1, scope: !5601, file: !3326, line: 62, type: !5471)
!5606 = !DILocation(line: 62, column: 41, scope: !5601)
!5607 = !DILocalVariable(name: "release", arg: 2, scope: !5601, file: !3326, line: 62, type: !5604)
!5608 = !DILocation(line: 62, column: 54, scope: !5601)
!5609 = !DILocation(line: 64, column: 29, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5601, file: !3326, line: 64, column: 6)
!5611 = !DILocation(line: 64, column: 35, scope: !5610)
!5612 = !DILocation(line: 64, column: 6, scope: !5610)
!5613 = !DILocation(line: 64, column: 6, scope: !5601)
!5614 = !DILocation(line: 65, column: 3, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5610, file: !3326, line: 64, column: 46)
!5616 = !DILocation(line: 65, column: 11, scope: !5615)
!5617 = !DILocation(line: 66, column: 3, scope: !5615)
!5618 = !DILocation(line: 68, column: 2, scope: !5601)
!5619 = !DILocation(line: 69, column: 1, scope: !5601)
!5620 = distinct !DISubprogram(name: "gb_connection_kref_release", scope: !3, file: !3, line: 94, type: !5469, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5621 = !DILocalVariable(name: "kref", arg: 1, scope: !5620, file: !3, line: 94, type: !5471)
!5622 = !DILocation(line: 94, column: 53, scope: !5620)
!5623 = !DILocalVariable(name: "connection", scope: !5620, file: !3, line: 96, type: !162)
!5624 = !DILocation(line: 96, column: 24, scope: !5620)
!5625 = !DILocalVariable(name: "__mptr", scope: !5626, file: !3, line: 98, type: !161)
!5626 = distinct !DILexicalBlock(scope: !5620, file: !3, line: 98, column: 15)
!5627 = !DILocation(line: 98, column: 15, scope: !5626)
!5628 = !DILocation(line: 98, column: 15, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 98, column: 15)
!5630 = !DILocation(line: 98, column: 13, scope: !5620)
!5631 = !DILocation(line: 100, column: 30, scope: !5620)
!5632 = !DILocation(line: 100, column: 2, scope: !5620)
!5633 = !DILocation(line: 102, column: 8, scope: !5620)
!5634 = !DILocation(line: 102, column: 2, scope: !5620)
!5635 = !DILocation(line: 103, column: 1, scope: !5620)
!5636 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !124, file: !124, line: 331, type: !5637, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!451, !5484}
!5639 = !DILocalVariable(name: "r", arg: 1, scope: !5636, file: !124, line: 331, type: !5484)
!5640 = !DILocation(line: 331, column: 67, scope: !5636)
!5641 = !DILocation(line: 333, column: 33, scope: !5636)
!5642 = !DILocation(line: 333, column: 9, scope: !5636)
!5643 = !DILocation(line: 333, column: 2, scope: !5636)
!5644 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !124, file: !124, line: 313, type: !5645, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{!451, !5484, !669}
!5647 = !DILocalVariable(name: "r", arg: 1, scope: !5644, file: !124, line: 313, type: !5484)
!5648 = !DILocation(line: 313, column: 69, scope: !5644)
!5649 = !DILocalVariable(name: "oldp", arg: 2, scope: !5644, file: !124, line: 313, type: !669)
!5650 = !DILocation(line: 313, column: 77, scope: !5644)
!5651 = !DILocation(line: 315, column: 36, scope: !5644)
!5652 = !DILocation(line: 315, column: 39, scope: !5644)
!5653 = !DILocation(line: 315, column: 9, scope: !5644)
!5654 = !DILocation(line: 315, column: 2, scope: !5644)
!5655 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !124, file: !124, line: 270, type: !5656, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5656 = !DISubroutineType(types: !5657)
!5657 = !{!451, !222, !5484, !669}
!5658 = !DILocalVariable(name: "i", arg: 1, scope: !5659, file: !4210, line: 188, type: !222)
!5659 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4210, file: !4210, line: 188, type: !5506, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5660 = !DILocation(line: 188, column: 54, scope: !5659, inlinedAt: !5661)
!5661 = distinct !DILocation(line: 221, column: 9, scope: !5662, inlinedAt: !5663)
!5662 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !4217, file: !4217, line: 218, type: !5506, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5663 = distinct !DILocation(line: 272, column: 12, scope: !5655)
!5664 = !DILocalVariable(name: "v", arg: 2, scope: !5659, file: !4210, line: 188, type: !4213)
!5665 = !DILocation(line: 188, column: 67, scope: !5659, inlinedAt: !5661)
!5666 = !DILocalVariable(name: "__ret", scope: !5667, file: !4210, line: 190, type: !222)
!5667 = distinct !DILexicalBlock(scope: !5659, file: !4210, line: 190, column: 9)
!5668 = !DILocation(line: 190, column: 9, scope: !5667, inlinedAt: !5661)
!5669 = !DILocation(line: 99, column: 79, scope: !5518, inlinedAt: !5670)
!5670 = distinct !DILocation(line: 220, column: 2, scope: !5662, inlinedAt: !5663)
!5671 = !DILocation(line: 99, column: 89, scope: !5518, inlinedAt: !5670)
!5672 = !DILocalVariable(name: "i", arg: 1, scope: !5662, file: !4217, line: 218, type: !222)
!5673 = !DILocation(line: 218, column: 30, scope: !5662, inlinedAt: !5663)
!5674 = !DILocalVariable(name: "v", arg: 2, scope: !5662, file: !4217, line: 218, type: !4213)
!5675 = !DILocation(line: 218, column: 43, scope: !5662, inlinedAt: !5663)
!5676 = !DILocalVariable(name: "i", arg: 1, scope: !5655, file: !124, line: 270, type: !222)
!5677 = !DILocation(line: 270, column: 61, scope: !5655)
!5678 = !DILocalVariable(name: "r", arg: 2, scope: !5655, file: !124, line: 270, type: !5484)
!5679 = !DILocation(line: 270, column: 76, scope: !5655)
!5680 = !DILocalVariable(name: "oldp", arg: 3, scope: !5655, file: !124, line: 270, type: !669)
!5681 = !DILocation(line: 270, column: 84, scope: !5655)
!5682 = !DILocalVariable(name: "old", scope: !5655, file: !124, line: 272, type: !222)
!5683 = !DILocation(line: 272, column: 6, scope: !5655)
!5684 = !DILocation(line: 272, column: 37, scope: !5655)
!5685 = !DILocation(line: 272, column: 41, scope: !5655)
!5686 = !DILocation(line: 272, column: 44, scope: !5655)
!5687 = !DILocation(line: 220, column: 31, scope: !5662, inlinedAt: !5663)
!5688 = !DILocation(line: 101, column: 20, scope: !5518, inlinedAt: !5670)
!5689 = !DILocation(line: 101, column: 23, scope: !5518, inlinedAt: !5670)
!5690 = !DILocation(line: 101, column: 2, scope: !5518, inlinedAt: !5670)
!5691 = !DILocation(line: 102, column: 2, scope: !5518, inlinedAt: !5670)
!5692 = !DILocation(line: 221, column: 39, scope: !5662, inlinedAt: !5663)
!5693 = !DILocation(line: 221, column: 42, scope: !5662, inlinedAt: !5663)
!5694 = !{i32 -2146601773}
!5695 = !DILocation(line: 274, column: 6, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5655, file: !124, line: 274, column: 6)
!5697 = !DILocation(line: 274, column: 6, scope: !5655)
!5698 = !DILocation(line: 275, column: 11, scope: !5696)
!5699 = !DILocation(line: 275, column: 4, scope: !5696)
!5700 = !DILocation(line: 275, column: 9, scope: !5696)
!5701 = !DILocation(line: 275, column: 3, scope: !5696)
!5702 = !DILocation(line: 277, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5655, file: !124, line: 277, column: 6)
!5704 = !DILocation(line: 277, column: 13, scope: !5703)
!5705 = !DILocation(line: 277, column: 10, scope: !5703)
!5706 = !DILocation(line: 277, column: 6, scope: !5655)
!5707 = !DILocation(line: 278, column: 3, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5703, file: !124, line: 277, column: 16)
!5709 = !{i32 -2144372665}
!5710 = !DILocation(line: 279, column: 3, scope: !5708)
!5711 = !DILocation(line: 282, column: 6, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5655, file: !124, line: 282, column: 6)
!5713 = !DILocation(line: 282, column: 6, scope: !5655)
!5714 = !DILocation(line: 283, column: 26, scope: !5712)
!5715 = !DILocation(line: 283, column: 3, scope: !5712)
!5716 = !DILocation(line: 285, column: 2, scope: !5655)
!5717 = !DILocation(line: 286, column: 1, scope: !5655)
!5718 = distinct !DISubprogram(name: "trace_gb_connection_release", scope: !4061, file: !4061, line: 207, type: !4171, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5719 = !DILocalVariable(name: "connection", arg: 1, scope: !5718, file: !4061, line: 207, type: !162)
!5720 = !DILocation(line: 207, column: 1, scope: !5718)
!5721 = distinct !DISubprogram(name: "gb_connection_cport_in_use", scope: !3, file: !3, line: 22, type: !5722, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!451, !3909, !156}
!5724 = !DILocalVariable(name: "intf", arg: 1, scope: !5721, file: !3, line: 22, type: !3909)
!5725 = !DILocation(line: 22, column: 61, scope: !5721)
!5726 = !DILocalVariable(name: "cport_id", arg: 2, scope: !5721, file: !3, line: 22, type: !156)
!5727 = !DILocation(line: 22, column: 71, scope: !5721)
!5728 = !DILocalVariable(name: "hd", scope: !5721, file: !3, line: 24, type: !166)
!5729 = !DILocation(line: 24, column: 25, scope: !5721)
!5730 = !DILocation(line: 24, column: 30, scope: !5721)
!5731 = !DILocation(line: 24, column: 36, scope: !5721)
!5732 = !DILocalVariable(name: "connection", scope: !5721, file: !3, line: 25, type: !162)
!5733 = !DILocation(line: 25, column: 24, scope: !5721)
!5734 = !DILocalVariable(name: "__mptr", scope: !5735, file: !3, line: 27, type: !161)
!5735 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 27, column: 2)
!5736 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 27, column: 2)
!5737 = !DILocation(line: 27, column: 2, scope: !5735)
!5738 = !DILocation(line: 27, column: 2, scope: !5739)
!5739 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 27, column: 2)
!5740 = !DILocation(line: 27, column: 2, scope: !5736)
!5741 = !DILocation(line: 27, column: 2, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 27, column: 2)
!5743 = !DILocation(line: 28, column: 7, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 28, column: 7)
!5745 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 27, column: 62)
!5746 = !DILocation(line: 28, column: 19, scope: !5744)
!5747 = !DILocation(line: 28, column: 27, scope: !5744)
!5748 = !DILocation(line: 28, column: 24, scope: !5744)
!5749 = !DILocation(line: 28, column: 32, scope: !5744)
!5750 = !DILocation(line: 29, column: 7, scope: !5744)
!5751 = !DILocation(line: 29, column: 19, scope: !5744)
!5752 = !DILocation(line: 29, column: 36, scope: !5744)
!5753 = !DILocation(line: 29, column: 33, scope: !5744)
!5754 = !DILocation(line: 28, column: 7, scope: !5745)
!5755 = !DILocation(line: 30, column: 4, scope: !5744)
!5756 = !DILocation(line: 31, column: 2, scope: !5745)
!5757 = !DILocalVariable(name: "__mptr", scope: !5758, file: !3, line: 27, type: !161)
!5758 = distinct !DILexicalBlock(scope: !5742, file: !3, line: 27, column: 2)
!5759 = !DILocation(line: 27, column: 2, scope: !5758)
!5760 = !DILocation(line: 27, column: 2, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 27, column: 2)
!5762 = distinct !{!5762, !5740, !5763}
!5763 = !DILocation(line: 31, column: 2, scope: !5736)
!5764 = !DILocation(line: 33, column: 2, scope: !5721)
!5765 = !DILocation(line: 34, column: 1, scope: !5721)
!5766 = distinct !DISubprogram(name: "kzalloc", scope: !149, file: !149, line: 662, type: !5767, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!161, !284, !708}
!5769 = !DILocalVariable(name: "s", arg: 1, scope: !5770, file: !149, line: 445, type: !898)
!5770 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !149, file: !149, line: 445, type: !5771, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!161, !898, !708, !284}
!5773 = !DILocation(line: 445, column: 72, scope: !5770, inlinedAt: !5774)
!5774 = distinct !DILocation(line: 552, column: 10, scope: !5775, inlinedAt: !5778)
!5775 = distinct !DILexicalBlock(scope: !5776, file: !149, line: 540, column: 34)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !149, line: 540, column: 6)
!5777 = distinct !DISubprogram(name: "kmalloc", scope: !149, file: !149, line: 538, type: !5767, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5778 = distinct !DILocation(line: 664, column: 9, scope: !5766)
!5779 = !DILocalVariable(name: "flags", arg: 2, scope: !5770, file: !149, line: 446, type: !708)
!5780 = !DILocation(line: 446, column: 9, scope: !5770, inlinedAt: !5774)
!5781 = !DILocalVariable(name: "size", arg: 3, scope: !5770, file: !149, line: 446, type: !284)
!5782 = !DILocation(line: 446, column: 23, scope: !5770, inlinedAt: !5774)
!5783 = !DILocalVariable(name: "ret", scope: !5770, file: !149, line: 448, type: !161)
!5784 = !DILocation(line: 448, column: 8, scope: !5770, inlinedAt: !5774)
!5785 = !DILocalVariable(name: "flags", arg: 1, scope: !5786, file: !149, line: 318, type: !708)
!5786 = distinct !DISubprogram(name: "kmalloc_type", scope: !149, file: !149, line: 318, type: !5787, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!148, !708}
!5789 = !DILocation(line: 318, column: 67, scope: !5786, inlinedAt: !5790)
!5790 = distinct !DILocation(line: 553, column: 20, scope: !5775, inlinedAt: !5778)
!5791 = !DILocalVariable(name: "size", arg: 1, scope: !5792, file: !149, line: 346, type: !284)
!5792 = distinct !DISubprogram(name: "kmalloc_index", scope: !149, file: !149, line: 346, type: !5793, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!7, !284}
!5795 = !DILocation(line: 346, column: 58, scope: !5792, inlinedAt: !5796)
!5796 = distinct !DILocation(line: 547, column: 11, scope: !5775, inlinedAt: !5778)
!5797 = !DILocalVariable(name: "size", arg: 1, scope: !5798, file: !149, line: 472, type: !284)
!5798 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !149, file: !149, line: 472, type: !5799, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5799 = !DISubroutineType(types: !5800)
!5800 = !{!161, !284, !708, !7}
!5801 = !DILocation(line: 472, column: 28, scope: !5798, inlinedAt: !5802)
!5802 = distinct !DILocation(line: 481, column: 9, scope: !5803, inlinedAt: !5804)
!5803 = distinct !DISubprogram(name: "kmalloc_large", scope: !149, file: !149, line: 478, type: !5767, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!5804 = distinct !DILocation(line: 545, column: 11, scope: !5805, inlinedAt: !5778)
!5805 = distinct !DILexicalBlock(scope: !5775, file: !149, line: 544, column: 7)
!5806 = !DILocalVariable(name: "flags", arg: 2, scope: !5798, file: !149, line: 472, type: !708)
!5807 = !DILocation(line: 472, column: 40, scope: !5798, inlinedAt: !5802)
!5808 = !DILocalVariable(name: "order", arg: 3, scope: !5798, file: !149, line: 472, type: !7)
!5809 = !DILocation(line: 472, column: 60, scope: !5798, inlinedAt: !5802)
!5810 = !DILocalVariable(name: "size", arg: 1, scope: !5803, file: !149, line: 478, type: !284)
!5811 = !DILocation(line: 478, column: 51, scope: !5803, inlinedAt: !5804)
!5812 = !DILocalVariable(name: "flags", arg: 2, scope: !5803, file: !149, line: 478, type: !708)
!5813 = !DILocation(line: 478, column: 63, scope: !5803, inlinedAt: !5804)
!5814 = !DILocalVariable(name: "order", scope: !5803, file: !149, line: 480, type: !7)
!5815 = !DILocation(line: 480, column: 15, scope: !5803, inlinedAt: !5804)
!5816 = !DILocalVariable(name: "size", arg: 1, scope: !5777, file: !149, line: 538, type: !284)
!5817 = !DILocation(line: 538, column: 45, scope: !5777, inlinedAt: !5778)
!5818 = !DILocalVariable(name: "flags", arg: 2, scope: !5777, file: !149, line: 538, type: !708)
!5819 = !DILocation(line: 538, column: 57, scope: !5777, inlinedAt: !5778)
!5820 = !DILocalVariable(name: "index", scope: !5775, file: !149, line: 542, type: !7)
!5821 = !DILocation(line: 542, column: 16, scope: !5775, inlinedAt: !5778)
!5822 = !DILocalVariable(name: "size", arg: 1, scope: !5766, file: !149, line: 662, type: !284)
!5823 = !DILocation(line: 662, column: 36, scope: !5766)
!5824 = !DILocalVariable(name: "flags", arg: 2, scope: !5766, file: !149, line: 662, type: !708)
!5825 = !DILocation(line: 662, column: 48, scope: !5766)
!5826 = !DILocation(line: 664, column: 17, scope: !5766)
!5827 = !DILocation(line: 664, column: 23, scope: !5766)
!5828 = !DILocation(line: 664, column: 29, scope: !5766)
!5829 = !DILocation(line: 540, column: 27, scope: !5776, inlinedAt: !5778)
!5830 = !DILocation(line: 540, column: 6, scope: !5776, inlinedAt: !5778)
!5831 = !DILocation(line: 540, column: 6, scope: !5777, inlinedAt: !5778)
!5832 = !DILocation(line: 544, column: 7, scope: !5805, inlinedAt: !5778)
!5833 = !DILocation(line: 544, column: 12, scope: !5805, inlinedAt: !5778)
!5834 = !DILocation(line: 544, column: 7, scope: !5775, inlinedAt: !5778)
!5835 = !DILocation(line: 545, column: 25, scope: !5805, inlinedAt: !5778)
!5836 = !DILocation(line: 545, column: 31, scope: !5805, inlinedAt: !5778)
!5837 = !DILocation(line: 480, column: 33, scope: !5803, inlinedAt: !5804)
!5838 = !DILocation(line: 480, column: 23, scope: !5803, inlinedAt: !5804)
!5839 = !DILocation(line: 481, column: 29, scope: !5803, inlinedAt: !5804)
!5840 = !DILocation(line: 481, column: 35, scope: !5803, inlinedAt: !5804)
!5841 = !DILocation(line: 481, column: 42, scope: !5803, inlinedAt: !5804)
!5842 = !DILocation(line: 474, column: 23, scope: !5798, inlinedAt: !5802)
!5843 = !DILocation(line: 474, column: 29, scope: !5798, inlinedAt: !5802)
!5844 = !DILocation(line: 474, column: 36, scope: !5798, inlinedAt: !5802)
!5845 = !DILocation(line: 474, column: 9, scope: !5798, inlinedAt: !5802)
!5846 = !DILocation(line: 545, column: 4, scope: !5805, inlinedAt: !5778)
!5847 = !DILocation(line: 547, column: 25, scope: !5775, inlinedAt: !5778)
!5848 = !DILocation(line: 348, column: 7, scope: !5849, inlinedAt: !5796)
!5849 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 348, column: 6)
!5850 = !DILocation(line: 348, column: 6, scope: !5792, inlinedAt: !5796)
!5851 = !DILocation(line: 349, column: 3, scope: !5849, inlinedAt: !5796)
!5852 = !DILocation(line: 351, column: 6, scope: !5853, inlinedAt: !5796)
!5853 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 351, column: 6)
!5854 = !DILocation(line: 351, column: 11, scope: !5853, inlinedAt: !5796)
!5855 = !DILocation(line: 351, column: 6, scope: !5792, inlinedAt: !5796)
!5856 = !DILocation(line: 352, column: 3, scope: !5853, inlinedAt: !5796)
!5857 = !DILocation(line: 354, column: 32, scope: !5858, inlinedAt: !5796)
!5858 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 354, column: 6)
!5859 = !DILocation(line: 354, column: 37, scope: !5858, inlinedAt: !5796)
!5860 = !DILocation(line: 354, column: 42, scope: !5858, inlinedAt: !5796)
!5861 = !DILocation(line: 354, column: 45, scope: !5858, inlinedAt: !5796)
!5862 = !DILocation(line: 354, column: 50, scope: !5858, inlinedAt: !5796)
!5863 = !DILocation(line: 354, column: 6, scope: !5792, inlinedAt: !5796)
!5864 = !DILocation(line: 355, column: 3, scope: !5858, inlinedAt: !5796)
!5865 = !DILocation(line: 356, column: 32, scope: !5866, inlinedAt: !5796)
!5866 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 356, column: 6)
!5867 = !DILocation(line: 356, column: 37, scope: !5866, inlinedAt: !5796)
!5868 = !DILocation(line: 356, column: 43, scope: !5866, inlinedAt: !5796)
!5869 = !DILocation(line: 356, column: 46, scope: !5866, inlinedAt: !5796)
!5870 = !DILocation(line: 356, column: 51, scope: !5866, inlinedAt: !5796)
!5871 = !DILocation(line: 356, column: 6, scope: !5792, inlinedAt: !5796)
!5872 = !DILocation(line: 357, column: 3, scope: !5866, inlinedAt: !5796)
!5873 = !DILocation(line: 358, column: 6, scope: !5874, inlinedAt: !5796)
!5874 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 358, column: 6)
!5875 = !DILocation(line: 358, column: 11, scope: !5874, inlinedAt: !5796)
!5876 = !DILocation(line: 358, column: 6, scope: !5792, inlinedAt: !5796)
!5877 = !DILocation(line: 358, column: 26, scope: !5874, inlinedAt: !5796)
!5878 = !DILocation(line: 359, column: 6, scope: !5879, inlinedAt: !5796)
!5879 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 359, column: 6)
!5880 = !DILocation(line: 359, column: 11, scope: !5879, inlinedAt: !5796)
!5881 = !DILocation(line: 359, column: 6, scope: !5792, inlinedAt: !5796)
!5882 = !DILocation(line: 359, column: 26, scope: !5879, inlinedAt: !5796)
!5883 = !DILocation(line: 360, column: 6, scope: !5884, inlinedAt: !5796)
!5884 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 360, column: 6)
!5885 = !DILocation(line: 360, column: 11, scope: !5884, inlinedAt: !5796)
!5886 = !DILocation(line: 360, column: 6, scope: !5792, inlinedAt: !5796)
!5887 = !DILocation(line: 360, column: 26, scope: !5884, inlinedAt: !5796)
!5888 = !DILocation(line: 361, column: 6, scope: !5889, inlinedAt: !5796)
!5889 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 361, column: 6)
!5890 = !DILocation(line: 361, column: 11, scope: !5889, inlinedAt: !5796)
!5891 = !DILocation(line: 361, column: 6, scope: !5792, inlinedAt: !5796)
!5892 = !DILocation(line: 361, column: 26, scope: !5889, inlinedAt: !5796)
!5893 = !DILocation(line: 362, column: 6, scope: !5894, inlinedAt: !5796)
!5894 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 362, column: 6)
!5895 = !DILocation(line: 362, column: 11, scope: !5894, inlinedAt: !5796)
!5896 = !DILocation(line: 362, column: 6, scope: !5792, inlinedAt: !5796)
!5897 = !DILocation(line: 362, column: 26, scope: !5894, inlinedAt: !5796)
!5898 = !DILocation(line: 363, column: 6, scope: !5899, inlinedAt: !5796)
!5899 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 363, column: 6)
!5900 = !DILocation(line: 363, column: 11, scope: !5899, inlinedAt: !5796)
!5901 = !DILocation(line: 363, column: 6, scope: !5792, inlinedAt: !5796)
!5902 = !DILocation(line: 363, column: 26, scope: !5899, inlinedAt: !5796)
!5903 = !DILocation(line: 364, column: 6, scope: !5904, inlinedAt: !5796)
!5904 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 364, column: 6)
!5905 = !DILocation(line: 364, column: 11, scope: !5904, inlinedAt: !5796)
!5906 = !DILocation(line: 364, column: 6, scope: !5792, inlinedAt: !5796)
!5907 = !DILocation(line: 364, column: 26, scope: !5904, inlinedAt: !5796)
!5908 = !DILocation(line: 365, column: 6, scope: !5909, inlinedAt: !5796)
!5909 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 365, column: 6)
!5910 = !DILocation(line: 365, column: 11, scope: !5909, inlinedAt: !5796)
!5911 = !DILocation(line: 365, column: 6, scope: !5792, inlinedAt: !5796)
!5912 = !DILocation(line: 365, column: 26, scope: !5909, inlinedAt: !5796)
!5913 = !DILocation(line: 366, column: 6, scope: !5914, inlinedAt: !5796)
!5914 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 366, column: 6)
!5915 = !DILocation(line: 366, column: 11, scope: !5914, inlinedAt: !5796)
!5916 = !DILocation(line: 366, column: 6, scope: !5792, inlinedAt: !5796)
!5917 = !DILocation(line: 366, column: 26, scope: !5914, inlinedAt: !5796)
!5918 = !DILocation(line: 367, column: 6, scope: !5919, inlinedAt: !5796)
!5919 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 367, column: 6)
!5920 = !DILocation(line: 367, column: 11, scope: !5919, inlinedAt: !5796)
!5921 = !DILocation(line: 367, column: 6, scope: !5792, inlinedAt: !5796)
!5922 = !DILocation(line: 367, column: 26, scope: !5919, inlinedAt: !5796)
!5923 = !DILocation(line: 368, column: 6, scope: !5924, inlinedAt: !5796)
!5924 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 368, column: 6)
!5925 = !DILocation(line: 368, column: 11, scope: !5924, inlinedAt: !5796)
!5926 = !DILocation(line: 368, column: 6, scope: !5792, inlinedAt: !5796)
!5927 = !DILocation(line: 368, column: 26, scope: !5924, inlinedAt: !5796)
!5928 = !DILocation(line: 369, column: 6, scope: !5929, inlinedAt: !5796)
!5929 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 369, column: 6)
!5930 = !DILocation(line: 369, column: 11, scope: !5929, inlinedAt: !5796)
!5931 = !DILocation(line: 369, column: 6, scope: !5792, inlinedAt: !5796)
!5932 = !DILocation(line: 369, column: 26, scope: !5929, inlinedAt: !5796)
!5933 = !DILocation(line: 370, column: 6, scope: !5934, inlinedAt: !5796)
!5934 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 370, column: 6)
!5935 = !DILocation(line: 370, column: 11, scope: !5934, inlinedAt: !5796)
!5936 = !DILocation(line: 370, column: 6, scope: !5792, inlinedAt: !5796)
!5937 = !DILocation(line: 370, column: 26, scope: !5934, inlinedAt: !5796)
!5938 = !DILocation(line: 371, column: 6, scope: !5939, inlinedAt: !5796)
!5939 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 371, column: 6)
!5940 = !DILocation(line: 371, column: 11, scope: !5939, inlinedAt: !5796)
!5941 = !DILocation(line: 371, column: 6, scope: !5792, inlinedAt: !5796)
!5942 = !DILocation(line: 371, column: 26, scope: !5939, inlinedAt: !5796)
!5943 = !DILocation(line: 372, column: 6, scope: !5944, inlinedAt: !5796)
!5944 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 372, column: 6)
!5945 = !DILocation(line: 372, column: 11, scope: !5944, inlinedAt: !5796)
!5946 = !DILocation(line: 372, column: 6, scope: !5792, inlinedAt: !5796)
!5947 = !DILocation(line: 372, column: 26, scope: !5944, inlinedAt: !5796)
!5948 = !DILocation(line: 373, column: 6, scope: !5949, inlinedAt: !5796)
!5949 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 373, column: 6)
!5950 = !DILocation(line: 373, column: 11, scope: !5949, inlinedAt: !5796)
!5951 = !DILocation(line: 373, column: 6, scope: !5792, inlinedAt: !5796)
!5952 = !DILocation(line: 373, column: 26, scope: !5949, inlinedAt: !5796)
!5953 = !DILocation(line: 374, column: 6, scope: !5954, inlinedAt: !5796)
!5954 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 374, column: 6)
!5955 = !DILocation(line: 374, column: 11, scope: !5954, inlinedAt: !5796)
!5956 = !DILocation(line: 374, column: 6, scope: !5792, inlinedAt: !5796)
!5957 = !DILocation(line: 374, column: 26, scope: !5954, inlinedAt: !5796)
!5958 = !DILocation(line: 375, column: 6, scope: !5959, inlinedAt: !5796)
!5959 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 375, column: 6)
!5960 = !DILocation(line: 375, column: 11, scope: !5959, inlinedAt: !5796)
!5961 = !DILocation(line: 375, column: 6, scope: !5792, inlinedAt: !5796)
!5962 = !DILocation(line: 375, column: 27, scope: !5959, inlinedAt: !5796)
!5963 = !DILocation(line: 376, column: 6, scope: !5964, inlinedAt: !5796)
!5964 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 376, column: 6)
!5965 = !DILocation(line: 376, column: 11, scope: !5964, inlinedAt: !5796)
!5966 = !DILocation(line: 376, column: 6, scope: !5792, inlinedAt: !5796)
!5967 = !DILocation(line: 376, column: 32, scope: !5964, inlinedAt: !5796)
!5968 = !DILocation(line: 377, column: 6, scope: !5969, inlinedAt: !5796)
!5969 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 377, column: 6)
!5970 = !DILocation(line: 377, column: 11, scope: !5969, inlinedAt: !5796)
!5971 = !DILocation(line: 377, column: 6, scope: !5792, inlinedAt: !5796)
!5972 = !DILocation(line: 377, column: 32, scope: !5969, inlinedAt: !5796)
!5973 = !DILocation(line: 378, column: 6, scope: !5974, inlinedAt: !5796)
!5974 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 378, column: 6)
!5975 = !DILocation(line: 378, column: 11, scope: !5974, inlinedAt: !5796)
!5976 = !DILocation(line: 378, column: 6, scope: !5792, inlinedAt: !5796)
!5977 = !DILocation(line: 378, column: 32, scope: !5974, inlinedAt: !5796)
!5978 = !DILocation(line: 379, column: 6, scope: !5979, inlinedAt: !5796)
!5979 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 379, column: 6)
!5980 = !DILocation(line: 379, column: 11, scope: !5979, inlinedAt: !5796)
!5981 = !DILocation(line: 379, column: 6, scope: !5792, inlinedAt: !5796)
!5982 = !DILocation(line: 379, column: 33, scope: !5979, inlinedAt: !5796)
!5983 = !DILocation(line: 380, column: 6, scope: !5984, inlinedAt: !5796)
!5984 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 380, column: 6)
!5985 = !DILocation(line: 380, column: 11, scope: !5984, inlinedAt: !5796)
!5986 = !DILocation(line: 380, column: 6, scope: !5792, inlinedAt: !5796)
!5987 = !DILocation(line: 380, column: 33, scope: !5984, inlinedAt: !5796)
!5988 = !DILocation(line: 381, column: 6, scope: !5989, inlinedAt: !5796)
!5989 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 381, column: 6)
!5990 = !DILocation(line: 381, column: 11, scope: !5989, inlinedAt: !5796)
!5991 = !DILocation(line: 381, column: 6, scope: !5792, inlinedAt: !5796)
!5992 = !DILocation(line: 381, column: 33, scope: !5989, inlinedAt: !5796)
!5993 = !DILocation(line: 382, column: 2, scope: !5994, inlinedAt: !5796)
!5994 = distinct !DILexicalBlock(scope: !5995, file: !149, line: 382, column: 2)
!5995 = distinct !DILexicalBlock(scope: !5792, file: !149, line: 382, column: 2)
!5996 = !{i32 -2144627874, i32 -2144627845, i32 -2144627799, i32 -2144627741, i32 -2144627687, i32 -2144627633, i32 -2144627578, i32 -2144627547}
!5997 = !DILocation(line: 382, column: 2, scope: !5998, inlinedAt: !5796)
!5998 = distinct !DILexicalBlock(scope: !5999, file: !149, line: 382, column: 2)
!5999 = distinct !DILexicalBlock(scope: !5995, file: !149, line: 382, column: 2)
!6000 = !{i32 -2144627104, i32 -2144627097, i32 -2144627043, i32 -2144627012, i32 -2144626982}
!6001 = !DILocation(line: 382, column: 2, scope: !5999, inlinedAt: !5796)
!6002 = !DILocation(line: 386, column: 1, scope: !5792, inlinedAt: !5796)
!6003 = !DILocation(line: 547, column: 9, scope: !5775, inlinedAt: !5778)
!6004 = !DILocation(line: 549, column: 8, scope: !6005, inlinedAt: !5778)
!6005 = distinct !DILexicalBlock(scope: !5775, file: !149, line: 549, column: 7)
!6006 = !DILocation(line: 549, column: 7, scope: !5775, inlinedAt: !5778)
!6007 = !DILocation(line: 550, column: 4, scope: !6005, inlinedAt: !5778)
!6008 = !DILocation(line: 553, column: 33, scope: !5775, inlinedAt: !5778)
!6009 = !DILocation(line: 325, column: 6, scope: !6010, inlinedAt: !5790)
!6010 = distinct !DILexicalBlock(scope: !5786, file: !149, line: 325, column: 6)
!6011 = !DILocation(line: 325, column: 6, scope: !5786, inlinedAt: !5790)
!6012 = !DILocation(line: 326, column: 3, scope: !6010, inlinedAt: !5790)
!6013 = !DILocation(line: 332, column: 9, scope: !5786, inlinedAt: !5790)
!6014 = !DILocation(line: 332, column: 15, scope: !5786, inlinedAt: !5790)
!6015 = !DILocation(line: 332, column: 2, scope: !5786, inlinedAt: !5790)
!6016 = !DILocation(line: 336, column: 1, scope: !5786, inlinedAt: !5790)
!6017 = !DILocation(line: 553, column: 5, scope: !5775, inlinedAt: !5778)
!6018 = !DILocation(line: 553, column: 41, scope: !5775, inlinedAt: !5778)
!6019 = !DILocation(line: 554, column: 5, scope: !5775, inlinedAt: !5778)
!6020 = !DILocation(line: 554, column: 12, scope: !5775, inlinedAt: !5778)
!6021 = !DILocation(line: 448, column: 31, scope: !5770, inlinedAt: !5774)
!6022 = !DILocation(line: 448, column: 34, scope: !5770, inlinedAt: !5774)
!6023 = !DILocation(line: 448, column: 14, scope: !5770, inlinedAt: !5774)
!6024 = !DILocation(line: 450, column: 22, scope: !5770, inlinedAt: !5774)
!6025 = !DILocation(line: 450, column: 25, scope: !5770, inlinedAt: !5774)
!6026 = !DILocation(line: 450, column: 30, scope: !5770, inlinedAt: !5774)
!6027 = !DILocation(line: 450, column: 36, scope: !5770, inlinedAt: !5774)
!6028 = !DILocation(line: 450, column: 8, scope: !5770, inlinedAt: !5774)
!6029 = !DILocation(line: 450, column: 6, scope: !5770, inlinedAt: !5774)
!6030 = !DILocation(line: 451, column: 9, scope: !5770, inlinedAt: !5774)
!6031 = !DILocation(line: 552, column: 3, scope: !5775, inlinedAt: !5778)
!6032 = !DILocation(line: 557, column: 19, scope: !5777, inlinedAt: !5778)
!6033 = !DILocation(line: 557, column: 25, scope: !5777, inlinedAt: !5778)
!6034 = !DILocation(line: 557, column: 9, scope: !5777, inlinedAt: !5778)
!6035 = !DILocation(line: 557, column: 2, scope: !5777, inlinedAt: !5778)
!6036 = !DILocation(line: 558, column: 1, scope: !5777, inlinedAt: !5778)
!6037 = !DILocation(line: 664, column: 2, scope: !5766)
!6038 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5348, file: !5348, line: 33, type: !5349, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6039 = !DILocalVariable(name: "list", arg: 1, scope: !6038, file: !5348, line: 33, type: !186)
!6040 = !DILocation(line: 33, column: 53, scope: !6038)
!6041 = !DILocation(line: 35, column: 2, scope: !6038)
!6042 = !DILocation(line: 35, column: 2, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6038, file: !5348, line: 35, column: 2)
!6044 = !DILocation(line: 35, column: 2, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6043, file: !5348, line: 35, column: 2)
!6046 = !DILocation(line: 35, column: 2, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6043, file: !5348, line: 35, column: 2)
!6048 = !DILocation(line: 36, column: 15, scope: !6038)
!6049 = !DILocation(line: 36, column: 2, scope: !6038)
!6050 = !DILocation(line: 36, column: 8, scope: !6038)
!6051 = !DILocation(line: 36, column: 13, scope: !6038)
!6052 = !DILocation(line: 37, column: 1, scope: !6038)
!6053 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !6054, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!178, !3672}
!6056 = !DILocalVariable(name: "dev", arg: 1, scope: !6053, file: !73, line: 609, type: !3672)
!6057 = !DILocation(line: 609, column: 57, scope: !6053)
!6058 = !DILocation(line: 612, column: 6, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6053, file: !73, line: 612, column: 6)
!6060 = !DILocation(line: 612, column: 11, scope: !6059)
!6061 = !DILocation(line: 612, column: 6, scope: !6053)
!6062 = !DILocation(line: 613, column: 10, scope: !6059)
!6063 = !DILocation(line: 613, column: 15, scope: !6059)
!6064 = !DILocation(line: 613, column: 3, scope: !6059)
!6065 = !DILocation(line: 615, column: 23, scope: !6053)
!6066 = !DILocation(line: 615, column: 28, scope: !6053)
!6067 = !DILocation(line: 615, column: 9, scope: !6053)
!6068 = !DILocation(line: 615, column: 2, scope: !6053)
!6069 = !DILocation(line: 616, column: 1, scope: !6053)
!6070 = distinct !DISubprogram(name: "kref_init", scope: !3326, file: !3326, line: 29, type: !5469, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6071 = !DILocalVariable(name: "kref", arg: 1, scope: !6070, file: !3326, line: 29, type: !5471)
!6072 = !DILocation(line: 29, column: 43, scope: !6070)
!6073 = !DILocation(line: 31, column: 16, scope: !6070)
!6074 = !DILocation(line: 31, column: 22, scope: !6070)
!6075 = !DILocation(line: 31, column: 2, scope: !6070)
!6076 = !DILocation(line: 32, column: 1, scope: !6070)
!6077 = distinct !DISubprogram(name: "gb_connection_init_name", scope: !3, file: !3, line: 105, type: !4171, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6078 = !DILocalVariable(name: "connection", arg: 1, scope: !6077, file: !3, line: 105, type: !162)
!6079 = !DILocation(line: 105, column: 59, scope: !6077)
!6080 = !DILocalVariable(name: "hd_cport_id", scope: !6077, file: !3, line: 107, type: !156)
!6081 = !DILocation(line: 107, column: 6, scope: !6077)
!6082 = !DILocation(line: 107, column: 20, scope: !6077)
!6083 = !DILocation(line: 107, column: 32, scope: !6077)
!6084 = !DILocalVariable(name: "cport_id", scope: !6077, file: !3, line: 108, type: !156)
!6085 = !DILocation(line: 108, column: 6, scope: !6077)
!6086 = !DILocalVariable(name: "intf_id", scope: !6077, file: !3, line: 109, type: !1314)
!6087 = !DILocation(line: 109, column: 5, scope: !6077)
!6088 = !DILocation(line: 111, column: 6, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 111, column: 6)
!6090 = !DILocation(line: 111, column: 18, scope: !6089)
!6091 = !DILocation(line: 111, column: 6, scope: !6077)
!6092 = !DILocation(line: 112, column: 13, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6089, file: !3, line: 111, column: 24)
!6094 = !DILocation(line: 112, column: 25, scope: !6093)
!6095 = !DILocation(line: 112, column: 31, scope: !6093)
!6096 = !DILocation(line: 112, column: 11, scope: !6093)
!6097 = !DILocation(line: 113, column: 14, scope: !6093)
!6098 = !DILocation(line: 113, column: 26, scope: !6093)
!6099 = !DILocation(line: 113, column: 12, scope: !6093)
!6100 = !DILocation(line: 114, column: 2, scope: !6093)
!6101 = !DILocation(line: 116, column: 11, scope: !6077)
!6102 = !DILocation(line: 116, column: 23, scope: !6077)
!6103 = !DILocation(line: 117, column: 16, scope: !6077)
!6104 = !DILocation(line: 117, column: 29, scope: !6077)
!6105 = !DILocation(line: 117, column: 38, scope: !6077)
!6106 = !DILocation(line: 116, column: 2, scope: !6077)
!6107 = !DILocation(line: 118, column: 1, scope: !6077)
!6108 = distinct !DISubprogram(name: "list_add", scope: !5348, file: !5348, line: 84, type: !6109, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6109 = !DISubroutineType(types: !6110)
!6110 = !{null, !186, !186}
!6111 = !DILocalVariable(name: "new", arg: 1, scope: !6108, file: !5348, line: 84, type: !186)
!6112 = !DILocation(line: 84, column: 47, scope: !6108)
!6113 = !DILocalVariable(name: "head", arg: 2, scope: !6108, file: !5348, line: 84, type: !186)
!6114 = !DILocation(line: 84, column: 70, scope: !6108)
!6115 = !DILocation(line: 86, column: 13, scope: !6108)
!6116 = !DILocation(line: 86, column: 18, scope: !6108)
!6117 = !DILocation(line: 86, column: 24, scope: !6108)
!6118 = !DILocation(line: 86, column: 30, scope: !6108)
!6119 = !DILocation(line: 86, column: 2, scope: !6108)
!6120 = !DILocation(line: 87, column: 1, scope: !6108)
!6121 = distinct !DISubprogram(name: "trace_gb_connection_create", scope: !4061, file: !4061, line: 201, type: !4171, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6122 = !DILocalVariable(name: "connection", arg: 1, scope: !6121, file: !4061, line: 201, type: !162)
!6123 = !DILocation(line: 201, column: 1, scope: !6121)
!6124 = distinct !DISubprogram(name: "ERR_PTR", scope: !6125, file: !6125, line: 24, type: !6126, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6125 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!6126 = !DISubroutineType(types: !6127)
!6127 = !{!161, !273}
!6128 = !DILocalVariable(name: "error", arg: 1, scope: !6124, file: !6125, line: 24, type: !273)
!6129 = !DILocation(line: 24, column: 48, scope: !6124)
!6130 = !DILocation(line: 26, column: 18, scope: !6124)
!6131 = !DILocation(line: 26, column: 9, scope: !6124)
!6132 = !DILocation(line: 26, column: 2, scope: !6124)
!6133 = distinct !DISubprogram(name: "get_order", scope: !6134, file: !6134, line: 29, type: !6135, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6134 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6135 = !DISubroutineType(types: !6136)
!6136 = !{!222, !287}
!6137 = !DILocalVariable(name: "x", arg: 1, scope: !6138, file: !6139, line: 366, type: !383)
!6138 = distinct !DISubprogram(name: "fls64", scope: !6139, file: !6139, line: 366, type: !6140, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6139 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6140 = !DISubroutineType(types: !6141)
!6141 = !{!222, !383}
!6142 = !DILocation(line: 366, column: 40, scope: !6138, inlinedAt: !6143)
!6143 = distinct !DILocation(line: 46, column: 9, scope: !6133)
!6144 = !DILocalVariable(name: "bitpos", scope: !6138, file: !6139, line: 368, type: !222)
!6145 = !DILocation(line: 368, column: 6, scope: !6138, inlinedAt: !6143)
!6146 = !DILocalVariable(name: "size", arg: 1, scope: !6133, file: !6134, line: 29, type: !287)
!6147 = !DILocation(line: 29, column: 63, scope: !6133)
!6148 = !DILocation(line: 31, column: 27, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6133, file: !6134, line: 31, column: 6)
!6150 = !DILocation(line: 31, column: 6, scope: !6149)
!6151 = !DILocation(line: 31, column: 6, scope: !6133)
!6152 = !DILocation(line: 32, column: 8, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6154, file: !6134, line: 32, column: 7)
!6154 = distinct !DILexicalBlock(scope: !6149, file: !6134, line: 31, column: 34)
!6155 = !DILocation(line: 32, column: 7, scope: !6154)
!6156 = !DILocation(line: 33, column: 4, scope: !6153)
!6157 = !DILocation(line: 35, column: 7, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6154, file: !6134, line: 35, column: 7)
!6159 = !DILocation(line: 35, column: 12, scope: !6158)
!6160 = !DILocation(line: 35, column: 7, scope: !6154)
!6161 = !DILocation(line: 36, column: 4, scope: !6158)
!6162 = !DILocation(line: 38, column: 10, scope: !6154)
!6163 = !DILocation(line: 38, column: 28, scope: !6154)
!6164 = !DILocation(line: 38, column: 41, scope: !6154)
!6165 = !DILocation(line: 38, column: 3, scope: !6154)
!6166 = !DILocation(line: 41, column: 6, scope: !6133)
!6167 = !DILocation(line: 42, column: 7, scope: !6133)
!6168 = !DILocation(line: 46, column: 15, scope: !6133)
!6169 = !DILocation(line: 374, column: 2, scope: !6138, inlinedAt: !6143)
!6170 = !DILocation(line: 376, column: 14, scope: !6138, inlinedAt: !6143)
!6171 = !{i32 324744}
!6172 = !DILocation(line: 377, column: 9, scope: !6138, inlinedAt: !6143)
!6173 = !DILocation(line: 377, column: 16, scope: !6138, inlinedAt: !6143)
!6174 = !DILocation(line: 46, column: 2, scope: !6133)
!6175 = !DILocation(line: 48, column: 1, scope: !6133)
!6176 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6177, file: !6177, line: 30, type: !6178, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6177 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!222, !382}
!6180 = !DILocation(line: 366, column: 40, scope: !6138, inlinedAt: !6181)
!6181 = distinct !DILocation(line: 32, column: 9, scope: !6176)
!6182 = !DILocation(line: 368, column: 6, scope: !6138, inlinedAt: !6181)
!6183 = !DILocalVariable(name: "n", arg: 1, scope: !6176, file: !6177, line: 30, type: !382)
!6184 = !DILocation(line: 30, column: 21, scope: !6176)
!6185 = !DILocation(line: 32, column: 15, scope: !6176)
!6186 = !DILocation(line: 374, column: 2, scope: !6138, inlinedAt: !6181)
!6187 = !DILocation(line: 376, column: 14, scope: !6138, inlinedAt: !6181)
!6188 = !DILocation(line: 377, column: 9, scope: !6138, inlinedAt: !6181)
!6189 = !DILocation(line: 377, column: 16, scope: !6138, inlinedAt: !6181)
!6190 = !DILocation(line: 32, column: 18, scope: !6176)
!6191 = !DILocation(line: 32, column: 2, scope: !6176)
!6192 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6193, file: !6193, line: 137, type: !6194, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6193 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6194 = !DISubroutineType(types: !6195)
!6195 = !{!161, !898, !2089, !284, !708}
!6196 = !DILocalVariable(name: "s", arg: 1, scope: !6192, file: !6193, line: 137, type: !898)
!6197 = !DILocation(line: 137, column: 54, scope: !6192)
!6198 = !DILocalVariable(name: "object", arg: 2, scope: !6192, file: !6193, line: 137, type: !2089)
!6199 = !DILocation(line: 137, column: 69, scope: !6192)
!6200 = !DILocalVariable(name: "size", arg: 3, scope: !6192, file: !6193, line: 138, type: !284)
!6201 = !DILocation(line: 138, column: 12, scope: !6192)
!6202 = !DILocalVariable(name: "flags", arg: 4, scope: !6192, file: !6193, line: 138, type: !708)
!6203 = !DILocation(line: 138, column: 24, scope: !6192)
!6204 = !DILocation(line: 140, column: 17, scope: !6192)
!6205 = !DILocation(line: 140, column: 2, scope: !6192)
!6206 = distinct !DISubprogram(name: "kobject_name", scope: !175, file: !175, line: 88, type: !6207, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6207 = !DISubroutineType(types: !6208)
!6208 = !{!178, !6209}
!6209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6210, size: 64)
!6210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!6211 = !DILocalVariable(name: "kobj", arg: 1, scope: !6206, file: !175, line: 88, type: !6209)
!6212 = !DILocation(line: 88, column: 62, scope: !6206)
!6213 = !DILocation(line: 90, column: 9, scope: !6206)
!6214 = !DILocation(line: 90, column: 15, scope: !6206)
!6215 = !DILocation(line: 90, column: 2, scope: !6206)
!6216 = distinct !DISubprogram(name: "refcount_set", scope: !124, file: !124, line: 134, type: !6217, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6217 = !DISubroutineType(types: !6218)
!6218 = !{null, !5484, !222}
!6219 = !DILocation(line: 39, column: 55, scope: !4209, inlinedAt: !6220)
!6220 = distinct !DILocation(line: 46, column: 2, scope: !4216, inlinedAt: !6221)
!6221 = distinct !DILocation(line: 136, column: 2, scope: !6216)
!6222 = !DILocation(line: 39, column: 62, scope: !4209, inlinedAt: !6220)
!6223 = !DILocation(line: 84, column: 74, scope: !4222, inlinedAt: !6224)
!6224 = distinct !DILocation(line: 45, column: 2, scope: !4216, inlinedAt: !6221)
!6225 = !DILocation(line: 84, column: 84, scope: !4222, inlinedAt: !6224)
!6226 = !DILocation(line: 43, column: 22, scope: !4216, inlinedAt: !6221)
!6227 = !DILocation(line: 43, column: 29, scope: !4216, inlinedAt: !6221)
!6228 = !DILocalVariable(name: "r", arg: 1, scope: !6216, file: !124, line: 134, type: !5484)
!6229 = !DILocation(line: 134, column: 45, scope: !6216)
!6230 = !DILocalVariable(name: "n", arg: 2, scope: !6216, file: !124, line: 134, type: !222)
!6231 = !DILocation(line: 134, column: 52, scope: !6216)
!6232 = !DILocation(line: 136, column: 14, scope: !6216)
!6233 = !DILocation(line: 136, column: 17, scope: !6216)
!6234 = !DILocation(line: 136, column: 23, scope: !6216)
!6235 = !DILocation(line: 45, column: 26, scope: !4216, inlinedAt: !6221)
!6236 = !DILocation(line: 86, column: 20, scope: !4222, inlinedAt: !6224)
!6237 = !DILocation(line: 86, column: 23, scope: !4222, inlinedAt: !6224)
!6238 = !DILocation(line: 86, column: 2, scope: !4222, inlinedAt: !6224)
!6239 = !DILocation(line: 87, column: 2, scope: !4222, inlinedAt: !6224)
!6240 = !DILocation(line: 46, column: 18, scope: !4216, inlinedAt: !6221)
!6241 = !DILocation(line: 46, column: 21, scope: !4216, inlinedAt: !6221)
!6242 = !DILocation(line: 41, column: 2, scope: !4340, inlinedAt: !6220)
!6243 = !DILocation(line: 137, column: 1, scope: !6216)
!6244 = distinct !DISubprogram(name: "__list_add", scope: !5348, file: !5348, line: 63, type: !6245, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6245 = !DISubroutineType(types: !6246)
!6246 = !{null, !186, !186, !186}
!6247 = !DILocalVariable(name: "new", arg: 1, scope: !6244, file: !5348, line: 63, type: !186)
!6248 = !DILocation(line: 63, column: 49, scope: !6244)
!6249 = !DILocalVariable(name: "prev", arg: 2, scope: !6244, file: !5348, line: 64, type: !186)
!6250 = !DILocation(line: 64, column: 28, scope: !6244)
!6251 = !DILocalVariable(name: "next", arg: 3, scope: !6244, file: !5348, line: 65, type: !186)
!6252 = !DILocation(line: 65, column: 28, scope: !6244)
!6253 = !DILocation(line: 67, column: 24, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6244, file: !5348, line: 67, column: 6)
!6255 = !DILocation(line: 67, column: 29, scope: !6254)
!6256 = !DILocation(line: 67, column: 35, scope: !6254)
!6257 = !DILocation(line: 67, column: 7, scope: !6254)
!6258 = !DILocation(line: 67, column: 6, scope: !6244)
!6259 = !DILocation(line: 68, column: 3, scope: !6254)
!6260 = !DILocation(line: 70, column: 15, scope: !6244)
!6261 = !DILocation(line: 70, column: 2, scope: !6244)
!6262 = !DILocation(line: 70, column: 8, scope: !6244)
!6263 = !DILocation(line: 70, column: 13, scope: !6244)
!6264 = !DILocation(line: 71, column: 14, scope: !6244)
!6265 = !DILocation(line: 71, column: 2, scope: !6244)
!6266 = !DILocation(line: 71, column: 7, scope: !6244)
!6267 = !DILocation(line: 71, column: 12, scope: !6244)
!6268 = !DILocation(line: 72, column: 14, scope: !6244)
!6269 = !DILocation(line: 72, column: 2, scope: !6244)
!6270 = !DILocation(line: 72, column: 7, scope: !6244)
!6271 = !DILocation(line: 72, column: 12, scope: !6244)
!6272 = !DILocation(line: 73, column: 2, scope: !6244)
!6273 = !DILocation(line: 73, column: 2, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6244, file: !5348, line: 73, column: 2)
!6275 = !DILocation(line: 73, column: 2, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6274, file: !5348, line: 73, column: 2)
!6277 = !DILocation(line: 73, column: 2, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6274, file: !5348, line: 73, column: 2)
!6279 = !DILocation(line: 74, column: 1, scope: !6244)
!6280 = distinct !DISubprogram(name: "__list_add_valid", scope: !5348, file: !5348, line: 45, type: !6281, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6281 = !DISubroutineType(types: !6282)
!6282 = !{!451, !186, !186, !186}
!6283 = !DILocalVariable(name: "new", arg: 1, scope: !6280, file: !5348, line: 45, type: !186)
!6284 = !DILocation(line: 45, column: 55, scope: !6280)
!6285 = !DILocalVariable(name: "prev", arg: 2, scope: !6280, file: !5348, line: 46, type: !186)
!6286 = !DILocation(line: 46, column: 23, scope: !6280)
!6287 = !DILocalVariable(name: "next", arg: 3, scope: !6280, file: !5348, line: 47, type: !186)
!6288 = !DILocation(line: 47, column: 23, scope: !6280)
!6289 = !DILocation(line: 49, column: 2, scope: !6280)
!6290 = distinct !DISubprogram(name: "gb_connection_hd_cport_enable", scope: !3, file: !3, line: 279, type: !4517, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6291 = !DILocalVariable(name: "connection", arg: 1, scope: !6290, file: !3, line: 279, type: !162)
!6292 = !DILocation(line: 279, column: 64, scope: !6290)
!6293 = !DILocalVariable(name: "hd", scope: !6290, file: !3, line: 281, type: !166)
!6294 = !DILocation(line: 281, column: 25, scope: !6290)
!6295 = !DILocation(line: 281, column: 30, scope: !6290)
!6296 = !DILocation(line: 281, column: 42, scope: !6290)
!6297 = !DILocalVariable(name: "ret", scope: !6290, file: !3, line: 282, type: !222)
!6298 = !DILocation(line: 282, column: 6, scope: !6290)
!6299 = !DILocation(line: 284, column: 7, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 284, column: 6)
!6301 = !DILocation(line: 284, column: 11, scope: !6300)
!6302 = !DILocation(line: 284, column: 19, scope: !6300)
!6303 = !DILocation(line: 284, column: 6, scope: !6290)
!6304 = !DILocation(line: 285, column: 3, scope: !6300)
!6305 = !DILocation(line: 287, column: 8, scope: !6290)
!6306 = !DILocation(line: 287, column: 12, scope: !6290)
!6307 = !DILocation(line: 287, column: 20, scope: !6290)
!6308 = !DILocation(line: 287, column: 33, scope: !6290)
!6309 = !DILocation(line: 287, column: 37, scope: !6290)
!6310 = !DILocation(line: 287, column: 49, scope: !6290)
!6311 = !DILocation(line: 288, column: 12, scope: !6290)
!6312 = !DILocation(line: 288, column: 24, scope: !6290)
!6313 = !DILocation(line: 287, column: 6, scope: !6290)
!6314 = !DILocation(line: 289, column: 6, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 289, column: 6)
!6316 = !DILocation(line: 289, column: 6, scope: !6290)
!6317 = !DILocation(line: 290, column: 3, scope: !6318)
!6318 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 289, column: 11)
!6319 = !DILocation(line: 292, column: 10, scope: !6318)
!6320 = !DILocation(line: 292, column: 3, scope: !6318)
!6321 = !DILocation(line: 295, column: 2, scope: !6290)
!6322 = !DILocation(line: 296, column: 1, scope: !6290)
!6323 = distinct !DISubprogram(name: "gb_connection_svc_connection_create", scope: !3, file: !3, line: 399, type: !4517, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6324 = !DILocalVariable(name: "connection", arg: 1, scope: !6323, file: !3, line: 399, type: !162)
!6325 = !DILocation(line: 399, column: 59, scope: !6323)
!6326 = !DILocalVariable(name: "hd", scope: !6323, file: !3, line: 401, type: !166)
!6327 = !DILocation(line: 401, column: 25, scope: !6323)
!6328 = !DILocation(line: 401, column: 30, scope: !6323)
!6329 = !DILocation(line: 401, column: 42, scope: !6323)
!6330 = !DILocalVariable(name: "intf", scope: !6323, file: !3, line: 402, type: !3909)
!6331 = !DILocation(line: 402, column: 23, scope: !6323)
!6332 = !DILocalVariable(name: "cport_flags", scope: !6323, file: !3, line: 403, type: !1314)
!6333 = !DILocation(line: 403, column: 5, scope: !6323)
!6334 = !DILocalVariable(name: "ret", scope: !6323, file: !3, line: 404, type: !222)
!6335 = !DILocation(line: 404, column: 6, scope: !6323)
!6336 = !DILocation(line: 406, column: 30, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 406, column: 6)
!6338 = !DILocation(line: 406, column: 6, scope: !6337)
!6339 = !DILocation(line: 406, column: 6, scope: !6323)
!6340 = !DILocation(line: 407, column: 3, scope: !6337)
!6341 = !DILocation(line: 409, column: 9, scope: !6323)
!6342 = !DILocation(line: 409, column: 21, scope: !6323)
!6343 = !DILocation(line: 409, column: 7, scope: !6323)
!6344 = !DILocation(line: 414, column: 14, scope: !6323)
!6345 = !DILocation(line: 415, column: 42, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 415, column: 6)
!6347 = !DILocation(line: 415, column: 6, scope: !6346)
!6348 = !DILocation(line: 415, column: 6, scope: !6323)
!6349 = !DILocation(line: 416, column: 15, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 415, column: 55)
!6351 = !DILocation(line: 417, column: 2, scope: !6350)
!6352 = !DILocation(line: 417, column: 41, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 417, column: 13)
!6354 = !DILocation(line: 417, column: 13, scope: !6353)
!6355 = !DILocation(line: 417, column: 13, scope: !6346)
!6356 = !DILocation(line: 418, column: 15, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 417, column: 54)
!6358 = !DILocation(line: 420, column: 2, scope: !6357)
!6359 = !DILocation(line: 422, column: 33, scope: !6323)
!6360 = !DILocation(line: 422, column: 37, scope: !6323)
!6361 = !DILocation(line: 423, column: 12, scope: !6323)
!6362 = !DILocation(line: 423, column: 16, scope: !6323)
!6363 = !DILocation(line: 423, column: 21, scope: !6323)
!6364 = !DILocation(line: 424, column: 12, scope: !6323)
!6365 = !DILocation(line: 424, column: 24, scope: !6323)
!6366 = !DILocation(line: 425, column: 12, scope: !6323)
!6367 = !DILocation(line: 425, column: 18, scope: !6323)
!6368 = !DILocation(line: 426, column: 12, scope: !6323)
!6369 = !DILocation(line: 426, column: 24, scope: !6323)
!6370 = !DILocation(line: 427, column: 12, scope: !6323)
!6371 = !DILocation(line: 422, column: 8, scope: !6323)
!6372 = !DILocation(line: 422, column: 6, scope: !6323)
!6373 = !DILocation(line: 428, column: 6, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 428, column: 6)
!6375 = !DILocation(line: 428, column: 6, scope: !6323)
!6376 = !DILocation(line: 429, column: 3, scope: !6377)
!6377 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 428, column: 11)
!6378 = !DILocation(line: 432, column: 10, scope: !6377)
!6379 = !DILocation(line: 432, column: 3, scope: !6377)
!6380 = !DILocation(line: 435, column: 2, scope: !6323)
!6381 = !DILocation(line: 436, column: 1, scope: !6323)
!6382 = distinct !DISubprogram(name: "gb_connection_hd_cport_connected", scope: !3, file: !3, line: 313, type: !4517, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6383 = !DILocalVariable(name: "connection", arg: 1, scope: !6382, file: !3, line: 313, type: !162)
!6384 = !DILocation(line: 313, column: 67, scope: !6382)
!6385 = !DILocalVariable(name: "hd", scope: !6382, file: !3, line: 315, type: !166)
!6386 = !DILocation(line: 315, column: 25, scope: !6382)
!6387 = !DILocation(line: 315, column: 30, scope: !6382)
!6388 = !DILocation(line: 315, column: 42, scope: !6382)
!6389 = !DILocalVariable(name: "ret", scope: !6382, file: !3, line: 316, type: !222)
!6390 = !DILocation(line: 316, column: 6, scope: !6382)
!6391 = !DILocation(line: 318, column: 7, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 318, column: 6)
!6393 = !DILocation(line: 318, column: 11, scope: !6392)
!6394 = !DILocation(line: 318, column: 19, scope: !6392)
!6395 = !DILocation(line: 318, column: 6, scope: !6382)
!6396 = !DILocation(line: 319, column: 3, scope: !6392)
!6397 = !DILocation(line: 321, column: 8, scope: !6382)
!6398 = !DILocation(line: 321, column: 12, scope: !6382)
!6399 = !DILocation(line: 321, column: 20, scope: !6382)
!6400 = !DILocation(line: 321, column: 36, scope: !6382)
!6401 = !DILocation(line: 321, column: 40, scope: !6382)
!6402 = !DILocation(line: 321, column: 52, scope: !6382)
!6403 = !DILocation(line: 321, column: 6, scope: !6382)
!6404 = !DILocation(line: 322, column: 6, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6382, file: !3, line: 322, column: 6)
!6406 = !DILocation(line: 322, column: 6, scope: !6382)
!6407 = !DILocation(line: 323, column: 3, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 322, column: 11)
!6409 = !DILocation(line: 325, column: 10, scope: !6408)
!6410 = !DILocation(line: 325, column: 3, scope: !6408)
!6411 = !DILocation(line: 328, column: 2, scope: !6382)
!6412 = !DILocation(line: 329, column: 1, scope: !6382)
!6413 = distinct !DISubprogram(name: "gb_connection_control_connected", scope: !3, file: !3, line: 452, type: !4517, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6414 = !DILocalVariable(name: "connection", arg: 1, scope: !6413, file: !3, line: 452, type: !162)
!6415 = !DILocation(line: 452, column: 66, scope: !6413)
!6416 = !DILocalVariable(name: "control", scope: !6413, file: !3, line: 454, type: !3914)
!6417 = !DILocation(line: 454, column: 21, scope: !6413)
!6418 = !DILocalVariable(name: "cport_id", scope: !6413, file: !3, line: 455, type: !156)
!6419 = !DILocation(line: 455, column: 6, scope: !6413)
!6420 = !DILocation(line: 455, column: 17, scope: !6413)
!6421 = !DILocation(line: 455, column: 29, scope: !6413)
!6422 = !DILocalVariable(name: "ret", scope: !6413, file: !3, line: 456, type: !222)
!6423 = !DILocation(line: 456, column: 6, scope: !6413)
!6424 = !DILocation(line: 458, column: 30, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 458, column: 6)
!6426 = !DILocation(line: 458, column: 6, scope: !6425)
!6427 = !DILocation(line: 458, column: 6, scope: !6413)
!6428 = !DILocation(line: 459, column: 3, scope: !6425)
!6429 = !DILocation(line: 461, column: 31, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 461, column: 6)
!6431 = !DILocation(line: 461, column: 6, scope: !6430)
!6432 = !DILocation(line: 461, column: 6, scope: !6413)
!6433 = !DILocation(line: 462, column: 3, scope: !6430)
!6434 = !DILocation(line: 464, column: 12, scope: !6413)
!6435 = !DILocation(line: 464, column: 24, scope: !6413)
!6436 = !DILocation(line: 464, column: 30, scope: !6413)
!6437 = !DILocation(line: 464, column: 10, scope: !6413)
!6438 = !DILocation(line: 466, column: 39, scope: !6413)
!6439 = !DILocation(line: 466, column: 48, scope: !6413)
!6440 = !DILocation(line: 466, column: 8, scope: !6413)
!6441 = !DILocation(line: 466, column: 6, scope: !6413)
!6442 = !DILocation(line: 467, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 467, column: 6)
!6444 = !DILocation(line: 467, column: 6, scope: !6413)
!6445 = !DILocation(line: 468, column: 3, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 467, column: 11)
!6447 = !DILocation(line: 470, column: 10, scope: !6446)
!6448 = !DILocation(line: 470, column: 3, scope: !6446)
!6449 = !DILocation(line: 473, column: 2, scope: !6413)
!6450 = !DILocation(line: 474, column: 1, scope: !6413)
!6451 = distinct !DISubprogram(name: "gb_connection_is_static", scope: !102, file: !102, line: 79, type: !6452, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6452 = !DISubroutineType(types: !6453)
!6453 = !{!451, !162}
!6454 = !DILocalVariable(name: "connection", arg: 1, scope: !6451, file: !102, line: 79, type: !162)
!6455 = !DILocation(line: 79, column: 66, scope: !6451)
!6456 = !DILocation(line: 81, column: 10, scope: !6451)
!6457 = !DILocation(line: 81, column: 22, scope: !6451)
!6458 = !DILocation(line: 81, column: 9, scope: !6451)
!6459 = !DILocation(line: 81, column: 2, scope: !6451)
!6460 = distinct !DISubprogram(name: "gb_connection_flow_control_disabled", scope: !102, file: !102, line: 105, type: !6452, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6461 = !DILocalVariable(name: "connection", arg: 1, scope: !6460, file: !102, line: 105, type: !162)
!6462 = !DILocation(line: 105, column: 59, scope: !6460)
!6463 = !DILocation(line: 107, column: 9, scope: !6460)
!6464 = !DILocation(line: 107, column: 21, scope: !6460)
!6465 = !DILocation(line: 107, column: 27, scope: !6460)
!6466 = !DILocation(line: 107, column: 2, scope: !6460)
!6467 = distinct !DISubprogram(name: "gb_connection_e2efc_enabled", scope: !102, file: !102, line: 99, type: !6452, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6468 = !DILocalVariable(name: "connection", arg: 1, scope: !6467, file: !102, line: 99, type: !162)
!6469 = !DILocation(line: 99, column: 70, scope: !6467)
!6470 = !DILocation(line: 101, column: 11, scope: !6467)
!6471 = !DILocation(line: 101, column: 23, scope: !6467)
!6472 = !DILocation(line: 101, column: 29, scope: !6467)
!6473 = !DILocation(line: 101, column: 9, scope: !6467)
!6474 = !DILocation(line: 101, column: 2, scope: !6467)
!6475 = distinct !DISubprogram(name: "gb_connection_is_control", scope: !102, file: !102, line: 115, type: !6452, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6476 = !DILocalVariable(name: "connection", arg: 1, scope: !6475, file: !102, line: 115, type: !162)
!6477 = !DILocation(line: 115, column: 67, scope: !6475)
!6478 = !DILocation(line: 117, column: 9, scope: !6475)
!6479 = !DILocation(line: 117, column: 21, scope: !6475)
!6480 = !DILocation(line: 117, column: 27, scope: !6475)
!6481 = !DILocation(line: 117, column: 2, scope: !6475)
!6482 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5421, file: !5421, line: 661, type: !1841, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6483 = !DILocalVariable(name: "__edi", scope: !6484, file: !5421, line: 663, type: !287)
!6484 = distinct !DILexicalBlock(scope: !6482, file: !5421, line: 663, column: 2)
!6485 = !DILocation(line: 663, column: 2, scope: !6484)
!6486 = !DILocalVariable(name: "__esi", scope: !6484, file: !5421, line: 663, type: !287)
!6487 = !DILocalVariable(name: "__edx", scope: !6484, file: !5421, line: 663, type: !287)
!6488 = !DILocalVariable(name: "__ecx", scope: !6484, file: !5421, line: 663, type: !287)
!6489 = !DILocalVariable(name: "__eax", scope: !6484, file: !5421, line: 663, type: !287)
!6490 = !{i32 -2145759241, i32 -2145758511, i32 -2145758277, i32 -2145758226, i32 -2145758198, i32 -2145758173, i32 -2145758489, i32 -2145758476, i32 -2145758038, i32 -2145757919, i32 -2145758384, i32 -2145758357, i32 -2145758329, i32 -2145758299}
!6491 = !DILocation(line: 664, column: 1, scope: !6482)
!6492 = distinct !DISubprogram(name: "list_empty", scope: !5348, file: !5348, line: 280, type: !6493, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6493 = !DISubroutineType(types: !6494)
!6494 = !{!222, !6495}
!6495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6496, size: 64)
!6496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!6497 = !DILocalVariable(name: "head", arg: 1, scope: !6492, file: !5348, line: 280, type: !6495)
!6498 = !DILocation(line: 280, column: 54, scope: !6492)
!6499 = !DILocation(line: 282, column: 9, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6492, file: !5348, line: 282, column: 9)
!6501 = !DILocation(line: 282, column: 9, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6500, file: !5348, line: 282, column: 9)
!6503 = !DILocation(line: 282, column: 34, scope: !6492)
!6504 = !DILocation(line: 282, column: 31, scope: !6492)
!6505 = !DILocation(line: 282, column: 2, scope: !6492)
!6506 = distinct !DISubprogram(name: "gb_operation_is_incoming", scope: !3821, file: !3821, line: 117, type: !6507, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6507 = !DISubroutineType(types: !6508)
!6508 = !{!451, !3824}
!6509 = !DILocalVariable(name: "operation", arg: 1, scope: !6506, file: !3821, line: 117, type: !3824)
!6510 = !DILocation(line: 117, column: 47, scope: !6506)
!6511 = !DILocation(line: 119, column: 9, scope: !6506)
!6512 = !DILocation(line: 119, column: 20, scope: !6506)
!6513 = !DILocation(line: 119, column: 26, scope: !6506)
!6514 = !DILocation(line: 119, column: 2, scope: !6506)
!6515 = distinct !DISubprogram(name: "gb_connection_cport_shutdown", scope: !3, file: !3, line: 554, type: !6516, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6516 = !DISubroutineType(types: !6517)
!6517 = !{!222, !162, !1314}
!6518 = !DILocalVariable(name: "connection", arg: 1, scope: !6515, file: !3, line: 554, type: !162)
!6519 = !DILocation(line: 554, column: 63, scope: !6515)
!6520 = !DILocalVariable(name: "phase", arg: 2, scope: !6515, file: !3, line: 555, type: !1314)
!6521 = !DILocation(line: 555, column: 9, scope: !6515)
!6522 = !DILocalVariable(name: "hd", scope: !6515, file: !3, line: 557, type: !166)
!6523 = !DILocation(line: 557, column: 25, scope: !6515)
!6524 = !DILocation(line: 557, column: 30, scope: !6515)
!6525 = !DILocation(line: 557, column: 42, scope: !6515)
!6526 = !DILocalVariable(name: "drv", scope: !6515, file: !3, line: 558, type: !3783)
!6527 = !DILocation(line: 558, column: 29, scope: !6515)
!6528 = !DILocation(line: 558, column: 35, scope: !6515)
!6529 = !DILocation(line: 558, column: 39, scope: !6515)
!6530 = !DILocalVariable(name: "ret", scope: !6515, file: !3, line: 559, type: !222)
!6531 = !DILocation(line: 559, column: 6, scope: !6515)
!6532 = !DILocation(line: 561, column: 30, scope: !6533)
!6533 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 561, column: 6)
!6534 = !DILocation(line: 561, column: 6, scope: !6533)
!6535 = !DILocation(line: 561, column: 6, scope: !6515)
!6536 = !DILocation(line: 562, column: 3, scope: !6533)
!6537 = !DILocation(line: 564, column: 33, scope: !6538)
!6538 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 564, column: 6)
!6539 = !DILocation(line: 564, column: 6, scope: !6538)
!6540 = !DILocation(line: 564, column: 6, scope: !6515)
!6541 = !DILocation(line: 565, column: 8, scope: !6542)
!6542 = distinct !DILexicalBlock(scope: !6543, file: !3, line: 565, column: 7)
!6543 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 564, column: 46)
!6544 = !DILocation(line: 565, column: 13, scope: !6542)
!6545 = !DILocation(line: 565, column: 7, scope: !6543)
!6546 = !DILocation(line: 566, column: 4, scope: !6542)
!6547 = !DILocation(line: 568, column: 9, scope: !6543)
!6548 = !DILocation(line: 568, column: 14, scope: !6543)
!6549 = !DILocation(line: 568, column: 29, scope: !6543)
!6550 = !DILocation(line: 568, column: 33, scope: !6543)
!6551 = !DILocation(line: 568, column: 45, scope: !6543)
!6552 = !DILocation(line: 568, column: 58, scope: !6543)
!6553 = !DILocation(line: 568, column: 7, scope: !6543)
!6554 = !DILocation(line: 570, column: 2, scope: !6543)
!6555 = !DILocation(line: 571, column: 42, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 570, column: 9)
!6557 = !DILocation(line: 571, column: 54, scope: !6556)
!6558 = !DILocation(line: 571, column: 9, scope: !6556)
!6559 = !DILocation(line: 571, column: 7, scope: !6556)
!6560 = !DILocation(line: 574, column: 6, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 574, column: 6)
!6562 = !DILocation(line: 574, column: 6, scope: !6515)
!6563 = !DILocation(line: 575, column: 3, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6561, file: !3, line: 574, column: 11)
!6565 = !DILocation(line: 577, column: 10, scope: !6564)
!6566 = !DILocation(line: 577, column: 3, scope: !6564)
!6567 = !DILocation(line: 580, column: 2, scope: !6515)
!6568 = !DILocation(line: 581, column: 1, scope: !6515)
!6569 = distinct !DISubprogram(name: "gb_connection_is_offloaded", scope: !102, file: !102, line: 110, type: !6452, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6570 = !DILocalVariable(name: "connection", arg: 1, scope: !6569, file: !102, line: 110, type: !162)
!6571 = !DILocation(line: 110, column: 69, scope: !6569)
!6572 = !DILocation(line: 112, column: 9, scope: !6569)
!6573 = !DILocation(line: 112, column: 21, scope: !6569)
!6574 = !DILocation(line: 112, column: 27, scope: !6569)
!6575 = !DILocation(line: 112, column: 2, scope: !6569)
!6576 = distinct !DISubprogram(name: "gb_connection_shutdown_operation", scope: !3, file: !3, line: 530, type: !6516, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6577 = !DILocalVariable(name: "connection", arg: 1, scope: !6576, file: !3, line: 530, type: !162)
!6578 = !DILocation(line: 530, column: 67, scope: !6576)
!6579 = !DILocalVariable(name: "phase", arg: 2, scope: !6576, file: !3, line: 531, type: !1314)
!6580 = !DILocation(line: 531, column: 13, scope: !6576)
!6581 = !DILocalVariable(name: "req", scope: !6576, file: !3, line: 533, type: !6582)
!6582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6583, size: 64)
!6583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_cport_shutdown_request", file: !3850, line: 59, size: 8, elements: !6584)
!6584 = !{!6585}
!6585 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !6583, file: !3850, line: 60, baseType: !1315, size: 8)
!6586 = !DILocation(line: 533, column: 36, scope: !6576)
!6587 = !DILocalVariable(name: "operation", scope: !6576, file: !3, line: 534, type: !3824)
!6588 = !DILocation(line: 534, column: 23, scope: !6576)
!6589 = !DILocalVariable(name: "ret", scope: !6576, file: !3, line: 535, type: !222)
!6590 = !DILocation(line: 535, column: 6, scope: !6576)
!6591 = !DILocation(line: 537, column: 39, scope: !6576)
!6592 = !DILocation(line: 537, column: 14, scope: !6576)
!6593 = !DILocation(line: 537, column: 12, scope: !6576)
!6594 = !DILocation(line: 541, column: 7, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6576, file: !3, line: 541, column: 6)
!6596 = !DILocation(line: 541, column: 6, scope: !6576)
!6597 = !DILocation(line: 542, column: 3, scope: !6595)
!6598 = !DILocation(line: 544, column: 8, scope: !6576)
!6599 = !DILocation(line: 544, column: 19, scope: !6576)
!6600 = !DILocation(line: 544, column: 28, scope: !6576)
!6601 = !DILocation(line: 544, column: 6, scope: !6576)
!6602 = !DILocation(line: 545, column: 15, scope: !6576)
!6603 = !DILocation(line: 545, column: 2, scope: !6576)
!6604 = !DILocation(line: 545, column: 7, scope: !6576)
!6605 = !DILocation(line: 545, column: 13, scope: !6576)
!6606 = !DILocation(line: 547, column: 39, scope: !6576)
!6607 = !DILocation(line: 547, column: 8, scope: !6576)
!6608 = !DILocation(line: 547, column: 6, scope: !6576)
!6609 = !DILocation(line: 549, column: 19, scope: !6576)
!6610 = !DILocation(line: 549, column: 2, scope: !6576)
!6611 = !DILocation(line: 551, column: 9, scope: !6576)
!6612 = !DILocation(line: 551, column: 2, scope: !6576)
!6613 = !DILocation(line: 552, column: 1, scope: !6576)
!6614 = distinct !DISubprogram(name: "gb_operation_request_send_sync", scope: !3821, file: !3821, line: 179, type: !3996, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6615 = !DILocalVariable(name: "operation", arg: 1, scope: !6614, file: !3821, line: 179, type: !3824)
!6616 = !DILocation(line: 179, column: 53, scope: !6614)
!6617 = !DILocation(line: 181, column: 48, scope: !6614)
!6618 = !DILocation(line: 181, column: 9, scope: !6614)
!6619 = !DILocation(line: 181, column: 2, scope: !6614)
!6620 = distinct !DISubprogram(name: "__list_del_entry", scope: !5348, file: !5348, line: 130, type: !5349, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6621 = !DILocalVariable(name: "entry", arg: 1, scope: !6620, file: !5348, line: 130, type: !186)
!6622 = !DILocation(line: 130, column: 55, scope: !6620)
!6623 = !DILocation(line: 132, column: 30, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6620, file: !5348, line: 132, column: 6)
!6625 = !DILocation(line: 132, column: 7, scope: !6624)
!6626 = !DILocation(line: 132, column: 6, scope: !6620)
!6627 = !DILocation(line: 133, column: 3, scope: !6624)
!6628 = !DILocation(line: 135, column: 13, scope: !6620)
!6629 = !DILocation(line: 135, column: 20, scope: !6620)
!6630 = !DILocation(line: 135, column: 26, scope: !6620)
!6631 = !DILocation(line: 135, column: 33, scope: !6620)
!6632 = !DILocation(line: 135, column: 2, scope: !6620)
!6633 = !DILocation(line: 136, column: 1, scope: !6620)
!6634 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5348, file: !5348, line: 51, type: !6635, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6635 = !DISubroutineType(types: !6636)
!6636 = !{!451, !186}
!6637 = !DILocalVariable(name: "entry", arg: 1, scope: !6634, file: !5348, line: 51, type: !186)
!6638 = !DILocation(line: 51, column: 61, scope: !6634)
!6639 = !DILocation(line: 53, column: 2, scope: !6634)
!6640 = distinct !DISubprogram(name: "__list_del", scope: !5348, file: !5348, line: 110, type: !6109, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!6641 = !DILocalVariable(name: "prev", arg: 1, scope: !6640, file: !5348, line: 110, type: !186)
!6642 = !DILocation(line: 110, column: 50, scope: !6640)
!6643 = !DILocalVariable(name: "next", arg: 2, scope: !6640, file: !5348, line: 110, type: !186)
!6644 = !DILocation(line: 110, column: 75, scope: !6640)
!6645 = !DILocation(line: 112, column: 15, scope: !6640)
!6646 = !DILocation(line: 112, column: 2, scope: !6640)
!6647 = !DILocation(line: 112, column: 8, scope: !6640)
!6648 = !DILocation(line: 112, column: 13, scope: !6640)
!6649 = !DILocation(line: 113, column: 2, scope: !6640)
!6650 = !DILocation(line: 113, column: 2, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6640, file: !5348, line: 113, column: 2)
!6652 = !DILocation(line: 113, column: 2, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6651, file: !5348, line: 113, column: 2)
!6654 = !DILocation(line: 113, column: 2, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6651, file: !5348, line: 113, column: 2)
!6656 = !DILocation(line: 114, column: 1, scope: !6640)
