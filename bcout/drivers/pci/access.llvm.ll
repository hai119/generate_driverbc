; ModuleID = '../bcout/drivers/pci/access.llvm.bc'
source_filename = "drivers/pci/access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
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
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.device_dma_parameters = type { i32, i64 }
%struct.pcie_link_state = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.pci_sysdata = type { i32, i32, %struct.acpi_device*, i8*, i8*, %struct.pci_dev* }
%struct.acpi_device = type opaque
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@pci_lock = dso_local global %struct.raw_spinlock undef, align 1, !dbg !0
@pci_generic_config_write32._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock undef, i32 1250, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !124
@__func__.pci_generic_config_write32 = private unnamed_addr constant [27 x i8] c"pci_generic_config_write32\00", align 1
@.str = private unnamed_addr constant [85 x i8] c"%d-byte config write to %04x:%02x:%02x.%d offset %#x may corrupt adjacent RW1C bits\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"drivers/pci/access.c\00", align 1
@pci_cfg_wait = internal global %struct.wait_queue_head { %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (%struct.wait_queue_head* @pci_cfg_wait to %struct.list_head*), %struct.list_head* bitcast (%struct.wait_queue_head* @pci_cfg_wait to %struct.list_head*) } }, align 8, !dbg !4036
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_bus_read_config_byte(%struct.pci_bus* %bus, i32 %devfn, i32 %pos, i8* %value) #0 !dbg !4044 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %data = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4048, metadata !DIExpression()), !dbg !4049
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4050, metadata !DIExpression()), !dbg !4049
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4051, metadata !DIExpression()), !dbg !4049
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !4052, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4053, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4054, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata i32* %data, metadata !4055, metadata !DIExpression()), !dbg !4049
  store i32 0, i32* %data, align 4, !dbg !4049
  br label %do.body, !dbg !4049

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %flags, align 8, !dbg !4056
  br label %do.end, !dbg !4056

do.end:                                           ; preds = %do.body
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4049
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 9, !dbg !4049
  %2 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4049
  %read = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %2, i32 0, i32 3, !dbg !4049
  %3 = load i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)** %read, align 8, !dbg !4049
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4049
  %5 = load i32, i32* %devfn.addr, align 4, !dbg !4049
  %6 = load i32, i32* %pos.addr, align 4, !dbg !4049
  %call = call i32 %3(%struct.pci_bus* %4, i32 %5, i32 %6, i32 1, i32* %data) #6, !dbg !4049
  store i32 %call, i32* %res, align 4, !dbg !4049
  %7 = load i32, i32* %data, align 4, !dbg !4049
  %conv = trunc i32 %7 to i8, !dbg !4049
  %8 = load i8*, i8** %value.addr, align 8, !dbg !4049
  store i8 %conv, i8* %8, align 1, !dbg !4049
  br label %do.body1, !dbg !4049

do.body1:                                         ; preds = %do.end
  %9 = load i64, i64* %flags, align 8, !dbg !4058
  br label %do.end2, !dbg !4058

do.end2:                                          ; preds = %do.body1
  %10 = load i32, i32* %res, align 4, !dbg !4049
  ret i32 %10, !dbg !4049
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_bus_read_config_word(%struct.pci_bus* %bus, i32 %devfn, i32 %pos, i16* %value) #0 !dbg !4060 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i16*, align 8
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %data = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4064, metadata !DIExpression()), !dbg !4065
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4066, metadata !DIExpression()), !dbg !4065
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4067, metadata !DIExpression()), !dbg !4065
  store i16* %value, i16** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %value.addr, metadata !4068, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4069, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4070, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.declare(metadata i32* %data, metadata !4071, metadata !DIExpression()), !dbg !4065
  store i32 0, i32* %data, align 4, !dbg !4065
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4072
  %and = and i32 %0, 1, !dbg !4072
  %tobool = icmp ne i32 %and, 0, !dbg !4072
  br i1 %tobool, label %if.then, label %if.end, !dbg !4065

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !4072
  br label %return, !dbg !4072

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4065

do.body:                                          ; preds = %if.end
  %1 = load i64, i64* %flags, align 8, !dbg !4074
  br label %do.end, !dbg !4074

do.end:                                           ; preds = %do.body
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4065
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 9, !dbg !4065
  %3 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4065
  %read = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %3, i32 0, i32 3, !dbg !4065
  %4 = load i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)** %read, align 8, !dbg !4065
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4065
  %6 = load i32, i32* %devfn.addr, align 4, !dbg !4065
  %7 = load i32, i32* %pos.addr, align 4, !dbg !4065
  %call = call i32 %4(%struct.pci_bus* %5, i32 %6, i32 %7, i32 2, i32* %data) #6, !dbg !4065
  store i32 %call, i32* %res, align 4, !dbg !4065
  %8 = load i32, i32* %data, align 4, !dbg !4065
  %conv = trunc i32 %8 to i16, !dbg !4065
  %9 = load i16*, i16** %value.addr, align 8, !dbg !4065
  store i16 %conv, i16* %9, align 2, !dbg !4065
  br label %do.body1, !dbg !4065

do.body1:                                         ; preds = %do.end
  %10 = load i64, i64* %flags, align 8, !dbg !4076
  br label %do.end2, !dbg !4076

do.end2:                                          ; preds = %do.body1
  %11 = load i32, i32* %res, align 4, !dbg !4065
  store i32 %11, i32* %retval, align 4, !dbg !4065
  br label %return, !dbg !4065

return:                                           ; preds = %do.end2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4065
  ret i32 %12, !dbg !4065
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_bus_read_config_dword(%struct.pci_bus* %bus, i32 %devfn, i32 %pos, i32* %value) #0 !dbg !4078 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i32*, align 8
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  %data = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4081, metadata !DIExpression()), !dbg !4082
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4083, metadata !DIExpression()), !dbg !4082
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4084, metadata !DIExpression()), !dbg !4082
  store i32* %value, i32** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %value.addr, metadata !4085, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4086, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4087, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.declare(metadata i32* %data, metadata !4088, metadata !DIExpression()), !dbg !4082
  store i32 0, i32* %data, align 4, !dbg !4082
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4089
  %and = and i32 %0, 3, !dbg !4089
  %tobool = icmp ne i32 %and, 0, !dbg !4089
  br i1 %tobool, label %if.then, label %if.end, !dbg !4082

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !4089
  br label %return, !dbg !4089

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4082

do.body:                                          ; preds = %if.end
  %1 = load i64, i64* %flags, align 8, !dbg !4091
  br label %do.end, !dbg !4091

do.end:                                           ; preds = %do.body
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4082
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 9, !dbg !4082
  %3 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4082
  %read = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %3, i32 0, i32 3, !dbg !4082
  %4 = load i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)** %read, align 8, !dbg !4082
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4082
  %6 = load i32, i32* %devfn.addr, align 4, !dbg !4082
  %7 = load i32, i32* %pos.addr, align 4, !dbg !4082
  %call = call i32 %4(%struct.pci_bus* %5, i32 %6, i32 %7, i32 4, i32* %data) #6, !dbg !4082
  store i32 %call, i32* %res, align 4, !dbg !4082
  %8 = load i32, i32* %data, align 4, !dbg !4082
  %9 = load i32*, i32** %value.addr, align 8, !dbg !4082
  store i32 %8, i32* %9, align 4, !dbg !4082
  br label %do.body1, !dbg !4082

do.body1:                                         ; preds = %do.end
  %10 = load i64, i64* %flags, align 8, !dbg !4093
  br label %do.end2, !dbg !4093

do.end2:                                          ; preds = %do.body1
  %11 = load i32, i32* %res, align 4, !dbg !4082
  store i32 %11, i32* %retval, align 4, !dbg !4082
  br label %return, !dbg !4082

return:                                           ; preds = %do.end2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4082
  ret i32 %12, !dbg !4082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_bus_write_config_byte(%struct.pci_bus* %bus, i32 %devfn, i32 %pos, i8 zeroext %value) #0 !dbg !4095 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i8, align 1
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4098, metadata !DIExpression()), !dbg !4099
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4100, metadata !DIExpression()), !dbg !4099
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4101, metadata !DIExpression()), !dbg !4099
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4102, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4103, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4104, metadata !DIExpression()), !dbg !4099
  br label %do.body, !dbg !4099

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %flags, align 8, !dbg !4105
  br label %do.end, !dbg !4105

do.end:                                           ; preds = %do.body
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4099
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 9, !dbg !4099
  %2 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4099
  %write = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %2, i32 0, i32 4, !dbg !4099
  %3 = load i32 (%struct.pci_bus*, i32, i32, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)** %write, align 8, !dbg !4099
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4099
  %5 = load i32, i32* %devfn.addr, align 4, !dbg !4099
  %6 = load i32, i32* %pos.addr, align 4, !dbg !4099
  %7 = load i8, i8* %value.addr, align 1, !dbg !4099
  %conv = zext i8 %7 to i32, !dbg !4099
  %call = call i32 %3(%struct.pci_bus* %4, i32 %5, i32 %6, i32 1, i32 %conv) #6, !dbg !4099
  store i32 %call, i32* %res, align 4, !dbg !4099
  br label %do.body1, !dbg !4099

do.body1:                                         ; preds = %do.end
  %8 = load i64, i64* %flags, align 8, !dbg !4107
  br label %do.end2, !dbg !4107

do.end2:                                          ; preds = %do.body1
  %9 = load i32, i32* %res, align 4, !dbg !4099
  ret i32 %9, !dbg !4099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_bus_write_config_word(%struct.pci_bus* %bus, i32 %devfn, i32 %pos, i16 zeroext %value) #0 !dbg !4109 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i16, align 2
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4112, metadata !DIExpression()), !dbg !4113
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4114, metadata !DIExpression()), !dbg !4113
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4115, metadata !DIExpression()), !dbg !4113
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !4116, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4117, metadata !DIExpression()), !dbg !4113
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4118, metadata !DIExpression()), !dbg !4113
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4119
  %and = and i32 %0, 1, !dbg !4119
  %tobool = icmp ne i32 %and, 0, !dbg !4119
  br i1 %tobool, label %if.then, label %if.end, !dbg !4113

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !4119
  br label %return, !dbg !4119

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4113

do.body:                                          ; preds = %if.end
  %1 = load i64, i64* %flags, align 8, !dbg !4121
  br label %do.end, !dbg !4121

do.end:                                           ; preds = %do.body
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4113
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 9, !dbg !4113
  %3 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4113
  %write = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %3, i32 0, i32 4, !dbg !4113
  %4 = load i32 (%struct.pci_bus*, i32, i32, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)** %write, align 8, !dbg !4113
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4113
  %6 = load i32, i32* %devfn.addr, align 4, !dbg !4113
  %7 = load i32, i32* %pos.addr, align 4, !dbg !4113
  %8 = load i16, i16* %value.addr, align 2, !dbg !4113
  %conv = zext i16 %8 to i32, !dbg !4113
  %call = call i32 %4(%struct.pci_bus* %5, i32 %6, i32 %7, i32 2, i32 %conv) #6, !dbg !4113
  store i32 %call, i32* %res, align 4, !dbg !4113
  br label %do.body1, !dbg !4113

do.body1:                                         ; preds = %do.end
  %9 = load i64, i64* %flags, align 8, !dbg !4123
  br label %do.end2, !dbg !4123

do.end2:                                          ; preds = %do.body1
  %10 = load i32, i32* %res, align 4, !dbg !4113
  store i32 %10, i32* %retval, align 4, !dbg !4113
  br label %return, !dbg !4113

return:                                           ; preds = %do.end2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4113
  ret i32 %11, !dbg !4113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_bus_write_config_dword(%struct.pci_bus* %bus, i32 %devfn, i32 %pos, i32 %value) #0 !dbg !4125 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %pos.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %flags = alloca i64, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4128, metadata !DIExpression()), !dbg !4129
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4130, metadata !DIExpression()), !dbg !4129
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4131, metadata !DIExpression()), !dbg !4129
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4132, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4133, metadata !DIExpression()), !dbg !4129
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4134, metadata !DIExpression()), !dbg !4129
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4135
  %and = and i32 %0, 3, !dbg !4135
  %tobool = icmp ne i32 %and, 0, !dbg !4135
  br i1 %tobool, label %if.then, label %if.end, !dbg !4129

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !4135
  br label %return, !dbg !4135

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4129

do.body:                                          ; preds = %if.end
  %1 = load i64, i64* %flags, align 8, !dbg !4137
  br label %do.end, !dbg !4137

do.end:                                           ; preds = %do.body
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4129
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 9, !dbg !4129
  %3 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4129
  %write = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %3, i32 0, i32 4, !dbg !4129
  %4 = load i32 (%struct.pci_bus*, i32, i32, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)** %write, align 8, !dbg !4129
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4129
  %6 = load i32, i32* %devfn.addr, align 4, !dbg !4129
  %7 = load i32, i32* %pos.addr, align 4, !dbg !4129
  %8 = load i32, i32* %value.addr, align 4, !dbg !4129
  %call = call i32 %4(%struct.pci_bus* %5, i32 %6, i32 %7, i32 4, i32 %8) #6, !dbg !4129
  store i32 %call, i32* %res, align 4, !dbg !4129
  br label %do.body1, !dbg !4129

do.body1:                                         ; preds = %do.end
  %9 = load i64, i64* %flags, align 8, !dbg !4139
  br label %do.end2, !dbg !4139

do.end2:                                          ; preds = %do.body1
  %10 = load i32, i32* %res, align 4, !dbg !4129
  store i32 %10, i32* %retval, align 4, !dbg !4129
  br label %return, !dbg !4129

return:                                           ; preds = %do.end2, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !4129
  ret i32 %11, !dbg !4129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_generic_config_read(%struct.pci_bus* %bus, i32 %devfn, i32 %where, i32 %size, i32* %val) #0 !dbg !4141 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %addr = alloca i8*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4144, metadata !DIExpression()), !dbg !4145
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !4146, metadata !DIExpression()), !dbg !4147
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4148, metadata !DIExpression()), !dbg !4149
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !4150, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4154
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 9, !dbg !4155
  %1 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4155
  %map_bus = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %1, i32 0, i32 2, !dbg !4156
  %2 = load i8* (%struct.pci_bus*, i32, i32)*, i8* (%struct.pci_bus*, i32, i32)** %map_bus, align 8, !dbg !4156
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4157
  %4 = load i32, i32* %devfn.addr, align 4, !dbg !4158
  %5 = load i32, i32* %where.addr, align 4, !dbg !4159
  %call = call i8* %2(%struct.pci_bus* %3, i32 %4, i32 %5) #6, !dbg !4154
  store i8* %call, i8** %addr, align 8, !dbg !4160
  %6 = load i8*, i8** %addr, align 8, !dbg !4161
  %tobool = icmp ne i8* %6, null, !dbg !4161
  br i1 %tobool, label %if.end, label %if.then, !dbg !4163

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %val.addr, align 8, !dbg !4164
  store i32 -1, i32* %7, align 4, !dbg !4166
  store i32 134, i32* %retval, align 4, !dbg !4167
  br label %return, !dbg !4167

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %size.addr, align 4, !dbg !4168
  %cmp = icmp eq i32 %8, 1, !dbg !4170
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4171

if.then1:                                         ; preds = %if.end
  %9 = load i8*, i8** %addr, align 8, !dbg !4172
  %call2 = call zeroext i8 @readb(i8* %9) #6, !dbg !4173
  %conv = zext i8 %call2 to i32, !dbg !4173
  %10 = load i32*, i32** %val.addr, align 8, !dbg !4174
  store i32 %conv, i32* %10, align 4, !dbg !4175
  br label %if.end11, !dbg !4176

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %size.addr, align 4, !dbg !4177
  %cmp3 = icmp eq i32 %11, 2, !dbg !4179
  br i1 %cmp3, label %if.then5, label %if.else8, !dbg !4180

if.then5:                                         ; preds = %if.else
  %12 = load i8*, i8** %addr, align 8, !dbg !4181
  %call6 = call zeroext i16 @readw(i8* %12) #6, !dbg !4182
  %conv7 = zext i16 %call6 to i32, !dbg !4182
  %13 = load i32*, i32** %val.addr, align 8, !dbg !4183
  store i32 %conv7, i32* %13, align 4, !dbg !4184
  br label %if.end10, !dbg !4185

if.else8:                                         ; preds = %if.else
  %14 = load i8*, i8** %addr, align 8, !dbg !4186
  %call9 = call i32 @readl(i8* %14) #6, !dbg !4187
  %15 = load i32*, i32** %val.addr, align 8, !dbg !4188
  store i32 %call9, i32* %15, align 4, !dbg !4189
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then1
  store i32 0, i32* %retval, align 4, !dbg !4190
  br label %return, !dbg !4190

return:                                           ; preds = %if.end11, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4191
  ret i32 %16, !dbg !4191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !4192 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !4201, metadata !DIExpression()), !dbg !4200
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4200
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #5, !dbg !4200, !srcloc !4202
  store i8 %1, i8* %ret, align 1, !dbg !4200
  %2 = load i8, i8* %ret, align 1, !dbg !4200
  ret i8 %2, !dbg !4200
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @readw(i8* %addr) #0 !dbg !4203 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i16, align 2
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4206, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !4208, metadata !DIExpression()), !dbg !4207
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4207
  %1 = bitcast i8* %0 to i16*, !dbg !4207
  %2 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16* %1) #5, !dbg !4207, !srcloc !4209
  store i16 %2, i16* %ret, align 2, !dbg !4207
  %3 = load i16, i16* %ret, align 2, !dbg !4207
  ret i16 %3, !dbg !4207
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !4210 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4215, metadata !DIExpression()), !dbg !4214
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !4214
  %1 = bitcast i8* %0 to i32*, !dbg !4214
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !4214, !srcloc !4216
  store i32 %2, i32* %ret, align 4, !dbg !4214
  %3 = load i32, i32* %ret, align 4, !dbg !4214
  ret i32 %3, !dbg !4214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_generic_config_write(%struct.pci_bus* %bus, i32 %devfn, i32 %where, i32 %size, i32 %val) #0 !dbg !4217 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %addr = alloca i8*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4218, metadata !DIExpression()), !dbg !4219
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4220, metadata !DIExpression()), !dbg !4221
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !4222, metadata !DIExpression()), !dbg !4223
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4224, metadata !DIExpression()), !dbg !4225
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !4228, metadata !DIExpression()), !dbg !4229
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4230
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 9, !dbg !4231
  %1 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4231
  %map_bus = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %1, i32 0, i32 2, !dbg !4232
  %2 = load i8* (%struct.pci_bus*, i32, i32)*, i8* (%struct.pci_bus*, i32, i32)** %map_bus, align 8, !dbg !4232
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4233
  %4 = load i32, i32* %devfn.addr, align 4, !dbg !4234
  %5 = load i32, i32* %where.addr, align 4, !dbg !4235
  %call = call i8* %2(%struct.pci_bus* %3, i32 %4, i32 %5) #6, !dbg !4230
  store i8* %call, i8** %addr, align 8, !dbg !4236
  %6 = load i8*, i8** %addr, align 8, !dbg !4237
  %tobool = icmp ne i8* %6, null, !dbg !4237
  br i1 %tobool, label %if.end, label %if.then, !dbg !4239

if.then:                                          ; preds = %entry
  store i32 134, i32* %retval, align 4, !dbg !4240
  br label %return, !dbg !4240

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %size.addr, align 4, !dbg !4241
  %cmp = icmp eq i32 %7, 1, !dbg !4243
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4244

if.then1:                                         ; preds = %if.end
  %8 = load i32, i32* %val.addr, align 4, !dbg !4245
  %conv = trunc i32 %8 to i8, !dbg !4245
  %9 = load i8*, i8** %addr, align 8, !dbg !4246
  call void @writeb(i8 zeroext %conv, i8* %9) #6, !dbg !4247
  br label %if.end8, !dbg !4247

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %size.addr, align 4, !dbg !4248
  %cmp2 = icmp eq i32 %10, 2, !dbg !4250
  br i1 %cmp2, label %if.then4, label %if.else6, !dbg !4251

if.then4:                                         ; preds = %if.else
  %11 = load i32, i32* %val.addr, align 4, !dbg !4252
  %conv5 = trunc i32 %11 to i16, !dbg !4252
  %12 = load i8*, i8** %addr, align 8, !dbg !4253
  call void @writew(i16 zeroext %conv5, i8* %12) #6, !dbg !4254
  br label %if.end7, !dbg !4254

if.else6:                                         ; preds = %if.else
  %13 = load i32, i32* %val.addr, align 4, !dbg !4255
  %14 = load i8*, i8** %addr, align 8, !dbg !4256
  call void @writel(i32 %13, i8* %14) #6, !dbg !4257
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then1
  store i32 0, i32* %retval, align 4, !dbg !4258
  br label %return, !dbg !4258

return:                                           ; preds = %if.end8, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4259
  ret i32 %15, !dbg !4259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !4260 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4264, metadata !DIExpression()), !dbg !4265
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4266, metadata !DIExpression()), !dbg !4265
  %0 = load i8, i8* %val.addr, align 1, !dbg !4265
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4265
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #5, !dbg !4265, !srcloc !4267
  ret void, !dbg !4265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #0 !dbg !4268 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !4271, metadata !DIExpression()), !dbg !4272
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4273, metadata !DIExpression()), !dbg !4272
  %0 = load i16, i16* %val.addr, align 2, !dbg !4272
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4272
  %2 = bitcast i8* %1 to i16*, !dbg !4272
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #5, !dbg !4272, !srcloc !4274
  ret void, !dbg !4272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !4275 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4278, metadata !DIExpression()), !dbg !4279
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4280, metadata !DIExpression()), !dbg !4279
  %0 = load i32, i32* %val.addr, align 4, !dbg !4279
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4279
  %2 = bitcast i8* %1 to i32*, !dbg !4279
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !4279, !srcloc !4281
  ret void, !dbg !4279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_generic_config_read32(%struct.pci_bus* %bus, i32 %devfn, i32 %where, i32 %size, i32* %val) #0 !dbg !4282 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %addr = alloca i8*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4289, metadata !DIExpression()), !dbg !4290
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !4291, metadata !DIExpression()), !dbg !4292
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !4293, metadata !DIExpression()), !dbg !4294
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4295
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 9, !dbg !4296
  %1 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4296
  %map_bus = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %1, i32 0, i32 2, !dbg !4297
  %2 = load i8* (%struct.pci_bus*, i32, i32)*, i8* (%struct.pci_bus*, i32, i32)** %map_bus, align 8, !dbg !4297
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4298
  %4 = load i32, i32* %devfn.addr, align 4, !dbg !4299
  %5 = load i32, i32* %where.addr, align 4, !dbg !4300
  %and = and i32 %5, -4, !dbg !4301
  %call = call i8* %2(%struct.pci_bus* %3, i32 %4, i32 %and) #6, !dbg !4295
  store i8* %call, i8** %addr, align 8, !dbg !4302
  %6 = load i8*, i8** %addr, align 8, !dbg !4303
  %tobool = icmp ne i8* %6, null, !dbg !4303
  br i1 %tobool, label %if.end, label %if.then, !dbg !4305

if.then:                                          ; preds = %entry
  %7 = load i32*, i32** %val.addr, align 8, !dbg !4306
  store i32 -1, i32* %7, align 4, !dbg !4308
  store i32 134, i32* %retval, align 4, !dbg !4309
  br label %return, !dbg !4309

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %addr, align 8, !dbg !4310
  %call1 = call i32 @readl(i8* %8) #6, !dbg !4311
  %9 = load i32*, i32** %val.addr, align 8, !dbg !4312
  store i32 %call1, i32* %9, align 4, !dbg !4313
  %10 = load i32, i32* %size.addr, align 4, !dbg !4314
  %cmp = icmp sle i32 %10, 2, !dbg !4316
  br i1 %cmp, label %if.then2, label %if.end6, !dbg !4317

if.then2:                                         ; preds = %if.end
  %11 = load i32*, i32** %val.addr, align 8, !dbg !4318
  %12 = load i32, i32* %11, align 4, !dbg !4319
  %13 = load i32, i32* %where.addr, align 4, !dbg !4320
  %and3 = and i32 %13, 3, !dbg !4321
  %mul = mul i32 8, %and3, !dbg !4322
  %shr = lshr i32 %12, %mul, !dbg !4323
  %14 = load i32, i32* %size.addr, align 4, !dbg !4324
  %mul4 = mul i32 %14, 8, !dbg !4325
  %shl = shl i32 1, %mul4, !dbg !4326
  %sub = sub i32 %shl, 1, !dbg !4327
  %and5 = and i32 %shr, %sub, !dbg !4328
  %15 = load i32*, i32** %val.addr, align 8, !dbg !4329
  store i32 %and5, i32* %15, align 4, !dbg !4330
  br label %if.end6, !dbg !4331

if.end6:                                          ; preds = %if.then2, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4332
  br label %return, !dbg !4332

return:                                           ; preds = %if.end6, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4333
  ret i32 %16, !dbg !4333
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_generic_config_write32(%struct.pci_bus* %bus, i32 %devfn, i32 %where, i32 %size, i32 %val) #0 !dbg !126 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %devfn.addr = alloca i32, align 4
  %where.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %addr = alloca i8*, align 8
  %mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4334, metadata !DIExpression()), !dbg !4335
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !4338, metadata !DIExpression()), !dbg !4339
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4340, metadata !DIExpression()), !dbg !4341
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4342, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.declare(metadata i8** %addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4346, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !4348, metadata !DIExpression()), !dbg !4349
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4350
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 9, !dbg !4351
  %1 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4351
  %map_bus = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %1, i32 0, i32 2, !dbg !4352
  %2 = load i8* (%struct.pci_bus*, i32, i32)*, i8* (%struct.pci_bus*, i32, i32)** %map_bus, align 8, !dbg !4352
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4353
  %4 = load i32, i32* %devfn.addr, align 4, !dbg !4354
  %5 = load i32, i32* %where.addr, align 4, !dbg !4355
  %and = and i32 %5, -4, !dbg !4356
  %call = call i8* %2(%struct.pci_bus* %3, i32 %4, i32 %and) #6, !dbg !4350
  store i8* %call, i8** %addr, align 8, !dbg !4357
  %6 = load i8*, i8** %addr, align 8, !dbg !4358
  %tobool = icmp ne i8* %6, null, !dbg !4358
  br i1 %tobool, label %if.end, label %if.then, !dbg !4360

if.then:                                          ; preds = %entry
  store i32 134, i32* %retval, align 4, !dbg !4361
  br label %return, !dbg !4361

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %size.addr, align 4, !dbg !4362
  %cmp = icmp eq i32 %7, 4, !dbg !4364
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4365

if.then1:                                         ; preds = %if.end
  %8 = load i32, i32* %val.addr, align 4, !dbg !4366
  %9 = load i8*, i8** %addr, align 8, !dbg !4368
  call void @writel(i32 %8, i8* %9) #6, !dbg !4369
  store i32 0, i32* %retval, align 4, !dbg !4370
  br label %return, !dbg !4370

if.end2:                                          ; preds = %if.end
  br label %do.body, !dbg !4371

do.body:                                          ; preds = %if.end2
  %call3 = call i32 @___ratelimit(%struct.ratelimit_state* @pci_generic_config_write32._rs, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.pci_generic_config_write32, i64 0, i64 0)) #6, !dbg !4372
  %tobool4 = icmp ne i32 %call3, 0, !dbg !4372
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !4375

if.then5:                                         ; preds = %do.body
  %10 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4372
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 21, !dbg !4372
  %11 = load i32, i32* %size.addr, align 4, !dbg !4372
  %12 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4372
  %call6 = call i32 @pci_domain_nr(%struct.pci_bus* %12) #6, !dbg !4372
  %13 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4372
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 13, !dbg !4372
  %14 = load i8, i8* %number, align 8, !dbg !4372
  %conv = zext i8 %14 to i32, !dbg !4372
  %15 = load i32, i32* %devfn.addr, align 4, !dbg !4372
  %shr = lshr i32 %15, 3, !dbg !4372
  %and7 = and i32 %shr, 31, !dbg !4372
  %16 = load i32, i32* %devfn.addr, align 4, !dbg !4372
  %and8 = and i32 %16, 7, !dbg !4372
  %17 = load i32, i32* %where.addr, align 4, !dbg !4372
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %call6, i32 %conv, i32 %and7, i32 %and8, i32 %17) #7, !dbg !4372
  br label %if.end9, !dbg !4372

if.end9:                                          ; preds = %if.then5, %do.body
  br label %do.end, !dbg !4375

do.end:                                           ; preds = %if.end9
  %18 = load i32, i32* %size.addr, align 4, !dbg !4376
  %mul = mul i32 %18, 8, !dbg !4377
  %shl = shl i32 1, %mul, !dbg !4378
  %sub = sub i32 %shl, 1, !dbg !4379
  %19 = load i32, i32* %where.addr, align 4, !dbg !4380
  %and10 = and i32 %19, 3, !dbg !4381
  %mul11 = mul i32 %and10, 8, !dbg !4382
  %shl12 = shl i32 %sub, %mul11, !dbg !4383
  %neg = xor i32 %shl12, -1, !dbg !4384
  store i32 %neg, i32* %mask, align 4, !dbg !4385
  %20 = load i8*, i8** %addr, align 8, !dbg !4386
  %call13 = call i32 @readl(i8* %20) #6, !dbg !4387
  %21 = load i32, i32* %mask, align 4, !dbg !4388
  %and14 = and i32 %call13, %21, !dbg !4389
  store i32 %and14, i32* %tmp, align 4, !dbg !4390
  %22 = load i32, i32* %val.addr, align 4, !dbg !4391
  %23 = load i32, i32* %where.addr, align 4, !dbg !4392
  %and15 = and i32 %23, 3, !dbg !4393
  %mul16 = mul i32 %and15, 8, !dbg !4394
  %shl17 = shl i32 %22, %mul16, !dbg !4395
  %24 = load i32, i32* %tmp, align 4, !dbg !4396
  %or = or i32 %24, %shl17, !dbg !4396
  store i32 %or, i32* %tmp, align 4, !dbg !4396
  %25 = load i32, i32* %tmp, align 4, !dbg !4397
  %26 = load i8*, i8** %addr, align 8, !dbg !4398
  call void @writel(i32 %25, i8* %26) #6, !dbg !4399
  store i32 0, i32* %retval, align 4, !dbg !4400
  br label %return, !dbg !4400

return:                                           ; preds = %do.end, %if.then1, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !4401
  ret i32 %27, !dbg !4401
}

; Function Attrs: noredzone
declare dso_local i32 @___ratelimit(%struct.ratelimit_state*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_domain_nr(%struct.pci_bus* %bus) #0 !dbg !4402 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4406
  %call = call %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %0) #6, !dbg !4407
  %domain = getelementptr inbounds %struct.pci_sysdata, %struct.pci_sysdata* %call, i32 0, i32 0, !dbg !4408
  %1 = load i32, i32* %domain, align 8, !dbg !4408
  ret i32 %1, !dbg !4409
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pci_ops* @pci_bus_set_ops(%struct.pci_bus* %bus, %struct.pci_ops* %ops) #0 !dbg !4410 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %ops.addr = alloca %struct.pci_ops*, align 8
  %old_ops = alloca %struct.pci_ops*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy19 = alloca i64, align 8
  %__dummy220 = alloca i64, align 8
  %tmp23 = alloca i32, align 4
  %__dummy27 = alloca i64, align 8
  %__dummy228 = alloca i64, align 8
  %tmp31 = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  store %struct.pci_ops* %ops, %struct.pci_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_ops** %ops.addr, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.declare(metadata %struct.pci_ops** %old_ops, metadata !4417, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4419, metadata !DIExpression()), !dbg !4420
  br label %do.body, !dbg !4421

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4422, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4426, metadata !DIExpression()), !dbg !4425
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4425
  %conv = zext i1 %cmp to i32, !dbg !4425
  store i32 1, i32* %tmp, align 4, !dbg !4425
  %0 = load i32, i32* %tmp, align 4, !dbg !4425
  br label %do.body1, !dbg !4427

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4428

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4430

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !4432, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !4436, metadata !DIExpression()), !dbg !4435
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !4435
  %conv7 = zext i1 %cmp6 to i32, !dbg !4435
  store i32 1, i32* %tmp8, align 4, !dbg !4435
  %1 = load i32, i32* %tmp8, align 4, !dbg !4435
  %call = call i64 @arch_local_irq_save() #6, !dbg !4437
  store i64 %call, i64* %flags, align 8, !dbg !4437
  br label %do.end, !dbg !4437

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !4430

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !4428

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4438, !srcloc !4440
  br label %do.body11, !dbg !4438

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4441

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4438

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !4428

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !4427

do.end15:                                         ; preds = %do.end14
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4443
  %ops16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 9, !dbg !4444
  %3 = load %struct.pci_ops*, %struct.pci_ops** %ops16, align 8, !dbg !4444
  store %struct.pci_ops* %3, %struct.pci_ops** %old_ops, align 8, !dbg !4445
  %4 = load %struct.pci_ops*, %struct.pci_ops** %ops.addr, align 8, !dbg !4446
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4447
  %ops17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 9, !dbg !4448
  store %struct.pci_ops* %4, %struct.pci_ops** %ops17, align 8, !dbg !4449
  br label %do.body18, !dbg !4450

do.body18:                                        ; preds = %do.end15
  call void @llvm.dbg.declare(metadata i64* %__dummy19, metadata !4451, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.declare(metadata i64* %__dummy220, metadata !4455, metadata !DIExpression()), !dbg !4454
  %cmp21 = icmp eq i64* %__dummy19, %__dummy220, !dbg !4454
  %conv22 = zext i1 %cmp21 to i32, !dbg !4454
  store i32 1, i32* %tmp23, align 4, !dbg !4454
  %6 = load i32, i32* %tmp23, align 4, !dbg !4454
  br label %do.body24, !dbg !4456

do.body24:                                        ; preds = %do.body18
  br label %do.body25, !dbg !4457

do.body25:                                        ; preds = %do.body24
  br label %do.body26, !dbg !4459

do.body26:                                        ; preds = %do.body25
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !4461, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.declare(metadata i64* %__dummy228, metadata !4465, metadata !DIExpression()), !dbg !4464
  %cmp29 = icmp eq i64* %__dummy27, %__dummy228, !dbg !4464
  %conv30 = zext i1 %cmp29 to i32, !dbg !4464
  store i32 1, i32* %tmp31, align 4, !dbg !4464
  %7 = load i32, i32* %tmp31, align 4, !dbg !4464
  %8 = load i64, i64* %flags, align 8, !dbg !4466
  call void @arch_local_irq_restore(i64 %8) #6, !dbg !4466
  br label %do.end32, !dbg !4466

do.end32:                                         ; preds = %do.body26
  br label %do.end33, !dbg !4459

do.end33:                                         ; preds = %do.end32
  br label %do.body34, !dbg !4457

do.body34:                                        ; preds = %do.end33
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4467, !srcloc !4469
  br label %do.body35, !dbg !4467

do.body35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4470

do.end36:                                         ; preds = %do.body35
  br label %do.end37, !dbg !4467

do.end37:                                         ; preds = %do.end36
  br label %do.end38, !dbg !4457

do.end38:                                         ; preds = %do.end37
  br label %do.end39, !dbg !4456

do.end39:                                         ; preds = %do.end38
  %9 = load %struct.pci_ops*, %struct.pci_ops** %old_ops, align 8, !dbg !4472
  ret %struct.pci_ops* %9, !dbg !4473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4474 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4478, metadata !DIExpression()), !dbg !4479
  %call = call i64 @arch_local_save_flags() #6, !dbg !4480
  store i64 %call, i64* %f, align 8, !dbg !4481
  call void @arch_local_irq_disable() #6, !dbg !4482
  %0 = load i64, i64* %f, align 8, !dbg !4483
  ret i64 %0, !dbg !4484
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !4485 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !4488, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4490, metadata !DIExpression()), !dbg !4492
  %0 = load i64, i64* %__edi, align 8, !dbg !4492
  store i64 %0, i64* %__edi, align 8, !dbg !4492
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4493, metadata !DIExpression()), !dbg !4492
  %1 = load i64, i64* %__esi, align 8, !dbg !4492
  store i64 %1, i64* %__esi, align 8, !dbg !4492
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4494, metadata !DIExpression()), !dbg !4492
  %2 = load i64, i64* %__edx, align 8, !dbg !4492
  store i64 %2, i64* %__edx, align 8, !dbg !4492
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4495, metadata !DIExpression()), !dbg !4492
  %3 = load i64, i64* %__ecx, align 8, !dbg !4492
  store i64 %3, i64* %__ecx, align 8, !dbg !4492
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4496, metadata !DIExpression()), !dbg !4492
  %4 = load i64, i64* %__eax, align 8, !dbg !4492
  store i64 %4, i64* %__eax, align 8, !dbg !4492
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !4492
  %6 = call i64 @llvm.read_register.i64(metadata !4038), !dbg !4492
  %7 = load i64, i64* %f.addr, align 8, !dbg !4492
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !4492, !srcloc !4497
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !4492
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !4492
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4492
  call void @llvm.write_register.i64(metadata !4038, i64 %asmresult1), !dbg !4492
  ret void, !dbg !4498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_user_read_config_byte(%struct.pci_dev* %dev, i32 %pos, i8* %val) #0 !dbg !4499 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %data = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4504, metadata !DIExpression()), !dbg !4503
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4505, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4506, metadata !DIExpression()), !dbg !4503
  store i32 0, i32* %ret, align 4, !dbg !4503
  call void @llvm.dbg.declare(metadata i32* %data, metadata !4507, metadata !DIExpression()), !dbg !4503
  store i32 -1, i32* %data, align 4, !dbg !4503
  br label %do.body, !dbg !4503

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4508

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #6, !dbg !4510
  br label %do.end, !dbg !4510

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4508

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4512, !srcloc !4514
  br label %do.body3, !dbg !4512

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4515

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !4512

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !4508

do.end6:                                          ; preds = %do.end5
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4517
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4517
  %1 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4517
  %bf.load = load i40, i40* %1, align 1, !dbg !4517
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4517
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4517
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4517
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4517
  %lnot = xor i1 %tobool, true, !dbg !4517
  %lnot7 = xor i1 %lnot, true, !dbg !4517
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !4517
  %conv = sext i32 %lnot.ext to i64, !dbg !4517
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4517
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4503

if.then:                                          ; preds = %do.end6
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4517
  call void @pci_wait_cfg(%struct.pci_dev* %2) #6, !dbg !4517
  br label %if.end, !dbg !4517

if.end:                                           ; preds = %if.then, %do.end6
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4503
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1, !dbg !4503
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4503
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 9, !dbg !4503
  %5 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4503
  %read = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %5, i32 0, i32 3, !dbg !4503
  %6 = load i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)** %read, align 8, !dbg !4503
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4503
  %bus9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1, !dbg !4503
  %8 = load %struct.pci_bus*, %struct.pci_bus** %bus9, align 8, !dbg !4503
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4503
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 6, !dbg !4503
  %10 = load i32, i32* %devfn, align 8, !dbg !4503
  %11 = load i32, i32* %pos.addr, align 4, !dbg !4503
  %call = call i32 %6(%struct.pci_bus* %8, i32 %10, i32 %11, i32 1, i32* %data) #6, !dbg !4503
  store i32 %call, i32* %ret, align 4, !dbg !4503
  br label %do.body10, !dbg !4503

do.body10:                                        ; preds = %if.end
  br label %do.body11, !dbg !4519

do.body11:                                        ; preds = %do.body10
  call void @arch_local_irq_enable() #6, !dbg !4521
  br label %do.end12, !dbg !4521

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !4519

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4523, !srcloc !4525
  br label %do.body14, !dbg !4523

do.body14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4526

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !4523

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4519

do.end17:                                         ; preds = %do.end16
  %12 = load i32, i32* %data, align 4, !dbg !4503
  %conv18 = trunc i32 %12 to i8, !dbg !4503
  %13 = load i8*, i8** %val.addr, align 8, !dbg !4503
  store i8 %conv18, i8* %13, align 1, !dbg !4503
  %14 = load i32, i32* %ret, align 4, !dbg !4503
  %call19 = call i32 @pcibios_err_to_errno(i32 %14) #6, !dbg !4503
  ret i32 %call19, !dbg !4503
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4528 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4529, metadata !DIExpression()), !dbg !4531
  %0 = load i64, i64* %__edi, align 8, !dbg !4531
  store i64 %0, i64* %__edi, align 8, !dbg !4531
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4532, metadata !DIExpression()), !dbg !4531
  %1 = load i64, i64* %__esi, align 8, !dbg !4531
  store i64 %1, i64* %__esi, align 8, !dbg !4531
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4533, metadata !DIExpression()), !dbg !4531
  %2 = load i64, i64* %__edx, align 8, !dbg !4531
  store i64 %2, i64* %__edx, align 8, !dbg !4531
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4534, metadata !DIExpression()), !dbg !4531
  %3 = load i64, i64* %__ecx, align 8, !dbg !4531
  store i64 %3, i64* %__ecx, align 8, !dbg !4531
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4535, metadata !DIExpression()), !dbg !4531
  %4 = load i64, i64* %__eax, align 8, !dbg !4531
  store i64 %4, i64* %__eax, align 8, !dbg !4531
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4531
  %6 = call i64 @llvm.read_register.i64(metadata !4038), !dbg !4531
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !4531, !srcloc !4536
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4531
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4531
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4531
  call void @llvm.write_register.i64(metadata !4038, i64 %asmresult1), !dbg !4531
  ret void, !dbg !4537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_wait_cfg(%struct.pci_dev* %dev) #0 !dbg !4538 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4539, metadata !DIExpression()), !dbg !4540
  br label %do.body, !dbg !4541

do.body:                                          ; preds = %do.cond, %entry
  br label %do.body1, !dbg !4542

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4544

do.body2:                                         ; preds = %do.body1
  call void @arch_local_irq_enable() #6, !dbg !4546
  br label %do.end, !dbg !4546

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4544

do.body3:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4548, !srcloc !4550
  br label %do.body4, !dbg !4548

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !4551

do.end5:                                          ; preds = %do.body4
  br label %do.end6, !dbg !4548

do.end6:                                          ; preds = %do.end5
  br label %do.end7, !dbg !4544

do.end7:                                          ; preds = %do.end6
  br label %do.body8, !dbg !4553

do.body8:                                         ; preds = %do.end7
  br label %do.body9, !dbg !4554

do.body9:                                         ; preds = %do.body8
  br label %do.body10, !dbg !4556

do.body10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4558

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !4556

do.end12:                                         ; preds = %do.end11
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4560
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4560
  %1 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4560
  %bf.load = load i40, i40* %1, align 1, !dbg !4560
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4560
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4560
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4560
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4560
  br i1 %tobool, label %if.end, label %if.then, !dbg !4554

if.then:                                          ; preds = %do.end12
  br label %do.end21, !dbg !4560

if.end:                                           ; preds = %do.end12
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4562, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4576, metadata !DIExpression()), !dbg !4575
  store i64 0, i64* %__ret, align 8, !dbg !4575
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #6, !dbg !4575
  br label %for.cond, !dbg !4575

for.cond:                                         ; preds = %if.end20, %if.end
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4577, metadata !DIExpression()), !dbg !4581
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* @pci_cfg_wait, %struct.wait_queue_entry* %__wq_entry, i32 2) #6, !dbg !4581
  store i64 %call, i64* %__int, align 8, !dbg !4581
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4582
  %block_cfg_access13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 46, !dbg !4582
  %3 = bitcast [5 x i8]* %block_cfg_access13 to i40*, !dbg !4582
  %bf.load14 = load i40, i40* %3, align 1, !dbg !4582
  %bf.lshr15 = lshr i40 %bf.load14, 8, !dbg !4582
  %bf.clear16 = and i40 %bf.lshr15, 1, !dbg !4582
  %bf.cast17 = trunc i40 %bf.clear16 to i32, !dbg !4582
  %tobool18 = icmp ne i32 %bf.cast17, 0, !dbg !4582
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4581

if.then19:                                        ; preds = %for.cond
  br label %for.end, !dbg !4582

if.end20:                                         ; preds = %for.cond
  call void @schedule() #6, !dbg !4581
  br label %for.cond, !dbg !4584, !llvm.loop !4585

for.end:                                          ; preds = %if.then19
  call void @finish_wait(%struct.wait_queue_head* @pci_cfg_wait, %struct.wait_queue_entry* %__wq_entry) #6, !dbg !4575
  br label %__out, !dbg !4575

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !4587), !dbg !4575
  %4 = load i64, i64* %__ret, align 8, !dbg !4575
  store i64 %4, i64* %tmp, align 8, !dbg !4575
  %5 = load i64, i64* %tmp, align 8, !dbg !4575
  br label %do.end21, !dbg !4554

do.end21:                                         ; preds = %__out, %if.then
  br label %do.body22, !dbg !4588

do.body22:                                        ; preds = %do.end21
  br label %do.body23, !dbg !4589

do.body23:                                        ; preds = %do.body22
  call void @arch_local_irq_disable() #6, !dbg !4591
  br label %do.end24, !dbg !4591

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !4589

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4593, !srcloc !4595
  br label %do.body26, !dbg !4593

do.body26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !4596

do.end27:                                         ; preds = %do.body26
  br label %do.end28, !dbg !4593

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !4589

do.end29:                                         ; preds = %do.end28
  br label %do.cond, !dbg !4598

do.cond:                                          ; preds = %do.end29
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4599
  %block_cfg_access30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 46, !dbg !4600
  %7 = bitcast [5 x i8]* %block_cfg_access30 to i40*, !dbg !4600
  %bf.load31 = load i40, i40* %7, align 1, !dbg !4600
  %bf.lshr32 = lshr i40 %bf.load31, 8, !dbg !4600
  %bf.clear33 = and i40 %bf.lshr32, 1, !dbg !4600
  %bf.cast34 = trunc i40 %bf.clear33 to i32, !dbg !4600
  %tobool35 = icmp ne i32 %bf.cast34, 0, !dbg !4598
  br i1 %tobool35, label %do.body, label %do.end36, !dbg !4598, !llvm.loop !4601

do.end36:                                         ; preds = %do.cond
  ret void, !dbg !4603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !4604 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4605, metadata !DIExpression()), !dbg !4607
  %0 = load i64, i64* %__edi, align 8, !dbg !4607
  store i64 %0, i64* %__edi, align 8, !dbg !4607
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4608, metadata !DIExpression()), !dbg !4607
  %1 = load i64, i64* %__esi, align 8, !dbg !4607
  store i64 %1, i64* %__esi, align 8, !dbg !4607
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4609, metadata !DIExpression()), !dbg !4607
  %2 = load i64, i64* %__edx, align 8, !dbg !4607
  store i64 %2, i64* %__edx, align 8, !dbg !4607
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4610, metadata !DIExpression()), !dbg !4607
  %3 = load i64, i64* %__ecx, align 8, !dbg !4607
  store i64 %3, i64* %__ecx, align 8, !dbg !4607
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4611, metadata !DIExpression()), !dbg !4607
  %4 = load i64, i64* %__eax, align 8, !dbg !4607
  store i64 %4, i64* %__eax, align 8, !dbg !4607
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !4607
  %6 = call i64 @llvm.read_register.i64(metadata !4038), !dbg !4607
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !4607, !srcloc !4612
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4607
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4607
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4607
  call void @llvm.write_register.i64(metadata !4038, i64 %asmresult1), !dbg !4607
  ret void, !dbg !4613
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pcibios_err_to_errno(i32 %err) #0 !dbg !4614 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  %0 = load i32, i32* %err.addr, align 4, !dbg !4617
  %cmp = icmp sle i32 %0, 0, !dbg !4619
  br i1 %cmp, label %if.then, label %if.end, !dbg !4620

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %err.addr, align 4, !dbg !4621
  store i32 %1, i32* %retval, align 4, !dbg !4622
  br label %return, !dbg !4622

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %err.addr, align 4, !dbg !4623
  switch i32 %2, label %sw.epilog [
    i32 129, label %sw.bb
    i32 131, label %sw.bb1
    i32 134, label %sw.bb2
    i32 135, label %sw.bb3
    i32 136, label %sw.bb4
    i32 137, label %sw.bb5
  ], !dbg !4624

sw.bb:                                            ; preds = %if.end
  store i32 -2, i32* %retval, align 4, !dbg !4625
  br label %return, !dbg !4625

sw.bb1:                                           ; preds = %if.end
  store i32 -25, i32* %retval, align 4, !dbg !4627
  br label %return, !dbg !4627

sw.bb2:                                           ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4628
  br label %return, !dbg !4628

sw.bb3:                                           ; preds = %if.end
  store i32 -14, i32* %retval, align 4, !dbg !4629
  br label %return, !dbg !4629

sw.bb4:                                           ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !4630
  br label %return, !dbg !4630

sw.bb5:                                           ; preds = %if.end
  store i32 -28, i32* %retval, align 4, !dbg !4631
  br label %return, !dbg !4631

sw.epilog:                                        ; preds = %if.end
  store i32 -34, i32* %retval, align 4, !dbg !4632
  br label %return, !dbg !4632

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4633
  ret i32 %3, !dbg !4633
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_user_read_config_word(%struct.pci_dev* %dev, i32 %pos, i16* %val) #0 !dbg !4634 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i16*, align 8
  %ret = alloca i32, align 4
  %data = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4639, metadata !DIExpression()), !dbg !4638
  store i16* %val, i16** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %val.addr, metadata !4640, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4641, metadata !DIExpression()), !dbg !4638
  store i32 0, i32* %ret, align 4, !dbg !4638
  call void @llvm.dbg.declare(metadata i32* %data, metadata !4642, metadata !DIExpression()), !dbg !4638
  store i32 -1, i32* %data, align 4, !dbg !4638
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4643
  %and = and i32 %0, 1, !dbg !4643
  %tobool = icmp ne i32 %and, 0, !dbg !4643
  br i1 %tobool, label %if.then, label %if.end, !dbg !4638

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4643
  br label %return, !dbg !4643

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4638

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4645

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #6, !dbg !4647
  br label %do.end, !dbg !4647

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4645

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4649, !srcloc !4651
  br label %do.body3, !dbg !4649

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4652

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !4649

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !4645

do.end6:                                          ; preds = %do.end5
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4654
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 46, !dbg !4654
  %2 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4654
  %bf.load = load i40, i40* %2, align 1, !dbg !4654
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4654
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4654
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4654
  %tobool7 = icmp ne i32 %bf.cast, 0, !dbg !4654
  %lnot = xor i1 %tobool7, true, !dbg !4654
  %lnot8 = xor i1 %lnot, true, !dbg !4654
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4654
  %conv = sext i32 %lnot.ext to i64, !dbg !4654
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4654
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4638

if.then10:                                        ; preds = %do.end6
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4654
  call void @pci_wait_cfg(%struct.pci_dev* %3) #6, !dbg !4654
  br label %if.end11, !dbg !4654

if.end11:                                         ; preds = %if.then10, %do.end6
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4638
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1, !dbg !4638
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4638
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 9, !dbg !4638
  %6 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4638
  %read = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %6, i32 0, i32 3, !dbg !4638
  %7 = load i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)** %read, align 8, !dbg !4638
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4638
  %bus12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !4638
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus12, align 8, !dbg !4638
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4638
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 6, !dbg !4638
  %11 = load i32, i32* %devfn, align 8, !dbg !4638
  %12 = load i32, i32* %pos.addr, align 4, !dbg !4638
  %call = call i32 %7(%struct.pci_bus* %9, i32 %11, i32 %12, i32 2, i32* %data) #6, !dbg !4638
  store i32 %call, i32* %ret, align 4, !dbg !4638
  br label %do.body13, !dbg !4638

do.body13:                                        ; preds = %if.end11
  br label %do.body14, !dbg !4656

do.body14:                                        ; preds = %do.body13
  call void @arch_local_irq_enable() #6, !dbg !4658
  br label %do.end15, !dbg !4658

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !4656

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4660, !srcloc !4662
  br label %do.body17, !dbg !4660

do.body17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4663

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !4660

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4656

do.end20:                                         ; preds = %do.end19
  %13 = load i32, i32* %data, align 4, !dbg !4638
  %conv21 = trunc i32 %13 to i16, !dbg !4638
  %14 = load i16*, i16** %val.addr, align 8, !dbg !4638
  store i16 %conv21, i16* %14, align 2, !dbg !4638
  %15 = load i32, i32* %ret, align 4, !dbg !4638
  %call22 = call i32 @pcibios_err_to_errno(i32 %15) #6, !dbg !4638
  store i32 %call22, i32* %retval, align 4, !dbg !4638
  br label %return, !dbg !4638

return:                                           ; preds = %do.end20, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4638
  ret i32 %16, !dbg !4638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_user_read_config_dword(%struct.pci_dev* %dev, i32 %pos, i32* %val) #0 !dbg !4665 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  %data = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4668, metadata !DIExpression()), !dbg !4669
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4670, metadata !DIExpression()), !dbg !4669
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !4671, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4672, metadata !DIExpression()), !dbg !4669
  store i32 0, i32* %ret, align 4, !dbg !4669
  call void @llvm.dbg.declare(metadata i32* %data, metadata !4673, metadata !DIExpression()), !dbg !4669
  store i32 -1, i32* %data, align 4, !dbg !4669
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4674
  %and = and i32 %0, 3, !dbg !4674
  %tobool = icmp ne i32 %and, 0, !dbg !4674
  br i1 %tobool, label %if.then, label %if.end, !dbg !4669

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4674
  br label %return, !dbg !4674

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4669

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4676

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #6, !dbg !4678
  br label %do.end, !dbg !4678

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4676

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4680, !srcloc !4682
  br label %do.body3, !dbg !4680

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4683

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !4680

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !4676

do.end6:                                          ; preds = %do.end5
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4685
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 46, !dbg !4685
  %2 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4685
  %bf.load = load i40, i40* %2, align 1, !dbg !4685
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4685
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4685
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4685
  %tobool7 = icmp ne i32 %bf.cast, 0, !dbg !4685
  %lnot = xor i1 %tobool7, true, !dbg !4685
  %lnot8 = xor i1 %lnot, true, !dbg !4685
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4685
  %conv = sext i32 %lnot.ext to i64, !dbg !4685
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4685
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4669

if.then10:                                        ; preds = %do.end6
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4685
  call void @pci_wait_cfg(%struct.pci_dev* %3) #6, !dbg !4685
  br label %if.end11, !dbg !4685

if.end11:                                         ; preds = %if.then10, %do.end6
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4669
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1, !dbg !4669
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4669
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 9, !dbg !4669
  %6 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4669
  %read = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %6, i32 0, i32 3, !dbg !4669
  %7 = load i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)** %read, align 8, !dbg !4669
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4669
  %bus12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !4669
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus12, align 8, !dbg !4669
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4669
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 6, !dbg !4669
  %11 = load i32, i32* %devfn, align 8, !dbg !4669
  %12 = load i32, i32* %pos.addr, align 4, !dbg !4669
  %call = call i32 %7(%struct.pci_bus* %9, i32 %11, i32 %12, i32 4, i32* %data) #6, !dbg !4669
  store i32 %call, i32* %ret, align 4, !dbg !4669
  br label %do.body13, !dbg !4669

do.body13:                                        ; preds = %if.end11
  br label %do.body14, !dbg !4687

do.body14:                                        ; preds = %do.body13
  call void @arch_local_irq_enable() #6, !dbg !4689
  br label %do.end15, !dbg !4689

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !4687

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4691, !srcloc !4693
  br label %do.body17, !dbg !4691

do.body17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4694

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !4691

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4687

do.end20:                                         ; preds = %do.end19
  %13 = load i32, i32* %data, align 4, !dbg !4669
  %14 = load i32*, i32** %val.addr, align 8, !dbg !4669
  store i32 %13, i32* %14, align 4, !dbg !4669
  %15 = load i32, i32* %ret, align 4, !dbg !4669
  %call21 = call i32 @pcibios_err_to_errno(i32 %15) #6, !dbg !4669
  store i32 %call21, i32* %retval, align 4, !dbg !4669
  br label %return, !dbg !4669

return:                                           ; preds = %do.end20, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !4669
  ret i32 %16, !dbg !4669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_user_write_config_byte(%struct.pci_dev* %dev, i32 %pos, i8 zeroext %val) #0 !dbg !4696 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4701, metadata !DIExpression()), !dbg !4700
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4702, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4703, metadata !DIExpression()), !dbg !4700
  store i32 0, i32* %ret, align 4, !dbg !4700
  br label %do.body, !dbg !4700

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4704

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #6, !dbg !4706
  br label %do.end, !dbg !4706

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4704

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4708, !srcloc !4710
  br label %do.body3, !dbg !4708

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4711

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !4708

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !4704

do.end6:                                          ; preds = %do.end5
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4713
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4713
  %1 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4713
  %bf.load = load i40, i40* %1, align 1, !dbg !4713
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4713
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4713
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4713
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4713
  %lnot = xor i1 %tobool, true, !dbg !4713
  %lnot7 = xor i1 %lnot, true, !dbg !4713
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !4713
  %conv = sext i32 %lnot.ext to i64, !dbg !4713
  %tobool8 = icmp ne i64 %conv, 0, !dbg !4713
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4700

if.then:                                          ; preds = %do.end6
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4713
  call void @pci_wait_cfg(%struct.pci_dev* %2) #6, !dbg !4713
  br label %if.end, !dbg !4713

if.end:                                           ; preds = %if.then, %do.end6
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4700
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1, !dbg !4700
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4700
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 9, !dbg !4700
  %5 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4700
  %write = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %5, i32 0, i32 4, !dbg !4700
  %6 = load i32 (%struct.pci_bus*, i32, i32, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)** %write, align 8, !dbg !4700
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4700
  %bus9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1, !dbg !4700
  %8 = load %struct.pci_bus*, %struct.pci_bus** %bus9, align 8, !dbg !4700
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4700
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 6, !dbg !4700
  %10 = load i32, i32* %devfn, align 8, !dbg !4700
  %11 = load i32, i32* %pos.addr, align 4, !dbg !4700
  %12 = load i8, i8* %val.addr, align 1, !dbg !4700
  %conv10 = zext i8 %12 to i32, !dbg !4700
  %call = call i32 %6(%struct.pci_bus* %8, i32 %10, i32 %11, i32 1, i32 %conv10) #6, !dbg !4700
  store i32 %call, i32* %ret, align 4, !dbg !4700
  br label %do.body11, !dbg !4700

do.body11:                                        ; preds = %if.end
  br label %do.body12, !dbg !4715

do.body12:                                        ; preds = %do.body11
  call void @arch_local_irq_enable() #6, !dbg !4717
  br label %do.end13, !dbg !4717

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !4715

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4719, !srcloc !4721
  br label %do.body15, !dbg !4719

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4722

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !4719

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4715

do.end18:                                         ; preds = %do.end17
  %13 = load i32, i32* %ret, align 4, !dbg !4700
  %call19 = call i32 @pcibios_err_to_errno(i32 %13) #6, !dbg !4700
  ret i32 %call19, !dbg !4700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_user_write_config_word(%struct.pci_dev* %dev, i32 %pos, i16 zeroext %val) #0 !dbg !4724 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4727, metadata !DIExpression()), !dbg !4728
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4729, metadata !DIExpression()), !dbg !4728
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !4730, metadata !DIExpression()), !dbg !4728
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4731, metadata !DIExpression()), !dbg !4728
  store i32 0, i32* %ret, align 4, !dbg !4728
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4732
  %and = and i32 %0, 1, !dbg !4732
  %tobool = icmp ne i32 %and, 0, !dbg !4732
  br i1 %tobool, label %if.then, label %if.end, !dbg !4728

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4732
  br label %return, !dbg !4732

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4728

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4734

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #6, !dbg !4736
  br label %do.end, !dbg !4736

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4734

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4738, !srcloc !4740
  br label %do.body3, !dbg !4738

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4741

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !4738

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !4734

do.end6:                                          ; preds = %do.end5
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4743
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 46, !dbg !4743
  %2 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4743
  %bf.load = load i40, i40* %2, align 1, !dbg !4743
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4743
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4743
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4743
  %tobool7 = icmp ne i32 %bf.cast, 0, !dbg !4743
  %lnot = xor i1 %tobool7, true, !dbg !4743
  %lnot8 = xor i1 %lnot, true, !dbg !4743
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4743
  %conv = sext i32 %lnot.ext to i64, !dbg !4743
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4743
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4728

if.then10:                                        ; preds = %do.end6
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4743
  call void @pci_wait_cfg(%struct.pci_dev* %3) #6, !dbg !4743
  br label %if.end11, !dbg !4743

if.end11:                                         ; preds = %if.then10, %do.end6
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4728
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1, !dbg !4728
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4728
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 9, !dbg !4728
  %6 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4728
  %write = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %6, i32 0, i32 4, !dbg !4728
  %7 = load i32 (%struct.pci_bus*, i32, i32, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)** %write, align 8, !dbg !4728
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4728
  %bus12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !4728
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus12, align 8, !dbg !4728
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4728
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 6, !dbg !4728
  %11 = load i32, i32* %devfn, align 8, !dbg !4728
  %12 = load i32, i32* %pos.addr, align 4, !dbg !4728
  %13 = load i16, i16* %val.addr, align 2, !dbg !4728
  %conv13 = zext i16 %13 to i32, !dbg !4728
  %call = call i32 %7(%struct.pci_bus* %9, i32 %11, i32 %12, i32 2, i32 %conv13) #6, !dbg !4728
  store i32 %call, i32* %ret, align 4, !dbg !4728
  br label %do.body14, !dbg !4728

do.body14:                                        ; preds = %if.end11
  br label %do.body15, !dbg !4745

do.body15:                                        ; preds = %do.body14
  call void @arch_local_irq_enable() #6, !dbg !4747
  br label %do.end16, !dbg !4747

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !4745

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4749, !srcloc !4751
  br label %do.body18, !dbg !4749

do.body18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4752

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !4749

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !4745

do.end21:                                         ; preds = %do.end20
  %14 = load i32, i32* %ret, align 4, !dbg !4728
  %call22 = call i32 @pcibios_err_to_errno(i32 %14) #6, !dbg !4728
  store i32 %call22, i32* %retval, align 4, !dbg !4728
  br label %return, !dbg !4728

return:                                           ; preds = %do.end21, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4728
  ret i32 %15, !dbg !4728
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_user_write_config_dword(%struct.pci_dev* %dev, i32 %pos, i32 %val) #0 !dbg !4754 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !4759, metadata !DIExpression()), !dbg !4758
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4760, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4761, metadata !DIExpression()), !dbg !4758
  store i32 0, i32* %ret, align 4, !dbg !4758
  %0 = load i32, i32* %pos.addr, align 4, !dbg !4762
  %and = and i32 %0, 3, !dbg !4762
  %tobool = icmp ne i32 %and, 0, !dbg !4762
  br i1 %tobool, label %if.then, label %if.end, !dbg !4758

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4762
  br label %return, !dbg !4762

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4758

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4764

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #6, !dbg !4766
  br label %do.end, !dbg !4766

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4764

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4768, !srcloc !4770
  br label %do.body3, !dbg !4768

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4771

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !4768

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !4764

do.end6:                                          ; preds = %do.end5
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4773
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 46, !dbg !4773
  %2 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4773
  %bf.load = load i40, i40* %2, align 1, !dbg !4773
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4773
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4773
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4773
  %tobool7 = icmp ne i32 %bf.cast, 0, !dbg !4773
  %lnot = xor i1 %tobool7, true, !dbg !4773
  %lnot8 = xor i1 %lnot, true, !dbg !4773
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !4773
  %conv = sext i32 %lnot.ext to i64, !dbg !4773
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4773
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4758

if.then10:                                        ; preds = %do.end6
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4773
  call void @pci_wait_cfg(%struct.pci_dev* %3) #6, !dbg !4773
  br label %if.end11, !dbg !4773

if.end11:                                         ; preds = %if.then10, %do.end6
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4758
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1, !dbg !4758
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4758
  %ops = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 9, !dbg !4758
  %6 = load %struct.pci_ops*, %struct.pci_ops** %ops, align 8, !dbg !4758
  %write = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %6, i32 0, i32 4, !dbg !4758
  %7 = load i32 (%struct.pci_bus*, i32, i32, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)** %write, align 8, !dbg !4758
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4758
  %bus12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !4758
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus12, align 8, !dbg !4758
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4758
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 6, !dbg !4758
  %11 = load i32, i32* %devfn, align 8, !dbg !4758
  %12 = load i32, i32* %pos.addr, align 4, !dbg !4758
  %13 = load i32, i32* %val.addr, align 4, !dbg !4758
  %call = call i32 %7(%struct.pci_bus* %9, i32 %11, i32 %12, i32 4, i32 %13) #6, !dbg !4758
  store i32 %call, i32* %ret, align 4, !dbg !4758
  br label %do.body13, !dbg !4758

do.body13:                                        ; preds = %if.end11
  br label %do.body14, !dbg !4775

do.body14:                                        ; preds = %do.body13
  call void @arch_local_irq_enable() #6, !dbg !4777
  br label %do.end15, !dbg !4777

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !4775

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4779, !srcloc !4781
  br label %do.body17, !dbg !4779

do.body17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4782

do.end18:                                         ; preds = %do.body17
  br label %do.end19, !dbg !4779

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4775

do.end20:                                         ; preds = %do.end19
  %14 = load i32, i32* %ret, align 4, !dbg !4758
  %call21 = call i32 @pcibios_err_to_errno(i32 %14) #6, !dbg !4758
  store i32 %call21, i32* %retval, align 4, !dbg !4758
  br label %return, !dbg !4758

return:                                           ; preds = %do.end20, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4758
  ret i32 %15, !dbg !4758
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_cfg_access_lock(%struct.pci_dev* %dev) #0 !dbg !4784 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4785, metadata !DIExpression()), !dbg !4786
  br label %do.body, !dbg !4787

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4788

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4790

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !4788

do.end2:                                          ; preds = %do.end
  br label %do.body3, !dbg !4792

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !4793

do.body4:                                         ; preds = %do.body3
  call void @arch_local_irq_disable() #6, !dbg !4795
  br label %do.end5, !dbg !4795

do.end5:                                          ; preds = %do.body4
  br label %do.body6, !dbg !4793

do.body6:                                         ; preds = %do.end5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4797, !srcloc !4799
  br label %do.body7, !dbg !4797

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !4800

do.end8:                                          ; preds = %do.body7
  br label %do.end9, !dbg !4797

do.end9:                                          ; preds = %do.end8
  br label %do.end10, !dbg !4793

do.end10:                                         ; preds = %do.end9
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4802
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 46, !dbg !4804
  %1 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4804
  %bf.load = load i40, i40* %1, align 1, !dbg !4804
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4804
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4804
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4804
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4802
  br i1 %tobool, label %if.then, label %if.end, !dbg !4805

if.then:                                          ; preds = %do.end10
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4806
  call void @pci_wait_cfg(%struct.pci_dev* %2) #6, !dbg !4807
  br label %if.end, !dbg !4807

if.end:                                           ; preds = %if.then, %do.end10
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4808
  %block_cfg_access11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 46, !dbg !4809
  %4 = bitcast [5 x i8]* %block_cfg_access11 to i40*, !dbg !4809
  %bf.load12 = load i40, i40* %4, align 1, !dbg !4810
  %bf.clear13 = and i40 %bf.load12, -257, !dbg !4810
  %bf.set = or i40 %bf.clear13, 256, !dbg !4810
  store i40 %bf.set, i40* %4, align 1, !dbg !4810
  br label %do.body14, !dbg !4811

do.body14:                                        ; preds = %if.end
  br label %do.body15, !dbg !4812

do.body15:                                        ; preds = %do.body14
  call void @arch_local_irq_enable() #6, !dbg !4814
  br label %do.end16, !dbg !4814

do.end16:                                         ; preds = %do.body15
  br label %do.body17, !dbg !4812

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4816, !srcloc !4818
  br label %do.body18, !dbg !4816

do.body18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4819

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !4816

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !4812

do.end21:                                         ; preds = %do.end20
  ret void, !dbg !4821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @pci_cfg_access_trylock(%struct.pci_dev* %dev) #0 !dbg !4822 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %flags = alloca i64, align 8
  %locked = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy20 = alloca i64, align 8
  %__dummy221 = alloca i64, align 8
  %tmp24 = alloca i32, align 4
  %__dummy28 = alloca i64, align 8
  %__dummy229 = alloca i64, align 8
  %tmp32 = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4827, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.declare(metadata i8* %locked, metadata !4829, metadata !DIExpression()), !dbg !4830
  store i8 1, i8* %locked, align 1, !dbg !4830
  br label %do.body, !dbg !4831

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4832, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4836, metadata !DIExpression()), !dbg !4835
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4835
  %conv = zext i1 %cmp to i32, !dbg !4835
  store i32 1, i32* %tmp, align 4, !dbg !4835
  %0 = load i32, i32* %tmp, align 4, !dbg !4835
  br label %do.body1, !dbg !4837

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4838

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4840

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !4842, metadata !DIExpression()), !dbg !4845
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !4846, metadata !DIExpression()), !dbg !4845
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !4845
  %conv7 = zext i1 %cmp6 to i32, !dbg !4845
  store i32 1, i32* %tmp8, align 4, !dbg !4845
  %1 = load i32, i32* %tmp8, align 4, !dbg !4845
  %call = call i64 @arch_local_irq_save() #6, !dbg !4847
  store i64 %call, i64* %flags, align 8, !dbg !4847
  br label %do.end, !dbg !4847

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !4840

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !4838

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4848, !srcloc !4850
  br label %do.body11, !dbg !4848

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4851

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4848

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !4838

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !4837

do.end15:                                         ; preds = %do.end14
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4853
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 46, !dbg !4855
  %3 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4855
  %bf.load = load i40, i40* %3, align 1, !dbg !4855
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4855
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4855
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4855
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4853
  br i1 %tobool, label %if.then, label %if.else, !dbg !4856

if.then:                                          ; preds = %do.end15
  store i8 0, i8* %locked, align 1, !dbg !4857
  br label %if.end, !dbg !4858

if.else:                                          ; preds = %do.end15
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4859
  %block_cfg_access16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 46, !dbg !4860
  %5 = bitcast [5 x i8]* %block_cfg_access16 to i40*, !dbg !4860
  %bf.load17 = load i40, i40* %5, align 1, !dbg !4861
  %bf.clear18 = and i40 %bf.load17, -257, !dbg !4861
  %bf.set = or i40 %bf.clear18, 256, !dbg !4861
  store i40 %bf.set, i40* %5, align 1, !dbg !4861
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body19, !dbg !4862

do.body19:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy20, metadata !4863, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.declare(metadata i64* %__dummy221, metadata !4867, metadata !DIExpression()), !dbg !4866
  %cmp22 = icmp eq i64* %__dummy20, %__dummy221, !dbg !4866
  %conv23 = zext i1 %cmp22 to i32, !dbg !4866
  store i32 1, i32* %tmp24, align 4, !dbg !4866
  %6 = load i32, i32* %tmp24, align 4, !dbg !4866
  br label %do.body25, !dbg !4868

do.body25:                                        ; preds = %do.body19
  br label %do.body26, !dbg !4869

do.body26:                                        ; preds = %do.body25
  br label %do.body27, !dbg !4871

do.body27:                                        ; preds = %do.body26
  call void @llvm.dbg.declare(metadata i64* %__dummy28, metadata !4873, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.declare(metadata i64* %__dummy229, metadata !4877, metadata !DIExpression()), !dbg !4876
  %cmp30 = icmp eq i64* %__dummy28, %__dummy229, !dbg !4876
  %conv31 = zext i1 %cmp30 to i32, !dbg !4876
  store i32 1, i32* %tmp32, align 4, !dbg !4876
  %7 = load i32, i32* %tmp32, align 4, !dbg !4876
  %8 = load i64, i64* %flags, align 8, !dbg !4878
  call void @arch_local_irq_restore(i64 %8) #6, !dbg !4878
  br label %do.end33, !dbg !4878

do.end33:                                         ; preds = %do.body27
  br label %do.end34, !dbg !4871

do.end34:                                         ; preds = %do.end33
  br label %do.body35, !dbg !4869

do.body35:                                        ; preds = %do.end34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4879, !srcloc !4881
  br label %do.body36, !dbg !4879

do.body36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !4882

do.end37:                                         ; preds = %do.body36
  br label %do.end38, !dbg !4879

do.end38:                                         ; preds = %do.end37
  br label %do.end39, !dbg !4869

do.end39:                                         ; preds = %do.end38
  br label %do.end40, !dbg !4868

do.end40:                                         ; preds = %do.end39
  %9 = load i8, i8* %locked, align 1, !dbg !4884
  %tobool41 = trunc i8 %9 to i1, !dbg !4884
  ret i1 %tobool41, !dbg !4885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_cfg_access_unlock(%struct.pci_dev* %dev) #0 !dbg !4886 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp33 = alloca i64, align 8
  %__dummy44 = alloca i64, align 8
  %__dummy245 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  %__dummy52 = alloca i64, align 8
  %__dummy253 = alloca i64, align 8
  %tmp56 = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4889, metadata !DIExpression()), !dbg !4890
  br label %do.body, !dbg !4891

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4892, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4896, metadata !DIExpression()), !dbg !4895
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4895
  %conv = zext i1 %cmp to i32, !dbg !4895
  store i32 1, i32* %tmp, align 4, !dbg !4895
  %0 = load i32, i32* %tmp, align 4, !dbg !4895
  br label %do.body1, !dbg !4897

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4898

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4900

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !4902, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !4906, metadata !DIExpression()), !dbg !4905
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !4905
  %conv7 = zext i1 %cmp6 to i32, !dbg !4905
  store i32 1, i32* %tmp8, align 4, !dbg !4905
  %1 = load i32, i32* %tmp8, align 4, !dbg !4905
  %call = call i64 @arch_local_irq_save() #6, !dbg !4907
  store i64 %call, i64* %flags, align 8, !dbg !4907
  br label %do.end, !dbg !4907

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !4900

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !4898

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4908, !srcloc !4910
  br label %do.body11, !dbg !4908

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4911

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4908

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !4898

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !4897

do.end15:                                         ; preds = %do.end14
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4913, metadata !DIExpression()), !dbg !4915
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4915
  %block_cfg_access = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 46, !dbg !4915
  %3 = bitcast [5 x i8]* %block_cfg_access to i40*, !dbg !4915
  %bf.load = load i40, i40* %3, align 1, !dbg !4915
  %bf.lshr = lshr i40 %bf.load, 8, !dbg !4915
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4915
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4915
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4915
  %lnot = xor i1 %tobool, true, !dbg !4915
  %lnot16 = xor i1 %lnot, true, !dbg !4915
  %lnot17 = xor i1 %lnot16, true, !dbg !4915
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !4915
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4915
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4916
  %tobool18 = icmp ne i32 %4, 0, !dbg !4916
  %lnot19 = xor i1 %tobool18, true, !dbg !4916
  %lnot21 = xor i1 %lnot19, true, !dbg !4916
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4916
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4916
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !4916
  br i1 %tobool24, label %if.then, label %if.end, !dbg !4915

if.then:                                          ; preds = %do.end15
  br label %do.body25, !dbg !4916

do.body25:                                        ; preds = %if.then
  br label %do.body26, !dbg !4918

do.body26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !4920

do.end27:                                         ; preds = %do.body26
  br label %do.body28, !dbg !4918

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 321, i32 2305, i64 12) #5, !dbg !4922, !srcloc !4924
  br label %do.end29, !dbg !4922

do.end29:                                         ; preds = %do.body28
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 234) #5, !dbg !4925, !srcloc !4927
  br label %do.body30, !dbg !4918

do.body30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !4928

do.end31:                                         ; preds = %do.body30
  br label %do.end32, !dbg !4918

do.end32:                                         ; preds = %do.end31
  br label %if.end, !dbg !4918

if.end:                                           ; preds = %do.end32, %do.end15
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4915
  %tobool34 = icmp ne i32 %5, 0, !dbg !4915
  %lnot35 = xor i1 %tobool34, true, !dbg !4915
  %lnot37 = xor i1 %lnot35, true, !dbg !4915
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !4915
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !4915
  store i64 %conv39, i64* %tmp33, align 8, !dbg !4916
  %6 = load i64, i64* %tmp33, align 8, !dbg !4915
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4930
  %block_cfg_access40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 46, !dbg !4931
  %8 = bitcast [5 x i8]* %block_cfg_access40 to i40*, !dbg !4931
  %bf.load41 = load i40, i40* %8, align 1, !dbg !4932
  %bf.clear42 = and i40 %bf.load41, -257, !dbg !4932
  store i40 %bf.clear42, i40* %8, align 1, !dbg !4932
  br label %do.body43, !dbg !4933

do.body43:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy44, metadata !4934, metadata !DIExpression()), !dbg !4937
  call void @llvm.dbg.declare(metadata i64* %__dummy245, metadata !4938, metadata !DIExpression()), !dbg !4937
  %cmp46 = icmp eq i64* %__dummy44, %__dummy245, !dbg !4937
  %conv47 = zext i1 %cmp46 to i32, !dbg !4937
  store i32 1, i32* %tmp48, align 4, !dbg !4937
  %9 = load i32, i32* %tmp48, align 4, !dbg !4937
  br label %do.body49, !dbg !4939

do.body49:                                        ; preds = %do.body43
  br label %do.body50, !dbg !4940

do.body50:                                        ; preds = %do.body49
  br label %do.body51, !dbg !4942

do.body51:                                        ; preds = %do.body50
  call void @llvm.dbg.declare(metadata i64* %__dummy52, metadata !4944, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.declare(metadata i64* %__dummy253, metadata !4948, metadata !DIExpression()), !dbg !4947
  %cmp54 = icmp eq i64* %__dummy52, %__dummy253, !dbg !4947
  %conv55 = zext i1 %cmp54 to i32, !dbg !4947
  store i32 1, i32* %tmp56, align 4, !dbg !4947
  %10 = load i32, i32* %tmp56, align 4, !dbg !4947
  %11 = load i64, i64* %flags, align 8, !dbg !4949
  call void @arch_local_irq_restore(i64 %11) #6, !dbg !4949
  br label %do.end57, !dbg !4949

do.end57:                                         ; preds = %do.body51
  br label %do.end58, !dbg !4942

do.end58:                                         ; preds = %do.end57
  br label %do.body59, !dbg !4940

do.body59:                                        ; preds = %do.end58
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4950, !srcloc !4952
  br label %do.body60, !dbg !4950

do.body60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !4953

do.end61:                                         ; preds = %do.body60
  br label %do.end62, !dbg !4950

do.end62:                                         ; preds = %do.end61
  br label %do.end63, !dbg !4940

do.end63:                                         ; preds = %do.end62
  br label %do.end64, !dbg !4939

do.end64:                                         ; preds = %do.end63
  call void @__wake_up(%struct.wait_queue_head* @pci_cfg_wait, i32 3, i32 0, i8* null) #6, !dbg !4955
  ret void, !dbg !4956
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @pcie_cap_has_lnkctl(%struct.pci_dev* %dev) #0 !dbg !4957 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %type = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  call void @llvm.dbg.declare(metadata i32* %type, metadata !4964, metadata !DIExpression()), !dbg !4965
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4966
  %call = call i32 @pci_pcie_type(%struct.pci_dev* %0) #6, !dbg !4967
  store i32 %call, i32* %type, align 4, !dbg !4965
  %1 = load i32, i32* %type, align 4, !dbg !4968
  %cmp = icmp eq i32 %1, 0, !dbg !4969
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !4970

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %type, align 4, !dbg !4971
  %cmp1 = icmp eq i32 %2, 1, !dbg !4972
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2, !dbg !4973

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %type, align 4, !dbg !4974
  %cmp3 = icmp eq i32 %3, 4, !dbg !4975
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4, !dbg !4976

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32, i32* %type, align 4, !dbg !4977
  %cmp5 = icmp eq i32 %4, 5, !dbg !4978
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6, !dbg !4979

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %5 = load i32, i32* %type, align 4, !dbg !4980
  %cmp7 = icmp eq i32 %5, 6, !dbg !4981
  br i1 %cmp7, label %lor.end, label %lor.lhs.false8, !dbg !4982

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %6 = load i32, i32* %type, align 4, !dbg !4983
  %cmp9 = icmp eq i32 %6, 7, !dbg !4984
  br i1 %cmp9, label %lor.end, label %lor.rhs, !dbg !4985

lor.rhs:                                          ; preds = %lor.lhs.false8
  %7 = load i32, i32* %type, align 4, !dbg !4986
  %cmp10 = icmp eq i32 %7, 8, !dbg !4987
  br label %lor.end, !dbg !4985

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false6 ], [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp10, %lor.rhs ]
  ret i1 %8, !dbg !4988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_pcie_type(%struct.pci_dev* %dev) #0 !dbg !4989 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4994
  %call = call zeroext i16 @pcie_caps_reg(%struct.pci_dev* %0) #6, !dbg !4995
  %conv = zext i16 %call to i32, !dbg !4995
  %and = and i32 %conv, 240, !dbg !4996
  %shr = ashr i32 %and, 4, !dbg !4997
  ret i32 %shr, !dbg !4998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @pcie_cap_has_rtctl(%struct.pci_dev* %dev) #0 !dbg !4999 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %type = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata i32* %type, metadata !5002, metadata !DIExpression()), !dbg !5003
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5004
  %call = call i32 @pci_pcie_type(%struct.pci_dev* %0) #6, !dbg !5005
  store i32 %call, i32* %type, align 4, !dbg !5003
  %1 = load i32, i32* %type, align 4, !dbg !5006
  %cmp = icmp eq i32 %1, 4, !dbg !5007
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5008

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %type, align 4, !dbg !5009
  %cmp1 = icmp eq i32 %2, 10, !dbg !5010
  br label %lor.end, !dbg !5008

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %3, !dbg !5011
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcie_capability_read_word(%struct.pci_dev* %dev, i32 %pos, i16* %val) #0 !dbg !5012 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i16*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  store i16* %val, i16** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %val.addr, metadata !5017, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5019, metadata !DIExpression()), !dbg !5020
  %0 = load i16*, i16** %val.addr, align 8, !dbg !5021
  store i16 0, i16* %0, align 2, !dbg !5022
  %1 = load i32, i32* %pos.addr, align 4, !dbg !5023
  %and = and i32 %1, 1, !dbg !5025
  %tobool = icmp ne i32 %and, 0, !dbg !5025
  br i1 %tobool, label %if.then, label %if.end, !dbg !5026

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5028
  %3 = load i32, i32* %pos.addr, align 4, !dbg !5030
  %call = call zeroext i1 @pcie_capability_reg_implemented(%struct.pci_dev* %2, i32 %3) #6, !dbg !5031
  br i1 %call, label %if.then1, label %if.end7, !dbg !5032

if.then1:                                         ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5033
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5035
  %call2 = call i32 @pci_pcie_cap(%struct.pci_dev* %5) #6, !dbg !5036
  %6 = load i32, i32* %pos.addr, align 4, !dbg !5037
  %add = add i32 %call2, %6, !dbg !5038
  %7 = load i16*, i16** %val.addr, align 8, !dbg !5039
  %call3 = call i32 @pci_read_config_word(%struct.pci_dev* %4, i32 %add, i16* %7) #6, !dbg !5040
  store i32 %call3, i32* %ret, align 4, !dbg !5041
  %8 = load i32, i32* %ret, align 4, !dbg !5042
  %tobool4 = icmp ne i32 %8, 0, !dbg !5042
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5044

if.then5:                                         ; preds = %if.then1
  %9 = load i16*, i16** %val.addr, align 8, !dbg !5045
  store i16 0, i16* %9, align 2, !dbg !5046
  br label %if.end6, !dbg !5047

if.end6:                                          ; preds = %if.then5, %if.then1
  %10 = load i32, i32* %ret, align 4, !dbg !5048
  store i32 %10, i32* %retval, align 4, !dbg !5049
  br label %return, !dbg !5049

if.end7:                                          ; preds = %if.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5050
  %call8 = call zeroext i1 @pci_is_pcie(%struct.pci_dev* %11) #6, !dbg !5052
  br i1 %call8, label %land.lhs.true, label %if.end12, !dbg !5053

land.lhs.true:                                    ; preds = %if.end7
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5054
  %call9 = call zeroext i1 @pcie_downstream_port(%struct.pci_dev* %12) #6, !dbg !5055
  br i1 %call9, label %land.lhs.true10, label %if.end12, !dbg !5056

land.lhs.true10:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %pos.addr, align 4, !dbg !5057
  %cmp = icmp eq i32 %13, 26, !dbg !5058
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5059

if.then11:                                        ; preds = %land.lhs.true10
  %14 = load i16*, i16** %val.addr, align 8, !dbg !5060
  store i16 64, i16* %14, align 2, !dbg !5061
  br label %if.end12, !dbg !5062

if.end12:                                         ; preds = %if.then11, %land.lhs.true10, %land.lhs.true, %if.end7
  store i32 0, i32* %retval, align 4, !dbg !5063
  br label %return, !dbg !5063

return:                                           ; preds = %if.end12, %if.end6, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5064
  ret i32 %15, !dbg !5064
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pcie_capability_reg_implemented(%struct.pci_dev* %dev, i32 %pos) #0 !dbg !5065 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5068, metadata !DIExpression()), !dbg !5069
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5072
  %call = call zeroext i1 @pci_is_pcie(%struct.pci_dev* %0) #6, !dbg !5074
  br i1 %call, label %if.end, label %if.then, !dbg !5075

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !5076
  br label %return, !dbg !5076

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pos.addr, align 4, !dbg !5077
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb1
    i32 8, label %sw.bb1
    i32 10, label %sw.bb1
    i32 12, label %sw.bb2
    i32 16, label %sw.bb2
    i32 18, label %sw.bb2
    i32 20, label %sw.bb4
    i32 24, label %sw.bb4
    i32 26, label %sw.bb4
    i32 28, label %sw.bb6
    i32 30, label %sw.bb6
    i32 32, label %sw.bb6
    i32 36, label %sw.bb8
    i32 40, label %sw.bb8
    i32 44, label %sw.bb8
    i32 48, label %sw.bb8
    i32 50, label %sw.bb8
  ], !dbg !5078

sw.bb:                                            ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !5079
  br label %return, !dbg !5079

sw.bb1:                                           ; preds = %if.end, %if.end, %if.end
  store i1 true, i1* %retval, align 1, !dbg !5081
  br label %return, !dbg !5081

sw.bb2:                                           ; preds = %if.end, %if.end, %if.end
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5082
  %call3 = call zeroext i1 @pcie_cap_has_lnkctl(%struct.pci_dev* %2) #6, !dbg !5083
  store i1 %call3, i1* %retval, align 1, !dbg !5084
  br label %return, !dbg !5084

sw.bb4:                                           ; preds = %if.end, %if.end, %if.end
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5085
  %call5 = call zeroext i1 @pcie_cap_has_sltctl(%struct.pci_dev* %3) #6, !dbg !5086
  store i1 %call5, i1* %retval, align 1, !dbg !5087
  br label %return, !dbg !5087

sw.bb6:                                           ; preds = %if.end, %if.end, %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5088
  %call7 = call zeroext i1 @pcie_cap_has_rtctl(%struct.pci_dev* %4) #6, !dbg !5089
  store i1 %call7, i1* %retval, align 1, !dbg !5090
  br label %return, !dbg !5090

sw.bb8:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5091
  %call9 = call i32 @pcie_cap_version(%struct.pci_dev* %5) #6, !dbg !5092
  %cmp = icmp sgt i32 %call9, 1, !dbg !5093
  store i1 %cmp, i1* %retval, align 1, !dbg !5094
  br label %return, !dbg !5094

sw.default:                                       ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !5095
  br label %return, !dbg !5095

return:                                           ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !5096
  ret i1 %6, !dbg !5096
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_read_config_word(%struct.pci_dev* %dev, i32 %where, i16* %val) #0 !dbg !5097 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i16*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  store i16* %val, i16** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %val.addr, metadata !5104, metadata !DIExpression()), !dbg !5105
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5106
  %call = call zeroext i1 @pci_dev_is_disconnected(%struct.pci_dev* %0) #6, !dbg !5108
  br i1 %call, label %if.then, label %if.end, !dbg !5109

if.then:                                          ; preds = %entry
  %1 = load i16*, i16** %val.addr, align 8, !dbg !5110
  store i16 -1, i16* %1, align 2, !dbg !5112
  store i32 134, i32* %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5114
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 1, !dbg !5115
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5115
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5116
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 6, !dbg !5117
  %5 = load i32, i32* %devfn, align 8, !dbg !5117
  %6 = load i32, i32* %where.addr, align 4, !dbg !5118
  %7 = load i16*, i16** %val.addr, align 8, !dbg !5119
  %call1 = call i32 @pci_bus_read_config_word(%struct.pci_bus* %3, i32 %5, i32 %6, i16* %7) #6, !dbg !5120
  store i32 %call1, i32* %retval, align 4, !dbg !5121
  br label %return, !dbg !5121

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5122
  ret i32 %8, !dbg !5122
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_pcie_cap(%struct.pci_dev* %dev) #0 !dbg !5123 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5126
  %pcie_cap = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 14, !dbg !5127
  %1 = load i8, i8* %pcie_cap, align 2, !dbg !5127
  %conv = zext i8 %1 to i32, !dbg !5126
  ret i32 %conv, !dbg !5128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pci_is_pcie(%struct.pci_dev* %dev) #0 !dbg !5129 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5132
  %call = call i32 @pci_pcie_cap(%struct.pci_dev* %0) #6, !dbg !5133
  %tobool = icmp ne i32 %call, 0, !dbg !5133
  ret i1 %tobool, !dbg !5134
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pcie_downstream_port(%struct.pci_dev* %dev) #0 !dbg !5135 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %type = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5136, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.declare(metadata i32* %type, metadata !5138, metadata !DIExpression()), !dbg !5139
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5140
  %call = call i32 @pci_pcie_type(%struct.pci_dev* %0) #6, !dbg !5141
  store i32 %call, i32* %type, align 4, !dbg !5139
  %1 = load i32, i32* %type, align 4, !dbg !5142
  %cmp = icmp eq i32 %1, 4, !dbg !5143
  br i1 %cmp, label %lor.end, label %lor.lhs.false, !dbg !5144

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %type, align 4, !dbg !5145
  %cmp1 = icmp eq i32 %2, 6, !dbg !5146
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !5147

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %type, align 4, !dbg !5148
  %cmp2 = icmp eq i32 %3, 8, !dbg !5149
  br label %lor.end, !dbg !5147

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp2, %lor.rhs ]
  ret i1 %4, !dbg !5150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcie_capability_read_dword(%struct.pci_dev* %dev, i32 %pos, i32* %val) #0 !dbg !5151 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5158, metadata !DIExpression()), !dbg !5159
  %0 = load i32*, i32** %val.addr, align 8, !dbg !5160
  store i32 0, i32* %0, align 4, !dbg !5161
  %1 = load i32, i32* %pos.addr, align 4, !dbg !5162
  %and = and i32 %1, 3, !dbg !5164
  %tobool = icmp ne i32 %and, 0, !dbg !5164
  br i1 %tobool, label %if.then, label %if.end, !dbg !5165

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !5166
  br label %return, !dbg !5166

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5167
  %3 = load i32, i32* %pos.addr, align 4, !dbg !5169
  %call = call zeroext i1 @pcie_capability_reg_implemented(%struct.pci_dev* %2, i32 %3) #6, !dbg !5170
  br i1 %call, label %if.then1, label %if.end7, !dbg !5171

if.then1:                                         ; preds = %if.end
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5172
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5174
  %call2 = call i32 @pci_pcie_cap(%struct.pci_dev* %5) #6, !dbg !5175
  %6 = load i32, i32* %pos.addr, align 4, !dbg !5176
  %add = add i32 %call2, %6, !dbg !5177
  %7 = load i32*, i32** %val.addr, align 8, !dbg !5178
  %call3 = call i32 @pci_read_config_dword(%struct.pci_dev* %4, i32 %add, i32* %7) #6, !dbg !5179
  store i32 %call3, i32* %ret, align 4, !dbg !5180
  %8 = load i32, i32* %ret, align 4, !dbg !5181
  %tobool4 = icmp ne i32 %8, 0, !dbg !5181
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5183

if.then5:                                         ; preds = %if.then1
  %9 = load i32*, i32** %val.addr, align 8, !dbg !5184
  store i32 0, i32* %9, align 4, !dbg !5185
  br label %if.end6, !dbg !5186

if.end6:                                          ; preds = %if.then5, %if.then1
  %10 = load i32, i32* %ret, align 4, !dbg !5187
  store i32 %10, i32* %retval, align 4, !dbg !5188
  br label %return, !dbg !5188

if.end7:                                          ; preds = %if.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5189
  %call8 = call zeroext i1 @pci_is_pcie(%struct.pci_dev* %11) #6, !dbg !5191
  br i1 %call8, label %land.lhs.true, label %if.end12, !dbg !5192

land.lhs.true:                                    ; preds = %if.end7
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5193
  %call9 = call zeroext i1 @pcie_downstream_port(%struct.pci_dev* %12) #6, !dbg !5194
  br i1 %call9, label %land.lhs.true10, label %if.end12, !dbg !5195

land.lhs.true10:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %pos.addr, align 4, !dbg !5196
  %cmp = icmp eq i32 %13, 26, !dbg !5197
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5198

if.then11:                                        ; preds = %land.lhs.true10
  %14 = load i32*, i32** %val.addr, align 8, !dbg !5199
  store i32 64, i32* %14, align 4, !dbg !5200
  br label %if.end12, !dbg !5201

if.end12:                                         ; preds = %if.then11, %land.lhs.true10, %land.lhs.true, %if.end7
  store i32 0, i32* %retval, align 4, !dbg !5202
  br label %return, !dbg !5202

return:                                           ; preds = %if.end12, %if.end6, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !5203
  ret i32 %15, !dbg !5203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_read_config_dword(%struct.pci_dev* %dev, i32 %where, i32* %val) #0 !dbg !5204 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5207, metadata !DIExpression()), !dbg !5208
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5213
  %call = call zeroext i1 @pci_dev_is_disconnected(%struct.pci_dev* %0) #6, !dbg !5215
  br i1 %call, label %if.then, label %if.end, !dbg !5216

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %val.addr, align 8, !dbg !5217
  store i32 -1, i32* %1, align 4, !dbg !5219
  store i32 134, i32* %retval, align 4, !dbg !5220
  br label %return, !dbg !5220

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5221
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 1, !dbg !5222
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5222
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5223
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 6, !dbg !5224
  %5 = load i32, i32* %devfn, align 8, !dbg !5224
  %6 = load i32, i32* %where.addr, align 4, !dbg !5225
  %7 = load i32*, i32** %val.addr, align 8, !dbg !5226
  %call1 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %3, i32 %5, i32 %6, i32* %7) #6, !dbg !5227
  store i32 %call1, i32* %retval, align 4, !dbg !5228
  br label %return, !dbg !5228

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5229
  ret i32 %8, !dbg !5229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcie_capability_write_word(%struct.pci_dev* %dev, i32 %pos, i16 zeroext %val) #0 !dbg !5230 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5233, metadata !DIExpression()), !dbg !5234
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  %0 = load i32, i32* %pos.addr, align 4, !dbg !5237
  %and = and i32 %0, 1, !dbg !5239
  %tobool = icmp ne i32 %and, 0, !dbg !5239
  br i1 %tobool, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !5241
  br label %return, !dbg !5241

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5242
  %2 = load i32, i32* %pos.addr, align 4, !dbg !5244
  %call = call zeroext i1 @pcie_capability_reg_implemented(%struct.pci_dev* %1, i32 %2) #6, !dbg !5245
  br i1 %call, label %if.end2, label %if.then1, !dbg !5246

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

if.end2:                                          ; preds = %if.end
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5248
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5249
  %call3 = call i32 @pci_pcie_cap(%struct.pci_dev* %4) #6, !dbg !5250
  %5 = load i32, i32* %pos.addr, align 4, !dbg !5251
  %add = add i32 %call3, %5, !dbg !5252
  %6 = load i16, i16* %val.addr, align 2, !dbg !5253
  %call4 = call i32 @pci_write_config_word(%struct.pci_dev* %3, i32 %add, i16 zeroext %6) #6, !dbg !5254
  store i32 %call4, i32* %retval, align 4, !dbg !5255
  br label %return, !dbg !5255

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5256
  ret i32 %7, !dbg !5256
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_write_config_word(%struct.pci_dev* %dev, i32 %where, i16 zeroext %val) #0 !dbg !5257 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5266
  %call = call zeroext i1 @pci_dev_is_disconnected(%struct.pci_dev* %0) #6, !dbg !5268
  br i1 %call, label %if.then, label %if.end, !dbg !5269

if.then:                                          ; preds = %entry
  store i32 134, i32* %retval, align 4, !dbg !5270
  br label %return, !dbg !5270

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5271
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 1, !dbg !5272
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5272
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5273
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 6, !dbg !5274
  %4 = load i32, i32* %devfn, align 8, !dbg !5274
  %5 = load i32, i32* %where.addr, align 4, !dbg !5275
  %6 = load i16, i16* %val.addr, align 2, !dbg !5276
  %call1 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %2, i32 %4, i32 %5, i16 zeroext %6) #6, !dbg !5277
  store i32 %call1, i32* %retval, align 4, !dbg !5278
  br label %return, !dbg !5278

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5279
  ret i32 %7, !dbg !5279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcie_capability_write_dword(%struct.pci_dev* %dev, i32 %pos, i32 %val) #0 !dbg !5280 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  %0 = load i32, i32* %pos.addr, align 4, !dbg !5287
  %and = and i32 %0, 3, !dbg !5289
  %tobool = icmp ne i32 %and, 0, !dbg !5289
  br i1 %tobool, label %if.then, label %if.end, !dbg !5290

if.then:                                          ; preds = %entry
  store i32 135, i32* %retval, align 4, !dbg !5291
  br label %return, !dbg !5291

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5292
  %2 = load i32, i32* %pos.addr, align 4, !dbg !5294
  %call = call zeroext i1 @pcie_capability_reg_implemented(%struct.pci_dev* %1, i32 %2) #6, !dbg !5295
  br i1 %call, label %if.end2, label %if.then1, !dbg !5296

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5297
  br label %return, !dbg !5297

if.end2:                                          ; preds = %if.end
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5298
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5299
  %call3 = call i32 @pci_pcie_cap(%struct.pci_dev* %4) #6, !dbg !5300
  %5 = load i32, i32* %pos.addr, align 4, !dbg !5301
  %add = add i32 %call3, %5, !dbg !5302
  %6 = load i32, i32* %val.addr, align 4, !dbg !5303
  %call4 = call i32 @pci_write_config_dword(%struct.pci_dev* %3, i32 %add, i32 %6) #6, !dbg !5304
  store i32 %call4, i32* %retval, align 4, !dbg !5305
  br label %return, !dbg !5305

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5306
  ret i32 %7, !dbg !5306
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_write_config_dword(%struct.pci_dev* %dev, i32 %where, i32 %val) #0 !dbg !5307 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5314, metadata !DIExpression()), !dbg !5315
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5316
  %call = call zeroext i1 @pci_dev_is_disconnected(%struct.pci_dev* %0) #6, !dbg !5318
  br i1 %call, label %if.then, label %if.end, !dbg !5319

if.then:                                          ; preds = %entry
  store i32 134, i32* %retval, align 4, !dbg !5320
  br label %return, !dbg !5320

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5321
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 1, !dbg !5322
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5322
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5323
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 6, !dbg !5324
  %4 = load i32, i32* %devfn, align 8, !dbg !5324
  %5 = load i32, i32* %where.addr, align 4, !dbg !5325
  %6 = load i32, i32* %val.addr, align 4, !dbg !5326
  %call1 = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %2, i32 %4, i32 %5, i32 %6) #6, !dbg !5327
  store i32 %call1, i32* %retval, align 4, !dbg !5328
  br label %return, !dbg !5328

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5329
  ret i32 %7, !dbg !5329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %dev, i32 %pos, i16 zeroext %clear, i16 zeroext %set) #0 !dbg !5330 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i16, align 2
  %set.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %val = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  store i16 %clear, i16* %clear.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %clear.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store i16 %set, i16* %set.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %set.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5341, metadata !DIExpression()), !dbg !5342
  call void @llvm.dbg.declare(metadata i16* %val, metadata !5343, metadata !DIExpression()), !dbg !5344
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5345
  %1 = load i32, i32* %pos.addr, align 4, !dbg !5346
  %call = call i32 @pcie_capability_read_word(%struct.pci_dev* %0, i32 %1, i16* %val) #6, !dbg !5347
  store i32 %call, i32* %ret, align 4, !dbg !5348
  %2 = load i32, i32* %ret, align 4, !dbg !5349
  %tobool = icmp ne i32 %2, 0, !dbg !5349
  br i1 %tobool, label %if.end, label %if.then, !dbg !5351

if.then:                                          ; preds = %entry
  %3 = load i16, i16* %clear.addr, align 2, !dbg !5352
  %conv = zext i16 %3 to i32, !dbg !5352
  %neg = xor i32 %conv, -1, !dbg !5354
  %4 = load i16, i16* %val, align 2, !dbg !5355
  %conv1 = zext i16 %4 to i32, !dbg !5355
  %and = and i32 %conv1, %neg, !dbg !5355
  %conv2 = trunc i32 %and to i16, !dbg !5355
  store i16 %conv2, i16* %val, align 2, !dbg !5355
  %5 = load i16, i16* %set.addr, align 2, !dbg !5356
  %conv3 = zext i16 %5 to i32, !dbg !5356
  %6 = load i16, i16* %val, align 2, !dbg !5357
  %conv4 = zext i16 %6 to i32, !dbg !5357
  %or = or i32 %conv4, %conv3, !dbg !5357
  %conv5 = trunc i32 %or to i16, !dbg !5357
  store i16 %conv5, i16* %val, align 2, !dbg !5357
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5358
  %8 = load i32, i32* %pos.addr, align 4, !dbg !5359
  %9 = load i16, i16* %val, align 2, !dbg !5360
  %call6 = call i32 @pcie_capability_write_word(%struct.pci_dev* %7, i32 %8, i16 zeroext %9) #6, !dbg !5361
  store i32 %call6, i32* %ret, align 4, !dbg !5362
  br label %if.end, !dbg !5363

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %ret, align 4, !dbg !5364
  ret i32 %10, !dbg !5365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pcie_capability_clear_and_set_dword(%struct.pci_dev* %dev, i32 %pos, i32 %clear, i32 %set) #0 !dbg !5366 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pos.addr = alloca i32, align 4
  %clear.addr = alloca i32, align 4
  %set.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5369, metadata !DIExpression()), !dbg !5370
  store i32 %pos, i32* %pos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pos.addr, metadata !5371, metadata !DIExpression()), !dbg !5372
  store i32 %clear, i32* %clear.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %clear.addr, metadata !5373, metadata !DIExpression()), !dbg !5374
  store i32 %set, i32* %set.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %set.addr, metadata !5375, metadata !DIExpression()), !dbg !5376
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5377, metadata !DIExpression()), !dbg !5378
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5379, metadata !DIExpression()), !dbg !5380
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5381
  %1 = load i32, i32* %pos.addr, align 4, !dbg !5382
  %call = call i32 @pcie_capability_read_dword(%struct.pci_dev* %0, i32 %1, i32* %val) #6, !dbg !5383
  store i32 %call, i32* %ret, align 4, !dbg !5384
  %2 = load i32, i32* %ret, align 4, !dbg !5385
  %tobool = icmp ne i32 %2, 0, !dbg !5385
  br i1 %tobool, label %if.end, label %if.then, !dbg !5387

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %clear.addr, align 4, !dbg !5388
  %neg = xor i32 %3, -1, !dbg !5390
  %4 = load i32, i32* %val, align 4, !dbg !5391
  %and = and i32 %4, %neg, !dbg !5391
  store i32 %and, i32* %val, align 4, !dbg !5391
  %5 = load i32, i32* %set.addr, align 4, !dbg !5392
  %6 = load i32, i32* %val, align 4, !dbg !5393
  %or = or i32 %6, %5, !dbg !5393
  store i32 %or, i32* %val, align 4, !dbg !5393
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5394
  %8 = load i32, i32* %pos.addr, align 4, !dbg !5395
  %9 = load i32, i32* %val, align 4, !dbg !5396
  %call1 = call i32 @pcie_capability_write_dword(%struct.pci_dev* %7, i32 %8, i32 %9) #6, !dbg !5397
  store i32 %call1, i32* %ret, align 4, !dbg !5398
  br label %if.end, !dbg !5399

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %ret, align 4, !dbg !5400
  ret i32 %10, !dbg !5401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_read_config_byte(%struct.pci_dev* %dev, i32 %where, i8* %val) #0 !dbg !5402 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i8*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5405, metadata !DIExpression()), !dbg !5406
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !5407, metadata !DIExpression()), !dbg !5408
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !5409, metadata !DIExpression()), !dbg !5410
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5411
  %call = call zeroext i1 @pci_dev_is_disconnected(%struct.pci_dev* %0) #6, !dbg !5413
  br i1 %call, label %if.then, label %if.end, !dbg !5414

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %val.addr, align 8, !dbg !5415
  store i8 -1, i8* %1, align 1, !dbg !5417
  store i32 134, i32* %retval, align 4, !dbg !5418
  br label %return, !dbg !5418

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5419
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 1, !dbg !5420
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5420
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5421
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 6, !dbg !5422
  %5 = load i32, i32* %devfn, align 8, !dbg !5422
  %6 = load i32, i32* %where.addr, align 4, !dbg !5423
  %7 = load i8*, i8** %val.addr, align 8, !dbg !5424
  %call1 = call i32 @pci_bus_read_config_byte(%struct.pci_bus* %3, i32 %5, i32 %6, i8* %7) #6, !dbg !5425
  store i32 %call1, i32* %retval, align 4, !dbg !5426
  br label %return, !dbg !5426

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5427
  ret i32 %8, !dbg !5427
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pci_dev_is_disconnected(%struct.pci_dev* %dev) #0 !dbg !5428 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5431
  %error_state = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 40, !dbg !5432
  %1 = load i32, i32* %error_state, align 4, !dbg !5432
  %cmp = icmp eq i32 %1, 3, !dbg !5433
  ret i1 %cmp, !dbg !5434
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_write_config_byte(%struct.pci_dev* %dev, i32 %where, i8 zeroext %val) #0 !dbg !5435 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %where.addr = alloca i32, align 4
  %val.addr = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !5440, metadata !DIExpression()), !dbg !5441
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5444
  %call = call zeroext i1 @pci_dev_is_disconnected(%struct.pci_dev* %0) #6, !dbg !5446
  br i1 %call, label %if.then, label %if.end, !dbg !5447

if.then:                                          ; preds = %entry
  store i32 134, i32* %retval, align 4, !dbg !5448
  br label %return, !dbg !5448

if.end:                                           ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5449
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 1, !dbg !5450
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5450
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5451
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 6, !dbg !5452
  %4 = load i32, i32* %devfn, align 8, !dbg !5452
  %5 = load i32, i32* %where.addr, align 4, !dbg !5453
  %6 = load i8, i8* %val.addr, align 1, !dbg !5454
  %call1 = call i32 @pci_bus_write_config_byte(%struct.pci_bus* %2, i32 %4, i32 %5, i8 zeroext %6) #6, !dbg !5455
  store i32 %call1, i32* %retval, align 4, !dbg !5456
  br label %return, !dbg !5456

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5457
  ret i32 %7, !dbg !5457
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %bus) #0 !dbg !5458 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5476
  %sysdata = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 11, !dbg !5477
  %1 = load i8*, i8** %sysdata, align 8, !dbg !5477
  %2 = bitcast i8* %1 to %struct.pci_sysdata*, !dbg !5476
  ret %struct.pci_sysdata* %2, !dbg !5478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5479 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5480, metadata !DIExpression()), !dbg !5482
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5483, metadata !DIExpression()), !dbg !5482
  %0 = load i64, i64* %__edi, align 8, !dbg !5482
  store i64 %0, i64* %__edi, align 8, !dbg !5482
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5484, metadata !DIExpression()), !dbg !5482
  %1 = load i64, i64* %__esi, align 8, !dbg !5482
  store i64 %1, i64* %__esi, align 8, !dbg !5482
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5485, metadata !DIExpression()), !dbg !5482
  %2 = load i64, i64* %__edx, align 8, !dbg !5482
  store i64 %2, i64* %__edx, align 8, !dbg !5482
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5486, metadata !DIExpression()), !dbg !5482
  %3 = load i64, i64* %__ecx, align 8, !dbg !5482
  store i64 %3, i64* %__ecx, align 8, !dbg !5482
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5487, metadata !DIExpression()), !dbg !5482
  %4 = load i64, i64* %__eax, align 8, !dbg !5482
  store i64 %4, i64* %__eax, align 8, !dbg !5482
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5482
  %6 = call i64 @llvm.read_register.i64(metadata !4038), !dbg !5488
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !5488, !srcloc !5491
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5488
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5488
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5488
  call void @llvm.write_register.i64(metadata !4038, i64 %asmresult1), !dbg !5488
  %8 = load i64, i64* %__eax, align 8, !dbg !5488
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5492, metadata !DIExpression()), !dbg !5494
  store i64 -1, i64* %__mask, align 8, !dbg !5494
  %9 = load i64, i64* %__mask, align 8, !dbg !5494
  store i64 %9, i64* %tmp, align 8, !dbg !5494
  %10 = load i64, i64* %tmp, align 8, !dbg !5494
  %and = and i64 %8, %10, !dbg !5488
  store i64 %and, i64* %__ret, align 8, !dbg !5488
  %11 = load i64, i64* %__ret, align 8, !dbg !5482
  store i64 %11, i64* %tmp2, align 8, !dbg !5495
  %12 = load i64, i64* %tmp2, align 8, !dbg !5482
  ret i64 %12, !dbg !5496
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

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

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @pcie_caps_reg(%struct.pci_dev* %dev) #0 !dbg !5497 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5502
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 20, !dbg !5503
  %1 = load i16, i16* %pcie_flags_reg, align 8, !dbg !5503
  ret i16 %1, !dbg !5504
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pcie_cap_has_sltctl(%struct.pci_dev* %dev) #0 !dbg !5505 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5508
  %call = call zeroext i1 @pcie_downstream_port(%struct.pci_dev* %0) #6, !dbg !5509
  br i1 %call, label %land.rhs, label %land.end, !dbg !5510

land.rhs:                                         ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5511
  %call1 = call zeroext i16 @pcie_caps_reg(%struct.pci_dev* %1) #6, !dbg !5512
  %conv = zext i16 %call1 to i32, !dbg !5512
  %and = and i32 %conv, 256, !dbg !5513
  %tobool = icmp ne i32 %and, 0, !dbg !5510
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !5514
  ret i1 %2, !dbg !5515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pcie_cap_version(%struct.pci_dev* %dev) #0 !dbg !5516 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5519
  %call = call zeroext i16 @pcie_caps_reg(%struct.pci_dev* %0) #6, !dbg !5520
  %conv = zext i16 %call to i32, !dbg !5520
  %and = and i32 %conv, 15, !dbg !5521
  ret i32 %and, !dbg !5522
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4038}
!llvm.module.flags = !{!4039, !4040, !4041, !4042}
!llvm.ident = !{!4043}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_lock", scope: !2, file: !3, line: 15, type: !726, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, globals: !123, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/access.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !73, !81, !87, !93, !98}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !67, line: 343, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !74, line: 524, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!80 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !74, line: 502, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 44, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 182, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "pci_channel_io_normal", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "pci_channel_io_frozen", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "pci_channel_io_perm_failure", value: 3, isUnsigned: true)
!104 = !{!105, !110, !113, !115, !116, !118, !120, !122}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !106, line: 17, baseType: !107)
!106 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !108, line: 21, baseType: !109)
!108 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !106, line: 19, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !108, line: 24, baseType: !112)
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !106, line: 21, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !108, line: 27, baseType: !7)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !{!0, !124, !4036}
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "_rs", scope: !126, file: !3, line: 163, type: !1644, isLocal: true, isDefinition: true)
!126 = distinct !DISubprogram(name: "pci_generic_config_write32", scope: !3, file: !3, line: 139, type: !127, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !130, !7, !129, !129, !113}
!129 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !99, line: 605, size: 8064, elements: !132)
!132 = !{!133, !140, !141, !142, !143, !3988, !3989, !3991, !3992, !3993, !4015, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4028, !4029, !4031, !4032, !4033, !4034, !4035}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !131, file: !99, line: 606, baseType: !134, size: 128)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !135, line: 178, size: 128, elements: !136)
!135 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !139}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !135, line: 179, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !135, line: 179, baseType: !138, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !131, file: !99, line: 607, baseType: !130, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !131, file: !99, line: 608, baseType: !134, size: 128, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !131, file: !99, line: 609, baseType: !134, size: 128, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !131, file: !99, line: 610, baseType: !144, size: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !99, line: 309, size: 19264, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !155, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3332, !3847, !3848, !3849, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3936, !3937, !3939, !3940, !3941, !3942, !3944, !3945, !3946, !3949, !3981, !3982, !3983, !3984, !3985, !3986, !3987}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !145, file: !99, line: 310, baseType: !134, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !145, file: !99, line: 311, baseType: !130, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !145, file: !99, line: 312, baseType: !130, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !145, file: !99, line: 314, baseType: !115, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !145, file: !99, line: 315, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !154, line: 123, flags: DIFlagFwdDecl)
!154 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !145, file: !99, line: 316, baseType: !156, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !99, line: 69, size: 832, elements: !158)
!158 = !{!159, !160, !161, !164, !165}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !157, file: !99, line: 70, baseType: !130, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !157, file: !99, line: 71, baseType: !134, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !157, file: !99, line: 72, baseType: !162, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !99, line: 72, flags: DIFlagFwdDecl)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !157, file: !99, line: 73, baseType: !109, size: 8, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !157, file: !99, line: 74, baseType: !166, size: 512, offset: 320)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !167, line: 64, size: 512, elements: !168)
!167 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !173, !174, !176, !236, !3166, !3305, !3310, !3311, !3312, !3313, !3314}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !167, line: 65, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !166, file: !167, line: 66, baseType: !134, size: 128, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !166, file: !167, line: 67, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !166, file: !167, line: 68, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !167, line: 192, size: 704, elements: !179)
!179 = !{!180, !181, !197, !198}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !178, file: !167, line: 193, baseType: !134, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !178, file: !167, line: 194, baseType: !182, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !183, line: 83, baseType: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !183, line: 71, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !183, line: 72, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !183, line: 72, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !187, file: !183, line: 73, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !183, line: 20, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !190, file: !183, line: 21, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !194, line: 25, baseType: !195)
!194 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 25, elements: !196)
!196 = !{}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !178, file: !167, line: 195, baseType: !166, size: 512, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !178, file: !167, line: 196, baseType: !199, size: 64, offset: 640)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !167, line: 156, size: 192, elements: !202)
!202 = !{!203, !208, !213}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !201, file: !167, line: 157, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!129, !177, !175}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !167, line: 158, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!170, !177, !175}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !201, file: !167, line: 159, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!129, !177, !175, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !167, line: 148, size: 20736, elements: !220)
!220 = !{!221, !226, !230, !231, !235}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !219, file: !167, line: 149, baseType: !222, size: 192)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 192, elements: !224)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!224 = !{!225}
!225 = !DISubrange(count: 3)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !219, file: !167, line: 150, baseType: !227, size: 4096, offset: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 4096, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !219, file: !167, line: 151, baseType: !129, size: 32, offset: 4288)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !219, file: !167, line: 152, baseType: !232, size: 16384, offset: 4320)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16384, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 2048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !219, file: !167, line: 153, baseType: !129, size: 32, offset: 20704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !166, file: !167, line: 69, baseType: !237, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !167, line: 138, size: 448, elements: !239)
!239 = !{!240, !244, !272, !274, !3128, !3156, !3160}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !238, file: !167, line: 139, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !175}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !238, file: !167, line: 140, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !248, line: 230, size: 128, elements: !249)
!248 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!249 = !{!250, !265}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !247, file: !248, line: 231, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!254, !175, !259, !223}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !135, line: 60, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !256, line: 73, baseType: !257)
!256 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !256, line: 15, baseType: !258)
!258 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !248, line: 30, size: 128, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !248, line: 31, baseType: !170, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !260, file: !248, line: 32, baseType: !264, size: 16, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !135, line: 19, baseType: !112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !247, file: !248, line: 232, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!254, !175, !259, !170, !269}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 55, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !256, line: 72, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !256, line: 16, baseType: !122)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !238, file: !167, line: 141, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !238, file: !167, line: 142, baseType: !275, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !248, line: 84, size: 320, elements: !279)
!279 = !{!280, !281, !285, !3125, !3126}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !248, line: 85, baseType: !170, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !278, file: !248, line: 86, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!264, !175, !259, !129}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !278, file: !248, line: 88, baseType: !286, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!264, !175, !289, !129}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !248, line: 168, size: 448, elements: !291)
!291 = !{!292, !293, !294, !295, !3120, !3121}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !290, file: !248, line: 169, baseType: !260, size: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !290, file: !248, line: 170, baseType: !269, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !290, file: !248, line: 171, baseType: !115, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !290, file: !248, line: 172, baseType: !296, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!254, !299, !175, !289, !223, !473, !269}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !301)
!301 = !{!302, !320, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3103, !3104, !3113, !3114, !3115, !3116, !3117, !3118, !3119}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !300, file: !44, line: 920, baseType: !303, size: 128)
!303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !300, file: !44, line: 917, size: 128, elements: !304)
!304 = !{!305, !311}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !303, file: !44, line: 918, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !307, line: 58, size: 64, elements: !308)
!307 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !307, line: 59, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !303, file: !44, line: 919, baseType: !312, size: 128, align: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !135, line: 216, size: 128, align: 64, elements: !313)
!313 = !{!314, !316}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !135, line: 217, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !312, file: !135, line: 218, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !315}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !300, file: !44, line: 921, baseType: !321, size: 128, offset: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !322, line: 8, size: 128, elements: !323)
!322 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!323 = !{!324, !328}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !321, file: !322, line: 9, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !327, line: 18, flags: DIFlagFwdDecl)
!327 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !321, file: !322, line: 10, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !327, line: 89, size: 1536, elements: !331)
!331 = !{!332, !333, !343, !351, !352, !370, !3053, !3055, !3067, !3068, !3069, !3070, !3071, !3077, !3078, !3079}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !330, file: !327, line: 91, baseType: !7, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !330, file: !327, line: 92, baseType: !334, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !335, line: 277, baseType: !336)
!335 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !335, line: 277, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !336, file: !335, line: 277, baseType: !339, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !335, line: 70, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !335, line: 65, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !340, file: !335, line: 66, baseType: !7, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !330, file: !327, line: 93, baseType: !344, size: 128, offset: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !345, line: 38, size: 128, elements: !346)
!345 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!346 = !{!347, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !344, file: !345, line: 39, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !344, file: !345, line: 39, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !330, file: !327, line: 94, baseType: !329, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !330, file: !327, line: 95, baseType: !353, size: 128, offset: 256)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !327, line: 47, size: 128, elements: !354)
!354 = !{!355, !367}
!355 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !327, line: 48, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !353, file: !327, line: 48, size: 64, elements: !357)
!357 = !{!358, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !327, line: 49, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !327, line: 49, size: 64, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !359, file: !327, line: 50, baseType: !113, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !359, file: !327, line: 50, baseType: !113, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !356, file: !327, line: 52, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !106, line: 23, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !108, line: 31, baseType: !366)
!366 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !327, line: 54, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !330, file: !327, line: 96, baseType: !371, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !373)
!373 = !{!374, !375, !376, !384, !391, !392, !540, !2764, !2765, !2766, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !3029, !3037, !3038, !3039, !3049, !3050, !3051, !3052}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !372, file: !44, line: 611, baseType: !264, size: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !372, file: !44, line: 612, baseType: !112, size: 16, offset: 16)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !372, file: !44, line: 613, baseType: !377, size: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !378, line: 23, baseType: !379)
!378 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 21, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !379, file: !378, line: 22, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !135, line: 32, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !256, line: 49, baseType: !7)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !372, file: !44, line: 614, baseType: !385, size: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !378, line: 28, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 26, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !378, line: 27, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !135, line: 33, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !256, line: 50, baseType: !7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !372, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !372, file: !44, line: 622, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !396)
!396 = !{!397, !401, !414, !418, !424, !428, !434, !438, !442, !446, !450, !451, !457, !461, !487, !516, !520, !526, !531, !535, !536}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !395, file: !44, line: 1865, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!329, !371, !329, !7}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !395, file: !44, line: 1866, baseType: !402, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!170, !329, !371, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !407, line: 10, size: 128, elements: !408)
!407 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!408 = !{!409, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !406, file: !407, line: 11, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !115}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !406, file: !407, line: 12, baseType: !115, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !395, file: !44, line: 1867, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!129, !371, !129}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !395, file: !44, line: 1868, baseType: !419, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !371, !129}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !395, file: !44, line: 1870, baseType: !425, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!129, !329, !223, !129}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !395, file: !44, line: 1872, baseType: !429, size: 64, offset: 320)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!129, !371, !329, !264, !432}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !135, line: 30, baseType: !433)
!433 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !395, file: !44, line: 1873, baseType: !435, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!129, !329, !371, !329}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !395, file: !44, line: 1874, baseType: !439, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!129, !371, !329}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !395, file: !44, line: 1875, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!129, !371, !329, !170}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !395, file: !44, line: 1876, baseType: !447, size: 64, offset: 576)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!129, !371, !329, !264}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !395, file: !44, line: 1877, baseType: !439, size: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !395, file: !44, line: 1878, baseType: !452, size: 64, offset: 704)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!129, !371, !329, !264, !455}
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !135, line: 16, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !135, line: 13, baseType: !113)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !395, file: !44, line: 1879, baseType: !458, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!129, !371, !329, !371, !329, !7}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !395, file: !44, line: 1881, baseType: !462, size: 64, offset: 832)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!129, !329, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !476, !484, !485, !486}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !466, file: !44, line: 220, baseType: !7, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !466, file: !44, line: 221, baseType: !264, size: 16, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !466, file: !44, line: 222, baseType: !377, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !466, file: !44, line: 223, baseType: !385, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !466, file: !44, line: 224, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !135, line: 46, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !256, line: 88, baseType: !475)
!475 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !466, file: !44, line: 225, baseType: !477, size: 128, offset: 192)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !478, line: 13, size: 128, elements: !479)
!478 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !483}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !477, file: !478, line: 14, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !478, line: 8, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !108, line: 30, baseType: !475)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !477, file: !478, line: 15, baseType: !258, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !466, file: !44, line: 226, baseType: !477, size: 128, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !466, file: !44, line: 227, baseType: !477, size: 128, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !466, file: !44, line: 234, baseType: !299, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !395, file: !44, line: 1882, baseType: !488, size: 64, offset: 896)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!129, !491, !493, !113, !7}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !495, line: 22, size: 1152, elements: !496)
!495 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !498, !499, !500, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !494, file: !495, line: 23, baseType: !113, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !494, file: !495, line: 24, baseType: !264, size: 16, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !494, file: !495, line: 25, baseType: !7, size: 32, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !494, file: !495, line: 26, baseType: !501, size: 32, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !135, line: 104, baseType: !113)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !494, file: !495, line: 27, baseType: !364, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !494, file: !495, line: 28, baseType: !364, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !494, file: !495, line: 37, baseType: !364, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !494, file: !495, line: 38, baseType: !455, size: 32, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !494, file: !495, line: 39, baseType: !455, size: 32, offset: 352)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !494, file: !495, line: 40, baseType: !377, size: 32, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !494, file: !495, line: 41, baseType: !385, size: 32, offset: 416)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !494, file: !495, line: 42, baseType: !473, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !494, file: !495, line: 43, baseType: !477, size: 128, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !494, file: !495, line: 44, baseType: !477, size: 128, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !494, file: !495, line: 45, baseType: !477, size: 128, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !494, file: !495, line: 46, baseType: !477, size: 128, offset: 896)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !494, file: !495, line: 47, baseType: !364, size: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !494, file: !495, line: 48, baseType: !364, size: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !395, file: !44, line: 1883, baseType: !517, size: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!254, !329, !223, !269}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !395, file: !44, line: 1884, baseType: !521, size: 64, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!129, !371, !524, !364, !364}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !395, file: !44, line: 1886, baseType: !527, size: 64, offset: 1088)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!129, !371, !530, !129}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !395, file: !44, line: 1887, baseType: !532, size: 64, offset: 1152)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!129, !371, !329, !299, !7, !264}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !395, file: !44, line: 1890, baseType: !447, size: 64, offset: 1216)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !395, file: !44, line: 1891, baseType: !537, size: 64, offset: 1280)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!129, !371, !422, !129}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !372, file: !44, line: 623, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !599, !2371, !2453, !2536, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2552, !2556, !2557, !2560, !2561, !2564, !2565, !2566, !2607, !2634, !2635, !2636, !2637, !2638, !2639, !2642, !2644, !2651, !2652, !2654, !2655, !2656, !2715, !2716, !2731, !2732, !2733, !2734, !2735, !2738, !2739, !2740, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !542, file: !44, line: 1417, baseType: !134, size: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !542, file: !44, line: 1418, baseType: !455, size: 32, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !542, file: !44, line: 1419, baseType: !109, size: 8, offset: 160)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !542, file: !44, line: 1420, baseType: !122, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !542, file: !44, line: 1421, baseType: !473, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !542, file: !44, line: 1422, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !552)
!552 = !{!553, !554, !555, !562, !566, !570, !574, !578, !579, !589, !592, !593, !594, !596, !597, !598}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !551, file: !44, line: 2229, baseType: !170, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !551, file: !44, line: 2230, baseType: !129, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !551, file: !44, line: 2238, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!129, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !561, line: 28, flags: DIFlagFwdDecl)
!561 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!562 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !551, file: !44, line: 2239, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !551, file: !44, line: 2240, baseType: !567, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!329, !550, !129, !170, !115}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !551, file: !44, line: 2242, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !541}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !551, file: !44, line: 2243, baseType: !575, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !577, line: 189, flags: DIFlagFwdDecl)
!577 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !551, file: !44, line: 2244, baseType: !550, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !551, file: !44, line: 2245, baseType: !580, size: 64, offset: 512)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !135, line: 182, size: 64, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !580, file: !135, line: 183, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !135, line: 186, size: 128, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !135, line: 187, baseType: !583, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !584, file: !135, line: 187, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !551, file: !44, line: 2247, baseType: !590, offset: 576)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !591, line: 187, elements: !196)
!591 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !551, file: !44, line: 2248, baseType: !590, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !551, file: !44, line: 2249, baseType: !590, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !551, file: !44, line: 2250, baseType: !595, offset: 576)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, elements: !224)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !551, file: !44, line: 2252, baseType: !590, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !551, file: !44, line: 2253, baseType: !590, offset: 576)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !551, file: !44, line: 2254, baseType: !590, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !542, file: !44, line: 1423, baseType: !600, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !603)
!603 = !{!604, !608, !612, !613, !617, !623, !627, !628, !629, !633, !637, !638, !639, !640, !646, !651, !652, !659, !660, !661, !662, !2355, !2370}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !602, file: !44, line: 1936, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!371, !541}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !602, file: !44, line: 1937, baseType: !609, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !371}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !602, file: !44, line: 1938, baseType: !609, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !602, file: !44, line: 1940, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !371, !129}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !602, file: !44, line: 1941, baseType: !618, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!129, !371, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !602, file: !44, line: 1942, baseType: !624, size: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!129, !371}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !602, file: !44, line: 1943, baseType: !609, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !602, file: !44, line: 1944, baseType: !571, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !602, file: !44, line: 1945, baseType: !630, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!129, !541, !129}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !602, file: !44, line: 1946, baseType: !634, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!129, !541}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !602, file: !44, line: 1947, baseType: !634, size: 64, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !602, file: !44, line: 1948, baseType: !634, size: 64, offset: 704)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !602, file: !44, line: 1949, baseType: !634, size: 64, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !602, file: !44, line: 1950, baseType: !641, size: 64, offset: 832)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!129, !329, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !602, file: !44, line: 1951, baseType: !647, size: 64, offset: 896)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!129, !541, !650, !223}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !602, file: !44, line: 1952, baseType: !571, size: 64, offset: 960)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !602, file: !44, line: 1954, baseType: !653, size: 64, offset: 1024)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!129, !656, !329}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !658, line: 539, flags: DIFlagFwdDecl)
!658 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!659 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !602, file: !44, line: 1955, baseType: !653, size: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !602, file: !44, line: 1956, baseType: !653, size: 64, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !602, file: !44, line: 1957, baseType: !653, size: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !602, file: !44, line: 1963, baseType: !663, size: 64, offset: 1280)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!129, !541, !666, !689}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !668, line: 68, size: 512, align: 128, elements: !669)
!668 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!669 = !{!670, !671, !2347, !2354}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !668, line: 69, baseType: !122, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !668, line: 77, baseType: !672, size: 320, offset: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !668, line: 77, size: 320, elements: !673)
!673 = !{!674, !860, !865, !893, !901, !907, !2278, !2346}
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !668, line: 78, baseType: !675, size: 320)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !668, line: 78, size: 320, elements: !676)
!676 = !{!677, !678, !858, !859}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !675, file: !668, line: 84, baseType: !134, size: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !675, file: !668, line: 86, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !681)
!681 = !{!682, !683, !691, !692, !697, !712, !728, !729, !730, !731, !851, !852, !855, !856, !857}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !680, file: !44, line: 452, baseType: !371, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !680, file: !44, line: 453, baseType: !684, size: 128, offset: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !685, line: 292, size: 128, elements: !686)
!685 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!686 = !{!687, !688, !690}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !684, file: !685, line: 293, baseType: !182)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !684, file: !685, line: 295, baseType: !689, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !135, line: 148, baseType: !7)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !684, file: !685, line: 296, baseType: !115, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !680, file: !44, line: 454, baseType: !689, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !680, file: !44, line: 455, baseType: !693, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !135, line: 168, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 166, size: 32, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !694, file: !135, line: 167, baseType: !129, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !680, file: !44, line: 460, baseType: !698, size: 128, offset: 256)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !699, line: 125, size: 128, elements: !700)
!699 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!700 = !{!701, !711}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !698, file: !699, line: 126, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !699, line: 31, size: 64, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !702, file: !699, line: 32, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !699, line: 24, size: 192, align: 64, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !706, file: !699, line: 25, baseType: !122, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !706, file: !699, line: 26, baseType: !705, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !706, file: !699, line: 27, baseType: !705, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !698, file: !699, line: 127, baseType: !705, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !680, file: !44, line: 461, baseType: !713, size: 256, offset: 384)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !714, line: 35, size: 256, elements: !715)
!714 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!715 = !{!716, !724, !725, !727}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !713, file: !714, line: 36, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !718, line: 13, baseType: !719)
!718 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !135, line: 175, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 173, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !720, file: !135, line: 174, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !106, line: 22, baseType: !482)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !713, file: !714, line: 42, baseType: !717, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !713, file: !714, line: 46, baseType: !726, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !183, line: 29, baseType: !190)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !713, file: !714, line: 47, baseType: !134, size: 128, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !680, file: !44, line: 462, baseType: !122, size: 64, offset: 640)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !680, file: !44, line: 463, baseType: !122, size: 64, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !680, file: !44, line: 464, baseType: !122, size: 64, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !680, file: !44, line: 465, baseType: !732, size: 64, offset: 832)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !735)
!735 = !{!736, !740, !744, !748, !752, !756, !762, !768, !772, !777, !781, !785, !789, !815, !819, !825, !826, !827, !831, !836, !840, !847}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !734, file: !44, line: 368, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!129, !666, !621}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !734, file: !44, line: 369, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!129, !299, !666}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !734, file: !44, line: 372, baseType: !745, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!129, !679, !621}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !734, file: !44, line: 375, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!129, !666}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !734, file: !44, line: 381, baseType: !753, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!129, !299, !679, !138, !7}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !734, file: !44, line: 383, baseType: !757, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !734, file: !44, line: 385, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!129, !299, !679, !473, !7, !7, !766, !767}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !734, file: !44, line: 388, baseType: !769, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!129, !299, !679, !473, !7, !7, !666, !115}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !734, file: !44, line: 393, baseType: !773, size: 64, offset: 512)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!776, !679, !776}
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !135, line: 125, baseType: !364)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !734, file: !44, line: 394, baseType: !778, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !666, !7, !7}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !734, file: !44, line: 395, baseType: !782, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!129, !666, !689}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !734, file: !44, line: 396, baseType: !786, size: 64, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !666}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !734, file: !44, line: 397, baseType: !790, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!254, !793, !813}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !795)
!795 = !{!796, !797, !798, !802, !803, !804, !805, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !794, file: !44, line: 321, baseType: !299, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !794, file: !44, line: 326, baseType: !473, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !794, file: !44, line: 327, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !793, !258, !258}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !794, file: !44, line: 328, baseType: !115, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !794, file: !44, line: 329, baseType: !129, size: 32, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !794, file: !44, line: 330, baseType: !110, size: 16, offset: 288)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !794, file: !44, line: 331, baseType: !110, size: 16, offset: 304)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !44, line: 332, baseType: !807, size: 64, offset: 320)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !44, line: 332, size: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !807, file: !44, line: 333, baseType: !7, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !807, file: !44, line: 334, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !734, file: !44, line: 402, baseType: !816, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!129, !679, !666, !666, !5}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !734, file: !44, line: 404, baseType: !820, size: 64, offset: 896)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!432, !666, !823}
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !824, line: 305, baseType: !7)
!824 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!825 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !734, file: !44, line: 405, baseType: !786, size: 64, offset: 960)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !734, file: !44, line: 406, baseType: !749, size: 64, offset: 1024)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !734, file: !44, line: 407, baseType: !828, size: 64, offset: 1088)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!129, !666, !122, !122}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !734, file: !44, line: 409, baseType: !832, size: 64, offset: 1152)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !666, !835, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !734, file: !44, line: 410, baseType: !837, size: 64, offset: 1216)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!129, !679, !666}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !734, file: !44, line: 413, baseType: !841, size: 64, offset: 1280)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!129, !844, !299, !846}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !734, file: !44, line: 415, baseType: !848, size: 64, offset: 1344)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !299}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !44, line: 466, baseType: !122, size: 64, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !680, file: !44, line: 467, baseType: !853, size: 32, offset: 960)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !854, line: 8, baseType: !113)
!854 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!855 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !680, file: !44, line: 468, baseType: !182, offset: 992)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !680, file: !44, line: 469, baseType: !134, size: 128, offset: 1024)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !680, file: !44, line: 470, baseType: !115, size: 64, offset: 1152)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !675, file: !668, line: 87, baseType: !122, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !675, file: !668, line: 94, baseType: !122, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !668, line: 96, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !668, line: 96, size: 64, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !861, file: !668, line: 101, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !135, line: 143, baseType: !364)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !668, line: 103, baseType: !866, size: 320)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !668, line: 103, size: 320, elements: !867)
!867 = !{!868, !878, !881, !882}
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !668, line: 104, baseType: !869, size: 128)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !668, line: 104, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !869, file: !668, line: 105, baseType: !134, size: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !869, file: !668, line: 106, baseType: !873, size: 128)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !869, file: !668, line: 106, size: 128, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !873, file: !668, line: 107, baseType: !666, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !873, file: !668, line: 109, baseType: !129, size: 32, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !873, file: !668, line: 110, baseType: !129, size: 32, offset: 96)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !866, file: !668, line: 117, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !668, line: 117, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !866, file: !668, line: 119, baseType: !115, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !668, line: 120, baseType: !883, size: 64, offset: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !668, line: 120, size: 64, elements: !884)
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !883, file: !668, line: 121, baseType: !115, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !883, file: !668, line: 122, baseType: !122, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !668, line: 123, baseType: !888, size: 32)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !668, line: 123, size: 32, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !888, file: !668, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !888, file: !668, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !888, file: !668, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !668, line: 130, baseType: !894, size: 192)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !668, line: 130, size: 192, elements: !895)
!895 = !{!896, !897, !898, !899, !900}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !894, file: !668, line: 131, baseType: !122, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !894, file: !668, line: 134, baseType: !109, size: 8, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !894, file: !668, line: 135, baseType: !109, size: 8, offset: 72)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !894, file: !668, line: 136, baseType: !693, size: 32, offset: 96)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !894, file: !668, line: 137, baseType: !7, size: 32, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !668, line: 139, baseType: !902, size: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !668, line: 139, size: 256, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !902, file: !668, line: 140, baseType: !122, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !902, file: !668, line: 141, baseType: !693, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !902, file: !668, line: 143, baseType: !134, size: 128, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !668, line: 145, baseType: !908, size: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !668, line: 145, size: 256, elements: !909)
!909 = !{!910, !911, !913, !914, !2277}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !908, file: !668, line: 146, baseType: !122, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !908, file: !668, line: 147, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !658, line: 509, baseType: !666)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !908, file: !668, line: 148, baseType: !122, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !668, line: 149, baseType: !915, size: 64, offset: 192)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !668, line: 149, size: 64, elements: !916)
!916 = !{!917, !2276}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !915, file: !668, line: 150, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !668, line: 388, size: 7296, elements: !920)
!920 = !{!921, !2272}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !668, line: 389, baseType: !922, size: 7296)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !919, file: !668, line: 389, size: 7296, elements: !923)
!923 = !{!924, !1042, !1043, !1044, !1048, !1049, !1050, !1051, !1052, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1093, !1101, !1104, !1150, !1151, !2256, !2257, !2260, !2261, !2262, !2265, !2266, !2267, !2270, !2271}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !922, file: !668, line: 390, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !668, line: 305, size: 1472, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935, !942, !943, !948, !949, !952, !1036, !1037, !1038, !1039, !1040}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !926, file: !668, line: 308, baseType: !122, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !926, file: !668, line: 309, baseType: !122, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !926, file: !668, line: 313, baseType: !925, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !926, file: !668, line: 313, baseType: !925, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !926, file: !668, line: 315, baseType: !706, size: 192, align: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !926, file: !668, line: 323, baseType: !122, size: 64, offset: 448)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !926, file: !668, line: 327, baseType: !918, size: 64, offset: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !926, file: !668, line: 333, baseType: !936, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !658, line: 284, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !658, line: 284, size: 64, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !937, file: !658, line: 284, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !941, line: 19, baseType: !122)
!941 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !926, file: !668, line: 334, baseType: !122, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !926, file: !668, line: 343, baseType: !944, size: 256, offset: 704)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !926, file: !668, line: 340, size: 256, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !944, file: !668, line: 341, baseType: !706, size: 192, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !944, file: !668, line: 342, baseType: !122, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !926, file: !668, line: 351, baseType: !134, size: 128, offset: 960)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !926, file: !668, line: 353, baseType: !950, size: 64, offset: 1088)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !668, line: 353, flags: DIFlagFwdDecl)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !926, file: !668, line: 356, baseType: !953, size: 64, offset: 1152)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !956)
!956 = !{!957, !961, !962, !966, !970, !1010, !1014, !1018, !1022, !1023, !1024, !1028, !1032}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !955, file: !14, line: 558, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !925}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !955, file: !14, line: 559, baseType: !958, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !955, file: !14, line: 560, baseType: !963, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!129, !925, !122}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !955, file: !14, line: 561, baseType: !967, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!129, !925}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !955, file: !14, line: 562, baseType: !971, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !668, line: 682, baseType: !7)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !977)
!977 = !{!978, !979, !980, !981, !982, !983, !990, !997, !1003, !1004, !1005, !1007, !1009}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !976, file: !14, line: 509, baseType: !925, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !976, file: !14, line: 511, baseType: !689, size: 32, offset: 96)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !976, file: !14, line: 512, baseType: !122, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !976, file: !14, line: 513, baseType: !122, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !976, file: !14, line: 514, baseType: !984, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !658, line: 385, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 385, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !986, file: !658, line: 385, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !941, line: 15, baseType: !122)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !976, file: !14, line: 516, baseType: !991, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !658, line: 359, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 359, size: 64, elements: !994)
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !993, file: !658, line: 359, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !941, line: 16, baseType: !122)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !976, file: !14, line: 519, baseType: !998, size: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !941, line: 21, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !941, line: 21, size: 64, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !999, file: !941, line: 21, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !941, line: 14, baseType: !122)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !976, file: !14, line: 521, baseType: !666, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !976, file: !14, line: 522, baseType: !666, size: 64, offset: 512)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !976, file: !14, line: 528, baseType: !1006, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !976, file: !14, line: 532, baseType: !1008, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !976, file: !14, line: 536, baseType: !912, size: 64, offset: 704)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !955, file: !14, line: 563, baseType: !1011, size: 64, offset: 320)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!974, !975, !13}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !955, file: !14, line: 565, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !975, !122, !122}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !955, file: !14, line: 567, baseType: !1019, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!122, !925}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !955, file: !14, line: 571, baseType: !971, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !955, file: !14, line: 574, baseType: !971, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !955, file: !14, line: 579, baseType: !1025, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!129, !925, !122, !115, !129, !129}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !955, file: !14, line: 585, baseType: !1029, size: 64, offset: 704)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!170, !925}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !955, file: !14, line: 615, baseType: !1033, size: 64, offset: 768)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!666, !925, !122}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !926, file: !668, line: 359, baseType: !122, size: 64, offset: 1216)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !926, file: !668, line: 361, baseType: !299, size: 64, offset: 1280)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !926, file: !668, line: 362, baseType: !115, size: 64, offset: 1344)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !926, file: !668, line: 365, baseType: !717, size: 64, offset: 1408)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !926, file: !668, line: 373, baseType: !1041, offset: 1472)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !668, line: 296, elements: !196)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !922, file: !668, line: 391, baseType: !702, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !922, file: !668, line: 392, baseType: !364, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !922, file: !668, line: 394, baseType: !1045, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!122, !299, !122, !122, !122, !122}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !922, file: !668, line: 398, baseType: !122, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !922, file: !668, line: 399, baseType: !122, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !922, file: !668, line: 405, baseType: !122, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !922, file: !668, line: 406, baseType: !122, size: 64, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !922, file: !668, line: 407, baseType: !1053, size: 64, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !658, line: 286, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 286, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1055, file: !658, line: 286, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !941, line: 18, baseType: !122)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !922, file: !668, line: 416, baseType: !693, size: 32, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !922, file: !668, line: 428, baseType: !693, size: 32, offset: 608)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !922, file: !668, line: 437, baseType: !693, size: 32, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !922, file: !668, line: 447, baseType: !693, size: 32, offset: 672)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !922, file: !668, line: 450, baseType: !717, size: 64, offset: 704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !922, file: !668, line: 452, baseType: !129, size: 32, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !922, file: !668, line: 454, baseType: !182, offset: 800)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !922, file: !668, line: 457, baseType: !713, size: 256, offset: 832)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !922, file: !668, line: 459, baseType: !134, size: 128, offset: 1088)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !922, file: !668, line: 466, baseType: !122, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !922, file: !668, line: 467, baseType: !122, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !922, file: !668, line: 469, baseType: !122, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !922, file: !668, line: 470, baseType: !122, size: 64, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !922, file: !668, line: 471, baseType: !719, size: 64, offset: 1472)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !922, file: !668, line: 472, baseType: !122, size: 64, offset: 1536)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !922, file: !668, line: 473, baseType: !122, size: 64, offset: 1600)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !922, file: !668, line: 474, baseType: !122, size: 64, offset: 1664)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !922, file: !668, line: 475, baseType: !122, size: 64, offset: 1728)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !922, file: !668, line: 477, baseType: !182, offset: 1792)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !922, file: !668, line: 478, baseType: !122, size: 64, offset: 1792)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !922, file: !668, line: 478, baseType: !122, size: 64, offset: 1856)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !922, file: !668, line: 478, baseType: !122, size: 64, offset: 1920)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !922, file: !668, line: 478, baseType: !122, size: 64, offset: 1984)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !922, file: !668, line: 479, baseType: !122, size: 64, offset: 2048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !922, file: !668, line: 479, baseType: !122, size: 64, offset: 2112)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !922, file: !668, line: 479, baseType: !122, size: 64, offset: 2176)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !922, file: !668, line: 480, baseType: !122, size: 64, offset: 2240)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !922, file: !668, line: 480, baseType: !122, size: 64, offset: 2304)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !922, file: !668, line: 480, baseType: !122, size: 64, offset: 2368)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !922, file: !668, line: 480, baseType: !122, size: 64, offset: 2432)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !922, file: !668, line: 482, baseType: !1090, size: 2816, offset: 2496)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2816, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 44)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !922, file: !668, line: 488, baseType: !1094, size: 256, offset: 5312)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1095, line: 60, size: 256, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1094, file: !1095, line: 61, baseType: !1098, size: 256)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 4)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !922, file: !668, line: 490, baseType: !1102, size: 64, offset: 5568)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !668, line: 490, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !922, file: !668, line: 493, baseType: !1105, size: 896, offset: 5632)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1106, line: 53, baseType: !1107)
!1106 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1106, line: 13, size: 896, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1115, !1116, !1123, !1124, !1144, !1145, !1146}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1107, file: !1106, line: 18, baseType: !364, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1107, file: !1106, line: 28, baseType: !719, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1107, file: !1106, line: 31, baseType: !713, size: 256, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1107, file: !1106, line: 32, baseType: !1113, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1106, line: 32, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1107, file: !1106, line: 37, baseType: !112, size: 16, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1107, file: !1106, line: 40, baseType: !1117, size: 192, offset: 512)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1118, line: 53, size: 192, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1117, file: !1118, line: 54, baseType: !717, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1117, file: !1118, line: 55, baseType: !182, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1117, file: !1118, line: 59, baseType: !134, size: 128, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1107, file: !1106, line: 41, baseType: !115, size: 64, offset: 704)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1107, file: !1106, line: 42, baseType: !1125, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1128, line: 13, size: 896, elements: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1127, file: !1128, line: 14, baseType: !115, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1127, file: !1128, line: 15, baseType: !122, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1127, file: !1128, line: 17, baseType: !122, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1127, file: !1128, line: 17, baseType: !122, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1127, file: !1128, line: 19, baseType: !258, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1127, file: !1128, line: 21, baseType: !258, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1127, file: !1128, line: 22, baseType: !258, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1127, file: !1128, line: 23, baseType: !258, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1127, file: !1128, line: 24, baseType: !258, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1127, file: !1128, line: 25, baseType: !258, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1127, file: !1128, line: 26, baseType: !258, size: 64, offset: 640)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1127, file: !1128, line: 27, baseType: !258, size: 64, offset: 704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1127, file: !1128, line: 28, baseType: !258, size: 64, offset: 768)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1127, file: !1128, line: 29, baseType: !258, size: 64, offset: 832)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1107, file: !1106, line: 44, baseType: !693, size: 32, offset: 832)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1107, file: !1106, line: 50, baseType: !110, size: 16, offset: 864)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1107, file: !1106, line: 51, baseType: !1147, size: 16, offset: 880)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !106, line: 18, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !108, line: 23, baseType: !1149)
!1149 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !922, file: !668, line: 495, baseType: !122, size: 64, offset: 6528)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !922, file: !668, line: 497, baseType: !1152, size: 64, offset: 6592)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !668, line: 381, size: 384, elements: !1154)
!1154 = !{!1155, !1156, !2255}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1153, file: !668, line: 382, baseType: !693, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1153, file: !668, line: 383, baseType: !1157, size: 128, offset: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !668, line: 376, size: 128, elements: !1158)
!1158 = !{!1159, !2253}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1157, file: !668, line: 377, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1162, line: 640, size: 48640, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164, !1170, !1172, !1173, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1190, !1208, !1219, !1302, !1303, !1304, !1315, !1316, !1318, !1319, !1320, !1321, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1400, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1438, !1440, !1441, !1442, !1454, !1455, !1456, !1457, !1458, !1459, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1483, !1488, !1672, !1673, !1674, !1675, !1679, !1682, !1685, !1688, !1691, !1694, !1795, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1841, !1842, !1843, !1844, !1845, !1850, !1851, !1852, !1855, !1856, !1859, !1862, !1865, !1868, !1911, !1914, !1915, !1994, !1995, !1998, !1999, !2002, !2003, !2004, !2008, !2009, !2010, !2023, !2024, !2025, !2035, !2040, !2043, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1161, file: !1162, line: 646, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1166, line: 56, size: 128, elements: !1167)
!1166 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1165, file: !1166, line: 57, baseType: !122, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1165, file: !1166, line: 58, baseType: !113, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !1162, line: 649, baseType: !1171, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !258)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1161, file: !1162, line: 657, baseType: !115, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1161, file: !1162, line: 658, baseType: !1174, size: 32, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1175, line: 113, baseType: !1176)
!1175 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1175, line: 111, size: 32, elements: !1177)
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1176, file: !1175, line: 112, baseType: !693, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !1162, line: 660, baseType: !7, size: 32, offset: 288)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1161, file: !1162, line: 661, baseType: !7, size: 32, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1161, file: !1162, line: 684, baseType: !129, size: 32, offset: 352)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1161, file: !1162, line: 686, baseType: !129, size: 32, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1161, file: !1162, line: 687, baseType: !129, size: 32, offset: 416)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1161, file: !1162, line: 688, baseType: !129, size: 32, offset: 448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1161, file: !1162, line: 689, baseType: !7, size: 32, offset: 480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1161, file: !1162, line: 691, baseType: !1187, size: 64, offset: 512)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1162, line: 691, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1161, file: !1162, line: 692, baseType: !1191, size: 832, offset: 576)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1162, line: 451, size: 832, elements: !1192)
!1192 = !{!1193, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1191, file: !1162, line: 453, baseType: !1194, size: 128)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1162, line: 325, size: 128, elements: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1194, file: !1162, line: 326, baseType: !122, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1194, file: !1162, line: 327, baseType: !113, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1191, file: !1162, line: 454, baseType: !706, size: 192, align: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1191, file: !1162, line: 455, baseType: !134, size: 128, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1191, file: !1162, line: 456, baseType: !7, size: 32, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1191, file: !1162, line: 458, baseType: !364, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1191, file: !1162, line: 459, baseType: !364, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1191, file: !1162, line: 460, baseType: !364, size: 64, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1191, file: !1162, line: 461, baseType: !364, size: 64, offset: 704)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1191, file: !1162, line: 463, baseType: !364, size: 64, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1191, file: !1162, line: 465, baseType: !1207, offset: 832)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1162, line: 415, elements: !196)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1161, file: !1162, line: 693, baseType: !1209, size: 384, offset: 1408)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1162, line: 489, size: 384, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1209, file: !1162, line: 490, baseType: !134, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1209, file: !1162, line: 491, baseType: !122, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1209, file: !1162, line: 492, baseType: !122, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1209, file: !1162, line: 493, baseType: !7, size: 32, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1209, file: !1162, line: 494, baseType: !112, size: 16, offset: 288)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1209, file: !1162, line: 495, baseType: !112, size: 16, offset: 304)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1209, file: !1162, line: 497, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1161, file: !1162, line: 697, baseType: !1220, size: 1792, offset: 1792)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1162, line: 507, size: 1792, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1299, !1300}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1220, file: !1162, line: 508, baseType: !706, size: 192, align: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1220, file: !1162, line: 515, baseType: !364, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1220, file: !1162, line: 516, baseType: !364, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1220, file: !1162, line: 517, baseType: !364, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1220, file: !1162, line: 518, baseType: !364, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1220, file: !1162, line: 519, baseType: !364, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1220, file: !1162, line: 526, baseType: !723, size: 64, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1220, file: !1162, line: 527, baseType: !364, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !1162, line: 528, baseType: !7, size: 32, offset: 640)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1220, file: !1162, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1220, file: !1162, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1220, file: !1162, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1220, file: !1162, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1220, file: !1162, line: 563, baseType: !1236, size: 512, offset: 704)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1237)
!1237 = !{!1238, !1246, !1247, !1252, !1295, !1296, !1297, !1298}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1236, file: !20, line: 119, baseType: !1239, size: 256)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1240, line: 9, size: 256, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1239, file: !1240, line: 10, baseType: !706, size: 192, align: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1239, file: !1240, line: 11, baseType: !1244, size: 64, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1245, line: 29, baseType: !723)
!1245 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1236, file: !20, line: 120, baseType: !1244, size: 64, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1236, file: !20, line: 121, baseType: !1248, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!19, !1251}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1236, file: !20, line: 122, baseType: !1253, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1255)
!1255 = !{!1256, !1276, !1277, !1280, !1285, !1286, !1290, !1294}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1254, file: !20, line: 160, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1258, file: !20, line: 215, baseType: !726)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1258, file: !20, line: 216, baseType: !7, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1258, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1258, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1258, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1258, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1258, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1258, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1258, file: !20, line: 233, baseType: !1244, size: 64, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1258, file: !20, line: 234, baseType: !1251, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1258, file: !20, line: 235, baseType: !1244, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1258, file: !20, line: 236, baseType: !1251, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1258, file: !20, line: 237, baseType: !1273, size: 4096, offset: 512)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1254, size: 4096, elements: !1274)
!1274 = !{!1275}
!1275 = !DISubrange(count: 8)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1254, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1254, file: !20, line: 162, baseType: !1278, size: 32, offset: 96)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !135, line: 27, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !256, line: 96, baseType: !129)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1254, file: !20, line: 163, baseType: !1281, size: 32, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !335, line: 276, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !335, line: 276, size: 32, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1282, file: !335, line: 276, baseType: !339, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1254, file: !20, line: 164, baseType: !1251, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1254, file: !20, line: 165, baseType: !1287, size: 128, offset: 256)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1240, line: 14, size: 128, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1287, file: !1240, line: 15, baseType: !698, size: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1254, file: !20, line: 166, baseType: !1291, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1244}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1254, file: !20, line: 167, baseType: !1244, size: 64, offset: 448)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1236, file: !20, line: 123, baseType: !105, size: 8, offset: 448)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1236, file: !20, line: 124, baseType: !105, size: 8, offset: 456)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1236, file: !20, line: 125, baseType: !105, size: 8, offset: 464)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1236, file: !20, line: 126, baseType: !105, size: 8, offset: 472)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1220, file: !1162, line: 572, baseType: !1236, size: 512, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1220, file: !1162, line: 580, baseType: !1301, size: 64, offset: 1728)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1161, file: !1162, line: 721, baseType: !7, size: 32, offset: 3584)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1161, file: !1162, line: 722, baseType: !129, size: 32, offset: 3616)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1161, file: !1162, line: 723, baseType: !1305, size: 64, offset: 3648)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1308, line: 17, baseType: !1309)
!1308 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1308, line: 17, size: 64, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1309, file: !1308, line: 17, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 1)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1161, file: !1162, line: 724, baseType: !1307, size: 64, offset: 3712)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1161, file: !1162, line: 749, baseType: !1317, offset: 3776)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1162, line: 290, elements: !196)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1161, file: !1162, line: 751, baseType: !134, size: 128, offset: 3776)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1161, file: !1162, line: 757, baseType: !918, size: 64, offset: 3904)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1161, file: !1162, line: 758, baseType: !918, size: 64, offset: 3968)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1161, file: !1162, line: 761, baseType: !1322, size: 320, offset: 4032)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1095, line: 34, size: 320, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1322, file: !1095, line: 35, baseType: !364, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1322, file: !1095, line: 36, baseType: !1326, size: 256, offset: 64)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 256, elements: !1099)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1161, file: !1162, line: 766, baseType: !129, size: 32, offset: 4352)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1161, file: !1162, line: 767, baseType: !129, size: 32, offset: 4384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1161, file: !1162, line: 768, baseType: !129, size: 32, offset: 4416)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1161, file: !1162, line: 770, baseType: !129, size: 32, offset: 4448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1161, file: !1162, line: 772, baseType: !122, size: 64, offset: 4480)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1161, file: !1162, line: 775, baseType: !7, size: 32, offset: 4544)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1161, file: !1162, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1161, file: !1162, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1161, file: !1162, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1161, file: !1162, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1161, file: !1162, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1161, file: !1162, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1161, file: !1162, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1161, file: !1162, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1161, file: !1162, line: 831, baseType: !122, size: 64, offset: 4672)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1161, file: !1162, line: 833, baseType: !1343, size: 384, offset: 4736)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1344)
!1344 = !{!1345, !1350}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1343, file: !25, line: 26, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!258, !1349}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !25, line: 27, baseType: !1351, size: 320, offset: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !25, line: 27, size: 320, elements: !1352)
!1352 = !{!1353, !1363, !1390}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1351, file: !25, line: 36, baseType: !1354, size: 320)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !25, line: 29, size: 320, elements: !1355)
!1355 = !{!1356, !1358, !1359, !1360, !1361, !1362}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1354, file: !25, line: 30, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1354, file: !25, line: 31, baseType: !113, size: 32, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1354, file: !25, line: 32, baseType: !113, size: 32, offset: 96)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1354, file: !25, line: 33, baseType: !113, size: 32, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1354, file: !25, line: 34, baseType: !364, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1354, file: !25, line: 35, baseType: !1357, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1351, file: !25, line: 46, baseType: !1364, size: 192)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !25, line: 38, size: 192, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1389}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1364, file: !25, line: 39, baseType: !1278, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1364, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !25, line: 41, baseType: !1369, size: 64, offset: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !25, line: 41, size: 64, elements: !1370)
!1370 = !{!1371, !1379}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1369, file: !25, line: 42, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1374, line: 7, size: 128, elements: !1375)
!1374 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1375 = !{!1376, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1373, file: !1374, line: 8, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !256, line: 93, baseType: !475)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1373, file: !1374, line: 9, baseType: !475, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1369, file: !25, line: 43, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1382, line: 7, size: 64, elements: !1383)
!1382 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384, !1388}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1381, file: !1382, line: 8, baseType: !1385, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1382, line: 5, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !106, line: 20, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !108, line: 26, baseType: !129)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1381, file: !1382, line: 9, baseType: !1386, size: 32, offset: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1364, file: !25, line: 45, baseType: !364, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1351, file: !25, line: 54, baseType: !1391, size: 256)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1351, file: !25, line: 48, size: 256, elements: !1392)
!1392 = !{!1393, !1396, !1397, !1398, !1399}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1391, file: !25, line: 49, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1391, file: !25, line: 50, baseType: !129, size: 32, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1391, file: !25, line: 51, baseType: !129, size: 32, offset: 96)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1391, file: !25, line: 52, baseType: !122, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1391, file: !25, line: 53, baseType: !122, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1161, file: !1162, line: 835, baseType: !1401, size: 32, offset: 5120)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !135, line: 22, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !256, line: 28, baseType: !129)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1161, file: !1162, line: 836, baseType: !1401, size: 32, offset: 5152)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1161, file: !1162, line: 840, baseType: !122, size: 64, offset: 5184)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1161, file: !1162, line: 849, baseType: !1160, size: 64, offset: 5248)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1161, file: !1162, line: 852, baseType: !1160, size: 64, offset: 5312)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1161, file: !1162, line: 857, baseType: !134, size: 128, offset: 5376)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1161, file: !1162, line: 858, baseType: !134, size: 128, offset: 5504)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1161, file: !1162, line: 859, baseType: !1160, size: 64, offset: 5632)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1161, file: !1162, line: 867, baseType: !134, size: 128, offset: 5696)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1161, file: !1162, line: 868, baseType: !134, size: 128, offset: 5824)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1161, file: !1162, line: 871, baseType: !1413, size: 64, offset: 5952)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1421, !1422, !1429, !1430}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1414, file: !53, line: 61, baseType: !1174, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1414, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1414, file: !53, line: 63, baseType: !182, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1414, file: !53, line: 65, baseType: !1420, size: 256, offset: 64)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 256, elements: !1099)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1414, file: !53, line: 66, baseType: !580, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1414, file: !53, line: 68, baseType: !1423, size: 128, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1424, line: 40, baseType: !1425)
!1424 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1424, line: 36, size: 128, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1425, file: !1424, line: 37, baseType: !182)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1425, file: !1424, line: 38, baseType: !134, size: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1414, file: !53, line: 69, baseType: !312, size: 128, align: 64, offset: 512)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1414, file: !53, line: 70, baseType: !1431, size: 128, offset: 640)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1432, size: 128, elements: !1313)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1432, file: !53, line: 55, baseType: !129, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1432, file: !53, line: 56, baseType: !1436, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1161, file: !1162, line: 872, baseType: !1439, size: 512, offset: 6016)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !584, size: 512, elements: !1099)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1161, file: !1162, line: 873, baseType: !134, size: 128, offset: 6528)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1161, file: !1162, line: 874, baseType: !134, size: 128, offset: 6656)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1161, file: !1162, line: 876, baseType: !1443, size: 64, offset: 6784)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1445, line: 26, size: 192, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1444, file: !1445, line: 27, baseType: !7, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1444, file: !1445, line: 28, baseType: !1449, size: 128, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1450, line: 43, size: 128, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1449, file: !1450, line: 44, baseType: !726)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1449, file: !1450, line: 45, baseType: !134, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1161, file: !1162, line: 879, baseType: !650, size: 64, offset: 6848)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1161, file: !1162, line: 882, baseType: !650, size: 64, offset: 6912)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1161, file: !1162, line: 884, baseType: !364, size: 64, offset: 6976)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1161, file: !1162, line: 885, baseType: !364, size: 64, offset: 7040)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1161, file: !1162, line: 890, baseType: !364, size: 64, offset: 7104)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1161, file: !1162, line: 891, baseType: !1460, size: 128, offset: 7168)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1162, line: 242, size: 128, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1460, file: !1162, line: 244, baseType: !364, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1460, file: !1162, line: 245, baseType: !364, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1460, file: !1162, line: 246, baseType: !726, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1161, file: !1162, line: 900, baseType: !122, size: 64, offset: 7296)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1161, file: !1162, line: 901, baseType: !122, size: 64, offset: 7360)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1161, file: !1162, line: 904, baseType: !364, size: 64, offset: 7424)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1161, file: !1162, line: 907, baseType: !364, size: 64, offset: 7488)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1161, file: !1162, line: 910, baseType: !122, size: 64, offset: 7552)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1161, file: !1162, line: 911, baseType: !122, size: 64, offset: 7616)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1161, file: !1162, line: 914, baseType: !1472, size: 640, offset: 7680)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1473, line: 123, size: 640, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1481, !1482}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1472, file: !1473, line: 124, baseType: !1476, size: 576)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 576, elements: !224)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1473, line: 108, size: 192, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1477, file: !1473, line: 109, baseType: !364, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1477, file: !1473, line: 110, baseType: !1287, size: 128, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1472, file: !1473, line: 125, baseType: !7, size: 32, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1472, file: !1473, line: 126, baseType: !7, size: 32, offset: 608)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1161, file: !1162, line: 917, baseType: !1484, size: 192, offset: 8320)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1473, line: 134, size: 192, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1484, file: !1473, line: 135, baseType: !312, size: 128, align: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1484, file: !1473, line: 136, baseType: !7, size: 32, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1161, file: !1162, line: 923, baseType: !1489, size: 64, offset: 8512)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1492, line: 111, size: 1280, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1513, !1514, !1515, !1516, !1517, !1518, !1625, !1626, !1627, !1628, !1654, !1657, !1667}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1491, file: !1492, line: 112, baseType: !693, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1491, file: !1492, line: 120, baseType: !377, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1491, file: !1492, line: 121, baseType: !385, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1491, file: !1492, line: 122, baseType: !377, size: 32, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1491, file: !1492, line: 123, baseType: !385, size: 32, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1491, file: !1492, line: 124, baseType: !377, size: 32, offset: 160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1491, file: !1492, line: 125, baseType: !385, size: 32, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1491, file: !1492, line: 126, baseType: !377, size: 32, offset: 224)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1491, file: !1492, line: 127, baseType: !385, size: 32, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1491, file: !1492, line: 128, baseType: !7, size: 32, offset: 288)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1491, file: !1492, line: 129, baseType: !1505, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1506, line: 26, baseType: !1507)
!1506 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1506, line: 24, size: 64, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1507, file: !1506, line: 25, baseType: !1510, size: 64)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 2)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1491, file: !1492, line: 130, baseType: !1505, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1491, file: !1492, line: 131, baseType: !1505, size: 64, offset: 448)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1491, file: !1492, line: 132, baseType: !1505, size: 64, offset: 512)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1491, file: !1492, line: 133, baseType: !1505, size: 64, offset: 576)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1491, file: !1492, line: 135, baseType: !109, size: 8, offset: 640)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1491, file: !1492, line: 137, baseType: !1519, size: 64, offset: 704)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1521, line: 189, size: 1664, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524, !1527, !1532, !1533, !1536, !1537, !1542, !1543, !1544, !1545, !1547, !1548, !1549, !1550, !1551, !1589, !1610}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1520, file: !1521, line: 190, baseType: !1174, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1520, file: !1521, line: 191, baseType: !1525, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1521, line: 28, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !135, line: 98, baseType: !1386)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1521, line: 192, baseType: !1528, size: 192, offset: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !1521, line: 192, size: 192, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1528, file: !1521, line: 193, baseType: !134, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1528, file: !1521, line: 194, baseType: !706, size: 192, align: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1520, file: !1521, line: 199, baseType: !713, size: 256, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1520, file: !1521, line: 200, baseType: !1534, size: 64, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1521, line: 200, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1520, file: !1521, line: 201, baseType: !115, size: 64, offset: 576)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1521, line: 202, baseType: !1538, size: 64, offset: 640)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !1521, line: 202, size: 64, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1538, file: !1521, line: 203, baseType: !481, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1538, file: !1521, line: 204, baseType: !481, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1520, file: !1521, line: 206, baseType: !481, size: 64, offset: 704)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1520, file: !1521, line: 207, baseType: !377, size: 32, offset: 768)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1520, file: !1521, line: 208, baseType: !385, size: 32, offset: 800)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1520, file: !1521, line: 209, baseType: !1546, size: 32, offset: 832)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1521, line: 31, baseType: !501)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1520, file: !1521, line: 210, baseType: !112, size: 16, offset: 864)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1520, file: !1521, line: 211, baseType: !112, size: 16, offset: 880)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1520, file: !1521, line: 215, baseType: !1149, size: 16, offset: 896)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1520, file: !1521, line: 222, baseType: !122, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1521, line: 239, baseType: !1552, size: 320, offset: 1024)
!1552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !1521, line: 239, size: 320, elements: !1553)
!1553 = !{!1554, !1581}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1552, file: !1521, line: 240, baseType: !1555, size: 320)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1521, line: 108, size: 320, elements: !1556)
!1556 = !{!1557, !1558, !1570, !1573, !1580}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1555, file: !1521, line: 110, baseType: !122, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1521, line: 111, baseType: !1559, size: 64, offset: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !1521, line: 111, size: 64, elements: !1560)
!1560 = !{!1561, !1569}
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1521, line: 112, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !1521, line: 112, size: 64, elements: !1563)
!1563 = !{!1564, !1565}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1562, file: !1521, line: 114, baseType: !110, size: 16)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1562, file: !1521, line: 115, baseType: !1566, size: 48, offset: 16)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 48, elements: !1567)
!1567 = !{!1568}
!1568 = !DISubrange(count: 6)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1559, file: !1521, line: 121, baseType: !122, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1555, file: !1521, line: 123, baseType: !1571, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1521, line: 96, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1555, file: !1521, line: 124, baseType: !1574, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1521, line: 102, size: 192, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1575, file: !1521, line: 103, baseType: !312, size: 128, align: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1575, file: !1521, line: 104, baseType: !1174, size: 32, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1575, file: !1521, line: 105, baseType: !432, size: 8, offset: 160)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1555, file: !1521, line: 125, baseType: !170, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1521, line: 241, baseType: !1582, size: 320)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1552, file: !1521, line: 241, size: 320, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1587, !1588}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1582, file: !1521, line: 242, baseType: !122, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1582, file: !1521, line: 243, baseType: !122, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1582, file: !1521, line: 244, baseType: !1571, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1582, file: !1521, line: 245, baseType: !1574, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1582, file: !1521, line: 246, baseType: !223, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1521, line: 254, baseType: !1590, size: 256, offset: 1344)
!1590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !1521, line: 254, size: 256, elements: !1591)
!1591 = !{!1592, !1598}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1590, file: !1521, line: 255, baseType: !1593, size: 256)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1521, line: 128, size: 256, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1593, file: !1521, line: 129, baseType: !115, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1593, file: !1521, line: 130, baseType: !1597, size: 256)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !1099)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1590, file: !1521, line: 256, baseType: !1599, size: 256)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1590, file: !1521, line: 256, size: 256, elements: !1600)
!1600 = !{!1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1599, file: !1521, line: 258, baseType: !134, size: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1599, file: !1521, line: 259, baseType: !1603, size: 128, offset: 128)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1604, line: 22, size: 128, elements: !1605)
!1604 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1609}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1603, file: !1604, line: 23, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1604, line: 23, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1603, file: !1604, line: 24, baseType: !122, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1520, file: !1521, line: 274, baseType: !1611, size: 64, offset: 1600)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1521, line: 170, size: 192, elements: !1613)
!1613 = !{!1614, !1623, !1624}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1612, file: !1521, line: 171, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1521, line: 165, baseType: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!129, !1519, !1619, !1621, !1519}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1612, file: !1521, line: 172, baseType: !1519, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1612, file: !1521, line: 173, baseType: !1571, size: 64, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1491, file: !1492, line: 138, baseType: !1519, size: 64, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1491, file: !1492, line: 139, baseType: !1519, size: 64, offset: 832)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1491, file: !1492, line: 140, baseType: !1519, size: 64, offset: 896)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1491, file: !1492, line: 145, baseType: !1629, size: 64, offset: 960)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1631, line: 13, size: 896, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1630, file: !1631, line: 14, baseType: !1174, size: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1630, file: !1631, line: 15, baseType: !693, size: 32, offset: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1630, file: !1631, line: 16, baseType: !693, size: 32, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1630, file: !1631, line: 21, baseType: !717, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1630, file: !1631, line: 27, baseType: !122, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1630, file: !1631, line: 28, baseType: !122, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1630, file: !1631, line: 29, baseType: !717, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1630, file: !1631, line: 32, baseType: !584, size: 128, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1630, file: !1631, line: 33, baseType: !377, size: 32, offset: 512)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1630, file: !1631, line: 37, baseType: !717, size: 64, offset: 576)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1630, file: !1631, line: 44, baseType: !1644, size: 256, offset: 640)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1645, line: 15, size: 256, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1644, file: !1645, line: 16, baseType: !726)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1644, file: !1645, line: 18, baseType: !129, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1644, file: !1645, line: 19, baseType: !129, size: 32, offset: 32)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1644, file: !1645, line: 20, baseType: !129, size: 32, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1644, file: !1645, line: 21, baseType: !129, size: 32, offset: 96)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1644, file: !1645, line: 22, baseType: !122, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1644, file: !1645, line: 23, baseType: !122, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1491, file: !1492, line: 146, baseType: !1655, size: 64, offset: 1024)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !668, line: 516, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1491, file: !1492, line: 147, baseType: !1658, size: 64, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1492, line: 25, size: 64, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1659, file: !1492, line: 26, baseType: !693, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1659, file: !1492, line: 27, baseType: !129, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1659, file: !1492, line: 28, baseType: !1664, offset: 64)
!1664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !1665)
!1665 = !{!1666}
!1666 = !DISubrange(count: 0)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1491, file: !1492, line: 149, baseType: !1668, size: 128, offset: 1152)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1491, file: !1492, line: 149, size: 128, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1668, file: !1492, line: 150, baseType: !129, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1668, file: !1492, line: 151, baseType: !312, size: 128, align: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1161, file: !1162, line: 926, baseType: !1489, size: 64, offset: 8576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1161, file: !1162, line: 929, baseType: !1489, size: 64, offset: 8640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1161, file: !1162, line: 933, baseType: !1519, size: 64, offset: 8704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1161, file: !1162, line: 943, baseType: !1676, size: 128, offset: 8768)
!1676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 128, elements: !1677)
!1677 = !{!1678}
!1678 = !DISubrange(count: 16)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1161, file: !1162, line: 945, baseType: !1680, size: 64, offset: 8896)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1162, line: 49, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1161, file: !1162, line: 956, baseType: !1683, size: 64, offset: 8960)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1162, line: 45, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1161, file: !1162, line: 959, baseType: !1686, size: 64, offset: 9024)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1162, line: 959, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1161, file: !1162, line: 962, baseType: !1689, size: 64, offset: 9088)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1162, line: 66, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1161, file: !1162, line: 966, baseType: !1692, size: 64, offset: 9152)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1162, line: 50, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1161, file: !1162, line: 969, baseType: !1695, size: 64, offset: 9216)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1697, line: 82, size: 7296, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1734, !1743, !1744, !1746, !1747, !1748, !1751, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1781, !1782, !1789, !1790, !1791, !1792, !1793, !1794}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1696, file: !1697, line: 83, baseType: !1174, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1696, file: !1697, line: 84, baseType: !693, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1696, file: !1697, line: 85, baseType: !129, size: 32, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1696, file: !1697, line: 86, baseType: !134, size: 128, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1696, file: !1697, line: 88, baseType: !1423, size: 128, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1696, file: !1697, line: 91, baseType: !1160, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1696, file: !1697, line: 94, baseType: !1706, size: 192, offset: 448)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1707, line: 30, size: 192, elements: !1708)
!1707 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1706, file: !1707, line: 31, baseType: !134, size: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1706, file: !1707, line: 32, baseType: !1711, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1712, line: 25, baseType: !1713)
!1712 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1712, line: 23, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1713, file: !1712, line: 24, baseType: !1312, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1696, file: !1697, line: 97, baseType: !580, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1696, file: !1697, line: 100, baseType: !129, size: 32, offset: 704)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1696, file: !1697, line: 106, baseType: !129, size: 32, offset: 736)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1696, file: !1697, line: 107, baseType: !1160, size: 64, offset: 768)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1696, file: !1697, line: 110, baseType: !129, size: 32, offset: 832)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1697, line: 111, baseType: !7, size: 32, offset: 864)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1696, file: !1697, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1696, file: !1697, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1696, file: !1697, line: 128, baseType: !129, size: 32, offset: 928)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1696, file: !1697, line: 129, baseType: !134, size: 128, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1696, file: !1697, line: 132, baseType: !1236, size: 512, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1696, file: !1697, line: 133, baseType: !1244, size: 64, offset: 1600)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1696, file: !1697, line: 140, baseType: !1729, size: 256, offset: 1664)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, size: 256, elements: !1511)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1697, line: 38, size: 128, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1730, file: !1697, line: 39, baseType: !364, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1730, file: !1697, line: 40, baseType: !364, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1696, file: !1697, line: 146, baseType: !1735, size: 192, offset: 1920)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1697, line: 66, size: 192, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1735, file: !1697, line: 67, baseType: !1738, size: 192)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1697, line: 47, size: 192, elements: !1739)
!1739 = !{!1740, !1741, !1742}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1738, file: !1697, line: 48, baseType: !719, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1738, file: !1697, line: 49, baseType: !719, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1738, file: !1697, line: 50, baseType: !719, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1696, file: !1697, line: 150, baseType: !1472, size: 640, offset: 2112)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1696, file: !1697, line: 153, baseType: !1745, size: 256, offset: 2752)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1413, size: 256, elements: !1099)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1696, file: !1697, line: 159, baseType: !1413, size: 64, offset: 3008)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1696, file: !1697, line: 162, baseType: !129, size: 32, offset: 3072)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1696, file: !1697, line: 164, baseType: !1749, size: 64, offset: 3136)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1697, line: 164, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1696, file: !1697, line: 175, baseType: !1752, size: 32, offset: 3200)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !335, line: 805, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 798, size: 32, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1753, file: !335, line: 803, baseType: !334, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1753, file: !335, line: 804, baseType: !182, offset: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1696, file: !1697, line: 176, baseType: !364, size: 64, offset: 3264)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1696, file: !1697, line: 176, baseType: !364, size: 64, offset: 3328)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1696, file: !1697, line: 176, baseType: !364, size: 64, offset: 3392)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1696, file: !1697, line: 176, baseType: !364, size: 64, offset: 3456)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1696, file: !1697, line: 177, baseType: !364, size: 64, offset: 3520)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1696, file: !1697, line: 178, baseType: !364, size: 64, offset: 3584)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1696, file: !1697, line: 179, baseType: !1460, size: 128, offset: 3648)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1696, file: !1697, line: 180, baseType: !122, size: 64, offset: 3776)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1696, file: !1697, line: 180, baseType: !122, size: 64, offset: 3840)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1696, file: !1697, line: 180, baseType: !122, size: 64, offset: 3904)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1696, file: !1697, line: 180, baseType: !122, size: 64, offset: 3968)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1696, file: !1697, line: 181, baseType: !122, size: 64, offset: 4032)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1696, file: !1697, line: 181, baseType: !122, size: 64, offset: 4096)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1696, file: !1697, line: 181, baseType: !122, size: 64, offset: 4160)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1696, file: !1697, line: 181, baseType: !122, size: 64, offset: 4224)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1696, file: !1697, line: 182, baseType: !122, size: 64, offset: 4288)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1696, file: !1697, line: 182, baseType: !122, size: 64, offset: 4352)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1696, file: !1697, line: 182, baseType: !122, size: 64, offset: 4416)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1696, file: !1697, line: 182, baseType: !122, size: 64, offset: 4480)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1696, file: !1697, line: 183, baseType: !122, size: 64, offset: 4544)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1696, file: !1697, line: 183, baseType: !122, size: 64, offset: 4608)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1696, file: !1697, line: 184, baseType: !1779, offset: 4672)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1780, line: 12, elements: !196)
!1780 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1696, file: !1697, line: 192, baseType: !366, size: 64, offset: 4672)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1696, file: !1697, line: 203, baseType: !1783, size: 2048, offset: 4736)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 2048, elements: !1677)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1785, line: 43, size: 128, elements: !1786)
!1785 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1784, file: !1785, line: 44, baseType: !271, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1784, file: !1785, line: 45, baseType: !271, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1696, file: !1697, line: 220, baseType: !432, size: 8, offset: 6784)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1696, file: !1697, line: 221, baseType: !1149, size: 16, offset: 6800)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1696, file: !1697, line: 222, baseType: !1149, size: 16, offset: 6816)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1696, file: !1697, line: 224, baseType: !918, size: 64, offset: 6848)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1696, file: !1697, line: 227, baseType: !1117, size: 192, offset: 6912)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1696, file: !1697, line: 233, baseType: !1117, size: 192, offset: 7104)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1161, file: !1162, line: 970, baseType: !1796, size: 64, offset: 9280)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1697, line: 20, size: 16576, elements: !1798)
!1798 = !{!1799, !1800, !1801, !1802}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1797, file: !1697, line: 21, baseType: !182)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1797, file: !1697, line: 22, baseType: !1174, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1797, file: !1697, line: 23, baseType: !1423, size: 128, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1797, file: !1697, line: 24, baseType: !1803, size: 16384, offset: 192)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1804, size: 16384, elements: !228)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1707, line: 49, size: 256, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1804, file: !1707, line: 50, baseType: !1807, size: 256)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1707, line: 35, size: 256, elements: !1808)
!1808 = !{!1809, !1816, !1817, !1823}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1807, file: !1707, line: 37, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1811, line: 19, baseType: !1812)
!1811 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1811, line: 18, baseType: !1814)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{null, !129}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1807, file: !1707, line: 38, baseType: !122, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1807, file: !1707, line: 44, baseType: !1818, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1811, line: 22, baseType: !1819)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1811, line: 21, baseType: !1821)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1807, file: !1707, line: 46, baseType: !1711, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1161, file: !1162, line: 971, baseType: !1711, size: 64, offset: 9344)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1161, file: !1162, line: 972, baseType: !1711, size: 64, offset: 9408)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1161, file: !1162, line: 974, baseType: !1711, size: 64, offset: 9472)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1161, file: !1162, line: 975, baseType: !1706, size: 192, offset: 9536)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1161, file: !1162, line: 976, baseType: !122, size: 64, offset: 9728)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1161, file: !1162, line: 977, baseType: !269, size: 64, offset: 9792)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1161, file: !1162, line: 978, baseType: !7, size: 32, offset: 9856)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1161, file: !1162, line: 980, baseType: !315, size: 64, offset: 9920)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1161, file: !1162, line: 989, baseType: !1833, size: 128, offset: 9984)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1834, line: 35, size: 128, elements: !1835)
!1834 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1833, file: !1834, line: 36, baseType: !129, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1833, file: !1834, line: 37, baseType: !693, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1833, file: !1834, line: 38, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1834, line: 23, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1161, file: !1162, line: 992, baseType: !364, size: 64, offset: 10112)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1161, file: !1162, line: 993, baseType: !364, size: 64, offset: 10176)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1161, file: !1162, line: 996, baseType: !182, offset: 10240)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1161, file: !1162, line: 999, baseType: !726, offset: 10240)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1161, file: !1162, line: 1001, baseType: !1846, size: 64, offset: 10240)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1162, line: 636, size: 64, elements: !1847)
!1847 = !{!1848}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1846, file: !1162, line: 637, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1161, file: !1162, line: 1005, baseType: !698, size: 128, offset: 10304)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1161, file: !1162, line: 1007, baseType: !1160, size: 64, offset: 10432)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1161, file: !1162, line: 1009, baseType: !1853, size: 64, offset: 10496)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1162, line: 1009, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1161, file: !1162, line: 1043, baseType: !115, size: 64, offset: 10560)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1161, file: !1162, line: 1046, baseType: !1857, size: 64, offset: 10624)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1162, line: 41, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1161, file: !1162, line: 1050, baseType: !1860, size: 64, offset: 10688)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1162, line: 42, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1161, file: !1162, line: 1054, baseType: !1863, size: 64, offset: 10752)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1162, line: 55, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1161, file: !1162, line: 1056, baseType: !1866, size: 64, offset: 10816)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1162, line: 40, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1161, file: !1162, line: 1058, baseType: !1869, size: 64, offset: 10880)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1871, line: 99, size: 704, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878, !1879, !1898, !1899}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1870, file: !1871, line: 100, baseType: !717, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1870, file: !1871, line: 101, baseType: !693, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1870, file: !1871, line: 102, baseType: !693, size: 32, offset: 96)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1870, file: !1871, line: 105, baseType: !182, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1870, file: !1871, line: 107, baseType: !112, size: 16, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1870, file: !1871, line: 109, baseType: !684, size: 128, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1870, file: !1871, line: 110, baseType: !1880, size: 64, offset: 320)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1871, line: 73, size: 448, elements: !1882)
!1882 = !{!1883, !1886, !1887, !1892, !1897}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1881, file: !1871, line: 74, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1871, line: 74, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1881, file: !1871, line: 75, baseType: !1869, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1871, line: 83, baseType: !1888, size: 128, offset: 128)
!1888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1871, line: 83, size: 128, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1888, file: !1871, line: 84, baseType: !134, size: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1888, file: !1871, line: 85, baseType: !879, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1871, line: 87, baseType: !1893, size: 128, offset: 256)
!1893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1871, line: 87, size: 128, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1893, file: !1871, line: 88, baseType: !584, size: 128)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1893, file: !1871, line: 89, baseType: !312, size: 128, align: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1881, file: !1871, line: 92, baseType: !7, size: 32, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1870, file: !1871, line: 111, baseType: !580, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1870, file: !1871, line: 113, baseType: !1900, size: 256, offset: 448)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1901, line: 102, size: 256, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1904, !1905}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1900, file: !1901, line: 103, baseType: !717, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1900, file: !1901, line: 104, baseType: !134, size: 128, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1900, file: !1901, line: 105, baseType: !1906, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1901, line: 21, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1161, file: !1162, line: 1061, baseType: !1912, size: 64, offset: 10944)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1162, line: 43, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1161, file: !1162, line: 1064, baseType: !122, size: 64, offset: 11008)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1161, file: !1162, line: 1065, baseType: !1916, size: 64, offset: 11072)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1707, line: 14, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1707, line: 12, size: 384, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1918, file: !1707, line: 13, baseType: !1921, size: 384)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1918, file: !1707, line: 13, size: 384, elements: !1922)
!1922 = !{!1923, !1924, !1925, !1926}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1921, file: !1707, line: 13, baseType: !129, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1921, file: !1707, line: 13, baseType: !129, size: 32, offset: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1921, file: !1707, line: 13, baseType: !129, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1921, file: !1707, line: 13, baseType: !1927, size: 256, offset: 128)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1928, line: 32, size: 256, elements: !1929)
!1928 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1935, !1948, !1954, !1963, !1983, !1988}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1927, file: !1928, line: 37, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1928, line: 34, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1931, file: !1928, line: 35, baseType: !1402, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1931, file: !1928, line: 36, baseType: !383, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1927, file: !1928, line: 45, baseType: !1936, size: 192)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1928, line: 40, size: 192, elements: !1937)
!1937 = !{!1938, !1940, !1941, !1947}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1936, file: !1928, line: 41, baseType: !1939, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !256, line: 95, baseType: !129)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1936, file: !1928, line: 42, baseType: !129, size: 32, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1936, file: !1928, line: 43, baseType: !1942, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1928, line: 11, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1928, line: 8, size: 64, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1943, file: !1928, line: 9, baseType: !129, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1943, file: !1928, line: 10, baseType: !115, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1936, file: !1928, line: 44, baseType: !129, size: 32, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1927, file: !1928, line: 52, baseType: !1949, size: 128)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1928, line: 48, size: 128, elements: !1950)
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1949, file: !1928, line: 49, baseType: !1402, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1949, file: !1928, line: 50, baseType: !383, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1949, file: !1928, line: 51, baseType: !1942, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1927, file: !1928, line: 61, baseType: !1955, size: 256)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1928, line: 55, size: 256, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1962}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1955, file: !1928, line: 56, baseType: !1402, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1955, file: !1928, line: 57, baseType: !383, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1955, file: !1928, line: 58, baseType: !129, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1955, file: !1928, line: 59, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !256, line: 94, baseType: !257)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1955, file: !1928, line: 60, baseType: !1961, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1927, file: !1928, line: 95, baseType: !1964, size: 256)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1928, line: 64, size: 256, elements: !1965)
!1965 = !{!1966, !1967}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1964, file: !1928, line: 65, baseType: !115, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !1928, line: 77, baseType: !1968, size: 192, offset: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1964, file: !1928, line: 77, size: 192, elements: !1969)
!1969 = !{!1970, !1971, !1978}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1968, file: !1928, line: 82, baseType: !1149, size: 16)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1968, file: !1928, line: 88, baseType: !1972, size: 192)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1968, file: !1928, line: 84, size: 192, elements: !1973)
!1973 = !{!1974, !1976, !1977}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1972, file: !1928, line: 85, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !1274)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1972, file: !1928, line: 86, baseType: !115, size: 64, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1972, file: !1928, line: 87, baseType: !115, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1968, file: !1928, line: 93, baseType: !1979, size: 96)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1968, file: !1928, line: 90, size: 96, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1979, file: !1928, line: 91, baseType: !1975, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1979, file: !1928, line: 92, baseType: !114, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1927, file: !1928, line: 101, baseType: !1984, size: 128)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1928, line: 98, size: 128, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1984, file: !1928, line: 99, baseType: !258, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1984, file: !1928, line: 100, baseType: !129, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1927, file: !1928, line: 108, baseType: !1989, size: 128)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1927, file: !1928, line: 104, size: 128, elements: !1990)
!1990 = !{!1991, !1992, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1989, file: !1928, line: 105, baseType: !115, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1989, file: !1928, line: 106, baseType: !129, size: 32, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1989, file: !1928, line: 107, baseType: !7, size: 32, offset: 96)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1161, file: !1162, line: 1067, baseType: !1779, offset: 11136)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1161, file: !1162, line: 1099, baseType: !1996, size: 64, offset: 11136)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1162, line: 56, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1161, file: !1162, line: 1103, baseType: !134, size: 128, offset: 11200)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1161, file: !1162, line: 1104, baseType: !2000, size: 64, offset: 11328)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1162, line: 46, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1161, file: !1162, line: 1105, baseType: !1117, size: 192, offset: 11392)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1161, file: !1162, line: 1106, baseType: !7, size: 32, offset: 11584)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1161, file: !1162, line: 1109, baseType: !2005, size: 128, offset: 11648)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2006, size: 128, elements: !1511)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1162, line: 51, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1161, file: !1162, line: 1110, baseType: !1117, size: 192, offset: 11776)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1161, file: !1162, line: 1111, baseType: !134, size: 128, offset: 11968)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1161, file: !1162, line: 1173, baseType: !2011, size: 64, offset: 12096)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2013, line: 62, size: 256, align: 256, elements: !2014)
!2013 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !{!2015, !2016, !2017, !2022}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2012, file: !2013, line: 75, baseType: !114, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2012, file: !2013, line: 90, baseType: !114, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2012, file: !2013, line: 124, baseType: !2018, size: 64, offset: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !2013, line: 109, size: 64, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2018, file: !2013, line: 110, baseType: !365, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2018, file: !2013, line: 112, baseType: !365, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2012, file: !2013, line: 144, baseType: !114, size: 32, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1161, file: !1162, line: 1174, baseType: !113, size: 32, offset: 12160)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1161, file: !1162, line: 1179, baseType: !122, size: 64, offset: 12224)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1161, file: !1162, line: 1182, baseType: !2026, size: 128, offset: 12288)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1095, line: 76, size: 128, elements: !2027)
!2027 = !{!2028, !2033, !2034}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2026, file: !1095, line: 85, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2030, line: 7, size: 64, elements: !2031)
!2030 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2031 = !{!2032}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2029, file: !2030, line: 12, baseType: !1309, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2026, file: !1095, line: 88, baseType: !432, size: 8, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2026, file: !1095, line: 95, baseType: !432, size: 8, offset: 72)
!2035 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 1184, baseType: !2036, size: 128, offset: 12416)
!2036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 1184, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2036, file: !1162, line: 1185, baseType: !1174, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2036, file: !1162, line: 1186, baseType: !312, size: 128, align: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1161, file: !1162, line: 1190, baseType: !2041, size: 64, offset: 12544)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1162, line: 53, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1161, file: !1162, line: 1192, baseType: !2044, size: 128, offset: 12608)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1095, line: 64, size: 128, elements: !2045)
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2044, file: !1095, line: 65, baseType: !666, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2044, file: !1095, line: 67, baseType: !114, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2044, file: !1095, line: 68, baseType: !114, size: 32, offset: 96)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1161, file: !1162, line: 1206, baseType: !129, size: 32, offset: 12736)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1161, file: !1162, line: 1207, baseType: !129, size: 32, offset: 12768)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1161, file: !1162, line: 1209, baseType: !122, size: 64, offset: 12800)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1161, file: !1162, line: 1219, baseType: !364, size: 64, offset: 12864)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1161, file: !1162, line: 1220, baseType: !364, size: 64, offset: 12928)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1161, file: !1162, line: 1317, baseType: !129, size: 32, offset: 12992)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1161, file: !1162, line: 1319, baseType: !1160, size: 64, offset: 13056)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1161, file: !1162, line: 1322, baseType: !2057, size: 64, offset: 13120)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2059, line: 56, size: 512, elements: !2060)
!2059 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2066, !2067, !2069}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2058, file: !2059, line: 57, baseType: !2057, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2058, file: !2059, line: 58, baseType: !115, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2058, file: !2059, line: 59, baseType: !122, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2058, file: !2059, line: 60, baseType: !122, size: 64, offset: 192)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2058, file: !2059, line: 61, baseType: !766, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2058, file: !2059, line: 62, baseType: !7, size: 32, offset: 320)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2058, file: !2059, line: 63, baseType: !2068, size: 64, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !135, line: 153, baseType: !364)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2058, file: !2059, line: 64, baseType: !2070, size: 64, offset: 448)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1161, file: !1162, line: 1326, baseType: !1174, size: 32, offset: 13184)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1161, file: !1162, line: 1342, baseType: !115, size: 64, offset: 13248)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1161, file: !1162, line: 1343, baseType: !365, size: 64, offset: 13312)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1161, file: !1162, line: 1344, baseType: !364, size: 64, offset: 13376)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1161, file: !1162, line: 1345, baseType: !365, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1161, file: !1162, line: 1346, baseType: !365, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1161, file: !1162, line: 1347, baseType: !365, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1161, file: !1162, line: 1348, baseType: !312, size: 128, align: 64, offset: 13504)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1161, file: !1162, line: 1358, baseType: !2081, size: 34816, offset: 13824)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2082, line: 485, size: 34816, elements: !2083)
!2082 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2083 = !{!2084, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2113, !2114, !2115, !2116, !2117, !2118, !2121, !2122, !2123}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2081, file: !2082, line: 487, baseType: !2085, size: 192)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2086, size: 192, elements: !224)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2087, line: 16, size: 64, elements: !2088)
!2087 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2086, file: !2087, line: 17, baseType: !110, size: 16)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2086, file: !2087, line: 18, baseType: !110, size: 16, offset: 16)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2086, file: !2087, line: 19, baseType: !110, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2086, file: !2087, line: 19, baseType: !110, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2086, file: !2087, line: 19, baseType: !110, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2086, file: !2087, line: 19, baseType: !110, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2086, file: !2087, line: 19, baseType: !110, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2086, file: !2087, line: 20, baseType: !110, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2086, file: !2087, line: 20, baseType: !110, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2086, file: !2087, line: 20, baseType: !110, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2086, file: !2087, line: 20, baseType: !110, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2086, file: !2087, line: 20, baseType: !110, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2086, file: !2087, line: 20, baseType: !110, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2081, file: !2082, line: 491, baseType: !122, size: 64, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2081, file: !2082, line: 495, baseType: !112, size: 16, offset: 256)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2081, file: !2082, line: 496, baseType: !112, size: 16, offset: 272)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2081, file: !2082, line: 497, baseType: !112, size: 16, offset: 288)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2081, file: !2082, line: 498, baseType: !112, size: 16, offset: 304)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2081, file: !2082, line: 502, baseType: !122, size: 64, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2081, file: !2082, line: 503, baseType: !122, size: 64, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2081, file: !2082, line: 514, baseType: !2110, size: 256, offset: 448)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2111, size: 256, elements: !1099)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2082, line: 483, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2081, file: !2082, line: 516, baseType: !122, size: 64, offset: 704)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2081, file: !2082, line: 518, baseType: !122, size: 64, offset: 768)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2081, file: !2082, line: 520, baseType: !122, size: 64, offset: 832)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2081, file: !2082, line: 521, baseType: !122, size: 64, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2081, file: !2082, line: 522, baseType: !122, size: 64, offset: 960)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2081, file: !2082, line: 528, baseType: !2119, size: 64, offset: 1024)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2082, line: 10, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2081, file: !2082, line: 535, baseType: !122, size: 64, offset: 1088)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2081, file: !2082, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2081, file: !2082, line: 540, baseType: !2124, size: 33280, offset: 1536)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2125, line: 317, size: 33280, elements: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2124, file: !2125, line: 330, baseType: !7, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2124, file: !2125, line: 337, baseType: !122, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2124, file: !2125, line: 348, baseType: !2130, size: 32768, offset: 512)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2125, line: 304, size: 32768, elements: !2131)
!2131 = !{!2132, !2147, !2186, !2236, !2249}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2130, file: !2125, line: 305, baseType: !2133, size: 896)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2125, line: 12, size: 896, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2146}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2133, file: !2125, line: 13, baseType: !113, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2133, file: !2125, line: 14, baseType: !113, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2133, file: !2125, line: 15, baseType: !113, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2133, file: !2125, line: 16, baseType: !113, size: 32, offset: 96)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2133, file: !2125, line: 17, baseType: !113, size: 32, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2133, file: !2125, line: 18, baseType: !113, size: 32, offset: 160)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2133, file: !2125, line: 19, baseType: !113, size: 32, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2133, file: !2125, line: 22, baseType: !2143, size: 640, offset: 224)
!2143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 640, elements: !2144)
!2144 = !{!2145}
!2145 = !DISubrange(count: 20)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2133, file: !2125, line: 25, baseType: !113, size: 32, offset: 864)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2130, file: !2125, line: 306, baseType: !2148, size: 4096, align: 128)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2125, line: 34, size: 4096, align: 128, elements: !2149)
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2169, !2170, !2171, !2175, !2177, !2181}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2148, file: !2125, line: 35, baseType: !110, size: 16)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2148, file: !2125, line: 36, baseType: !110, size: 16, offset: 16)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2148, file: !2125, line: 37, baseType: !110, size: 16, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2148, file: !2125, line: 38, baseType: !110, size: 16, offset: 48)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2125, line: 39, baseType: !2155, size: 128, offset: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2148, file: !2125, line: 39, size: 128, elements: !2156)
!2156 = !{!2157, !2162}
!2157 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !2125, line: 40, baseType: !2158, size: 128)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !2125, line: 40, size: 128, elements: !2159)
!2159 = !{!2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2158, file: !2125, line: 41, baseType: !364, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2158, file: !2125, line: 42, baseType: !364, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2155, file: !2125, line: 44, baseType: !2163, size: 128)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !2125, line: 44, size: 128, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2163, file: !2125, line: 45, baseType: !113, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2163, file: !2125, line: 46, baseType: !113, size: 32, offset: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2163, file: !2125, line: 47, baseType: !113, size: 32, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2163, file: !2125, line: 48, baseType: !113, size: 32, offset: 96)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2148, file: !2125, line: 51, baseType: !113, size: 32, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2148, file: !2125, line: 52, baseType: !113, size: 32, offset: 224)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2148, file: !2125, line: 55, baseType: !2172, size: 1024, offset: 256)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 1024, elements: !2173)
!2173 = !{!2174}
!2174 = !DISubrange(count: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2148, file: !2125, line: 58, baseType: !2176, size: 2048, offset: 1280)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2048, elements: !228)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2148, file: !2125, line: 60, baseType: !2178, size: 384, offset: 3328)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 384, elements: !2179)
!2179 = !{!2180}
!2180 = !DISubrange(count: 12)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2125, line: 62, baseType: !2182, size: 384, offset: 3712)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2148, file: !2125, line: 62, size: 384, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2182, file: !2125, line: 63, baseType: !2178, size: 384)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2182, file: !2125, line: 64, baseType: !2178, size: 384)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2130, file: !2125, line: 307, baseType: !2187, size: 1088)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2125, line: 79, size: 1088, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2235}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2187, file: !2125, line: 80, baseType: !113, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2187, file: !2125, line: 81, baseType: !113, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2187, file: !2125, line: 82, baseType: !113, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2187, file: !2125, line: 83, baseType: !113, size: 32, offset: 96)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2187, file: !2125, line: 84, baseType: !113, size: 32, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2187, file: !2125, line: 85, baseType: !113, size: 32, offset: 160)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2187, file: !2125, line: 86, baseType: !113, size: 32, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2187, file: !2125, line: 88, baseType: !2143, size: 640, offset: 224)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2187, file: !2125, line: 89, baseType: !105, size: 8, offset: 864)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2187, file: !2125, line: 90, baseType: !105, size: 8, offset: 872)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2187, file: !2125, line: 91, baseType: !105, size: 8, offset: 880)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2187, file: !2125, line: 92, baseType: !105, size: 8, offset: 888)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2187, file: !2125, line: 93, baseType: !105, size: 8, offset: 896)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2187, file: !2125, line: 94, baseType: !105, size: 8, offset: 904)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2187, file: !2125, line: 95, baseType: !2204, size: 64, offset: 960)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2206, line: 11, size: 128, elements: !2207)
!2206 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2205, file: !2206, line: 12, baseType: !258, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2205, file: !2206, line: 13, baseType: !2210, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2212, line: 56, size: 1344, elements: !2213)
!2212 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2211, file: !2212, line: 61, baseType: !122, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2211, file: !2212, line: 62, baseType: !122, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2211, file: !2212, line: 63, baseType: !122, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2211, file: !2212, line: 64, baseType: !122, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2211, file: !2212, line: 65, baseType: !122, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2211, file: !2212, line: 66, baseType: !122, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2211, file: !2212, line: 68, baseType: !122, size: 64, offset: 384)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2211, file: !2212, line: 69, baseType: !122, size: 64, offset: 448)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2211, file: !2212, line: 70, baseType: !122, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2211, file: !2212, line: 71, baseType: !122, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2211, file: !2212, line: 72, baseType: !122, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2211, file: !2212, line: 73, baseType: !122, size: 64, offset: 704)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2211, file: !2212, line: 74, baseType: !122, size: 64, offset: 768)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2211, file: !2212, line: 75, baseType: !122, size: 64, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2211, file: !2212, line: 76, baseType: !122, size: 64, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2211, file: !2212, line: 81, baseType: !122, size: 64, offset: 960)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2211, file: !2212, line: 83, baseType: !122, size: 64, offset: 1024)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2211, file: !2212, line: 84, baseType: !122, size: 64, offset: 1088)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !2212, line: 85, baseType: !122, size: 64, offset: 1152)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2211, file: !2212, line: 86, baseType: !122, size: 64, offset: 1216)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2211, file: !2212, line: 87, baseType: !122, size: 64, offset: 1280)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2187, file: !2125, line: 96, baseType: !113, size: 32, offset: 1024)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2130, file: !2125, line: 308, baseType: !2237, size: 4608, align: 512)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2125, line: 289, size: 4608, align: 512, elements: !2238)
!2238 = !{!2239, !2240, !2247}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2237, file: !2125, line: 290, baseType: !2148, size: 4096, align: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2237, file: !2125, line: 291, baseType: !2241, size: 512, offset: 4096)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2125, line: 268, size: 512, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2241, file: !2125, line: 269, baseType: !364, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2241, file: !2125, line: 270, baseType: !364, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2241, file: !2125, line: 271, baseType: !2246, size: 384, offset: 128)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 384, elements: !1567)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2237, file: !2125, line: 292, baseType: !2248, offset: 4608)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, elements: !1665)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2130, file: !2125, line: 309, baseType: !2250, size: 32768)
!2250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 32768, elements: !2251)
!2251 = !{!2252}
!2252 = !DISubrange(count: 4096)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1157, file: !668, line: 378, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1153, file: !668, line: 384, baseType: !1444, size: 192, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !922, file: !668, line: 500, baseType: !182, offset: 6656)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !922, file: !668, line: 501, baseType: !2258, size: 64, offset: 6656)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !668, line: 387, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !922, file: !668, line: 516, baseType: !1655, size: 64, offset: 6720)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !922, file: !668, line: 519, baseType: !299, size: 64, offset: 6784)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !922, file: !668, line: 521, baseType: !2263, size: 64, offset: 6848)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !668, line: 521, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !922, file: !668, line: 545, baseType: !693, size: 32, offset: 6912)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !922, file: !668, line: 548, baseType: !432, size: 8, offset: 6944)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !922, file: !668, line: 550, baseType: !2268, offset: 6952)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2269, line: 142, elements: !196)
!2269 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !922, file: !668, line: 554, baseType: !1900, size: 256, offset: 6976)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !922, file: !668, line: 557, baseType: !113, size: 32, offset: 7232)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !919, file: !668, line: 565, baseType: !2273, offset: 7296)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: -1)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !915, file: !668, line: 151, baseType: !693, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !908, file: !668, line: 156, baseType: !182, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !672, file: !668, line: 159, baseType: !2279, size: 128)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !668, line: 159, size: 128, elements: !2280)
!2280 = !{!2281, !2345}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2279, file: !668, line: 161, baseType: !2282, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2284)
!2284 = !{!2285, !2295, !2316, !2317, !2318, !2319, !2320, !2332, !2333, !2334}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2283, file: !31, line: 111, baseType: !2286, size: 384)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2287)
!2287 = !{!2288, !2290, !2291, !2292, !2293, !2294}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2286, file: !31, line: 20, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2286, file: !31, line: 21, baseType: !2289, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2286, file: !31, line: 22, baseType: !2289, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2286, file: !31, line: 23, baseType: !122, size: 64, offset: 192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2286, file: !31, line: 24, baseType: !122, size: 64, offset: 256)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2286, file: !31, line: 25, baseType: !122, size: 64, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2283, file: !31, line: 112, baseType: !2296, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2298, line: 105, size: 128, elements: !2299)
!2298 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !{!2300, !2301}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2297, file: !2298, line: 110, baseType: !122, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2297, file: !2298, line: 118, baseType: !2302, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2298, line: 95, size: 448, elements: !2304)
!2304 = !{!2305, !2306, !2311, !2312, !2313, !2314, !2315}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2303, file: !2298, line: 96, baseType: !717, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2303, file: !2298, line: 97, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2298, line: 60, baseType: !2309)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{null, !2296}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2303, file: !2298, line: 98, baseType: !2307, size: 64, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2303, file: !2298, line: 99, baseType: !432, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2303, file: !2298, line: 100, baseType: !432, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2303, file: !2298, line: 101, baseType: !312, size: 128, align: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2303, file: !2298, line: 102, baseType: !2296, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2283, file: !31, line: 113, baseType: !2297, size: 128, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2283, file: !31, line: 114, baseType: !1444, size: 192, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2283, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2283, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2283, file: !31, line: 117, baseType: !2321, size: 64, offset: 832)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2323)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2324)
!2324 = !{!2325, !2326, !2330, !2331}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2323, file: !31, line: 73, baseType: !786, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2323, file: !31, line: 78, baseType: !2327, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !2282}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2323, file: !31, line: 83, baseType: !2327, size: 64, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2323, file: !31, line: 89, baseType: !971, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2283, file: !31, line: 118, baseType: !115, size: 64, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2283, file: !31, line: 119, baseType: !129, size: 32, offset: 960)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2283, file: !31, line: 120, baseType: !2335, size: 128, offset: 1024)
!2335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2283, file: !31, line: 120, size: 128, elements: !2336)
!2336 = !{!2337, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2335, file: !31, line: 121, baseType: !2338, size: 128)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2339, line: 6, size: 128, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2338, file: !2339, line: 7, baseType: !364, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2338, file: !2339, line: 8, baseType: !364, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2335, file: !31, line: 122, baseType: !2344)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, elements: !1665)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2279, file: !668, line: 162, baseType: !115, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !672, file: !668, line: 176, baseType: !312, size: 128, align: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !668, line: 179, baseType: !2348, size: 32, offset: 384)
!2348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !668, line: 179, size: 32, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2348, file: !668, line: 184, baseType: !693, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2348, file: !668, line: 192, baseType: !7, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2348, file: !668, line: 194, baseType: !7, size: 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2348, file: !668, line: 195, baseType: !129, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !667, file: !668, line: 199, baseType: !693, size: 32, offset: 416)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !602, file: !44, line: 1964, baseType: !2356, size: 64, offset: 1344)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!258, !541, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2361, line: 12, size: 256, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2362 = !{!2363, !2364, !2365, !2366, !2367}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2360, file: !2361, line: 13, baseType: !689, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2360, file: !2361, line: 16, baseType: !129, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2360, file: !2361, line: 23, baseType: !122, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2360, file: !2361, line: 30, baseType: !122, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2360, file: !2361, line: 33, baseType: !2368, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !668, line: 27, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !602, file: !44, line: 1966, baseType: !2356, size: 64, offset: 1408)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !542, file: !44, line: 1424, baseType: !2372, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2375)
!2375 = !{!2376, !2422, !2426, !2430, !2431, !2432, !2433, !2434, !2439, !2444, !2448}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2374, file: !38, line: 323, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!129, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2407, !2408, !2409}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2381, file: !38, line: 295, baseType: !584, size: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2381, file: !38, line: 296, baseType: !134, size: 128, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2381, file: !38, line: 297, baseType: !134, size: 128, offset: 256)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2381, file: !38, line: 298, baseType: !134, size: 128, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2381, file: !38, line: 299, baseType: !1117, size: 192, offset: 512)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2381, file: !38, line: 300, baseType: !182, offset: 704)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2381, file: !38, line: 301, baseType: !693, size: 32, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2381, file: !38, line: 302, baseType: !541, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2381, file: !38, line: 303, baseType: !2392, size: 64, offset: 832)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2393)
!2393 = !{!2394, !2406}
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !38, line: 69, baseType: !2395, size: 32)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2392, file: !38, line: 69, size: 32, elements: !2396)
!2396 = !{!2397, !2398, !2399}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2395, file: !38, line: 70, baseType: !377, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2395, file: !38, line: 71, baseType: !385, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2395, file: !38, line: 72, baseType: !2400, size: 32)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2401, line: 24, baseType: !2402)
!2401 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2401, line: 22, size: 32, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2402, file: !2401, line: 23, baseType: !2405, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2401, line: 20, baseType: !383)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2392, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2381, file: !38, line: 304, baseType: !473, size: 64, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2381, file: !38, line: 305, baseType: !122, size: 64, offset: 960)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2381, file: !38, line: 306, baseType: !2410, size: 576, offset: 1024)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2411)
!2411 = !{!2412, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2410, file: !38, line: 206, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !475)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2410, file: !38, line: 207, baseType: !2413, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2410, file: !38, line: 208, baseType: !2413, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2410, file: !38, line: 209, baseType: !2413, size: 64, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2410, file: !38, line: 210, baseType: !2413, size: 64, offset: 256)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2410, file: !38, line: 211, baseType: !2413, size: 64, offset: 320)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2410, file: !38, line: 212, baseType: !2413, size: 64, offset: 384)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2410, file: !38, line: 213, baseType: !481, size: 64, offset: 448)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2410, file: !38, line: 214, baseType: !481, size: 64, offset: 512)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2374, file: !38, line: 324, baseType: !2423, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!2380, !541, !129}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2374, file: !38, line: 325, baseType: !2427, size: 64, offset: 128)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !2380}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2374, file: !38, line: 326, baseType: !2377, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2374, file: !38, line: 327, baseType: !2377, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2374, file: !38, line: 328, baseType: !2377, size: 64, offset: 320)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2374, file: !38, line: 329, baseType: !630, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2374, file: !38, line: 332, baseType: !2435, size: 64, offset: 448)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!2438, !371}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2374, file: !38, line: 333, baseType: !2440, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!129, !371, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2374, file: !38, line: 335, baseType: !2445, size: 64, offset: 576)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!129, !371, !2438}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2374, file: !38, line: 337, baseType: !2449, size: 64, offset: 640)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!129, !541, !2452}
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !542, file: !44, line: 1425, baseType: !2454, size: 64, offset: 512)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2457)
!2457 = !{!2458, !2462, !2463, !2467, !2468, !2469, !2484, !2507, !2511, !2512, !2535}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2456, file: !38, line: 429, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!129, !541, !129, !129, !491}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2456, file: !38, line: 430, baseType: !630, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2456, file: !38, line: 431, baseType: !2464, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!129, !541, !7}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2456, file: !38, line: 432, baseType: !2464, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2456, file: !38, line: 433, baseType: !630, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2456, file: !38, line: 434, baseType: !2470, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!129, !541, !129, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2474, file: !38, line: 416, baseType: !129, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2474, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2474, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2474, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2474, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2474, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2474, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2474, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2456, file: !38, line: 435, baseType: !2485, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!129, !541, !2392, !2488}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2490)
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2489, file: !38, line: 344, baseType: !129, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2489, file: !38, line: 345, baseType: !364, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2489, file: !38, line: 346, baseType: !364, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2489, file: !38, line: 347, baseType: !364, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2489, file: !38, line: 348, baseType: !364, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2489, file: !38, line: 349, baseType: !364, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2489, file: !38, line: 350, baseType: !364, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2489, file: !38, line: 351, baseType: !723, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2489, file: !38, line: 353, baseType: !723, size: 64, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2489, file: !38, line: 354, baseType: !129, size: 32, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2489, file: !38, line: 355, baseType: !129, size: 32, offset: 608)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2489, file: !38, line: 356, baseType: !364, size: 64, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2489, file: !38, line: 357, baseType: !364, size: 64, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2489, file: !38, line: 358, baseType: !364, size: 64, offset: 768)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2489, file: !38, line: 359, baseType: !723, size: 64, offset: 832)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2489, file: !38, line: 360, baseType: !129, size: 32, offset: 896)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2456, file: !38, line: 436, baseType: !2508, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!129, !541, !2452, !2488}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2456, file: !38, line: 438, baseType: !2485, size: 64, offset: 512)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2456, file: !38, line: 439, baseType: !2513, size: 64, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!129, !541, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2518)
!2518 = !{!2519, !2520}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2517, file: !38, line: 410, baseType: !7, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2517, file: !38, line: 411, baseType: !2521, size: 1344, offset: 64)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2522, size: 1344, elements: !224)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2523)
!2523 = !{!2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2534}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2522, file: !38, line: 396, baseType: !7, size: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2522, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2522, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2522, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2522, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2522, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2522, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2522, file: !38, line: 404, baseType: !366, size: 64, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2522, file: !38, line: 405, baseType: !2533, size: 64, offset: 320)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !135, line: 126, baseType: !364)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2522, file: !38, line: 406, baseType: !2533, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2456, file: !38, line: 440, baseType: !2464, size: 64, offset: 640)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !542, file: !44, line: 1426, baseType: !2537, size: 64, offset: 576)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2539)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !542, file: !44, line: 1427, baseType: !122, size: 64, offset: 640)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !542, file: !44, line: 1428, baseType: !122, size: 64, offset: 704)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !542, file: !44, line: 1429, baseType: !122, size: 64, offset: 768)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !542, file: !44, line: 1430, baseType: !329, size: 64, offset: 832)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !542, file: !44, line: 1431, baseType: !713, size: 256, offset: 896)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !542, file: !44, line: 1432, baseType: !129, size: 32, offset: 1152)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !542, file: !44, line: 1433, baseType: !693, size: 32, offset: 1184)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !542, file: !44, line: 1437, baseType: !2548, size: 64, offset: 1216)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !542, file: !44, line: 1449, baseType: !2553, size: 64, offset: 1280)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !345, line: 34, size: 64, elements: !2554)
!2554 = !{!2555}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2553, file: !345, line: 35, baseType: !348, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !542, file: !44, line: 1450, baseType: !134, size: 128, offset: 1344)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !542, file: !44, line: 1451, baseType: !2558, size: 64, offset: 1472)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !542, file: !44, line: 1452, baseType: !1866, size: 64, offset: 1536)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !542, file: !44, line: 1453, baseType: !2562, size: 64, offset: 1600)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !542, file: !44, line: 1454, baseType: !584, size: 128, offset: 1664)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !542, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !542, file: !44, line: 1456, baseType: !2567, size: 2432, offset: 1856)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2568)
!2568 = !{!2569, !2570, !2571, !2573, !2605}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2567, file: !38, line: 519, baseType: !7, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2567, file: !38, line: 520, baseType: !713, size: 256, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2567, file: !38, line: 521, baseType: !2572, size: 192, offset: 320)
!2572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 192, elements: !224)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2567, file: !38, line: 522, baseType: !2574, size: 1728, offset: 512)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, size: 1728, elements: !224)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2576)
!2576 = !{!2577, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2575, file: !38, line: 223, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2580)
!2580 = !{!2581, !2582, !2595, !2596}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2579, file: !38, line: 444, baseType: !129, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2579, file: !38, line: 445, baseType: !2583, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2585)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2585, file: !38, line: 311, baseType: !630, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2585, file: !38, line: 312, baseType: !630, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2585, file: !38, line: 313, baseType: !630, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2585, file: !38, line: 314, baseType: !630, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2585, file: !38, line: 315, baseType: !2377, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2585, file: !38, line: 316, baseType: !2377, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2585, file: !38, line: 317, baseType: !2377, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2585, file: !38, line: 318, baseType: !2449, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2579, file: !38, line: 446, baseType: !575, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2579, file: !38, line: 447, baseType: !2578, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2575, file: !38, line: 224, baseType: !129, size: 32, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2575, file: !38, line: 226, baseType: !134, size: 128, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2575, file: !38, line: 227, baseType: !122, size: 64, offset: 256)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2575, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2575, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2575, file: !38, line: 230, baseType: !2413, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2575, file: !38, line: 231, baseType: !2413, size: 64, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2575, file: !38, line: 232, baseType: !115, size: 64, offset: 512)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2567, file: !38, line: 523, baseType: !2606, size: 192, offset: 2240)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2583, size: 192, elements: !224)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !542, file: !44, line: 1458, baseType: !2608, size: 2112, offset: 4288)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2608, file: !44, line: 1411, baseType: !129, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2608, file: !44, line: 1412, baseType: !1423, size: 128, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2608, file: !44, line: 1413, baseType: !2613, size: 1920, offset: 192)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2614, size: 1920, elements: !224)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2615, line: 12, size: 640, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2616 = !{!2617, !2625, !2627, !2632, !2633}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2614, file: !2615, line: 13, baseType: !2618, size: 320)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2619, line: 17, size: 320, elements: !2620)
!2619 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2620 = !{!2621, !2622, !2623, !2624}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2618, file: !2619, line: 18, baseType: !129, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2618, file: !2619, line: 19, baseType: !129, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2618, file: !2619, line: 20, baseType: !1423, size: 128, offset: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2618, file: !2619, line: 22, baseType: !312, size: 128, align: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2614, file: !2615, line: 14, baseType: !2626, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2614, file: !2615, line: 15, baseType: !2628, size: 64, offset: 384)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2629, line: 16, size: 64, elements: !2630)
!2629 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2630 = !{!2631}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2628, file: !2629, line: 17, baseType: !1160, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2614, file: !2615, line: 16, baseType: !1423, size: 128, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2614, file: !2615, line: 17, baseType: !693, size: 32, offset: 576)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !542, file: !44, line: 1465, baseType: !115, size: 64, offset: 6400)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !542, file: !44, line: 1468, baseType: !113, size: 32, offset: 6464)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !542, file: !44, line: 1470, baseType: !481, size: 64, offset: 6528)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !542, file: !44, line: 1471, baseType: !481, size: 64, offset: 6592)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !542, file: !44, line: 1473, baseType: !114, size: 32, offset: 6656)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !542, file: !44, line: 1474, baseType: !2640, size: 64, offset: 6720)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !542, file: !44, line: 1477, baseType: !2643, size: 256, offset: 6784)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !2173)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !542, file: !44, line: 1478, baseType: !2645, size: 128, offset: 7040)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2646, line: 18, baseType: !2647)
!2646 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2646, line: 16, size: 128, elements: !2648)
!2648 = !{!2649}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2647, file: !2646, line: 17, baseType: !2650, size: 128)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !1677)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !542, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !542, file: !44, line: 1481, baseType: !2653, size: 32, offset: 7200)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !135, line: 150, baseType: !7)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !542, file: !44, line: 1487, baseType: !1117, size: 192, offset: 7232)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !542, file: !44, line: 1493, baseType: !170, size: 64, offset: 7424)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !542, file: !44, line: 1495, baseType: !2657, size: 64, offset: 7488)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2659)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !327, line: 135, size: 1024, align: 512, elements: !2660)
!2660 = !{!2661, !2665, !2666, !2673, !2679, !2683, !2687, !2691, !2692, !2696, !2700, !2705, !2709}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2659, file: !327, line: 136, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!129, !329, !7}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2659, file: !327, line: 137, baseType: !2662, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2659, file: !327, line: 138, baseType: !2667, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!129, !2670, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2659, file: !327, line: 139, baseType: !2674, size: 64, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!129, !2670, !7, !170, !2677}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2659, file: !327, line: 141, baseType: !2680, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!129, !2670}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2659, file: !327, line: 142, baseType: !2684, size: 64, offset: 320)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!129, !329}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2659, file: !327, line: 143, baseType: !2688, size: 64, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !329}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2659, file: !327, line: 144, baseType: !2688, size: 64, offset: 448)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2659, file: !327, line: 145, baseType: !2693, size: 64, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !329, !371}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2659, file: !327, line: 146, baseType: !2697, size: 64, offset: 576)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!223, !329, !223, !129}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2659, file: !327, line: 147, baseType: !2701, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!325, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2659, file: !327, line: 148, baseType: !2706, size: 64, offset: 704)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!129, !491, !432}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2659, file: !327, line: 149, baseType: !2710, size: 64, offset: 768)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!329, !329, !2713}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !542, file: !44, line: 1500, baseType: !129, size: 32, offset: 7552)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !542, file: !44, line: 1502, baseType: !2717, size: 448, offset: 7616)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2361, line: 60, size: 448, elements: !2718)
!2718 = !{!2719, !2724, !2725, !2726, !2727, !2728, !2729}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2717, file: !2361, line: 61, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!122, !2723, !2359}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2717, file: !2361, line: 63, baseType: !2720, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2717, file: !2361, line: 66, baseType: !258, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2717, file: !2361, line: 67, baseType: !129, size: 32, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2717, file: !2361, line: 68, baseType: !7, size: 32, offset: 224)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2717, file: !2361, line: 71, baseType: !134, size: 128, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2717, file: !2361, line: 77, baseType: !2730, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !542, file: !44, line: 1505, baseType: !717, size: 64, offset: 8064)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !542, file: !44, line: 1508, baseType: !717, size: 64, offset: 8128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !542, file: !44, line: 1511, baseType: !129, size: 32, offset: 8192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !542, file: !44, line: 1514, baseType: !853, size: 32, offset: 8224)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !542, file: !44, line: 1517, baseType: !2736, size: 64, offset: 8256)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1901, line: 18, flags: DIFlagFwdDecl)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !542, file: !44, line: 1518, baseType: !580, size: 64, offset: 8320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !542, file: !44, line: 1525, baseType: !1655, size: 64, offset: 8384)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !542, file: !44, line: 1532, baseType: !2741, size: 64, offset: 8448)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2742, line: 52, size: 64, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2741, file: !2742, line: 53, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2742, line: 40, size: 256, elements: !2747)
!2747 = !{!2748, !2749, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2746, file: !2742, line: 42, baseType: !182)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2746, file: !2742, line: 44, baseType: !2750, size: 192)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2742, line: 28, size: 192, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2750, file: !2742, line: 29, baseType: !134, size: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2750, file: !2742, line: 31, baseType: !258, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2746, file: !2742, line: 49, baseType: !258, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !542, file: !44, line: 1533, baseType: !2741, size: 64, offset: 8512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !542, file: !44, line: 1534, baseType: !312, size: 128, align: 64, offset: 8576)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !542, file: !44, line: 1535, baseType: !1900, size: 256, offset: 8704)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !542, file: !44, line: 1537, baseType: !1117, size: 192, offset: 8960)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !542, file: !44, line: 1542, baseType: !129, size: 32, offset: 9152)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !542, file: !44, line: 1545, baseType: !182, offset: 9184)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !542, file: !44, line: 1546, baseType: !134, size: 128, offset: 9216)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !542, file: !44, line: 1548, baseType: !182, offset: 9344)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !542, file: !44, line: 1549, baseType: !134, size: 128, offset: 9344)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !372, file: !44, line: 624, baseType: !679, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !372, file: !44, line: 631, baseType: !122, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !44, line: 639, baseType: !2767, size: 32, offset: 384)
!2767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !44, line: 639, size: 32, elements: !2768)
!2768 = !{!2769, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2767, file: !44, line: 640, baseType: !2770, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2767, file: !44, line: 641, baseType: !7, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !372, file: !44, line: 643, baseType: !455, size: 32, offset: 416)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !372, file: !44, line: 644, baseType: !473, size: 64, offset: 448)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !372, file: !44, line: 645, baseType: !477, size: 128, offset: 512)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !372, file: !44, line: 646, baseType: !477, size: 128, offset: 640)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !372, file: !44, line: 647, baseType: !477, size: 128, offset: 768)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !372, file: !44, line: 648, baseType: !182, offset: 896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !372, file: !44, line: 649, baseType: !112, size: 16, offset: 896)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !372, file: !44, line: 650, baseType: !105, size: 8, offset: 912)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !372, file: !44, line: 651, baseType: !105, size: 8, offset: 920)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !372, file: !44, line: 652, baseType: !2533, size: 64, offset: 960)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !372, file: !44, line: 659, baseType: !122, size: 64, offset: 1024)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !372, file: !44, line: 660, baseType: !713, size: 256, offset: 1088)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !372, file: !44, line: 662, baseType: !122, size: 64, offset: 1344)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !372, file: !44, line: 663, baseType: !122, size: 64, offset: 1408)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !372, file: !44, line: 665, baseType: !584, size: 128, offset: 1472)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !372, file: !44, line: 666, baseType: !134, size: 128, offset: 1600)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !372, file: !44, line: 675, baseType: !134, size: 128, offset: 1728)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !372, file: !44, line: 676, baseType: !134, size: 128, offset: 1856)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !372, file: !44, line: 677, baseType: !134, size: 128, offset: 1984)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !44, line: 678, baseType: !2792, size: 128, offset: 2112)
!2792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !44, line: 678, size: 128, elements: !2793)
!2793 = !{!2794, !2795}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2792, file: !44, line: 679, baseType: !580, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2792, file: !44, line: 680, baseType: !312, size: 128, align: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !372, file: !44, line: 682, baseType: !719, size: 64, offset: 2240)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !372, file: !44, line: 683, baseType: !719, size: 64, offset: 2304)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !372, file: !44, line: 684, baseType: !693, size: 32, offset: 2368)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !372, file: !44, line: 685, baseType: !693, size: 32, offset: 2400)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !372, file: !44, line: 686, baseType: !693, size: 32, offset: 2432)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !372, file: !44, line: 688, baseType: !693, size: 32, offset: 2464)
!2802 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !44, line: 690, baseType: !2803, size: 64, offset: 2496)
!2803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !44, line: 690, size: 64, elements: !2804)
!2804 = !{!2805, !3028}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2803, file: !44, line: 691, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2809)
!2809 = !{!2810, !2811, !2815, !2820, !2824, !2825, !2826, !2830, !2843, !2844, !2852, !2856, !2857, !2861, !2862, !2866, !2871, !2872, !2876, !2880, !2988, !2992, !2993, !2997, !2998, !3002, !3006, !3011, !3015, !3019, !3023, !3027}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2808, file: !44, line: 1823, baseType: !575, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2808, file: !44, line: 1824, baseType: !2812, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!473, !299, !473, !129}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2808, file: !44, line: 1825, baseType: !2816, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!254, !299, !223, !269, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2808, file: !44, line: 1826, baseType: !2821, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!254, !299, !170, !269, !2819}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2808, file: !44, line: 1827, baseType: !790, size: 64, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2808, file: !44, line: 1828, baseType: !790, size: 64, offset: 320)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2808, file: !44, line: 1829, baseType: !2827, size: 64, offset: 384)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!129, !793, !432}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2808, file: !44, line: 1830, baseType: !2831, size: 64, offset: 448)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!129, !299, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2836)
!2836 = !{!2837, !2842}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2835, file: !44, line: 1777, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2839)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!129, !2834, !170, !129, !473, !364, !7}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2835, file: !44, line: 1778, baseType: !473, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2808, file: !44, line: 1831, baseType: !2831, size: 64, offset: 512)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2808, file: !44, line: 1832, baseType: !2845, size: 64, offset: 576)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!2848, !299, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2849, line: 52, baseType: !7)
!2849 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !561, line: 27, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2808, file: !44, line: 1833, baseType: !2853, size: 64, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!258, !299, !7, !122}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2808, file: !44, line: 1834, baseType: !2853, size: 64, offset: 704)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2808, file: !44, line: 1835, baseType: !2858, size: 64, offset: 768)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!129, !299, !925}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2808, file: !44, line: 1836, baseType: !122, size: 64, offset: 832)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2808, file: !44, line: 1837, baseType: !2863, size: 64, offset: 896)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!129, !371, !299}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2808, file: !44, line: 1838, baseType: !2867, size: 64, offset: 960)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!129, !299, !2870}
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !115)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2808, file: !44, line: 1839, baseType: !2863, size: 64, offset: 1024)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2808, file: !44, line: 1840, baseType: !2873, size: 64, offset: 1088)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!129, !299, !473, !473, !129}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2808, file: !44, line: 1841, baseType: !2877, size: 64, offset: 1152)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!129, !129, !299, !129}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !44, line: 1842, baseType: !2881, size: 64, offset: 1216)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!129, !299, !129, !2884}
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2918, !2919, !2920, !2933, !2964}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2885, file: !44, line: 1063, baseType: !2884, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2885, file: !44, line: 1064, baseType: !134, size: 128, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2885, file: !44, line: 1065, baseType: !584, size: 128, offset: 192)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2885, file: !44, line: 1066, baseType: !134, size: 128, offset: 320)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2885, file: !44, line: 1069, baseType: !134, size: 128, offset: 448)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2885, file: !44, line: 1072, baseType: !2870, size: 64, offset: 576)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2885, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2885, file: !44, line: 1074, baseType: !109, size: 8, offset: 672)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2885, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2885, file: !44, line: 1076, baseType: !129, size: 32, offset: 736)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2885, file: !44, line: 1077, baseType: !1423, size: 128, offset: 768)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2885, file: !44, line: 1078, baseType: !299, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2885, file: !44, line: 1079, baseType: !473, size: 64, offset: 960)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2885, file: !44, line: 1080, baseType: !473, size: 64, offset: 1024)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2885, file: !44, line: 1082, baseType: !2902, size: 64, offset: 1088)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2904)
!2904 = !{!2905, !2913, !2914, !2915, !2916, !2917}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2903, file: !44, line: 1315, baseType: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2907, line: 20, baseType: !2908)
!2907 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2907, line: 11, elements: !2909)
!2909 = !{!2910}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2908, file: !2907, line: 12, baseType: !2911)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !194, line: 33, baseType: !2912)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !194, line: 31, elements: !196)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2903, file: !44, line: 1316, baseType: !129, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2903, file: !44, line: 1317, baseType: !129, size: 32, offset: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2903, file: !44, line: 1318, baseType: !2902, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2903, file: !44, line: 1319, baseType: !299, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2903, file: !44, line: 1320, baseType: !312, size: 128, align: 64, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2885, file: !44, line: 1084, baseType: !122, size: 64, offset: 1152)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2885, file: !44, line: 1085, baseType: !122, size: 64, offset: 1216)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2885, file: !44, line: 1087, baseType: !2921, size: 64, offset: 1280)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2923)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2924)
!2924 = !{!2925, !2929}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2923, file: !44, line: 1012, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2884, !2884}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2923, file: !44, line: 1013, baseType: !2930, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{null, !2884}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2885, file: !44, line: 1088, baseType: !2934, size: 64, offset: 1344)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2936)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2937)
!2937 = !{!2938, !2942, !2946, !2947, !2951, !2955, !2959, !2963}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2936, file: !44, line: 1017, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!2870, !2870}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2936, file: !44, line: 1018, baseType: !2943, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !2870}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2936, file: !44, line: 1019, baseType: !2930, size: 64, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2936, file: !44, line: 1020, baseType: !2948, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!129, !2884, !129}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2936, file: !44, line: 1021, baseType: !2952, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!432, !2884}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2936, file: !44, line: 1022, baseType: !2956, size: 64, offset: 320)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!129, !2884, !129, !138}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2936, file: !44, line: 1023, baseType: !2960, size: 64, offset: 384)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !2884, !767}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2936, file: !44, line: 1024, baseType: !2952, size: 64, offset: 448)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2885, file: !44, line: 1097, baseType: !2965, size: 256, offset: 1408)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2885, file: !44, line: 1089, size: 256, elements: !2966)
!2966 = !{!2967, !2976, !2982}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2965, file: !44, line: 1090, baseType: !2968, size: 256)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2969, line: 10, size: 256, elements: !2970)
!2969 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2970 = !{!2971, !2972, !2975}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2968, file: !2969, line: 11, baseType: !113, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2968, file: !2969, line: 12, baseType: !2973, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2969, line: 5, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2968, file: !2969, line: 13, baseType: !134, size: 128, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2965, file: !44, line: 1091, baseType: !2977, size: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2969, line: 17, size: 64, elements: !2978)
!2978 = !{!2979}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2977, file: !2969, line: 18, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2969, line: 16, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2965, file: !44, line: 1096, baseType: !2983, size: 192)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !44, line: 1092, size: 192, elements: !2984)
!2984 = !{!2985, !2986, !2987}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2983, file: !44, line: 1093, baseType: !134, size: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2983, file: !44, line: 1094, baseType: !129, size: 32, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2983, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2808, file: !44, line: 1843, baseType: !2989, size: 64, offset: 1280)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!254, !299, !666, !129, !269, !2819, !129}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2808, file: !44, line: 1844, baseType: !1045, size: 64, offset: 1344)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2808, file: !44, line: 1845, baseType: !2994, size: 64, offset: 1408)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!129, !129}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2808, file: !44, line: 1846, baseType: !2881, size: 64, offset: 1472)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2808, file: !44, line: 1847, baseType: !2999, size: 64, offset: 1536)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!254, !2041, !299, !2819, !269, !7}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2808, file: !44, line: 1848, baseType: !3003, size: 64, offset: 1600)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!254, !299, !2819, !2041, !269, !7}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2808, file: !44, line: 1849, baseType: !3007, size: 64, offset: 1664)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!129, !299, !258, !3010, !767}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2808, file: !44, line: 1850, baseType: !3012, size: 64, offset: 1728)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!258, !299, !129, !473, !473}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2808, file: !44, line: 1852, baseType: !3016, size: 64, offset: 1792)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !656, !299}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2808, file: !44, line: 1856, baseType: !3020, size: 64, offset: 1856)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!254, !299, !473, !299, !473, !269, !7}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2808, file: !44, line: 1858, baseType: !3024, size: 64, offset: 1920)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!473, !299, !473, !299, !473, !473, !7}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2808, file: !44, line: 1861, baseType: !2873, size: 64, offset: 1984)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2803, file: !44, line: 692, baseType: !609, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !372, file: !44, line: 694, baseType: !3030, size: 64, offset: 2560)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3031, file: !44, line: 1101, baseType: !182)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3031, file: !44, line: 1102, baseType: !134, size: 128)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3031, file: !44, line: 1103, baseType: !134, size: 128, offset: 128)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3031, file: !44, line: 1104, baseType: !134, size: 128, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !372, file: !44, line: 695, baseType: !680, size: 1216, align: 64, offset: 2624)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !372, file: !44, line: 696, baseType: !134, size: 128, offset: 3840)
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !44, line: 697, baseType: !3040, size: 64, offset: 3968)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !44, line: 697, size: 64, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3047, !3048}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3040, file: !44, line: 698, baseType: !2041, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3040, file: !44, line: 699, baseType: !2558, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3040, file: !44, line: 700, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3040, file: !44, line: 701, baseType: !223, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3040, file: !44, line: 702, baseType: !7, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !372, file: !44, line: 705, baseType: !114, size: 32, offset: 4032)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !372, file: !44, line: 708, baseType: !114, size: 32, offset: 4064)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !372, file: !44, line: 709, baseType: !2640, size: 64, offset: 4096)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !372, file: !44, line: 720, baseType: !115, size: 64, offset: 4160)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !330, file: !327, line: 98, baseType: !3054, size: 256, offset: 448)
!3054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !2173)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !330, file: !327, line: 101, baseType: !3056, size: 32, offset: 704)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3057, line: 25, size: 32, elements: !3058)
!3057 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3058 = !{!3059}
!3059 = !DIDerivedType(tag: DW_TAG_member, scope: !3056, file: !3057, line: 26, baseType: !3060, size: 32)
!3060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3056, file: !3057, line: 26, size: 32, elements: !3061)
!3061 = !{!3062}
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !3060, file: !3057, line: 30, baseType: !3063, size: 32)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3060, file: !3057, line: 30, size: 32, elements: !3064)
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3063, file: !3057, line: 31, baseType: !182)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3063, file: !3057, line: 32, baseType: !129, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !330, file: !327, line: 102, baseType: !2657, size: 64, offset: 768)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !330, file: !327, line: 103, baseType: !541, size: 64, offset: 832)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !330, file: !327, line: 104, baseType: !122, size: 64, offset: 896)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !330, file: !327, line: 105, baseType: !115, size: 64, offset: 960)
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !327, line: 107, baseType: !3072, size: 128, offset: 1024)
!3072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !327, line: 107, size: 128, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3072, file: !327, line: 108, baseType: !134, size: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3072, file: !327, line: 109, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !330, file: !327, line: 111, baseType: !134, size: 128, offset: 1152)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !330, file: !327, line: 112, baseType: !134, size: 128, offset: 1280)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !330, file: !327, line: 120, baseType: !3080, size: 128, offset: 1408)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !327, line: 116, size: 128, elements: !3081)
!3081 = !{!3082, !3083, !3084}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3080, file: !327, line: 117, baseType: !584, size: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3080, file: !327, line: 118, baseType: !344, size: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3080, file: !327, line: 119, baseType: !312, size: 128, align: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !300, file: !44, line: 922, baseType: !371, size: 64, offset: 256)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !300, file: !44, line: 923, baseType: !2806, size: 64, offset: 320)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !300, file: !44, line: 929, baseType: !182, offset: 384)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !300, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !300, file: !44, line: 931, baseType: !717, size: 64, offset: 448)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !300, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !300, file: !44, line: 933, baseType: !2653, size: 32, offset: 544)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !300, file: !44, line: 934, baseType: !1117, size: 192, offset: 576)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !300, file: !44, line: 935, baseType: !473, size: 64, offset: 768)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !300, file: !44, line: 936, baseType: !3095, size: 192, offset: 832)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100, !3101, !3102}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3095, file: !44, line: 886, baseType: !2906)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3095, file: !44, line: 887, baseType: !1413, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3095, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3095, file: !44, line: 889, baseType: !377, size: 32, offset: 96)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3095, file: !44, line: 889, baseType: !377, size: 32, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3095, file: !44, line: 890, baseType: !129, size: 32, offset: 160)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !300, file: !44, line: 937, baseType: !1489, size: 64, offset: 1024)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !300, file: !44, line: 938, baseType: !3105, size: 256, offset: 1088)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3105, file: !44, line: 897, baseType: !122, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3105, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3105, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3105, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3105, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3105, file: !44, line: 904, baseType: !473, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !300, file: !44, line: 940, baseType: !364, size: 64, offset: 1344)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !300, file: !44, line: 945, baseType: !115, size: 64, offset: 1408)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !300, file: !44, line: 949, baseType: !134, size: 128, offset: 1472)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !300, file: !44, line: 950, baseType: !134, size: 128, offset: 1600)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !300, file: !44, line: 952, baseType: !679, size: 64, offset: 1728)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !300, file: !44, line: 953, baseType: !853, size: 32, offset: 1792)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !300, file: !44, line: 954, baseType: !853, size: 32, offset: 1824)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !290, file: !248, line: 174, baseType: !296, size: 64, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !290, file: !248, line: 176, baseType: !3122, size: 64, offset: 384)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!129, !299, !175, !289, !925}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !278, file: !248, line: 90, baseType: !273, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !278, file: !248, line: 91, baseType: !3127, size: 64, offset: 256)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !238, file: !167, line: 143, baseType: !3129, size: 64, offset: 256)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!3132, !175}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3134)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3135)
!3135 = !{!3136, !3137, !3141, !3145, !3151, !3155}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3134, file: !61, line: 40, baseType: !60, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3134, file: !61, line: 41, baseType: !3138, size: 64, offset: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!432}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3134, file: !61, line: 42, baseType: !3142, size: 64, offset: 128)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!115}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3134, file: !61, line: 43, baseType: !3146, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!2070, !3149}
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3134, file: !61, line: 44, baseType: !3152, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!2070}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3134, file: !61, line: 45, baseType: !410, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !238, file: !167, line: 144, baseType: !3157, size: 64, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!2070, !175}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !238, file: !167, line: 145, baseType: !3161, size: 64, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !175, !3164, !3165}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !166, file: !167, line: 70, baseType: !3167, size: 64, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !561, line: 123, size: 1024, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3298, !3299, !3300, !3301, !3302}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3168, file: !561, line: 124, baseType: !693, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3168, file: !561, line: 125, baseType: !693, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3168, file: !561, line: 135, baseType: !3167, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3168, file: !561, line: 136, baseType: !170, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3168, file: !561, line: 138, baseType: !706, size: 192, align: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3168, file: !561, line: 140, baseType: !2070, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3168, file: !561, line: 141, baseType: !7, size: 32, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !561, line: 142, baseType: !3178, size: 256, offset: 512)
!3178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !561, line: 142, size: 256, elements: !3179)
!3179 = !{!3180, !3226, !3230}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3178, file: !561, line: 143, baseType: !3181, size: 192)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !561, line: 91, size: 192, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3181, file: !561, line: 92, baseType: !122, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3181, file: !561, line: 94, baseType: !702, size: 64, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3181, file: !561, line: 100, baseType: !3186, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !561, line: 180, size: 704, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3198, !3199, !3200, !3224, !3225}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3187, file: !561, line: 182, baseType: !3167, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3187, file: !561, line: 183, baseType: !7, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3187, file: !561, line: 186, baseType: !3192, size: 192, offset: 128)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3193, line: 19, size: 192, elements: !3194)
!3193 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3192, file: !3193, line: 20, baseType: !684, size: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3192, file: !3193, line: 21, baseType: !7, size: 32, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3192, file: !3193, line: 22, baseType: !7, size: 32, offset: 160)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3187, file: !561, line: 187, baseType: !113, size: 32, offset: 320)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3187, file: !561, line: 188, baseType: !113, size: 32, offset: 352)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3187, file: !561, line: 189, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !561, line: 168, size: 320, elements: !3203)
!3203 = !{!3204, !3208, !3212, !3216, !3220}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3202, file: !561, line: 169, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!129, !656, !3186}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3202, file: !561, line: 171, baseType: !3209, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!129, !3167, !170, !264}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3202, file: !561, line: 173, baseType: !3213, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!129, !3167}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3202, file: !561, line: 174, baseType: !3217, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!129, !3167, !3167, !170}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3202, file: !561, line: 176, baseType: !3221, size: 64, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!129, !656, !3167, !3186}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3187, file: !561, line: 192, baseType: !134, size: 128, offset: 448)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3187, file: !561, line: 194, baseType: !1423, size: 128, offset: 576)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3178, file: !561, line: 144, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !561, line: 103, size: 64, elements: !3228)
!3228 = !{!3229}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3227, file: !561, line: 104, baseType: !3167, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3178, file: !561, line: 145, baseType: !3231, size: 256)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !561, line: 107, size: 256, elements: !3232)
!3232 = !{!3233, !3293, !3296, !3297}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3231, file: !561, line: 108, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3236)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !561, line: 217, size: 768, elements: !3237)
!3237 = !{!3238, !3258, !3262, !3266, !3270, !3274, !3278, !3282, !3283, !3284, !3285, !3289}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3236, file: !561, line: 222, baseType: !3239, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!129, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !561, line: 197, size: 1088, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3243, file: !561, line: 199, baseType: !3167, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3243, file: !561, line: 200, baseType: !299, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3243, file: !561, line: 201, baseType: !656, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3243, file: !561, line: 202, baseType: !115, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3243, file: !561, line: 205, baseType: !1117, size: 192, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3243, file: !561, line: 206, baseType: !1117, size: 192, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3243, file: !561, line: 207, baseType: !129, size: 32, offset: 640)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3243, file: !561, line: 208, baseType: !134, size: 128, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3243, file: !561, line: 209, baseType: !223, size: 64, offset: 832)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3243, file: !561, line: 211, baseType: !269, size: 64, offset: 896)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3243, file: !561, line: 212, baseType: !432, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3243, file: !561, line: 213, baseType: !432, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3243, file: !561, line: 214, baseType: !953, size: 64, offset: 1024)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3236, file: !561, line: 223, baseType: !3259, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !3242}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3236, file: !561, line: 236, baseType: !3263, size: 64, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!129, !656, !115}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3236, file: !561, line: 238, baseType: !3267, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!115, !656, !2819}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3236, file: !561, line: 239, baseType: !3271, size: 64, offset: 256)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!115, !656, !115, !2819}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3236, file: !561, line: 240, baseType: !3275, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !656, !115}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3236, file: !561, line: 242, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!254, !3242, !223, !269, !473}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3236, file: !561, line: 252, baseType: !269, size: 64, offset: 448)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3236, file: !561, line: 259, baseType: !432, size: 8, offset: 512)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3236, file: !561, line: 260, baseType: !3279, size: 64, offset: 576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3236, file: !561, line: 263, baseType: !3286, size: 64, offset: 640)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!2848, !3242, !2850}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3236, file: !561, line: 266, baseType: !3290, size: 64, offset: 704)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!129, !3242, !925}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3231, file: !561, line: 109, baseType: !3294, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !561, line: 31, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3231, file: !561, line: 110, baseType: !473, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3231, file: !561, line: 111, baseType: !3167, size: 64, offset: 192)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3168, file: !561, line: 148, baseType: !115, size: 64, offset: 768)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3168, file: !561, line: 154, baseType: !364, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3168, file: !561, line: 156, baseType: !112, size: 16, offset: 896)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3168, file: !561, line: 157, baseType: !264, size: 16, offset: 912)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3168, file: !561, line: 158, baseType: !3303, size: 64, offset: 960)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !561, line: 32, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !166, file: !167, line: 71, baseType: !3306, size: 32, offset: 448)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3307, line: 19, size: 32, elements: !3308)
!3307 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3308 = !{!3309}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3306, file: !3307, line: 20, baseType: !1174, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !166, file: !167, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !166, file: !167, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !166, file: !167, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !166, file: !167, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !166, file: !167, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !145, file: !99, line: 318, baseType: !7, size: 32, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !145, file: !99, line: 319, baseType: !112, size: 16, offset: 480)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !145, file: !99, line: 320, baseType: !112, size: 16, offset: 496)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !145, file: !99, line: 321, baseType: !112, size: 16, offset: 512)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !145, file: !99, line: 322, baseType: !112, size: 16, offset: 528)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !145, file: !99, line: 323, baseType: !7, size: 32, offset: 544)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !145, file: !99, line: 324, baseType: !105, size: 8, offset: 576)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !145, file: !99, line: 325, baseType: !105, size: 8, offset: 584)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !145, file: !99, line: 330, baseType: !105, size: 8, offset: 592)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !145, file: !99, line: 331, baseType: !105, size: 8, offset: 600)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !145, file: !99, line: 332, baseType: !105, size: 8, offset: 608)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !145, file: !99, line: 333, baseType: !105, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !145, file: !99, line: 334, baseType: !105, size: 8, offset: 624)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !145, file: !99, line: 335, baseType: !105, size: 8, offset: 632)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !145, file: !99, line: 336, baseType: !110, size: 16, offset: 640)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !145, file: !99, line: 337, baseType: !3331, size: 64, offset: 704)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !145, file: !99, line: 339, baseType: !3333, size: 64, offset: 768)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !99, line: 858, size: 2048, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3352, !3356, !3360, !3368, !3372, !3373, !3377, !3396, !3397, !3842}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3334, file: !99, line: 859, baseType: !134, size: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3334, file: !99, line: 860, baseType: !170, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3334, file: !99, line: 861, baseType: !3339, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3341)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3342, line: 38, size: 256, elements: !3343)
!3342 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3341, file: !3342, line: 39, baseType: !114, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3341, file: !3342, line: 39, baseType: !114, size: 32, offset: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3341, file: !3342, line: 40, baseType: !114, size: 32, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3341, file: !3342, line: 40, baseType: !114, size: 32, offset: 96)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3341, file: !3342, line: 41, baseType: !114, size: 32, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3341, file: !3342, line: 41, baseType: !114, size: 32, offset: 160)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3341, file: !3342, line: 42, baseType: !3351, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3342, line: 14, baseType: !122)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3334, file: !99, line: 862, baseType: !3353, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!129, !144, !3339}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3334, file: !99, line: 863, baseType: !3357, size: 64, offset: 320)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{null, !144}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3334, file: !99, line: 864, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!129, !144, !3364}
!3364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3365)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3366)
!3366 = !{!3367}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3365, file: !74, line: 51, baseType: !129, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3334, file: !99, line: 865, baseType: !3369, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!129, !144}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3334, file: !99, line: 866, baseType: !3357, size: 64, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3334, file: !99, line: 867, baseType: !3374, size: 64, offset: 576)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!129, !144, !129}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3334, file: !99, line: 868, baseType: !3378, size: 64, offset: 640)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !99, line: 795, size: 384, elements: !3381)
!3381 = !{!3382, !3388, !3392, !3393, !3394, !3395}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3380, file: !99, line: 797, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!3386, !144, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !99, line: 772, baseType: !7)
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !99, line: 180, baseType: !7)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3380, file: !99, line: 801, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!3386, !144}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3380, file: !99, line: 804, baseType: !3389, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3380, file: !99, line: 807, baseType: !3357, size: 64, offset: 192)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3380, file: !99, line: 808, baseType: !3357, size: 64, offset: 256)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3380, file: !99, line: 811, baseType: !3357, size: 64, offset: 320)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3334, file: !99, line: 869, baseType: !275, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3334, file: !99, line: 870, baseType: !3398, size: 1152, offset: 768)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 95, size: 1152, elements: !3399)
!3399 = !{!3400, !3401, !3801, !3802, !3803, !3804, !3805, !3817, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3398, file: !88, line: 96, baseType: !170, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3398, file: !88, line: 97, baseType: !3402, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3404, line: 82, size: 1408, elements: !3405)
!3404 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3405 = !{!3406, !3407, !3408, !3772, !3773, !3774, !3775, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3790, !3791, !3792, !3793, !3794, !3798, !3799, !3800}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3403, file: !3404, line: 83, baseType: !170, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3403, file: !3404, line: 84, baseType: !170, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3403, file: !3404, line: 85, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3417, !3418, !3469, !3470, !3472, !3473, !3474, !3475, !3484, !3589, !3602, !3605, !3606, !3610, !3612, !3613, !3614, !3618, !3624, !3625, !3628, !3632, !3722, !3723, !3724, !3725, !3726, !3760, !3761, !3762, !3765, !3768, !3769, !3770, !3771}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3410, file: !67, line: 462, baseType: !166, size: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3410, file: !67, line: 463, baseType: !3409, size: 64, offset: 512)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3410, file: !67, line: 465, baseType: !3415, size: 64, offset: 576)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3410, file: !67, line: 467, baseType: !170, size: 64, offset: 640)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3410, file: !67, line: 468, baseType: !3419, size: 64, offset: 704)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3429, !3434, !3438}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3421, file: !67, line: 88, baseType: !170, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3421, file: !67, line: 89, baseType: !275, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3421, file: !67, line: 90, baseType: !3426, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!129, !3409, !218}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3421, file: !67, line: 91, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!223, !3409, !3433, !3164, !3165}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3421, file: !67, line: 93, baseType: !3435, size: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !3409}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3421, file: !67, line: 95, baseType: !3439, size: 64, offset: 320)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3441)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3442)
!3442 = !{!3443, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3441, file: !74, line: 279, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!129, !3409}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3441, file: !74, line: 280, baseType: !3435, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3441, file: !74, line: 281, baseType: !3444, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3441, file: !74, line: 282, baseType: !3444, size: 64, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3441, file: !74, line: 283, baseType: !3444, size: 64, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3441, file: !74, line: 284, baseType: !3444, size: 64, offset: 320)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3441, file: !74, line: 285, baseType: !3444, size: 64, offset: 384)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3441, file: !74, line: 286, baseType: !3444, size: 64, offset: 448)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3441, file: !74, line: 287, baseType: !3444, size: 64, offset: 512)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3441, file: !74, line: 288, baseType: !3444, size: 64, offset: 576)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3441, file: !74, line: 289, baseType: !3444, size: 64, offset: 640)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3441, file: !74, line: 290, baseType: !3444, size: 64, offset: 704)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3441, file: !74, line: 291, baseType: !3444, size: 64, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3441, file: !74, line: 292, baseType: !3444, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3441, file: !74, line: 293, baseType: !3444, size: 64, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3441, file: !74, line: 294, baseType: !3444, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3441, file: !74, line: 295, baseType: !3444, size: 64, offset: 1024)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3441, file: !74, line: 296, baseType: !3444, size: 64, offset: 1088)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3441, file: !74, line: 297, baseType: !3444, size: 64, offset: 1152)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3441, file: !74, line: 298, baseType: !3444, size: 64, offset: 1216)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3441, file: !74, line: 299, baseType: !3444, size: 64, offset: 1280)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3441, file: !74, line: 300, baseType: !3444, size: 64, offset: 1344)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3441, file: !74, line: 301, baseType: !3444, size: 64, offset: 1408)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3410, file: !67, line: 470, baseType: !3402, size: 64, offset: 768)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3410, file: !67, line: 471, baseType: !3471, size: 64, offset: 832)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3410, file: !67, line: 473, baseType: !115, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3410, file: !67, line: 475, baseType: !115, size: 64, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3410, file: !67, line: 480, baseType: !1117, size: 192, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3410, file: !67, line: 484, baseType: !3476, size: 576, offset: 1216)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3477)
!3477 = !{!3478, !3479, !3480, !3481, !3482, !3483}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3476, file: !67, line: 362, baseType: !134, size: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3476, file: !67, line: 363, baseType: !134, size: 128, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3476, file: !67, line: 364, baseType: !134, size: 128, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3476, file: !67, line: 365, baseType: !134, size: 128, offset: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3476, file: !67, line: 366, baseType: !432, size: 8, offset: 512)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3476, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3410, file: !67, line: 485, baseType: !3485, size: 2304, offset: 1792)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3582, !3586}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3485, file: !74, line: 566, baseType: !3364, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3485, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3485, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3485, file: !74, line: 569, baseType: !432, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3485, file: !74, line: 570, baseType: !432, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3485, file: !74, line: 571, baseType: !432, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3485, file: !74, line: 572, baseType: !432, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3485, file: !74, line: 573, baseType: !432, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3485, file: !74, line: 574, baseType: !432, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3485, file: !74, line: 575, baseType: !432, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3485, file: !74, line: 576, baseType: !432, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3485, file: !74, line: 577, baseType: !113, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3485, file: !74, line: 578, baseType: !182, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3485, file: !74, line: 580, baseType: !134, size: 128, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3485, file: !74, line: 581, baseType: !1444, size: 192, offset: 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3485, file: !74, line: 582, baseType: !3503, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3505, line: 43, size: 1472, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3514, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3504, file: !3505, line: 44, baseType: !170, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3504, file: !3505, line: 45, baseType: !129, size: 32, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3504, file: !3505, line: 46, baseType: !134, size: 128, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3504, file: !3505, line: 47, baseType: !182, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3504, file: !3505, line: 48, baseType: !3512, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3504, file: !3505, line: 49, baseType: !3515, size: 320, offset: 320)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3516, line: 11, size: 320, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3517 = !{!3518, !3519, !3520, !3525}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3515, file: !3516, line: 16, baseType: !584, size: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3515, file: !3516, line: 17, baseType: !122, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3515, file: !3516, line: 18, baseType: !3521, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{null, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3515, file: !3516, line: 19, baseType: !113, size: 32, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3504, file: !3505, line: 50, baseType: !122, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3504, file: !3505, line: 51, baseType: !1244, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3504, file: !3505, line: 52, baseType: !1244, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3504, file: !3505, line: 53, baseType: !1244, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3504, file: !3505, line: 54, baseType: !1244, size: 64, offset: 896)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3504, file: !3505, line: 55, baseType: !1244, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3504, file: !3505, line: 56, baseType: !122, size: 64, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3504, file: !3505, line: 57, baseType: !122, size: 64, offset: 1088)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3504, file: !3505, line: 58, baseType: !122, size: 64, offset: 1152)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3504, file: !3505, line: 59, baseType: !122, size: 64, offset: 1216)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3504, file: !3505, line: 60, baseType: !122, size: 64, offset: 1280)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3504, file: !3505, line: 61, baseType: !3409, size: 64, offset: 1344)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3504, file: !3505, line: 62, baseType: !432, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3504, file: !3505, line: 63, baseType: !432, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3485, file: !74, line: 583, baseType: !432, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3485, file: !74, line: 584, baseType: !432, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3485, file: !74, line: 585, baseType: !432, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3485, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3485, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3485, file: !74, line: 592, baseType: !1236, size: 512, offset: 576)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3485, file: !74, line: 593, baseType: !364, size: 64, offset: 1088)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3485, file: !74, line: 594, baseType: !1900, size: 256, offset: 1152)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3485, file: !74, line: 595, baseType: !1423, size: 128, offset: 1408)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3485, file: !74, line: 596, baseType: !3512, size: 64, offset: 1536)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3485, file: !74, line: 597, baseType: !693, size: 32, offset: 1600)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3485, file: !74, line: 598, baseType: !693, size: 32, offset: 1632)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3485, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3485, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3485, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3485, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3485, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3485, file: !74, line: 604, baseType: !432, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3485, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3485, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3485, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3485, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3485, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3485, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3485, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3485, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3485, file: !74, line: 613, baseType: !129, size: 32, offset: 1792)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3485, file: !74, line: 614, baseType: !129, size: 32, offset: 1824)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3485, file: !74, line: 615, baseType: !364, size: 64, offset: 1856)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3485, file: !74, line: 616, baseType: !364, size: 64, offset: 1920)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3485, file: !74, line: 617, baseType: !364, size: 64, offset: 1984)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3485, file: !74, line: 618, baseType: !364, size: 64, offset: 2048)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3485, file: !74, line: 620, baseType: !3573, size: 64, offset: 2112)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3579}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3574, file: !74, line: 537, baseType: !182)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3574, file: !74, line: 538, baseType: !7, size: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3574, file: !74, line: 540, baseType: !134, size: 128, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3574, file: !74, line: 543, baseType: !3580, size: 64, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3485, file: !74, line: 621, baseType: !3583, size: 64, offset: 2176)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{null, !3409, !1386}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3485, file: !74, line: 622, baseType: !3587, size: 64, offset: 2240)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3410, file: !67, line: 486, baseType: !3590, size: 64, offset: 4096)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3599, !3600, !3601}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3591, file: !74, line: 643, baseType: !3441, size: 1472)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3591, file: !74, line: 644, baseType: !3444, size: 64, offset: 1472)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3591, file: !74, line: 645, baseType: !3596, size: 64, offset: 1536)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{null, !3409, !432}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3591, file: !74, line: 646, baseType: !3444, size: 64, offset: 1600)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3591, file: !74, line: 647, baseType: !3435, size: 64, offset: 1664)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3591, file: !74, line: 648, baseType: !3435, size: 64, offset: 1728)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3410, file: !67, line: 493, baseType: !3603, size: 64, offset: 4160)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3410, file: !67, line: 499, baseType: !134, size: 128, offset: 4224)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3410, file: !67, line: 502, baseType: !3607, size: 64, offset: 4352)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3609)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3410, file: !67, line: 504, baseType: !3611, size: 64, offset: 4416)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3410, file: !67, line: 505, baseType: !364, size: 64, offset: 4480)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3410, file: !67, line: 510, baseType: !364, size: 64, offset: 4544)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3410, file: !67, line: 511, baseType: !3615, size: 64, offset: 4608)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3410, file: !67, line: 513, baseType: !3619, size: 64, offset: 4672)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3620, file: !67, line: 293, baseType: !7, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3620, file: !67, line: 294, baseType: !122, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3410, file: !67, line: 515, baseType: !134, size: 128, offset: 4736)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3410, file: !67, line: 526, baseType: !3626, offset: 4864)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3627, line: 5, elements: !196)
!3627 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3410, file: !67, line: 528, baseType: !3629, size: 64, offset: 4864)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3631, line: 14, flags: DIFlagFwdDecl)
!3631 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3410, file: !67, line: 529, baseType: !3633, size: 64, offset: 4928)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3635, line: 17, size: 192, elements: !3636)
!3635 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !{!3637, !3638, !3721}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3634, file: !3635, line: 18, baseType: !3633, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !3635, line: 19, baseType: !3639, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3635, line: 110, size: 1152, elements: !3642)
!3642 = !{!3643, !3647, !3651, !3657, !3663, !3667, !3671, !3676, !3680, !3681, !3685, !3689, !3693, !3704, !3705, !3706, !3707, !3717}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3641, file: !3635, line: 111, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!3633, !3633}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3641, file: !3635, line: 112, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3633}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3641, file: !3635, line: 113, baseType: !3652, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!432, !3655}
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3641, file: !3635, line: 114, baseType: !3658, size: 64, offset: 192)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!2070, !3655, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3410)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3641, file: !3635, line: 116, baseType: !3664, size: 64, offset: 256)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!432, !3655, !170}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3641, file: !3635, line: 118, baseType: !3668, size: 64, offset: 320)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!129, !3655, !170, !7, !115, !269}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3641, file: !3635, line: 123, baseType: !3672, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!129, !3655, !170, !3675, !269}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3641, file: !3635, line: 126, baseType: !3677, size: 64, offset: 448)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!170, !3655}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3641, file: !3635, line: 127, baseType: !3677, size: 64, offset: 512)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3641, file: !3635, line: 128, baseType: !3682, size: 64, offset: 576)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!3633, !3655}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3641, file: !3635, line: 130, baseType: !3686, size: 64, offset: 640)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!3633, !3655, !3633}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3641, file: !3635, line: 133, baseType: !3690, size: 64, offset: 704)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!3633, !3655, !170}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3641, file: !3635, line: 135, baseType: !3694, size: 64, offset: 768)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!129, !3655, !170, !170, !7, !7, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3635, line: 43, size: 640, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3698, file: !3635, line: 44, baseType: !3633, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3698, file: !3635, line: 45, baseType: !7, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3698, file: !3635, line: 46, baseType: !3703, size: 512, offset: 128)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 512, elements: !1274)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3641, file: !3635, line: 140, baseType: !3686, size: 64, offset: 832)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3641, file: !3635, line: 143, baseType: !3682, size: 64, offset: 896)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3641, file: !3635, line: 145, baseType: !3644, size: 64, offset: 960)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3641, file: !3635, line: 146, baseType: !3708, size: 64, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!129, !3655, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3635, line: 29, size: 128, elements: !3713)
!3713 = !{!3714, !3715, !3716}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3712, file: !3635, line: 30, baseType: !7, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3712, file: !3635, line: 31, baseType: !7, size: 32, offset: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3712, file: !3635, line: 32, baseType: !3655, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3641, file: !3635, line: 148, baseType: !3718, size: 64, offset: 1088)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!129, !3655, !3409}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3634, file: !3635, line: 20, baseType: !3409, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3410, file: !67, line: 534, baseType: !455, size: 32, offset: 4992)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3410, file: !67, line: 535, baseType: !113, size: 32, offset: 5024)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3410, file: !67, line: 537, baseType: !182, offset: 5056)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3410, file: !67, line: 538, baseType: !134, size: 128, offset: 5056)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3410, file: !67, line: 540, baseType: !3727, size: 64, offset: 5184)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3729, line: 54, size: 960, elements: !3730)
!3729 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3730 = !{!3731, !3732, !3733, !3734, !3735, !3736, !3737, !3741, !3745, !3746, !3747, !3748, !3752, !3756, !3757}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3728, file: !3729, line: 55, baseType: !170, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3728, file: !3729, line: 56, baseType: !575, size: 64, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3728, file: !3729, line: 58, baseType: !275, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3728, file: !3729, line: 59, baseType: !275, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3728, file: !3729, line: 60, baseType: !175, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3728, file: !3729, line: 62, baseType: !3426, size: 64, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3728, file: !3729, line: 63, baseType: !3738, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!223, !3409, !3433}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3728, file: !3729, line: 65, baseType: !3742, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{null, !3727}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3728, file: !3729, line: 66, baseType: !3435, size: 64, offset: 512)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3728, file: !3729, line: 68, baseType: !3444, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3728, file: !3729, line: 70, baseType: !3132, size: 64, offset: 640)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3728, file: !3729, line: 71, baseType: !3749, size: 64, offset: 704)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!2070, !3409}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3728, file: !3729, line: 73, baseType: !3753, size: 64, offset: 768)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3409, !3164, !3165}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3728, file: !3729, line: 75, baseType: !3439, size: 64, offset: 832)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3728, file: !3729, line: 77, baseType: !3758, size: 64, offset: 896)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3404, line: 111, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3410, file: !67, line: 541, baseType: !275, size: 64, offset: 5248)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3410, file: !67, line: 543, baseType: !3435, size: 64, offset: 5312)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3410, file: !67, line: 544, baseType: !3763, size: 64, offset: 5376)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3410, file: !67, line: 545, baseType: !3766, size: 64, offset: 5440)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3410, file: !67, line: 547, baseType: !432, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3410, file: !67, line: 548, baseType: !432, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3410, file: !67, line: 549, baseType: !432, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3410, file: !67, line: 550, baseType: !432, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3403, file: !3404, line: 86, baseType: !275, size: 64, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3403, file: !3404, line: 87, baseType: !275, size: 64, offset: 256)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3403, file: !3404, line: 88, baseType: !275, size: 64, offset: 320)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3403, file: !3404, line: 90, baseType: !3776, size: 64, offset: 384)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!129, !3409, !3471}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3403, file: !3404, line: 91, baseType: !3426, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3403, file: !3404, line: 92, baseType: !3444, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3403, file: !3404, line: 93, baseType: !3435, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3403, file: !3404, line: 94, baseType: !3444, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3403, file: !3404, line: 95, baseType: !3435, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3403, file: !3404, line: 97, baseType: !3444, size: 64, offset: 768)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3403, file: !3404, line: 98, baseType: !3444, size: 64, offset: 832)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3403, file: !3404, line: 100, baseType: !3787, size: 64, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!129, !3409, !3364}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3403, file: !3404, line: 101, baseType: !3444, size: 64, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3403, file: !3404, line: 103, baseType: !3444, size: 64, offset: 1024)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3403, file: !3404, line: 105, baseType: !3444, size: 64, offset: 1088)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3403, file: !3404, line: 107, baseType: !3439, size: 64, offset: 1152)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3403, file: !3404, line: 109, baseType: !3795, size: 64, offset: 1216)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3797)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3404, line: 109, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3403, file: !3404, line: 111, baseType: !3758, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3403, file: !3404, line: 112, baseType: !590, offset: 1344)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3403, file: !3404, line: 114, baseType: !432, size: 8, offset: 1344)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3398, file: !88, line: 99, baseType: !575, size: 64, offset: 128)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3398, file: !88, line: 100, baseType: !170, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3398, file: !88, line: 102, baseType: !432, size: 8, offset: 256)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3398, file: !88, line: 103, baseType: !87, size: 32, offset: 288)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3398, file: !88, line: 105, baseType: !3806, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3808)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3342, line: 262, size: 1600, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3816}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3808, file: !3342, line: 263, baseType: !2643, size: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3808, file: !3342, line: 264, baseType: !2643, size: 256, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3808, file: !3342, line: 265, baseType: !3813, size: 1024, offset: 512)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1024, elements: !3814)
!3814 = !{!3815}
!3815 = !DISubrange(count: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3808, file: !3342, line: 266, baseType: !2070, size: 64, offset: 1536)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3398, file: !88, line: 106, baseType: !3818, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3820)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3342, line: 210, size: 256, elements: !3821)
!3821 = !{!3822, !3826, !3827, !3828}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3820, file: !3342, line: 211, baseType: !3823, size: 72)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 72, elements: !3824)
!3824 = !{!3825}
!3825 = !DISubrange(count: 9)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3820, file: !3342, line: 212, baseType: !3351, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3820, file: !3342, line: 213, baseType: !114, size: 32, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3820, file: !3342, line: 214, baseType: !114, size: 32, offset: 224)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3398, file: !88, line: 108, baseType: !3444, size: 64, offset: 448)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3398, file: !88, line: 109, baseType: !3435, size: 64, offset: 512)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3398, file: !88, line: 110, baseType: !3444, size: 64, offset: 576)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3398, file: !88, line: 111, baseType: !3435, size: 64, offset: 640)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3398, file: !88, line: 112, baseType: !3787, size: 64, offset: 704)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3398, file: !88, line: 113, baseType: !3444, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3398, file: !88, line: 114, baseType: !275, size: 64, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3398, file: !88, line: 115, baseType: !275, size: 64, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3398, file: !88, line: 117, baseType: !3439, size: 64, offset: 960)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3398, file: !88, line: 118, baseType: !3435, size: 64, offset: 1024)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3398, file: !88, line: 120, baseType: !3840, size: 64, offset: 1088)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 120, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3334, file: !99, line: 871, baseType: !3843, size: 128, offset: 1920)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !99, line: 759, size: 128, elements: !3844)
!3844 = !{!3845, !3846}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3843, file: !99, line: 760, baseType: !182)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3843, file: !99, line: 761, baseType: !134, size: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !145, file: !99, line: 340, baseType: !364, size: 64, offset: 832)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !145, file: !99, line: 346, baseType: !3620, size: 128, offset: 896)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !145, file: !99, line: 348, baseType: !3850, size: 32, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !99, line: 155, baseType: !129)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !145, file: !99, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !145, file: !99, line: 352, baseType: !105, size: 8, offset: 1064)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !145, file: !99, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !145, file: !99, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !145, file: !99, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !145, file: !99, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !145, file: !99, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !145, file: !99, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !145, file: !99, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !145, file: !99, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !145, file: !99, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !145, file: !99, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !145, file: !99, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !145, file: !99, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !145, file: !99, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !145, file: !99, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !145, file: !99, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !145, file: !99, line: 376, baseType: !7, size: 32, offset: 1120)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !145, file: !99, line: 377, baseType: !7, size: 32, offset: 1152)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !145, file: !99, line: 380, baseType: !3871, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !99, line: 303, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !145, file: !99, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !145, file: !99, line: 383, baseType: !129, size: 32, offset: 1312)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !145, file: !99, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !145, file: !99, line: 387, baseType: !3387, size: 32, offset: 1376)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !145, file: !99, line: 388, baseType: !3410, size: 5568, offset: 1408)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !145, file: !99, line: 390, baseType: !129, size: 32, offset: 6976)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !145, file: !99, line: 396, baseType: !7, size: 32, offset: 7008)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !145, file: !99, line: 397, baseType: !3881, size: 8704, offset: 7040)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3882, size: 8704, elements: !3895)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3883, line: 20, size: 512, elements: !3884)
!3883 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3884 = !{!3885, !3887, !3888, !3889, !3890, !3891, !3893, !3894}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3882, file: !3883, line: 21, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !135, line: 158, baseType: !2068)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3882, file: !3883, line: 22, baseType: !3886, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3882, file: !3883, line: 23, baseType: !170, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3882, file: !3883, line: 24, baseType: !122, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3882, file: !3883, line: 25, baseType: !122, size: 64, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3882, file: !3883, line: 26, baseType: !3892, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3882, file: !3883, line: 26, baseType: !3892, size: 64, offset: 384)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3882, file: !3883, line: 26, baseType: !3892, size: 64, offset: 448)
!3895 = !{!3896}
!3896 = !DISubrange(count: 17)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !145, file: !99, line: 399, baseType: !432, size: 8, offset: 15744)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !145, file: !99, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !145, file: !99, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !145, file: !99, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !145, file: !99, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !145, file: !99, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !145, file: !99, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !145, file: !99, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !145, file: !99, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !145, file: !99, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !145, file: !99, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !145, file: !99, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !145, file: !99, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !145, file: !99, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !145, file: !99, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !145, file: !99, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !145, file: !99, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !145, file: !99, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !145, file: !99, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !145, file: !99, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !145, file: !99, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !145, file: !99, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !145, file: !99, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !145, file: !99, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !145, file: !99, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !145, file: !99, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !145, file: !99, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !145, file: !99, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !145, file: !99, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !145, file: !99, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !145, file: !99, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !145, file: !99, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !145, file: !99, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !145, file: !99, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !145, file: !99, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !145, file: !99, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !145, file: !99, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !145, file: !99, line: 450, baseType: !3935, size: 16, offset: 15792)
!3935 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !99, line: 206, baseType: !112)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !145, file: !99, line: 451, baseType: !693, size: 32, offset: 15808)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !145, file: !99, line: 453, baseType: !3938, size: 512, offset: 15840)
!3938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 512, elements: !1677)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !145, file: !99, line: 454, baseType: !580, size: 64, offset: 16384)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !145, file: !99, line: 455, baseType: !289, size: 64, offset: 16448)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !145, file: !99, line: 456, baseType: !129, size: 32, offset: 16512)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !145, file: !99, line: 457, baseType: !3943, size: 1088, offset: 16576)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 1088, elements: !3895)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !145, file: !99, line: 458, baseType: !3943, size: 1088, offset: 17664)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !145, file: !99, line: 469, baseType: !275, size: 64, offset: 18752)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !145, file: !99, line: 471, baseType: !3947, size: 64, offset: 18816)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !99, line: 304, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !99, line: 478, baseType: !3950, size: 64, offset: 18880)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !99, line: 478, size: 64, elements: !3951)
!3951 = !{!3952, !3980}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !3950, file: !99, line: 479, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3955, line: 323, size: 1024, elements: !3956)
!3955 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/lizy2001/genbc/linux")
!3956 = !{!3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3979}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3954, file: !3955, line: 324, baseType: !129, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !3954, file: !3955, line: 325, baseType: !129, size: 32, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !3954, file: !3955, line: 326, baseType: !113, size: 32, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3954, file: !3955, line: 327, baseType: !110, size: 16, offset: 96)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !3954, file: !3955, line: 328, baseType: !110, size: 16, offset: 112)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !3954, file: !3955, line: 329, baseType: !110, size: 16, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !3954, file: !3955, line: 330, baseType: !110, size: 16, offset: 144)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3954, file: !3955, line: 331, baseType: !110, size: 16, offset: 160)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !3954, file: !3955, line: 332, baseType: !110, size: 16, offset: 176)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !3954, file: !3955, line: 333, baseType: !110, size: 16, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !3954, file: !3955, line: 334, baseType: !113, size: 32, offset: 224)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3954, file: !3955, line: 335, baseType: !105, size: 8, offset: 256)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !3954, file: !3955, line: 336, baseType: !105, size: 8, offset: 264)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !3954, file: !3955, line: 337, baseType: !110, size: 16, offset: 272)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3954, file: !3955, line: 338, baseType: !144, size: 64, offset: 320)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3954, file: !3955, line: 339, baseType: !144, size: 64, offset: 384)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3954, file: !3955, line: 340, baseType: !113, size: 32, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3954, file: !3955, line: 341, baseType: !105, size: 8, offset: 480)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3954, file: !3955, line: 342, baseType: !110, size: 16, offset: 496)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3954, file: !3955, line: 343, baseType: !110, size: 16, offset: 512)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !3954, file: !3955, line: 344, baseType: !3978, size: 384, offset: 576)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3886, size: 384, elements: !1567)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !3954, file: !3955, line: 345, baseType: !432, size: 8, offset: 960)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !3950, file: !99, line: 480, baseType: !144, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !145, file: !99, line: 482, baseType: !110, size: 16, offset: 18944)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !145, file: !99, line: 483, baseType: !105, size: 8, offset: 18960)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !145, file: !99, line: 497, baseType: !110, size: 16, offset: 18976)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !145, file: !99, line: 498, baseType: !2068, size: 64, offset: 19008)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !145, file: !99, line: 499, baseType: !269, size: 64, offset: 19072)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !145, file: !99, line: 500, baseType: !223, size: 64, offset: 19136)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !145, file: !99, line: 502, baseType: !122, size: 64, offset: 19200)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !131, file: !99, line: 611, baseType: !134, size: 128, offset: 512)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !131, file: !99, line: 613, baseType: !3990, size: 256, offset: 640)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3892, size: 256, elements: !1099)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !131, file: !99, line: 614, baseType: !134, size: 128, offset: 896)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !131, file: !99, line: 615, baseType: !3882, size: 512, offset: 1024)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !131, file: !99, line: 617, baseType: !3994, size: 64, offset: 1536)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !99, line: 731, size: 320, elements: !3996)
!3996 = !{!3997, !4001, !4005, !4009, !4013}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3995, file: !99, line: 732, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!129, !130}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3995, file: !99, line: 733, baseType: !4002, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{null, !130}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3995, file: !99, line: 734, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!115, !130, !7, !129}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3995, file: !99, line: 735, baseType: !4010, size: 64, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!129, !130, !7, !129, !129, !1357}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3995, file: !99, line: 736, baseType: !4014, size: 64, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !131, file: !99, line: 618, baseType: !4016, size: 64, offset: 1600)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !99, line: 537, flags: DIFlagFwdDecl)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !131, file: !99, line: 619, baseType: !115, size: 64, offset: 1664)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !131, file: !99, line: 620, baseType: !152, size: 64, offset: 1728)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !131, file: !99, line: 622, baseType: !109, size: 8, offset: 1792)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !131, file: !99, line: 623, baseType: !109, size: 8, offset: 1800)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !131, file: !99, line: 624, baseType: !109, size: 8, offset: 1808)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !131, file: !99, line: 625, baseType: !109, size: 8, offset: 1816)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !99, line: 630, baseType: !4025, size: 384, offset: 1824)
!4025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 384, elements: !4026)
!4026 = !{!4027}
!4027 = !DISubrange(count: 48)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !131, file: !99, line: 632, baseType: !112, size: 16, offset: 2208)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !131, file: !99, line: 633, baseType: !4030, size: 16, offset: 2224)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !99, line: 237, baseType: !112)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !131, file: !99, line: 634, baseType: !3409, size: 64, offset: 2240)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !131, file: !99, line: 635, baseType: !3410, size: 5568, offset: 2304)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !131, file: !99, line: 636, baseType: !289, size: 64, offset: 7872)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !131, file: !99, line: 637, baseType: !289, size: 64, offset: 7936)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !131, file: !99, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4036 = !DIGlobalVariableExpression(var: !4037, expr: !DIExpression())
!4037 = distinct !DIGlobalVariable(name: "pci_cfg_wait", scope: !2, file: !3, line: 204, type: !1425, isLocal: true, isDefinition: true)
!4038 = !{!"rsp"}
!4039 = !{i32 7, !"Dwarf Version", i32 4}
!4040 = !{i32 2, !"Debug Info Version", i32 3}
!4041 = !{i32 1, !"wchar_size", i32 2}
!4042 = !{i32 1, !"Code Model", i32 2}
!4043 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4044 = distinct !DISubprogram(name: "pci_bus_read_config_byte", scope: !3, file: !3, line: 63, type: !4045, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!129, !130, !7, !129, !4047}
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!4048 = !DILocalVariable(name: "bus", arg: 1, scope: !4044, file: !3, line: 63, type: !130)
!4049 = !DILocation(line: 63, column: 1, scope: !4044)
!4050 = !DILocalVariable(name: "devfn", arg: 2, scope: !4044, file: !3, line: 63, type: !7)
!4051 = !DILocalVariable(name: "pos", arg: 3, scope: !4044, file: !3, line: 63, type: !129)
!4052 = !DILocalVariable(name: "value", arg: 4, scope: !4044, file: !3, line: 63, type: !4047)
!4053 = !DILocalVariable(name: "res", scope: !4044, file: !3, line: 63, type: !129)
!4054 = !DILocalVariable(name: "flags", scope: !4044, file: !3, line: 63, type: !122)
!4055 = !DILocalVariable(name: "data", scope: !4044, file: !3, line: 63, type: !113)
!4056 = !DILocation(line: 63, column: 1, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 63, column: 1)
!4058 = !DILocation(line: 63, column: 1, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 63, column: 1)
!4060 = distinct !DISubprogram(name: "pci_bus_read_config_word", scope: !3, file: !3, line: 64, type: !4061, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!129, !130, !7, !129, !4063}
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!4064 = !DILocalVariable(name: "bus", arg: 1, scope: !4060, file: !3, line: 64, type: !130)
!4065 = !DILocation(line: 64, column: 1, scope: !4060)
!4066 = !DILocalVariable(name: "devfn", arg: 2, scope: !4060, file: !3, line: 64, type: !7)
!4067 = !DILocalVariable(name: "pos", arg: 3, scope: !4060, file: !3, line: 64, type: !129)
!4068 = !DILocalVariable(name: "value", arg: 4, scope: !4060, file: !3, line: 64, type: !4063)
!4069 = !DILocalVariable(name: "res", scope: !4060, file: !3, line: 64, type: !129)
!4070 = !DILocalVariable(name: "flags", scope: !4060, file: !3, line: 64, type: !122)
!4071 = !DILocalVariable(name: "data", scope: !4060, file: !3, line: 64, type: !113)
!4072 = !DILocation(line: 64, column: 1, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 64, column: 1)
!4074 = !DILocation(line: 64, column: 1, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 64, column: 1)
!4076 = !DILocation(line: 64, column: 1, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 64, column: 1)
!4078 = distinct !DISubprogram(name: "pci_bus_read_config_dword", scope: !3, file: !3, line: 65, type: !4079, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!129, !130, !7, !129, !1357}
!4081 = !DILocalVariable(name: "bus", arg: 1, scope: !4078, file: !3, line: 65, type: !130)
!4082 = !DILocation(line: 65, column: 1, scope: !4078)
!4083 = !DILocalVariable(name: "devfn", arg: 2, scope: !4078, file: !3, line: 65, type: !7)
!4084 = !DILocalVariable(name: "pos", arg: 3, scope: !4078, file: !3, line: 65, type: !129)
!4085 = !DILocalVariable(name: "value", arg: 4, scope: !4078, file: !3, line: 65, type: !1357)
!4086 = !DILocalVariable(name: "res", scope: !4078, file: !3, line: 65, type: !129)
!4087 = !DILocalVariable(name: "flags", scope: !4078, file: !3, line: 65, type: !122)
!4088 = !DILocalVariable(name: "data", scope: !4078, file: !3, line: 65, type: !113)
!4089 = !DILocation(line: 65, column: 1, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 65, column: 1)
!4091 = !DILocation(line: 65, column: 1, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 65, column: 1)
!4093 = !DILocation(line: 65, column: 1, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4078, file: !3, line: 65, column: 1)
!4095 = distinct !DISubprogram(name: "pci_bus_write_config_byte", scope: !3, file: !3, line: 66, type: !4096, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!129, !130, !7, !129, !105}
!4098 = !DILocalVariable(name: "bus", arg: 1, scope: !4095, file: !3, line: 66, type: !130)
!4099 = !DILocation(line: 66, column: 1, scope: !4095)
!4100 = !DILocalVariable(name: "devfn", arg: 2, scope: !4095, file: !3, line: 66, type: !7)
!4101 = !DILocalVariable(name: "pos", arg: 3, scope: !4095, file: !3, line: 66, type: !129)
!4102 = !DILocalVariable(name: "value", arg: 4, scope: !4095, file: !3, line: 66, type: !105)
!4103 = !DILocalVariable(name: "res", scope: !4095, file: !3, line: 66, type: !129)
!4104 = !DILocalVariable(name: "flags", scope: !4095, file: !3, line: 66, type: !122)
!4105 = !DILocation(line: 66, column: 1, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4095, file: !3, line: 66, column: 1)
!4107 = !DILocation(line: 66, column: 1, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4095, file: !3, line: 66, column: 1)
!4109 = distinct !DISubprogram(name: "pci_bus_write_config_word", scope: !3, file: !3, line: 67, type: !4110, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!129, !130, !7, !129, !110}
!4112 = !DILocalVariable(name: "bus", arg: 1, scope: !4109, file: !3, line: 67, type: !130)
!4113 = !DILocation(line: 67, column: 1, scope: !4109)
!4114 = !DILocalVariable(name: "devfn", arg: 2, scope: !4109, file: !3, line: 67, type: !7)
!4115 = !DILocalVariable(name: "pos", arg: 3, scope: !4109, file: !3, line: 67, type: !129)
!4116 = !DILocalVariable(name: "value", arg: 4, scope: !4109, file: !3, line: 67, type: !110)
!4117 = !DILocalVariable(name: "res", scope: !4109, file: !3, line: 67, type: !129)
!4118 = !DILocalVariable(name: "flags", scope: !4109, file: !3, line: 67, type: !122)
!4119 = !DILocation(line: 67, column: 1, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 67, column: 1)
!4121 = !DILocation(line: 67, column: 1, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 67, column: 1)
!4123 = !DILocation(line: 67, column: 1, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 67, column: 1)
!4125 = distinct !DISubprogram(name: "pci_bus_write_config_dword", scope: !3, file: !3, line: 68, type: !4126, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!129, !130, !7, !129, !113}
!4128 = !DILocalVariable(name: "bus", arg: 1, scope: !4125, file: !3, line: 68, type: !130)
!4129 = !DILocation(line: 68, column: 1, scope: !4125)
!4130 = !DILocalVariable(name: "devfn", arg: 2, scope: !4125, file: !3, line: 68, type: !7)
!4131 = !DILocalVariable(name: "pos", arg: 3, scope: !4125, file: !3, line: 68, type: !129)
!4132 = !DILocalVariable(name: "value", arg: 4, scope: !4125, file: !3, line: 68, type: !113)
!4133 = !DILocalVariable(name: "res", scope: !4125, file: !3, line: 68, type: !129)
!4134 = !DILocalVariable(name: "flags", scope: !4125, file: !3, line: 68, type: !122)
!4135 = !DILocation(line: 68, column: 1, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 68, column: 1)
!4137 = !DILocation(line: 68, column: 1, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 68, column: 1)
!4139 = !DILocation(line: 68, column: 1, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 68, column: 1)
!4141 = distinct !DISubprogram(name: "pci_generic_config_read", scope: !3, file: !3, line: 77, type: !4011, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4142 = !DILocalVariable(name: "bus", arg: 1, scope: !4141, file: !3, line: 77, type: !130)
!4143 = !DILocation(line: 77, column: 45, scope: !4141)
!4144 = !DILocalVariable(name: "devfn", arg: 2, scope: !4141, file: !3, line: 77, type: !7)
!4145 = !DILocation(line: 77, column: 63, scope: !4141)
!4146 = !DILocalVariable(name: "where", arg: 3, scope: !4141, file: !3, line: 78, type: !129)
!4147 = !DILocation(line: 78, column: 12, scope: !4141)
!4148 = !DILocalVariable(name: "size", arg: 4, scope: !4141, file: !3, line: 78, type: !129)
!4149 = !DILocation(line: 78, column: 23, scope: !4141)
!4150 = !DILocalVariable(name: "val", arg: 5, scope: !4141, file: !3, line: 78, type: !1357)
!4151 = !DILocation(line: 78, column: 34, scope: !4141)
!4152 = !DILocalVariable(name: "addr", scope: !4141, file: !3, line: 80, type: !115)
!4153 = !DILocation(line: 80, column: 16, scope: !4141)
!4154 = !DILocation(line: 82, column: 9, scope: !4141)
!4155 = !DILocation(line: 82, column: 14, scope: !4141)
!4156 = !DILocation(line: 82, column: 19, scope: !4141)
!4157 = !DILocation(line: 82, column: 27, scope: !4141)
!4158 = !DILocation(line: 82, column: 32, scope: !4141)
!4159 = !DILocation(line: 82, column: 39, scope: !4141)
!4160 = !DILocation(line: 82, column: 7, scope: !4141)
!4161 = !DILocation(line: 83, column: 7, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 83, column: 6)
!4163 = !DILocation(line: 83, column: 6, scope: !4141)
!4164 = !DILocation(line: 84, column: 4, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 83, column: 13)
!4166 = !DILocation(line: 84, column: 8, scope: !4165)
!4167 = !DILocation(line: 85, column: 3, scope: !4165)
!4168 = !DILocation(line: 88, column: 6, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 88, column: 6)
!4170 = !DILocation(line: 88, column: 11, scope: !4169)
!4171 = !DILocation(line: 88, column: 6, scope: !4141)
!4172 = !DILocation(line: 89, column: 16, scope: !4169)
!4173 = !DILocation(line: 89, column: 10, scope: !4169)
!4174 = !DILocation(line: 89, column: 4, scope: !4169)
!4175 = !DILocation(line: 89, column: 8, scope: !4169)
!4176 = !DILocation(line: 89, column: 3, scope: !4169)
!4177 = !DILocation(line: 90, column: 11, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 90, column: 11)
!4179 = !DILocation(line: 90, column: 16, scope: !4178)
!4180 = !DILocation(line: 90, column: 11, scope: !4169)
!4181 = !DILocation(line: 91, column: 16, scope: !4178)
!4182 = !DILocation(line: 91, column: 10, scope: !4178)
!4183 = !DILocation(line: 91, column: 4, scope: !4178)
!4184 = !DILocation(line: 91, column: 8, scope: !4178)
!4185 = !DILocation(line: 91, column: 3, scope: !4178)
!4186 = !DILocation(line: 93, column: 16, scope: !4178)
!4187 = !DILocation(line: 93, column: 10, scope: !4178)
!4188 = !DILocation(line: 93, column: 4, scope: !4178)
!4189 = !DILocation(line: 93, column: 8, scope: !4178)
!4190 = !DILocation(line: 95, column: 2, scope: !4141)
!4191 = !DILocation(line: 96, column: 1, scope: !4141)
!4192 = distinct !DISubprogram(name: "readb", scope: !4193, file: !4193, line: 57, type: !4194, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4193 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!109, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4198)
!4198 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4199 = !DILocalVariable(name: "addr", arg: 1, scope: !4192, file: !4193, line: 57, type: !4196)
!4200 = !DILocation(line: 57, column: 1, scope: !4192)
!4201 = !DILocalVariable(name: "ret", scope: !4192, file: !4193, line: 57, type: !109)
!4202 = !{i32 -2143588106}
!4203 = distinct !DISubprogram(name: "readw", scope: !4193, file: !4193, line: 58, type: !4204, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!112, !4196}
!4206 = !DILocalVariable(name: "addr", arg: 1, scope: !4203, file: !4193, line: 58, type: !4196)
!4207 = !DILocation(line: 58, column: 1, scope: !4203)
!4208 = !DILocalVariable(name: "ret", scope: !4203, file: !4193, line: 58, type: !112)
!4209 = !{i32 -2143587692}
!4210 = distinct !DISubprogram(name: "readl", scope: !4193, file: !4193, line: 59, type: !4211, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!7, !4196}
!4213 = !DILocalVariable(name: "addr", arg: 1, scope: !4210, file: !4193, line: 59, type: !4196)
!4214 = !DILocation(line: 59, column: 1, scope: !4210)
!4215 = !DILocalVariable(name: "ret", scope: !4210, file: !4193, line: 59, type: !7)
!4216 = !{i32 -2143587275}
!4217 = distinct !DISubprogram(name: "pci_generic_config_write", scope: !3, file: !3, line: 99, type: !127, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4218 = !DILocalVariable(name: "bus", arg: 1, scope: !4217, file: !3, line: 99, type: !130)
!4219 = !DILocation(line: 99, column: 46, scope: !4217)
!4220 = !DILocalVariable(name: "devfn", arg: 2, scope: !4217, file: !3, line: 99, type: !7)
!4221 = !DILocation(line: 99, column: 64, scope: !4217)
!4222 = !DILocalVariable(name: "where", arg: 3, scope: !4217, file: !3, line: 100, type: !129)
!4223 = !DILocation(line: 100, column: 13, scope: !4217)
!4224 = !DILocalVariable(name: "size", arg: 4, scope: !4217, file: !3, line: 100, type: !129)
!4225 = !DILocation(line: 100, column: 24, scope: !4217)
!4226 = !DILocalVariable(name: "val", arg: 5, scope: !4217, file: !3, line: 100, type: !113)
!4227 = !DILocation(line: 100, column: 34, scope: !4217)
!4228 = !DILocalVariable(name: "addr", scope: !4217, file: !3, line: 102, type: !115)
!4229 = !DILocation(line: 102, column: 16, scope: !4217)
!4230 = !DILocation(line: 104, column: 9, scope: !4217)
!4231 = !DILocation(line: 104, column: 14, scope: !4217)
!4232 = !DILocation(line: 104, column: 19, scope: !4217)
!4233 = !DILocation(line: 104, column: 27, scope: !4217)
!4234 = !DILocation(line: 104, column: 32, scope: !4217)
!4235 = !DILocation(line: 104, column: 39, scope: !4217)
!4236 = !DILocation(line: 104, column: 7, scope: !4217)
!4237 = !DILocation(line: 105, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 105, column: 6)
!4239 = !DILocation(line: 105, column: 6, scope: !4217)
!4240 = !DILocation(line: 106, column: 3, scope: !4238)
!4241 = !DILocation(line: 108, column: 6, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 108, column: 6)
!4243 = !DILocation(line: 108, column: 11, scope: !4242)
!4244 = !DILocation(line: 108, column: 6, scope: !4217)
!4245 = !DILocation(line: 109, column: 10, scope: !4242)
!4246 = !DILocation(line: 109, column: 15, scope: !4242)
!4247 = !DILocation(line: 109, column: 3, scope: !4242)
!4248 = !DILocation(line: 110, column: 11, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4242, file: !3, line: 110, column: 11)
!4250 = !DILocation(line: 110, column: 16, scope: !4249)
!4251 = !DILocation(line: 110, column: 11, scope: !4242)
!4252 = !DILocation(line: 111, column: 10, scope: !4249)
!4253 = !DILocation(line: 111, column: 15, scope: !4249)
!4254 = !DILocation(line: 111, column: 3, scope: !4249)
!4255 = !DILocation(line: 113, column: 10, scope: !4249)
!4256 = !DILocation(line: 113, column: 15, scope: !4249)
!4257 = !DILocation(line: 113, column: 3, scope: !4249)
!4258 = !DILocation(line: 115, column: 2, scope: !4217)
!4259 = !DILocation(line: 116, column: 1, scope: !4217)
!4260 = distinct !DISubprogram(name: "writeb", scope: !4193, file: !4193, line: 65, type: !4261, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{null, !109, !4263}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4264 = !DILocalVariable(name: "val", arg: 1, scope: !4260, file: !4193, line: 65, type: !109)
!4265 = !DILocation(line: 65, column: 1, scope: !4260)
!4266 = !DILocalVariable(name: "addr", arg: 2, scope: !4260, file: !4193, line: 65, type: !4263)
!4267 = !{i32 -2143585652}
!4268 = distinct !DISubprogram(name: "writew", scope: !4193, file: !4193, line: 66, type: !4269, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !112, !4263}
!4271 = !DILocalVariable(name: "val", arg: 1, scope: !4268, file: !4193, line: 66, type: !112)
!4272 = !DILocation(line: 66, column: 1, scope: !4268)
!4273 = !DILocalVariable(name: "addr", arg: 2, scope: !4268, file: !4193, line: 66, type: !4263)
!4274 = !{i32 -2143585268}
!4275 = distinct !DISubprogram(name: "writel", scope: !4193, file: !4193, line: 67, type: !4276, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{null, !7, !4263}
!4278 = !DILocalVariable(name: "val", arg: 1, scope: !4275, file: !4193, line: 67, type: !7)
!4279 = !DILocation(line: 67, column: 1, scope: !4275)
!4280 = !DILocalVariable(name: "addr", arg: 2, scope: !4275, file: !4193, line: 67, type: !4263)
!4281 = !{i32 -2143584882}
!4282 = distinct !DISubprogram(name: "pci_generic_config_read32", scope: !3, file: !3, line: 119, type: !4011, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4283 = !DILocalVariable(name: "bus", arg: 1, scope: !4282, file: !3, line: 119, type: !130)
!4284 = !DILocation(line: 119, column: 47, scope: !4282)
!4285 = !DILocalVariable(name: "devfn", arg: 2, scope: !4282, file: !3, line: 119, type: !7)
!4286 = !DILocation(line: 119, column: 65, scope: !4282)
!4287 = !DILocalVariable(name: "where", arg: 3, scope: !4282, file: !3, line: 120, type: !129)
!4288 = !DILocation(line: 120, column: 14, scope: !4282)
!4289 = !DILocalVariable(name: "size", arg: 4, scope: !4282, file: !3, line: 120, type: !129)
!4290 = !DILocation(line: 120, column: 25, scope: !4282)
!4291 = !DILocalVariable(name: "val", arg: 5, scope: !4282, file: !3, line: 120, type: !1357)
!4292 = !DILocation(line: 120, column: 36, scope: !4282)
!4293 = !DILocalVariable(name: "addr", scope: !4282, file: !3, line: 122, type: !115)
!4294 = !DILocation(line: 122, column: 16, scope: !4282)
!4295 = !DILocation(line: 124, column: 9, scope: !4282)
!4296 = !DILocation(line: 124, column: 14, scope: !4282)
!4297 = !DILocation(line: 124, column: 19, scope: !4282)
!4298 = !DILocation(line: 124, column: 27, scope: !4282)
!4299 = !DILocation(line: 124, column: 32, scope: !4282)
!4300 = !DILocation(line: 124, column: 39, scope: !4282)
!4301 = !DILocation(line: 124, column: 45, scope: !4282)
!4302 = !DILocation(line: 124, column: 7, scope: !4282)
!4303 = !DILocation(line: 125, column: 7, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 125, column: 6)
!4305 = !DILocation(line: 125, column: 6, scope: !4282)
!4306 = !DILocation(line: 126, column: 4, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 125, column: 13)
!4308 = !DILocation(line: 126, column: 8, scope: !4307)
!4309 = !DILocation(line: 127, column: 3, scope: !4307)
!4310 = !DILocation(line: 130, column: 15, scope: !4282)
!4311 = !DILocation(line: 130, column: 9, scope: !4282)
!4312 = !DILocation(line: 130, column: 3, scope: !4282)
!4313 = !DILocation(line: 130, column: 7, scope: !4282)
!4314 = !DILocation(line: 132, column: 6, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 132, column: 6)
!4316 = !DILocation(line: 132, column: 11, scope: !4315)
!4317 = !DILocation(line: 132, column: 6, scope: !4282)
!4318 = !DILocation(line: 133, column: 12, scope: !4315)
!4319 = !DILocation(line: 133, column: 11, scope: !4315)
!4320 = !DILocation(line: 133, column: 25, scope: !4315)
!4321 = !DILocation(line: 133, column: 31, scope: !4315)
!4322 = !DILocation(line: 133, column: 22, scope: !4315)
!4323 = !DILocation(line: 133, column: 16, scope: !4315)
!4324 = !DILocation(line: 133, column: 48, scope: !4315)
!4325 = !DILocation(line: 133, column: 53, scope: !4315)
!4326 = !DILocation(line: 133, column: 44, scope: !4315)
!4327 = !DILocation(line: 133, column: 59, scope: !4315)
!4328 = !DILocation(line: 133, column: 38, scope: !4315)
!4329 = !DILocation(line: 133, column: 4, scope: !4315)
!4330 = !DILocation(line: 133, column: 8, scope: !4315)
!4331 = !DILocation(line: 133, column: 3, scope: !4315)
!4332 = !DILocation(line: 135, column: 2, scope: !4282)
!4333 = !DILocation(line: 136, column: 1, scope: !4282)
!4334 = !DILocalVariable(name: "bus", arg: 1, scope: !126, file: !3, line: 139, type: !130)
!4335 = !DILocation(line: 139, column: 48, scope: !126)
!4336 = !DILocalVariable(name: "devfn", arg: 2, scope: !126, file: !3, line: 139, type: !7)
!4337 = !DILocation(line: 139, column: 66, scope: !126)
!4338 = !DILocalVariable(name: "where", arg: 3, scope: !126, file: !3, line: 140, type: !129)
!4339 = !DILocation(line: 140, column: 15, scope: !126)
!4340 = !DILocalVariable(name: "size", arg: 4, scope: !126, file: !3, line: 140, type: !129)
!4341 = !DILocation(line: 140, column: 26, scope: !126)
!4342 = !DILocalVariable(name: "val", arg: 5, scope: !126, file: !3, line: 140, type: !113)
!4343 = !DILocation(line: 140, column: 36, scope: !126)
!4344 = !DILocalVariable(name: "addr", scope: !126, file: !3, line: 142, type: !115)
!4345 = !DILocation(line: 142, column: 16, scope: !126)
!4346 = !DILocalVariable(name: "mask", scope: !126, file: !3, line: 143, type: !113)
!4347 = !DILocation(line: 143, column: 6, scope: !126)
!4348 = !DILocalVariable(name: "tmp", scope: !126, file: !3, line: 143, type: !113)
!4349 = !DILocation(line: 143, column: 12, scope: !126)
!4350 = !DILocation(line: 145, column: 9, scope: !126)
!4351 = !DILocation(line: 145, column: 14, scope: !126)
!4352 = !DILocation(line: 145, column: 19, scope: !126)
!4353 = !DILocation(line: 145, column: 27, scope: !126)
!4354 = !DILocation(line: 145, column: 32, scope: !126)
!4355 = !DILocation(line: 145, column: 39, scope: !126)
!4356 = !DILocation(line: 145, column: 45, scope: !126)
!4357 = !DILocation(line: 145, column: 7, scope: !126)
!4358 = !DILocation(line: 146, column: 7, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !126, file: !3, line: 146, column: 6)
!4360 = !DILocation(line: 146, column: 6, scope: !126)
!4361 = !DILocation(line: 147, column: 3, scope: !4359)
!4362 = !DILocation(line: 149, column: 6, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !126, file: !3, line: 149, column: 6)
!4364 = !DILocation(line: 149, column: 11, scope: !4363)
!4365 = !DILocation(line: 149, column: 6, scope: !126)
!4366 = !DILocation(line: 150, column: 10, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 149, column: 17)
!4368 = !DILocation(line: 150, column: 15, scope: !4367)
!4369 = !DILocation(line: 150, column: 3, scope: !4367)
!4370 = !DILocation(line: 151, column: 3, scope: !4367)
!4371 = !DILocation(line: 163, column: 2, scope: !126)
!4372 = !DILocation(line: 163, column: 2, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 163, column: 2)
!4374 = distinct !DILexicalBlock(scope: !126, file: !3, line: 163, column: 2)
!4375 = !DILocation(line: 163, column: 2, scope: !4374)
!4376 = !DILocation(line: 167, column: 19, scope: !126)
!4377 = !DILocation(line: 167, column: 24, scope: !126)
!4378 = !DILocation(line: 167, column: 15, scope: !126)
!4379 = !DILocation(line: 167, column: 30, scope: !126)
!4380 = !DILocation(line: 167, column: 40, scope: !126)
!4381 = !DILocation(line: 167, column: 46, scope: !126)
!4382 = !DILocation(line: 167, column: 53, scope: !126)
!4383 = !DILocation(line: 167, column: 35, scope: !126)
!4384 = !DILocation(line: 167, column: 9, scope: !126)
!4385 = !DILocation(line: 167, column: 7, scope: !126)
!4386 = !DILocation(line: 168, column: 14, scope: !126)
!4387 = !DILocation(line: 168, column: 8, scope: !126)
!4388 = !DILocation(line: 168, column: 22, scope: !126)
!4389 = !DILocation(line: 168, column: 20, scope: !126)
!4390 = !DILocation(line: 168, column: 6, scope: !126)
!4391 = !DILocation(line: 169, column: 9, scope: !126)
!4392 = !DILocation(line: 169, column: 18, scope: !126)
!4393 = !DILocation(line: 169, column: 24, scope: !126)
!4394 = !DILocation(line: 169, column: 31, scope: !126)
!4395 = !DILocation(line: 169, column: 13, scope: !126)
!4396 = !DILocation(line: 169, column: 6, scope: !126)
!4397 = !DILocation(line: 170, column: 9, scope: !126)
!4398 = !DILocation(line: 170, column: 14, scope: !126)
!4399 = !DILocation(line: 170, column: 2, scope: !126)
!4400 = !DILocation(line: 172, column: 2, scope: !126)
!4401 = !DILocation(line: 173, column: 1, scope: !126)
!4402 = distinct !DISubprogram(name: "pci_domain_nr", scope: !4403, file: !4403, line: 44, type: !3999, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4403 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/lizy2001/genbc/linux")
!4404 = !DILocalVariable(name: "bus", arg: 1, scope: !4402, file: !4403, line: 44, type: !130)
!4405 = !DILocation(line: 44, column: 49, scope: !4402)
!4406 = !DILocation(line: 46, column: 24, scope: !4402)
!4407 = !DILocation(line: 46, column: 9, scope: !4402)
!4408 = !DILocation(line: 46, column: 30, scope: !4402)
!4409 = !DILocation(line: 46, column: 2, scope: !4402)
!4410 = distinct !DISubprogram(name: "pci_bus_set_ops", scope: !3, file: !3, line: 183, type: !4411, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!3994, !130, !3994}
!4413 = !DILocalVariable(name: "bus", arg: 1, scope: !4410, file: !3, line: 183, type: !130)
!4414 = !DILocation(line: 183, column: 49, scope: !4410)
!4415 = !DILocalVariable(name: "ops", arg: 2, scope: !4410, file: !3, line: 183, type: !3994)
!4416 = !DILocation(line: 183, column: 70, scope: !4410)
!4417 = !DILocalVariable(name: "old_ops", scope: !4410, file: !3, line: 185, type: !3994)
!4418 = !DILocation(line: 185, column: 18, scope: !4410)
!4419 = !DILocalVariable(name: "flags", scope: !4410, file: !3, line: 186, type: !122)
!4420 = !DILocation(line: 186, column: 16, scope: !4410)
!4421 = !DILocation(line: 188, column: 2, scope: !4410)
!4422 = !DILocalVariable(name: "__dummy", scope: !4423, file: !3, line: 188, type: !122)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 188, column: 2)
!4424 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 188, column: 2)
!4425 = !DILocation(line: 188, column: 2, scope: !4423)
!4426 = !DILocalVariable(name: "__dummy2", scope: !4423, file: !3, line: 188, type: !122)
!4427 = !DILocation(line: 188, column: 2, scope: !4424)
!4428 = !DILocation(line: 188, column: 2, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4424, file: !3, line: 188, column: 2)
!4430 = !DILocation(line: 188, column: 2, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 188, column: 2)
!4432 = !DILocalVariable(name: "__dummy", scope: !4433, file: !3, line: 188, type: !122)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 188, column: 2)
!4434 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 188, column: 2)
!4435 = !DILocation(line: 188, column: 2, scope: !4433)
!4436 = !DILocalVariable(name: "__dummy2", scope: !4433, file: !3, line: 188, type: !122)
!4437 = !DILocation(line: 188, column: 2, scope: !4434)
!4438 = !DILocation(line: 188, column: 2, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 188, column: 2)
!4440 = !{i32 -2141706034}
!4441 = !DILocation(line: 188, column: 2, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 188, column: 2)
!4443 = !DILocation(line: 189, column: 12, scope: !4410)
!4444 = !DILocation(line: 189, column: 17, scope: !4410)
!4445 = !DILocation(line: 189, column: 10, scope: !4410)
!4446 = !DILocation(line: 190, column: 13, scope: !4410)
!4447 = !DILocation(line: 190, column: 2, scope: !4410)
!4448 = !DILocation(line: 190, column: 7, scope: !4410)
!4449 = !DILocation(line: 190, column: 11, scope: !4410)
!4450 = !DILocation(line: 191, column: 2, scope: !4410)
!4451 = !DILocalVariable(name: "__dummy", scope: !4452, file: !3, line: 191, type: !122)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 191, column: 2)
!4453 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 191, column: 2)
!4454 = !DILocation(line: 191, column: 2, scope: !4452)
!4455 = !DILocalVariable(name: "__dummy2", scope: !4452, file: !3, line: 191, type: !122)
!4456 = !DILocation(line: 191, column: 2, scope: !4453)
!4457 = !DILocation(line: 191, column: 2, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 191, column: 2)
!4459 = !DILocation(line: 191, column: 2, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 191, column: 2)
!4461 = !DILocalVariable(name: "__dummy", scope: !4462, file: !3, line: 191, type: !122)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 191, column: 2)
!4463 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 191, column: 2)
!4464 = !DILocation(line: 191, column: 2, scope: !4462)
!4465 = !DILocalVariable(name: "__dummy2", scope: !4462, file: !3, line: 191, type: !122)
!4466 = !DILocation(line: 191, column: 2, scope: !4463)
!4467 = !DILocation(line: 191, column: 2, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 191, column: 2)
!4469 = !{i32 -2141705215}
!4470 = !DILocation(line: 191, column: 2, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 191, column: 2)
!4472 = !DILocation(line: 192, column: 9, scope: !4410)
!4473 = !DILocation(line: 192, column: 2, scope: !4410)
!4474 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4475, file: !4475, line: 666, type: !4476, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4475 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!122}
!4478 = !DILocalVariable(name: "f", scope: !4474, file: !4475, line: 668, type: !122)
!4479 = !DILocation(line: 668, column: 16, scope: !4474)
!4480 = !DILocation(line: 670, column: 6, scope: !4474)
!4481 = !DILocation(line: 670, column: 4, scope: !4474)
!4482 = !DILocation(line: 671, column: 2, scope: !4474)
!4483 = !DILocation(line: 672, column: 9, scope: !4474)
!4484 = !DILocation(line: 672, column: 2, scope: !4474)
!4485 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4475, file: !4475, line: 651, type: !4486, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{null, !122}
!4488 = !DILocalVariable(name: "f", arg: 1, scope: !4485, file: !4475, line: 651, type: !122)
!4489 = !DILocation(line: 651, column: 65, scope: !4485)
!4490 = !DILocalVariable(name: "__edi", scope: !4491, file: !4475, line: 653, type: !122)
!4491 = distinct !DILexicalBlock(scope: !4485, file: !4475, line: 653, column: 2)
!4492 = !DILocation(line: 653, column: 2, scope: !4491)
!4493 = !DILocalVariable(name: "__esi", scope: !4491, file: !4475, line: 653, type: !122)
!4494 = !DILocalVariable(name: "__edx", scope: !4491, file: !4475, line: 653, type: !122)
!4495 = !DILocalVariable(name: "__ecx", scope: !4491, file: !4475, line: 653, type: !122)
!4496 = !DILocalVariable(name: "__eax", scope: !4491, file: !4475, line: 653, type: !122)
!4497 = !{i32 -2145620029, i32 -2145619279, i32 -2145619045, i32 -2145618994, i32 -2145618966, i32 -2145618941, i32 -2145619257, i32 -2145619244, i32 -2145618806, i32 -2145618687, i32 -2145619152, i32 -2145619125, i32 -2145619097, i32 -2145619067}
!4498 = !DILocation(line: 654, column: 1, scope: !4485)
!4499 = distinct !DISubprogram(name: "pci_user_read_config_byte", scope: !3, file: !3, line: 254, type: !4500, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!129, !144, !129, !4047}
!4502 = !DILocalVariable(name: "dev", arg: 1, scope: !4499, file: !3, line: 254, type: !144)
!4503 = !DILocation(line: 254, column: 1, scope: !4499)
!4504 = !DILocalVariable(name: "pos", arg: 2, scope: !4499, file: !3, line: 254, type: !129)
!4505 = !DILocalVariable(name: "val", arg: 3, scope: !4499, file: !3, line: 254, type: !4047)
!4506 = !DILocalVariable(name: "ret", scope: !4499, file: !3, line: 254, type: !129)
!4507 = !DILocalVariable(name: "data", scope: !4499, file: !3, line: 254, type: !113)
!4508 = !DILocation(line: 254, column: 1, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 254, column: 1)
!4510 = !DILocation(line: 254, column: 1, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 254, column: 1)
!4512 = !DILocation(line: 254, column: 1, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 254, column: 1)
!4514 = !{i32 -2141701564}
!4515 = !DILocation(line: 254, column: 1, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 254, column: 1)
!4517 = !DILocation(line: 254, column: 1, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 254, column: 1)
!4519 = !DILocation(line: 254, column: 1, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 254, column: 1)
!4521 = !DILocation(line: 254, column: 1, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 254, column: 1)
!4523 = !DILocation(line: 254, column: 1, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 254, column: 1)
!4525 = !{i32 -2141701135}
!4526 = !DILocation(line: 254, column: 1, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 254, column: 1)
!4528 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4475, file: !4475, line: 656, type: !1821, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4529 = !DILocalVariable(name: "__edi", scope: !4530, file: !4475, line: 658, type: !122)
!4530 = distinct !DILexicalBlock(scope: !4528, file: !4475, line: 658, column: 2)
!4531 = !DILocation(line: 658, column: 2, scope: !4530)
!4532 = !DILocalVariable(name: "__esi", scope: !4530, file: !4475, line: 658, type: !122)
!4533 = !DILocalVariable(name: "__edx", scope: !4530, file: !4475, line: 658, type: !122)
!4534 = !DILocalVariable(name: "__ecx", scope: !4530, file: !4475, line: 658, type: !122)
!4535 = !DILocalVariable(name: "__eax", scope: !4530, file: !4475, line: 658, type: !122)
!4536 = !{i32 -2145617402, i32 -2145616670, i32 -2145616436, i32 -2145616385, i32 -2145616357, i32 -2145616332, i32 -2145616648, i32 -2145616635, i32 -2145616197, i32 -2145616078, i32 -2145616543, i32 -2145616516, i32 -2145616488, i32 -2145616458}
!4537 = !DILocation(line: 659, column: 1, scope: !4528)
!4538 = distinct !DISubprogram(name: "pci_wait_cfg", scope: !3, file: !3, line: 206, type: !3358, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4539 = !DILocalVariable(name: "dev", arg: 1, scope: !4538, file: !3, line: 206, type: !144)
!4540 = !DILocation(line: 206, column: 51, scope: !4538)
!4541 = !DILocation(line: 209, column: 2, scope: !4538)
!4542 = !DILocation(line: 210, column: 3, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4538, file: !3, line: 209, column: 5)
!4544 = !DILocation(line: 210, column: 3, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 210, column: 3)
!4546 = !DILocation(line: 210, column: 3, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 210, column: 3)
!4548 = !DILocation(line: 210, column: 3, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 210, column: 3)
!4550 = !{i32 -2141704197}
!4551 = !DILocation(line: 210, column: 3, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 210, column: 3)
!4553 = !DILocation(line: 211, column: 3, scope: !4543)
!4554 = !DILocation(line: 211, column: 3, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 211, column: 3)
!4556 = !DILocation(line: 211, column: 3, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 211, column: 3)
!4558 = !DILocation(line: 211, column: 3, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 211, column: 3)
!4560 = !DILocation(line: 211, column: 3, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 211, column: 3)
!4562 = !DILocalVariable(name: "__wq_entry", scope: !4563, file: !3, line: 211, type: !4564)
!4563 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 211, column: 3)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1424, line: 29, size: 320, elements: !4565)
!4565 = !{!4566, !4567, !4568, !4574}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4564, file: !1424, line: 30, baseType: !7, size: 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4564, file: !1424, line: 31, baseType: !115, size: 64, offset: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4564, file: !1424, line: 32, baseType: !4569, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1424, line: 16, baseType: !4570)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!129, !4573, !7, !129, !115}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4564, file: !1424, line: 33, baseType: !134, size: 128, offset: 192)
!4575 = !DILocation(line: 211, column: 3, scope: !4563)
!4576 = !DILocalVariable(name: "__ret", scope: !4563, file: !3, line: 211, type: !258)
!4577 = !DILocalVariable(name: "__int", scope: !4578, file: !3, line: 211, type: !258)
!4578 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 211, column: 3)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 211, column: 3)
!4580 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 211, column: 3)
!4581 = !DILocation(line: 211, column: 3, scope: !4578)
!4582 = !DILocation(line: 211, column: 3, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 211, column: 3)
!4584 = !DILocation(line: 211, column: 3, scope: !4579)
!4585 = distinct !{!4585, !4586, !4586}
!4586 = !DILocation(line: 211, column: 3, scope: !4580)
!4587 = !DILabel(scope: !4563, name: "__out", file: !3, line: 211)
!4588 = !DILocation(line: 212, column: 3, scope: !4543)
!4589 = !DILocation(line: 212, column: 3, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 212, column: 3)
!4591 = !DILocation(line: 212, column: 3, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 212, column: 3)
!4593 = !DILocation(line: 212, column: 3, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 212, column: 3)
!4595 = !{i32 -2141702587}
!4596 = !DILocation(line: 212, column: 3, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 212, column: 3)
!4598 = !DILocation(line: 213, column: 2, scope: !4543)
!4599 = !DILocation(line: 213, column: 11, scope: !4538)
!4600 = !DILocation(line: 213, column: 16, scope: !4538)
!4601 = distinct !{!4601, !4541, !4602}
!4602 = !DILocation(line: 213, column: 32, scope: !4538)
!4603 = !DILocation(line: 214, column: 1, scope: !4538)
!4604 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4475, file: !4475, line: 661, type: !1821, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4605 = !DILocalVariable(name: "__edi", scope: !4606, file: !4475, line: 663, type: !122)
!4606 = distinct !DILexicalBlock(scope: !4604, file: !4475, line: 663, column: 2)
!4607 = !DILocation(line: 663, column: 2, scope: !4606)
!4608 = !DILocalVariable(name: "__esi", scope: !4606, file: !4475, line: 663, type: !122)
!4609 = !DILocalVariable(name: "__edx", scope: !4606, file: !4475, line: 663, type: !122)
!4610 = !DILocalVariable(name: "__ecx", scope: !4606, file: !4475, line: 663, type: !122)
!4611 = !DILocalVariable(name: "__eax", scope: !4606, file: !4475, line: 663, type: !122)
!4612 = !{i32 -2145614818, i32 -2145614088, i32 -2145613854, i32 -2145613803, i32 -2145613775, i32 -2145613750, i32 -2145614066, i32 -2145614053, i32 -2145613615, i32 -2145613496, i32 -2145613961, i32 -2145613934, i32 -2145613906, i32 -2145613876}
!4613 = !DILocation(line: 664, column: 1, scope: !4604)
!4614 = distinct !DISubprogram(name: "pcibios_err_to_errno", scope: !99, file: !99, line: 706, type: !2995, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4615 = !DILocalVariable(name: "err", arg: 1, scope: !4614, file: !99, line: 706, type: !129)
!4616 = !DILocation(line: 706, column: 44, scope: !4614)
!4617 = !DILocation(line: 708, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !99, line: 708, column: 6)
!4619 = !DILocation(line: 708, column: 10, scope: !4618)
!4620 = !DILocation(line: 708, column: 6, scope: !4614)
!4621 = !DILocation(line: 709, column: 10, scope: !4618)
!4622 = !DILocation(line: 709, column: 3, scope: !4618)
!4623 = !DILocation(line: 711, column: 10, scope: !4614)
!4624 = !DILocation(line: 711, column: 2, scope: !4614)
!4625 = !DILocation(line: 713, column: 3, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4614, file: !99, line: 711, column: 15)
!4627 = !DILocation(line: 715, column: 3, scope: !4626)
!4628 = !DILocation(line: 717, column: 3, scope: !4626)
!4629 = !DILocation(line: 719, column: 3, scope: !4626)
!4630 = !DILocation(line: 721, column: 3, scope: !4626)
!4631 = !DILocation(line: 723, column: 3, scope: !4626)
!4632 = !DILocation(line: 726, column: 2, scope: !4614)
!4633 = !DILocation(line: 727, column: 1, scope: !4614)
!4634 = distinct !DISubprogram(name: "pci_user_read_config_word", scope: !3, file: !3, line: 255, type: !4635, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!129, !144, !129, !4063}
!4637 = !DILocalVariable(name: "dev", arg: 1, scope: !4634, file: !3, line: 255, type: !144)
!4638 = !DILocation(line: 255, column: 1, scope: !4634)
!4639 = !DILocalVariable(name: "pos", arg: 2, scope: !4634, file: !3, line: 255, type: !129)
!4640 = !DILocalVariable(name: "val", arg: 3, scope: !4634, file: !3, line: 255, type: !4063)
!4641 = !DILocalVariable(name: "ret", scope: !4634, file: !3, line: 255, type: !129)
!4642 = !DILocalVariable(name: "data", scope: !4634, file: !3, line: 255, type: !113)
!4643 = !DILocation(line: 255, column: 1, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 255, column: 1)
!4645 = !DILocation(line: 255, column: 1, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 255, column: 1)
!4647 = !DILocation(line: 255, column: 1, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 255, column: 1)
!4649 = !DILocation(line: 255, column: 1, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 255, column: 1)
!4651 = !{i32 -2141699958}
!4652 = !DILocation(line: 255, column: 1, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 255, column: 1)
!4654 = !DILocation(line: 255, column: 1, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 255, column: 1)
!4656 = !DILocation(line: 255, column: 1, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 255, column: 1)
!4658 = !DILocation(line: 255, column: 1, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 255, column: 1)
!4660 = !DILocation(line: 255, column: 1, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 255, column: 1)
!4662 = !{i32 -2141699529}
!4663 = !DILocation(line: 255, column: 1, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 255, column: 1)
!4665 = distinct !DISubprogram(name: "pci_user_read_config_dword", scope: !3, file: !3, line: 256, type: !4666, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!129, !144, !129, !1357}
!4668 = !DILocalVariable(name: "dev", arg: 1, scope: !4665, file: !3, line: 256, type: !144)
!4669 = !DILocation(line: 256, column: 1, scope: !4665)
!4670 = !DILocalVariable(name: "pos", arg: 2, scope: !4665, file: !3, line: 256, type: !129)
!4671 = !DILocalVariable(name: "val", arg: 3, scope: !4665, file: !3, line: 256, type: !1357)
!4672 = !DILocalVariable(name: "ret", scope: !4665, file: !3, line: 256, type: !129)
!4673 = !DILocalVariable(name: "data", scope: !4665, file: !3, line: 256, type: !113)
!4674 = !DILocation(line: 256, column: 1, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 256, column: 1)
!4676 = !DILocation(line: 256, column: 1, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 256, column: 1)
!4678 = !DILocation(line: 256, column: 1, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 256, column: 1)
!4680 = !DILocation(line: 256, column: 1, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 256, column: 1)
!4682 = !{i32 -2141698347}
!4683 = !DILocation(line: 256, column: 1, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 256, column: 1)
!4685 = !DILocation(line: 256, column: 1, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 256, column: 1)
!4687 = !DILocation(line: 256, column: 1, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 256, column: 1)
!4689 = !DILocation(line: 256, column: 1, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 256, column: 1)
!4691 = !DILocation(line: 256, column: 1, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 256, column: 1)
!4693 = !{i32 -2141697918}
!4694 = !DILocation(line: 256, column: 1, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 256, column: 1)
!4696 = distinct !DISubprogram(name: "pci_user_write_config_byte", scope: !3, file: !3, line: 257, type: !4697, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!129, !144, !129, !105}
!4699 = !DILocalVariable(name: "dev", arg: 1, scope: !4696, file: !3, line: 257, type: !144)
!4700 = !DILocation(line: 257, column: 1, scope: !4696)
!4701 = !DILocalVariable(name: "pos", arg: 2, scope: !4696, file: !3, line: 257, type: !129)
!4702 = !DILocalVariable(name: "val", arg: 3, scope: !4696, file: !3, line: 257, type: !105)
!4703 = !DILocalVariable(name: "ret", scope: !4696, file: !3, line: 257, type: !129)
!4704 = !DILocation(line: 257, column: 1, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 257, column: 1)
!4706 = !DILocation(line: 257, column: 1, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 257, column: 1)
!4708 = !DILocation(line: 257, column: 1, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 257, column: 1)
!4710 = !{i32 -2141696804}
!4711 = !DILocation(line: 257, column: 1, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 257, column: 1)
!4713 = !DILocation(line: 257, column: 1, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 257, column: 1)
!4715 = !DILocation(line: 257, column: 1, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 257, column: 1)
!4717 = !DILocation(line: 257, column: 1, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 257, column: 1)
!4719 = !DILocation(line: 257, column: 1, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 257, column: 1)
!4721 = !{i32 -2141696375}
!4722 = !DILocation(line: 257, column: 1, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 257, column: 1)
!4724 = distinct !DISubprogram(name: "pci_user_write_config_word", scope: !3, file: !3, line: 258, type: !4725, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!129, !144, !129, !110}
!4727 = !DILocalVariable(name: "dev", arg: 1, scope: !4724, file: !3, line: 258, type: !144)
!4728 = !DILocation(line: 258, column: 1, scope: !4724)
!4729 = !DILocalVariable(name: "pos", arg: 2, scope: !4724, file: !3, line: 258, type: !129)
!4730 = !DILocalVariable(name: "val", arg: 3, scope: !4724, file: !3, line: 258, type: !110)
!4731 = !DILocalVariable(name: "ret", scope: !4724, file: !3, line: 258, type: !129)
!4732 = !DILocation(line: 258, column: 1, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 258, column: 1)
!4734 = !DILocation(line: 258, column: 1, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 258, column: 1)
!4736 = !DILocation(line: 258, column: 1, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 258, column: 1)
!4738 = !DILocation(line: 258, column: 1, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 258, column: 1)
!4740 = !{i32 -2141695251}
!4741 = !DILocation(line: 258, column: 1, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 258, column: 1)
!4743 = !DILocation(line: 258, column: 1, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 258, column: 1)
!4745 = !DILocation(line: 258, column: 1, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4724, file: !3, line: 258, column: 1)
!4747 = !DILocation(line: 258, column: 1, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 258, column: 1)
!4749 = !DILocation(line: 258, column: 1, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 258, column: 1)
!4751 = !{i32 -2141694822}
!4752 = !DILocation(line: 258, column: 1, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 258, column: 1)
!4754 = distinct !DISubprogram(name: "pci_user_write_config_dword", scope: !3, file: !3, line: 259, type: !4755, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!129, !144, !129, !113}
!4757 = !DILocalVariable(name: "dev", arg: 1, scope: !4754, file: !3, line: 259, type: !144)
!4758 = !DILocation(line: 259, column: 1, scope: !4754)
!4759 = !DILocalVariable(name: "pos", arg: 2, scope: !4754, file: !3, line: 259, type: !129)
!4760 = !DILocalVariable(name: "val", arg: 3, scope: !4754, file: !3, line: 259, type: !113)
!4761 = !DILocalVariable(name: "ret", scope: !4754, file: !3, line: 259, type: !129)
!4762 = !DILocation(line: 259, column: 1, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 259, column: 1)
!4764 = !DILocation(line: 259, column: 1, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 259, column: 1)
!4766 = !DILocation(line: 259, column: 1, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 259, column: 1)
!4768 = !DILocation(line: 259, column: 1, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 259, column: 1)
!4770 = !{i32 -2141693693}
!4771 = !DILocation(line: 259, column: 1, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4769, file: !3, line: 259, column: 1)
!4773 = !DILocation(line: 259, column: 1, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 259, column: 1)
!4775 = !DILocation(line: 259, column: 1, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 259, column: 1)
!4777 = !DILocation(line: 259, column: 1, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 259, column: 1)
!4779 = !DILocation(line: 259, column: 1, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 259, column: 1)
!4781 = !{i32 -2141693264}
!4782 = !DILocation(line: 259, column: 1, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 259, column: 1)
!4784 = distinct !DISubprogram(name: "pci_cfg_access_lock", scope: !3, file: !3, line: 269, type: !3358, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4785 = !DILocalVariable(name: "dev", arg: 1, scope: !4784, file: !3, line: 269, type: !144)
!4786 = !DILocation(line: 269, column: 42, scope: !4784)
!4787 = !DILocation(line: 271, column: 2, scope: !4784)
!4788 = !DILocation(line: 271, column: 2, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 271, column: 2)
!4790 = !DILocation(line: 271, column: 2, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 271, column: 2)
!4792 = !DILocation(line: 273, column: 2, scope: !4784)
!4793 = !DILocation(line: 273, column: 2, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 273, column: 2)
!4795 = !DILocation(line: 273, column: 2, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 273, column: 2)
!4797 = !DILocation(line: 273, column: 2, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 273, column: 2)
!4799 = !{i32 -2141692688}
!4800 = !DILocation(line: 273, column: 2, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 273, column: 2)
!4802 = !DILocation(line: 274, column: 6, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 274, column: 6)
!4804 = !DILocation(line: 274, column: 11, scope: !4803)
!4805 = !DILocation(line: 274, column: 6, scope: !4784)
!4806 = !DILocation(line: 275, column: 16, scope: !4803)
!4807 = !DILocation(line: 275, column: 3, scope: !4803)
!4808 = !DILocation(line: 276, column: 2, scope: !4784)
!4809 = !DILocation(line: 276, column: 7, scope: !4784)
!4810 = !DILocation(line: 276, column: 24, scope: !4784)
!4811 = !DILocation(line: 277, column: 2, scope: !4784)
!4812 = !DILocation(line: 277, column: 2, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 277, column: 2)
!4814 = !DILocation(line: 277, column: 2, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 277, column: 2)
!4816 = !DILocation(line: 277, column: 2, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 277, column: 2)
!4818 = !{i32 -2141692308}
!4819 = !DILocation(line: 277, column: 2, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 277, column: 2)
!4821 = !DILocation(line: 278, column: 1, scope: !4784)
!4822 = distinct !DISubprogram(name: "pci_cfg_access_trylock", scope: !3, file: !3, line: 289, type: !4823, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4823 = !DISubroutineType(types: !4824)
!4824 = !{!432, !144}
!4825 = !DILocalVariable(name: "dev", arg: 1, scope: !4822, file: !3, line: 289, type: !144)
!4826 = !DILocation(line: 289, column: 45, scope: !4822)
!4827 = !DILocalVariable(name: "flags", scope: !4822, file: !3, line: 291, type: !122)
!4828 = !DILocation(line: 291, column: 16, scope: !4822)
!4829 = !DILocalVariable(name: "locked", scope: !4822, file: !3, line: 292, type: !432)
!4830 = !DILocation(line: 292, column: 7, scope: !4822)
!4831 = !DILocation(line: 294, column: 2, scope: !4822)
!4832 = !DILocalVariable(name: "__dummy", scope: !4833, file: !3, line: 294, type: !122)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 294, column: 2)
!4834 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 294, column: 2)
!4835 = !DILocation(line: 294, column: 2, scope: !4833)
!4836 = !DILocalVariable(name: "__dummy2", scope: !4833, file: !3, line: 294, type: !122)
!4837 = !DILocation(line: 294, column: 2, scope: !4834)
!4838 = !DILocation(line: 294, column: 2, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 294, column: 2)
!4840 = !DILocation(line: 294, column: 2, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 294, column: 2)
!4842 = !DILocalVariable(name: "__dummy", scope: !4843, file: !3, line: 294, type: !122)
!4843 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 294, column: 2)
!4844 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 294, column: 2)
!4845 = !DILocation(line: 294, column: 2, scope: !4843)
!4846 = !DILocalVariable(name: "__dummy2", scope: !4843, file: !3, line: 294, type: !122)
!4847 = !DILocation(line: 294, column: 2, scope: !4844)
!4848 = !DILocation(line: 294, column: 2, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4839, file: !3, line: 294, column: 2)
!4850 = !{i32 -2141691405}
!4851 = !DILocation(line: 294, column: 2, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4849, file: !3, line: 294, column: 2)
!4853 = !DILocation(line: 295, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 295, column: 6)
!4855 = !DILocation(line: 295, column: 11, scope: !4854)
!4856 = !DILocation(line: 295, column: 6, scope: !4822)
!4857 = !DILocation(line: 296, column: 10, scope: !4854)
!4858 = !DILocation(line: 296, column: 3, scope: !4854)
!4859 = !DILocation(line: 298, column: 3, scope: !4854)
!4860 = !DILocation(line: 298, column: 8, scope: !4854)
!4861 = !DILocation(line: 298, column: 25, scope: !4854)
!4862 = !DILocation(line: 299, column: 2, scope: !4822)
!4863 = !DILocalVariable(name: "__dummy", scope: !4864, file: !3, line: 299, type: !122)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 299, column: 2)
!4865 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 299, column: 2)
!4866 = !DILocation(line: 299, column: 2, scope: !4864)
!4867 = !DILocalVariable(name: "__dummy2", scope: !4864, file: !3, line: 299, type: !122)
!4868 = !DILocation(line: 299, column: 2, scope: !4865)
!4869 = !DILocation(line: 299, column: 2, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 299, column: 2)
!4871 = !DILocation(line: 299, column: 2, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 299, column: 2)
!4873 = !DILocalVariable(name: "__dummy", scope: !4874, file: !3, line: 299, type: !122)
!4874 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 299, column: 2)
!4875 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 299, column: 2)
!4876 = !DILocation(line: 299, column: 2, scope: !4874)
!4877 = !DILocalVariable(name: "__dummy2", scope: !4874, file: !3, line: 299, type: !122)
!4878 = !DILocation(line: 299, column: 2, scope: !4875)
!4879 = !DILocation(line: 299, column: 2, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4870, file: !3, line: 299, column: 2)
!4881 = !{i32 -2141690586}
!4882 = !DILocation(line: 299, column: 2, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 299, column: 2)
!4884 = !DILocation(line: 301, column: 9, scope: !4822)
!4885 = !DILocation(line: 301, column: 2, scope: !4822)
!4886 = distinct !DISubprogram(name: "pci_cfg_access_unlock", scope: !3, file: !3, line: 311, type: !3358, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4887 = !DILocalVariable(name: "dev", arg: 1, scope: !4886, file: !3, line: 311, type: !144)
!4888 = !DILocation(line: 311, column: 44, scope: !4886)
!4889 = !DILocalVariable(name: "flags", scope: !4886, file: !3, line: 313, type: !122)
!4890 = !DILocation(line: 313, column: 16, scope: !4886)
!4891 = !DILocation(line: 315, column: 2, scope: !4886)
!4892 = !DILocalVariable(name: "__dummy", scope: !4893, file: !3, line: 315, type: !122)
!4893 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 315, column: 2)
!4894 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 315, column: 2)
!4895 = !DILocation(line: 315, column: 2, scope: !4893)
!4896 = !DILocalVariable(name: "__dummy2", scope: !4893, file: !3, line: 315, type: !122)
!4897 = !DILocation(line: 315, column: 2, scope: !4894)
!4898 = !DILocation(line: 315, column: 2, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 315, column: 2)
!4900 = !DILocation(line: 315, column: 2, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 315, column: 2)
!4902 = !DILocalVariable(name: "__dummy", scope: !4903, file: !3, line: 315, type: !122)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 315, column: 2)
!4904 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 315, column: 2)
!4905 = !DILocation(line: 315, column: 2, scope: !4903)
!4906 = !DILocalVariable(name: "__dummy2", scope: !4903, file: !3, line: 315, type: !122)
!4907 = !DILocation(line: 315, column: 2, scope: !4904)
!4908 = !DILocation(line: 315, column: 2, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 315, column: 2)
!4910 = !{i32 -2141689677}
!4911 = !DILocation(line: 315, column: 2, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 315, column: 2)
!4913 = !DILocalVariable(name: "__ret_warn_on", scope: !4914, file: !3, line: 321, type: !129)
!4914 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 321, column: 2)
!4915 = !DILocation(line: 321, column: 2, scope: !4914)
!4916 = !DILocation(line: 321, column: 2, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4914, file: !3, line: 321, column: 2)
!4918 = !DILocation(line: 321, column: 2, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 321, column: 2)
!4920 = !DILocation(line: 321, column: 2, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 321, column: 2)
!4922 = !DILocation(line: 321, column: 2, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 321, column: 2)
!4924 = !{i32 -2141689085, i32 -2141689056, i32 -2141689010, i32 -2141688952, i32 -2141688898, i32 -2141688844, i32 -2141688789, i32 -2141688758}
!4925 = !DILocation(line: 321, column: 2, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 321, column: 2)
!4927 = !{i32 -2141688356, i32 -2141688349, i32 -2141688297, i32 -2141688266, i32 -2141688236}
!4928 = !DILocation(line: 321, column: 2, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 321, column: 2)
!4930 = !DILocation(line: 323, column: 2, scope: !4886)
!4931 = !DILocation(line: 323, column: 7, scope: !4886)
!4932 = !DILocation(line: 323, column: 24, scope: !4886)
!4933 = !DILocation(line: 324, column: 2, scope: !4886)
!4934 = !DILocalVariable(name: "__dummy", scope: !4935, file: !3, line: 324, type: !122)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 324, column: 2)
!4936 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 324, column: 2)
!4937 = !DILocation(line: 324, column: 2, scope: !4935)
!4938 = !DILocalVariable(name: "__dummy2", scope: !4935, file: !3, line: 324, type: !122)
!4939 = !DILocation(line: 324, column: 2, scope: !4936)
!4940 = !DILocation(line: 324, column: 2, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 324, column: 2)
!4942 = !DILocation(line: 324, column: 2, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 324, column: 2)
!4944 = !DILocalVariable(name: "__dummy", scope: !4945, file: !3, line: 324, type: !122)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 324, column: 2)
!4946 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 324, column: 2)
!4947 = !DILocation(line: 324, column: 2, scope: !4945)
!4948 = !DILocalVariable(name: "__dummy2", scope: !4945, file: !3, line: 324, type: !122)
!4949 = !DILocation(line: 324, column: 2, scope: !4946)
!4950 = !DILocation(line: 324, column: 2, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 324, column: 2)
!4952 = !{i32 -2141687415}
!4953 = !DILocation(line: 324, column: 2, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4951, file: !3, line: 324, column: 2)
!4955 = !DILocation(line: 326, column: 2, scope: !4886)
!4956 = !DILocation(line: 327, column: 1, scope: !4886)
!4957 = distinct !DISubprogram(name: "pcie_cap_has_lnkctl", scope: !3, file: !3, line: 335, type: !4958, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!432, !4960}
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!4962 = !DILocalVariable(name: "dev", arg: 1, scope: !4957, file: !3, line: 335, type: !4960)
!4963 = !DILocation(line: 335, column: 48, scope: !4957)
!4964 = !DILocalVariable(name: "type", scope: !4957, file: !3, line: 337, type: !129)
!4965 = !DILocation(line: 337, column: 6, scope: !4957)
!4966 = !DILocation(line: 337, column: 27, scope: !4957)
!4967 = !DILocation(line: 337, column: 13, scope: !4957)
!4968 = !DILocation(line: 339, column: 9, scope: !4957)
!4969 = !DILocation(line: 339, column: 14, scope: !4957)
!4970 = !DILocation(line: 339, column: 39, scope: !4957)
!4971 = !DILocation(line: 340, column: 9, scope: !4957)
!4972 = !DILocation(line: 340, column: 14, scope: !4957)
!4973 = !DILocation(line: 340, column: 38, scope: !4957)
!4974 = !DILocation(line: 341, column: 9, scope: !4957)
!4975 = !DILocation(line: 341, column: 14, scope: !4957)
!4976 = !DILocation(line: 341, column: 40, scope: !4957)
!4977 = !DILocation(line: 342, column: 9, scope: !4957)
!4978 = !DILocation(line: 342, column: 14, scope: !4957)
!4979 = !DILocation(line: 342, column: 39, scope: !4957)
!4980 = !DILocation(line: 343, column: 9, scope: !4957)
!4981 = !DILocation(line: 343, column: 14, scope: !4957)
!4982 = !DILocation(line: 343, column: 41, scope: !4957)
!4983 = !DILocation(line: 344, column: 9, scope: !4957)
!4984 = !DILocation(line: 344, column: 14, scope: !4957)
!4985 = !DILocation(line: 344, column: 41, scope: !4957)
!4986 = !DILocation(line: 345, column: 9, scope: !4957)
!4987 = !DILocation(line: 345, column: 14, scope: !4957)
!4988 = !DILocation(line: 339, column: 2, scope: !4957)
!4989 = distinct !DISubprogram(name: "pci_pcie_type", scope: !99, file: !99, line: 2157, type: !4990, scopeLine: 2158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!129, !4960}
!4992 = !DILocalVariable(name: "dev", arg: 1, scope: !4989, file: !99, line: 2157, type: !4960)
!4993 = !DILocation(line: 2157, column: 55, scope: !4989)
!4994 = !DILocation(line: 2159, column: 24, scope: !4989)
!4995 = !DILocation(line: 2159, column: 10, scope: !4989)
!4996 = !DILocation(line: 2159, column: 29, scope: !4989)
!4997 = !DILocation(line: 2159, column: 51, scope: !4989)
!4998 = !DILocation(line: 2159, column: 2, scope: !4989)
!4999 = distinct !DISubprogram(name: "pcie_cap_has_rtctl", scope: !3, file: !3, line: 354, type: !4958, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5000 = !DILocalVariable(name: "dev", arg: 1, scope: !4999, file: !3, line: 354, type: !4960)
!5001 = !DILocation(line: 354, column: 47, scope: !4999)
!5002 = !DILocalVariable(name: "type", scope: !4999, file: !3, line: 356, type: !129)
!5003 = !DILocation(line: 356, column: 6, scope: !4999)
!5004 = !DILocation(line: 356, column: 27, scope: !4999)
!5005 = !DILocation(line: 356, column: 13, scope: !4999)
!5006 = !DILocation(line: 358, column: 9, scope: !4999)
!5007 = !DILocation(line: 358, column: 14, scope: !4999)
!5008 = !DILocation(line: 358, column: 40, scope: !4999)
!5009 = !DILocation(line: 359, column: 9, scope: !4999)
!5010 = !DILocation(line: 359, column: 14, scope: !4999)
!5011 = !DILocation(line: 358, column: 2, scope: !4999)
!5012 = distinct !DISubprogram(name: "pcie_capability_read_word", scope: !3, file: !3, line: 402, type: !4635, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5013 = !DILocalVariable(name: "dev", arg: 1, scope: !5012, file: !3, line: 402, type: !144)
!5014 = !DILocation(line: 402, column: 47, scope: !5012)
!5015 = !DILocalVariable(name: "pos", arg: 2, scope: !5012, file: !3, line: 402, type: !129)
!5016 = !DILocation(line: 402, column: 56, scope: !5012)
!5017 = !DILocalVariable(name: "val", arg: 3, scope: !5012, file: !3, line: 402, type: !4063)
!5018 = !DILocation(line: 402, column: 66, scope: !5012)
!5019 = !DILocalVariable(name: "ret", scope: !5012, file: !3, line: 404, type: !129)
!5020 = !DILocation(line: 404, column: 6, scope: !5012)
!5021 = !DILocation(line: 406, column: 3, scope: !5012)
!5022 = !DILocation(line: 406, column: 7, scope: !5012)
!5023 = !DILocation(line: 407, column: 6, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 407, column: 6)
!5025 = !DILocation(line: 407, column: 10, scope: !5024)
!5026 = !DILocation(line: 407, column: 6, scope: !5012)
!5027 = !DILocation(line: 408, column: 3, scope: !5024)
!5028 = !DILocation(line: 410, column: 38, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 410, column: 6)
!5030 = !DILocation(line: 410, column: 43, scope: !5029)
!5031 = !DILocation(line: 410, column: 6, scope: !5029)
!5032 = !DILocation(line: 410, column: 6, scope: !5012)
!5033 = !DILocation(line: 411, column: 30, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 410, column: 49)
!5035 = !DILocation(line: 411, column: 48, scope: !5034)
!5036 = !DILocation(line: 411, column: 35, scope: !5034)
!5037 = !DILocation(line: 411, column: 55, scope: !5034)
!5038 = !DILocation(line: 411, column: 53, scope: !5034)
!5039 = !DILocation(line: 411, column: 60, scope: !5034)
!5040 = !DILocation(line: 411, column: 9, scope: !5034)
!5041 = !DILocation(line: 411, column: 7, scope: !5034)
!5042 = !DILocation(line: 417, column: 7, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 417, column: 7)
!5044 = !DILocation(line: 417, column: 7, scope: !5034)
!5045 = !DILocation(line: 418, column: 5, scope: !5043)
!5046 = !DILocation(line: 418, column: 9, scope: !5043)
!5047 = !DILocation(line: 418, column: 4, scope: !5043)
!5048 = !DILocation(line: 419, column: 10, scope: !5034)
!5049 = !DILocation(line: 419, column: 3, scope: !5034)
!5050 = !DILocation(line: 429, column: 18, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 429, column: 6)
!5052 = !DILocation(line: 429, column: 6, scope: !5051)
!5053 = !DILocation(line: 429, column: 23, scope: !5051)
!5054 = !DILocation(line: 429, column: 47, scope: !5051)
!5055 = !DILocation(line: 429, column: 26, scope: !5051)
!5056 = !DILocation(line: 429, column: 52, scope: !5051)
!5057 = !DILocation(line: 430, column: 6, scope: !5051)
!5058 = !DILocation(line: 430, column: 10, scope: !5051)
!5059 = !DILocation(line: 429, column: 6, scope: !5012)
!5060 = !DILocation(line: 431, column: 4, scope: !5051)
!5061 = !DILocation(line: 431, column: 8, scope: !5051)
!5062 = !DILocation(line: 431, column: 3, scope: !5051)
!5063 = !DILocation(line: 433, column: 2, scope: !5012)
!5064 = !DILocation(line: 434, column: 1, scope: !5012)
!5065 = distinct !DISubprogram(name: "pcie_capability_reg_implemented", scope: !3, file: !3, line: 362, type: !5066, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{!432, !144, !129}
!5068 = !DILocalVariable(name: "dev", arg: 1, scope: !5065, file: !3, line: 362, type: !144)
!5069 = !DILocation(line: 362, column: 61, scope: !5065)
!5070 = !DILocalVariable(name: "pos", arg: 2, scope: !5065, file: !3, line: 362, type: !129)
!5071 = !DILocation(line: 362, column: 70, scope: !5065)
!5072 = !DILocation(line: 364, column: 19, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 364, column: 6)
!5074 = !DILocation(line: 364, column: 7, scope: !5073)
!5075 = !DILocation(line: 364, column: 6, scope: !5065)
!5076 = !DILocation(line: 365, column: 3, scope: !5073)
!5077 = !DILocation(line: 367, column: 10, scope: !5065)
!5078 = !DILocation(line: 367, column: 2, scope: !5065)
!5079 = !DILocation(line: 369, column: 3, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 367, column: 15)
!5081 = !DILocation(line: 373, column: 3, scope: !5080)
!5082 = !DILocation(line: 377, column: 30, scope: !5080)
!5083 = !DILocation(line: 377, column: 10, scope: !5080)
!5084 = !DILocation(line: 377, column: 3, scope: !5080)
!5085 = !DILocation(line: 381, column: 30, scope: !5080)
!5086 = !DILocation(line: 381, column: 10, scope: !5080)
!5087 = !DILocation(line: 381, column: 3, scope: !5080)
!5088 = !DILocation(line: 385, column: 29, scope: !5080)
!5089 = !DILocation(line: 385, column: 10, scope: !5080)
!5090 = !DILocation(line: 385, column: 3, scope: !5080)
!5091 = !DILocation(line: 391, column: 27, scope: !5080)
!5092 = !DILocation(line: 391, column: 10, scope: !5080)
!5093 = !DILocation(line: 391, column: 32, scope: !5080)
!5094 = !DILocation(line: 391, column: 3, scope: !5080)
!5095 = !DILocation(line: 393, column: 3, scope: !5080)
!5096 = !DILocation(line: 395, column: 1, scope: !5065)
!5097 = distinct !DISubprogram(name: "pci_read_config_word", scope: !3, file: !3, line: 533, type: !5098, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!129, !4960, !129, !4063}
!5100 = !DILocalVariable(name: "dev", arg: 1, scope: !5097, file: !3, line: 533, type: !4960)
!5101 = !DILocation(line: 533, column: 48, scope: !5097)
!5102 = !DILocalVariable(name: "where", arg: 2, scope: !5097, file: !3, line: 533, type: !129)
!5103 = !DILocation(line: 533, column: 57, scope: !5097)
!5104 = !DILocalVariable(name: "val", arg: 3, scope: !5097, file: !3, line: 533, type: !4063)
!5105 = !DILocation(line: 533, column: 69, scope: !5097)
!5106 = !DILocation(line: 535, column: 30, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 535, column: 6)
!5108 = !DILocation(line: 535, column: 6, scope: !5107)
!5109 = !DILocation(line: 535, column: 6, scope: !5097)
!5110 = !DILocation(line: 536, column: 4, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 535, column: 36)
!5112 = !DILocation(line: 536, column: 8, scope: !5111)
!5113 = !DILocation(line: 537, column: 3, scope: !5111)
!5114 = !DILocation(line: 539, column: 34, scope: !5097)
!5115 = !DILocation(line: 539, column: 39, scope: !5097)
!5116 = !DILocation(line: 539, column: 44, scope: !5097)
!5117 = !DILocation(line: 539, column: 49, scope: !5097)
!5118 = !DILocation(line: 539, column: 56, scope: !5097)
!5119 = !DILocation(line: 539, column: 63, scope: !5097)
!5120 = !DILocation(line: 539, column: 9, scope: !5097)
!5121 = !DILocation(line: 539, column: 2, scope: !5097)
!5122 = !DILocation(line: 540, column: 1, scope: !5097)
!5123 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !99, file: !99, line: 2128, type: !3370, scopeLine: 2129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5124 = !DILocalVariable(name: "dev", arg: 1, scope: !5123, file: !99, line: 2128, type: !144)
!5125 = !DILocation(line: 2128, column: 48, scope: !5123)
!5126 = !DILocation(line: 2130, column: 9, scope: !5123)
!5127 = !DILocation(line: 2130, column: 14, scope: !5123)
!5128 = !DILocation(line: 2130, column: 2, scope: !5123)
!5129 = distinct !DISubprogram(name: "pci_is_pcie", scope: !99, file: !99, line: 2139, type: !4823, scopeLine: 2140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5130 = !DILocalVariable(name: "dev", arg: 1, scope: !5129, file: !99, line: 2139, type: !144)
!5131 = !DILocation(line: 2139, column: 48, scope: !5129)
!5132 = !DILocation(line: 2141, column: 22, scope: !5129)
!5133 = !DILocation(line: 2141, column: 9, scope: !5129)
!5134 = !DILocation(line: 2141, column: 2, scope: !5129)
!5135 = distinct !DISubprogram(name: "pcie_downstream_port", scope: !3955, file: !3955, line: 133, type: !4958, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5136 = !DILocalVariable(name: "dev", arg: 1, scope: !5135, file: !3955, line: 133, type: !4960)
!5137 = !DILocation(line: 133, column: 63, scope: !5135)
!5138 = !DILocalVariable(name: "type", scope: !5135, file: !3955, line: 135, type: !129)
!5139 = !DILocation(line: 135, column: 6, scope: !5135)
!5140 = !DILocation(line: 135, column: 27, scope: !5135)
!5141 = !DILocation(line: 135, column: 13, scope: !5135)
!5142 = !DILocation(line: 137, column: 9, scope: !5135)
!5143 = !DILocation(line: 137, column: 14, scope: !5135)
!5144 = !DILocation(line: 137, column: 40, scope: !5135)
!5145 = !DILocation(line: 138, column: 9, scope: !5135)
!5146 = !DILocation(line: 138, column: 14, scope: !5135)
!5147 = !DILocation(line: 138, column: 41, scope: !5135)
!5148 = !DILocation(line: 139, column: 9, scope: !5135)
!5149 = !DILocation(line: 139, column: 14, scope: !5135)
!5150 = !DILocation(line: 137, column: 2, scope: !5135)
!5151 = distinct !DISubprogram(name: "pcie_capability_read_dword", scope: !3, file: !3, line: 437, type: !4666, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5152 = !DILocalVariable(name: "dev", arg: 1, scope: !5151, file: !3, line: 437, type: !144)
!5153 = !DILocation(line: 437, column: 48, scope: !5151)
!5154 = !DILocalVariable(name: "pos", arg: 2, scope: !5151, file: !3, line: 437, type: !129)
!5155 = !DILocation(line: 437, column: 57, scope: !5151)
!5156 = !DILocalVariable(name: "val", arg: 3, scope: !5151, file: !3, line: 437, type: !1357)
!5157 = !DILocation(line: 437, column: 67, scope: !5151)
!5158 = !DILocalVariable(name: "ret", scope: !5151, file: !3, line: 439, type: !129)
!5159 = !DILocation(line: 439, column: 6, scope: !5151)
!5160 = !DILocation(line: 441, column: 3, scope: !5151)
!5161 = !DILocation(line: 441, column: 7, scope: !5151)
!5162 = !DILocation(line: 442, column: 6, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 442, column: 6)
!5164 = !DILocation(line: 442, column: 10, scope: !5163)
!5165 = !DILocation(line: 442, column: 6, scope: !5151)
!5166 = !DILocation(line: 443, column: 3, scope: !5163)
!5167 = !DILocation(line: 445, column: 38, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 445, column: 6)
!5169 = !DILocation(line: 445, column: 43, scope: !5168)
!5170 = !DILocation(line: 445, column: 6, scope: !5168)
!5171 = !DILocation(line: 445, column: 6, scope: !5151)
!5172 = !DILocation(line: 446, column: 31, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 445, column: 49)
!5174 = !DILocation(line: 446, column: 49, scope: !5173)
!5175 = !DILocation(line: 446, column: 36, scope: !5173)
!5176 = !DILocation(line: 446, column: 56, scope: !5173)
!5177 = !DILocation(line: 446, column: 54, scope: !5173)
!5178 = !DILocation(line: 446, column: 61, scope: !5173)
!5179 = !DILocation(line: 446, column: 9, scope: !5173)
!5180 = !DILocation(line: 446, column: 7, scope: !5173)
!5181 = !DILocation(line: 452, column: 7, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 452, column: 7)
!5183 = !DILocation(line: 452, column: 7, scope: !5173)
!5184 = !DILocation(line: 453, column: 5, scope: !5182)
!5185 = !DILocation(line: 453, column: 9, scope: !5182)
!5186 = !DILocation(line: 453, column: 4, scope: !5182)
!5187 = !DILocation(line: 454, column: 10, scope: !5173)
!5188 = !DILocation(line: 454, column: 3, scope: !5173)
!5189 = !DILocation(line: 457, column: 18, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 457, column: 6)
!5191 = !DILocation(line: 457, column: 6, scope: !5190)
!5192 = !DILocation(line: 457, column: 23, scope: !5190)
!5193 = !DILocation(line: 457, column: 47, scope: !5190)
!5194 = !DILocation(line: 457, column: 26, scope: !5190)
!5195 = !DILocation(line: 457, column: 52, scope: !5190)
!5196 = !DILocation(line: 458, column: 6, scope: !5190)
!5197 = !DILocation(line: 458, column: 10, scope: !5190)
!5198 = !DILocation(line: 457, column: 6, scope: !5151)
!5199 = !DILocation(line: 459, column: 4, scope: !5190)
!5200 = !DILocation(line: 459, column: 8, scope: !5190)
!5201 = !DILocation(line: 459, column: 3, scope: !5190)
!5202 = !DILocation(line: 461, column: 2, scope: !5151)
!5203 = !DILocation(line: 462, column: 1, scope: !5151)
!5204 = distinct !DISubprogram(name: "pci_read_config_dword", scope: !3, file: !3, line: 543, type: !5205, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!129, !4960, !129, !1357}
!5207 = !DILocalVariable(name: "dev", arg: 1, scope: !5204, file: !3, line: 543, type: !4960)
!5208 = !DILocation(line: 543, column: 49, scope: !5204)
!5209 = !DILocalVariable(name: "where", arg: 2, scope: !5204, file: !3, line: 543, type: !129)
!5210 = !DILocation(line: 543, column: 58, scope: !5204)
!5211 = !DILocalVariable(name: "val", arg: 3, scope: !5204, file: !3, line: 544, type: !1357)
!5212 = !DILocation(line: 544, column: 11, scope: !5204)
!5213 = !DILocation(line: 546, column: 30, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 546, column: 6)
!5215 = !DILocation(line: 546, column: 6, scope: !5214)
!5216 = !DILocation(line: 546, column: 6, scope: !5204)
!5217 = !DILocation(line: 547, column: 4, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 546, column: 36)
!5219 = !DILocation(line: 547, column: 8, scope: !5218)
!5220 = !DILocation(line: 548, column: 3, scope: !5218)
!5221 = !DILocation(line: 550, column: 35, scope: !5204)
!5222 = !DILocation(line: 550, column: 40, scope: !5204)
!5223 = !DILocation(line: 550, column: 45, scope: !5204)
!5224 = !DILocation(line: 550, column: 50, scope: !5204)
!5225 = !DILocation(line: 550, column: 57, scope: !5204)
!5226 = !DILocation(line: 550, column: 64, scope: !5204)
!5227 = !DILocation(line: 550, column: 9, scope: !5204)
!5228 = !DILocation(line: 550, column: 2, scope: !5204)
!5229 = !DILocation(line: 551, column: 1, scope: !5204)
!5230 = distinct !DISubprogram(name: "pcie_capability_write_word", scope: !3, file: !3, line: 465, type: !4725, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5231 = !DILocalVariable(name: "dev", arg: 1, scope: !5230, file: !3, line: 465, type: !144)
!5232 = !DILocation(line: 465, column: 48, scope: !5230)
!5233 = !DILocalVariable(name: "pos", arg: 2, scope: !5230, file: !3, line: 465, type: !129)
!5234 = !DILocation(line: 465, column: 57, scope: !5230)
!5235 = !DILocalVariable(name: "val", arg: 3, scope: !5230, file: !3, line: 465, type: !110)
!5236 = !DILocation(line: 465, column: 66, scope: !5230)
!5237 = !DILocation(line: 467, column: 6, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 467, column: 6)
!5239 = !DILocation(line: 467, column: 10, scope: !5238)
!5240 = !DILocation(line: 467, column: 6, scope: !5230)
!5241 = !DILocation(line: 468, column: 3, scope: !5238)
!5242 = !DILocation(line: 470, column: 39, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5230, file: !3, line: 470, column: 6)
!5244 = !DILocation(line: 470, column: 44, scope: !5243)
!5245 = !DILocation(line: 470, column: 7, scope: !5243)
!5246 = !DILocation(line: 470, column: 6, scope: !5230)
!5247 = !DILocation(line: 471, column: 3, scope: !5243)
!5248 = !DILocation(line: 473, column: 31, scope: !5230)
!5249 = !DILocation(line: 473, column: 49, scope: !5230)
!5250 = !DILocation(line: 473, column: 36, scope: !5230)
!5251 = !DILocation(line: 473, column: 56, scope: !5230)
!5252 = !DILocation(line: 473, column: 54, scope: !5230)
!5253 = !DILocation(line: 473, column: 61, scope: !5230)
!5254 = !DILocation(line: 473, column: 9, scope: !5230)
!5255 = !DILocation(line: 473, column: 2, scope: !5230)
!5256 = !DILocation(line: 474, column: 1, scope: !5230)
!5257 = distinct !DISubprogram(name: "pci_write_config_word", scope: !3, file: !3, line: 562, type: !5258, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!129, !4960, !129, !110}
!5260 = !DILocalVariable(name: "dev", arg: 1, scope: !5257, file: !3, line: 562, type: !4960)
!5261 = !DILocation(line: 562, column: 49, scope: !5257)
!5262 = !DILocalVariable(name: "where", arg: 2, scope: !5257, file: !3, line: 562, type: !129)
!5263 = !DILocation(line: 562, column: 58, scope: !5257)
!5264 = !DILocalVariable(name: "val", arg: 3, scope: !5257, file: !3, line: 562, type: !110)
!5265 = !DILocation(line: 562, column: 69, scope: !5257)
!5266 = !DILocation(line: 564, column: 30, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5257, file: !3, line: 564, column: 6)
!5268 = !DILocation(line: 564, column: 6, scope: !5267)
!5269 = !DILocation(line: 564, column: 6, scope: !5257)
!5270 = !DILocation(line: 565, column: 3, scope: !5267)
!5271 = !DILocation(line: 566, column: 35, scope: !5257)
!5272 = !DILocation(line: 566, column: 40, scope: !5257)
!5273 = !DILocation(line: 566, column: 45, scope: !5257)
!5274 = !DILocation(line: 566, column: 50, scope: !5257)
!5275 = !DILocation(line: 566, column: 57, scope: !5257)
!5276 = !DILocation(line: 566, column: 64, scope: !5257)
!5277 = !DILocation(line: 566, column: 9, scope: !5257)
!5278 = !DILocation(line: 566, column: 2, scope: !5257)
!5279 = !DILocation(line: 567, column: 1, scope: !5257)
!5280 = distinct !DISubprogram(name: "pcie_capability_write_dword", scope: !3, file: !3, line: 477, type: !4755, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5281 = !DILocalVariable(name: "dev", arg: 1, scope: !5280, file: !3, line: 477, type: !144)
!5282 = !DILocation(line: 477, column: 49, scope: !5280)
!5283 = !DILocalVariable(name: "pos", arg: 2, scope: !5280, file: !3, line: 477, type: !129)
!5284 = !DILocation(line: 477, column: 58, scope: !5280)
!5285 = !DILocalVariable(name: "val", arg: 3, scope: !5280, file: !3, line: 477, type: !113)
!5286 = !DILocation(line: 477, column: 67, scope: !5280)
!5287 = !DILocation(line: 479, column: 6, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 479, column: 6)
!5289 = !DILocation(line: 479, column: 10, scope: !5288)
!5290 = !DILocation(line: 479, column: 6, scope: !5280)
!5291 = !DILocation(line: 480, column: 3, scope: !5288)
!5292 = !DILocation(line: 482, column: 39, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 482, column: 6)
!5294 = !DILocation(line: 482, column: 44, scope: !5293)
!5295 = !DILocation(line: 482, column: 7, scope: !5293)
!5296 = !DILocation(line: 482, column: 6, scope: !5280)
!5297 = !DILocation(line: 483, column: 3, scope: !5293)
!5298 = !DILocation(line: 485, column: 32, scope: !5280)
!5299 = !DILocation(line: 485, column: 50, scope: !5280)
!5300 = !DILocation(line: 485, column: 37, scope: !5280)
!5301 = !DILocation(line: 485, column: 57, scope: !5280)
!5302 = !DILocation(line: 485, column: 55, scope: !5280)
!5303 = !DILocation(line: 485, column: 62, scope: !5280)
!5304 = !DILocation(line: 485, column: 9, scope: !5280)
!5305 = !DILocation(line: 485, column: 2, scope: !5280)
!5306 = !DILocation(line: 486, column: 1, scope: !5280)
!5307 = distinct !DISubprogram(name: "pci_write_config_dword", scope: !3, file: !3, line: 570, type: !5308, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!129, !4960, !129, !113}
!5310 = !DILocalVariable(name: "dev", arg: 1, scope: !5307, file: !3, line: 570, type: !4960)
!5311 = !DILocation(line: 570, column: 50, scope: !5307)
!5312 = !DILocalVariable(name: "where", arg: 2, scope: !5307, file: !3, line: 570, type: !129)
!5313 = !DILocation(line: 570, column: 59, scope: !5307)
!5314 = !DILocalVariable(name: "val", arg: 3, scope: !5307, file: !3, line: 571, type: !113)
!5315 = !DILocation(line: 571, column: 11, scope: !5307)
!5316 = !DILocation(line: 573, column: 30, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5307, file: !3, line: 573, column: 6)
!5318 = !DILocation(line: 573, column: 6, scope: !5317)
!5319 = !DILocation(line: 573, column: 6, scope: !5307)
!5320 = !DILocation(line: 574, column: 3, scope: !5317)
!5321 = !DILocation(line: 575, column: 36, scope: !5307)
!5322 = !DILocation(line: 575, column: 41, scope: !5307)
!5323 = !DILocation(line: 575, column: 46, scope: !5307)
!5324 = !DILocation(line: 575, column: 51, scope: !5307)
!5325 = !DILocation(line: 575, column: 58, scope: !5307)
!5326 = !DILocation(line: 575, column: 65, scope: !5307)
!5327 = !DILocation(line: 575, column: 9, scope: !5307)
!5328 = !DILocation(line: 575, column: 2, scope: !5307)
!5329 = !DILocation(line: 576, column: 1, scope: !5307)
!5330 = distinct !DISubprogram(name: "pcie_capability_clear_and_set_word", scope: !3, file: !3, line: 489, type: !5331, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!129, !144, !129, !110, !110}
!5333 = !DILocalVariable(name: "dev", arg: 1, scope: !5330, file: !3, line: 489, type: !144)
!5334 = !DILocation(line: 489, column: 56, scope: !5330)
!5335 = !DILocalVariable(name: "pos", arg: 2, scope: !5330, file: !3, line: 489, type: !129)
!5336 = !DILocation(line: 489, column: 65, scope: !5330)
!5337 = !DILocalVariable(name: "clear", arg: 3, scope: !5330, file: !3, line: 490, type: !110)
!5338 = !DILocation(line: 490, column: 16, scope: !5330)
!5339 = !DILocalVariable(name: "set", arg: 4, scope: !5330, file: !3, line: 490, type: !110)
!5340 = !DILocation(line: 490, column: 27, scope: !5330)
!5341 = !DILocalVariable(name: "ret", scope: !5330, file: !3, line: 492, type: !129)
!5342 = !DILocation(line: 492, column: 6, scope: !5330)
!5343 = !DILocalVariable(name: "val", scope: !5330, file: !3, line: 493, type: !110)
!5344 = !DILocation(line: 493, column: 6, scope: !5330)
!5345 = !DILocation(line: 495, column: 34, scope: !5330)
!5346 = !DILocation(line: 495, column: 39, scope: !5330)
!5347 = !DILocation(line: 495, column: 8, scope: !5330)
!5348 = !DILocation(line: 495, column: 6, scope: !5330)
!5349 = !DILocation(line: 496, column: 7, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5330, file: !3, line: 496, column: 6)
!5351 = !DILocation(line: 496, column: 6, scope: !5330)
!5352 = !DILocation(line: 497, column: 11, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 496, column: 12)
!5354 = !DILocation(line: 497, column: 10, scope: !5353)
!5355 = !DILocation(line: 497, column: 7, scope: !5353)
!5356 = !DILocation(line: 498, column: 10, scope: !5353)
!5357 = !DILocation(line: 498, column: 7, scope: !5353)
!5358 = !DILocation(line: 499, column: 36, scope: !5353)
!5359 = !DILocation(line: 499, column: 41, scope: !5353)
!5360 = !DILocation(line: 499, column: 46, scope: !5353)
!5361 = !DILocation(line: 499, column: 9, scope: !5353)
!5362 = !DILocation(line: 499, column: 7, scope: !5353)
!5363 = !DILocation(line: 500, column: 2, scope: !5353)
!5364 = !DILocation(line: 502, column: 9, scope: !5330)
!5365 = !DILocation(line: 502, column: 2, scope: !5330)
!5366 = distinct !DISubprogram(name: "pcie_capability_clear_and_set_dword", scope: !3, file: !3, line: 506, type: !5367, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{!129, !144, !129, !113, !113}
!5369 = !DILocalVariable(name: "dev", arg: 1, scope: !5366, file: !3, line: 506, type: !144)
!5370 = !DILocation(line: 506, column: 57, scope: !5366)
!5371 = !DILocalVariable(name: "pos", arg: 2, scope: !5366, file: !3, line: 506, type: !129)
!5372 = !DILocation(line: 506, column: 66, scope: !5366)
!5373 = !DILocalVariable(name: "clear", arg: 3, scope: !5366, file: !3, line: 507, type: !113)
!5374 = !DILocation(line: 507, column: 10, scope: !5366)
!5375 = !DILocalVariable(name: "set", arg: 4, scope: !5366, file: !3, line: 507, type: !113)
!5376 = !DILocation(line: 507, column: 21, scope: !5366)
!5377 = !DILocalVariable(name: "ret", scope: !5366, file: !3, line: 509, type: !129)
!5378 = !DILocation(line: 509, column: 6, scope: !5366)
!5379 = !DILocalVariable(name: "val", scope: !5366, file: !3, line: 510, type: !113)
!5380 = !DILocation(line: 510, column: 6, scope: !5366)
!5381 = !DILocation(line: 512, column: 35, scope: !5366)
!5382 = !DILocation(line: 512, column: 40, scope: !5366)
!5383 = !DILocation(line: 512, column: 8, scope: !5366)
!5384 = !DILocation(line: 512, column: 6, scope: !5366)
!5385 = !DILocation(line: 513, column: 7, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 513, column: 6)
!5387 = !DILocation(line: 513, column: 6, scope: !5366)
!5388 = !DILocation(line: 514, column: 11, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 513, column: 12)
!5390 = !DILocation(line: 514, column: 10, scope: !5389)
!5391 = !DILocation(line: 514, column: 7, scope: !5389)
!5392 = !DILocation(line: 515, column: 10, scope: !5389)
!5393 = !DILocation(line: 515, column: 7, scope: !5389)
!5394 = !DILocation(line: 516, column: 37, scope: !5389)
!5395 = !DILocation(line: 516, column: 42, scope: !5389)
!5396 = !DILocation(line: 516, column: 47, scope: !5389)
!5397 = !DILocation(line: 516, column: 9, scope: !5389)
!5398 = !DILocation(line: 516, column: 7, scope: !5389)
!5399 = !DILocation(line: 517, column: 2, scope: !5389)
!5400 = !DILocation(line: 519, column: 9, scope: !5366)
!5401 = !DILocation(line: 519, column: 2, scope: !5366)
!5402 = distinct !DISubprogram(name: "pci_read_config_byte", scope: !3, file: !3, line: 523, type: !5403, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!129, !4960, !129, !4047}
!5405 = !DILocalVariable(name: "dev", arg: 1, scope: !5402, file: !3, line: 523, type: !4960)
!5406 = !DILocation(line: 523, column: 48, scope: !5402)
!5407 = !DILocalVariable(name: "where", arg: 2, scope: !5402, file: !3, line: 523, type: !129)
!5408 = !DILocation(line: 523, column: 57, scope: !5402)
!5409 = !DILocalVariable(name: "val", arg: 3, scope: !5402, file: !3, line: 523, type: !4047)
!5410 = !DILocation(line: 523, column: 68, scope: !5402)
!5411 = !DILocation(line: 525, column: 30, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 525, column: 6)
!5413 = !DILocation(line: 525, column: 6, scope: !5412)
!5414 = !DILocation(line: 525, column: 6, scope: !5402)
!5415 = !DILocation(line: 526, column: 4, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 525, column: 36)
!5417 = !DILocation(line: 526, column: 8, scope: !5416)
!5418 = !DILocation(line: 527, column: 3, scope: !5416)
!5419 = !DILocation(line: 529, column: 34, scope: !5402)
!5420 = !DILocation(line: 529, column: 39, scope: !5402)
!5421 = !DILocation(line: 529, column: 44, scope: !5402)
!5422 = !DILocation(line: 529, column: 49, scope: !5402)
!5423 = !DILocation(line: 529, column: 56, scope: !5402)
!5424 = !DILocation(line: 529, column: 63, scope: !5402)
!5425 = !DILocation(line: 529, column: 9, scope: !5402)
!5426 = !DILocation(line: 529, column: 2, scope: !5402)
!5427 = !DILocation(line: 530, column: 1, scope: !5402)
!5428 = distinct !DISubprogram(name: "pci_dev_is_disconnected", scope: !3955, file: !3955, line: 405, type: !4958, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5429 = !DILocalVariable(name: "dev", arg: 1, scope: !5428, file: !3955, line: 405, type: !4960)
!5430 = !DILocation(line: 405, column: 66, scope: !5428)
!5431 = !DILocation(line: 407, column: 9, scope: !5428)
!5432 = !DILocation(line: 407, column: 14, scope: !5428)
!5433 = !DILocation(line: 407, column: 26, scope: !5428)
!5434 = !DILocation(line: 407, column: 2, scope: !5428)
!5435 = distinct !DISubprogram(name: "pci_write_config_byte", scope: !3, file: !3, line: 554, type: !5436, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!129, !4960, !129, !105}
!5438 = !DILocalVariable(name: "dev", arg: 1, scope: !5435, file: !3, line: 554, type: !4960)
!5439 = !DILocation(line: 554, column: 49, scope: !5435)
!5440 = !DILocalVariable(name: "where", arg: 2, scope: !5435, file: !3, line: 554, type: !129)
!5441 = !DILocation(line: 554, column: 58, scope: !5435)
!5442 = !DILocalVariable(name: "val", arg: 3, scope: !5435, file: !3, line: 554, type: !105)
!5443 = !DILocation(line: 554, column: 68, scope: !5435)
!5444 = !DILocation(line: 556, column: 30, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 556, column: 6)
!5446 = !DILocation(line: 556, column: 6, scope: !5445)
!5447 = !DILocation(line: 556, column: 6, scope: !5435)
!5448 = !DILocation(line: 557, column: 3, scope: !5445)
!5449 = !DILocation(line: 558, column: 35, scope: !5435)
!5450 = !DILocation(line: 558, column: 40, scope: !5435)
!5451 = !DILocation(line: 558, column: 45, scope: !5435)
!5452 = !DILocation(line: 558, column: 50, scope: !5435)
!5453 = !DILocation(line: 558, column: 57, scope: !5435)
!5454 = !DILocation(line: 558, column: 64, scope: !5435)
!5455 = !DILocation(line: 558, column: 9, scope: !5435)
!5456 = !DILocation(line: 558, column: 2, scope: !5435)
!5457 = !DILocation(line: 559, column: 1, scope: !5435)
!5458 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !4403, file: !4403, line: 36, type: !5459, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5459 = !DISubroutineType(types: !5460)
!5460 = !{!5461, !5472}
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !4403, line: 15, size: 320, elements: !5463)
!5463 = !{!5464, !5465, !5466, !5469, !5470, !5471}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5462, file: !4403, line: 16, baseType: !129, size: 32)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5462, file: !4403, line: 17, baseType: !129, size: 32, offset: 32)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !5462, file: !4403, line: 19, baseType: !5467, size: 64, offset: 64)
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !3404, line: 228, flags: DIFlagFwdDecl)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5462, file: !4403, line: 22, baseType: !115, size: 64, offset: 128)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5462, file: !4403, line: 25, baseType: !115, size: 64, offset: 192)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "vmd_dev", scope: !5462, file: !4403, line: 28, baseType: !144, size: 64, offset: 256)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!5474 = !DILocalVariable(name: "bus", arg: 1, scope: !5458, file: !4403, line: 36, type: !5472)
!5475 = !DILocation(line: 36, column: 72, scope: !5458)
!5476 = !DILocation(line: 38, column: 9, scope: !5458)
!5477 = !DILocation(line: 38, column: 14, scope: !5458)
!5478 = !DILocation(line: 38, column: 2, scope: !5458)
!5479 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4475, file: !4475, line: 646, type: !4476, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5480 = !DILocalVariable(name: "__ret", scope: !5481, file: !4475, line: 648, type: !122)
!5481 = distinct !DILexicalBlock(scope: !5479, file: !4475, line: 648, column: 9)
!5482 = !DILocation(line: 648, column: 9, scope: !5481)
!5483 = !DILocalVariable(name: "__edi", scope: !5481, file: !4475, line: 648, type: !122)
!5484 = !DILocalVariable(name: "__esi", scope: !5481, file: !4475, line: 648, type: !122)
!5485 = !DILocalVariable(name: "__edx", scope: !5481, file: !4475, line: 648, type: !122)
!5486 = !DILocalVariable(name: "__ecx", scope: !5481, file: !4475, line: 648, type: !122)
!5487 = !DILocalVariable(name: "__eax", scope: !5481, file: !4475, line: 648, type: !122)
!5488 = !DILocation(line: 648, column: 9, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5490, file: !4475, line: 648, column: 9)
!5490 = distinct !DILexicalBlock(scope: !5481, file: !4475, line: 648, column: 9)
!5491 = !{i32 -2145624496, i32 -2145622181, i32 -2145621947, i32 -2145621896, i32 -2145621868, i32 -2145621843, i32 -2145622159, i32 -2145622146, i32 -2145621708, i32 -2145621589, i32 -2145622054, i32 -2145622027, i32 -2145621999, i32 -2145621969}
!5492 = !DILocalVariable(name: "__mask", scope: !5493, file: !4475, line: 648, type: !122)
!5493 = distinct !DILexicalBlock(scope: !5489, file: !4475, line: 648, column: 9)
!5494 = !DILocation(line: 648, column: 9, scope: !5493)
!5495 = !DILocation(line: 648, column: 9, scope: !5490)
!5496 = !DILocation(line: 648, column: 2, scope: !5479)
!5497 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !99, file: !99, line: 2148, type: !5498, scopeLine: 2149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!110, !4960}
!5500 = !DILocalVariable(name: "dev", arg: 1, scope: !5497, file: !99, line: 2148, type: !4960)
!5501 = !DILocation(line: 2148, column: 55, scope: !5497)
!5502 = !DILocation(line: 2150, column: 9, scope: !5497)
!5503 = !DILocation(line: 2150, column: 14, scope: !5497)
!5504 = !DILocation(line: 2150, column: 2, scope: !5497)
!5505 = distinct !DISubprogram(name: "pcie_cap_has_sltctl", scope: !3, file: !3, line: 348, type: !4958, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5506 = !DILocalVariable(name: "dev", arg: 1, scope: !5505, file: !3, line: 348, type: !4960)
!5507 = !DILocation(line: 348, column: 62, scope: !5505)
!5508 = !DILocation(line: 350, column: 30, scope: !5505)
!5509 = !DILocation(line: 350, column: 9, scope: !5505)
!5510 = !DILocation(line: 350, column: 35, scope: !5505)
!5511 = !DILocation(line: 351, column: 23, scope: !5505)
!5512 = !DILocation(line: 351, column: 9, scope: !5505)
!5513 = !DILocation(line: 351, column: 28, scope: !5505)
!5514 = !DILocation(line: 0, scope: !5505)
!5515 = !DILocation(line: 350, column: 2, scope: !5505)
!5516 = distinct !DISubprogram(name: "pcie_cap_version", scope: !3, file: !3, line: 330, type: !4990, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !196)
!5517 = !DILocalVariable(name: "dev", arg: 1, scope: !5516, file: !3, line: 330, type: !4960)
!5518 = !DILocation(line: 330, column: 58, scope: !5516)
!5519 = !DILocation(line: 332, column: 23, scope: !5516)
!5520 = !DILocation(line: 332, column: 9, scope: !5516)
!5521 = !DILocation(line: 332, column: 28, scope: !5516)
!5522 = !DILocation(line: 332, column: 2, scope: !5516)
